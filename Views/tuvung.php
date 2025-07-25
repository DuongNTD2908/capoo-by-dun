<?php
session_start();

$searchResults = isset($_SESSION['search_results']) ? $_SESSION['search_results'] : [];
$searchTerm = isset($_SESSION['search_term_current']) ? $_SESSION['search_term_current'] : '';

unset($_SESSION['search_results']);
unset($_SESSION['search_term_current']);

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" href="../Contents/Jpg/hi.png" type="image/x-icon" />
    <title>Capoo - Từ vựng</title>
    <link rel="stylesheet" href="../Contents/Css/mainweb.css" />
    <link rel="stylesheet" href="../Contents/Css/voca.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                <a href="">
                    <li class="focus-menu">
                        <img src="../Contents/Jpg/voca.png" alt="" style="max-width: 40px; padding: 0" /><b>Từ vựng</b>
                    </li>
                </a>
                <a href="phatam.php">
                    <li>
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
            <h1>Từ vựng</h1>
            <div class="form-search">
                <form action="../Controllers/VocaController.php" method="get">
                    <input type="hidden" name="action" value="search">
                    <input type="text" placeholder="Tìm kiếm từ vựng..." name="search" id="search"
                        value="<?php echo htmlspecialchars($searchTerm); ?>" autocomplete="off" />
                    <button type="submit">
                        <img src="../Contents/Jpg/search.png" alt="" />
                    </button>
                </form>
                <div id="autocomplete-suggestions" class="autocomplete-suggestions"></div>
            </div>

            <?php if (!empty($searchTerm)): ?>
                <div class="vocabulary-container">
                    <?php if (!empty($searchResults)): ?>
                        <?php foreach ($searchResults as $row): ?>
                            <div class="vocabulary-item">
                                <h3><?php echo htmlspecialchars($row["voca"]); ?></h3>
                                <p><strong>Pronounce:</strong> <?php echo htmlspecialchars($row["pronounce"]); ?></p>
                                <p><strong>Translate:</strong> <?php echo htmlspecialchars($row["trans"]); ?></p>
                                <p><strong>Ex:</strong> <?php echo htmlspecialchars($row["example"]); ?></p>
                                <p><strong>Translate:</strong> <?php echo htmlspecialchars($row["transExample"]); ?></p>
                            </div>
                        <?php endforeach; ?>
                    <?php else: ?>
                        <h2>Không tìm thấy từ vựng nào phù hợp với từ khóa "<?php echo htmlspecialchars($searchTerm); ?>".
                        </h2>
                    <?php endif; ?>
                </div>
            <?php endif; ?>
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
        <script src="../Contents/JavaScript/voca.js"></script>
</body>

</html>