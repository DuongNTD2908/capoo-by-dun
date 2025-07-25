<?php
session_start();
require_once "../Models/user.php";

class UserController
{
    private $userModel;

    public function __construct()
    {
        $this->userModel = new user();
    }

    public function load()
    {
        $accounts = $this->userModel->getAllAccounts();
        $_SESSION['accounts'] = $accounts;
        $username = $_SESSION['username'];
        $user = $this->userModel->getUserByUsername($username);
        if ($user) {
            $_SESSION['avt'] = $user['avt'];
            $_SESSION['username'] = $user['username'];
            $_SESSION['user_id'] = $user['id'];
            $_SESSION['email'] = $user['email'];
            $_SESSION['sdt'] = $user['phone'];
            $_SESSION['namsinh'] = $user['date'];
            $_SESSION['gioitinh'] = $user['sex'];
            $_SESSION['name'] = $user['fullname'];
            $_SESSION['role'] = $user['role'];
        }
        header("Location: ../Views");
        exit();
    }

    public function login()
    {
        if (!isset($_POST['username']) || !isset($_POST['password']) || empty(trim($_POST['username'])) || empty(trim($_POST['password']))) {
            echo "<script>alert('Vui lòng nhập đầy đủ tên đăng nhập và mật khẩu!');window.location.href='../Views/dangnhap.html';</script>";
            return;
        }
        $username = trim($_POST['username']);
        $password = trim($_POST['password']);
        try {
            $user = $this->userModel->getUserByUsername($username);

            if ($user) {
                if ($user['password']) {
                    $_SESSION['avt'] = $user['avt'];
                    $_SESSION['username'] = $user['username'];
                    $_SESSION['user_id'] = $user['id'];
                    $_SESSION['email'] = $user['email'];
                    $_SESSION['sdt'] = $user['phone'];
                    $_SESSION['namsinh'] = $user['date'];
                    $_SESSION['gioitinh'] = $user['sex'];
                    $_SESSION['name'] = $user['fullname'];

                    echo "<script>alert('Đăng nhập thành công!');window.location.href='../index.php';</script>";
                } else {
                    echo "<script>alert('Sai mật khẩu!');window.location.href='../Views/dangnhap.html';</script>";
                }
            } else {
                echo "<script>alert('Tên đăng nhập không tồn tại!');window.location.href='../Views/dangnhap.html';</script>";
            }
        } catch (Exception $e) {
            echo "<script>alert('Đã xảy ra lỗi: " . $e->getMessage() . "');window.location.href='../Views/dangnhap.html';</script>";
        }

    }
    public function register()
    {
        if (
            !isset($_POST['username']) || !isset($_POST['password']) || !isset($_POST['email']) ||
            empty(trim($_POST['username'])) || empty(trim($_POST['password'])) || empty(trim($_POST['email']))
        ) {
            echo "<script>alert('Vui lòng nhập đầy đủ thông tin!');window.location.href='../Views/dangnhap.html';</script>";
            return false;
        }

        $username = trim(filter_var($_POST['username'], FILTER_SANITIZE_STRING));
        $email = trim(filter_var($_POST['email'], FILTER_SANITIZE_EMAIL));
        $password = trim($_POST['password']);
        $role = 'customer';

        // Kiểm tra định dạng email
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            echo "<script>alert('Email không hợp lệ!');window.location.href='../Views/dangnhap.html';</script>";
            return false;
        }

        // Kiểm tra độ mạnh của mật khẩu
        if (
            strlen($password) < 8 ||
            !preg_match('/[A-Z]/', $password) ||              // Có ít nhất 1 chữ in hoa
            !preg_match('/[\W_]/', $password)                 // Có ít nhất 1 ký tự đặc biệt (\W là non-word character)
        ) {
            echo "<script>alert('Mật khẩu phải có ít nhất 8 ký tự, gồm 1 chữ in hoa và 1 ký tự đặc biệt!');window.location.href='../Views/dangnhap.html';</script>";
            return false;
        }

        try {
            if ($this->userModel->isUserExist($username)) {
                echo "<script>alert('Tên đăng nhập đã tồn tại!');window.location.href='../Views/dangnhap.html';</script>";
                return false;
            }

            $result = $this->userModel->registerUser($username, $password, $email, $role);

            if ($result) {
                echo "<script>alert('Đăng ký thành công!');window.location.href='../Views/dangnhap.html';</script>";
            } else {
                echo "<script>alert('Đăng ký thất bại. Vui lòng thử lại!');window.location.href='../Views/dangnhap.html';</script>";
            }
        } catch (Exception $e) {
            echo "<script>alert('Đã xảy ra lỗi: " . $e->getMessage() . "');window.location.href='../Views/dangnhap.html';</script>";
            return false;
        }
    }


    public function edit()
    {
        if ($_SERVER["REQUEST_METHOD"] === "POST") {
            $sdt = trim($_POST["sdt"]);
            $email = trim($_POST["email"]);
            $name = trim($_POST["name"]);
            $namsinh = $_POST["namsinh"];
            $gioitinh = trim($_POST["gioitinh"]);
            $image = null;

            if (isset($_FILES['image']) && $_FILES['image']['error'] === UPLOAD_ERR_OK) {
                if (!empty($_FILES['image']['name'])) {

                    $targetDir = "../Contents/Jpg/";
                    $targetFile = $targetDir . basename($_FILES['image']['name']);

                    if (move_uploaded_file($_FILES['image']['tmp_name'], $targetFile)) {
                        $image = $targetFile;
                    }
                }
            }

            if ($_SESSION['user_id']) {
                $this->userModel->updateUser($_SESSION['user_id'], $name, $email, $sdt, $namsinh, $gioitinh, $image);
                $this->load();
                echo "<script>alert('Chỉnh sửa thành công!');window.location.href='../index.php';</script>";
            } else {
                echo "<script>alert('Lỗi hệ thống, vui lòng thử lại!'); window.history.back();</script>";
            }
        }
    }
    public function logout()
    {
        session_destroy();
        header('Location: ../index.php');
        exit();
    }
    public function getAllAccounts()
    {
        $accounts = $this->userModel->getAllAccounts();
        $_SESSION['accounts'] = $accounts;
        header("Location: ../Views/listaccount.php");
        exit();
    }

    public function deleteAccount()
    {
        if (isset($_POST['user_id'])) {
            $userId = $_POST['user_id'];
            $result = $this->userModel->deleteUser($userId);
            if ($result) {
                echo "<script>alert('Xóa tài khoản thành công!');window.location.href='UserController.php';</script>";
            } else {
                echo "<script>alert('Xóa tài khoản thất bại!');window.location.href='../Views/listaccount.php';</script>";
            }
        } else {
            echo "<script>alert('Không tìm thấy ID tài khoản để xóa!');window.location.href='../Views/listaccount.php';</script>";
        }
    }

}
$controller = new UserController();
if (isset($_GET['action']) && $_GET['action'] === 'login') {
    $controller->login();
} elseif (isset($_GET['action']) && $_GET['action'] === 'register') {
    $controller->register();
} elseif (isset($_GET['action']) && $_GET['action'] === 'logout') {
    echo "<script>
    alert('Bạn đã đăng xuất thành công!');
    window.location.href = '../index.php';
</script>";
    $controller->logout();
} elseif (isset($_GET['action']) && $_GET['action'] === 'edit') {
    $controller->edit();
} elseif (isset($_GET['action']) && $_GET['action'] === 'delete') {
    $controller->deleteAccount();
} else {
    $controller->load();
}