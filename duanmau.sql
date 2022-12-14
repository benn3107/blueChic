-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th6 07, 2022 lúc 07:26 AM
-- Phiên bản máy phục vụ: 5.7.36
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET armscii8 NOT NULL,
  `password` varchar(255) CHARACTER SET armscii8 NOT NULL,
  `email` varchar(225) CHARACTER SET armscii8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hinh` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `iduser` int(11) NOT NULL,
  `idsp` int(11) NOT NULL,
  `noidung` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `postdate` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `iddanhmuc` int(11) NOT NULL AUTO_INCREMENT,
  `tendanhmuc` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  PRIMARY KEY (`iddanhmuc`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`iddanhmuc`, `tendanhmuc`) VALUES
(1, 'BALO'),
(2, 'VALI KÉO'),
(3, 'TÚI XÁCH'),
(4, 'CẶP CÁC LOẠI'),
(5, 'PHỤ KIỆN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE IF NOT EXISTS `sanpham` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hinh` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `tensp` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `gia` int(11) NOT NULL,
  `iddanhmuc` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `hinh`, `tensp`, `gia`, `iddanhmuc`) VALUES
(1, 'balo_a_city_2_Dgrey.jpg', 'Balo laptop Simplecarry A-City 2 Grey', 670000, 1),
(2, 'balo_tomtoc_A81_black.jpg', 'Balo Tomtoc FLIX HT APPROVED 40L 17.3\" Black A81-F01D', 2449000, 1),
(3, 'balo_khoa_so_reeyee_ha_noi.jpg', 'Balo laptop khóa số Reeyee RY1007 Black', 1200000, 1),
(4, 'balo_simplecarry_p9.jpg', 'Balo Simplecarry P9 Grey', 799000, 1),
(5, 'balo_sakos_hero_xanh_phoi_nau.png', 'Balo laptop Sakos i15 Hero xanh phối nâu', 1342000, 1),
(6, 'balo_laptop_tresette_5c205sz_mau_tim.jpg', 'Balo Tresette 5C205SZ Purple', 960000, 1),
(7, 'balo_mikkor_the_eli_mau_xanh_navy2_thumb.png', 'Balo Laptop Mikkor The Eli Backpack Navy', 649000, 1),
(8, 'balo_tomtoc__a71_d01g01_pink_2.jpg', 'Balo Tomtoc Unisex travel MB Pro 15\" Pink A71-D01C01', 755300, 1),
(9, 'balo_simplecarry_issac2_navy_.jpg', 'Balo nam nữ Simplecarry ISSAC 2 L.Navy', 540000, 1),
(10, 'balo_mikkor_gib_graphite_2.png', 'Balo Laptop Mikkor The Gibson Graphite', 1290000, 1),
(11, 'balo_credo_5_red2.jpg', 'Balo Simplecarry Credo 5 Red', 400000, 1),
(12, 'balo_k7_black1.jpg', 'Balo nam nữ Simplecarry K7 Black', 690000, 1),
(13, 'vali_keo_essenza_20_inch_xanh_ngoc_26_inch.png', 'Vali kéo Sakos Essenza 26 Xanh ngọc', 1015000, 2),
(14, 'vali_z26_vang.png', 'Vali kéo Stargo Diamant Z22 Gold', 945000, 2),
(15, 'vali_sakos_garnet_z26_mau_xam.png', 'Vali kéo Sakos GARNET Z26 Grey', 1595000, 2),
(16, 'vali_keo_stargo_Diamant_den_26.png', 'Vali kéo Stargo Diamant 26 Black', 1100000, 2),
(17, 'vali_keo_sakos__Paralle_30_xanh.png', 'Vali kéo Sakos Paralle 30 Blue', 2150000, 2),
(18, 'vali_z22_do.png', 'Vali kéo Sakos Essenza 22 Red', 950000, 2),
(19, 'vali_keo_chong_suoc.png', 'Vali kéo Stargo Xavan Z22 màu đen', 990000, 2),
(20, 'vali_katana_z26_bk_h01_thumb.png', 'Vali kéo nhựa Stargo KATANA Z26 Black', 1015000, 2),
(21, 'vali_keo_nhua_sakos_katana_z26_xanh_navy_thumb.png', 'Vali kéo nhựa Stargo KATANA Z26 Navy', 1015000, 2),
(22, 'vali_keo_nhua_sakos_katana_z22_xanh_blue_thumb.png', 'Vali kéo nhựa Stargo KATANA Z22 Blue', 1015000, 2),
(23, 'vali_keo_nhua_stargo_xavan_z22_den_thumb.jpg', 'Vali kéo Sakos Essenza 22 Black', 995000, 2),
(24, 'vali_keo_nhua_stargo_xavan_z22_xanh_thumb.jpg', 'Vali kéo Stargo Xavan Z22 màu xanh', 990000, 2),
(25, 'tui_deo_macbook_tomto_H14_C01G_mau_xam.png', 'Túi đeo chéo Tomtoc Urban Ultrabook 13\" Gray H14-C01G', 1539000, 3),
(26, 'tui_simplecarry_credo_city_pouch_mau_do1.jpg', 'Túi đeo Simplecarry Credo City Pouch Red', 340000, 3),
(27, 'tui_sd5_black_1.jpg', 'Túi du lịch Simplecarry Duffle SD5 Black', 749000, 3),
(28, 'tui_sd3_blue.jpg', 'Túi du lịch Simplecarry Duffle SD3 Castle Rock', 640000, 3),
(29, 'tui_trong_sd2_xam.jpg', 'Túi du lịch Simplecarry Duffle SD2 Castle Rock', 640000, 3),
(30, 'tui_deo_cheo_tomtoc_h14_black_15_inch.jpg', 'Túi đeo chéo Tomtoc Urban Ultrabook 15\" Black H14-E02D', 1790000, 3),
(31, 'tui_dung_passport_simplecarry_bag_camo1_thumb.png', 'Túi đựng Passport Simplecarry unicam', 169000, 3),
(32, 'tui_du_lich_s_Gigant_nau.png', 'Túi du lịch cần kéo Sakos Gigant Nâu', 1320000, 3),
(33, 'tui_cap_tomtoc_A25_E01G.jpg', 'Túi đeo chéo Tomtoc Eva for Macbook Pro Gray A25-E01G', 1199000, 3),
(34, 'tui_du_lich_trek_khaki.jpg', 'Túi du lịch phối da Sakos Trek màu Khaki Rêu', 950000, 3),
(35, 'tui_du_lich_reeyee_3006_anh.jpg', 'Túi du lịch Reeyee 3006', 1150000, 3),
(36, 'tui_du_lich_reeyee_3007_f.jpg', 'Túi du lịch Reeyee 3007', 1155000, 3),
(37, 'Cap_so_Prince__70248-removebg-preview.png', 'Cặp số Prince 70248', 1080000, 4),
(38, 'cap_laptop_balos_alpha_3_loai_15_6_inch.jpg', 'Cặp laptop Balos Alpha 3 loại 15.6 inch', 640000, 4),
(39, 'cap_cong_so_laptop_sakos_legend_02_ng01_Den_soc.jpg', 'Cặp công sở laptop Sakos Legend 02 NG01 Đen sọc', 1690000, 4),
(40, 'cap_solo_cao_cap_nau.jpg', 'Cặp Laptop Solo 15.6\" Bradford Nâu- EXE336-3', 2450000, 4),
(41, 'cap_gco_002_br_h01.jpg', 'Cặp laptop Stargo Dranken 5 i14 đen phối đỏ', 500000, 4),
(42, 'cap_gco_002_bg_h01.jpg', 'Cặp laptop Stargo Dranken 5 i14 đen vàng chanh', 500000, 4),
(43, 'cap_laptop_dranken_7_den_phoi_vang_chanh.jpg', 'Cặp laptop Stargo Dranken 7 i14 đen vàng chanh', 500000, 4),
(44, 'cap_kco_026_br_h01.jpg', 'Cặp laptop Sakos Amery i14 đen phối đỏ', 640000, 4),
(45, 'cap_laptop_mong_sakos_xanh.png', 'Cặp Laptop Stargo Ledger Xanh Navy', 199000, 4),
(46, 'cap_mikkor_the_ralph_briefcase_black11_550x550.jpg', 'Cặp Laptop Mikkor The Ralph Briefcase Black', 690000, 4),
(47, 'cap_van_phong_bestlife_simple_capacity2.jpg', 'Cặp laptop Bestlife Simple Capacity 15.6 Đen BBC3312', 835000, 4),
(48, 'cap_bestlife_business_mau_xam1.jpg', 'Cặp laptop Bestlife Business 15.6 Xám BBC3246IG', 315000, 4),
(49, 'phukien_hop_dung_but_penbox_red_700x700.jpg', 'Túi đựng bút Mikkor The Penbox Red', 149000, 5),
(50, 'phukien_tui_khoa_keo.jpg', 'Túi khóa kéo đa năng FC4100-B8 120x90mm', 35000, 5),
(51, 'phukien_tui_lunch_box_bag_navy1.jpg', 'Túi Lunch Box Bag Navy', 95000, 5),
(52, 'phukien_tui_garment_bag.png', 'Túi đựng áo Vest Garment Bag', 490000, 5),
(53, 'phukien_tui_lunch_box_bag_purple1.jpg', 'Túi Lunch Box Bag Purple', 95000, 5),
(54, 'phukien_vi_cam_tay_sakos_compact_do.png', 'Túi công cụ đa năng Compact Màu Đỏ', 149000, 5),
(55, 'phukien_vi_cam_tay_sakos_compact_hong.png', 'Túi công cụ đa năng Compact Màu Hồng', 149000, 5),
(56, 'phukien_tui_bao_tu_tomtoc.png', 'Túi bao tử Tomtoc Basic Unisex Black A01-006D', 590000, 5),
(57, 'phukien_kanken_hippack.png', 'Túi bao tử kanken hippack nhiều màu', 230000, 5),
(58, 'phukien_tui_bao_tu_credo_sling_3_do.jpg', 'Túi bao tử Credo Sling 3 BGD màu đỏ', 440000, 5),
(59, 'phukien_vi_cam_tay_ezra_wallet_graphite_700x700.jpg', 'Ví cầm tay Mikkor The Ezra Wallet Graphite', 245000, 5),
(60, 'phukien_hu_mw_cs1_rfid_coc_4.jpg', 'Ví Magic Hunterson Classic Cognac HUNCS1', 1200000, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `name` varchar(225) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `avata` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `email`, `avata`) VALUES
(33, 'huy1', '123', 'Nguyễn Quang Huy', 'josephhuy19082002@gmail.com', 'avata.jpg'),
(37, 'buihuy1', '123', 'Bùi Đức Huy', 'huydeptrai19062002@gmail.com', '302214cdf2bb3ee567aa.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
