-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th2 24, 2024 lúc 02:49 PM
-- Phiên bản máy phục vụ: 10.3.39-MariaDB-cll-lve
-- Phiên bản PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `fcheckscarnvn_toiuytin`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bangchung`
--

CREATE TABLE `bangchung` (
  `id` int(11) NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bangchung`
--

INSERT INTO `bangchung` (`id`, `code`, `image`) VALUES
(1, 'clmm88me', '/storage/SC_1974.png'),
(2, 'cc', '/storage/SC_1948.png'),
(3, 'cc', '/storage/SC_8465.png'),
(4, 'checkscamcom', '/storage/SC_1675.png'),
(5, 'nguyen-chi-dung', '/storage/SC_5382.png'),
(6, 'bao-an', '/storage/SC_2076.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `code` varchar(32) DEFAULT NULL,
  `username` text NOT NULL,
  `stt` text DEFAULT NULL,
  `sdt` text DEFAULT NULL,
  `id_fb` text DEFAULT NULL,
  `linkfb` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `website` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `mo_ta` text DEFAULT NULL,
  `money` text DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `goi` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `xt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `anhbia` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `anhgoi` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uytin` varchar(999) NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `cards`
--

INSERT INTO `cards` (`id`, `code`, `username`, `stt`, `sdt`, `id_fb`, `linkfb`, `website`, `mo_ta`, `money`, `avatar`, `goi`, `xt`, `anhbia`, `anhgoi`, `uytin`, `status`) VALUES
(47, 'nguyen-duy-khanh', 'Nguyễn Duy Khánh', NULL, '0978009289', '100058502926153', 'https://www.facebook.com/dichvuright', 'dichvuright.com', '', '99999999', 'https://i.imgur.com/pSmTUxk.jpeg', '3', '1', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ten` text NOT NULL,
  `image` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `code`, `ten`, `image`) VALUES
(5, 'giao-dich-trung-gian-doi-tien', 'Giao dịch trung gian - đổi tiền', 'https://i.imgur.com/k6qNUqF.jpg'),
(6, 'dich-vu-mxh', 'Dịch Vụ MXH', 'https://i.imgur.com/cYUFEpu.jpg'),
(7, 'free-fire', 'Free Fire', 'https://toiuytin.com/storage/userfiles/files/tut/t%E1%BA%A3i%20xu%E1%BB%91ng%20(3).jpg'),
(8, 'lien-quan', 'Liên Quân', 'https://toiuytin.com/storage/userfiles/files/tut/t%E1%BA%A3i%20xu%E1%BB%91ng%20(1).jpg'),
(9, 'cay-game', 'cày Game', '/storage/userfiles/images/cay-game.jpg'),
(10, 'fifa04', 'FiFa04', '/storage/userfiles/images/fifa-o4.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvuuser`
--

CREATE TABLE `dichvuuser` (
  `id` int(11) NOT NULL,
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ten` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `dichvuuser`
--

INSERT INTO `dichvuuser` (`id`, `code`, `ten`, `image`) VALUES
(52, 'nguyen-duy-khanh', 'Giao dịch trung gian - đổi tiền,Dịch Vụ MXH,Free Fire,Liên Quân,cày Game,FiFa04', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nganhang`
--

CREATE TABLE `nganhang` (
  `id` int(11) NOT NULL,
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nganhang` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stk` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ngay` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ctk` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `nganhang`
--

INSERT INTO `nganhang` (`id`, `code`, `nganhang`, `stk`, `status`, `ngay`, `ctk`) VALUES
(34, 'nguyen-duy-khanh', 'MOMO,MBBank', '0978009289,6320079999', '', '24-02-2024', 'NGUYEN DUY KHANH,NGUYEN DUY KHANH');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `site_domain` text DEFAULT NULL,
  `site_logo` text DEFAULT NULL,
  `banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `site_tenweb` text DEFAULT NULL,
  `site_mota` text DEFAULT NULL,
  `facebook` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `linktele` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `sdt_admin` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `color` text DEFAULT NULL,
  `modal` text DEFAULT NULL,
  `site_gioithieu` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `site_dieukhoan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`id`, `site_domain`, `site_logo`, `banner`, `site_tenweb`, `site_mota`, `facebook`, `linktele`, `sdt_admin`, `color`, `modal`, `site_gioithieu`, `site_dieukhoan`) VALUES
(1, '/', 'https://i.imgur.com/nMxPgiz.png', 'https://i.imgur.com/nMxPgiz.png', 'Toiuytin.me', 'Hệ Thống Tố Cáo Lừa Đảo - Kiểm Tra Lừa Đảo - Kiểm Tra Giao Dịch Viên Uy Tín !!!!!', 'https://www.facebook.com/dichvuright', 'https://t.me/toiuytin', '0978009289', '#f04242', '<font color=\"#000000\"><span style=\"background-color: rgb(255, 255, 0);\">tưởng thế là ngầu hả cu </span></font>', '<h1 style=\"margin-bottom: 10px; font-family: Inter, Arial, Helvetica, sans-serif; --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\"><font color=\"#e74c3c\"><span style=\"caret-color: rgb(231, 76, 60);\">Tưởng Thế Là Ngầu&nbsp;</span></font></h1>', '<h1 style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-bottom: 10px; font-family: Inter, Arial, Helvetica, sans-serif;\"><font color=\"#e74c3c\"><span style=\"caret-color: rgb(231, 76, 60);\">Tưởng Thế Là Ngầu&nbsp;</span></font></h1>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `type` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` text NOT NULL,
  `sotien` varchar(555) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ly_do` text DEFAULT NULL,
  `danhmuc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(32) NOT NULL,
  `sdt` text DEFAULT NULL,
  `ngan_hang` text DEFAULT NULL,
  `stk` text DEFAULT NULL,
  `hoten_np` text DEFAULT NULL,
  `sdt_np` text DEFAULT NULL,
  `linkphot` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` text DEFAULT NULL,
  `view` varchar(225) DEFAULT NULL,
  `tanthanh` varchar(999) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ngay` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `ticket`
--

INSERT INTO `ticket` (`id`, `type`, `username`, `sotien`, `ly_do`, `danhmuc`, `status`, `sdt`, `ngan_hang`, `stk`, `hoten_np`, `sdt_np`, `linkphot`, `code`, `view`, `tanthanh`, `ngay`) VALUES
(13, 'Cá Nhân', 'DANG GIA KHIEM', '10000000', 'Mình có buôn nick qua ổng này, thấy bài check uy tín nên cũng tin tưởng bank qua ai ngờ block mình luôn. Cay đắng !! AE mua bán tránh xa nhé!', 'Nick game', 'scam', '0984221052', 'VCB', '0984221052', 'Phạm Tâm Khoa', ' 0333137890', 'https://www.facebook.com/profile.php?id=100076375037377', 'dang-gia-khiem', '143', '2', '13-01-2024'),
(14, 'Cá Nhân', 'Nguyen Thi Khanh Linh', '90000', 'Scam tiền đầu tư kéo tài xỉu fb nó Đức Thành', 'Đầu tư', 'scam', 'không biết', 'TPBANK', '25993456789', 'Bao Thong', '0987654321', '', 'nguyen-thi-khanh-linh', '262', '3', '13-01-2024'),
(15, 'Cá Nhân', 'PHAM BAO NAM', '300000', 'Chủ quan lần đầu giao dịch không biết tới gdtg, nên bị th này lừa oan mất 300k hicc :(( AE mua nick né né ak !!!', 'Nick game', 'scam', '0347398543', 'MB', '53210987654321', 'Trần Đình Nghiêm', ' 0979692321', '', 'pham-bao-nam', '127', '0', '13-01-2024'),
(16, 'Cá Nhân', 'Nguyễn Văn Trường', '44333000', 'mình chuyển khoản cho Ng Truong 44.333.000₫ mua USD, sau khi ck thì không thấy Ng Truong gửi USD đến hôm nay vẫn không liên lạc được với Ng Truong. mỗi ngày đều gọi điện có đổ chuông nhưng không nghe máy, facebook ngày 19 có online và đọc tin nhắn xong lại off, hôm nay lại thấy online nhưng vẫn ko rep. Nguyễn Văn Trường phone : 0984023298 bank : vietcombank 0731000680677', 'Tiền ảo', 'scam', '0984023298', 'VCB', '0731000680677', ' Nguyễn Văn Trường', '0363653093', '', 'nguyen-van-truong', '394', '3', '13-01-2024'),
(17, 'Cá Nhân', 'Nguyễn Ngọc Thanh', '1000', 'Giả dạng CA trên web hiển thị thông báo &quot;Máy tính của bạn đã bị khóa&quot; gây hoang mang\r\n\r\n', 'Lừa đảo, cờ bạc', 'scam', 'không biết', 'VCB', '0123642630', 'Doãn Hải Mi', '0958734321', '', 'nguyen-ngoc-thanh', '157', '17', '13-01-2024'),
(19, 'Cá Nhân', 'cc', '23232', 'cc', 'Thẻ cào, game', 'scam', '2323', 'VCB', '23423', 'cc', 'cc', 'cc', 'cc', '24', '1', '18-01-2024'),
(20, 'Website', 'Clmm88.me', '43000', 'Bú lòn', 'Bán hàng Online', 'scam', '02282992', 'VCB', '02298292', 'Phan', '0292929292', '202020', 'clmm88me', '36', '1', '19-01-2024'),
(22, 'Website', 'Checkscam.com', '1000000', 'Búnnogn e', 'Tài khoản MXH', 'scam', '0282829292', 'VCB', '028282929', 'Phan Văn em', '029292929', '', 'checkscamcom', '55', '4', '31-01-2024'),
(28, 'Website', 'https://subtocdo.com/', '10000', 'Nó Bú Mất 10000', 'Tài khoản MXH', 'scam', '0963114710', 'TCB', '5376099999', '4-23750236632', '326458423', '', 'httpssubtocdocom', '53', '7', '06-02-2024'),
(30, 'Cá Nhân', 'NGUYEN THANH MAI', '1000', 'Scam', 'Dịch vụ khác', 'scam', 'Khong biet', 'VCB', 'Khong biet', 'Cak', 'Khong biet', 'Scam', 'nguyen-thanh-mai', '0', '0', '23-02-2024'),
(31, 'Cá Nhân', 'BẢO AN', '500000', 'Scakmmmmm', 'Giao dịch trung gian', 'scam', '+84943212063', 'MB', '0769358987', 'Bảo An ', '+84943212063', '', 'bao-an', '1', '0', '24-02-2024'),
(32, 'Cá Nhân', 'DANG GIA KHIEM', '10000000', 'Mình có buôn nick qua ổng này, thấy bài check uy tín nên cũng tin tưởng bank qua ai ngờ block mình luôn. Cay đắng !! AE mua bán tránh xa nhé!', 'Nick game', 'scam', '0984221052', 'VCB', '0984221052', 'Phạm Tâm Khoa', ' 0333137890', 'https://www.facebook.com/profile.php?id=100076375037377', 'dang-gia-khiem', '143', '2', '13-01-2024'),
(33, 'Cá Nhân', 'Nguyen Thi Khanh Linh', '90000', 'Scam tiền đầu tư kéo tài xỉu fb nó Đức Thành', 'Đầu tư', 'scam', 'không biết', 'TPBANK', '25993456789', 'Bao Thong', '0987654321', '', 'nguyen-thi-khanh-linh', '262', '3', '13-01-2024'),
(34, 'Cá Nhân', 'PHAM BAO NAM', '300000', 'Chủ quan lần đầu giao dịch không biết tới gdtg, nên bị th này lừa oan mất 300k hicc :(( AE mua nick né né ak !!!', 'Nick game', 'scam', '0347398543', 'MB', '53210987654321', 'Trần Đình Nghiêm', ' 0979692321', '', 'pham-bao-nam', '127', '0', '13-01-2024'),
(35, 'Cá Nhân', 'Nguyễn Văn Trường', '44333000', 'mình chuyển khoản cho Ng Truong 44.333.000₫ mua USD, sau khi ck thì không thấy Ng Truong gửi USD đến hôm nay vẫn không liên lạc được với Ng Truong. mỗi ngày đều gọi điện có đổ chuông nhưng không nghe máy, facebook ngày 19 có online và đọc tin nhắn xong lại off, hôm nay lại thấy online nhưng vẫn ko rep. Nguyễn Văn Trường phone : 0984023298 bank : vietcombank 0731000680677', 'Tiền ảo', 'scam', '0984023298', 'VCB', '0731000680677', ' Nguyễn Văn Trường', '0363653093', '', 'nguyen-van-truong', '394', '3', '13-01-2024'),
(36, 'Cá Nhân', 'Nguyễn Ngọc Thanh', '1000', 'Giả dạng CA trên web hiển thị thông báo &quot;Máy tính của bạn đã bị khóa&quot; gây hoang mang\r\n\r\n', 'Lừa đảo, cờ bạc', 'scam', 'không biết', 'VCB', '0123642630', 'Doãn Hải Mi', '0958734321', '', 'nguyen-ngoc-thanh', '157', '17', '13-01-2024'),
(37, 'Cá Nhân', 'cc', '23232', 'cc', 'Thẻ cào, game', 'scam', '2323', 'VCB', '23423', 'cc', 'cc', 'cc', 'cc', '24', '1', '18-01-2024'),
(38, 'Website', 'Clmm88.me', '43000', 'Bú lòn', 'Bán hàng Online', 'scam', '02282992', 'VCB', '02298292', 'Phan', '0292929292', '202020', 'clmm88me', '36', '1', '19-01-2024'),
(39, 'Website', 'Checkscam.com', '1000000', 'Búnnogn e', 'Tài khoản MXH', 'scam', '0282829292', 'VCB', '028282929', 'Phan Văn em', '029292929', '', 'checkscamcom', '55', '4', '31-01-2024'),
(40, 'Website', 'https://subtocdo.com/', '10000', 'Nó Bú Mất 10000', 'Tài khoản MXH', 'scam', '0963114710', 'TCB', '5376099999', '4-23750236632', '326458423', '', 'httpssubtocdocom', '53', '7', '06-02-2024'),
(41, 'Cá Nhân', 'NGUYEN THANH MAI', '1000', 'Scam', 'Dịch vụ khác', 'scam', 'Khong biet', 'VCB', 'Khong biet', 'Cak', 'Khong biet', 'Scam', 'nguyen-thanh-mai', '0', '0', '23-02-2024');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `anh` varchar(255) NOT NULL,
  `data` varchar(32) DEFAULT NULL,
  `view` varchar(225) DEFAULT '0',
  `status` varchar(50) NOT NULL DEFAULT 'xuly',
  `time` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`id`, `title`, `note`, `anh`, `data`, `view`, `status`, `time`) VALUES
(11, 'DichVuRight.Com Website bán mã nguồn Uy Tín Số 1 VN', '<p>dichvuright.com&nbsp;</p>', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTr1OI0Qm6JhUtVYPTmnaiFoWq9eHXMxoOpAQ&usqp=CAU', 'dichvurightcom-website-ban-ma-ng', '40', 'hoantat', '2024-02-02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `username` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `password` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `level` varchar(32) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `email_sdt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `fullname` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `create_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `code`, `username`, `password`, `level`, `email_sdt`, `fullname`, `create_date`) VALUES
(1, '@dichvuright', 'admin', 'admin', 'duykhanh', '03484937485', 'Nguyen Duy Khanh', '2023-01-12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `usersctv`
--

CREATE TABLE `usersctv` (
  `id` int(11) NOT NULL,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `usersctv`
--

INSERT INTO `usersctv` (`id`, `username`, `password`) VALUES
(59, 'baoan', 'baoan');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bangchung`
--
ALTER TABLE `bangchung`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `dichvuuser`
--
ALTER TABLE `dichvuuser`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nganhang`
--
ALTER TABLE `nganhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `usersctv`
--
ALTER TABLE `usersctv`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bangchung`
--
ALTER TABLE `bangchung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `dichvuuser`
--
ALTER TABLE `dichvuuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `nganhang`
--
ALTER TABLE `nganhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `usersctv`
--
ALTER TABLE `usersctv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
