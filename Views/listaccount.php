<?php
session_start();
$accounts = $_SESSION['accounts'] ?? [];
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../Contents/Jpg/hi.png" type="image/x-icon" />
    <title>Capoo - Danh sách người dùng</title>
    <link rel="stylesheet" href="../Contents/Css/header.css">
    <style>
        .header {
            background-color: #00b3ffff;
        }

        table {
            width: 100%;
            margin-top: 150px;
            border-collapse: collapse;
        }

        th,
        td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            border: 2px solid #ddd;
        }

        th {
            background-color: #0062caff;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        .container {
            max-width: 1200px;
            margin: auto;
            padding: 20px;
        }

        table {
            border: 1px solid #ddd;
            border-radius: 5px;
            overflow: hidden;
        }
    </style>
</head>

<body>
    <div class="header">
        <div class="toggle-menu"></div>
        <div class="header-content">
            <div class="content container1">
                <a href="../index.php"><img src="../Contents/Jpg/logo.png" alt="Capoo" width="150px"
                        height="85px" /></a>
            </div>
            <div class="content container2">
                <ul>
                    <li>
                        <a href="gioithieu.php">
                            <p><strong>Giới thiệu</strong></p>
                        </a>
                    </li>
                    <li>
                        <a href="hoc.php">
                            <p><strong>Học</strong></p>
                        </a>
                    </li>
                    <li>
                        <a href="tuvung.php">
                            <p><strong>Từ vựng</strong></p>
                        </a>
                    </li>
                    <!-- <li>
                        <a href="#">
                            <p><strong>Trợ giúp</strong></p>
                        </a>
                    </li> -->
                </ul>
            </div>
            <div class="content container3" id="user">
            </div>
            <script>
                fetch("user.php")
                    .then((response) => response.text())
                    .then((data) => {
                        document.getElementById("user").innerHTML = data;
                    })
                    .catch((error) =>
                        console.error("Error loading the header:", error)
                    );
            </script>
        </div>
    </div>
    <script>
        const header = document.querySelector(".header");
        const toggle_menu = document.querySelector(".toggle-menu");
        toggle_menu.onclick = function () {
            header.classList.toggle("hide");
        };
    </script>
    <div class="container">
        <h1>Danh sách tài khoản</h1>
        <table>
            <tr>
                <th>STT</th>
                <th>Tên tài khoản</th>
                <th>Họ tên</th>
                <th>Email</th>
                <th>Số điện thoại</th>
                <th>Ngày sinh</th>
                <th>Giới tính</th>
                <th>Xóa</th>
            </tr>
            <?php if (!empty($accounts)): ?>
                <?php $stt = 1;
                foreach ($accounts as $account): ?>
                    <tr>
                        <td><?= $stt++ ?></td>
                        <td><?= htmlspecialchars($account['username']) ?></td>
                        <td><?= htmlspecialchars($account['fullname']) ?></td>
                        <td><?= htmlspecialchars($account['email']) ?></td>
                        <td><?= htmlspecialchars($account['phone']) ?></td>
                        <td><?= !empty($account['date']) ? date("d/m/Y", strtotime($account['date'])) : 'Chưa cập nhật' ?></td>
                        <td><?= htmlspecialchars($account['sex']) ?></td>
                        <td>
                            <form action="../Controllers/UserController.php?action=delete" method="POST"
                                onsubmit="return confirm('Bạn có chắc chắn muốn xóa tài khoản này?');">
                                <input type="hidden" name="user_id" value="<?= $account['id'] ?>">
                                <button type="submit"
                                    style="background-color: red; color: white; border: none; padding: 5px 10px; cursor: pointer;">X</button>
                            </form>
                        </td>
                    </tr>
                <?php endforeach; ?>
            <?php else: ?>
                <tr>
                    <td colspan="7">Không có tài khoản nào.</td>
                </tr>
            <?php endif; ?>
        </table>
    </div>
    <table>
</body>

</html>