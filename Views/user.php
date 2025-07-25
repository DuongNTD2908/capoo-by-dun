<?php
session_start();
?>
<div id="user">
    <?php
    if (isset($_SESSION['username'])) {
        echo "<span>Xin chào, " . htmlspecialchars($_SESSION['username']) . "!</span>";
        echo '<a href="dangxuat.php"><button class="login">Đăng xuất</button></a>';
    } else {
        echo '
                <a href="dangnhap.html"><button class="login">Đăng nhập</button></a>';
    } ?>
</div>