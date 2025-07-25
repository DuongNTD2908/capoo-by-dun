<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" href="../Contents/Jpg/hi.png" type="image/x-icon" />
    <title>Capoo - Học tập</title>
    <link rel="stylesheet" href="../Contents/Css/mainweb.css">
    <link rel="stylesheet" href="../Contents/Css/latthe.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        .sound-icon {
            cursor: pointer;
            margin-left: 8px;
            font-size: 0.9em;
            transition: color 0.2s ease-in-out;
        }

        .sound-icon:hover {
            color: rgb(29, 74, 237);
        }
    </style>
</head>

<body>
    <div class="Container">
        <div class="menu">
            <div class="toggle-menu"></div>
            <a href="../index.php"><img class="logo" src="../Contents/Jpg/logo.png" alt="" /></a>
            <ul>
                <a href="">
                    <li class="focus-menu">
                        <img src="../Contents/Jpg/home.png" alt="" style="max-width: 40px; padding: 0" /><b>Học</b>
                    </li>
                </a>
                <a href="tuvung.php">
                    <li>
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
                <?php if (isset($_SESSION['username']) && $_SESSION['role'] == 'admin'): ?>
                    <a href="listaccount.php">
                        <li>
                            <img src="../Contents/Jpg/list.png" alt="" style="max-width: 40px; padding: 0" /><b>Danh sách
                                tài khoản</b>
                        </li>
                    </a>
                <?php endif; ?>
            </ul>
        </div>
        <script src="../Contents/JavaScript/menu.js"></script>
        <div class="main-content">
            <h1>Chủ đề</h1>
            <div class="voca-content">
                <?php if (!empty($_SESSION['topics'])): ?>
                    <?php foreach ($_SESSION['topics'] as $indextopic => $topic): ?>
                        <?php if (isset($topic['idtopic']) && $topic['idtopic'] === 'TOEIC')
                            continue; ?>
                        <button onclick="openPopup('<?php echo $topic['idtopic']; ?>')"> <img
                                src="<?php echo $topic['imagetopic']; ?>" alt="" />
                            <p><?php echo $topic['nametopic'] ?></p>
                        </button>
                    <?php endforeach; ?>
                <?php else: ?>
                    <p>Không có chủ đề nào.</p>
                <?php endif; ?>

                <a href="maingame.php"><button>SPECIAL</button></a>
            </div>
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
    </div>
    <div class="overlay" id="overlay" onclick="closePopup()"></div>
    <?php if (!empty($_SESSION['topics'])): ?>
        <?php foreach ($_SESSION['topics'] as $indextopic => $topic): ?>
            <?php if (isset($topic['idtopic']) && $topic['idtopic'] === 'TOEIC')
                continue; ?>
            <?php
            $current_topic_vocabs = array_filter($_SESSION['vocabs'], function ($vocab) use ($topic) {
                return isset($vocab['idtopic']) && isset($topic['idtopic']) && $vocab['idtopic'] == $topic['idtopic'];
            });
            if (!empty($current_topic_vocabs)):
                ?>
                <div class="popup" id="popup_<?php echo $topic['idtopic']; ?>">
                    <div id="demo_<?php echo $indextopic; ?>" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-inner" style="position: unset">
                            <?php $first_vocab_in_topic = true; ?>
                            <?php foreach ($current_topic_vocabs as $vocab): ?>
                                <div class="carousel-item <?php echo $first_vocab_in_topic ? 'active' : ''; ?>">
                                    <div class="popup-inner d-block">
                                        <div class="popup-front popup-face">
                                            <img class="voca-img" src="<?php echo $vocab['image_voca'] ?>" alt="" />
                                            <p><?php echo $vocab['voca'] ?>
                                                <?php if (!empty($vocab['sounds']) && $vocab['sounds'] != NULL): ?>
                                                    <i class="fa fa-volume-up sound-icon"
                                                        onclick="playSound('<?php echo $vocab['sounds']; ?>')"></i>
                                                <?php endif; ?>
                                            </p>
                                            <p><?php echo $vocab['pronounce'] ?></p>
                                            <div class="rightarrow">
                                                <img class="back-img" src="../Contents/Jpg/rightarrow.png" alt=""
                                                    onclick="flipPopup()" />
                                            </div>
                                        </div>
                                        <div class="popup-back popup-face">
                                            <p><b><?php echo $vocab['trans'] ?></b></p>
                                            <p>
                                                <strong>Ex: </strong><?php echo $vocab['example'] ?>
                                                <?php if (!empty($vocab['exsounds'])): ?>
                                                    <i class="fa fa-volume-up sound-icon"
                                                        onclick="playSound('<?php echo $vocab['exsounds']; ?>')"></i>
                                                <?php endif; ?>
                                            </p>
                                            <p>
                                                <?php echo $vocab['transExample'] ?>
                                            </p>
                                            <div class="rightarrow">
                                                <img class="back-img" src="../Contents/Jpg/rightarrow.png" alt=""
                                                    onclick="flipPopup()" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <?php $first_vocab_in_topic = false; ?>
                            <?php endforeach ?>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#demo_<?php echo $indextopic; ?>"
                            data-bs-slide="prev" style="left: -100px; width: 20%" onclick="flipRemove()">
                            <span class="carousel-control-prev-icon"></span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#demo_<?php echo $indextopic; ?>"
                            data-bs-slide="next" style="right: -100px; width: 20%" onclick="flipRemove()">
                            <span class="carousel-control-next-icon"></span>
                        </button>
                    </div>
                </div>
            <?php endif; ?>
        <?php endforeach ?>
    <?php endif ?>
    <script>
        function playSound(audioPath) {
            if (audioPath) {
                var audio = new Audio(audioPath);
                audio.play().catch(e => console.error("Error playing sound:", e));
            } else {
                console.warn("Không tìm thấy đường dẫn âm thanh.");
            }
        }
    </script>
    <script src="../Contents/JavaScript/latthe.js"></script>
    <div style="height: 1000px"></div>
</body>

</html>