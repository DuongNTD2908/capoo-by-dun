<?php

class Database {
    private static $instance = null;
    private $conn;

    private function __construct() {
        $this->conn = new mysqli("localhost", "root", "", "capoo");
        $this->conn->set_charset("utf8mb4");
    }

    

    public static function getInstance() {
        if (self::$instance == null) {
            self::$instance = new Database();
        }
        return self::$instance;
    }

    public function getConnection() {
        return $this->conn;
    }

    public function closeConnection() {
        if ($this->conn) {
            $this->conn->close();
        }
    }
}
?>