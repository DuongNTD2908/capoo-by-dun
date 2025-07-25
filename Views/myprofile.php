<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../Contents/Jpg/hi.png" type="image/x-icon" />
    <link rel="stylesheet" href="../Contents/Css/profile.css">
    <title>Capoo - Thông tin cá nhân</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
</head>
<body>
    <div class="ground">
        <div class="ball"></div>
        <svg width="100%" height="100%" style="position:absolute; bottom:0; left:0;" viewBox="0 0 1200 300"
            xmlns="http://www.w3.org/2000/svg">
            <g>
                <g>
                    <path d="M100 300 Q110 220 120 300" stroke="#228B22" stroke-width="6" fill="none">
                        <animate attributeName="d" dur="2s" repeatCount="indefinite" values="
                                M100 300 Q110 220 120 300;
                                M100 300 Q115 210 120 300;
                                M100 300 Q110 220 120 300
                            " />
                    </path>
                    <path d="M200 300 Q210 230 220 300" stroke="#2ecc40" stroke-width="5" fill="none">
                        <animate attributeName="d" dur="2.2s" repeatCount="indefinite" values="
                                M200 300 Q210 230 220 300;
                                M200 300 Q215 220 220 300;
                                M200 300 Q210 230 220 300
                            " />
                    </path>
                    <path d="M300 300 Q310 210 320 300" stroke="#27ae60" stroke-width="7" fill="none">
                        <animate attributeName="d" dur="1.8s" repeatCount="indefinite" values="
                                M300 300 Q310 210 320 300;
                                M300 300 Q305 220 320 300;
                                M300 300 Q310 210 320 300
                            " />
                    </path>
                    <path d="M400 300 Q410 225 420 300" stroke="#228B22" stroke-width="6" fill="none">
                        <animate attributeName="d" dur="2.4s" repeatCount="indefinite" values="
                                M400 300 Q410 225 420 300;
                                M400 300 Q415 215 420 300;
                                M400 300 Q410 225 420 300
                            " />
                    </path>
                    <path d="M500 300 Q510 215 520 300" stroke="#2ecc40" stroke-width="5" fill="none">
                        <animate attributeName="d" dur="2s" repeatCount="indefinite" values="
                                M500 300 Q510 215 520 300;
                                M500 300 Q505 225 520 300;
                                M500 300 Q510 215 520 300
                            " />
                    </path>
                    <path d="M600 300 Q610 230 620 300" stroke="#27ae60" stroke-width="7" fill="none">
                        <animate attributeName="d" dur="1.7s" repeatCount="indefinite" values="
                                M600 300 Q610 230 620 300;
                                M600 300 Q615 220 620 300;
                                M600 300 Q610 230 620 300
                            " />
                    </path>
                    <path d="M700 300 Q710 220 720 300" stroke="#228B22" stroke-width="6" fill="none">
                        <animate attributeName="d" dur="2.1s" repeatCount="indefinite" values="
                                M700 300 Q710 220 720 300;
                                M700 300 Q705 210 720 300;
                                M700 300 Q710 220 720 300
                            " />
                    </path>
                    <path d="M800 300 Q810 225 820 300" stroke="#2ecc40" stroke-width="5" fill="none">
                        <animate attributeName="d" dur="2.3s" repeatCount="indefinite" values="
                                M800 300 Q810 225 820 300;
                                M800 300 Q815 215 820 300;
                                M800 300 Q810 225 820 300
                            " />
                    </path>
                    <path d="M900 300 Q910 210 920 300" stroke="#27ae60" stroke-width="7" fill="none">
                        <animate attributeName="d" dur="1.9s" repeatCount="indefinite" values="
                                M900 300 Q910 210 920 300;
                                M900 300 Q905 220 920 300;
                                M900 300 Q910 210 920 300
                            " />
                    </path>
                    <path d="M1050 300 Q1060 220 1070 300" stroke="#228B22" stroke-width="6" fill="none">
                        <animate attributeName="d" dur="2.2s" repeatCount="indefinite" values="
                                M1050 300 Q1060 220 1070 300;
                                M1050 300 Q1065 210 1070 300;
                                M1050 300 Q1060 220 1070 300
                            " />
                    </path>
                </g>
            </g>
        </svg>
    </div>
    <div class="main-border">
        <div class="main">
            <h1>THÔNG TIN CÁ NHÂN</h1>
            <?php
            if ($_SESSION['avt'] != null) {
                echo '<img src="' . $_SESSION['avt'] . '" alt="" width="100px" height="100px" style="border-radius: 60px; border: 2px solid lightblue;">';
            } else {
                echo '<img src="../Contents/Jpg/black.png" alt="" width="100px" height="100px" style="border-radius: 60px;">';
            }
            ?>

            <div class="info">
                <a href="../index.php"><img class="ttcn" src="../Contents/Jpg/ttcn1.png" alt=""></a>
                <img class="ttcn" src="../Contents/Jpg/ttcn2.png" alt="">
                <img class="ttcn" src="../Contents/Jpg/ttcn3.png" alt="">
                <div class="left">
                    <p>Họ và tên:</p>
                    <p>Email:</p>
                    <p>Số điện thoại:</p>
                    <p>Giới tính:</p>
                    <p>Ngày sinh:</p>
                </div>
                <div class="right">
                    <?php if (isset($_SESSION['name'])) {
                        echo "<p>" . $_SESSION['name'] . "</p>";
                    } else {
                        echo "<p>Chưa cập nhật</p>";
                    } ?>
                    <p><?php echo "<p>" . $_SESSION['email'] . "</p>"; ?></p>

                    <?php if ($_SESSION['sdt'] == 0) {
                        echo "<p>Chưa cập nhật</p>";
                    } else {
                        echo "<p>" . $_SESSION['sdt'] . "</p>";
                    }
                    ?>

                    <?php if ($_SESSION['gioitinh'] == 0) {
                        echo "<p>Chưa cập nhật</p>";
                    } else {
                        echo "<p>" . $_SESSION['gioitinh'] . "</p>";
                    }
                    ?>

                    <?php if (!isset($_SESSION['namsinh']) || empty($_SESSION['namsinh']) || strtotime($_SESSION['namsinh']) === false) {
                        echo '<p>Chưa cập nhật</p>';
                    } else {
                        echo '<p>' . htmlspecialchars(date("d/m/Y", strtotime($_SESSION['namsinh']))) . '</p>';
                    }
                    ?>
                </div>
            </div>
            <a href="changeprofile.php"><button class="edit" id="edit">Chỉnh sửa</button></a>
        </div>
    </div>
</body>

</html>