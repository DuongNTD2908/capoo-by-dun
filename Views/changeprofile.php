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
    <title>Capoo - Chỉnh sửa thông tin</title>
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
            <h1>CHỈNH SỬA THÔNG TIN</h1>
            <form action="../Controllers/UserController.php?action=edit" method="post" enctype="multipart/form-data">
                <div id="preview" onclick="document.getElementById('fileInput').click();">
                    <span id="a">Chọn ảnh</span>
                    <?php
                    echo '<img id="previewImage" name="image" src="' . $_SESSION['avt'] . '">';
                    ?>
                </div>
                <input type="file" name="image" id="fileInput" onchange="previewFile(event)">
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
                        <?php
                        if (isset($_SESSION['name'])) {
                            echo '<td><input type="text" name="name" value="' . htmlspecialchars($_SESSION['name']) . '" class="omg"></td>';
                        } else {
                            echo '<td><input type="text" name="name" value=""></td>';
                        }
                        ?>

                        <input type="email" name="email"
                            value="<?php echo isset($_SESSION['email']) ? htmlspecialchars($_SESSION['email']) : ""; ?>">

                        <?php
                        if (isset($_SESSION['sdt'])) {
                            echo '<td><input type="tel" name="sdt" pattern="[0-9]{10}" value="' . htmlspecialchars($_SESSION['sdt']) . '"></td>';
                        } else {
                            echo '<td><input type="tel" name="sdt" pattern="[0-9]{10}" value=""></td>';
                        }
                        ?>
                        <br>

                        <input type="radio" name="gioitinh" value="Nam" <?php echo (isset($_SESSION['gioitinh']) && $_SESSION['gioitinh'] == "Nam") ? "checked" : ""; ?>><label>Nam</label>
                        <input type="radio" name="gioitinh" value="Nữ" <?php echo (isset($_SESSION['gioitinh']) && $_SESSION['gioitinh'] == "Nữ") ? "checked" : ""; ?>><label>Nữ</label>
                        <br>

                        <?php
                        if (isset($_SESSION['namsinh'])) {
                            echo '<td><input type="date" name="namsinh" value="' . htmlspecialchars($_SESSION['namsinh']) . '"></td>';
                        } else {
                            echo '<td><input type="date" name="namsinh" value=""></td>';
                        }
                        ?>
                    </div>
                </div>
                <button class="edit" id="edit">Chỉnh sửa</button>
                <style>
                    a.back{
                        text-decoration: none;
                        color: #fff;
                        font-size: 13px;
                        border: 1px solid #000;
                        padding: 5px 15px;
                        margin-top: 10px;
                        border-radius: 5px;
                        background-color:rgb(133, 38, 0);
                    }
                    a.back:hover {
                        background-color: rgb(210, 60, 0);
                    }
                </style>
                <a href="myprofile.php" class="back">Quay lại</a>
            </form>
        </div>
    </div>
    <script>
        function previewFile(event) {
            const file = event.target.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = function (e) {
                    const previewDiv = document.getElementById('preview');
                    const previewImg = document.getElementById('previewImage');
                    previewImg.src = e.target.result;
                    previewImg.style.display = "block"; // Hiển thị ảnh
                    previewImg.style.opacity = 1; // Đặt độ mờ
                    previewDiv.style.background = "none"; // Xóa nền cũ
                    document.getElementById('a').style.display = "none";
                };
                reader.readAsDataURL(file);
            }
        }
    </script>
</body>

</html>