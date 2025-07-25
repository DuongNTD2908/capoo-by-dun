<?php
session_start();
$pronunciations = $_SESSION['pronunciations_data'] ?? [];
$consonants = [];
$vowels = [];

foreach ($pronunciations as $item) {
    if (isset($item['kinds'])) {
        if ($item['kinds'] === 'Consonants (Phụ âm)') {
            $consonants[] = $item;
        } elseif ($item['kinds'] === 'Vowels (Nguyên âm)') {
            $vowels[] = $item;
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" href="../Contents/Jpg/hi.png" type="image/x-icon" />
    <title>Capoo - Từ vựng</title>
    <link rel="stylesheet" href="../Contents/Css/mainweb.css" />
    <link rel="stylesheet" href="../Contents/Css/pronoun.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>

    </style>
</head>

<body>
    <div class="Container">
        <div class="menu">
            <div class="toggle-menu"></div>
            <a href="../index.php"><img class="logo" src="../Contents/Jpg/logo.png" alt="" /></a>
            <ul>
                <a href="hoc.php">
                    <li>
                        <img src="../Contents/Jpg/home.png" alt="" style="max-width: 40px; padding: 0" /><b>Học</b>
                    </li>
                </a>
                <a href="tuvung.php">
                    <li>
                        <img src="../Contents/Jpg/voca.png" alt="" style="max-width: 40px; padding: 0" /><b>Từ vựng</b>
                    </li>
                </a>
                <a href="">
                    <li class="focus-menu">
                        <img src="../Contents/Jpg/phatam.svg" alt="" style="max-width: 40px; padding: 0" /><b>Phát
                            âm</b>
                    </li>
                </a>
                <?php
                if (isset($_SESSION['username'])) {
                    echo '<a href="myprofile.php">
                            <li>
                                <img src="../Contents/Jpg/ttcn.png" alt="" style="max-width: 40px; padding: 0" /><b>Thông tin cá
                                    nhân</b>
                            </li>
                        </a>';
                } else {
                    echo '<a href="dangnhap.html" onclick=" ';
                    echo "alert('Vui lòng đăng nhập')" . '">
                            <li>
                                <img src="../Contents/Jpg/ttcn.png" alt="" style="max-width: 40px; padding: 0" /><b>Thông tin cá
                                    nhân</b>
                            </li>
                        </a>';
                }
                ?>
                <a href="gioithieu.php">
                    <li>
                        <img src="../Contents/Jpg/gioithieu.png" alt="" style="max-width: 40px; padding: 0" /><b>Giới
                            thiệu</b>
                    </li>
                </a>
                <!-- <a href="">
                    <li>
                        <img src="../Contents/Jpg/help.png" alt="" style="max-width: 40px; padding: 0" /><b>Trợ giúp</b>
                    </li>
                </a> -->
            </ul>
        </div>
        <script src="../Contents/JavaScript/menu.js"></script>
        <div class="main-content">
            <h1>Phát âm</h1>
            <h3>Consonants (Phụ âm)</h3>
            <div class="ipa-container">
                <?php if (!empty($consonants)): ?>
                    <?php foreach ($consonants as $ipa_item): ?>
                        <button class="ipa-button" data-ipa-symbol="<?= htmlspecialchars($ipa_item['name']) ?>"
                            data-ipa-sound-path="<?= htmlspecialchars($ipa_item['sound']) ?>">
                            <?= htmlspecialchars($ipa_item['name']) ?>
                        </button>
                    <?php endforeach; ?>
                <?php else: ?>
                    <p>Không có phụ âm nào.</p>
                <?php endif; ?>
            </div>

            <h3>Vowels (Nguyên âm)</h3>
            <div class="ipa-container">
                <?php if (!empty($vowels)): ?>
                    <?php foreach ($vowels as $ipa_item): ?>
                        <button class="ipa-button" data-ipa-symbol="<?= htmlspecialchars($ipa_item['name']) ?>"
                            data-ipa-sound-path="<?= htmlspecialchars($ipa_item['sound']) ?>">
                            <?= htmlspecialchars($ipa_item['name']) ?>
                        </button>
                    <?php endforeach; ?>
                <?php else: ?>
                    <p>Không có nguyên âm nào.</p>
                <?php endif; ?>
            </div>


            <script src="../Contents/JavaScript/phatam.js"></script>

            </script>
        </div>

        <div class="other">
            <div class="login-content">
                <?php
                if (isset($_SESSION['username'])) {
                    echo "<h2>Xin chào, " . htmlspecialchars($_SESSION['username']) . "!</h2>";
                    echo '<a href="dangxuat.php"><button>Đăng xuất</button></a>';
                } else {
                    echo "
                <h2>Tham gia cùng chúng tôi nào</h2>
                <a href='dangnhap.html'><button>Đăng nhập</button></a>";
                }
                ?>
            </div>
            <div class="social-content">
                <h2>Kết nối với chúng tôi tại</h2>
                <div class="social">
                    <a class="fb" href="https://www.facebook.com/dun.cutie2908"><img src="../Contents/Jpg/fb.png"
                            alt="Facebook" />
                        <p>Facebook</p>
                    </a>
                    <a class="ins" href="https://www.instagram.com/dun_2908/"><img src="../Contents/Jpg/ins.png"
                            alt="" />
                        <p>Instagram</p>
                    </a>
                    <a class="gm" href="mailto:2205CT0024@dhv.edu.vn"><img src="../Contents/Jpg/gmail.png" alt="" />
                        <p>Email</p>
                    </a>
                </div>
            </div>
            <div class="footer">
                <a href="gioithieu.php">Giới thiệu</a>
                <a href="">Điều khoản</a>
                <a href="">Chính sách bảo mật</a>
            </div>
            <p class="cpr">Copyright © 2025 Capoo By Dun</p>
        </div>
</body>

</html>