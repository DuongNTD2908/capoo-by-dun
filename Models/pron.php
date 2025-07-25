<?php
require_once "../config/database.php";

class Pron {
    private $conn;

    public function __construct() {
        $this->conn = Database::getInstance()->getConnection();
        if ($this->conn === null || $this->conn->connect_error) {
            error_log("Lỗi kết nối CSDL: " . ($this->conn ? $this->conn->connect_error : "NULL"));
            die("Lỗi: Không thể kết nối cơ sở dữ liệu.");
        }
    }

    public function getAllPronoune() {
        $sql = "SELECT id, name, sound, kinds FROM pronoune"; // hoặc "pronoun" nếu đúng
        $result = $this->conn->query($sql);
        if (!$result) {
            die("Lỗi truy vấn: " . $this->conn->error);
        }

        $pronounes = [];
        while ($row = $result->fetch_assoc()) {
            $pronounes[] = $row;
        }
        return $pronounes;
    }

    public function getPronouneByKind($kind) {
        $sql = "SELECT id, name, sound, kinds FROM pronoune WHERE kinds = ?";
        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("s", $kind);
        $stmt->execute();
        $result = $stmt->get_result();

        $pronounes = [];
        while ($row = $result->fetch_assoc()) {
            $pronounes[] = $row;
        }
        $stmt->close();
        return $pronounes;
    }
}
