<?php
require_once "../config/database.php";
class user
{
    private $conn;

    public function __construct()
    {
        $this->conn = Database::getInstance()->getConnection();
    }

    public function getUserByUsername($username)
    {
        $sql = "SELECT * FROM users WHERE username = ?";
        $stmt = $this->conn->prepare($sql);

        if (!$stmt) {
            return null;
        }

        $stmt->bind_param("s", $username);
        $stmt->execute();
        $result = $stmt->get_result();

        return $result->fetch_assoc();
    }

    public function isUserExist($username)
    {
        $sql = "SELECT id FROM users WHERE username = ?";
        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("s", $username);
        $stmt->execute();
        $result = $stmt->get_result();
        return $result->num_rows > 0;
    }

    // Đăng ký người dùng mới
    public function registerUser($username, $password, $email, $role)
    {
        $sql = "INSERT INTO users (username, password, email, role) VALUES (?, ?, ?, ?)";
        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("ssss", $username, $password, $email, $role);
        return $stmt->execute();
    }

    public function updateUser($id, $fullname, $email, $phone, $date, $sex, $avt)
    {
        $sql = "UPDATE users SET fullname = ?, email = ?, phone = ?, date = ?, sex = ?, avt = ? WHERE id = ?";
        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("ssssssi", $fullname, $email, $phone, $date, $sex, $avt, $id);
        return $stmt->execute();
    }

    public function getAllAccounts()
    {
        $sql = "SELECT * FROM users";
        $result = $this->conn->query($sql);
        $accounts = [];

        if ($result && $result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $accounts[] = $row;
            }
        }

        return $accounts;
    }

    public function deleteUser($id)
    {
        $sql = "DELETE FROM users WHERE id = ?";
        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("i", $id);
        return $stmt->execute();
    }

    public function markChapterDone($username, $chapter)
    {
        $sql = "UPDATE users SET `$chapter` = 1 WHERE username = ?";
        $stmt = $this->conn->prepare($sql);
        if (!$stmt)
            return false;
        $stmt->bind_param("s", $username);
        return $stmt->execute();
    }
}