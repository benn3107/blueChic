-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 14, 2022 lúc 06:30 AM
-- Phiên bản máy phục vụ: 8.0.27
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duanmau`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `email` varchar(225) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(1, 'admin', '12345', 'josephhuy19062002@gmail.com'),
(2, 'QuangHuy', '123', 'josephhuy19062002@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

DROP TABLE IF EXISTS `binhluan`;
CREATE TABLE IF NOT EXISTS `binhluan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hinh` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `iduser` int NOT NULL,
  `idsp` int NOT NULL,
  `noidung` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `postdate` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `hinh`, `iduser`, `idsp`, `noidung`, `postdate`, `name`) VALUES
(10, 'avata.jpg', 33, 11, 'sản phẩm tốt', '04/06/2022', 'Nguyễn Quang Huy'),
(12, '302214cdf2bb3ee567aa.jpg', 37, 12, 'Chất lượng tốt', '04/06/2022', 'Bùi Đức Huy'),
(13, '302214cdf2bb3ee567aa.jpg', 37, 11, 'giá cả hợp lý với chất lượng\r\n', '04/06/2022', 'Bùi Đức Huy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

DROP TABLE IF EXISTS `danhmuc`;
CREATE TABLE IF NOT EXISTS `danhmuc` (
  `iddanhmuc` int NOT NULL AUTO_INCREMENT,
  `tendanhmuc` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  PRIMARY KEY (`iddanhmuc`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`iddanhmuc`, `tendanhmuc`) VALUES
(1, 'Acer'),
(2, 'Asus'),
(3, 'HP'),
(4, 'Msi'),
(5, 'Mac');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE IF NOT EXISTS `sanpham` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hinh` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `tensp` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `gia` int NOT NULL,
  `iddanhmuc` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `hinh`, `tensp`, `gia`, `iddanhmuc`) VALUES
(1, 'Laptop Acer Aspire 3 A315-56-37DV NX.HS5SV.png', 'Laptop Acer Aspire 3 A315-56-37DV NX.HS5SV', 22300000, 1),
(2, 'Laptop Acer Aspire 5 A515-55-35SE.png', 'Laptop Acer Aspire 5 A515-55-35SE', 22000000, 1),
(3, 'Laptop Acer Gaming Nitro 5 Eagle AN515-57-71VV NH.QENSV.005.jpg', 'Laptop Acer Gaming Nitro 5 Eagle AN515-57-71VV NH.QENSV.005', 22000000, 1),
(10, 'Laptop Gaming Acer Nitro 5 Tiger AN515 58 52SP.jpg', 'Laptop Gaming Acer Nitro 5 Tiger AN515 58 52SP', 22900000, 1),
(21, 'Laptop Asus Gaming Rog Strix G15 G513IH HN015W.png', 'Laptop Asus Gaming Rog Strix G15 G513IH HN015W', 19015000, 2),
(22, 'Laptop ASUS VivoBook A515EA-BQ1530W.jpg', 'Laptop ASUS VivoBook A515EA-BQ1530W', 13150000, 2),
(23, 'Laptop Asus Vivobook Flip 14 TP470EA EC346W.jpg', 'Laptop Asus Vivobook Flip 14 TP470EA EC346W', 1340000, 2),
(24, 'Laptop Asus Zenbook UX425EA-KI839W.png', 'Laptop Asus Zenbook UX425EA-KI839W', 15900000, 2),
(33, 'Laptop HP 14-CF2033WM 3V7G4UA.jpg', 'Laptop HP 14-CF2033WM 3V7G4UA', 11990000, 3),
(34, 'Laptop HP 15S-FQ5080TU 6K7A0PA.png', 'Laptop HP 15S-FQ5080TU 6K7A0PA', 9500000, 3),
(35, 'Laptop HP DQ2031TG.png', 'Laptop HP DQ2031TG', 11500000, 3),
(36, 'Laptop HP Gaming Victus 16-E0175AX 4R0U8PA.png', 'Laptop HP Gaming Victus 16-E0175AX 4R0U8PA', 13500000, 3),
(45, 'Laptop Gaming MSI Bravo 15 B5DD 276VN.png', 'Laptop Gaming MSI Bravo 15 B5DD 276VN', 19900000, 4),
(46, 'Laptop MSI Crosshair 15 B12UEZ-460VN.png', 'Laptop MSI Crosshair 15 B12UEZ-460VN', 12000000, 4),
(47, 'Laptop MSI Katana GF66 11UD-696VN.png', 'Laptop MSI Katana GF66 11UD-696VN', 16200000, 4),
(48, 'Laptop MSI Modern 14 B5M 203VN.png', 'Laptop MSI Modern 14 B5M 203VN', 11900000, 4),
(57, 'Apple MacBook Air M1 256GB 2020.png', 'Apple MacBook Air M1 256GB 2020', 23000000, 5),
(58, 'Apple Macbook Air M2 2022 8GB 256GB.png', 'Apple Macbook Air M2 2022 8GB 256GB', 24400000, 5),
(59, 'Apple Macbook Pro 13 M2 2022 8GB 256GB.png', 'Apple Macbook Pro 13 M2 2022 8GB 256GB', 29500000, 5),
(60, 'Macbook Pro 14 M1 Pro 10 CPU - 16 GPU 16GB 1TB 2021.png', 'Macbook Pro 14 M1 Pro 10 CPU - 16 GPU 16GB 1TB 2021', 39000000, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `name` varchar(225) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `avata` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `email`, `avata`) VALUES
(33, 'huy1', '123', 'Nguyễn Quang Huy', 'josephhuy19082002@gmail.com', 'avata.jpg'),
(37, 'buihuy1', '123', 'Bùi Đức Huy', 'huydeptrai19062002@gmail.com', '302214cdf2bb3ee567aa.jpg'),
(38, 'ben', '123', 'ben1', 'ben@gmail.com', '123'),
(43, '1', '123', '1', '1@gmail.com', '123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
