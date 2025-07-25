<?php
require_once '../Models/user.php';

class SaveProgressController
{
    public function handle()
    {
        header("Content-Type: application/json");

        if (!isset($_SESSION['username'])) {
            echo json_encode(["success" => false, "error" => "Chưa đăng nhập"]);
            return;
        }

        $data = json_decode(file_get_contents("php://input"), true);
        $chapter = $data['chapter'] ?? null;

        if (!$chapter || !preg_match('/^chapter[1-9]0?$/', $chapter)) {
            echo json_encode(["success" => false, "error" => "Tên chương không hợp lệ"]);
            return;
        }

        $username = $_SESSION['username'];
        $model = new user();
        $success = $model->markChapterDone($username, $chapter);

        echo json_encode(["success" => $success]);
    }
}
