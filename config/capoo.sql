-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 12, 2025 at 11:47 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capoo`
--

-- --------------------------------------------------------

--
-- Table structure for table `pronoune`
--

CREATE TABLE `pronoune` (
  `id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `sound` varchar(50) NOT NULL,
  `kinds` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pronoune`
--

INSERT INTO `pronoune` (`id`, `name`, `sound`, `kinds`) VALUES
(1, 'p', '../Contents/Sounds/p.mp3', 'Consonants (Phụ âm)'),
(2, 'b', '../Contents/Sounds/b.mp3', 'Consonants (Phụ âm)'),
(3, 't', '../Contents/Sounds/t.mp3', 'Consonants (Phụ âm)'),
(4, 'd', '../Contents/Sounds/d.mp3', 'Consonants (Phụ âm)'),
(5, 'k', '../Contents/Sounds/k.mp3', 'Consonants (Phụ âm)'),
(6, 'g', '../Contents/Sounds/g.mp3', 'Consonants (Phụ âm)'),
(7, 'm', '../Contents/Sounds/m.mp3', 'Consonants (Phụ âm)'),
(8, 'n', '../Contents/Sounds/n.mp3', 'Consonants (Phụ âm)'),
(9, 'ŋ', '../Contents/Sounds/ŋ.mp3', 'Consonants (Phụ âm)'),
(10, 'tʃ', '../Contents/Sounds/tʃ.mp3', 'Consonants (Phụ âm)'),
(11, 'dʒ', '../Contents/Sounds/dʒ.mp3', 'Consonants (Phụ âm)'),
(12, 'f', '../Contents/Sounds/f.mp3', 'Consonants (Phụ âm)'),
(13, 'v', '../Contents/Sounds/v.mp3', 'Consonants (Phụ âm)'),
(14, 'θ', '../Contents/Sounds/θ.mp3', 'Consonants (Phụ âm)'),
(15, 'ð', '../Contents/Sounds/ð.mp3', 'Consonants (Phụ âm)'),
(16, 's', '../Contents/Sounds/s.mp3', 'Consonants (Phụ âm)'),
(17, 'z', '../Contents/Sounds/z.mp3', 'Consonants (Phụ âm)'),
(18, 'ʃ', '../Contents/Sounds/ʃ.mp3', 'Consonants (Phụ âm)'),
(19, 'ʒ', '../Contents/Sounds/ʒ.mp3', 'Consonants (Phụ âm)'),
(20, 'h', '../Contents/Sounds/h.mp3', 'Consonants (Phụ âm)'),
(21, 'w', '../Contents/Sounds/w.mp3', 'Consonants (Phụ âm)'),
(22, 'j', '../Contents/Sounds/j.mp3', 'Consonants (Phụ âm)'),
(23, 'r', '../Contents/Sounds/r.mp3', 'Consonants (Phụ âm)'),
(24, 'l', '../Contents/Sounds/l.mp3', 'Consonants (Phụ âm)'),
(25, 'i', '../Contents/Sounds/i.mp3', 'Vowels (Nguyên âm)'),
(26, 'ɪ', '../Contents/Sounds/ɪ.mp3', 'Vowels (Nguyên âm)'),
(27, 'e', '../Contents/Sounds/e.mp3', 'Vowels (Nguyên âm)'),
(28, 'ɛ', '../Contents/Sounds/ɛ.mp3', 'Vowels (Nguyên âm)'),
(29, 'æ', '../Contents/Sounds/æ.mp3', 'Vowels (Nguyên âm)'),
(30, 'ʌ', '../Contents/Sounds/ʌ.mp3', 'Vowels (Nguyên âm)'),
(31, 'ə', '../Contents/Sounds/ə.mp3', 'Vowels (Nguyên âm)'),
(32, 'u', '../Contents/Sounds/u.mp3', 'Vowels (Nguyên âm)'),
(33, 'ʊ', '../Contents/Sounds/ʊ.mp3', 'Vowels (Nguyên âm)'),
(34, 'oʊ', '../Contents/Sounds/oʊ.mp3', 'Vowels (Nguyên âm)'),
(35, 'ɔ', '../Contents/Sounds/ɔ.mp3', 'Vowels (Nguyên âm)'),
(36, 'ɑ', '../Contents/Sounds/ɑ.mp3', 'Vowels (Nguyên âm)'),
(37, 'aɪ', '../Contents/Sounds/aɪ.mp3', 'Vowels (Nguyên âm)'),
(38, 'aʊ', '../Contents/Sounds/aʊ.mp3', 'Vowels (Nguyên âm)'),
(39, 'ɔɪ', '../Contents/Sounds/ɔɪ.mp3', 'Vowels (Nguyên âm)');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `idtopic` varchar(5) NOT NULL,
  `nametopic` varchar(100) NOT NULL,
  `imagetopic` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`idtopic`, `nametopic`, `imagetopic`) VALUES
('ANIMA', 'Động vật <br> Animal', '../Contents/Jpg/meu.png'),
('FaR', 'Gia đình và mối quan hệ <br> Family and Relationship', '../Contents/Jpg/family.png'),
('HTTN', 'Hiện tượng thiên nhiên <br> Natural Phenomenon', '../Contents/Jpg/rainbow.png'),
('NTHAT', 'Nội thất <br> Furniture', '../Contents/Jpg/sofa.png'),
('TOEIC', 'Từ vựng TOEIC', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `sex` varchar(3) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `avt` varchar(255) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  `chapter1` tinyint(4) NOT NULL,
  `chapter2` tinyint(4) NOT NULL,
  `chapter3` tinyint(4) NOT NULL,
  `chapter4` tinyint(4) NOT NULL,
  `chapter5` tinyint(4) NOT NULL,
  `chapter6` tinyint(4) NOT NULL,
  `chapter7` tinyint(4) NOT NULL,
  `chapter8` tinyint(4) NOT NULL,
  `chapter9` tinyint(4) NOT NULL,
  `chapter10` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `fullname`, `phone`, `sex`, `date`, `avt`, `role`, `chapter1`, `chapter2`, `chapter3`, `chapter4`, `chapter5`, `chapter6`, `chapter7`, `chapter8`, `chapter9`, `chapter10`) VALUES
(1, 'Duong2908', 'Kii29082004', 'nguyenthaiduong29082004@gmail.com', 'Nguyễn Thái Dương', '0971613452', 'Nam', '2004-08-29', '../Contents/Jpg/bird.png', 'admin', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'emyeutruongem', 'hochoidi123', 'Dundehuongne@gmail.com', NULL, NULL, 'Nữ', NULL, NULL, 'customer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'Muondingughe', '0123456baytamchin', 'aaaaaaaaa@gmail.com', NULL, NULL, 'Nữ', NULL, NULL, 'customer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'tralalelotralala', 'khocheu123', 'hoanglongvu1106@gmail.com', 'Vũ Hoàng Long', NULL, 'Nam', NULL, NULL, 'customer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'dun2908', 'Kii29082004@', 'nguyenthaiduong1111111111@gmail.com', NULL, NULL, NULL, NULL, NULL, 'customer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vocabulary`
--

