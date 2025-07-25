<?php
session_start();
header('Content-Type: application/json');

if (!isset($_SESSION['username'])) {
    echo json_encode(["success" => false, "error" => "Chưa đăng nhập"]);
    exit;
}

require_once '../Models/user.php';

$userModel = new user();
$userData = $userModel->getUserByUsername($_SESSION['username']);

if (!$userData) {
    echo json_encode(["success" => false, "error" => "Không tìm thấy người dùng"]);
    exit;
}

// Chỉ lấy các cột chapter1-chapter10
$progress = [];
for ($i = 1; $i <= 10; $i++) {
    $chapterKey = "chapter" . $i;
    $progress[$chapterKey] = $userData[$chapterKey];
}

echo json_encode(["success" => true, "progress" => $progress]);
