<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" href="../Contents/Jpg/hi.png" type="image/x-icon" />
    <title>Capoo - Giới thiệu</title>
    <link rel="stylesheet" href="../Contents/Css/mainweb.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
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
                <a href="">
                    <li class="focus-menu">
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
        <div class="heading-gt">
            <h1>Giới thiệu</h1>
            <div class="main-gioithieu">
                <ul>
                    <a href="#Toila">
                        <li>TÔI LÀ</li>
                    </a><a href="#Sumenh">
                        <li>SỨ MỆNH</li>
                    </a><a href="#Phuongphap">
                        <li>PHƯƠNG PHÁP</li>
                    </a><a href="#Lienhe">
                        <li>LIÊN HỆ</li>
                    </a>
                </ul>
            </div>
        </div>
    </div>
    <div id="Toila"></div>
    <div class="main-gt">
        <div class="content-gt toila">
            <div class="img-toila">
                <img src="../Contents/Jpg/toila.jpg" alt="" />
            </div>
            <div class="text-gt text">
                <h1>Xin chào, tôi là Nguyễn Thái Dương</h1>
                <div>
                    <p>
                        Tôi là sinh viên năm 3 tại trường Đại học Hùng Vương
                        Tp.HCM với chuyên ngành Công nghệ phần mềm. <br>
                        Khoa: Kỹ thuật - Công nghệ
                    </p>
                    <p>Mã số sinh viên: 2205CT0024</p>
                </div>
            </div>
            <div id="Sumenh"></div>
        </div>
        <div class="content-gt sumenh">
            <h1>SỨ MỆNH</h1>
            <div>
                <div class="text-gt text">
                    <p>
                        Với mong muốn giúp đỡ mọi người dễ dàng học được
                        ngôn ngữ thứ hai là tiếng Anh - đang được phổ biến
                        trên toàn thế giới, Capoo đem đến cho bạn có một
                        trải nghiệm thật thú vị, đẹp mắt nhưng không kém
                        phần hiệu quả.
                    </p>
                </div>
                <div class="img-sm">
                    <img src="../Contents/Jpg/sumenh.png" alt="" />
                </div>
            </div>
            <div id="Phuongphap"></div>
        </div>
        <div class="content-gt phuongphap">
            <h1>PHƯƠNG PHÁP</h1>
            <div class="main-pp">
                <div class="img-pp">
                    <img src="../Contents/Jpg/pp.png" alt="" />
                </div>
                <div class="text-pp text">
                    <p>
                        Phương pháp học lật thẻ là một kỹ thuật học tập đơn
                        giản nhưng hiệu quả, giúp người học ghi nhớ thông
                        tin bằng cách sử dụng các tấm thẻ chứa câu hỏi ở một
                        mặt và câu trả lời ở mặt còn lại.
                    </p>
                    <p>
                        Đây là phương pháp rất phổ biến trong việc học từ
                        vựng, kiến thức chuyên ngành, công thức, ngày tháng
                        lịch sử, và nhiều nội dung khác cần ghi nhớ.
                    </p>
                    <p>
                        Capoo sẽ mang đến cho bạn một trải nghiệm học từ
                        vựng về lật thẻ ở bất kỳ nơi đâu, miễn bạn có mạng
                        là được :)
                    </p>
                </div>
            </div>
            <div id="Lienhe"></div>
        </div>
        <div class="content-gt lienhe">
            <h1>LIÊN HỆ</h1>
            <p style="padding: 5px;">
                Nếu bạn có thắc mắc gì, vui lòng điền phía dưới cho chúng
                tôi biết nhé
            </p>
            <div class="main-lh">
                <form action="">
                    <div class="form-lh">
                        <input type="text" name="name" id="name" placeholder="Họ và tên" autocomplete="off" />
                        <input type="email" name="email" id="email" placeholder="Email" />
                    </div>
                    <textarea name="message" id="message" cols="30" rows="10" placeholder="Nội dung liên hệ..."
                        autocomplete="off"></textarea>
                    <button type="submit">Gửi</button>
                </form>
            </div>
        </div>
    </div>
</body>

</html>