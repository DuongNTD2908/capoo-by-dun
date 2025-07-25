<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../Contents/Jpg/game/logoDHV.png" type="image/x-icon" />
    <link rel="stylesheet" href="../Contents/Css/game-trangchu.css">
    <title>DHV Game</title>
</head>

<body>
    <div class="rainbow-bar"></div>
    <img class="logo1" src="../Contents/Jpg/game/LOGO 30 NAM (MAU XANH)-06.png" alt="LOGO 30 NAM">
    <a href="hoc.php"><img class="logo2" src="../Contents/Jpg/logo.png" alt=""></a>
    <div class="main-content">
        <h1><span style="color: rgb(0, 140, 255);">CAPOO</span> CHÀO MỪNG BẠN ĐẾN VỚI</h1>
        <h2>KỈ NIỆM</h2>
        <p>-----------------------30 NĂM THÀNH LẬP -----------------------</p>
        <h2>TRƯỜNG ĐẠI HỌC HÙNG VƯƠNG</h2>
        <h2>THÀNH PHỐ HỒ CHÍ MINH</h2><br>
        <div>
            <?php if (isset($_SESSION['username'])): ?>
                <a href="ingame.html">
                    <img class="down-arrow" src="../Contents/Jpg/game/down-arrow.png" alt=""><br>
                    <span><b>Nhấp vào đây để chơi nào</b></span>
                </a>
            <?php else: ?>
                <a href="dangnhap.html" onclick="alert('Vui lòng đăng nhập')">
                    <img class="down-arrow" src="../Contents/Jpg/game/down-arrow.png" alt=""><br>
                    <span><b>Nhấp vào đây để chơi nào</b></span>
                </a>
            <?php endif; ?>
        </div>
    </div>
</body>

</html>