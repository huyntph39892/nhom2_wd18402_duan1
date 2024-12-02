-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 11, 2024 lúc 05:36 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duan1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `image_album` varchar(255) NOT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id_attri` int(11) NOT NULL,
  `color` varchar(256) NOT NULL,
  `size` varchar(256) NOT NULL,
  `number_atri` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id_banner` int(11) NOT NULL,
  `image_banner` varchar(256) NOT NULL,
  `title_banner` varchar(255) NOT NULL,
  `id_product` int(11) NOT NULL,
  `look_banner` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id_banner`, `image_banner`, `title_banner`, `id_product`, `look_banner`) VALUES
(2, 'banner1.jpg', 'Sản phẩm mới ', 2, 0),
(3, 'banner2.jpg', 'Khuyến mãi quần', 4, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cates`
--

CREATE TABLE `cates` (
  `id_cate` int(11) NOT NULL,
  `name_cate` varchar(256) NOT NULL,
  `parent_cate` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cates`
--

INSERT INTO `cates` (`id_cate`, `name_cate`, `parent_cate`) VALUES
(1, 'Vợt cầu lông', 1),
(2, 'Áo cầu lông', 2),
(6, 'Quần cầu lông', 6),
(7, 'Phụ kiện', 0),
(8, 'Vợt cầu lông adidas', 1),
(9, 'Giày cầu lông', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id_cm` int(11) NOT NULL,
  `content_cm` varchar(256) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `parent_cm` int(11) NOT NULL DEFAULT 0,
  `hiden_cm` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `histrorys`
--

CREATE TABLE `histrorys` (
  `id_histrory` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `histrorys`
--

INSERT INTO `histrorys` (`id_histrory`, `id_user`, `id_order`) VALUES
(15, 43, 49),
(16, 43, 50),
(17, 44, 51),
(18, 44, 52),
(19, 44, 53),
(20, 45, 54),
(21, 43, 56),
(22, 43, 57),
(23, 43, 58);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `info`
--

CREATE TABLE `info` (
  `id_info` int(11) NOT NULL,
  `email_info` varchar(256) NOT NULL,
  `logo` varchar(256) NOT NULL,
  `phone_info` int(11) NOT NULL,
  `adress_info` varchar(256) NOT NULL,
  `thongtin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `info`
--

INSERT INTO `info` (`id_info`, `email_info`, `logo`, `phone_info`, `adress_info`, `thongtin`) VALUES
(1, 'admin@gmail.com', 'clx.png', 392748463, '13 đường P. Trịnh Văn Bô, Xuân Phương, Nam Từ Liêm, Hà Nội', 'Hiện nay, Hệ thống cửa hàng cầu lông HBK đã có hơn 50 chi nhánh trải dài trên khắp mọi miền Đất nước. Với tiêu chí luôn đảm bảo cung cấp đầy đủ các mặt hàng chuyên dụng dành riêng cho bộ môn cầu lông như giày, vợt cầu lông, túi vợt, balo, quần áo, phụ kiện,... nổi trội với nhiều phân khúc giá trải dài từ thấp đến cao nên các lông thủ cần mua gì cứ đến ngay với HBK, chắc chắn sẽ làm các bạn vô cùng hài lòng.\r\n\r\nHBK luôn là nơi cung cấp nhanh nhất các mặt hàng hot đến từ những thương hiệu top đầu thế giới như Yonex, Lining, Victor, Mizuno,... Không những vậy các sản phẩm đến từ các hãng tầm trung và giá rẻ như Adidas, Forza, Apacs, VNB, Kamito,... Shop cầu lông VNB cũng luôn cung cấp đầy đủ và mẫu mã rất đa dạng.\r\n\r\n* Đặc biệt, HBK là địa chỉ nổi tiếng căng vợt cầu lông chuẩn nhất ở Việt Nam. Tất cả các cửa hàng được trang bị máy đan vợt điện tử cao cấp cùng nhân viên ở shop luôn được trau dồi liên tục các kĩ thuật đan vợt hàng đầu trên thế giới.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loves`
--

CREATE TABLE `loves` (
  `id_love` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loves`
--

INSERT INTO `loves` (`id_love`, `pro_id`, `user_id`) VALUES
(24, 40, 43);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id_news` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `author` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id_news`, `title`, `content`, `image`, `date`, `author`) VALUES
(16, 'Thùy Linh tiến gần top 20 thế giới', '<p>Nhờ vào tứ kết Mỹ Mở rộng, tay vợt nữ số một Việt Nam Nguyễn Thùy Linh vươn lên thứ 23 trên bảng thứ bậc của Liên đoàn Cầu lông Thế giới (BWF).</p><p>Trên đất Mỹ, Thùy Linh lần lượt hạ hai tay vợt chủ nhà là Esther Shi ở vòng 1/16 và Iris Wang ở vòng 1/8 cùng tỷ số 2-1. Đến tứ kết, Thùy Linh thắng set đầu, nhưng thua ngược 1-2 trước hạt giống số một người Thái Lan Ratchanok Intanon.</p><p>Nhờ kết quả tại Mỹ Mở rộng, Thùy Linh được cộng 3.850 điểm, tăng ba bậc lên thứ 26 trên bảng BWF để lập cột mốc mới trong sự nghiệp. Tuần trước, tay vợt sinh năm 1997 được cộng 5.040 điểm cũng với thành tích vào tứ kết giải Canada mở rộng. Tính từ đầu năm 2023, Thùy Linh đã nhảy 28 bậc, từ vị trí 51.</p><p><a href=\"https://vnexpress.net/chu-de/nguyen-thuy-linh-6600\">Thùy Linh</a> tiếp tục là tay vợt nữ số một Việt Nam, số sáu Đông Nam Á và 18 châu Á. Ở khu vực, Thùy Linh xếp sau bốn tay vợt Thái Lan là Ratchanok Intanon (thứ 7), Pornpawee Chochuwong (10), Busanan Ongbamrungphan (13), Supanida Katethong (16), và tay vợt Indonesia Mariska Tunjung (8). Trong khi đó, vị trí số một thế giới tiếp tục thuộc về Akane Yamaguchi của Nhật Bản.</p><p>Trong năm 2023, Thùy Linh đã vô địch Vietnam International Challenge, về nhì Thailand International Challenge. Cuối tháng 8, Linh sẽ sang Đan Mạch dự giải vô địch thế giới, rồi đi Trung Quốc tranh tài tại Asiad 19.</p><p>Với vị trí và phong độ hiện tại, Thùy Linh được kỳ vọng đủ khả năng giành vé dự Olympic Paris 2024.</p>', 'tintuc1.jpg', '2024-04-04 10:52:44', 'huynt'),
(17, 'Nguyễn Tiến Minh xúc động trong ngày đặc biệt của vợ Vũ Thị Trang', '<p>Cựu tay vợt nữ số 1 Việt Nam - Vũ Thị Trang chính thức trở thành đại sứ thương hiệu Kamito, đồng thời cho ra mắt bộ sưu tập sản phẩm đặc sắc dành cho phái đẹp. Trong ngày đặc biệt của vợ, Nguyễn Tiến Minh rất xúc động.</p><p>&nbsp;</p><p>Buổi lễ công bố đại sứ thương hiệu diễn ra sáng 11.1 tại TP.HCM, có sự góp mặt và chứng kiến của đại diện Liên đoàn <a href=\"https://thanhnien.vn/cau-long.html\">Cầu lông</a> TP.HCM cùng nhiều VĐV cầu lông trên địa bàn. Đặc biệt, người bạn đời của <a href=\"https://thanhnien.vn/vu-thi-trang.html\">Vũ Thị Trang</a> - cựu tay vợt cầu lông số 1 Việt Nam <a href=\"https://thanhnien.vn/nguyen-tien-minh.html\">Nguyễn Tiến Minh</a> cũng tham dự.<br>&nbsp;</p><p>Nữ VĐV tài năng và xinh đẹp Vũ Thị Trang chính thức trở thành gương mặt đại diện của thương hiệu Kamito. Sự kết hợp này hứa hẹn mang đến sự lan tỏa niềm đam mê cầu lông nói riêng và thể thao nói chung tới phái đẹp trên khắp Việt Nam. Trong ngày đặc biệt của vợ, Nguyễn Tiến Minh đã rất xúc động. Khi được mời phát biểu, tay vợt từng đại diện Việt Nam dự Olympic chỉ biết cảm ơn rối rít, nói không nên lời.</p><p><img src=\"https://images2.thanhnien.vn/528068263637045248/2024/1/11/ben6134-17049620297131412094795.jpg\" alt=\"Nguyễn Tiến Minh xúc động trong ngày đặc biệt của vợ Vũ Thị Trang- Ảnh 1.\"></p><p>Nguyễn Tiến Minh (bìa phải) xuất hiện cùng Vũ Thị Trang (giữa) trong sự kiện công bố</p><p>BTC</p><p>Lễ công bố đại sứ thương hiệu cũng chứng kiến màn ra mắt của bộ sưu tập thời trang cầu lông đầu tiên dành cho phái nữ tại Việt Nam, mang tên \"VTT - GOWO\". Bộ sưu tập là sự kết hợp giữa thể thao và thời trang, được lấy cảm hứng từ chính quá trình thi đấu đầy nỗ lực và những khoảnh khắc tỏa sáng của Vũ Thị Trang trên sân đấu. Chính Vũ Thị Trang là người cùng đưa ra nhiều ý tưởng, đóng góp vào quá trình thiết kế và nghiên cứu phát triển từng sản phẩm, với mong muốn mang tới cho cộng đồng người chơi cầu lông Việt Nam những trải nghiệm chất lượng và trọn vẹn nhất.</p><p>Cựu tay vợt nữ số 1 Việt Nam chia sẻ: \"Tôi cảm thấy rất vinh dự, khi thời điểm hiện tại không còn thi đấu nhiều và đạt phong độ đỉnh cao như trước, nhưng vẫn được ưu ái và có bộ sưu tập riêng, có dấu ấn để đời như vậy. Với tôi, bộ sưu tập này hướng tới một hình ảnh mang tính cộng đồng, dành cho phái nữ\".</p><p><img src=\"https://images2.thanhnien.vn/528068263637045248/2024/1/11/kamito-gowo4204-17049620300011598535619.jpg\" alt=\"Nguyễn Tiến Minh xúc động trong ngày đặc biệt của vợ Vũ Thị Trang- Ảnh 2.\"><img src=\"https://images2.thanhnien.vn/528068263637045248/2024/1/11/kamito-gowo4199-17049620301431384459372.jpg\" alt=\"Nguyễn Tiến Minh xúc động trong ngày đặc biệt của vợ Vũ Thị Trang- Ảnh 3.\"></p><p>Bộ sưu tập thời trang cầu lông dành cho phái nữ mang tên \"VTT - GOWO\"</p><p>BTC</p><p><img src=\"https://images2.thanhnien.vn/528068263637045248/2024/1/11/gig7802-17049620298641792436259.jpg\" alt=\"Nguyễn Tiến Minh xúc động trong ngày đặc biệt của vợ Vũ Thị Trang- Ảnh 4.\"></p><p>BTC</p><p>Về sự nghiệp của bản thân, VĐV 31 tuổi cho biết: \"Hiện tại, tôi không thể thi đấu như thời đỉnh cao. Nhưng là một VĐV chuyên nghiệp, tôi sẽ phải cố gắng hết mình trong mọi thời điểm. Mong rằng trong năm 2024, tôi sẽ thi đấu tốt và đạt được thành tích trước khi nghỉ thi đấu chuyên nghiệp\".</p>', 'tintuctienminh.jpg', '2024-04-05 17:54:51', 'huynt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id_order` int(11) NOT NULL,
  `total_order` int(11) NOT NULL,
  `phone_order` int(11) NOT NULL,
  `email_order` varchar(256) NOT NULL,
  `adress_order` varchar(256) NOT NULL,
  `name_order` varchar(256) NOT NULL,
  `content_order` text NOT NULL,
  `date_order` datetime NOT NULL,
  `action` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id_order`, `total_order`, `phone_order`, `email_order`, `adress_order`, `name_order`, `content_order`, `date_order`, `action`) VALUES
(49, 450000, 12345678, 'thachuy18@gmail.com', 'Hà Nội', 'Nguyễn Thạc Huy', 'hh', '2024-04-04 10:18:04', 2),
(50, 569500, 12345678, 'thachuy18@gmail.com', 'Hà Nội', 'Nguyễn Thạc Huy', 'giao hoả tốc', '2024-04-05 17:14:48', 2),
(51, 360000, 123456789, 'chinq@gmail.com', 'Hà Nội', 'Quang Chi', 'giao nhanh', '2024-04-05 17:48:41', 2),
(52, 360000, 123456789, 'chinq@gmail.com', 'Hà Nội', 'Quang Chi', 'giao nhanh', '2024-04-05 17:48:43', 3),
(53, 360000, 123456789, 'chinq@gmail.com', 'Hà Nội', 'Quang Chi', 'giao nhanh', '2024-04-05 17:48:45', 2),
(54, 1849500, 545122421, 'vanduc18@gmail.com', 'Hà Nội', 'Văn Đức', 'f', '2024-04-06 09:53:38', 1),
(55, 1080000, 24823421, 'admin@gmail.com', 'Dân chơi FPT', 'Nhóm 2_WD18402', 'giao nhanh', '2024-04-06 10:01:33', 0),
(56, 869500, 12345678, 'thachuy18@gmail.com', 'Hà Nội', 'Nguyễn Thạc Huy', 'gia', '2024-04-06 10:04:16', 0),
(57, 869500, 12345678, 'thachuy18@gmail.com', 'Hà Nội', 'Nguyễn Thạc Huy', 'gia', '2024-04-06 10:04:23', 0),
(58, 869500, 12345678, 'thachuy18@gmail.com', 'Hà Nội', 'Nguyễn Thạc Huy', 'gia', '2024-04-06 10:04:29', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id_detail` int(11) NOT NULL,
  `quantity_detail` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id_detail`, `quantity_detail`, `order_id`, `product_id`) VALUES
(72, 1, 49, 7),
(73, 1, 50, 40),
(74, 1, 51, 8),
(75, 1, 52, 8),
(76, 1, 53, 8),
(77, 1, 54, 37),
(78, 1, 54, 5),
(79, 1, 54, 40),
(80, 1, 55, 2),
(81, 1, 55, 37),
(82, 1, 56, 40),
(83, 1, 56, 9),
(84, 1, 57, 40),
(85, 1, 57, 9),
(86, 1, 58, 40),
(87, 1, 58, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id_pro` int(11) NOT NULL,
  `title_pro` varchar(256) NOT NULL,
  `content_pro` text NOT NULL,
  `thongtin` varchar(256) NOT NULL,
  `image_pro` varchar(256) NOT NULL,
  `quantity_pro` int(11) NOT NULL,
  `price_pro` int(11) NOT NULL,
  `sale_pro` int(11) NOT NULL,
  `date_pro` datetime NOT NULL,
  `special_pro` int(11) NOT NULL DEFAULT 0,
  `view_pro` int(11) NOT NULL,
  `hiden_pro` int(11) NOT NULL DEFAULT 0,
  `cate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id_pro`, `title_pro`, `content_pro`, `thongtin`, `image_pro`, `quantity_pro`, `price_pro`, `sale_pro`, `date_pro`, `special_pro`, `view_pro`, `hiden_pro`, `cate_id`) VALUES
(2, 'Vợt Cầu Lông VS FIRE POWER TMR 1000 (TITAN 1000) Trắng Chính Hãng', '<p>Vợt cầu lông VS Titan 1000 Trắng thuộc series The Matrix Reloaded đang hot của hãng Venson (VS) là mẫu vợt giá rẻ hướng đến các đối tượng người chơi phong trào yêu thích lối đánh tấn công mạnh mẽ.</p><p>Vợt được làm từ chất liệu High Modulus Hot Melt Carbon Cloth giúp cải thiện độ bền của khung vợt và khả năng bùng nổ lực đánh đáng kinh ngạc, vợt vừa có khả năng tấn công liên tục vừa có khả năng dứt điểm mạnh mẽ.</p><p><img src=\"http://votcaulongshop.vn/wp-content/uploads/2024/03/abuiabacgaag3n-7qgyoqkkcpqcwoay4oay-500x500.jpg\" alt=\"\" srcset=\"https://votcaulongshop.vn/wp-content/uploads/2024/03/abuiabacgaag3n-7qgyoqkkcpqcwoay4oay-500x500.jpg 500w, https://votcaulongshop.vn/wp-content/uploads/2024/03/abuiabacgaag3n-7qgyoqkkcpqcwoay4oay-150x150.jpg 150w, https://votcaulongshop.vn/wp-content/uploads/2024/03/abuiabacgaag3n-7qgyoqkkcpqcwoay4oay-768x768.jpg 768w, https://votcaulongshop.vn/wp-content/uploads/2024/03/abuiabacgaag3n-7qgyoqkkcpqcwoay4oay-300x300.jpg 300w, https://votcaulongshop.vn/wp-content/uploads/2024/03/abuiabacgaag3n-7qgyoqkkcpqcwoay4oay-600x600.jpg 600w, https://votcaulongshop.vn/wp-content/uploads/2024/03/abuiabacgaag3n-7qgyoqkkcpqcwoay4oay-100x100.jpg 100w, https://votcaulongshop.vn/wp-content/uploads/2024/03/abuiabacgaag3n-7qgyoqkkcpqcwoay4oay-50x50.jpg 50w, https://votcaulongshop.vn/wp-content/uploads/2024/03/abuiabacgaag3n-7qgyoqkkcpqcwoay4oay.jpg 800w\" sizes=\"100vw\" width=\"500\"></p>', 'VS là thương hiệu cầu lông nổi tiếng với những sản phẩm vợt và phụ kiện chất lượng cao. Vợt cầu lông VS titan 1000 là một trong những sản phẩm nổi bật của thương hiệu này. Vợt có độ bền, khả năng kiểm soát và độ chính xác đáng kinh ngạc, giúp người chơi nâ', '6f1b25ec554ede8acaa92321a56e9f95.jpg_720x720q80.jpg', 285, 200000, 40, '2021-11-16 15:56:54', 0, 94, 0, 1),
(3, 'Vợt Cầu Lông Yonex Astrox 88D Pro 2024 Chính Hãng – Nội địa Nhật', '<p>Vợt cầu lông Yonex Astrox 88D Pro 2024 ra mắt vào tháng 3/2024 là thế hệ cải tiến thứ 3 của series vợt Astrox 88D – chuyên tấn công ở vị trí sau. Với việc tích hợp các công nghệ tiên tiến và thiết kế tối ưu, cây vợt này hứa hẹn sẽ mang đến những trải nghiệm tuyệt vời cho người chơi trình độ trung bình khá trở lên. Trong bài viết này, chúng ta sẽ cùng điểm qua những tính năng nổi bật của Yonex Astrox 88D Pro 2024 và công nghệ mới nhất được Yonex áp dụng cho dòng vợt này.</p><h2><strong>Yonex Astrox 88D Pro 2024: Phiên bản nâng cấp hoàn hảo cho người lực tay tốt</strong></h2><p>Yonex Astrox 88D Pro 2024 là phiên bản kế nhiệm của cây vợt Astrox 88D Pro được yêu thích rộng rãi trên thị trường. Với việc tích hợp các công nghệ mới nhất và cải tiến thiết kế, Yonex đã tạo ra một cây vợt cầu lông đỉnh cao, đáp ứng được nhu cầu của những vận động viên chuyên nghiệp có lối đánh thiên công.</p><h3><strong>Khám phá sức mạnh của Yonex Astrox 88D Pro 2024</strong></h3><p>Cây vợt Yonex Astrox 88D Pro 2024 được thiết kế với cấu trúc dạng hộp mới, tăng cường độ cứng xoắn và ổn định của khung vợt. Điều này giúp tăng sức mạnh cho các cú đánh, đặc biệt là những cú đập cầu mạnh mẽ và chính xác.</p><p>Bên cạnh đó, Yonex cũng đã áp dụng công nghệ 2G-NamdTM Flex Force vào khung vợt Astrox 88D Pro 2024. Đây là công nghệ mới nhất của hãng, cho phép người chơi thực hiện những cú swing nhanh và uy lực hơn, giúp tăng cường độ bền và độ cứng của khung vợt, đồng thời giảm thiểu rung động và tăng cường sức mạnh cho các cú đánh.</p><h3><strong>Yonex Astrox 88D Pro 2024: Cải tiến công nghệ mới nhất</strong></h3><p>Ngoài những công nghệ đã được đề cập, Yonex còn tích hợp thêm nhiều công nghệ tiên tiến khác vào cây vợt Astrox 88D Pro 2024. Một trong số đó là công nghệ AERO+BOX Frame, giúp tăng cường độ bền và độ cứng của khung vợt, đồng thời giảm thiểu lực cản khi đánh cầu.</p><p>Hơn nữa, công nghệ ISOMETRIC cũng được áp dụng vào khung vợt này, giúp tăng diện tích sweetspot và đem lại độ chính xác cao hơn. Điều này sẽ giúp người chơi dễ dàng đánh được những cú đập chính xác và đặt cầu vào vị trí mong muốn. Kết hợp với công nghệ Rotational Generator System, cây vợt này tối ưu hóa khả năng truyền sức mạnh và độ chính xác vào mỗi cú đánh.</p>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', '88d-pro.jpg', 230, 200000, 20, '2021-11-16 17:47:36', 0, 33, 0, 1),
(4, 'Vợt Cầu Lông VS Arashi Wind A6 Chính Hãng', '<p>VS là thương hiệu cầu lông đang đứng top 10 tại Trung Quốc vừa tung ra 1 bộ đôi vợt cầu lông VS Arashi Wind A4 và VS Arashi Wind A6 với màu sắc nhẹ nhàng mà đẹp mắt. Vợt được làm từ chất liệu cứng cáp giúp căng được đến 13.5kg.</p><p>Trong đó, vợt cầu lông VS Arashi Wind A6 thuộc dòng vợt giá rẻ, bền, độ cân bằng khung và mặt vợt ổn định với sức căng cao, giúp tấn công hiệu quả và phòng thủ chắc chắn. Đây là cây vợt cân bằng phù hợp với lối chơi công thủ toàn diện, kiểm soát cầu tốt.</p><p>Vợt cầu lông VS Arashi Wind A6&nbsp;được&nbsp;thiết kế với những đường nét nổi bật, tinh tế, không chỉ chất lượng sử dụng hoàn hảo mà ngoại hình cũng vô cùng bắt mắt và đầy ấn tượng. Bên cạnh đó giá thành tương đối rẻ mà bất kì ai cũng có thể sở hữu được.</p><p>Vợt được làm từ sợi carbon, mang lại độ cứng trung bình, giúp cho việc điều khiển cầu trở nên thuận lợi hơn. Ngoài ra, vợt cũng có khả năng phản tạt và trả cầu rất ổn định. Khung vợt với cấu trúc mặt cắt lưỡi kiếm giúp giảm cản gió, tăng tốc độ vung vợt và cảm giác thanh thoát hơn. Tính toàn vẹn của vợt được thể hiện ở cả hai mặt công và thủ.</p><p>Với chất lượng đảm bảo, ngoại hình ấn tượng và giá cả phải chăng, Arashi Wind A6 đã đáp ứng gần như đầy đủ nhu cầu của người chơi về một cây vợt dành cho người mới bắt đầu, người muốn định hình lối đánh.</p><h2><strong>Thông số kĩ thuật</strong></h2><ul><li>Sản xuất: Venson (VS)</li><li>Vật liệu: High Coefficient + Hot Melt Carbon Cloth</li><li>Cân nặng: 82±2g (5U) Cán vợt: G6 (Nhỏ)</li><li>Chiều dài: 675mm.</li><li>Sự cân bằng: 295±3mm (Đầu nhẹ)</li><li>Độ cứng: Trung bình</li><li>Lực căng dây: 22-30lbs</li></ul>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', '62a94918872aa130d121b7b63c66aded.jpg', 336, 700000, 20, '2021-11-16 17:49:11', 0, 28, 0, 1),
(5, ' Vợt Cầu Lông VS Arashi Wind A4 Chính Hãng', '<p>VS là thương hiệu cầu lông đang đứng top 10 tại Trung Quốc vừa tung ra 1 bộ đôi vợt cầu lông VS Arashi Wind A4 và VS Arashi Wind A6 với màu sắc nhẹ nhàng mà đẹp mắt. Vợt được làm từ chất liệu cứng cáp giúp căng được đến 13.5kg.</p><p>Trong đó, vợt cầu lông VS Arashi Wind A4 với màu sơn tổng thể là hồng, tạo cảm giác cá tính và nổi bật, cùng với chi tiết màu đen chạy dọc theo thân và khung vợt, cũng như lớp sơn trắng ở đầu khung vợt, tạo nên vẻ đẹp ấn tượng và bắt mắt.</p><p>Vợt cầu lông VS Arashi Wind A4 có thiết kế nữ tính kết hợp với tông màu nổi bật, hứa hẹn sẽ thu hút người chơi ngay từ cái nhìn đầu tiên. Với trọng lượng 78g và độ cân bằng đầu vợt 300mm, sản phẩm này phù hợp cho người mới tập chơi.</p><p>Vợt được làm từ sợi carbon, mang lại độ cứng trung bình, giúp cho việc điều khiển cầu trở nên thuận lợi hơn. Ngoài ra, vợt cũng có khả năng phản tạt và trả cầu rất ổn định. Khung vợt với cấu trúc mặt cắt lưỡi kiếm giúp giảm cản gió, tăng tốc độ vung vợt và cảm giác thanh thoát hơn. Tính toàn vẹn của vợt được thể hiện ở cả hai mặt công và thủ.</p><p>Với chất lượng đảm bảo, ngoại hình ấn tượng và giá cả phải chăng, Arashi Wind A4 đã đáp ứng gần như đầy đủ nhu cầu của người chơi về một cây vợt dành cho đánh đôi ở vị trí cầu trước, đặc biệt thích hợp cho các bạn nữ.</p><h2><strong>Thông số kĩ thuật</strong></h2><ul><li>Sản xuất: Venson (VS)</li><li>Vật liệu: High Coefficient + Hot Melt Carbon Cloth</li><li>Cân nặng: 78±2g (5U) Cán vợt: G6 (Nhỏ)</li><li>Chiều dài: 675mm.</li><li>Sự cân bằng: 300±3mm (Đầu nặng)</li><li>Độ cứng: Trung bình</li><li>Lực căng dây: 22-30lbs</li></ul>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', '5d355fb9cf4c372d3eeeebd54d7fef9c.jpg', 1288, 400000, 20, '2021-11-16 17:50:23', 0, 10, 0, 1),
(6, 'Vợt Cầu Lông Yonex Astrox 88 Play 2024 Chính Hãng', '<p>Yonex Astrox 88 Play 2024 được ra mắt vào tháng 3/2024 là phiên bản được điều chỉnh từ dòng sản phẩm cao cấp Astrox 88D/S Pro để phù hợp hơn với người chơi mới và trình độ trung bình, đây là phiên bản dành cho những người mới chơi có xu hướng thiên về tấn công nên vợt dễ thuần, dễ đánh không yêu cầu lực tay quá mạnh.</p><p>Là một cây vợt cầu lông phù hợp cho người mới chơi, dòng vợt này có các thông số cơ bản giúp việc dễ thuần và dễ đánh. Với trọng lượng vợt 4U, trọng điểm hơi nặng ở phần đầu kết hợp với đũa vợt trung bình, vừa giúp cung cấp sức mạnh cho người chơi lông vừa tạo ra tính linh hoạt và mãnh liệt khi chơi cầu.</p><p>Công nghệ tích hợp bao gồm cấu trúc khung Isometric mở rộng vùng điểm ngọt, khung vợt kết hợp Aero+Box Frame để tăng khả năng kiểm soát và sức mạnh toàn diện. Rotational Generator System&nbsp;đặc trưng trên các cây vợt Astrox với 3 điểm phân bổ trọng lượng nhằm nâng cao hiệu suất chơi cầu.</p><h2><strong>Thông số</strong></h2><figure class=\"table\"><table><tbody><tr><th>THƯƠNG HIỆU</th><td>Yonex</td></tr><tr><th>SẢN XUẤT</th><td>Nhật Bản</td></tr><tr><th>ĐIỂM CÂN BẰNG</th><td>298mm (Hơi nặng đầu)</td></tr><tr><th>ĐỘ CỨNG</th><td>Trung Bình</td></tr><tr><th>TRỌNG LƯỢNG</th><td>4U</td></tr><tr><th>KÍCH THƯỚC CÁN VỢT</th><td>G5</td></tr><tr><th>SỨC CĂNG</th><td>20 – 28 lbs (12.6kg)</td></tr><tr><th>VẬT LIỆU KHUNG</th><td>Graphite</td></tr><tr><th>VẬT LIỆU TRỤC</th><td>Graphite</td></tr><tr><th>MÀU SẮC</th><td>Đen, Xanh, Bạc</td></tr></tbody></table></figure><p>Những công nghệ tiên tiến đằng sau vợt cầu lông Yonex Astrox 88 Play 2024</p><p>Để hiểu rõ hơn về những công nghệ được tích hợp vào Yonex Astrox 88 Play 2024, chúng ta sẽ điểm qua các công nghệ tiên tiến của cây vợt này.</p><h3><strong>AERO+BOX Frame</strong></h3><p><img src=\"https://hvshop.vn/wp-content/uploads/2024/03/Aero-Box-Frame-Yonex.webp\" alt=\"Công nghệ AERO+BOX FRAME trên vợt cầu lông Yonex\" srcset=\"https://hvshop.vn/wp-content/uploads/2024/03/Aero-Box-Frame-Yonex.webp 500w, https://hvshop.vn/wp-content/uploads/2024/03/Aero-Box-Frame-Yonex-300x160.webp 300w, https://hvshop.vn/wp-content/uploads/2024/03/Aero-Box-Frame-Yonex-150x80.webp 150w\" sizes=\"100vw\" width=\"500\"></p><p>Thiết kế khung vợt cầu lông&nbsp;kết hợp giữa đường vành khung mỏng, thuôn gọn ở phần dưới cùng cấu trúc hình hộp cứng cáp, cung cấp cho người chơi khả năng xử lý cầu toàn diện và linh hoạt, vừa cho những pha cầu nhanh lại vừa mạnh mẽ, ổn định.</p><h3><strong>ISOMETRIC</strong></h3><p><img src=\"https://hvshop.vn/wp-content/uploads/2023/09/cong-nghe-ISOMETRIC.webp\" alt=\"Công Nghệ ISOMETRIC trên vợt Yonex\" srcset=\"https://hvshop.vn/wp-content/uploads/2023/09/cong-nghe-ISOMETRIC.webp 800w, https://hvshop.vn/wp-content/uploads/2023/09/cong-nghe-ISOMETRIC-300x300.webp 300w, https://hvshop.vn/wp-content/uploads/2023/09/cong-nghe-ISOMETRIC-150x150.webp 150w, https://hvshop.vn/wp-content/uploads/2023/09/cong-nghe-ISOMETRIC-768x768.webp 768w, https://hvshop.vn/wp-content/uploads/2023/09/cong-nghe-ISOMETRIC-100x100.webp 100w\" sizes=\"100vw\" width=\"500\"></p><p>Công nghệ này đã được nghiên cứu và áp dụng trên các cây vợt cầu lông Yonex trong suốt 30 năm, tạo ra cấu trúc khung vợt với vùng điểm ngọt tăng hơn 7% so với thông thường, mang lại đường cầu chính xác và lực bộc phát ổn định.</p><h3><strong>Rotational Generator System</strong></h3><p><img src=\"https://www.yonex.com/media/yonex/technology/B_Rotational_Generator_System.jpg\" alt=\"Rotational Generator System\"></p><p>Rotational Generator System là công nghệ độc quyền của Yonex, giúp tối ưu hóa trọng lượng và cân bằng của khung vợt. Điều này giúp người chơi dễ dàng xoay và di chuyển cây vợt, đem lại sự linh hoạt và kiểm soát tốt hơn trong các cú đánh. Hệ thống đối trọng tái tạo năng lượng và cân bằng vợt với trọng lượng được phân bổ tập trung đều tại 3 điểm chính: đầu vợt, cuối cán cầm vợt và phần khớp nối chữ T cho vợt khả năng phục hồi nhanh sau những pha va chạm, hỗ trợ cho những pha dồn ép cầu, nhồi cầu liên tục có độ chính xác cao.</p>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'vn-11134201-7qukw-leo5d5veulrn54.jpg', 2841, 200000, 0, '2021-11-16 17:51:09', 0, 14, 0, 1),
(7, 'Vợt cầu lông Yonex Duora Z Strike – Hàng cty chính hãng', '<p>Khi nhắc đến những dòng vợt có chữ “Z” là dòng vợt được chọn lọc là dòng cao cấp dành cho các vận động viên chuyên nghiệp. Và hiện nay tuy dòng vợt này ra mặt khá lâu nhưng độ “HOT” vẫn còn đó. Cây <strong>vợt cầu lông Yonex Duora Z Strike</strong> – đình đám nhất của hãng <a href=\"http://votcaulongshop.vn/vot-cau-long/vot-cau-long-yonex/\"><strong>vợt cầu lông Yonex chính hãng</strong></a> năm 2017, một dòng vợt với công nghệ hoàn toàn mới và xuất hiện lần đầu tiên trong lịch sử của các dòng vợt cầu lông. Vợt được thiết kế riêng cho vận động viên cầu lông số 2 thế giới hiện nay Viktor Axelsen<i><strong>.</strong></i>.Các bạn hãy cùng <strong>Vợt Cầu Lông Shop</strong> tìm hiểu về siêu phẩm này nhé!</p><h2><strong>Thông số kĩ thuật</strong></h2><ul><li>Sản xuất: Nhật Bản</li><li>Trọng lượng: 2U, 3U</li><li>Chu vi cán vợt: 2U – G4,5, 3U – G4,5</li><li>Sức căng tối đa: 29 LBS (13kg)</li><li>Điểm cân bằng: Nặng đầu</li><li>Độ dẻo: Cứng</li><li>Màu sắc: Đen</li></ul><h2><strong>Nhóm đối tượng phù hợp với vợt cầu lông Yonex Duora Z Strike</strong></h2><p><img src=\"http://votcaulongshop.vn/wp-content/uploads/2019/02/Than-vot-cua-Yonex-Duora-Z-Strike-500x375.jpg\" alt=\"Thân vợt của Yonex Duora Z Strike độc đáo\" srcset=\"https://votcaulongshop.vn/wp-content/uploads/2019/02/Than-vot-cua-Yonex-Duora-Z-Strike-500x375.jpg 500w, https://votcaulongshop.vn/wp-content/uploads/2019/02/Than-vot-cua-Yonex-Duora-Z-Strike-150x113.jpg 150w, https://votcaulongshop.vn/wp-content/uploads/2019/02/Than-vot-cua-Yonex-Duora-Z-Strike-768x576.jpg 768w, https://votcaulongshop.vn/wp-content/uploads/2019/02/Than-vot-cua-Yonex-Duora-Z-Strike-600x450.jpg 600w, https://votcaulongshop.vn/wp-content/uploads/2019/02/Than-vot-cua-Yonex-Duora-Z-Strike.jpg 800w\" sizes=\"100vw\" width=\"500\"><i>Thân vợt của Yonex Duora Z Strike</i></p><p>Phù hợp cho người chơi theo lối thiên công, thích dùng kỹ thuật áp đảo đối thủ và kiểm soát vợt tốt.<br>Phù hợp với người chơi hệ phổ thông có lực cổ tay trung bình và có kỹ thuật trung bình – khá.</p><h2><strong>Nhận xét về vợt cầu lông Yonex Duora Z Strike</strong></h2><p><img src=\"http://votcaulongshop.vn/wp-content/uploads/2019/02/Khung-vot-cua-Duora-Z-Strike-500x375.jpg\" alt=\"Khung vợt của Duora Z Strike ổn định\" srcset=\"https://votcaulongshop.vn/wp-content/uploads/2019/02/Khung-vot-cua-Duora-Z-Strike-500x375.jpg 500w, https://votcaulongshop.vn/wp-content/uploads/2019/02/Khung-vot-cua-Duora-Z-Strike-150x113.jpg 150w, https://votcaulongshop.vn/wp-content/uploads/2019/02/Khung-vot-cua-Duora-Z-Strike-768x576.jpg 768w, https://votcaulongshop.vn/wp-content/uploads/2019/02/Khung-vot-cua-Duora-Z-Strike-600x450.jpg 600w, https://votcaulongshop.vn/wp-content/uploads/2019/02/Khung-vot-cua-Duora-Z-Strike.jpg 800w\" sizes=\"100vw\" width=\"500\"><i>Khung vợt của Duora Z Strike</i></p><p><strong>Vợt cầu lông Yonex Duora Z Strike</strong> được thiết kế mặt vợt nhỏ, thân vợt dài, cán vợt nhỏ và thân vợt rất cứng giúp người chơi dễ dàng phòng thủ cũng như cho ra những cú tấn công mạnh mẽ và uy lực một cách chính xác. Vợt được tích hợp nhiều công nghệ tân tiến nhằm hỗ trợ người chơi phát huy kỹ năng mà không quá tốn sức.</p><p><img src=\"http://votcaulongshop.vn/wp-content/uploads/2019/02/Duora-Z-Strike-500x375.jpg\" alt=\"Duora-Z-Strike\" srcset=\"https://votcaulongshop.vn/wp-content/uploads/2019/02/Duora-Z-Strike-500x375.jpg 500w, https://votcaulongshop.vn/wp-content/uploads/2019/02/Duora-Z-Strike-150x113.jpg 150w, https://votcaulongshop.vn/wp-content/uploads/2019/02/Duora-Z-Strike-768x576.jpg 768w, https://votcaulongshop.vn/wp-content/uploads/2019/02/Duora-Z-Strike-600x450.jpg 600w, https://votcaulongshop.vn/wp-content/uploads/2019/02/Duora-Z-Strike.jpg 800w\" sizes=\"100vw\" width=\"500\"></p>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'vn-11134207-7qukw-lg4n1jeswaju96.jpg', 300, 500000, 10, '2021-11-16 18:37:13', 0, 6, 0, 2),
(8, 'Áo cầu lông Lining ARS01 đen', '<p><img src=\"http://votcaulongshop.vn/wp-content/uploads/2022/10/ao-cau-long-Lining-ARS01-den-500x500.jpg\" alt=\"Áo cầu lông Lining ARS01 đen\" srcset=\"https://votcaulongshop.vn/wp-content/uploads/2022/10/ao-cau-long-Lining-ARS01-den-500x500.jpg 500w, https://votcaulongshop.vn/wp-content/uploads/2022/10/ao-cau-long-Lining-ARS01-den-800x800.jpg 800w, https://votcaulongshop.vn/wp-content/uploads/2022/10/ao-cau-long-Lining-ARS01-den-150x150.jpg 150w, https://votcaulongshop.vn/wp-content/uploads/2022/10/ao-cau-long-Lining-ARS01-den-768x768.jpg 768w, https://votcaulongshop.vn/wp-content/uploads/2022/10/ao-cau-long-Lining-ARS01-den-1536x1536.jpg 1536w, https://votcaulongshop.vn/wp-content/uploads/2022/10/ao-cau-long-Lining-ARS01-den-2048x2048.jpg 2048w, https://votcaulongshop.vn/wp-content/uploads/2022/10/ao-cau-long-Lining-ARS01-den-300x300.jpg 300w, https://votcaulongshop.vn/wp-content/uploads/2022/10/ao-cau-long-Lining-ARS01-den-600x600.jpg 600w, https://votcaulongshop.vn/wp-content/uploads/2022/10/ao-cau-long-Lining-ARS01-den-100x100.jpg 100w\" sizes=\"100vw\" width=\"500\"></p>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'ao-cau-long-Lining-ARS01-den-scaled.jpg', 111, 400000, 10, '2021-11-16 18:38:39', 0, 19, 0, 2),
(9, 'Vợt cầu lông Yonex NanoFlare 270 Speed – Hàng cty chính hãng', '<p>Nếu bạn đang tìm kiếm cho bản thân một cây vợt trọng lượng nhẹ và dễ chơi thì dòng vợt NanoFlare của Yonex sẽ là lựa chọn hàng đầu. Dòng vợt NanoFlare là dòng vợt cao cấp nhẹ đầu duy nhất hiện nay. Tuy nhiên để có thể dễ sự dụng và mang cảm giác tốt nhất của dòng NanoFlare thì cây <strong>vợt cầu lông Yonex NanoFlare 270 Speed</strong> đang là ưu tiên số 1.</p><h2><strong>Thông số kĩ thuật</strong></h2><ul><li>Sản xuất: Nhật Bản</li><li>Trọng lượng: 4U, 5U</li><li>Chu vi cán vợt: G4,5 cho cả 2 phiên bản</li><li>Sức căng tối đa: 4U(20-27 LBS); 5U(19-26 LBS)</li><li>Điểm cân bằng: Cân bằng</li><li>Độ dẻo: Trung bình</li><li>Màu sắc: Xanh cam</li></ul><h2><strong>Nhóm đối tượng phù hợp với dòng vợt cầu lông Yonex NanoFlare 270 Speed</strong></h2><p><img src=\"http://votcaulongshop.vn/wp-content/uploads/2021/05/Than-vot-cua-Yonex-Nanoflare-270-Speed.jpg\" alt=\"Thân vợt của Yonex Nanoflare 270 speed\" srcset=\"https://votcaulongshop.vn/wp-content/uploads/2021/05/Than-vot-cua-Yonex-Nanoflare-270-Speed.jpg 500w, https://votcaulongshop.vn/wp-content/uploads/2021/05/Than-vot-cua-Yonex-Nanoflare-270-Speed-150x150.jpg 150w, https://votcaulongshop.vn/wp-content/uploads/2021/05/Than-vot-cua-Yonex-Nanoflare-270-Speed-300x300.jpg 300w, https://votcaulongshop.vn/wp-content/uploads/2021/05/Than-vot-cua-Yonex-Nanoflare-270-Speed-100x100.jpg 100w\" sizes=\"100vw\" width=\"500\"><i>Thân vợt của Yonex Nanoflare 270 speed</i></p><p>Dòng vợt cầu lông Yonex NanoFlare 270 Speed thích hợp cho người chơi có trình độ từ khá trở lên. Thích hợp cho cả nội dung đánh đôi và đánh đơn, tốt nhất là trong nội dung đánh đôi nam nữ. Đặc biệt dành cho các VĐV nữ. Các lông thủ có lối đánh chuyên về phòng thủ và có lối đánh nhanh thì đây là sự lựa chọn tuyệt vời nhất.</p>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'vn-11134207-7qukw-lg4n1jesffqia8.jpg', 276, 300000, 0, '2021-11-16 18:40:04', 0, 30, 0, 2),
(37, 'Vợt cầu lông Lining Aeronaut 4000B – Hàng cty chính hãng', '<p>Lining là một thương hiệu thời trang hàng đầu thế giới với những cải tiến sáng tạo ra những sản phẩm mới phù hợp với nhiều nhu cầu khác nhau. Đối với môn cầu lông cũng vậy. Sau khi ra mắt dòng vợt Lining Aeronaut 4000 mang lại thành công lớn thì tiếp nối đó là sản phẩm <a href=\"https://votcaulongshop.vn/vot-cau-long-lining-aeronaut-4000b/#vot-cau-long-lining-aeronaut-4000b\"><strong>vợt cầu lông Lining Aeronaut 4000B</strong></a> với một số tính năng ứng dụng tốt hơn.</p><p>Chúng ta hãy tham khảo sơ qua về các thông số cũng như những đánh giá thực tế của mẫu <a href=\"https://votcaulongshop.vn/vot-cau-long\"><strong>vợt cầu lông</strong></a> này nhé.</p><h2><strong>Thông số kĩ thuật</strong></h2><ul><li>Sản xuất: Trung Quốc</li><li>Trọng lượng: 3U</li><li>Chu vi cán vợt: G4</li><li>Sức căng tối đa: 30 LBS (13.6kg)</li><li>Điểm cân bằng: 295mm</li><li>Độ dẻo: Trung bình</li><li>Màu sắc: Đỏ</li></ul><p><img src=\"http://votcaulongshop.vn/wp-content/uploads/2021/01/Vot-cau-long-Lining-Aeronaut-4000B.jpg\" alt=\"&quot;<yoastmark\" srcset=\"https://votcaulongshop.vn/wp-content/uploads/2021/01/Vot-cau-long-Lining-Aeronaut-4000B.jpg 500w, https://votcaulongshop.vn/wp-content/uploads/2021/01/Vot-cau-long-Lining-Aeronaut-4000B-150x147.jpg 150w\" sizes=\"100vw\" width=\"500\"></p><h2><strong>Nhóm đối tượng phù hợp với vợt cầu lông Lining Aeronaut 4000B</strong></h2><p>Dòng vợt Lining Aeronaut 4000B phù hợp với người chơi theo hệ tấn công, thích sử dụng nhiều kỹ thuật. Hoặc đối&nbsp;với những tay vợt bán chuyên, trình độ trung bình-khá và có lực cổ tay trung bình-khỏe.</p><h2><strong>Nhận xét về vợt cầu lông Lining Aeronaut 4000B</strong></h2><p><strong>Lining Aeronaut 4000B</strong> được đánh giá là dòng vợt thiên công, khá phù hợp với người chơi thích kiểm soát cầu tốt mà ít tốn sức, thích vợt có hỗ trợ lực phía sau. Sở hữu công nghệ Air Stream thoáng khí, vợt được thiết kế giúp giảm lực cản không khí nhằm chống rung dây trên bề mặt vợt.</p>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'vn-11134207-7qukw-lg4n1jet4pyi9f.jpg', 995, 1200000, 20, '2021-12-06 17:47:45', 0, 6, 0, 1),
(40, 'Giày Cầu Lông Lefus L018 - Trắng Đen', '<p><strong>Giày Cầu Lông Lefus L018 Trắng Đen -&nbsp;Siêu Phẩm Giá Rẻ Năm 2022</strong></p>', ' Sản phẩm được kiểm tra kĩ càng   cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách   Hàng có sẵn   giao hàng ngay khi nhận được đơn', 'giaycaulong.jpg', 195, 670000, 15, '2024-04-04 10:23:46', 0, 9, 0, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `adress` varchar(256) NOT NULL,
  `pass` varchar(256) NOT NULL,
  `avatar` varchar(256) NOT NULL,
  `role` int(11) NOT NULL,
  `look` int(11) NOT NULL DEFAULT 0,
  `code_mk` varchar(256) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id_user`, `email`, `phone`, `name`, `adress`, `pass`, `avatar`, `role`, `look`, `code_mk`) VALUES
(2, 'admin@gmail.com', 24823421, 'Nhóm 2_WD18402', 'Dân chơi FPT', '123', '4.jpg', 1, 0, '0'),
(43, 'thachuy18@gmail.com', 12345678, 'Nguyễn Thạc Huy', 'Hà Nội', '123', '3.jpeg', 0, 0, '0'),
(44, 'chinq@gmail.com', 123456789, 'Quang Chi', 'Hà Nội', '123', '4.jpg', 0, 0, '0'),
(45, 'vanduc18@gmail.com', 545122421, 'Văn Đức', 'Hà Nội', '123', '3.jpeg', 0, 0, '0');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id_attri`),
  ADD KEY `attributes_ibfk_1` (`pro_id`);

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id_banner`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `cates`
--
ALTER TABLE `cates`
  ADD PRIMARY KEY (`id_cate`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_cm`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `histrorys`
--
ALTER TABLE `histrorys`
  ADD PRIMARY KEY (`id_histrory`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `histrorys_ibfk_2` (`id_user`);

--
-- Chỉ mục cho bảng `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id_info`);

--
-- Chỉ mục cho bảng `loves`
--
ALTER TABLE `loves`
  ADD PRIMARY KEY (`id_love`),
  ADD KEY `pro_id` (`pro_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_pro`),
  ADD KEY `cate_id` (`cate_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id_attri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `cates`
--
ALTER TABLE `cates`
  MODIFY `id_cate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id_cm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `histrorys`
--
ALTER TABLE `histrorys`
  MODIFY `id_histrory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `info`
--
ALTER TABLE `info`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `loves`
--
ALTER TABLE `loves`
  MODIFY `id_love` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id_news` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id_pro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_pro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD CONSTRAINT `attributes_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id_pro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_pro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id_pro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `histrorys`
--
ALTER TABLE `histrorys`
  ADD CONSTRAINT `histrorys_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `histrorys_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `loves`
--
ALTER TABLE `loves`
  ADD CONSTRAINT `loves_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id_pro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `loves_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cate_id`) REFERENCES `cates` (`id_cate`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