CREATE TABLE `vocabulary` (
  `idvoca` int(3) NOT NULL,
  `voca` varchar(30) NOT NULL,
  `pronounce` varchar(30) NOT NULL,
  `trans` varchar(30) NOT NULL,
  `example` varchar(100) NOT NULL,
  `transExample` varchar(100) NOT NULL,
  `image_voca` varchar(255) DEFAULT NULL,
  `sounds` varchar(50) DEFAULT NULL,
  `exsounds` varchar(50) DEFAULT NULL,
  `idtopic` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vocabulary`
--

INSERT INTO `vocabulary` (`idvoca`, `voca`, `pronounce`, `trans`, `example`, `transExample`, `image_voca`, `sounds`, `exsounds`, `idtopic`) VALUES
(1, 'Rainbow (n)', '/ˈreɪn.bəʊ/', 'Cầu vồng', 'The prisms will cast rainbows on the walls.', 'Các lăng kính sẽ tạo ra cầu vồng trên tường.', '../Contents/Jpg/rainbow.png', '../Contents/Sounds/rainbow.mp3', '../Contents/Sounds/exrainbow.m4a', 'HTTN'),
(2, 'Spring (n)', '/sprɪŋ/', 'Mùa xuân', 'Many bulbs bloom in (the) spring.', 'Nhiều nụ hoa nở rộ vào mùa xuân.\r\n', '../Contents/Jpg/spring.jpg', '../Contents/Sounds/spring.mp3', '../Contents/Sounds/exspring.m4a', 'HTTN'),
(3, 'Summer (n)', '/ˈsʌm.ər/', 'Mùa hạ', 'Every summer, thousands of people flock to their hometowns.\n', 'Mỗi mùa hè, hàng ngàn người đổ xô về quê.\r\n', '../Contents/Jpg/summer.jpg', '../Contents/Sounds/summer.mp3', '../Contents/Sounds/exsummer.m4a', 'HTTN'),
(4, 'Autumn (n)', '/ˈɔː.təm/', 'Mùa thu', 'In autumn, I have to sweep the yard every day because the leaves fall a lot.\n', 'Vào mùa thu, tôi phải quét sân mỗi ngày vì lá rụng rất nhiều.\r\n', '../Contents/Jpg/autumn.jpg', '../Contents/Sounds/autumn.mp3', '../Contents/Sounds/exautumn.m4a', 'HTTN'),
(5, 'Winter (n)', '/ˈwɪn.tər/', 'Mùa đông', 'I love winter because I can play snowballs with my friends.\r\n', 'Tôi thích mùa đông vì tôi có thể chơi ném tuyết với bạn bè.\r\n', '../Contents/Jpg/winter.png', '../Contents/Sounds/winter.mp3', '../Contents/Sounds/exwinter.m4a', 'HTTN'),
(6, 'Earthquake (n)', '/ˈɜːθ.kweɪk/', 'Động đất', 'In 1906 an earthquake destroyed much of San Francisco.\r\n', 'Năm 1906, một trận động đất đã phá hủy phần lớn San Francisco.\r\n', '../Contents/Jpg/earthquake.jpg', '../Contents/Sounds/earthquake.mp3', '../Contents/Sounds/exearthquake.m4a', 'HTTN'),
(7, 'Volcano (n)', '/vɒlˈkeɪ.nəʊ/', 'Núi lửa', 'Lava from the volcano was flowing down the hillside.\r\n', 'Dòng dung nham từ núi lửa chảy xuống sườn đồi.\r\n', '../Contents/Jpg/volcano.jpg', '../Contents/Sounds/volcano.mp3', '../Contents/Sounds/exvolcano.m4a', 'HTTN'),
(8, 'Tsunami (n)', '/tsuːˈnɑː.mi/', 'Sóng thần', 'She left the area after she lost her house and her family in the tsunami.\r\n', 'Cô ấy đã rời khỏi khu vực này sau khi mất nhà cửa và gia đình trong trận sóng thần.\r\n', '../Contents/Jpg/tsunami.jpg', '../Contents/Sounds/tsunami.mp3', '../Contents/Sounds/extsunami.m4a', 'HTTN'),
(9, 'Rain (n)', '/reɪn/', 'Mưa', 'The sudden rain made us run for shelter.', 'Cơn mưa bất chợt khiến chúng tôi phải chạy tìm chỗ trú ẩn.', '../Contents/Jpg/rain.jpg', '../Contents/Sounds/rain.mp3', '../Contents/Sounds/exrain.m4a', 'HTTN'),
(10, 'Thunder (n)', '/ˈθʌndər/', 'Sấm', 'The loud thunder followed closely after the lightning.', 'Tiếng sấm lớn theo sát ngay sau tia sét.', '../Contents/Jpg/thunder.jpg', '../Contents/Sounds/thunder.mp3', '../Contents/Sounds/exthunder.m4a', 'HTTN'),
(11, 'Cat (n)', '/kæt/', 'Con mèo', 'My cat loves to nap in the sunniest spot in the house.', 'Con mèo của tôi thích ngủ trưa ở nơi nhiều nắng nhất trong nhà.', '../Contents/Jpg/cat.png', '../Contents/Sounds/cat.mp3', '../Contents/Sounds/excat.m4a', 'ANIMA'),
(12, 'Dog (n)', '/dɒɡ/', 'Con chó', 'The dog barked loudly at the mailman.', 'Con chó sủa lớn tiếng vào người đưa thư.', '../Contents/Jpg/dog.png', '../Contents/Sounds/dog.mp3', '../Contents/Sounds/exdog.m4a', 'ANIMA'),
(13, 'Elephant (n)', '/ˈɛlɪfənt/', 'Con voi', 'We saw a magnificent elephant at the zoo.', 'Chúng tôi đã nhìn thấy một con voi lộng lẫy ở sở thú.', '../Contents/Jpg/elephant.png', '../Contents/Sounds/elephant.mp3', '../Contents/Sounds/exelephant.m4a', 'ANIMA'),
(14, 'Lion (n)', '/ˈlaɪən/', 'Con sư tử', 'The lion roared, shaking the jungle with its sound.', 'Con sư tử gầm lên, làm rung chuyển cả khu rừng bằng tiếng gầm của nó.', '../Contents/Jpg/lion.png', '../Contents/Sounds/lion.mp3', '../Contents/Sounds/exlion.m4a', 'ANIMA'),
(15, 'Tiger (n)', '/ˈtaɪɡər/', 'Con hổ', 'Tigers are known for their distinctive black stripes.', 'Hổ nổi tiếng với những vằn đen đặc trưng của chúng.', '../Contents/Jpg/tiger.png', '../Contents/Sounds/tiger.mp3', '../Contents/Sounds/extiger.m4a', 'ANIMA'),
(16, 'Monkey (n)', '/ˈmʌŋki/', 'Con khỉ', 'The monkeys swung through the trees with ease.', 'Những con khỉ đu đưa qua các cành cây một cách dễ dàng.', '../Contents/Jpg/monkey.png', '../Contents/Sounds/monkey.mp3', '../Contents/Sounds/exmonkey.m4a', 'ANIMA'),
(17, 'Fish (n)', '/fɪʃ/', 'Con cá', 'Many colorful fish swim in the coral reef.', 'Nhiều loài cá đầy màu sắc bơi lội trong rạn san hô.', '../Contents/Jpg/fish.png', '../Contents/Sounds/fish.mp3', '../Contents/Sounds/exfish.m4a', 'ANIMA'),
(18, 'Bird (n)', '/bɜːrd/', 'Con chim', 'A small bird built its nest in the tree outside my window.', 'Một con chim nhỏ đã làm tổ trên cây bên ngoài cửa sổ của tôi.', '../Contents/Jpg/bird.png', '../Contents/Sounds/bird.mp3', '../Contents/Sounds/exbird.m4a', 'ANIMA'),
(19, 'Bear (n)', '/bɛər/', 'Con gấu', 'We saw a brown bear foraging for berries in the forest.', 'Chúng tôi đã nhìn thấy một con gấu nâu đang tìm quả mọng trong rừng.', '../Contents/Jpg/bear.png', '../Contents/Sounds/bear.mp3', '../Contents/Sounds/exbear.m4a', 'ANIMA'),
(20, 'Rabbit (n)', '/ˈræbɪt/', 'Con thỏ', 'The rabbit hopped across the lawn and disappeared into the bushes.', 'Con thỏ nhảy qua bãi cỏ và biến mất vào bụi cây.', '../Contents/Jpg/rabbit.png', '../Contents/Sounds/rabbit.mp3', '../Contents/Sounds/exrabbit.m4a', 'ANIMA'),
(21, 'Chair (n)', '/tʃeər/', 'Ghế', 'Please take a seat on the chair.', 'Xin mời ngồi vào ghế.', '../Contents/Jpg/chair.png', '../Contents/Sounds/chair.mp3', '../Contents/Sounds/exchair.m4a', 'NTHAT'),
(22, 'Table (n)', '/ˈteɪbl/', 'Bàn', 'We gathered around the dining table for dinner.', 'Chúng tôi quây quần quanh bàn ăn tối.', '../Contents/Jpg/table.png', '../Contents/Sounds/table.mp3', '../Contents/Sounds/extable.m4a', 'NTHAT'),
(23, 'Bed (n)', '/bɛd/', 'Giường', 'I love to read in bed before sleeping.', 'Tôi thích đọc sách trên giường trước khi ngủ.', '../Contents/Jpg/bed.png', '../Contents/Sounds/bed.mp3', '../Contents/Sounds/exbed.m4a', 'NTHAT'),
(24, 'Sofa (n)', '/ˈsəʊfə/', 'Ghế sofa', 'The living room has a comfortable sofa and two armchairs.', 'Phòng khách có một chiếc ghế sofa thoải mái và hai chiếc ghế bành.', '../Contents/Jpg/sofa.png', '../Contents/Sounds/sofa.mp3', '../Contents/Sounds/exsofa.m4a', 'NTHAT'),
(25, 'Wardrobe (n)', '/ˈwɔːrdrəʊb/', 'Tủ quần áo', 'She neatly arranged her clothes in the wardrobe.', 'Cô ấy sắp xếp quần áo gọn gàng vào tủ quần áo.', '../Contents/Jpg/wardrobe.png', '../Contents/Sounds/wardrobe.mp3', '../Contents/Sounds/exwardrobe.m4a', 'NTHAT'),
(26, 'Shelf (n)', '/ʃɛlf/', 'Kệ', 'He placed his favorite books on the wooden shelf.', 'Anh ấy đặt những cuốn sách yêu thích của mình lên kệ gỗ.', '../Contents/Jpg/shelf.png', '../Contents/Sounds/shelf.mp3', '../Contents/Sounds/exshelf.m4a', 'NTHAT'),
(27, 'Lamp (n)', '/læmp/', 'Đèn', 'The desk lamp provides good light for studying.', 'Chiếc đèn bàn cung cấp ánh sáng tốt để học bài.', '../Contents/Jpg/lamp.png', '../Contents/Sounds/lamp.mp3', '../Contents/Sounds/exlamp.m4a', 'NTHAT'),
(28, 'Desk (n)', '/dɛsk/', 'Bàn làm việc', 'I spend most of my workday sitting at my desk.', 'Tôi dành phần lớn thời gian làm việc trong ngày để ngồi ở bàn làm việc.', '../Contents/Jpg/desk.png', '../Contents/Sounds/desk.mp3', '../Contents/Sounds/exdesk.m4a', 'NTHAT'),
(29, 'Mirror (n)', '/ˈmɪrər/', 'Gương', 'She checked her appearance in the mirror before leaving.', 'Cô ấy kiểm tra ngoại hình của mình trong gương trước khi đi.', '../Contents/Jpg/mirror.png', '../Contents/Sounds/mirror.mp3', '../Contents/Sounds/exmirror.m4a', 'NTHAT'),
(30, 'Curtain (n)', '/ˈkɜːrtn/', 'Rèm cửa', 'The sunlight streamed through the open curtains.', 'Ánh nắng mặt trời chiếu qua những tấm rèm mở.', '../Contents/Jpg/curtain.png', '../Contents/Sounds/curtain.mp3', '../Contents/Sounds/excurtain.m4a', 'NTHAT'),
(31, 'Access (n)', '/ˈæk.ses/', 'Truy cập', 'Students need access to computers to complete their assignments.', 'Học sinh cần truy cập máy tính để hoàn thành bài tập.', NULL, NULL, NULL, 'TOEIC'),
(32, 'Accommodate (v)', '/əˈkɒm.ə.deɪt/', 'Chứa, đáp ứng', 'The hotel can accommodate up to 500 guests.', 'Khách sạn có thể chứa tới 500 khách.', NULL, NULL, NULL, 'TOEIC'),
(33, 'Accomplish (v)', '/əˈkʌm.plɪʃ/', 'Hoàn thành, đạt được', 'She accomplished her goal of learning a new language.', 'Cô ấy đã hoàn thành mục tiêu học một ngôn ngữ mới.', NULL, NULL, NULL, 'TOEIC'),
(34, 'Accountant (n)', '/əˈkaʊn.tənt/', 'Kế toán viên', 'My accountant helps me with my taxes every year.', 'Kế toán của tôi giúp tôi làm thuế mỗi năm.', NULL, NULL, NULL, 'TOEIC'),
(35, 'Acquire (v)', '/əˈkwaɪər/', 'Giành được, đạt được', 'The company acquired a smaller firm last month.', 'Công ty đã mua lại một công ty nhỏ hơn vào tháng trước.', NULL, NULL, NULL, 'TOEIC'),
(36, 'Address (v)', '/əˈdres/', 'Giải quyết, đề cập', 'We need to address the issue of customer complaints.', 'Chúng ta cần giải quyết vấn đề khiếu nại của khách hàng.', NULL, NULL, NULL, 'TOEIC'),
(37, 'Adjust (v)', '/əˈdʒʌst/', 'Điều chỉnh', 'Please adjust your seatbelt before the flight.', 'Vui lòng điều chỉnh dây an toàn của bạn trước chuyến bay.', NULL, NULL, NULL, 'TOEIC'),
(38, 'Administration (n)', '/ədˌmɪn.ɪˈstreɪ.ʃən/', 'Sự quản lý, hành chính', 'The new administration will focus on economic reform.', 'Chính quyền mới sẽ tập trung vào cải cách kinh tế.', NULL, NULL, NULL, 'TOEIC'),
(39, 'Advertise (v)', '/ˈæd.və.taɪz/', 'Quảng cáo', 'We need to advertise our new product more effectively.', 'Chúng ta cần quảng cáo sản phẩm mới của mình hiệu quả hơn.', NULL, NULL, NULL, 'TOEIC'),
(40, 'Allocate (v)', '/ˈæl.ə.keɪt/', 'Phân bổ', 'The budget committee will allocate funds to various departments.', 'Ủy ban ngân sách sẽ phân bổ quỹ cho các phòng ban khác nhau.', NULL, NULL, NULL, 'TOEIC'),
(41, 'Analyst (n)', '/ˈæn.ə.lɪst/', 'Nhà phân tích', 'A financial analyst provides insights into market trends.', 'Một nhà phân tích tài chính cung cấp thông tin chi tiết về xu hướng thị trường.', NULL, NULL, NULL, 'TOEIC'),
(42, 'Approve (v)', '/əˈpruːv/', 'Phê duyệt', 'The board approved the new marketing strategy.', 'Ban giám đốc đã phê duyệt chiến lược tiếp thị mới.', NULL, NULL, NULL, 'TOEIC'),
(43, 'Assess (v)', '/əˈses/', 'Đánh giá', 'We need to assess the risks before making a decision.', 'Chúng ta cần đánh giá rủi ro trước khi đưa ra quyết định.', NULL, NULL, NULL, 'TOEIC'),
(44, 'Assign (v)', '/əˈsaɪn/', 'Giao nhiệm vụ', 'The manager assigned the task to a new employee.', 'Người quản lý đã giao nhiệm vụ cho một nhân viên mới.', NULL, NULL, NULL, 'TOEIC'),
(45, 'Assistant (n)', '/əˈsɪs.tənt/', 'Trợ lý', 'My assistant helps me manage my schedule.', 'Trợ lý của tôi giúp tôi quản lý lịch trình.', NULL, NULL, NULL, 'TOEIC'),
(46, 'Assume (v)', '/əˈsjuːm/', 'Giả định, đảm đương', 'I assume you have completed the report.', 'Tôi cho rằng bạn đã hoàn thành báo cáo.', NULL, NULL, NULL, 'TOEIC'),
(47, 'Attend (v)', '/əˈtend/', 'Tham dự', 'She attended the conference last week.', 'Cô ấy đã tham dự hội nghị tuần trước.', NULL, NULL, NULL, 'TOEIC'),
(48, 'Audit (n/v)', '/ˈɔː.dɪt/', 'Kiểm toán', 'The company undergoes an annual audit.', 'Công ty trải qua một cuộc kiểm toán hàng năm.', NULL, NULL, NULL, 'TOEIC'),
(49, 'Authorize (v)', '/ˈɔː.θə.raɪz/', 'Ủy quyền, cho phép', 'Only authorized personnel can access the server room.', 'Chỉ những nhân viên được ủy quyền mới có thể truy cập phòng máy chủ.', NULL, NULL, NULL, 'TOEIC'),
(50, 'Available (adj)', '/əˈveɪ.lə.bəl/', 'Có sẵn', 'The product is now available in stores.', 'Sản phẩm hiện đã có sẵn trong các cửa hàng.', NULL, NULL, NULL, 'TOEIC'),
(51, 'Benefit (n/v)', '/ˈben.ɪ.fɪt/', 'Lợi ích; hưởng lợi', 'The new policy will benefit all employees.', 'Chính sách mới sẽ mang lại lợi ích cho tất cả nhân viên.', NULL, NULL, NULL, 'TOEIC'),
(52, 'Budget (n/v)', '/ˈbʌdʒ.ɪt/', 'Ngân sách; lên ngân sách', 'We need to stick to the budget this quarter.', 'Chúng ta cần tuân thủ ngân sách quý này.', NULL, NULL, NULL, 'TOEIC'),
(53, 'Capacity (n)', '/kəˈpæs.ə.ti/', 'Sức chứa, năng lực', 'The factory is operating at full capacity.', 'Nhà máy đang hoạt động hết công suất.', NULL, NULL, NULL, 'TOEIC'),
(54, 'Candidate (n)', '/ˈkæn.dɪ.dət/', 'Ứng cử viên', 'We are looking for a strong candidate for the sales position.', 'Chúng tôi đang tìm kiếm một ứng cử viên mạnh cho vị trí bán hàng.', NULL, NULL, NULL, 'TOEIC'),
(55, 'Client (n)', '/ˈklaɪ.ənt/', 'Khách hàng', 'Our clients are satisfied with our services.', 'Khách hàng của chúng tôi hài lòng với dịch vụ của chúng tôi.', NULL, NULL, NULL, 'TOEIC'),
(56, 'Collaborate (v)', '/kəˈlæb.ə.reɪt/', 'Hợp tác', 'They collaborated on the project to achieve better results.', 'Họ đã hợp tác trong dự án để đạt được kết quả tốt hơn.', NULL, NULL, NULL, 'TOEIC'),
(57, 'Communicate (v)', '/kəˈmjuː.nɪ.keɪt/', 'Giao tiếp', 'Effective communication is key to teamwork.', 'Giao tiếp hiệu quả là chìa khóa để làm việc nhóm.', NULL, NULL, NULL, 'TOEIC'),
(58, 'Company (n)', '/ˈkʌm.pə.ni/', 'Công ty', 'She works for a multinational company.', 'Cô ấy làm việc cho một công ty đa quốc gia.', NULL, NULL, NULL, 'TOEIC'),
(59, 'Complaint (n)', '/kəmˈpleɪnt/', 'Khiếu nại', 'We received a complaint about the poor service.', 'Chúng tôi nhận được một khiếu nại về dịch vụ kém.', NULL, NULL, NULL, 'TOEIC'),
(60, 'Comply (v)', '/kəmˈplaɪ/', 'Tuân thủ', 'All employees must comply with company policies.', 'Tất cả nhân viên phải tuân thủ các chính sách của công ty.', NULL, NULL, NULL, 'TOEIC'),
(61, 'Confirm (v)', '/kənˈfɜːm/', 'Xác nhận', 'Please confirm your reservation by email.', 'Vui lòng xác nhận đặt chỗ của bạn qua email.', NULL, NULL, NULL, 'TOEIC'),
(62, 'Consultant (n)', '/kənˈsʌl.tənt/', 'Cố vấn', 'We hired a consultant to improve our efficiency.', 'Chúng tôi đã thuê một cố vấn để cải thiện hiệu quả của chúng tôi.', NULL, NULL, NULL, 'TOEIC'),
(63, 'Consumer (n)', '/kənˈsjuː.mər/', 'Người tiêu dùng', 'Consumer demand for eco-friendly products is rising.', 'Nhu cầu của người tiêu dùng đối với các sản phẩm thân thiện với môi trường đang tăng lên.', NULL, NULL, NULL, 'TOEIC'),
(64, 'Contract (n/v)', '/ˈkɒn.trækt/', 'Hợp đồng; ký hợp đồng', 'He signed a new contract with the company.', 'Anh ấy đã ký một hợp đồng mới với công ty.', NULL, NULL, NULL, 'TOEIC'),
(65, 'Coordinate (v)', '/kəʊˈɔː.dɪ.neɪt/', 'Phối hợp', 'We need to coordinate our efforts to finish the project on time.', 'Chúng ta cần phối hợp nỗ lực để hoàn thành dự án đúng hạn.', NULL, NULL, NULL, 'TOEIC'),
(66, 'Corporate (adj)', '/ˈkɔː.pər.ət/', 'Thuộc về doanh nghiệp', 'The corporate headquarters is located downtown.', 'Trụ sở công ty nằm ở trung tâm thành phố.', NULL, NULL, NULL, 'TOEIC'),
(67, 'Customer (n)', '/ˈkʌs.tə.mər/', 'Khách hàng', 'Customer satisfaction is our top priority.', 'Sự hài lòng của khách hàng là ưu tiên hàng đầu của chúng tôi.', NULL, NULL, NULL, 'TOEIC'),
(68, 'Deadline (n)', '/ˈded.laɪn/', 'Hạn chót', 'The deadline for the report is Friday.', 'Hạn chót nộp báo cáo là thứ Sáu.', NULL, NULL, NULL, 'TOEIC'),
(69, 'Delegate (v)', '/ˈdel.ɪ.ɡeɪt/', 'Ủy quyền, giao phó', 'She decided to delegate some tasks to her team members.', 'Cô ấy quyết định giao phó một số nhiệm vụ cho các thành viên trong nhóm của mình.', NULL, NULL, NULL, 'TOEIC'),
(70, 'Deliver (v)', '/dɪˈlɪv.ər/', 'Giao hàng', 'The package will be delivered tomorrow morning.', 'Gói hàng sẽ được giao vào sáng mai.', NULL, NULL, NULL, 'TOEIC'),
(71, 'Department (n)', '/dɪˈpɑːt.mənt/', 'Phòng ban', 'He works in the marketing department.', 'Anh ấy làm việc ở phòng marketing.', NULL, NULL, NULL, 'TOEIC'),
(72, 'Develop (v)', '/dɪˈvel.əp/', 'Phát triển', 'The company is developing new software.', 'Công ty đang phát triển phần mềm mới.', NULL, NULL, NULL, 'TOEIC'),
(73, 'Director (n)', '/daɪˈrek.tər/', 'Giám đốc', 'The director is responsible for the overall strategy.', 'Giám đốc chịu trách nhiệm về chiến lược tổng thể.', NULL, NULL, NULL, 'TOEIC'),
(74, 'Discount (n/v)', '/ˈdɪs.kaʊnt/', 'Chiết khấu; giảm giá', 'We offer a 10% discount for new customers.', 'Chúng tôi giảm giá 10% cho khách hàng mới.', NULL, NULL, NULL, 'TOEIC'),
(75, 'Distribute (v)', '/dɪˈstrɪb.juːt/', 'Phân phối', 'The company distributes its products worldwide.', 'Công ty phân phối sản phẩm của mình trên toàn thế giới.', NULL, NULL, NULL, 'TOEIC'),
(76, 'Efficient (adj)', '/ɪˈfɪʃ.ənt/', 'Hiệu quả', 'We need to find more efficient ways to do our work.', 'Chúng ta cần tìm những cách hiệu quả hơn để làm việc.', NULL, NULL, NULL, 'TOEIC'),
(77, 'Employee (n)', '/ɪmˈplɔɪ.iː/', 'Nhân viên', 'The company has over 200 employees.', 'Công ty có hơn 200 nhân viên.', NULL, NULL, NULL, 'TOEIC'),
(78, 'Estimate (n/v)', '/ˈes.tɪ.meɪt/', 'Ước tính', 'Can you give me an estimate for the repair cost?', 'Bạn có thể cho tôi một ước tính chi phí sửa chữa được không?', NULL, NULL, NULL, 'TOEIC'),
(79, 'Evaluate (v)', '/ɪˈvæl.ju.eɪt/', 'Đánh giá', 'We need to evaluate the performance of the team.', 'Chúng ta cần đánh giá hiệu suất của nhóm.', NULL, NULL, NULL, 'TOEIC'),
(80, 'Executive (n)', '/ɪɡˈzek.jə.tɪv/', 'Giám đốc điều hành', 'She is a senior executive in the finance department.', 'Cô ấy là một giám đốc điều hành cấp cao trong phòng tài chính.', NULL, NULL, NULL, 'TOEIC'),
(81, 'Expand (v)', '/ɪkˈspænd/', 'Mở rộng', 'The company plans to expand its operations overseas.', 'Công ty có kế hoạch mở rộng hoạt động ra nước ngoài.', NULL, NULL, NULL, 'TOEIC'),
(82, 'Expense (n)', '/ɪkˈspens/', 'Chi phí', 'Keep track of all your business expenses.', 'Ghi lại tất cả các chi phí kinh doanh của bạn.', NULL, NULL, NULL, 'TOEIC'),
(83, 'Facility (n)', '/fəˈsɪl.ə.ti/', 'Cơ sở vật chất', 'The new sports facility is impressive.', 'Cơ sở thể thao mới rất ấn tượng.', NULL, NULL, NULL, 'TOEIC'),
(84, 'Feedback (n)', '/ˈfiːd.bæk/', 'Phản hồi', 'We welcome customer feedback to improve our services.', 'Chúng tôi hoan nghênh phản hồi của khách hàng để cải thiện dịch vụ của mình.', NULL, NULL, NULL, 'TOEIC'),
(85, 'Finance (n/v)', '/faɪˈnæns/', 'Tài chính; cấp vốn', 'He works in corporate finance.', 'Anh ấy làm việc trong lĩnh vực tài chính doanh nghiệp.', NULL, NULL, NULL, 'TOEIC'),
(86, 'Forecast (n/v)', '/ˈfɔː.kɑːst/', 'Dự báo', 'The sales forecast for next quarter looks promising.', 'Dự báo doanh số quý tới trông có vẻ đầy hứa hẹn.', NULL, NULL, NULL, 'TOEIC'),
(87, 'Generate (v)', '/ˈdʒen.ə.reɪt/', 'Tạo ra', 'The marketing campaign generated a lot of interest.', 'Chiến dịch tiếp thị đã tạo ra rất nhiều sự quan tâm.', NULL, NULL, NULL, 'TOEIC'),
(88, 'Headquarters (n)', '/ˌhedˈkwɔː.təz/', 'Trụ sở chính', 'The company’s headquarters is in London.', 'Trụ sở chính của công ty ở London.', NULL, NULL, NULL, 'TOEIC'),
(89, 'Implement (v)', '/ˈɪm.plɪ.ment/', 'Thực hiện, thi hành', 'We need to implement the new system by next month.', 'Chúng ta cần triển khai hệ thống mới vào tháng tới.', NULL, NULL, NULL, 'TOEIC'),
(90, 'Improve (v)', '/ɪmˈpruːv/', 'Cải thiện', 'We are constantly looking for ways to improve our products.', 'Chúng tôi không ngừng tìm cách cải thiện sản phẩm của mình.', NULL, NULL, NULL, 'TOEIC'),
(91, 'Inquire (v)', '/ɪnˈkwaɪər/', 'Hỏi, yêu cầu thông tin', 'Customers often inquire about product specifications.', 'Khách hàng thường hỏi về thông số kỹ thuật sản phẩm.', NULL, NULL, NULL, 'TOEIC'),
(92, 'Install (v)', '/ɪnˈstɔːl/', 'Cài đặt', 'The technician will install the new software tomorrow.', 'Kỹ thuật viên sẽ cài đặt phần mềm mới vào ngày mai.', NULL, NULL, NULL, 'TOEIC'),
(93, 'Insurance (n)', '/ɪnˈʃʊə.rəns/', 'Bảo hiểm', 'You should get travel insurance before your trip.', 'Bạn nên mua bảo hiểm du lịch trước chuyến đi của mình.', NULL, NULL, NULL, 'TOEIC'),
(94, 'Invest (v)', '/ɪnˈvest/', 'Đầu tư', 'It’s wise to invest in your education.', 'Đầu tư vào giáo dục của bạn là khôn ngoan.', NULL, NULL, NULL, 'TOEIC'),
(95, 'Invoice (n/v)', '/ˈɪn.vɔɪs/', 'Hóa đơn; lập hóa đơn', 'Please send me the invoice for the services.', 'Vui lòng gửi cho tôi hóa đơn dịch vụ.', NULL, NULL, NULL, 'TOEIC'),
(96, 'Issue (n/v)', '/ˈɪʃ.uː/', 'Vấn đề; phát hành', 'We need to discuss this issue at the meeting.', 'Chúng ta cần thảo luận vấn đề này tại cuộc họp.', NULL, NULL, NULL, 'TOEIC'),
(97, 'Launch (v/n)', '/lɔːntʃ/', 'Ra mắt; sự ra mắt', 'The company will launch a new product next month.', 'Công ty sẽ ra mắt sản phẩm mới vào tháng tới.', NULL, NULL, NULL, 'TOEIC'),
(98, 'Maintain (v)', '/meɪnˈteɪn/', 'Duy trì', 'It’s important to maintain good customer relations.', 'Điều quan trọng là duy trì mối quan hệ tốt với khách hàng.', NULL, NULL, NULL, 'TOEIC'),
(99, 'Management (n)', '/ˈmæn.ɪdʒ.mənt/', 'Quản lý', 'The new management team is highly experienced.', 'Đội ngũ quản lý mới có kinh nghiệm cao.', NULL, NULL, NULL, 'TOEIC'),
(100, 'Manufacture (v)', '/ˌmæn.jəˈfæk.tʃər/', 'Sản xuất', 'This factory manufactures car parts.', 'Nhà máy này sản xuất các bộ phận ô tô.', NULL, NULL, NULL, 'TOEIC'),
(101, 'Marketing (n)', '/ˈmɑː.kɪ.tɪŋ/', 'Tiếp thị', 'Our marketing team is developing a new campaign.', 'Đội ngũ tiếp thị của chúng tôi đang phát triển một chiến dịch mới.', NULL, NULL, NULL, 'TOEIC'),
(102, 'Merchandise (n)', '/ˈmɜː.tʃən.daɪs/', 'Hàng hóa', 'The store offers a wide range of merchandise.', 'Cửa hàng cung cấp nhiều loại hàng hóa.', NULL, NULL, NULL, 'TOEIC'),
(103, 'Negotiate (v)', '/nɪˈɡəʊ.ʃi.eɪt/', 'Đàm phán', 'They are negotiating the terms of the new agreement.', 'Họ đang đàm phán các điều khoản của thỏa thuận mới.', NULL, NULL, NULL, 'TOEIC'),
(104, 'Obtain (v)', '/əbˈteɪn/', 'Thu được, đạt được', 'You need to obtain a permit before starting construction.', 'Bạn cần có giấy phép trước khi bắt đầu xây dựng.', NULL, NULL, NULL, 'TOEIC'),
(105, 'Operate (v)', '/ˈɒp.ər.eɪt/', 'Vận hành', 'The machines operate 24 hours a day.', 'Các máy móc hoạt động 24 giờ một ngày.', NULL, NULL, NULL, 'TOEIC'),
(106, 'Optimize (v)', '/ˈɒp.tɪ.maɪz/', 'Tối ưu hóa', 'We need to optimize our website for search engines.', 'Chúng ta cần tối ưu hóa trang web của mình cho các công cụ tìm kiếm.', NULL, NULL, NULL, 'TOEIC'),
(107, 'Oversee (v)', '/ˌəʊ.vəˈsiː/', 'Giám sát', 'She oversees the entire production process.', 'Cô ấy giám sát toàn bộ quá trình sản xuất.', NULL, NULL, NULL, 'TOEIC'),
(108, 'Package (n/v)', '/ˈpæk.ɪdʒ/', 'Gói hàng; đóng gói', 'The product comes in a new package.', 'Sản phẩm đi kèm trong một gói mới.', NULL, NULL, NULL, 'TOEIC'),
(109, 'Participate (v)', '/pɑːˈtɪs.ɪ.peɪt/', 'Tham gia', 'All employees are encouraged to participate in the training.', 'Tất cả nhân viên được khuyến khích tham gia khóa đào tạo.', NULL, NULL, NULL, 'TOEIC'),
(110, 'Perform (v)', '/pəˈfɔːm/', 'Thực hiện, biểu diễn', 'The machine performs various functions.', 'Máy thực hiện nhiều chức năng khác nhau.', NULL, NULL, NULL, 'TOEIC'),
(111, 'Personnel (n)', '/ˌpɜː.sənˈel/', 'Nhân sự', 'The personnel department handles all hiring.', 'Phòng nhân sự xử lý tất cả việc tuyển dụng.', NULL, NULL, NULL, 'TOEIC'),
(112, 'Policy (n)', '/ˈpɒl.ə.si/', 'Chính sách', 'The company has a strict no-smoking policy.', 'Công ty có chính sách cấm hút thuốc nghiêm ngặt.', NULL, NULL, NULL, 'TOEIC'),
(113, 'Portfolio (n)', '/pɔːtˈfəʊ.li.əʊ/', 'Danh mục đầu tư', 'His investment portfolio is very diverse.', 'Danh mục đầu tư của anh ấy rất đa dạng.', NULL, NULL, NULL, 'TOEIC'),
(114, 'Potential (n/adj)', '/pəˈten.ʃəl/', 'Tiềm năng', 'We see great potential in this new market.', 'Chúng tôi thấy tiềm năng lớn ở thị trường mới này.', NULL, NULL, NULL, 'TOEIC'),
(115, 'Predict (v)', '/prɪˈdɪkt/', 'Dự đoán', 'It’s hard to predict future market trends.', 'Rất khó để dự đoán xu hướng thị trường trong tương lai.', NULL, NULL, NULL, 'TOEIC'),
(116, 'Prefer (v)', '/prɪˈfɜːr/', 'Ưu tiên, thích hơn', 'Most customers prefer to pay by credit card.', 'Hầu hết khách hàng thích thanh toán bằng thẻ tín dụng hơn.', NULL, NULL, NULL, 'TOEIC'),
(117, 'Prepare (v)', '/prɪˈpeər/', 'Chuẩn bị', 'We need to prepare a presentation for the meeting.', 'Chúng ta cần chuẩn bị một bài thuyết trình cho cuộc họp.', NULL, NULL, NULL, 'TOEIC'),
(118, 'Present (v)', '/prɪˈzent/', 'Trình bày', 'She will present the findings at the conference.', 'Cô ấy sẽ trình bày các phát hiện tại hội nghị.', NULL, NULL, NULL, 'TOEIC'),
(119, 'Procedure (n)', '/prəˈsiː.dʒər/', 'Thủ tục', 'Follow the safety procedures carefully.', 'Tuân thủ các thủ tục an toàn một cách cẩn thận.', NULL, NULL, NULL, 'TOEIC'),
(120, 'Process (n/v)', '/ˈprəʊ.ses/', 'Quy trình; xử lý', 'The new process will improve efficiency.', 'Quy trình mới sẽ cải thiện hiệu quả.', NULL, NULL, NULL, 'TOEIC'),
(121, 'Produce (v)', '/prəˈdjuːs/', 'Sản xuất', 'Our factory produces high-quality goods.', 'Nhà máy của chúng tôi sản xuất hàng hóa chất lượng cao.', NULL, NULL, NULL, 'TOEIC'),
(122, 'Profit (n)', '/ˈprɒf.ɪt/', 'Lợi nhuận', 'The company made a significant profit last quarter.', 'Công ty đã kiếm được lợi nhuận đáng kể vào quý trước.', NULL, NULL, NULL, 'TOEIC'),
(123, 'Promote (v)', '/prəˈməʊt/', 'Thúc đẩy, thăng chức', 'We need to promote our brand more aggressively.', 'Chúng ta cần quảng bá thương hiệu của mình một cách mạnh mẽ hơn.', NULL, NULL, NULL, 'TOEIC'),
(124, 'Purchase (n/v)', '/ˈpɜː.tʃəs/', 'Mua hàng; sự mua hàng', 'Customers can purchase products online.', 'Khách hàng có thể mua sản phẩm trực tuyến.', NULL, NULL, NULL, 'TOEIC'),
(125, 'Qualify (v)', '/ˈkwɒl.ɪ.faɪ/', 'Đủ điều kiện', 'He qualified for the job thanks to his experience.', 'Anh ấy đủ điều kiện cho công việc nhờ kinh nghiệm của mình.', NULL, NULL, NULL, 'TOEIC'),
(126, 'Quota (n)', '/ˈkwəʊ.tə/', 'Chỉ tiêu, hạn ngạch', 'The sales team failed to meet their quota this month.', 'Đội ngũ bán hàng đã không đạt được chỉ tiêu trong tháng này.', NULL, NULL, NULL, 'TOEIC'),
(127, 'Recommend (v)', '/ˌrek.əˈmend/', 'Đề xuất, giới thiệu', 'I highly recommend this restaurant.', 'Tôi rất khuyến khích nhà hàng này.', NULL, NULL, NULL, 'TOEIC'),
(128, 'Recruit (v)', '/rɪˈkruːt/', 'Tuyển dụng', 'The company is actively recruiting new talent.', 'Công ty đang tích cực tuyển dụng nhân tài mới.', NULL, NULL, NULL, 'TOEIC'),
(129, 'Refund (n/v)', '/ˈriː.fʌnd/', 'Hoàn tiền', 'You can get a full refund if you return the item within 30 days.', 'Bạn có thể được hoàn tiền đầy đủ nếu trả lại mặt hàng trong vòng 30 ngày.', NULL, NULL, NULL, 'TOEIC'),
(130, 'Register (v)', '/ˈredʒ.ɪ.stər/', 'Đăng ký', 'Please register for the event online.', 'Vui lòng đăng ký sự kiện trực tuyến.', NULL, NULL, NULL, 'TOEIC'),
(131, 'Reject (v)', '/rɪˈdʒekt/', 'Từ chối', 'The proposal was rejected due to budget constraints.', 'Đề xuất bị từ chối do hạn chế về ngân sách.', NULL, NULL, NULL, 'TOEIC'),
(132, 'Relocate (v)', '/ˌriː.ləʊˈkeɪt/', 'Di dời, chuyển địa điểm', 'The company decided to relocate its office to a larger building.', 'Công ty quyết định chuyển văn phòng đến một tòa nhà lớn hơn.', NULL, NULL, NULL, 'TOEIC'),
(133, 'Renew (v)', '/rɪˈnjuː/', 'Gia hạn', 'Don’t forget to renew your membership.', 'Đừng quên gia hạn tư cách thành viên của bạn.', NULL, NULL, NULL, 'TOEIC'),
(134, 'Repair (n/v)', '/rɪˈpeər/', 'Sửa chữa', 'The car needs a major repair.', 'Chiếc xe cần một sửa chữa lớn.', NULL, NULL, NULL, 'TOEIC'),
(135, 'Replacement (n)', '/rɪˈpleɪs.mənt/', 'Sự thay thế; người thay thế', 'We are looking for a replacement for the retired manager.', 'Chúng tôi đang tìm người thay thế cho người quản lý đã nghỉ hưu.', NULL, NULL, NULL, 'TOEIC'),
(136, 'Require (v)', '/rɪˈkwaɪər/', 'Yêu cầu', 'The job requires strong communication skills.', 'Công việc yêu cầu kỹ năng giao tiếp tốt.', NULL, NULL, NULL, 'TOEIC'),
(137, 'Reserve (v)', '/rɪˈzɜːv/', 'Đặt trước', 'I would like to reserve a table for two.', 'Tôi muốn đặt một bàn cho hai người.', NULL, NULL, NULL, 'TOEIC'),
(138, 'Resource (n)', '/rɪˈzɔːs/', 'Tài nguyên', 'Time is our most valuable resource.', 'Thời gian là tài nguyên quý giá nhất của chúng ta.', NULL, NULL, NULL, 'TOEIC'),
(139, 'Respond (v)', '/rɪˈspɒnd/', 'Phản hồi', 'Please respond to the email as soon as possible.', 'Vui lòng trả lời email càng sớm càng tốt.', NULL, NULL, NULL, 'TOEIC'),
(140, 'Revenue (n)', '/ˈrev.ɪ.nuː/', 'Doanh thu', 'The company’s revenue increased last quarter.', 'Doanh thu của công ty đã tăng vào quý trước.', NULL, NULL, NULL, 'TOEIC'),
(141, 'Review (n/v)', '/rɪˈvjuː/', 'Xem xét, đánh giá', 'We need to review the proposal before submitting it.', 'Chúng ta cần xem xét đề xuất trước khi nộp.', NULL, NULL, NULL, 'TOEIC'),
(142, 'Schedule (n/v)', '/ˈʃedʒ.uːl/', 'Lịch trình; lên lịch', 'My schedule is very busy next week.', 'Lịch trình của tôi rất bận vào tuần tới.', NULL, NULL, NULL, 'TOEIC'),
(143, 'Service (n)', '/ˈsɜː.vɪs/', 'Dịch vụ', 'Customer service is very important to us.', 'Dịch vụ khách hàng rất quan trọng đối với chúng tôi.', NULL, NULL, NULL, 'TOEIC'),
(144, 'Solution (n)', '/səˈluː.ʃən/', 'Giải pháp', 'We are looking for a creative solution to this problem.', 'Chúng tôi đang tìm kiếm một giải pháp sáng tạo cho vấn đề này.', NULL, NULL, NULL, 'TOEIC'),
(145, 'Submit (v)', '/səbˈmɪt/', 'Nộp, đệ trình', 'Please submit your application by Friday.', 'Vui lòng nộp đơn đăng ký của bạn trước thứ Sáu.', NULL, NULL, NULL, 'TOEIC'),
(146, 'Supply (n/v)', '/səˈplaɪ/', 'Cung cấp; nguồn cung', 'The demand for the product exceeds the supply.', 'Nhu cầu về sản phẩm vượt quá nguồn cung.', NULL, NULL, NULL, 'TOEIC'),
(147, 'Support (n/v)', '/səˈpɔːt/', 'Hỗ trợ', 'Our technical support team is available 24/7.', 'Đội ngũ hỗ trợ kỹ thuật của chúng tôi có sẵn 24/7.', NULL, NULL, NULL, 'TOEIC'),
(148, 'Survey (n/v)', '/ˈsɜː.veɪ/', 'Khảo sát; khảo sát', 'We conducted a survey to gather customer opinions.', 'Chúng tôi đã tiến hành một cuộc khảo sát để thu thập ý kiến khách hàng.', NULL, NULL, NULL, 'TOEIC'),
(149, 'Target (n/v)', '/ˈtɑː.ɡɪt/', 'Mục tiêu; nhắm mục tiêu', 'Our sales target for this quarter is ambitious.', 'Mục tiêu doanh số của chúng tôi cho quý này đầy tham vọng.', NULL, NULL, NULL, 'TOEIC'),
(150, 'Tax (n)', '/tæks/', 'Thuế', 'Income tax is deducted from your salary.', 'Thuế thu nhập được khấu trừ từ tiền lương của bạn.', NULL, NULL, NULL, 'TOEIC'),
(151, 'Terminal (n)', '/ˈtɜː.mɪ.nəl/', 'Ga (sân bay, bến xe); thiết bị', 'Our flight departs from Terminal 2.', 'Chuyến bay của chúng tôi khởi hành từ Ga số 2.', NULL, NULL, NULL, 'TOEIC'),
(152, 'Training (n)', '/ˈtreɪ.nɪŋ/', 'Đào tạo', 'New employees receive comprehensive training.', 'Nhân viên mới được đào tạo toàn diện.', NULL, NULL, NULL, 'TOEIC'),
(153, 'Transfer (v)', '/trænsˈfɜːr/', 'Chuyển', 'Please transfer the funds to my account.', 'Vui lòng chuyển tiền vào tài khoản của tôi.', NULL, NULL, NULL, 'TOEIC'),
(154, 'Undertake (v)', '/ˌʌn.dəˈteɪk/', 'Đảm nhận, thực hiện', 'He undertook the responsibility for the new project.', 'Anh ấy đảm nhận trách nhiệm cho dự án mới.', NULL, NULL, NULL, 'TOEIC'),
(155, 'Update (v/n)', '/ʌpˈdeɪt/', 'Cập nhật', 'We need to update our software regularly.', 'Chúng ta cần cập nhật phần mềm thường xuyên.', NULL, NULL, NULL, 'TOEIC'),
(156, 'Valid (adj)', '/ˈvæl.ɪd/', 'Hợp lệ', 'This offer is valid until the end of the month.', 'Ưu đãi này có giá trị đến cuối tháng.', NULL, NULL, NULL, 'TOEIC'),
(157, 'Vendor (n)', '/ˈven.dər/', 'Nhà cung cấp', 'We work with several trusted vendors.', 'Chúng tôi làm việc với một số nhà cung cấp đáng tin cậy.', NULL, NULL, NULL, 'TOEIC'),
(158, 'Verify (v)', '/ˈver.ɪ.faɪ/', 'Xác minh', 'Please verify your identity before proceeding.', 'Vui lòng xác minh danh tính của bạn trước khi tiếp tục.', NULL, NULL, NULL, 'TOEIC'),
(159, 'Warehouse (n)', '/ˈweər.haʊs/', 'Nhà kho', 'The goods are stored in the warehouse.', 'Hàng hóa được lưu trữ trong nhà kho.', NULL, NULL, NULL, 'TOEIC'),
(160, 'Warranty (n)', '/ˈwɒr.ən.ti/', 'Bảo hành', 'The product comes with a one-year warranty.', 'Sản phẩm đi kèm với bảo hành một năm.', NULL, NULL, NULL, 'TOEIC'),
(161, 'Yield (n/v)', '/jiːld/', 'Sản lượng, lợi nhuận; sinh lợi', 'The investment has a high yield.', 'Khoản đầu tư này có lợi suất cao.', NULL, NULL, NULL, 'TOEIC'),
(162, 'Acquisition (n)', '/ˌæk.wɪˈzɪʃ.ən/', 'Sự mua lại', 'The company announced a major acquisition last week.', 'Công ty đã công bố một thương vụ mua lại lớn vào tuần trước.', NULL, NULL, NULL, 'TOEIC'),
(163, 'Agenda (n)', '/əˈdʒen.də/', 'Chương trình nghị sự', 'The first item on the agenda is the budget proposal.', 'Mục đầu tiên trong chương trình nghị sự là đề xuất ngân sách.', NULL, NULL, NULL, 'TOEIC'),
(164, 'Appliance (n)', '/əˈplaɪ.əns/', 'Thiết bị gia dụng', 'We sell a wide range of kitchen appliances.', 'Chúng tôi bán nhiều loại thiết bị nhà bếp.', NULL, NULL, NULL, 'TOEIC'),
(165, 'Applicant (n)', '/ˈæp.lɪ.kənt/', 'Người nộp đơn', 'We received over 100 applicants for the position.', 'Chúng tôi đã nhận được hơn 100 đơn đăng ký cho vị trí này.', NULL, NULL, NULL, 'TOEIC'),
(166, 'Appointment (n)', '/əˈpɔɪnt.mənt/', 'Cuộc hẹn', 'I have an appointment with the dentist at 3 PM.', 'Tôi có một cuộc hẹn với nha sĩ lúc 3 giờ chiều.', NULL, NULL, NULL, 'TOEIC'),
(167, 'Asset (n)', '/ˈæs.et/', 'Tài sản', 'The company\'s main assets are its skilled employees.', 'Tài sản chính của công ty là những nhân viên lành nghề.', NULL, NULL, NULL, 'TOEIC'),
(168, 'Assumption (n)', '/əˈsʌmp.ʃən/', 'Giả định', 'Our forecast is based on the assumption that sales will increase.', 'Dự báo của chúng tôi dựa trên giả định rằng doanh số sẽ tăng.', NULL, NULL, NULL, 'TOEIC'),
(169, 'Attendance (n)', '/əˈten.dəns/', 'Sự tham dự', 'Attendance at the meeting is mandatory.', 'Việc tham dự cuộc họp là bắt buộc.', NULL, NULL, NULL, 'TOEIC'),
(170, 'Automate (v)', '/ˈɔː.tə.meɪt/', 'Tự động hóa', 'We plan to automate some of our production processes.', 'Chúng tôi dự định tự động hóa một số quy trình sản xuất của mình.', NULL, NULL, NULL, 'TOEIC'),
(171, 'Branch (n)', '/brɑːntʃ/', 'Chi nhánh', 'The bank has several branches in the city.', 'Ngân hàng có một số chi nhánh trong thành phố.', NULL, NULL, NULL, 'TOEIC'),
(172, 'Brief (adj/v)', '/briːf/', 'Ngắn gọn; tóm tắt', 'Please give me a brief overview of the project.', 'Vui lòng cho tôi một cái nhìn tổng quan ngắn gọn về dự án.', NULL, NULL, NULL, 'TOEIC'),
(173, 'Cancellation (n)', '/ˌkæn.səlˈeɪ.ʃən/', 'Sự hủy bỏ', 'There was a last-minute cancellation of the flight.', 'Có một sự hủy bỏ chuyến bay vào phút chót.', NULL, NULL, NULL, 'TOEIC'),
(174, 'Cease (v)', '/siːs/', 'Ngừng, chấm dứt', 'The company ceased operations last year.', 'Công ty đã ngừng hoạt động vào năm ngoái.', NULL, NULL, NULL, 'TOEIC'),
(175, 'Circular (n/adj)', '/ˈsɜː.kjə.lər/', 'Thông báo; tròn', 'A circular was sent to all staff regarding the new policy.', 'Một thông báo đã được gửi đến tất cả nhân viên về chính sách mới.', NULL, NULL, NULL, 'TOEIC'),
(176, 'Clientele (n)', '/ˌklaɪ.ənˈtel/', 'Tệp khách hàng', 'The restaurant has a wealthy clientele.', 'Nhà hàng có một tệp khách hàng giàu có.', NULL, NULL, NULL, 'TOEIC'),
(177, 'Commence (v)', '/kəˈmens/', 'Bắt đầu', 'The meeting will commence at 9 AM.', 'Cuộc họp sẽ bắt đầu lúc 9 giờ sáng.', NULL, NULL, NULL, 'TOEIC'),
(178, 'Compensation (n)', '/ˌkɒm.penˈseɪ.ʃən/', 'Bồi thường', 'Employees received compensation for their overtime work.', 'Nhân viên nhận được bồi thường cho công việc làm thêm giờ của họ.', NULL, NULL, NULL, 'TOEIC'),
(179, 'Competitor (n)', '/kəmˈpet.ɪ.tər/', 'Đối thủ cạnh tranh', 'Our main competitor is launching a similar product.', 'Đối thủ cạnh tranh chính của chúng tôi đang ra mắt một sản phẩm tương tự.', NULL, NULL, NULL, 'TOEIC'),
(180, 'Concerns (n)', '/kənˈsɜːnz/', 'Mối quan ngại', 'We have some concerns about the project timeline.', 'Chúng tôi có một số lo ngại về thời gian thực hiện dự án.', NULL, NULL, NULL, 'TOEIC'),
(181, 'Confidential (adj)', '/ˌkɒn.fɪˈden.ʃəl/', 'Bảo mật', 'All personal data must remain confidential.', 'Tất cả dữ liệu cá nhân phải được giữ bí mật.', NULL, NULL, NULL, 'TOEIC'),
(182, 'Consolidate (v)', '/kənˈsɒl.ɪ.deɪt/', 'Củng cố, hợp nhất', 'The company plans to consolidate its various departments.', 'Công ty có kế hoạch hợp nhất các phòng ban khác nhau của mình.', NULL, NULL, NULL, 'TOEIC'),
(183, 'Convention (n)', '/kənˈven.ʃən/', 'Hội nghị, quy ước', 'The annual sales convention will be held in July.', 'Hội nghị bán hàng thường niên sẽ được tổ chức vào tháng 7.', NULL, NULL, NULL, 'TOEIC'),
(184, 'Correspond (v)', '/ˌkɒr.ɪˈspɒnd/', 'Tương ứng, trao đổi thư từ', 'Your grades correspond to your effort.', 'Điểm số của bạn tương ứng với nỗ lực của bạn.', NULL, NULL, NULL, 'TOEIC'),
(185, 'Credentials (n)', '/krɪˈden.ʃəlz/', 'Giấy tờ, bằng cấp', 'Please bring your credentials to the interview.', 'Vui lòng mang theo bằng cấp của bạn đến buổi phỏng vấn.', NULL, NULL, NULL, 'TOEIC'),
(186, 'Cultivate (v)', '/ˈkʌl.tɪ.veɪt/', 'Trau dồi, nuôi dưỡng', 'It’s important to cultivate good relationships with clients.', 'Điều quan trọng là trau dồi mối quan hệ tốt với khách hàng.', NULL, NULL, NULL, 'TOEIC'),
(187, 'Curriculum (n)', '/kəˈrɪk.jə.ləm/', 'Chương trình học', 'The new curriculum focuses on practical skills.', 'Chương trình học mới tập trung vào các kỹ năng thực tế.', NULL, NULL, NULL, 'TOEIC'),
(188, 'Custom (n)', '/ˈkʌs.təm/', 'Phong tục, thói quen', 'It is a local custom to shake hands when greeting.', 'Đó là một phong tục địa phương khi bắt tay khi chào hỏi.', NULL, NULL, NULL, 'TOEIC'),
(189, 'Defective (adj)', '/dɪˈfek.tɪv/', 'Bị lỗi, có khuyết tật', 'The customer returned the defective product.', 'Khách hàng đã trả lại sản phẩm bị lỗi.', NULL, NULL, NULL, 'TOEIC'),
(190, 'Deliberate (adj)', '/dɪˈlɪb.ər.ət/', 'Cố ý, thận trọng', 'The decision was made after long, deliberate consideration.', 'Quyết định được đưa ra sau khi cân nhắc kỹ lưỡng, có chủ ý.', NULL, NULL, NULL, 'TOEIC'),
(191, 'Determine (v)', '/dɪˈtɜː.mɪn/', 'Xác định', 'We need to determine the cause of the problem.', 'Chúng ta cần xác định nguyên nhân của vấn đề.', NULL, NULL, NULL, 'TOEIC'),
(192, 'Dimensions (n)', '/daɪˈmen.ʃənz/', 'Kích thước', 'Please provide the dimensions of the room.', 'Vui lòng cung cấp kích thước của căn phòng.', NULL, NULL, NULL, 'TOEIC'),
(193, 'Dispatch (v/n)', '/dɪˈspætʃ/', 'Gửi đi, phái đi; sự gửi đi', 'The goods will be dispatched tomorrow.', 'Hàng hóa sẽ được gửi đi vào ngày mai.', NULL, NULL, NULL, 'TOEIC'),
(194, 'Draft (n/v)', '/drɑːft/', 'Bản nháp; soạn thảo', 'Please review the first draft of the report.', 'Vui lòng xem lại bản nháp đầu tiên của báo cáo.', NULL, NULL, NULL, 'TOEIC'),
(195, 'Eligibility (n)', '/ˌel.ɪ.dʒəˈbɪl.ə.ti/', 'Tính đủ điều kiện', 'Check your eligibility for the scholarship.', 'Kiểm tra tính đủ điều kiện của bạn cho học bổng.', NULL, NULL, NULL, 'TOEIC'),
(196, 'Enclose (v)', '/ɪnˈkləʊz/', 'Đính kèm, bao quanh', 'Please enclose a copy of your resume with the application.', 'Vui lòng đính kèm một bản sao sơ yếu lý lịch của bạn với đơn đăng ký.', NULL, NULL, NULL, 'TOEIC'),
(197, 'Enhance (v)', '/ɪnˈhɑːns/', 'Nâng cao, cải thiện', 'We aim to enhance customer experience.', 'Chúng tôi nhằm mục đích nâng cao trải nghiệm của khách hàng.', NULL, NULL, NULL, 'TOEIC'),
(198, 'Enroll (v)', '/ɪnˈrəʊl/', 'Đăng ký nhập học', 'Many students enroll in online courses.', 'Nhiều sinh viên đăng ký các khóa học trực tuyến.', NULL, NULL, NULL, 'TOEIC'),
(199, 'Estimate (n/v)', '/ˈes.tɪ.mət/', 'Ước tính', 'The architect provided an estimate for the construction.', 'Kiến trúc sư đã đưa ra ước tính cho việc xây dựng.', NULL, NULL, NULL, 'TOEIC'),
(200, 'Exhibit (n/v)', '/ɪɡˈzɪb.ɪt/', 'Triển lãm; trưng bày', 'The museum will exhibit ancient artifacts.', 'Bảo tàng sẽ trưng bày các hiện vật cổ.', NULL, NULL, NULL, 'TOEIC'),
(201, 'Expedite (v)', '/ˈek.spɪ.daɪt/', 'Xúc tiến, đẩy nhanh', 'We need to expedite the delivery process.', 'Chúng ta cần đẩy nhanh quá trình giao hàng.', NULL, NULL, NULL, 'TOEIC'),
(202, 'Facility (n)', '/fəˈsɪl.ə.ti/', 'Cơ sở', 'The new research facility will open next year.', 'Cơ sở nghiên cứu mới sẽ mở cửa vào năm tới.', NULL, NULL, NULL, 'TOEIC'),
(203, 'Figure (n/v)', '/ˈfɪɡ.ər/', 'Con số; hình dung', 'The latest figures show an increase in sales.', 'Các con số mới nhất cho thấy sự gia tăng doanh số.', NULL, NULL, NULL, 'TOEIC'),
(204, 'Fleet (n)', '/fliːt/', 'Đội xe, hạm đội', 'The company operates a large fleet of delivery vans.', 'Công ty vận hành một đội xe tải giao hàng lớn.', NULL, NULL, NULL, 'TOEIC'),
(205, 'Fluctuate (v)', '/ˈflʌk.tʃu.eɪt/', 'Dao động', 'Stock prices can fluctuate daily.', 'Giá cổ phiếu có thể dao động hàng ngày.', NULL, NULL, NULL, 'TOEIC'),
(206, 'Grant (v/n)', '/ɡrɑːnt/', 'Cấp, ban; khoản trợ cấp', 'The foundation granted him a scholarship.', 'Quỹ đã cấp cho anh ấy một học bổng.', NULL, NULL, NULL, 'TOEIC'),
(207, 'Guarantee (n/v)', '/ˌɡær.ənˈtiː/', 'Đảm bảo', 'The product comes with a satisfaction guarantee.', 'Sản phẩm đi kèm với đảm bảo hài lòng.', NULL, NULL, NULL, 'TOEIC'),
(208, 'Hazard (n)', '/ˈhæz.əd/', 'Nguy hiểm', 'Smoking is a health hazard.', 'Hút thuốc là một mối nguy hại cho sức khỏe.', NULL, NULL, NULL, 'TOEIC'),
(209, 'Incentive (n)', '/ɪnˈsen.tɪv/', 'Khuyến khích', 'The company offers incentives for good performance.', 'Công ty cung cấp các khuyến khích cho hiệu suất tốt.', NULL, NULL, NULL, 'TOEIC'),
(210, 'Incur (v)', '/ɪnˈkɜːr/', 'Chịu, gánh chịu', 'You may incur additional fees for late payment.', 'Bạn có thể phải chịu thêm phí cho việc thanh toán trễ.', NULL, NULL, NULL, 'TOEIC'),
(211, 'Indicate (v)', '/ˈɪn.dɪ.keɪt/', 'Chỉ ra, biểu thị', 'The report indicates a positive trend.', 'Báo cáo chỉ ra một xu hướng tích cực.', NULL, NULL, NULL, 'TOEIC'),
(212, 'Initiate (v)', '/ɪˈnɪʃ.i.eɪt/', 'Khởi xướng, bắt đầu', 'We will initiate a new project next month.', 'Chúng tôi sẽ khởi xướng một dự án mới vào tháng tới.', NULL, NULL, NULL, 'TOEIC'),
(213, 'Input (n/v)', '/ˈɪn.pʊt/', 'Đầu vào; nhập liệu', 'Your input is valuable for this discussion.', 'Ý kiến đóng góp của bạn rất có giá trị cho cuộc thảo luận này.', NULL, NULL, NULL, 'TOEIC'),
(214, 'Inspection (n)', '/ɪnˈspek.ʃən/', 'Kiểm tra, thanh tra', 'The building passed the safety inspection.', 'Tòa nhà đã vượt qua cuộc kiểm tra an toàn.', NULL, NULL, NULL, 'TOEIC'),
(215, 'Installation (n)', '/ˌɪn.stəˈleɪ.ʃən/', 'Sự cài đặt', 'The installation of the new system will take two days.', 'Việc cài đặt hệ thống mới sẽ mất hai ngày.', NULL, NULL, NULL, 'TOEIC'),
(216, 'Interruption (n)', '/ˌɪn.təˈrʌp.ʃən/', 'Sự gián đoạn', 'We apologize for the interruption in service.', 'Chúng tôi xin lỗi vì sự gián đoạn trong dịch vụ.', NULL, NULL, NULL, 'TOEIC'),
(217, 'Inventory (n)', '/ˈɪn.vən.tər.i/', 'Hàng tồn kho', 'The store updates its inventory weekly.', 'Cửa hàng cập nhật hàng tồn kho hàng tuần.', NULL, NULL, NULL, 'TOEIC'),
(218, 'Leverage (v/n)', '/ˈliː.vər.ɪdʒ/', 'Tận dụng, đòn bẩy', 'We need to leverage our strengths to succeed.', 'Chúng ta cần tận dụng thế mạnh của mình để thành công.', NULL, NULL, NULL, 'TOEIC'),
(219, 'Liaison (n)', '/liˈeɪ.zɒn/', 'Liên lạc viên', 'She acts as a liaison between the two departments.', 'Cô ấy đóng vai trò là liên lạc viên giữa hai phòng ban.', NULL, NULL, NULL, 'TOEIC'),
(220, 'Mandatory (adj)', '/ˈmæn.də.tər.i/', 'Bắt buộc', 'Wearing a helmet is mandatory on this construction site.', 'Đội mũ bảo hiểm là bắt buộc tại công trường này.', NULL, NULL, NULL, 'TOEIC'),
(221, 'Merge (v)', '/mɜːdʒ/', 'Sáp nhập', 'The two companies decided to merge.', 'Hai công ty quyết định sáp nhập.', NULL, NULL, NULL, 'TOEIC'),
(222, 'Monitor (v/n)', '/ˈmɒn.ɪ.tər/', 'Giám sát; màn hình', 'We need to monitor market trends closely.', 'Chúng ta cần theo dõi chặt chẽ xu hướng thị trường.', NULL, NULL, NULL, 'TOEIC'),
(223, 'Objective (n)', '/əbˈdʒek.tɪv/', 'Mục tiêu', 'Our main objective is customer satisfaction.', 'Mục tiêu chính của chúng tôi là sự hài lòng của khách hàng.', NULL, NULL, NULL, 'TOEIC'),
(224, 'Obligation (n)', '/ˌɒb.lɪˈɡeɪ.ʃən/', 'Nghĩa vụ', 'You have no obligation to accept the offer.', 'Bạn không có nghĩa vụ phải chấp nhận lời đề nghị.', NULL, NULL, NULL, 'TOEIC'),
(225, 'Outcome (n)', '/ˈaʊt.kʌm/', 'Kết quả', 'The outcome of the negotiations was positive.', 'Kết quả của các cuộc đàm phán là tích cực.', NULL, NULL, NULL, 'TOEIC'),
(226, 'Overtime (n)', '/ˈəʊ.və.taɪm/', 'Làm thêm giờ', 'Employees are paid extra for working overtime.', 'Nhân viên được trả thêm tiền khi làm thêm giờ.', NULL, NULL, NULL, 'TOEIC'),
(227, 'Outstanding (adj)', '/ˌaʊtˈstæn.dɪŋ/', 'Nổi bật, chưa thanh toán', 'We still have some outstanding invoices.', 'Chúng tôi vẫn còn một số hóa đơn chưa thanh toán.', NULL, NULL, NULL, 'TOEIC'),
(228, 'Override (v)', '/ˌəʊ.vəˈraɪd/', 'Ghi đè, bỏ qua', 'The manager can override the system settings.', 'Người quản lý có thể ghi đè cài đặt hệ thống.', NULL, NULL, NULL, 'TOEIC'),
(229, 'Overhaul (v/n)', '/ˈəʊ.və.hɔːl/', 'Đại tu, sửa chữa lớn', 'The old machinery needs a complete overhaul.', 'Máy móc cũ cần được đại tu hoàn toàn.', NULL, NULL, NULL, 'TOEIC'),
(230, 'Partnership (n)', '/ˈpɑːt.nə.ʃɪp/', 'Quan hệ đối tác', 'We formed a partnership with a local company.', 'Chúng tôi đã thành lập mối quan hệ đối tác với một công ty địa phương.', NULL, NULL, NULL, 'TOEIC'),
(231, 'Kinship (n)', '/ˈkɪn.ʃɪp/', 'Mối quan hệ họ hàng', 'The village has strong ties of kinship.', 'Ngôi làng có mối quan hệ họ hàng chặt chẽ.', '../Contents/Jpg/kinship.png', '../Contents/Sounds/kinship.mp3', '../Contents/Sounds/exkinship.m4a', 'FaR'),
(232, 'Sibling (n)', '/ˈsɪb.lɪŋ/', 'Anh chị em ruột', 'She has two siblings, a brother and a sister.', 'Cô ấy có hai anh chị em ruột, một anh trai và một em gái.', '../Contents/Jpg/sibling.png', '../Contents/Sounds/sibling.mp3', '../Contents/Sounds/exsibling.m4a', 'FaR'),
(233, 'Parents (n)', '/ˈpeə.rənts/', 'Bố mẹ', 'I’m meeting my girlfriend’s parents for the first time.', 'Tôi sẽ gặp bố mẹ bạn gái tôi lần đầu tiên.', '../Contents/Jpg/family.png', '../Contents/Sounds/parents.mp3', '../Contents/Sounds/exparents.m4a', 'FaR'),
(234, 'Ancestor (n)', '/ˈæn.ses.tər/', 'Tổ tiên', 'My ancestors came from Ireland.', 'Tổ tiên của tôi đến từ Ireland.', '../Contents/Jpg/ancestor.png', '../Contents/Sounds/ancestor.mp3', '../Contents/Sounds/exancestor.m4a', 'FaR'),
(235, 'Spouse (n)', '/spaʊs/', 'Vợ/chồng', 'Patients are asked to list their next of kin, including their spouse.', 'Bệnh nhân được yêu cầu liệt kê người thân gần nhất, bao gồm vợ/chồng của họ.', '../Contents/Jpg/couple.png', '../Contents/Sounds/spouse.mp3', '../Contents/Sounds/exspouse.m4a', 'FaR'),
(236, 'Nephew (n)', '/ˈnef.juː/', 'Cháu trai (con của anh/chị/em)', 'My nephew is visiting us next weekend.', 'Cháu trai của tôi sẽ đến thăm chúng tôi vào cuối tuần tới.', '../Contents/Jpg/nephew.png', '../Contents/Sounds/nephew.mp3', '../Contents/Sounds/exnephew.m4a', 'FaR'),
(237, 'Niece (n)', '/niːs/', 'Cháu gái (con của anh/chị/em)', 'My niece just started college.', 'Cháu gái của tôi vừa mới vào đại học.', '../Contents/Jpg/niece.png', '../Contents/Sounds/niece.mp3', '../Contents/Sounds/exniece.m4a', 'FaR'),
(238, 'Maternal (adj)', '/məˈtɜːr.nəl/', 'Thuộc về mẹ', 'She has strong maternal instincts.', 'Cô ấy có bản năng làm mẹ mạnh mẽ.', '../Contents/Jpg/mom.png', '../Contents/Sounds/maternal.mp3', '../Contents/Sounds/exmaternal.m4a', 'FaR'),
(239, 'Paternal (adj)', '/pəˈtɜːr.nəl/', 'Thuộc về cha', 'He takes after his paternal grandfather.', 'Anh ấy giống ông nội của mình.', '../Contents/Jpg/dad.jpg', '../Contents/Sounds/paternal.mp3', '../Contents/Sounds/expaternal.m4a', 'FaR'),
(240, 'Household (n)', '/ˈhaʊs.həʊld/', 'Hộ gia đình', 'The average household size has decreased in recent years.', 'Kích thước hộ gia đình trung bình đã giảm trong những năm gần đây.', '../Contents/Jpg/household.png', '../Contents/Sounds/household.mp3', '../Contents/Sounds/exhousehold.m4a', 'FaR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pronoune`
--
ALTER TABLE `pronoune`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`idtopic`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD PRIMARY KEY (`idvoca`),
  ADD KEY `idtopic` (`idtopic`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pronoune`
--
ALTER TABLE `pronoune`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `idvoca` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD CONSTRAINT `idtopic` FOREIGN KEY (`idtopic`) REFERENCES `topics` (`idtopic`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
