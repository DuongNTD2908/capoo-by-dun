<?php
require_once "../config/database.php";

class Voca
{
    private $conn;

    public function __construct()
    {
        $this->conn = Database::getInstance()->getConnection();
        if ($this->conn === null || $this->conn->connect_error) { // Kiểm tra cả null và lỗi kết nối
            // In ra lỗi chi tiết và dừng script để dễ debug.
            // Đây là lỗi mà bạn muốn thấy trong tab Network của trình duyệt.
            error_log("Lỗi kết nối CSDL trong Voca Model: " . ($this->conn ? $this->conn->connect_error : "Đối tượng kết nối CSDL là NULL. Kiểm tra config/database.php và class Database."));
            // THÊM DÒNG NÀY ĐỂ THẤY LỖI TRỰC TIẾP TRONG PHẢN HỒI AJAX:
            die("Lỗi: Không thể kết nối cơ sở dữ liệu. Vui lòng kiểm tra cấu hình.");
        }
    }

    public function getAllVocabs()
    {
        $sql = "SELECT idvoca,
                        voca,
                        pronounce,
                        trans,
                        example,
                        transExample,
                        image_voca,
                        sounds,
                        exsounds,
                        idtopic FROM vocabulary";
        $result = $this->conn->query($sql);
        if (!$result) {
            die("Lỗi truy vấn: " . $this->conn->error);
        }

        $vocabs = [];
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $vocabs[] = $row;
            }
        }
        return $vocabs;
    }

    public function getVocabsByTopic($idtopic)
    {
        $sql = "SELECT voca, pronounce, trans, example, transExample FROM vocabulary WHERE idtopic = ?";
        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("s", $idtopic);
        $stmt->execute();
        $result = $stmt->get_result();

        $vocabs = [];
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $vocabs[] = $row;
            }
        }
        $stmt->close();
        return $vocabs;
    }

    public function searchVocabs($searchTerm)
    {
        $searchTerm = "%" . $searchTerm . "%";
        $sql = "SELECT voca, pronounce, trans, example, transExample
                FROM vocabulary
                WHERE voca LIKE ? OR trans LIKE ?";
        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("ss", $searchTerm, $searchTerm);
        $stmt->execute();
        $result = $stmt->get_result();

        $foundVocabs = [];
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $foundVocabs[] = $row;
            }
        }
        $stmt->close();
        return $foundVocabs;
    }

    public function getVocabSuggestions($searchTerm)
    {
        // ... (Kiểm tra $this->conn ở đây cũng tốt, nhưng đã làm ở __construct)

        $searchTermWithWildcard = $searchTerm . "%";
        $sql = "SELECT voca, trans FROM vocabulary WHERE voca LIKE ? LIMIT 10";
        $stmt = $this->conn->prepare($sql);

        // THÊM KIỂM TRA NÀY:
        if ($stmt === false) {
            error_log("Lỗi prepare statement trong getVocabSuggestions: " . $this->conn->error);
            return []; // Trả về mảng rỗng để không làm hỏng JSON
        }

        $stmt->bind_param("s", $searchTermWithWildcard);
        $execResult = $stmt->execute(); // Lưu kết quả của execute vào biến

        // THÊM KIỂM TRA NÀY:
        if ($execResult === false) {
            error_log("Lỗi execute statement trong getVocabSuggestions: " . $stmt->error);
            $stmt->close();
            return []; // Trả về mảng rỗng
        }

        $result = $stmt->get_result();

        $suggestions = [];
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $suggestions[] = [
                    'voca' => $row['voca'],
                    'trans' => $row['trans']
                ];
            }
        }
        $stmt->close();
        return $suggestions;
    }

    public function getAllTopics()
    {
        $sql = "SELECT idtopic,
                        nametopic,
                        imagetopic FROM topics";
        $result = $this->conn->query($sql);
        if (!$result) {
            die("Lỗi truy vấn: " . $this->conn->error);
        }

        $topics = [];
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $topics[] = $row;
            }
        }
        return $topics;
    }

    public function __destruct()
    {
        if ($this->conn) {
            $this->conn->close();
        }
    }
}