-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2021 at 06:19 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weblaptop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(1, 'admin', 'eeb19625760b9c9520a7defc22ab7e12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(20) NOT NULL,
  `cart_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`) VALUES
(1, 1, '5Gqg6SUwlA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(20) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluong_mua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluong_mua`) VALUES
(1, '5Gqg6SUwlA', 6, 4),
(2, '5Gqg6SUwlA', 13, 3),
(3, '5Gqg6SUwlA', 19, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `sodienthoai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `sodienthoai`) VALUES
(1, 'buichithong', 'chithong1999@gmail.com', 'Cần Thơ', 'cc1ffe901a38855ead069f24487a3c6f', '0815290699');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id`, `tendanhmuc`, `thutu`) VALUES
(1, 'macbook', 1),
(2, 'dell', 2),
(3, 'asus', 3),
(4, 'lenovo', 4),
(5, 'msi', 5),
(6, 'hp', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `giasp` float NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(100) NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(1, 'macbook air grey 2020', 'mba_gr_8gb_2020', 25000000, 100, '1623425730_mac_air_grey.jpg', 'Apple MacBook Air 2020 với chip Apple M1 (13 inch, RAM 8GB, bộ nhớ SSD 256GB)', 'Chip M1 do Apple thiết kế cho một bước nhảy vọt về hiệu suất CPU, GPU và máy học\r\nHoạt động lâu hơn bao giờ hết với thời lượng pin lên đến 18 giờ\r\nCPU 8 lõi mang lại hiệu suất nhanh hơn gấp 3,5 lần để xử lý các dự án nhanh hơn bao giờ hết\r\nLên đến tám lõi GPU với đồ họa nhanh hơn gấp 5 lần cho các ứng dụng và trò chơi đồ họa chuyên sâu\r\nCông cụ thần kinh 16 lõi cho máy học nâng cao\r\nBộ nhớ hợp nhất 8GB để mọi thứ bạn làm đều nhanh chóng và trôi chảy\r\nBộ nhớ SSD siêu nhanh khởi chạy ứng dụng và mở tệp ngay lập tức\r\nThiết kế không quạt cho hoạt động im lặng\r\nMàn hình Retina 13,3 inch với màu rộng P3 cho hình ảnh sống động và chi tiết đáng kinh ngạc\r\nMáy ảnh FaceTime HD với bộ xử lý tín hiệu hình ảnh tiên tiến cho các cuộc gọi video rõ ràng hơn, sắc nét hơn', 1, 1),
(2, 'macbook air gold 2020', 'mba_g_8gb_2020', 28000000, 100, '1623425706_mac_air_gold.jpg', 'Apple MacBook Air 13,3\" với màn hình Retina, Intel Core i5 lõi tứ 1,1 GHz, Bộ nhớ 8GB, SSD 256GB', 'MacBook Air 13,3 \"với Màn hình Retina (Vàng) - Bộ đổi nguồn USB Type-C 30W - Cáp sạc USB Type-C (6,56 \'/ 2m) - Bảo hành có giới hạn 1 năm của Apple\r\nMàn hình Retina với True Tone\r\nBộ xử lý Intel Core i5 thế hệ thứ 10 lõi tứ 1,1 GHz, Turbo Boost lên đến 3,5 GHz\r\nBộ nhớ 8GB 3733MHz LPDDR4X\r\nBộ nhớ SSD 256GB', 1, 1),
(3, 'macbook air gold 16gb 2020', 'mba_g_16gb_2020', 32000000, 100, '1623425938_mac_air_gold.jpg', 'Apple MacBook Air 13,3\" với Màn hình Retina, Intel Core i7 lõi ​​tứ 1,2 GHz, Bộ nhớ 16 GB, SSD 256 GB', 'MacBook Air 13,3 \"với Màn hình Retina (Vàng) - Bộ đổi nguồn USB Type-C 30W - Cáp sạc USB Type-C (6,56 \'/ 2m) - Bảo hành có giới hạn 1 năm của Apple\r\nMàn hình Retina với True Tone\r\nBộ xử lý Intel Core i7 thế hệ thứ 10 lõi tứ 1,2 GHz, Turbo½ Boost lên đến 3,8 GHz\r\nBộ nhớ 16GB 3733MHz LPDDR4X\r\nBộ nhớ SSD 256GB', 1, 1),
(4, 'macbook air grey 16gb 2020', 'mba_gr_16gb_2020', 34000000, 100, '1623426063_mac_air_grey.jpg', 'Apple MacBook Air 13,3\" với Màn hình Retina, Chip M1 với CPU 8 lõi và GPU 7 lõi, Bộ nhớ 16 GB, SSD 1TB', 'BTO MacBook Pro 13.3 \"với Màn hình Retina - Bộ đổi nguồn USB Type-C 61W - Cáp sạc USB Type-C (2m) - Bảo hành có giới hạn 1 năm của Apple với hỗ trợ kỹ thuật trong 90 ngày\r\nCông cụ thần kinh 16 lõi\r\nBộ nhớ hợp nhất 16GB\r\nBộ nhớ SSD 1TB', 1, 1),
(5, 'macbook pro 2020', 'mbp_8gb_2020', 32000000, 100, '1623426216_mac_pro.jpg', 'Apple MacBook Pro 2020 với chip Apple M1 (13 inch, RAM 8GB, bộ nhớ SSD 256GB)', 'Chip M1 do Apple thiết kế cho một bước nhảy vọt về hiệu suất CPU, GPU và máy học\r\nHoàn thành nhiều việc hơn với thời lượng pin lên đến 20 giờ, thời lượng dài nhất từ ​​trước đến nay trên máy Mac\r\nCPU 8 lõi mang lại hiệu suất nhanh hơn gấp 2,8 lần để vượt qua các quy trình công việc nhanh hơn bao giờ hết\r\nGPU 8 lõi với đồ họa nhanh hơn tới 5 lần cho các ứng dụng và trò chơi đồ họa chuyên sâu\r\nCông cụ thần kinh 16 lõi cho máy học nâng cao', 1, 1),
(6, 'macbook pro 16\"', 'mbp_16i_16gb_2019', 54000000, 100, '1623426378_mac_pro_16.jpg', 'Apple MacBook Pro 2019 (16 inch, RAM 16 GB, Bộ nhớ 1TB, Intel Core i9 2,3 GHz) - Xám không gian', 'Bộ xử lý Intel Core i9 8 nhân thế hệ thứ chín\r\nMàn hình Retina 16 inch tuyệt đẹp với công nghệ True Tone\r\nTouch Bar và Touch ID\r\nĐồ họa AMD Radeon Pro 5500M với bộ nhớ GDDR6\r\nSSD siêu nhanh', 1, 1),
(7, 'ASUS ROG Zephyrus G14 14', 'a_rog_g14', 52000000, 100, '1623426583_asus_rog_g14.jpg', 'ASUS ROG Zephyrus G14 14 \"VR Ready 120Hz FHD, 8 lõi AMD Ryzen 9 4900HS (Đánh bại i7-10750H), RAM 16 GB, SSD PCIe 1TB, Đèn nền, Wi-Fi 6, USB C, NVIDIA GeForce RTX2060 Max-Q, Win10 (Ánh trăng trắng)', 'Màn hình 14 inch Full HD với độ phân giải 1920 x 1080 với tốc độ làm mới 120Hz, AMD Ryzen 9 4900HS mới nhất (đánh bại Intel Core i7-10750H thế hệ thứ 10), bộ xử lý 8 lõi lên đến 4,30 GHz\r\nSSD 1TB, RAM DDR4 16GB\r\nĐồ họa NVIDIA GeForce RTX 2060 Max-Q Được hỗ trợ bởi bộ nhớ video chuyên dụng 6GB GDDR6, Sẵn sàng thực tế ảo\r\nLoa có Công nghệ AMP thông minh và Dolby Atmos, Hai loa 2,5W tạo ra âm thanh Dolby Atmos đáng kinh ngạc, kết nối Không dây / Có dây (WiFi 6 - 802.11 ax)\r\nBàn phím chiclet với đèn nền trắng, Cho phép bạn đánh máy thoải mái và chính xác, ngay cả trong điều kiện ánh sáng yếu., Nặng 3,64 lbs. và có kích thước mỏng 0,7 \", Windows 10 Home', 1, 3),
(8, 'ASUS ZenBook 13 Ultra-Slim', 'a_zen_13', 21000000, 100, '1623426747_asus_zen_13.jpg', 'ASUS ZenBook 13 Ultra-Slim, Màn hình 13,3 inch OLED FHD NanoEdge Bezel, Intel Core i7-1165G7, RAM 8GB LPDDR4X, SSD 512GB, NumberPad, Thunderbolt 4, Wi-Fi 6, Windows 10 Home, Pine Grey, UX325EA-ES71', 'Màn hình viền NanoEdge góc nhìn rộng 13,3 inch OLED 400nits Full HD (1920 x 1080)\r\nBộ xử lý Intel Core i7-1165G7 2,8 GHz (12M bộ nhớ đệm, tối đa 4,7 GHz, 4 lõi)\r\nBộ nhớ và lưu trữ nhanh với SSD 512GB PCIe NVMe M.2 với RAM 8GB LPDDR4X\r\nMáy ảnh hồng ngoại tích hợp để đăng nhập nhận dạng khuôn mặt với Windows Hello', 1, 3),
(9, 'MSI GS75 Stealth', 'msi_gs75_s', 56000000, 100, '1623426867_msi_gs75.jpg', 'MSI GS75 Stealth: Màn hình 17,3 inch 240Hz, Intel Core i7-10875H, NVIDIA GeForce RTX 2060, RAM 16 GB, SSD NVMe 512 GB, Win10 Pro, Màu đen (10SE-620)', 'Màn hình mượt mà: Màn hình 17,3 ”240Hz mang lại tốc độ làm mới cao cho trải nghiệm chơi mượt mà và sống động để bạn không bỏ lỡ khung hình của trò chơi\r\nTăng sức mạnh: Bộ xử lý Intel Core i7 thế hệ thứ 10, mang đến sức mạnh xử lý hiệu suất cao vững chắc để mang đến cho bạn trải nghiệm chơi game tuyệt vời\r\nĐồ họa siêu tăng áp: RTX 2060 có tính năng dò tia để cung cấp bóng, phản xạ và ánh sáng chính xác về mặt vật lý để chơi game hình ảnh tốt hơn\r\nChơi mát: Có công nghệ làm mát CPU và GPU để tối đa hóa luồng không khí và nhiệt để chơi game mượt mà và hiệu suất trong một khung máy nhỏ gọn\r\nTốc độ Lightning: Sử dụng cổng Thunderbolt 3, có tốc độ truyền lên đến 40Gbps và phân phối điện lên đến 100 Watts để sạc nhanh hơn', 1, 5),
(10, 'MSI Stealth 15M', 'msi_s_15', 32000000, 50, '1623426971_msi_s_15.jpg', 'MSI Stealth 15M: Màn hình 15,6 \"144Hz FHD 1080p, Intel Core i7-11375H, NVIDIA GeForce RTX 3060, 16GB, SSD 512GB, Thunderbolt 4, WiFi 6, Win10, Xám carbon (A11UEK-009)', 'Hiệu suất hình ảnh: Màn hình 15,6 ”144hz mang lại hình ảnh sống động như thật với tốc độ làm mới cao để bạn có thể xem mọi khung hình của trò chơi.\r\nSức mạnh được xác định lại: Bộ xử lý Intel Core i7 thế hệ thứ 11, mang lại hiệu suất cao với các lõi, dễ dàng xử lý mọi trò chơi và ứng dụng.\r\nĐồ họa siêu tăng áp: MSI Stealth 15M được trang bị NVIDIA GeForce RTX 3060, có thể chơi các trò chơi phổ biến nhất hiện nay với đồ họa hiệu năng này.\r\nOn the Go Gaming: Được thiết kế mỏng và nhẹ để game thủ mang theo mỗi ngày để chơi game, học tập hay làm việc.\r\nMát và Mạnh mẽ: Công nghệ Cooler Boost độc quyền của MSI đảm bảo tản nhiệt tối ưu. Với quạt hiện đại và ống dẫn nhiệt, giúp bạn có được luồng không khí cần thiết để chơi game.\r\nKết nối đa năng: Stealth 15M có một loạt các cổng I / O, Thunderbolt 4 hỗ trợ cung cấp điện và truyền dữ liệu lên đến 40Gbps và USB 4.0.', 1, 5),
(11, 'MSI Summit E15', 'msi_sum_e15', 43000000, 50, '1623427094_msi_sum_e15.jpg', 'MSI Summit E15: Màn hình cảm ứng IPS-Level 15 \", Intel core i7-1185G7, NVIDIA GeForce GTX 1650 Ti (Max-Q), RAM 16GB, SSD NVMe 1TB, Win10 PRO, Ink Black (A11SCS-208)\r\n', 'Màn hình cảm ứng: Màn hình IPS-Level 15 ”mang lại hình ảnh có độ phân giải cao với khả năng tương thích với màn hình cảm ứng, rất tốt cho việc phác thảo hoặc cho phép người dùng chỉnh sửa trong thời gian thực cho mọi tình huống.\r\nTăng cường năng suất: Bộ xử lý Intel Core i7 thế hệ thứ 11, mang lại sức mạnh xử lý hiệu suất cao để vượt qua những khối lượng công việc khắc nghiệt nhất và khả năng đa tác vụ.\r\nTrải nghiệm vượt trội: Được chế tạo trong khung nhôm siêu mỏng và nhẹ, Summit được thiết kế để vừa di động vừa thời trang. Bản lề 180 độ giúp bạn dễ dàng chia sẻ nội dung và ý tưởng của mình với người khác.\r\nĐa tác vụ: Mở rộng quy trình làm việc của bạn bằng cách kết nối với các màn hình bổ sung với HDMI và Thunderbolt 4 để tăng năng suất.\r\nKết nối tối ưu: Sử dụng cổng Thunderbolt 4, dòng Summit có thể truyền dữ liệu với tốc độ lên đến 40Gbps với USB 4.0 type-C cũng như sử dụng micro SD.', 1, 5),
(12, 'Dell XPS 13 (9310)', 'd_xps_13', 32000000, 100, '1623427206_xps_13.jpg', 'Dell XPS 13 (9310), 13,4 inch UHD + - Intel Core i7-1185G7, RAM LPDDR4x 32 GB 4267MHz, SSD 2TB, Đồ họa Iris Xe, Windows 10 Home - Bạc bạch kim với Palmrest màu đen', 'Màn hình InfinityEdge Touch Anti-Reflective 500-Nit 13,4 inch UHD + (3840 x 2400)\r\nBộ xử lý Intel Core i7-1185G7 thế hệ thứ 11 (12MB Cache, tối đa 4,8 GHz)\r\n32GB 4267MHz LPDDR4x, 2 TB M.2 PCIe NVMe SSD\r\nĐồ họa Intel Iris Xe với bộ nhớ đồ họa chia sẻ\r\nKiller Wi-Fi 6 AX500-DBS (2x2) và Bluetooth 5.0', 1, 2),
(13, 'Dell XPS 15', 'd_xps_15', 54000000, 100, '1623427295_xps_15.jpg', 'Dell XPS 15 - 15 inch FHD +, Intel Core i7 thế hệ thứ 10, Bộ nhớ 16 GB, Ổ cứng thể rắn 512 GB, Nvidia GeForce GTX 1650 Ti 4GB GDDR6, Windows 10 Home', 'Bàn di chuột lớn hơn 62%, màn hình lớn hơn 5% và dấu chân nhỏ hơn 5,6%\r\nMàn hình 16:10 FHD + edge to edge được trang bị DisplayHDR 400 và Dolby Vision\r\nTích hợp công nghệ hiển thị Eyesafe\r\nThiết kế 4 loa với âm thanh Waves Nx\r\nThành bên cắt kim cương được đánh bóng cao', 1, 2),
(14, 'HP Envy 15', 'hp_e_15', 21000000, 100, '1623427569_hp_e_15.jpg', 'HP Envy 15, Intel Core i7-10750H, Đồ họa NVIDIA GeForce GTX 1650 Ti, RAM 16 GB, Bộ nhớ SSD 512 GB, Màn hình cảm ứng 15,6 inch Full HD, Windows 10 Home, Đầu đọc vân tay (15-ep0010nr, Mẫu 2020)', 'MỘT SỨC MẠNH HẠN CHẾ: Trải qua các lớp học dài đại học chỉ với một lần sạc, làm việc trên các dự án sáng tạo với nhiều bộ nhớ, chăm sóc công việc kinh doanh với bộ xử lý đa lõi và kết thúc ngày mới với đồ họa đẹp mắt để chơi một số trò chơi nhẹ\r\nMÀN HÌNH VỚI ĐỒ HỌA ĐƯỢC ĐÁNH GIÁ: 15,6 inch đường chéo FHD, IPS, WLED-backlit vi cạnh, hỗ trợ cảm ứng đa điểm, kính tràn cạnh, 400 nits, 100% sRGB (1920 x 1080); Tỷ lệ màn hình so với thân máy là 82%; Đồ họa NVIDIA GeForce GTX 1650 Ti (4 GB GDDR6 chuyên dụng) cho phép bạn chơi game và truyền phát với tốc độ cực nhanh với công nghệ nhanh và đồ họa đột phá\r\nBỘ XỬ LÝ SIÊU NHANH: Bộ xử lý Intel Core i7-10750H thế hệ thứ 10, 6 lõi, tần số cơ bản 2,6 GHz, lên đến 5 GHz với Công nghệ Intel Turbo Boost\r\nBOOTUP NHANH VỚI Ổ CỨNG RẮN & BỘ NHỚ DÂY CHUYỀN CAO HƠN: Khởi động trong vài giây, truyền tệp mà không phải chờ đợi hàng giờ và tận hưởng trải nghiệm nhanh hơn với SSD 512 GB PCIe NVMeM.2 bên trong và băng thông, tốc độ và hiệu quả cao hơn với 16 GB DDR4 -2933 SDRAM (có thể nâng cấp với 2 khe cắm có thể truy cập, 2 x 8 GB)\r\nTHỜI GIAN SỬ DỤNG PIN CẢ NGÀY: Lên đến 18 giờ 15 phút (sử dụng hỗn hợp), lên đến 15 giờ 45 phút (phát lại video), lên đến 8 giờ 15 phút (phát trực tuyến không dây); Sạc từ 0 đến 50% trong 45 phút với HP Fast Charge\r\nTHIN, LIGHT VÀ PORTABLE (không đóng gói): 14,09 inch (W) x 9,32 inch (D) x 0,73 inch (H); 4,74 pound\r\nHỆ THỐNG VẬN HÀNH VÀ BẢO HÀNH: Windows 10 Home và bảo hành phần cứng có giới hạn 1 năm với hỗ trợ web 24 giờ, 7 ngày một tuần khi được vận chuyển và bán bởi Amazon.com', 1, 6),
(15, 'HP Spectre x360', 'hp_sp_13', 32000000, 50, '1623427701_hp_spe_13.jpg', 'HP - Spectre x360 Máy tính xách tay màn hình cảm ứng 4K Ultra HD 2 trong 1 13,3 \"- Intel Core i5 - Bộ nhớ 8GB - SSD 256GB - Màu bạc tự nhiên', 'Màn hình cảm ứng đa điểm 13,3 \"Màn hình bóng BrightView duy trì màu sắc sống động trong ảnh và video của bạn. Độ phân giải gốc 3840 x 2160. Công nghệ AMOLED. Đèn nền AMOLED.\r\nBộ nhớ hệ thống 8GB cho đa nhiệm nâng cao RAM băng thông cao đáng kể để chạy mượt mà các trò chơi và ứng dụng chỉnh sửa ảnh và video của bạn, cũng như nhiều chương trình và tab trình duyệt cùng một lúc.\r\nỔ cứng thể rắn 256GB (PCI-e)\r\nThiết kế lật và gấp 360 °', 1, 6),
(16, 'HP Envy X360', 'hp_e_x360', 34000000, 100, '1623427789_hp_e_15_x360.jpg', 'HP Envy X360, Màn hình cảm ứng 15,6 inch FHD IPS, Máy tính xách tay hàng đầu 2 trong 1 2019, AMD Quad-Core Ryzen 5 2500U (> i7-7500U), 8GB DDR4, 256GB PCle SSD, Bàn phím có đèn nền AMD Radeon Vega 8 802.11ac Windows Ink Win 10', 'AMD Ryzen 5 2500U: Bộ xử lý AMD Quad-Core Ryzen 5 2500U, Tần số cơ sở 2.0GHz, lên đến 3.60GHz, 6 MB Smartcache\r\nBộ nhớ mở rộng: 8GB 2400MHz DDR4 SDRAM, 256GB PCle Solid State Drive, có thể đạt được chính xác sự mong đợi của bạn\r\nHP Envy X360 15: 15,6 \"Full HD (1920 x 1080) Màn hình cảm ứng IPS IPS Màn hình WLED, Tự hào về màu sắc và độ rõ nét ấn tượng, Tích hợp đồ họa AMD Radeon RX Vega 8\r\nCổng bên ngoài: 1 x USB 3.1 Kiểu C, 2 x USB 3.1, 1 x HDMI, 1 x Giắc cắm kết hợp tai nghe / micrô, 1 x Đầu đọc thẻ nhớ microSD\r\nHệ điều hành: Windows 10 Home 64 bit, Webcam FHD IR tích hợp, 802.11ac (2x2), Bluetooth 4.2, Bàn phím có đèn nền, Windows Ink, Thời lượng pin lên đến 10,5 giờ', 1, 6),
(17, 'ThinkPad X1 Carbon 9', 'l_x1_cb_g9', 44000000, 100, '1623427904_think_x1_cb_9.jpg', 'Lenovo ThinkPad X1 Carbon 9 thế hệ thứ 9 Intel Core i7-1165G7, Màn hình không cảm ứng FHD, RAM 16 GB, SSD NVMe 512 GB, Đầu đọc dấu vân tay KYB có đèn nền, Win10 Pro', 'Bộ xử lý: Intel Core i7-1165G7 (4C / 8T, 2,8 / 4,7 GHz, 12MB)\r\nĐồ họa: Tích hợp Intel Iris Xe Graphics Display: 14 \"FHD IPS 400nits Chống chói\r\nBộ nhớ: Bộ nhớ hàn 16GB; Bộ nhớ: 512GB SSD M.2 2280 PCIe x4 NVMe Opal2\r\nKích thước: (WxDxH) 315 x 221,6 x 14,9 mm (12,4 x 8,72 x 0,59 inch)\r\nTích hợp Webcam đồ họa Intel UHD với micrô, Wifi-6 (Intel AX201 11ax), Bluetooth 5.1, Bàn phím có đèn nền, Đầu đọc vân tay USB-C, HDMI, USB 3.1, USB 4 Type-C với Thunderbolt 4', 1, 4),
(18, 'Lenovo ThinkPad X1 Nano', 'x1_nano', 48000000, 100, '1623428026_x1_nano.jpg', 'Lenovo ThinkPad X1 Nano, 13.0 \"2K (2160x1350) 16:10 IPS 450nits, Intel Evo i5-1130G7, Webcam, Backlit KB, Wi-Fi 6, Thunderbolt 4, Iris Xe, Windows 10 Pro (16GB RAM | 512GB PCIe SSD ) Trọng lượng nhẹ', '', 1, 4),
(19, 'ThinkPad X1 Extreme Gen 3', 'tp_x1_extr_g3', 55000000, 100, '1623428114_x1_extr.jpg', 'OEM Lenovo ThinkPad X1 Extreme Gen 3 15,6 ”FHD 1920x1080 IPS, Intel Hexa Core i7-10750H, RAM 64GB, NVMe 2TB, GeForce GTX 1650 Ti, Vân tay, W10 Home', 'Bộ xử lý: Intel Hexa Core i7-10750H [6 Cores] (2.6GHz - 5.0GHz, 12MB Cache)\r\nCác tính năng: RAM 64GB, NVMe 2TB, Đầu đọc vân tay; Màn hình: 15,6 \"FHD (1920x1080) IPS\r\nHệ điều hành: Windows 10 Home; Đồ họa: NVIDIA GeForce GTX 1650 Ti 4GB / Intel UHD\r\nBảo hành: Bảo hành 1 năm của Lenovo / Bảo hành có giới hạn 1 năm của Oemgenuine\r\nNâng cấp bộ nhớ & ổ cứng | * - Xem Mô tả Sản phẩm để biết thông tin chi tiết và ghi chú đầy đủ', 1, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Indexes for table `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Indexes for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
