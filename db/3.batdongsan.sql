-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th7 09, 2018 lúc 04:42 PM
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `batdongsan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `laws`
--

CREATE TABLE `laws` (
  `articleid` int(11) NOT NULL,
  `articlegroup` int(11) NOT NULL,
  `subject` mediumtext NOT NULL,
  `description` text NOT NULL,
  `slug` mediumtext NOT NULL,
  `avatar` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `seo_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL,
  `datecreated` datetime NOT NULL,
  `article_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `laws`
--

INSERT INTO `laws` (`articleid`, `articlegroup`, `subject`, `description`, `slug`, `avatar`, `seo_title`, `seo_description`, `active`, `datecreated`, `article_order`) VALUES
(1, 1, 'test', '', '', '', '', '', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lawsgroups`
--

CREATE TABLE `lawsgroups` (
  `groupid` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `group_slug` varchar(300) DEFAULT NULL,
  `description` mediumtext,
  `active` tinyint(4) NOT NULL,
  `group_order` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `lawsgroups`
--

INSERT INTO `lawsgroups` (`groupid`, `name`, `group_slug`, `description`, `active`, `group_order`) VALUES
(1, 'Phú Quốc', 'phu-quoc', '', 1, 1),
(2, 'Vân Đồn', 'van-don', '', 1, 2),
(3, 'Bắc Vân Phong', 'bac-van-phong', '', 1, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `articleid` int(11) NOT NULL,
  `articlegroup` int(11) NOT NULL,
  `subject` mediumtext NOT NULL,
  `description` text NOT NULL,
  `slug` mediumtext NOT NULL,
  `avatar` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `seo_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL,
  `datecreated` datetime NOT NULL,
  `article_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newsgroups`
--

CREATE TABLE `newsgroups` (
  `groupid` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `group_slug` varchar(300) DEFAULT NULL,
  `description` mediumtext,
  `active` tinyint(4) NOT NULL,
  `group_order` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `property`
--

CREATE TABLE `property` (
  `property_id` int(11) NOT NULL,
  `property_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_avatar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `property_category_id` int(11) NOT NULL,
  `property_type_id` int(11) NOT NULL,
  `property_location_id` int(11) NOT NULL,
  `property_status` int(11) NOT NULL,
  `property_price` int(11) NOT NULL,
  `property_bedroom` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `property_bathroom` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `property_acreage` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `property_facade` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `property_slug` text NOT NULL,
  `property_seo_title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `property_seo_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `property_created_at` datetime DEFAULT NULL,
  `property_active` int(11) NOT NULL,
  `property_stick` int(11) NOT NULL DEFAULT '0',
  `property_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `property`
--

INSERT INTO `property` (`property_id`, `property_name`, `property_avatar`, `property_content`, `property_category_id`, `property_type_id`, `property_location_id`, `property_status`, `property_price`, `property_bedroom`, `property_bathroom`, `property_acreage`, `property_facade`, `property_slug`, `property_seo_title`, `property_seo_description`, `property_created_at`, `property_active`, `property_stick`, `property_order`) VALUES
(1, 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', 'http://batdongsan.local/media/20180706182443-fb3e_wm.jpg', '<span>Do chuyển sang mua liền kề n&ecirc;n m&igrave;nh cần b&aacute;n nh&agrave;:</span><br /><span>1. Sổ hồng ch&iacute;nh chủ.</span><br /><span>2. Diện t&iacute;ch: 67m2.</span><br /><span>3. Đ&uacute;c 3 tấm.</span><br /><span>4. Vị tr&iacute; ngay chợ đầu mối H&oacute;c M&ocirc;n.</span><br /><span>5. Nh&agrave; mới x&acirc;y rất đẹp.</span><br /><span>6. Nh&agrave; hướng nam rất m&aacute;t.</span><br /><span>7. Ng&otilde; th&ocirc;ng - xe hơi v&ocirc; tận nh&agrave;.</span><br /><span>8. H&ograve;n non bộ phong thủy.</span><br /><span>9. Hệ thống b&aacute;o trộm đột nhập qua ĐT.</span><br /><span>10. Full nội thất.</span><br /><span>11. 4 camera an ninh.</span><br /><span>12. 5 ph&ograve;ng ngủ - 4 WC.</span><br /><span>Gi&aacute; b&aacute;n 3.1 tỷ - Li&ecirc;n hệ 0942.686.686.</span>', 1, 9, 1, 1, 0, '5', '3', '100', '4', 'ban-nha-1-tret-2-lau-duc-3-tam', 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', '2018-07-08 10:58:33', 1, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `property_categories`
--

CREATE TABLE `property_categories` (
  `category_id` int(11) NOT NULL,
  `category_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` text NOT NULL,
  `category_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_active` int(11) NOT NULL,
  `category_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `property_categories`
--

INSERT INTO `property_categories` (`category_id`, `category_name`, `category_slug`, `category_description`, `category_active`, `category_order`) VALUES
(1, 'Nhà đất bán', 'nha-dat-ban', '', 1, 1),
(2, 'Nhà đất cho thuê', 'nha-dat-cho-thue', '', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `property_characteristics`
--

CREATE TABLE `property_characteristics` (
  `characteristic_id` int(11) NOT NULL,
  `characteristic_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `characteristic_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `characteristic_slug` text NOT NULL,
  `characteristic_active` int(11) NOT NULL,
  `characteristic_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `property_characteristics`
--

INSERT INTO `property_characteristics` (`characteristic_id`, `characteristic_name`, `characteristic_description`, `characteristic_slug`, `characteristic_active`, `characteristic_order`) VALUES
(1, 'Có sân vườn', '', 'co-san-vuon', 1, 1),
(2, 'Full đồ & Nội thất', '', 'full-do-noi-that', 1, 2),
(3, ' Sổ đỏ chính chủ', '', 'so-do-chinh-chu', 1, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `property_characteristic_metas`
--

CREATE TABLE `property_characteristic_metas` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `characteristic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `property_characteristic_metas`
--

INSERT INTO `property_characteristic_metas` (`id`, `property_id`, `characteristic_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `property_contacts`
--

CREATE TABLE `property_contacts` (
  `contact_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `contact_name` text NOT NULL,
  `contact_phone` text NOT NULL,
  `contact_email` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_message` text NOT NULL,
  `contact_status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `property_images`
--

CREATE TABLE `property_images` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `image_name` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `property_images`
--

INSERT INTO `property_images` (`id`, `property_id`, `image_name`) VALUES
(1, 1, 'http://batdongsan.local/media/20180706182442-f6fb_wm.jpg'),
(2, 1, 'http://batdongsan.local/media/20180706182443-c423_wm.jpg'),
(3, 1, 'http://batdongsan.local/media/20180706182443-fb3e_wm.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `property_locations`
--

CREATE TABLE `property_locations` (
  `location_id` int(11) NOT NULL,
  `location_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_slug` text NOT NULL,
  `location_active` int(11) NOT NULL,
  `location_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `property_locations`
--

INSERT INTO `property_locations` (`location_id`, `location_name`, `location_description`, `location_slug`, `location_active`, `location_order`) VALUES
(1, 'Phú Quốc', '', 'phu-quoc', 1, 1),
(2, 'Vân Đồn', '', 'van-don', 1, 2),
(3, 'Bắc Vân Phong', '', 'bac-van-phong', 1, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `property_types`
--

CREATE TABLE `property_types` (
  `type_id` int(11) NOT NULL,
  `type_category_id` int(11) NOT NULL,
  `type_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_slug` text NOT NULL,
  `type_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_active` int(11) NOT NULL,
  `type_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `property_types`
--

INSERT INTO `property_types` (`type_id`, `type_category_id`, `type_name`, `type_slug`, `type_description`, `type_active`, `type_order`) VALUES
(1, 2, 'Cho thuê nhà mặt phố', 'cho-thue-nha-mat-pho', '', 1, 1),
(2, 2, 'Cho thuê nhà kho, nhà xưởng, đất', 'cho-thue-nha-kho-nha-xuong-dat', '', 1, 2),
(3, 2, 'Cho thuê cửa hàng kiot', 'cho-thue-cua-hang-kiot', '', 1, 3),
(4, 2, 'Cho thuê condotel', 'cho-thue-condotel', '', 1, 4),
(5, 2, 'Cho thuê căn hộ chung cư', 'cho-thue-can-ho-chung-cu', '', 1, 5),
(6, 2, 'Cho thuê biệt thự', 'cho-thue-biet-thu', '', 1, 6),
(7, 2, 'Cho thuê bất động sản khác', 'cho-thue-bat-dong-san-khac', '', 1, 7),
(8, 1, ' Bán shophouse', 'ban-shophouse', '', 1, 8),
(9, 1, 'Bán resort', 'ban-resort', '', 1, 9),
(10, 1, 'Bán nhà riêng', 'ban-nha-rieng', '', 1, 10),
(11, 1, 'Bán nhà mặt phố', 'ban-nha-mat-pho', '', 1, 11),
(12, 1, 'Bán nhà kho ,xưởng', 'ban-nha-kho-xuong', '', 1, 12),
(13, 1, 'Bán khu nghỉ dưỡng', 'ban-khu-nghi-duong', '', 1, 13),
(14, 1, 'Bán khách sạn', 'ban-khach-san', '', 1, 14),
(16, 1, 'Bán đất nền', 'ban-dat-nen', '', 1, 16),
(17, 1, 'Bán cửa hàng, kiot', 'ban-cua-hang-kiot', '', 1, 17),
(18, 1, 'Bán condotel', 'ban-condotel', '', 1, 18),
(19, 1, 'Bán căn hộ chung cư', 'ban-can-ho-chung-cu', '', 1, 19),
(20, 1, 'Bán biệt thự', 'ban-biet-thu', '', 1, 20),
(21, 1, 'Bán bất động sản khác', 'ban-bat-dong-san-khac', '', 1, 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblactivitylog`
--

CREATE TABLE `tblactivitylog` (
  `id` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `date` datetime NOT NULL,
  `staffid` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblactivitylog`
--

INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES
(1, 'Failed Login Attempt [Email:midi9x@gmail.com, Is Staff Member:No, IP:127.0.0.1]', '2018-06-17 17:13:58', NULL),
(2, 'New Article Group Added [GroupID: 1]', '2018-06-18 20:59:44', 'Dinh Nguyen'),
(3, 'New Article Added [ArticleID: 1 GroupID: 1]', '2018-06-18 20:59:53', 'Dinh Nguyen'),
(4, 'Failed Login Attempt [Email:midi9x@gmail.com, Is Staff Member:No, IP:127.0.0.1]', '2018-06-23 11:39:10', 'Dinh Nguyen'),
(5, 'Article Group Updated [GroupID: 1]', '2018-06-23 14:18:39', 'Dinh Nguyen'),
(6, 'Article Group Updated [GroupID: 1]', '2018-06-23 14:27:23', 'Dinh Nguyen'),
(7, 'Article Updated [ArticleID: 1]', '2018-06-23 15:11:01', 'Dinh Nguyen'),
(8, 'Article Updated [ArticleID: 1]', '2018-06-23 15:11:11', 'Dinh Nguyen'),
(9, 'Article Updated [ArticleID: 1]', '2018-06-23 15:20:20', 'Dinh Nguyen'),
(10, 'New Property Added [ArticleID: 2 Cat Id: ]', '2018-06-23 15:22:44', 'Dinh Nguyen'),
(11, 'New Property Added [ArticleID: 3 Cat Id: ]', '2018-06-23 15:23:08', 'Dinh Nguyen'),
(12, 'Article Deleted [ArticleID: 2]', '2018-06-23 15:26:05', 'Dinh Nguyen'),
(13, 'Article Status Changed [CatID: 1 Status: 1]', '2018-06-23 15:33:54', 'Dinh Nguyen'),
(14, 'Article Status Changed [CatID: 1 Status: 0]', '2018-06-23 15:34:01', 'Dinh Nguyen'),
(15, 'Article Status Changed [CatID: 2 Status: 1]', '2018-06-23 15:35:17', 'Dinh Nguyen'),
(16, 'Category Group Deleted', '2018-06-23 15:35:26', 'Dinh Nguyen'),
(17, 'Article Group Updated [CatID: 1]', '2018-06-23 15:40:00', 'Dinh Nguyen'),
(18, 'Article Group Updated [CatID: 1]', '2018-06-23 15:42:36', 'Dinh Nguyen'),
(19, 'Article Group Updated [CatID: 1]', '2018-06-23 15:42:45', 'Dinh Nguyen'),
(20, 'New Article Group Added [CatID: 3]', '2018-06-23 15:43:50', 'Dinh Nguyen'),
(21, 'New Property Added [ArticleID: 4 Cat Id: ]', '2018-06-23 15:44:13', 'Dinh Nguyen'),
(22, 'Failed Login Attempt [Email:midi9x@gmail.com, Is Staff Member:No, IP:127.0.0.1]', '2018-06-23 18:09:37', 'Dinh Nguyen'),
(23, 'Article Status Changed [CatID: 3 Status: 0]', '2018-06-24 08:36:46', 'Dinh Nguyen'),
(24, 'Article Group Updated [CatID: 3]', '2018-06-24 08:37:04', 'Dinh Nguyen'),
(25, 'New Property Added [ArticleID: 5 Cat Id: ]', '2018-06-24 08:37:57', 'Dinh Nguyen'),
(26, 'New Article Group Added [CatID: 4]', '2018-06-24 08:38:17', 'Dinh Nguyen'),
(27, 'New Article Group Added [CatID: 5]', '2018-06-24 08:38:25', 'Dinh Nguyen'),
(28, 'Article Status Changed [CatID: 3 Status: 0]', '2018-06-24 09:29:25', 'Dinh Nguyen'),
(29, 'Article Group Updated [CatID: 3]', '2018-06-24 09:29:40', 'Dinh Nguyen'),
(30, 'Type Status Changed [ID: 1 Status: 1]', '2018-06-24 09:42:45', 'Dinh Nguyen'),
(31, 'Type Status Changed [ID: 1 Status: 0]', '2018-06-24 09:42:52', 'Dinh Nguyen'),
(32, 'Type Status Changed [ID: 1 Status: 1]', '2018-06-24 09:43:56', 'Dinh Nguyen'),
(33, 'New Article Group Added [GroupID: 2]', '2018-06-24 09:47:04', 'Dinh Nguyen'),
(34, 'New Article Group Added [CatID: 6]', '2018-06-24 09:47:17', 'Dinh Nguyen'),
(35, 'New Article Group Added [CatID: 7]', '2018-06-24 09:51:39', 'Dinh Nguyen'),
(36, 'New Type [ID: 2]', '2018-06-24 10:01:29', 'Dinh Nguyen'),
(37, 'New Type [ID: 3]', '2018-06-24 10:01:30', 'Dinh Nguyen'),
(38, 'New Type [ID: 4]', '2018-06-24 10:01:36', 'Dinh Nguyen'),
(39, 'Updated Type [ID: 1]', '2018-06-24 10:10:06', 'Dinh Nguyen'),
(40, 'New Type [ID: 5]', '2018-06-24 10:10:48', 'Dinh Nguyen'),
(41, 'Type Status Changed [ID: 5 Status: 1]', '2018-06-24 10:10:58', 'Dinh Nguyen'),
(42, 'New Type [ID: 6]', '2018-06-24 10:11:08', 'Dinh Nguyen'),
(43, 'New location [ID: 1]', '2018-06-24 10:28:39', 'Dinh Nguyen'),
(44, 'New location [ID: 2]', '2018-06-24 10:29:35', 'Dinh Nguyen'),
(45, 'New location [ID: 3]', '2018-06-24 10:30:18', 'Dinh Nguyen'),
(46, 'New location [ID: 4]', '2018-06-24 10:32:35', 'Dinh Nguyen'),
(47, 'Location Status Changed [ID: 4 Status: 0]', '2018-06-24 10:32:42', 'Dinh Nguyen'),
(48, 'Updated location [ID: 4]', '2018-06-24 10:32:53', 'Dinh Nguyen'),
(49, 'Updated location [ID: 4]', '2018-06-24 10:32:57', 'Dinh Nguyen'),
(50, 'New characteristic [ID: 1]', '2018-06-24 10:37:54', 'Dinh Nguyen'),
(51, 'New characteristic [ID: 2]', '2018-06-24 10:39:11', 'Dinh Nguyen'),
(52, 'Characteristic Status Changed [ID: 2 Status: 0]', '2018-06-24 10:39:12', 'Dinh Nguyen'),
(53, 'Updated characteristic [ID: 2]', '2018-06-24 10:39:22', 'Dinh Nguyen'),
(54, 'Characteristic Status Changed [ID: 2 Status: 1]', '2018-06-24 10:39:32', 'Dinh Nguyen'),
(55, 'Characteristic Deleted', '2018-06-24 10:40:27', 'Dinh Nguyen'),
(56, 'New characteristic [ID: 3]', '2018-06-24 10:42:40', 'Dinh Nguyen'),
(57, 'Updated characteristic [ID: 3]', '2018-06-24 10:42:45', 'Dinh Nguyen'),
(58, 'Characteristic Status Changed [ID: 3 Status: 0]', '2018-06-24 10:42:52', 'Dinh Nguyen'),
(59, 'Characteristic Deleted', '2018-06-24 10:43:01', 'Dinh Nguyen'),
(60, 'New Property Added [ArticleID: 6 Cat Id: ]', '2018-06-24 10:47:08', 'Dinh Nguyen'),
(61, 'Article Deleted [ArticleID: 6]', '2018-06-24 11:48:50', 'Dinh Nguyen'),
(62, 'Article Deleted [ArticleID: 5]', '2018-06-24 11:48:54', 'Dinh Nguyen'),
(63, 'Article Deleted [ArticleID: 4]', '2018-06-24 11:48:58', 'Dinh Nguyen'),
(64, 'New Property Added [ArticleID: 7 Cat Id: ]', '2018-06-24 11:49:12', 'Dinh Nguyen'),
(65, 'Article Updated [ArticleID: 7]', '2018-06-24 11:59:32', 'Dinh Nguyen'),
(66, 'Article Updated [ArticleID: 7]', '2018-06-24 11:59:40', 'Dinh Nguyen'),
(67, 'Article Updated [ArticleID: 7]', '2018-06-24 12:00:24', 'Dinh Nguyen'),
(68, 'Article Updated [ArticleID: 7]', '2018-06-24 12:00:30', 'Dinh Nguyen'),
(69, 'Article Updated [ArticleID: 7]', '2018-06-24 12:00:46', 'Dinh Nguyen'),
(70, 'Article Deleted [ArticleID: 7]', '2018-06-24 12:01:13', 'Dinh Nguyen'),
(71, 'New Article Group Added [CatID: 1]', '2018-06-24 12:03:03', 'Dinh Nguyen'),
(72, 'New Type [ID: 1]', '2018-06-24 12:03:17', 'Dinh Nguyen'),
(73, 'Article Group Updated [CatID: 1]', '2018-06-24 12:04:37', 'Dinh Nguyen'),
(74, 'Article Group Updated [CatID: 1]', '2018-06-24 12:04:44', 'Dinh Nguyen'),
(75, 'Updated Type [ID: 1]', '2018-06-24 12:05:22', 'Dinh Nguyen'),
(76, 'New location [ID: 1]', '2018-06-24 12:05:37', 'Dinh Nguyen'),
(77, 'Updated location [ID: 1]', '2018-06-24 12:09:18', 'Dinh Nguyen'),
(78, 'New characteristic [ID: 1]', '2018-06-24 12:09:34', 'Dinh Nguyen'),
(79, 'New Property Added [ArticleID: 1 Cat Id: ]', '2018-06-24 12:10:07', 'Dinh Nguyen'),
(80, 'Article Updated [ArticleID: 1]', '2018-06-24 12:15:39', 'Dinh Nguyen'),
(81, 'Article Updated [ArticleID: 1]', '2018-06-24 12:16:03', 'Dinh Nguyen'),
(82, 'Article Updated [ArticleID: 1]', '2018-06-24 12:16:48', 'Dinh Nguyen'),
(83, 'Article Updated [ArticleID: 1]', '2018-06-24 19:11:07', 'Dinh Nguyen'),
(84, 'Article Updated [ArticleID: 1]', '2018-06-24 19:15:00', 'Dinh Nguyen'),
(85, 'Article Updated [ArticleID: 1]', '2018-06-24 19:16:58', 'Dinh Nguyen'),
(86, 'Article Updated [ArticleID: 1]', '2018-06-24 19:17:34', 'Dinh Nguyen'),
(87, 'New characteristic [ID: 2]', '2018-06-24 21:13:14', 'Dinh Nguyen'),
(88, 'New Property Added [ArticleID: 2 Cat Id: ]', '2018-06-24 21:13:41', 'Dinh Nguyen'),
(89, 'Article Updated [ArticleID: 2]', '2018-06-24 21:13:48', 'Dinh Nguyen'),
(90, 'Article Updated [ArticleID: 2]', '2018-06-24 21:13:58', 'Dinh Nguyen'),
(91, 'Article Updated [ArticleID: 1]', '2018-06-24 21:14:12', 'Dinh Nguyen'),
(92, 'New Property Added [ArticleID: 3 Cat Id: ]', '2018-06-24 21:40:03', 'Dinh Nguyen'),
(93, 'Article Updated [ArticleID: 3]', '2018-06-24 21:41:46', 'Dinh Nguyen'),
(94, 'Article Updated [ArticleID: 3]', '2018-06-24 21:45:37', 'Dinh Nguyen'),
(95, 'Article Updated [ArticleID: 3]', '2018-06-24 21:45:43', 'Dinh Nguyen'),
(96, 'New Property Added [ArticleID: 5 Cat Id: ]', '2018-06-24 21:46:23', 'Dinh Nguyen'),
(97, 'Article Updated [ArticleID: 5]', '2018-06-24 21:46:31', 'Dinh Nguyen'),
(98, 'Article Updated [ArticleID: 5]', '2018-06-24 21:46:37', 'Dinh Nguyen'),
(99, 'New Property Added [ArticleID: 6 Cat Id: ]', '2018-06-24 22:55:50', 'Dinh Nguyen'),
(100, 'Article Deleted [ArticleID: 4]', '2018-06-24 22:56:16', 'Dinh Nguyen'),
(101, 'Article Deleted [ArticleID: 5]', '2018-06-24 22:56:22', 'Dinh Nguyen'),
(102, 'Article Deleted [ArticleID: 3]', '2018-06-24 22:56:25', 'Dinh Nguyen'),
(103, 'Article Updated [ArticleID: 6]', '2018-06-25 19:19:58', 'Dinh Nguyen'),
(104, 'New Article Added [ArticleID: 2 GroupID: 1]', '2018-06-25 19:20:59', 'Dinh Nguyen'),
(105, 'Article Updated [ArticleID: 6]', '2018-06-25 19:26:15', 'Dinh Nguyen'),
(106, 'Article Updated [ArticleID: 6]', '2018-06-25 19:26:24', 'Dinh Nguyen'),
(107, 'Article Updated [ArticleID: 6]', '2018-06-25 19:31:18', 'Dinh Nguyen'),
(108, 'Article Updated [ArticleID: 6]', '2018-06-25 19:32:36', 'Dinh Nguyen'),
(109, 'Article Updated [ArticleID: 6]', '2018-06-25 19:34:56', 'Dinh Nguyen'),
(110, 'Article Updated [ArticleID: 6]', '2018-06-25 19:36:07', 'Dinh Nguyen'),
(111, 'Article Updated [ArticleID: 6]', '2018-06-25 19:39:23', 'Dinh Nguyen'),
(112, 'New Property Added [ArticleID: 7 Cat Id: ]', '2018-06-25 21:42:10', 'Dinh Nguyen'),
(113, 'Article Updated [ArticleID: 7]', '2018-06-25 21:42:22', 'Dinh Nguyen'),
(114, 'Article Updated [ArticleID: 7]', '2018-06-25 22:11:37', 'Dinh Nguyen'),
(115, 'New Type [ID: 2]', '2018-06-25 22:28:38', 'Dinh Nguyen'),
(116, 'Article Updated [ArticleID: 7]', '2018-06-25 22:38:25', 'Dinh Nguyen'),
(117, 'Article Updated [ArticleID: 7]', '2018-06-26 22:43:31', 'Dinh Nguyen'),
(118, 'Article Updated [ArticleID: 7]', '2018-06-26 22:44:26', 'Dinh Nguyen'),
(119, 'New Article Group Added [CatID: 2]', '2018-06-26 22:47:33', 'Dinh Nguyen'),
(120, 'New Type [ID: 3]', '2018-06-26 22:47:46', 'Dinh Nguyen'),
(121, 'Article Updated [ArticleID: 7]', '2018-06-26 22:48:00', 'Dinh Nguyen'),
(122, 'SMS to send via Clickatell to 841682485646, Message: test', '2018-06-27 17:46:17', 'Dinh Nguyen'),
(123, 'SMS to send via Clickatell to 841682485646, Message: test', '2018-06-27 17:46:32', 'Dinh Nguyen'),
(124, 'SMS to send via Clickatell to 841682485646, Message: Đất nền phú quốc ,Mua bán đất nền Phú Quốc Kiên Giang Giá rẻ https://phuquoc.net.vn/', '2018-06-27 17:55:36', 'Dinh Nguyen'),
(125, 'SMS to send via Clickatell to 841682485646, Message: Đất nền phú quốc https://phuquoc.net.vn/', '2018-06-27 17:55:51', 'Dinh Nguyen'),
(126, 'SMS to send via Clickatell to 841682485646, Message: Đất nền phú quốc', '2018-06-27 17:56:13', 'Dinh Nguyen'),
(127, 'SMS to send via Clickatell to 841682485646, Message: t', '2018-06-27 17:56:32', 'Dinh Nguyen'),
(128, 'SMS to send via Clickatell to 841682485646, Message: t', '2018-06-27 17:56:48', 'Dinh Nguyen'),
(129, 'SMS to send via Clickatell to 841682485646, Message: t', '2018-06-27 17:58:54', 'Dinh Nguyen'),
(130, 'SMS to send via Clickatell to 841682485646, Message: test', '2018-06-27 18:01:03', 'Dinh Nguyen'),
(131, 'Failed to send SMS via Clickatell: Invalid destination address.', '2018-06-27 18:03:01', 'Dinh Nguyen'),
(132, 'Failed to send SMS via Clickatell: Invalid destination address.', '2018-06-27 18:03:11', 'Dinh Nguyen'),
(133, 'SMS to send via Clickatell to 841682485646, Message: z', '2018-06-27 18:03:18', 'Dinh Nguyen'),
(134, 'SMS to send via Clickatell to 84942525886, Message: z', '2018-06-27 18:03:31', 'Dinh Nguyen'),
(135, 'Article Updated [ArticleID: 7]', '2018-06-28 15:08:54', 'Dinh Nguyen'),
(136, 'New Customer Group Created [ID:1, Name:test 1]', '2018-06-28 16:29:05', 'Dinh Nguyen'),
(137, 'New Client Created [ID: 1, From Staff: 1]', '2018-06-29 10:15:37', 'Dinh Nguyen'),
(138, 'Failed to send email template - SMTP connect() failed. https://github.com/PHPMailer/PHPMailer/wiki/Troubleshooting<br /><pre>\n\n</pre>', '2018-06-29 10:16:04', 'Dinh Nguyen'),
(139, 'Contact Created [ID: 1]', '2018-06-29 10:16:04', 'Dinh Nguyen'),
(140, 'Failed to send email template - SMTP connect() failed. https://github.com/PHPMailer/PHPMailer/wiki/Troubleshooting<br /><pre>\n\n</pre>', '2018-06-29 10:20:38', 'Dinh Nguyen'),
(141, 'Contact Created [ID: 2]', '2018-06-29 10:20:38', 'Dinh Nguyen'),
(142, 'Customer Info Updated [ID: 1]', '2018-06-29 10:24:50', 'Dinh Nguyen'),
(143, 'New Client Created [ID: 2, From Staff: 1]', '2018-06-29 10:26:13', 'Dinh Nguyen'),
(144, 'Failed to send email template - SMTP connect() failed. https://github.com/PHPMailer/PHPMailer/wiki/Troubleshooting<br /><pre>\n\n</pre>', '2018-06-29 10:26:37', 'Dinh Nguyen'),
(145, 'Contact Created [ID: 3]', '2018-06-29 10:26:37', 'Dinh Nguyen'),
(146, 'New Lead Added [ID: 1]', '2018-06-29 10:26:53', 'Dinh Nguyen'),
(147, 'Contact Updated [ID: 3]', '2018-06-29 11:06:05', 'Dinh Nguyen'),
(148, 'Contact Updated [ID: 1]', '2018-06-29 11:07:00', 'Dinh Nguyen'),
(149, 'Contact Updated [ID: 1]', '2018-06-29 11:12:33', 'Dinh Nguyen'),
(150, 'Contact Updated [ID: 3]', '2018-06-29 11:43:03', 'Dinh Nguyen'),
(151, 'SMS to send via Clickatell to 01682485646, Message: Xin chào xx xx, \r\nBài viết `Đất nền phú quốc` vừa được cập nhật tại Test. \r\nChi tiết: http://batdongsan.local/bat-dong-san/dat-nen-phu-quoc', '2018-06-29 11:52:23', 'Dinh Nguyen'),
(152, 'SMS to send via Clickatell to 01682485646, Message: Xin chào xx xx, \r\nBài viết `Đất nền phú quốc` vừa được cập nhật tại Test. \r\nChi tiết: http://batdongsan.local/bat-dong-san/dat-nen-phu-quoc', '2018-06-29 11:53:54', 'Dinh Nguyen'),
(153, 'SMS to send via Clickatell to 01682485646, Message: Xin chào xx xx, \r\nBài viết `Đất nền phú quốc` vừa được cập nhật tại Test. \r\nChi tiết: http://batdongsan.local/bat-dong-san/dat-nen-phu-quoc', '2018-06-29 12:24:38', 'Dinh Nguyen'),
(154, 'Article Updated [ArticleID: 7]', '2018-06-29 14:20:29', 'Dinh Nguyen'),
(155, 'Article Updated [ArticleID: 7]', '2018-06-29 14:22:37', 'Dinh Nguyen'),
(156, 'SMS to send via Clickatell to 01682485646, Message: Xin chào xx xx, \r\nBài viết `hi` vừa được cập nhật tại Test. \r\nChi tiết: http://batdongsan.local/bat-dong-san/hi', '2018-06-29 14:23:15', 'Dinh Nguyen'),
(157, 'Client Deleted [ID: 1]', '2018-06-29 19:08:54', 'Dinh Nguyen'),
(158, 'Article Deleted [ArticleID: 7]', '2018-06-29 19:09:04', 'Dinh Nguyen'),
(159, 'Article Deleted [ArticleID: 6]', '2018-06-29 19:09:07', 'Dinh Nguyen'),
(160, 'Article Deleted [ArticleID: 2]', '2018-06-29 19:09:12', 'Dinh Nguyen'),
(161, 'SMS to send via Clickatell to 01682485646, Message: Xin chào xx xx, \r\nBài viết `Đất nền phú quốc` vừa được cập nhật tại Test. \r\nChi tiết: http://batdongsan.local/bat-dong-san/dat-nen-phu-quoc', '2018-06-29 19:09:31', 'Dinh Nguyen'),
(162, 'Characteristic Status Changed [ID: 1 Status: 0]', '2018-06-29 19:11:11', 'Dinh Nguyen'),
(163, 'New Article Group Added [GroupID: 3]', '2018-06-30 10:19:06', 'Dinh Nguyen'),
(164, 'Article Status Changed [GroupID: 3 Status: 0]', '2018-06-30 10:19:24', 'Dinh Nguyen'),
(165, 'Article Status Changed [GroupID: 3 Status: 1]', '2018-06-30 10:19:30', 'Dinh Nguyen'),
(166, 'Article Group Updated [GroupID: 3]', '2018-06-30 10:19:50', 'Dinh Nguyen'),
(167, 'Article Group Updated [GroupID: 3]', '2018-06-30 10:19:54', 'Dinh Nguyen'),
(168, 'New Article Group Added [GroupID: 4]', '2018-06-30 10:20:14', 'Dinh Nguyen'),
(169, 'Article Status Changed [GroupID: 3 Status: 1]', '2018-06-30 10:20:18', 'Dinh Nguyen'),
(170, 'New Article Added [ArticleID: 3 GroupID: 3]', '2018-06-30 10:20:32', 'Dinh Nguyen'),
(171, 'New Article Group Added [GroupID: 5]', '2018-06-30 10:21:31', 'Dinh Nguyen'),
(172, 'New Article Group Added [GroupID: 6]', '2018-06-30 10:21:53', 'Dinh Nguyen'),
(173, 'New Article Added [ArticleID: 4 GroupID: 6]', '2018-06-30 10:21:57', 'Dinh Nguyen'),
(174, 'Article Deleted [ArticleID: 4]', '2018-06-30 10:22:58', 'Dinh Nguyen'),
(175, 'Article Group Updated [GroupID: 6]', '2018-06-30 10:24:17', 'Dinh Nguyen'),
(176, 'Article Status Changed [GroupID: 6 Status: 0]', '2018-06-30 10:24:21', 'Dinh Nguyen'),
(177, 'Article Group Updated [GroupID: 4]', '2018-06-30 10:50:46', 'Dinh Nguyen'),
(178, 'New Article Added [ArticleID: 5 GroupID: 4]', '2018-06-30 10:51:17', 'Dinh Nguyen'),
(179, 'New Article Group Added [GroupID: 7]', '2018-06-30 10:51:27', 'Dinh Nguyen'),
(180, 'Article Updated [ArticleID: 5]', '2018-06-30 10:51:33', 'Dinh Nguyen'),
(181, 'Article Updated [ArticleID: 5]', '2018-06-30 10:51:55', 'Dinh Nguyen'),
(182, 'Article Deleted [ArticleID: 5]', '2018-06-30 10:57:06', 'Dinh Nguyen'),
(183, 'New Article Group Added [GroupID: 8]', '2018-06-30 10:57:27', 'Dinh Nguyen'),
(184, 'Knowledge Base Group Deleted', '2018-06-30 10:57:57', 'Dinh Nguyen'),
(185, 'Article Updated [ArticleID: 3]', '2018-06-30 11:16:49', 'Dinh Nguyen'),
(186, 'Updated contact [ID: 1]', '2018-06-30 13:33:30', 'Dinh Nguyen'),
(187, 'Updated contact [ID: 1]', '2018-06-30 13:33:55', 'Dinh Nguyen'),
(188, 'Updated contact [ID: 1]', '2018-06-30 13:34:14', 'Dinh Nguyen'),
(189, 'Updated contact [ID: 1]', '2018-06-30 13:40:15', 'Dinh Nguyen'),
(190, 'Updated contact [ID: 1]', '2018-06-30 13:50:34', 'Dinh Nguyen'),
(191, 'Email Send To [Email: midi9x@gmail.com, Template: New Contact Added/Registered (Welcome Email)]', '2018-07-01 13:48:55', 'Dinh Nguyen'),
(192, 'Contact Created [ID: 4]', '2018-07-01 13:48:55', 'Dinh Nguyen'),
(193, 'New Client Created [ID: 3, From Staff: 1]', '2018-07-01 13:48:55', 'Dinh Nguyen'),
(194, 'Email Send To [Email: midi9x@gmail.com, Template: New Customer Registration (Sent to admins)]', '2018-07-01 13:49:02', 'test test'),
(195, 'New Article Added [ArticleID: 6 GroupID: 5]', '2018-07-07 13:06:21', 'Dinh Nguyen'),
(196, 'New Article Added [ArticleID: 7 GroupID: 6]', '2018-07-07 13:25:42', 'Dinh Nguyen'),
(197, 'New characteristic [ID: 1]', '2018-07-08 10:42:18', 'Dinh Nguyen'),
(198, 'New characteristic [ID: 2]', '2018-07-08 10:42:25', 'Dinh Nguyen'),
(199, 'New characteristic [ID: 3]', '2018-07-08 10:42:33', 'Dinh Nguyen'),
(200, 'New location [ID: 1]', '2018-07-08 10:42:54', 'Dinh Nguyen'),
(201, 'New location [ID: 2]', '2018-07-08 10:43:02', 'Dinh Nguyen'),
(202, 'New location [ID: 3]', '2018-07-08 10:43:19', 'Dinh Nguyen'),
(203, 'New Article Group Added [CatID: 1]', '2018-07-08 10:43:41', 'Dinh Nguyen'),
(204, 'New Article Group Added [CatID: 2]', '2018-07-08 10:43:52', 'Dinh Nguyen'),
(205, 'New Type [ID: 1]', '2018-07-08 10:44:59', 'Dinh Nguyen'),
(206, 'New Type [ID: 2]', '2018-07-08 10:45:11', 'Dinh Nguyen'),
(207, 'New Type [ID: 3]', '2018-07-08 10:45:22', 'Dinh Nguyen'),
(208, 'New Type [ID: 4]', '2018-07-08 10:45:29', 'Dinh Nguyen'),
(209, 'New Type [ID: 5]', '2018-07-08 10:45:40', 'Dinh Nguyen'),
(210, 'New Type [ID: 6]', '2018-07-08 10:45:48', 'Dinh Nguyen'),
(211, 'New Type [ID: 7]', '2018-07-08 10:45:57', 'Dinh Nguyen'),
(212, 'New Type [ID: 8]', '2018-07-08 10:46:06', 'Dinh Nguyen'),
(213, 'New Type [ID: 9]', '2018-07-08 10:46:14', 'Dinh Nguyen'),
(214, 'New Type [ID: 10]', '2018-07-08 10:46:26', 'Dinh Nguyen'),
(215, 'New Type [ID: 11]', '2018-07-08 10:46:37', 'Dinh Nguyen'),
(216, 'New Type [ID: 12]', '2018-07-08 10:46:50', 'Dinh Nguyen'),
(217, 'New Type [ID: 13]', '2018-07-08 10:46:57', 'Dinh Nguyen'),
(218, 'New Type [ID: 14]', '2018-07-08 10:47:10', 'Dinh Nguyen'),
(219, 'New Type [ID: 15]', '2018-07-08 10:47:27', 'Dinh Nguyen'),
(220, 'New Type [ID: 16]', '2018-07-08 10:47:38', 'Dinh Nguyen'),
(221, 'New Type [ID: 17]', '2018-07-08 10:47:48', 'Dinh Nguyen'),
(222, 'New Type [ID: 18]', '2018-07-08 10:47:56', 'Dinh Nguyen'),
(223, 'New Type [ID: 19]', '2018-07-08 10:48:05', 'Dinh Nguyen'),
(224, 'New Type [ID: 20]', '2018-07-08 10:48:15', 'Dinh Nguyen'),
(225, 'New Type [ID: 21]', '2018-07-08 10:48:24', 'Dinh Nguyen'),
(226, 'Type Deleted', '2018-07-08 10:56:19', 'Dinh Nguyen'),
(227, 'New Property Added [ArticleID: 1 Cat Id: ]', '2018-07-08 10:58:33', 'Dinh Nguyen'),
(228, 'New Article Group Added [GroupID: 1]', '2018-07-08 19:12:51', 'Dinh Nguyen'),
(229, 'New Article Group Added [GroupID: 2]', '2018-07-08 19:13:23', 'Dinh Nguyen'),
(230, 'New Article Group Added [GroupID: 3]', '2018-07-08 19:13:37', 'Dinh Nguyen');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblannouncements`
--

CREATE TABLE `tblannouncements` (
  `announcementid` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `message` text,
  `showtousers` int(11) NOT NULL,
  `showtostaff` int(11) NOT NULL,
  `showname` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `userid` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcheckliststemplates`
--

CREATE TABLE `tblcheckliststemplates` (
  `id` int(11) NOT NULL,
  `description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblclients`
--

CREATE TABLE `tblclients` (
  `userid` int(11) NOT NULL,
  `company` varchar(100) DEFAULT NULL,
  `vat` varchar(50) DEFAULT NULL,
  `phonenumber` varchar(30) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT '0',
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `leadid` int(11) DEFAULT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT '0',
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT '0',
  `longitude` varchar(300) DEFAULT NULL,
  `latitude` varchar(300) DEFAULT NULL,
  `default_language` varchar(40) DEFAULT NULL,
  `default_currency` int(11) NOT NULL DEFAULT '0',
  `show_primary_contact` int(11) NOT NULL DEFAULT '0',
  `stripe_id` varchar(40) DEFAULT NULL,
  `registration_confirmed` int(11) NOT NULL DEFAULT '1',
  `addedfrom` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblclients`
--

INSERT INTO `tblclients` (`userid`, `company`, `vat`, `phonenumber`, `country`, `city`, `zip`, `state`, `address`, `website`, `datecreated`, `active`, `leadid`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `longitude`, `latitude`, `default_language`, `default_currency`, `show_primary_contact`, `stripe_id`, `registration_confirmed`, `addedfrom`) VALUES
(3, 'xx', '', '', 0, '', '', '', '', '', '2018-07-01 13:48:47', 1, NULL, '', '', '', '', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, 1, 1),
(2, 'xx', '', '', 0, '', '', '', '', '', '2018-06-29 10:26:13', 1, NULL, '', '', '', '', 0, '', '', '', '', 0, NULL, NULL, '', 0, 0, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcommentlikes`
--

CREATE TABLE `tblcommentlikes` (
  `id` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `commentid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateliked` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblconsentpurposes`
--

CREATE TABLE `tblconsentpurposes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `date_created` datetime NOT NULL,
  `last_updated` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblconsents`
--

CREATE TABLE `tblconsents` (
  `id` int(11) NOT NULL,
  `action` varchar(10) NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(40) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `lead_id` int(11) NOT NULL DEFAULT '0',
  `description` text,
  `opt_in_purpose_description` text,
  `purpose_id` int(11) NOT NULL,
  `staff_name` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcontactpermissions`
--

CREATE TABLE `tblcontactpermissions` (
  `id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblcontactpermissions`
--

INSERT INTO `tblcontactpermissions` (`id`, `permission_id`, `userid`) VALUES
(24, 6, 4),
(23, 5, 4),
(22, 4, 4),
(21, 3, 4),
(20, 2, 4),
(19, 1, 4),
(13, 1, 3),
(14, 2, 3),
(15, 3, 3),
(16, 4, 3),
(17, 5, 3),
(18, 6, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcontacts`
--

CREATE TABLE `tblcontacts` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `is_primary` int(11) NOT NULL DEFAULT '1',
  `firstname` varchar(300) NOT NULL,
  `lastname` varchar(300) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `datecreated` datetime NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `profile_image` varchar(300) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  `invoice_emails` tinyint(1) NOT NULL DEFAULT '1',
  `estimate_emails` tinyint(1) NOT NULL DEFAULT '1',
  `credit_note_emails` tinyint(1) NOT NULL DEFAULT '1',
  `contract_emails` tinyint(1) NOT NULL DEFAULT '1',
  `task_emails` tinyint(1) NOT NULL DEFAULT '1',
  `project_emails` tinyint(1) NOT NULL DEFAULT '1',
  `ticket_emails` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblcontacts`
--

INSERT INTO `tblcontacts` (`id`, `userid`, `is_primary`, `firstname`, `lastname`, `email`, `phonenumber`, `title`, `datecreated`, `password`, `new_pass_key`, `new_pass_key_requested`, `last_ip`, `last_login`, `last_password_change`, `active`, `profile_image`, `direction`, `invoice_emails`, `estimate_emails`, `credit_note_emails`, `contract_emails`, `task_emails`, `project_emails`, `ticket_emails`) VALUES
(4, 3, 1, 'test', 'test', 'midi9x@gmail.com', '0999999999', '', '2018-07-01 13:48:47', '$2a$08$v70AUt386n.8rf9Qo39Hsu.QvzcUIXnYRbeQoYfISiDtLew2mRou6', NULL, NULL, '127.0.0.1', '2018-07-01 13:49:18', NULL, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, 1),
(3, 2, 1, 'xx', 'xx', 'dinh.nm@altplus.com.vn', '01682485646', '', '2018-06-29 10:26:29', '$2a$08$55yvqu5IHSOEfPEAUeOHkucjQNMfbZ.GUPE1l5r.HiWd.oij3qcoy', NULL, NULL, NULL, NULL, NULL, 1, NULL, '', 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcontractcomments`
--

CREATE TABLE `tblcontractcomments` (
  `id` int(11) NOT NULL,
  `content` mediumtext,
  `contract_id` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcontractrenewals`
--

CREATE TABLE `tblcontractrenewals` (
  `id` int(11) NOT NULL,
  `contractid` int(11) NOT NULL,
  `old_start_date` date NOT NULL,
  `new_start_date` date NOT NULL,
  `old_end_date` date DEFAULT NULL,
  `new_end_date` date DEFAULT NULL,
  `old_value` decimal(15,2) DEFAULT NULL,
  `new_value` decimal(15,2) DEFAULT NULL,
  `date_renewed` datetime NOT NULL,
  `renewed_by` varchar(100) NOT NULL,
  `renewed_by_staff_id` int(11) NOT NULL DEFAULT '0',
  `is_on_old_expiry_notified` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcontracts`
--

CREATE TABLE `tblcontracts` (
  `id` int(11) NOT NULL,
  `content` longtext,
  `description` text,
  `subject` varchar(300) DEFAULT NULL,
  `client` int(11) NOT NULL,
  `datestart` date DEFAULT NULL,
  `dateend` date DEFAULT NULL,
  `contract_type` int(11) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `isexpirynotified` int(11) NOT NULL DEFAULT '0',
  `contract_value` decimal(15,2) DEFAULT NULL,
  `trash` tinyint(1) DEFAULT '0',
  `not_visible_to_client` tinyint(1) NOT NULL DEFAULT '0',
  `hash` varchar(32) DEFAULT NULL,
  `signed` tinyint(1) NOT NULL DEFAULT '0',
  `signature` varchar(40) DEFAULT NULL,
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcontracttypes`
--

CREATE TABLE `tblcontracttypes` (
  `id` int(11) NOT NULL,
  `name` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcountries`
--

CREATE TABLE `tblcountries` (
  `country_id` int(5) NOT NULL,
  `iso2` char(2) DEFAULT NULL,
  `short_name` varchar(80) NOT NULL DEFAULT '',
  `long_name` varchar(80) NOT NULL DEFAULT '',
  `iso3` char(3) DEFAULT NULL,
  `numcode` varchar(6) DEFAULT NULL,
  `un_member` varchar(12) DEFAULT NULL,
  `calling_code` varchar(8) DEFAULT NULL,
  `cctld` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblcountries`
--

INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES
(1, 'AF', 'Afghanistan', 'Islamic Republic of Afghanistan', 'AFG', '004', 'yes', '93', '.af'),
(2, 'AX', 'Aland Islands', '&Aring;land Islands', 'ALA', '248', 'no', '358', '.ax'),
(3, 'AL', 'Albania', 'Republic of Albania', 'ALB', '008', 'yes', '355', '.al'),
(4, 'DZ', 'Algeria', 'People\'s Democratic Republic of Algeria', 'DZA', '012', 'yes', '213', '.dz'),
(5, 'AS', 'American Samoa', 'American Samoa', 'ASM', '016', 'no', '1+684', '.as'),
(6, 'AD', 'Andorra', 'Principality of Andorra', 'AND', '020', 'yes', '376', '.ad'),
(7, 'AO', 'Angola', 'Republic of Angola', 'AGO', '024', 'yes', '244', '.ao'),
(8, 'AI', 'Anguilla', 'Anguilla', 'AIA', '660', 'no', '1+264', '.ai'),
(9, 'AQ', 'Antarctica', 'Antarctica', 'ATA', '010', 'no', '672', '.aq'),
(10, 'AG', 'Antigua and Barbuda', 'Antigua and Barbuda', 'ATG', '028', 'yes', '1+268', '.ag'),
(11, 'AR', 'Argentina', 'Argentine Republic', 'ARG', '032', 'yes', '54', '.ar'),
(12, 'AM', 'Armenia', 'Republic of Armenia', 'ARM', '051', 'yes', '374', '.am'),
(13, 'AW', 'Aruba', 'Aruba', 'ABW', '533', 'no', '297', '.aw'),
(14, 'AU', 'Australia', 'Commonwealth of Australia', 'AUS', '036', 'yes', '61', '.au'),
(15, 'AT', 'Austria', 'Republic of Austria', 'AUT', '040', 'yes', '43', '.at'),
(16, 'AZ', 'Azerbaijan', 'Republic of Azerbaijan', 'AZE', '031', 'yes', '994', '.az'),
(17, 'BS', 'Bahamas', 'Commonwealth of The Bahamas', 'BHS', '044', 'yes', '1+242', '.bs'),
(18, 'BH', 'Bahrain', 'Kingdom of Bahrain', 'BHR', '048', 'yes', '973', '.bh'),
(19, 'BD', 'Bangladesh', 'People\'s Republic of Bangladesh', 'BGD', '050', 'yes', '880', '.bd'),
(20, 'BB', 'Barbados', 'Barbados', 'BRB', '052', 'yes', '1+246', '.bb'),
(21, 'BY', 'Belarus', 'Republic of Belarus', 'BLR', '112', 'yes', '375', '.by'),
(22, 'BE', 'Belgium', 'Kingdom of Belgium', 'BEL', '056', 'yes', '32', '.be'),
(23, 'BZ', 'Belize', 'Belize', 'BLZ', '084', 'yes', '501', '.bz'),
(24, 'BJ', 'Benin', 'Republic of Benin', 'BEN', '204', 'yes', '229', '.bj'),
(25, 'BM', 'Bermuda', 'Bermuda Islands', 'BMU', '060', 'no', '1+441', '.bm'),
(26, 'BT', 'Bhutan', 'Kingdom of Bhutan', 'BTN', '064', 'yes', '975', '.bt'),
(27, 'BO', 'Bolivia', 'Plurinational State of Bolivia', 'BOL', '068', 'yes', '591', '.bo'),
(28, 'BQ', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', 'BES', '535', 'no', '599', '.bq'),
(29, 'BA', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'BIH', '070', 'yes', '387', '.ba'),
(30, 'BW', 'Botswana', 'Republic of Botswana', 'BWA', '072', 'yes', '267', '.bw'),
(31, 'BV', 'Bouvet Island', 'Bouvet Island', 'BVT', '074', 'no', 'NONE', '.bv'),
(32, 'BR', 'Brazil', 'Federative Republic of Brazil', 'BRA', '076', 'yes', '55', '.br'),
(33, 'IO', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'IOT', '086', 'no', '246', '.io'),
(34, 'BN', 'Brunei', 'Brunei Darussalam', 'BRN', '096', 'yes', '673', '.bn'),
(35, 'BG', 'Bulgaria', 'Republic of Bulgaria', 'BGR', '100', 'yes', '359', '.bg'),
(36, 'BF', 'Burkina Faso', 'Burkina Faso', 'BFA', '854', 'yes', '226', '.bf'),
(37, 'BI', 'Burundi', 'Republic of Burundi', 'BDI', '108', 'yes', '257', '.bi'),
(38, 'KH', 'Cambodia', 'Kingdom of Cambodia', 'KHM', '116', 'yes', '855', '.kh'),
(39, 'CM', 'Cameroon', 'Republic of Cameroon', 'CMR', '120', 'yes', '237', '.cm'),
(40, 'CA', 'Canada', 'Canada', 'CAN', '124', 'yes', '1', '.ca'),
(41, 'CV', 'Cape Verde', 'Republic of Cape Verde', 'CPV', '132', 'yes', '238', '.cv'),
(42, 'KY', 'Cayman Islands', 'The Cayman Islands', 'CYM', '136', 'no', '1+345', '.ky'),
(43, 'CF', 'Central African Republic', 'Central African Republic', 'CAF', '140', 'yes', '236', '.cf'),
(44, 'TD', 'Chad', 'Republic of Chad', 'TCD', '148', 'yes', '235', '.td'),
(45, 'CL', 'Chile', 'Republic of Chile', 'CHL', '152', 'yes', '56', '.cl'),
(46, 'CN', 'China', 'People\'s Republic of China', 'CHN', '156', 'yes', '86', '.cn'),
(47, 'CX', 'Christmas Island', 'Christmas Island', 'CXR', '162', 'no', '61', '.cx'),
(48, 'CC', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'CCK', '166', 'no', '61', '.cc'),
(49, 'CO', 'Colombia', 'Republic of Colombia', 'COL', '170', 'yes', '57', '.co'),
(50, 'KM', 'Comoros', 'Union of the Comoros', 'COM', '174', 'yes', '269', '.km'),
(51, 'CG', 'Congo', 'Republic of the Congo', 'COG', '178', 'yes', '242', '.cg'),
(52, 'CK', 'Cook Islands', 'Cook Islands', 'COK', '184', 'some', '682', '.ck'),
(53, 'CR', 'Costa Rica', 'Republic of Costa Rica', 'CRI', '188', 'yes', '506', '.cr'),
(54, 'CI', 'Cote d\'ivoire (Ivory Coast)', 'Republic of C&ocirc;te D\'Ivoire (Ivory Coast)', 'CIV', '384', 'yes', '225', '.ci'),
(55, 'HR', 'Croatia', 'Republic of Croatia', 'HRV', '191', 'yes', '385', '.hr'),
(56, 'CU', 'Cuba', 'Republic of Cuba', 'CUB', '192', 'yes', '53', '.cu'),
(57, 'CW', 'Curacao', 'Cura&ccedil;ao', 'CUW', '531', 'no', '599', '.cw'),
(58, 'CY', 'Cyprus', 'Republic of Cyprus', 'CYP', '196', 'yes', '357', '.cy'),
(59, 'CZ', 'Czech Republic', 'Czech Republic', 'CZE', '203', 'yes', '420', '.cz'),
(60, 'CD', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', 'COD', '180', 'yes', '243', '.cd'),
(61, 'DK', 'Denmark', 'Kingdom of Denmark', 'DNK', '208', 'yes', '45', '.dk'),
(62, 'DJ', 'Djibouti', 'Republic of Djibouti', 'DJI', '262', 'yes', '253', '.dj'),
(63, 'DM', 'Dominica', 'Commonwealth of Dominica', 'DMA', '212', 'yes', '1+767', '.dm'),
(64, 'DO', 'Dominican Republic', 'Dominican Republic', 'DOM', '214', 'yes', '1+809, 8', '.do'),
(65, 'EC', 'Ecuador', 'Republic of Ecuador', 'ECU', '218', 'yes', '593', '.ec'),
(66, 'EG', 'Egypt', 'Arab Republic of Egypt', 'EGY', '818', 'yes', '20', '.eg'),
(67, 'SV', 'El Salvador', 'Republic of El Salvador', 'SLV', '222', 'yes', '503', '.sv'),
(68, 'GQ', 'Equatorial Guinea', 'Republic of Equatorial Guinea', 'GNQ', '226', 'yes', '240', '.gq'),
(69, 'ER', 'Eritrea', 'State of Eritrea', 'ERI', '232', 'yes', '291', '.er'),
(70, 'EE', 'Estonia', 'Republic of Estonia', 'EST', '233', 'yes', '372', '.ee'),
(71, 'ET', 'Ethiopia', 'Federal Democratic Republic of Ethiopia', 'ETH', '231', 'yes', '251', '.et'),
(72, 'FK', 'Falkland Islands (Malvinas)', 'The Falkland Islands (Malvinas)', 'FLK', '238', 'no', '500', '.fk'),
(73, 'FO', 'Faroe Islands', 'The Faroe Islands', 'FRO', '234', 'no', '298', '.fo'),
(74, 'FJ', 'Fiji', 'Republic of Fiji', 'FJI', '242', 'yes', '679', '.fj'),
(75, 'FI', 'Finland', 'Republic of Finland', 'FIN', '246', 'yes', '358', '.fi'),
(76, 'FR', 'France', 'French Republic', 'FRA', '250', 'yes', '33', '.fr'),
(77, 'GF', 'French Guiana', 'French Guiana', 'GUF', '254', 'no', '594', '.gf'),
(78, 'PF', 'French Polynesia', 'French Polynesia', 'PYF', '258', 'no', '689', '.pf'),
(79, 'TF', 'French Southern Territories', 'French Southern Territories', 'ATF', '260', 'no', NULL, '.tf'),
(80, 'GA', 'Gabon', 'Gabonese Republic', 'GAB', '266', 'yes', '241', '.ga'),
(81, 'GM', 'Gambia', 'Republic of The Gambia', 'GMB', '270', 'yes', '220', '.gm'),
(82, 'GE', 'Georgia', 'Georgia', 'GEO', '268', 'yes', '995', '.ge'),
(83, 'DE', 'Germany', 'Federal Republic of Germany', 'DEU', '276', 'yes', '49', '.de'),
(84, 'GH', 'Ghana', 'Republic of Ghana', 'GHA', '288', 'yes', '233', '.gh'),
(85, 'GI', 'Gibraltar', 'Gibraltar', 'GIB', '292', 'no', '350', '.gi'),
(86, 'GR', 'Greece', 'Hellenic Republic', 'GRC', '300', 'yes', '30', '.gr'),
(87, 'GL', 'Greenland', 'Greenland', 'GRL', '304', 'no', '299', '.gl'),
(88, 'GD', 'Grenada', 'Grenada', 'GRD', '308', 'yes', '1+473', '.gd'),
(89, 'GP', 'Guadaloupe', 'Guadeloupe', 'GLP', '312', 'no', '590', '.gp'),
(90, 'GU', 'Guam', 'Guam', 'GUM', '316', 'no', '1+671', '.gu'),
(91, 'GT', 'Guatemala', 'Republic of Guatemala', 'GTM', '320', 'yes', '502', '.gt'),
(92, 'GG', 'Guernsey', 'Guernsey', 'GGY', '831', 'no', '44', '.gg'),
(93, 'GN', 'Guinea', 'Republic of Guinea', 'GIN', '324', 'yes', '224', '.gn'),
(94, 'GW', 'Guinea-Bissau', 'Republic of Guinea-Bissau', 'GNB', '624', 'yes', '245', '.gw'),
(95, 'GY', 'Guyana', 'Co-operative Republic of Guyana', 'GUY', '328', 'yes', '592', '.gy'),
(96, 'HT', 'Haiti', 'Republic of Haiti', 'HTI', '332', 'yes', '509', '.ht'),
(97, 'HM', 'Heard Island and McDonald Islands', 'Heard Island and McDonald Islands', 'HMD', '334', 'no', 'NONE', '.hm'),
(98, 'HN', 'Honduras', 'Republic of Honduras', 'HND', '340', 'yes', '504', '.hn'),
(99, 'HK', 'Hong Kong', 'Hong Kong', 'HKG', '344', 'no', '852', '.hk'),
(100, 'HU', 'Hungary', 'Hungary', 'HUN', '348', 'yes', '36', '.hu'),
(101, 'IS', 'Iceland', 'Republic of Iceland', 'ISL', '352', 'yes', '354', '.is'),
(102, 'IN', 'India', 'Republic of India', 'IND', '356', 'yes', '91', '.in'),
(103, 'ID', 'Indonesia', 'Republic of Indonesia', 'IDN', '360', 'yes', '62', '.id'),
(104, 'IR', 'Iran', 'Islamic Republic of Iran', 'IRN', '364', 'yes', '98', '.ir'),
(105, 'IQ', 'Iraq', 'Republic of Iraq', 'IRQ', '368', 'yes', '964', '.iq'),
(106, 'IE', 'Ireland', 'Ireland', 'IRL', '372', 'yes', '353', '.ie'),
(107, 'IM', 'Isle of Man', 'Isle of Man', 'IMN', '833', 'no', '44', '.im'),
(108, 'IL', 'Israel', 'State of Israel', 'ISR', '376', 'yes', '972', '.il'),
(109, 'IT', 'Italy', 'Italian Republic', 'ITA', '380', 'yes', '39', '.jm'),
(110, 'JM', 'Jamaica', 'Jamaica', 'JAM', '388', 'yes', '1+876', '.jm'),
(111, 'JP', 'Japan', 'Japan', 'JPN', '392', 'yes', '81', '.jp'),
(112, 'JE', 'Jersey', 'The Bailiwick of Jersey', 'JEY', '832', 'no', '44', '.je'),
(113, 'JO', 'Jordan', 'Hashemite Kingdom of Jordan', 'JOR', '400', 'yes', '962', '.jo'),
(114, 'KZ', 'Kazakhstan', 'Republic of Kazakhstan', 'KAZ', '398', 'yes', '7', '.kz'),
(115, 'KE', 'Kenya', 'Republic of Kenya', 'KEN', '404', 'yes', '254', '.ke'),
(116, 'KI', 'Kiribati', 'Republic of Kiribati', 'KIR', '296', 'yes', '686', '.ki'),
(117, 'XK', 'Kosovo', 'Republic of Kosovo', '---', '---', 'some', '381', ''),
(118, 'KW', 'Kuwait', 'State of Kuwait', 'KWT', '414', 'yes', '965', '.kw'),
(119, 'KG', 'Kyrgyzstan', 'Kyrgyz Republic', 'KGZ', '417', 'yes', '996', '.kg'),
(120, 'LA', 'Laos', 'Lao People\'s Democratic Republic', 'LAO', '418', 'yes', '856', '.la'),
(121, 'LV', 'Latvia', 'Republic of Latvia', 'LVA', '428', 'yes', '371', '.lv'),
(122, 'LB', 'Lebanon', 'Republic of Lebanon', 'LBN', '422', 'yes', '961', '.lb'),
(123, 'LS', 'Lesotho', 'Kingdom of Lesotho', 'LSO', '426', 'yes', '266', '.ls'),
(124, 'LR', 'Liberia', 'Republic of Liberia', 'LBR', '430', 'yes', '231', '.lr'),
(125, 'LY', 'Libya', 'Libya', 'LBY', '434', 'yes', '218', '.ly'),
(126, 'LI', 'Liechtenstein', 'Principality of Liechtenstein', 'LIE', '438', 'yes', '423', '.li'),
(127, 'LT', 'Lithuania', 'Republic of Lithuania', 'LTU', '440', 'yes', '370', '.lt'),
(128, 'LU', 'Luxembourg', 'Grand Duchy of Luxembourg', 'LUX', '442', 'yes', '352', '.lu'),
(129, 'MO', 'Macao', 'The Macao Special Administrative Region', 'MAC', '446', 'no', '853', '.mo'),
(130, 'MK', 'Macedonia', 'The Former Yugoslav Republic of Macedonia', 'MKD', '807', 'yes', '389', '.mk'),
(131, 'MG', 'Madagascar', 'Republic of Madagascar', 'MDG', '450', 'yes', '261', '.mg'),
(132, 'MW', 'Malawi', 'Republic of Malawi', 'MWI', '454', 'yes', '265', '.mw'),
(133, 'MY', 'Malaysia', 'Malaysia', 'MYS', '458', 'yes', '60', '.my'),
(134, 'MV', 'Maldives', 'Republic of Maldives', 'MDV', '462', 'yes', '960', '.mv'),
(135, 'ML', 'Mali', 'Republic of Mali', 'MLI', '466', 'yes', '223', '.ml'),
(136, 'MT', 'Malta', 'Republic of Malta', 'MLT', '470', 'yes', '356', '.mt'),
(137, 'MH', 'Marshall Islands', 'Republic of the Marshall Islands', 'MHL', '584', 'yes', '692', '.mh'),
(138, 'MQ', 'Martinique', 'Martinique', 'MTQ', '474', 'no', '596', '.mq'),
(139, 'MR', 'Mauritania', 'Islamic Republic of Mauritania', 'MRT', '478', 'yes', '222', '.mr'),
(140, 'MU', 'Mauritius', 'Republic of Mauritius', 'MUS', '480', 'yes', '230', '.mu'),
(141, 'YT', 'Mayotte', 'Mayotte', 'MYT', '175', 'no', '262', '.yt'),
(142, 'MX', 'Mexico', 'United Mexican States', 'MEX', '484', 'yes', '52', '.mx'),
(143, 'FM', 'Micronesia', 'Federated States of Micronesia', 'FSM', '583', 'yes', '691', '.fm'),
(144, 'MD', 'Moldava', 'Republic of Moldova', 'MDA', '498', 'yes', '373', '.md'),
(145, 'MC', 'Monaco', 'Principality of Monaco', 'MCO', '492', 'yes', '377', '.mc'),
(146, 'MN', 'Mongolia', 'Mongolia', 'MNG', '496', 'yes', '976', '.mn'),
(147, 'ME', 'Montenegro', 'Montenegro', 'MNE', '499', 'yes', '382', '.me'),
(148, 'MS', 'Montserrat', 'Montserrat', 'MSR', '500', 'no', '1+664', '.ms'),
(149, 'MA', 'Morocco', 'Kingdom of Morocco', 'MAR', '504', 'yes', '212', '.ma'),
(150, 'MZ', 'Mozambique', 'Republic of Mozambique', 'MOZ', '508', 'yes', '258', '.mz'),
(151, 'MM', 'Myanmar (Burma)', 'Republic of the Union of Myanmar', 'MMR', '104', 'yes', '95', '.mm'),
(152, 'NA', 'Namibia', 'Republic of Namibia', 'NAM', '516', 'yes', '264', '.na'),
(153, 'NR', 'Nauru', 'Republic of Nauru', 'NRU', '520', 'yes', '674', '.nr'),
(154, 'NP', 'Nepal', 'Federal Democratic Republic of Nepal', 'NPL', '524', 'yes', '977', '.np'),
(155, 'NL', 'Netherlands', 'Kingdom of the Netherlands', 'NLD', '528', 'yes', '31', '.nl'),
(156, 'NC', 'New Caledonia', 'New Caledonia', 'NCL', '540', 'no', '687', '.nc'),
(157, 'NZ', 'New Zealand', 'New Zealand', 'NZL', '554', 'yes', '64', '.nz'),
(158, 'NI', 'Nicaragua', 'Republic of Nicaragua', 'NIC', '558', 'yes', '505', '.ni'),
(159, 'NE', 'Niger', 'Republic of Niger', 'NER', '562', 'yes', '227', '.ne'),
(160, 'NG', 'Nigeria', 'Federal Republic of Nigeria', 'NGA', '566', 'yes', '234', '.ng'),
(161, 'NU', 'Niue', 'Niue', 'NIU', '570', 'some', '683', '.nu'),
(162, 'NF', 'Norfolk Island', 'Norfolk Island', 'NFK', '574', 'no', '672', '.nf'),
(163, 'KP', 'North Korea', 'Democratic People\'s Republic of Korea', 'PRK', '408', 'yes', '850', '.kp'),
(164, 'MP', 'Northern Mariana Islands', 'Northern Mariana Islands', 'MNP', '580', 'no', '1+670', '.mp'),
(165, 'NO', 'Norway', 'Kingdom of Norway', 'NOR', '578', 'yes', '47', '.no'),
(166, 'OM', 'Oman', 'Sultanate of Oman', 'OMN', '512', 'yes', '968', '.om'),
(167, 'PK', 'Pakistan', 'Islamic Republic of Pakistan', 'PAK', '586', 'yes', '92', '.pk'),
(168, 'PW', 'Palau', 'Republic of Palau', 'PLW', '585', 'yes', '680', '.pw'),
(169, 'PS', 'Palestine', 'State of Palestine (or Occupied Palestinian Territory)', 'PSE', '275', 'some', '970', '.ps'),
(170, 'PA', 'Panama', 'Republic of Panama', 'PAN', '591', 'yes', '507', '.pa'),
(171, 'PG', 'Papua New Guinea', 'Independent State of Papua New Guinea', 'PNG', '598', 'yes', '675', '.pg'),
(172, 'PY', 'Paraguay', 'Republic of Paraguay', 'PRY', '600', 'yes', '595', '.py'),
(173, 'PE', 'Peru', 'Republic of Peru', 'PER', '604', 'yes', '51', '.pe'),
(174, 'PH', 'Phillipines', 'Republic of the Philippines', 'PHL', '608', 'yes', '63', '.ph'),
(175, 'PN', 'Pitcairn', 'Pitcairn', 'PCN', '612', 'no', 'NONE', '.pn'),
(176, 'PL', 'Poland', 'Republic of Poland', 'POL', '616', 'yes', '48', '.pl'),
(177, 'PT', 'Portugal', 'Portuguese Republic', 'PRT', '620', 'yes', '351', '.pt'),
(178, 'PR', 'Puerto Rico', 'Commonwealth of Puerto Rico', 'PRI', '630', 'no', '1+939', '.pr'),
(179, 'QA', 'Qatar', 'State of Qatar', 'QAT', '634', 'yes', '974', '.qa'),
(180, 'RE', 'Reunion', 'R&eacute;union', 'REU', '638', 'no', '262', '.re'),
(181, 'RO', 'Romania', 'Romania', 'ROU', '642', 'yes', '40', '.ro'),
(182, 'RU', 'Russia', 'Russian Federation', 'RUS', '643', 'yes', '7', '.ru'),
(183, 'RW', 'Rwanda', 'Republic of Rwanda', 'RWA', '646', 'yes', '250', '.rw'),
(184, 'BL', 'Saint Barthelemy', 'Saint Barth&eacute;lemy', 'BLM', '652', 'no', '590', '.bl'),
(185, 'SH', 'Saint Helena', 'Saint Helena, Ascension and Tristan da Cunha', 'SHN', '654', 'no', '290', '.sh'),
(186, 'KN', 'Saint Kitts and Nevis', 'Federation of Saint Christopher and Nevis', 'KNA', '659', 'yes', '1+869', '.kn'),
(187, 'LC', 'Saint Lucia', 'Saint Lucia', 'LCA', '662', 'yes', '1+758', '.lc'),
(188, 'MF', 'Saint Martin', 'Saint Martin', 'MAF', '663', 'no', '590', '.mf'),
(189, 'PM', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'SPM', '666', 'no', '508', '.pm'),
(190, 'VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'VCT', '670', 'yes', '1+784', '.vc'),
(191, 'WS', 'Samoa', 'Independent State of Samoa', 'WSM', '882', 'yes', '685', '.ws'),
(192, 'SM', 'San Marino', 'Republic of San Marino', 'SMR', '674', 'yes', '378', '.sm'),
(193, 'ST', 'Sao Tome and Principe', 'Democratic Republic of S&atilde;o Tom&eacute; and Pr&iacute;ncipe', 'STP', '678', 'yes', '239', '.st'),
(194, 'SA', 'Saudi Arabia', 'Kingdom of Saudi Arabia', 'SAU', '682', 'yes', '966', '.sa'),
(195, 'SN', 'Senegal', 'Republic of Senegal', 'SEN', '686', 'yes', '221', '.sn'),
(196, 'RS', 'Serbia', 'Republic of Serbia', 'SRB', '688', 'yes', '381', '.rs'),
(197, 'SC', 'Seychelles', 'Republic of Seychelles', 'SYC', '690', 'yes', '248', '.sc'),
(198, 'SL', 'Sierra Leone', 'Republic of Sierra Leone', 'SLE', '694', 'yes', '232', '.sl'),
(199, 'SG', 'Singapore', 'Republic of Singapore', 'SGP', '702', 'yes', '65', '.sg'),
(200, 'SX', 'Sint Maarten', 'Sint Maarten', 'SXM', '534', 'no', '1+721', '.sx'),
(201, 'SK', 'Slovakia', 'Slovak Republic', 'SVK', '703', 'yes', '421', '.sk'),
(202, 'SI', 'Slovenia', 'Republic of Slovenia', 'SVN', '705', 'yes', '386', '.si'),
(203, 'SB', 'Solomon Islands', 'Solomon Islands', 'SLB', '090', 'yes', '677', '.sb'),
(204, 'SO', 'Somalia', 'Somali Republic', 'SOM', '706', 'yes', '252', '.so'),
(205, 'ZA', 'South Africa', 'Republic of South Africa', 'ZAF', '710', 'yes', '27', '.za'),
(206, 'GS', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'SGS', '239', 'no', '500', '.gs'),
(207, 'KR', 'South Korea', 'Republic of Korea', 'KOR', '410', 'yes', '82', '.kr'),
(208, 'SS', 'South Sudan', 'Republic of South Sudan', 'SSD', '728', 'yes', '211', '.ss'),
(209, 'ES', 'Spain', 'Kingdom of Spain', 'ESP', '724', 'yes', '34', '.es'),
(210, 'LK', 'Sri Lanka', 'Democratic Socialist Republic of Sri Lanka', 'LKA', '144', 'yes', '94', '.lk'),
(211, 'SD', 'Sudan', 'Republic of the Sudan', 'SDN', '729', 'yes', '249', '.sd'),
(212, 'SR', 'Suriname', 'Republic of Suriname', 'SUR', '740', 'yes', '597', '.sr'),
(213, 'SJ', 'Svalbard and Jan Mayen', 'Svalbard and Jan Mayen', 'SJM', '744', 'no', '47', '.sj'),
(214, 'SZ', 'Swaziland', 'Kingdom of Swaziland', 'SWZ', '748', 'yes', '268', '.sz'),
(215, 'SE', 'Sweden', 'Kingdom of Sweden', 'SWE', '752', 'yes', '46', '.se'),
(216, 'CH', 'Switzerland', 'Swiss Confederation', 'CHE', '756', 'yes', '41', '.ch'),
(217, 'SY', 'Syria', 'Syrian Arab Republic', 'SYR', '760', 'yes', '963', '.sy'),
(218, 'TW', 'Taiwan', 'Republic of China (Taiwan)', 'TWN', '158', 'former', '886', '.tw'),
(219, 'TJ', 'Tajikistan', 'Republic of Tajikistan', 'TJK', '762', 'yes', '992', '.tj'),
(220, 'TZ', 'Tanzania', 'United Republic of Tanzania', 'TZA', '834', 'yes', '255', '.tz'),
(221, 'TH', 'Thailand', 'Kingdom of Thailand', 'THA', '764', 'yes', '66', '.th'),
(222, 'TL', 'Timor-Leste (East Timor)', 'Democratic Republic of Timor-Leste', 'TLS', '626', 'yes', '670', '.tl'),
(223, 'TG', 'Togo', 'Togolese Republic', 'TGO', '768', 'yes', '228', '.tg'),
(224, 'TK', 'Tokelau', 'Tokelau', 'TKL', '772', 'no', '690', '.tk'),
(225, 'TO', 'Tonga', 'Kingdom of Tonga', 'TON', '776', 'yes', '676', '.to'),
(226, 'TT', 'Trinidad and Tobago', 'Republic of Trinidad and Tobago', 'TTO', '780', 'yes', '1+868', '.tt'),
(227, 'TN', 'Tunisia', 'Republic of Tunisia', 'TUN', '788', 'yes', '216', '.tn'),
(228, 'TR', 'Turkey', 'Republic of Turkey', 'TUR', '792', 'yes', '90', '.tr'),
(229, 'TM', 'Turkmenistan', 'Turkmenistan', 'TKM', '795', 'yes', '993', '.tm'),
(230, 'TC', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'TCA', '796', 'no', '1+649', '.tc'),
(231, 'TV', 'Tuvalu', 'Tuvalu', 'TUV', '798', 'yes', '688', '.tv'),
(232, 'UG', 'Uganda', 'Republic of Uganda', 'UGA', '800', 'yes', '256', '.ug'),
(233, 'UA', 'Ukraine', 'Ukraine', 'UKR', '804', 'yes', '380', '.ua'),
(234, 'AE', 'United Arab Emirates', 'United Arab Emirates', 'ARE', '784', 'yes', '971', '.ae'),
(235, 'GB', 'United Kingdom', 'United Kingdom of Great Britain and Nothern Ireland', 'GBR', '826', 'yes', '44', '.uk'),
(236, 'US', 'United States', 'United States of America', 'USA', '840', 'yes', '1', '.us'),
(237, 'UM', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'UMI', '581', 'no', 'NONE', 'NONE'),
(238, 'UY', 'Uruguay', 'Eastern Republic of Uruguay', 'URY', '858', 'yes', '598', '.uy'),
(239, 'UZ', 'Uzbekistan', 'Republic of Uzbekistan', 'UZB', '860', 'yes', '998', '.uz'),
(240, 'VU', 'Vanuatu', 'Republic of Vanuatu', 'VUT', '548', 'yes', '678', '.vu'),
(241, 'VA', 'Vatican City', 'State of the Vatican City', 'VAT', '336', 'no', '39', '.va'),
(242, 'VE', 'Venezuela', 'Bolivarian Republic of Venezuela', 'VEN', '862', 'yes', '58', '.ve'),
(243, 'VN', 'Vietnam', 'Socialist Republic of Vietnam', 'VNM', '704', 'yes', '84', '.vn'),
(244, 'VG', 'Virgin Islands, British', 'British Virgin Islands', 'VGB', '092', 'no', '1+284', '.vg'),
(245, 'VI', 'Virgin Islands, US', 'Virgin Islands of the United States', 'VIR', '850', 'no', '1+340', '.vi'),
(246, 'WF', 'Wallis and Futuna', 'Wallis and Futuna', 'WLF', '876', 'no', '681', '.wf'),
(247, 'EH', 'Western Sahara', 'Western Sahara', 'ESH', '732', 'no', '212', '.eh'),
(248, 'YE', 'Yemen', 'Republic of Yemen', 'YEM', '887', 'yes', '967', '.ye'),
(249, 'ZM', 'Zambia', 'Republic of Zambia', 'ZMB', '894', 'yes', '260', '.zm'),
(250, 'ZW', 'Zimbabwe', 'Republic of Zimbabwe', 'ZWE', '716', 'yes', '263', '.zw');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcreditnotes`
--

CREATE TABLE `tblcreditnotes` (
  `id` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `deleted_customer_name` varchar(100) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT '1',
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `adminnote` text,
  `terms` text,
  `clientnote` text,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total` decimal(15,2) NOT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `discount_percent` decimal(15,2) DEFAULT '0.00',
  `discount_total` decimal(15,2) DEFAULT '0.00',
  `discount_type` varchar(30) NOT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_credit_note` tinyint(1) NOT NULL DEFAULT '1',
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `reference_no` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcredits`
--

CREATE TABLE `tblcredits` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `credit_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `date_applied` datetime NOT NULL,
  `amount` decimal(15,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcurrencies`
--

CREATE TABLE `tblcurrencies` (
  `id` int(11) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblcurrencies`
--

INSERT INTO `tblcurrencies` (`id`, `symbol`, `name`, `isdefault`) VALUES
(1, '$', 'USD', 1),
(2, '€', 'EUR', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcustomeradmins`
--

CREATE TABLE `tblcustomeradmins` (
  `staff_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date_assigned` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcustomerfiles_shares`
--

CREATE TABLE `tblcustomerfiles_shares` (
  `file_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcustomergroups_in`
--

CREATE TABLE `tblcustomergroups_in` (
  `id` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblcustomergroups_in`
--

INSERT INTO `tblcustomergroups_in` (`id`, `groupid`, `customer_id`) VALUES
(2, 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcustomersgroups`
--

CREATE TABLE `tblcustomersgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(600) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblcustomersgroups`
--

INSERT INTO `tblcustomersgroups` (`id`, `name`) VALUES
(1, 'test 1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcustomfields`
--

CREATE TABLE `tblcustomfields` (
  `id` int(11) NOT NULL,
  `fieldto` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL,
  `options` mediumtext,
  `display_inline` tinyint(1) NOT NULL DEFAULT '0',
  `field_order` int(11) DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `show_on_pdf` int(11) NOT NULL DEFAULT '0',
  `show_on_ticket_form` tinyint(1) NOT NULL DEFAULT '0',
  `only_admin` tinyint(1) NOT NULL DEFAULT '0',
  `show_on_table` tinyint(1) NOT NULL DEFAULT '0',
  `show_on_client_portal` int(11) NOT NULL DEFAULT '0',
  `disalow_client_to_edit` int(11) NOT NULL DEFAULT '0',
  `bs_column` int(11) NOT NULL DEFAULT '12'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcustomfieldsvalues`
--

CREATE TABLE `tblcustomfieldsvalues` (
  `id` int(11) NOT NULL,
  `relid` int(11) NOT NULL,
  `fieldid` int(11) NOT NULL,
  `fieldto` varchar(50) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `departmentid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `imap_username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `email_from_header` tinyint(1) NOT NULL DEFAULT '0',
  `host` varchar(150) DEFAULT NULL,
  `password` mediumtext,
  `encryption` varchar(3) DEFAULT NULL,
  `delete_after_import` int(11) NOT NULL DEFAULT '0',
  `calendar_id` mediumtext,
  `hidefromclient` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbldismissedannouncements`
--

CREATE TABLE `tbldismissedannouncements` (
  `dismissedannouncementid` int(11) NOT NULL,
  `announcementid` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblemaillists`
--

CREATE TABLE `tblemaillists` (
  `listid` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `creator` varchar(100) NOT NULL,
  `datecreated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblemailqueue`
--

CREATE TABLE `tblemailqueue` (
  `id` int(11) NOT NULL,
  `engine` varchar(40) DEFAULT NULL,
  `email` varchar(500) NOT NULL,
  `cc` varchar(500) DEFAULT NULL,
  `bcc` varchar(500) DEFAULT NULL,
  `message` mediumtext NOT NULL,
  `alt_message` mediumtext,
  `status` enum('pending','sending','sent','failed') DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `headers` text,
  `attachments` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblemailstracking`
--

CREATE TABLE `tblemailstracking` (
  `id` int(11) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `email` varchar(100) NOT NULL,
  `opened` tinyint(1) NOT NULL DEFAULT '0',
  `date_opened` datetime DEFAULT NULL,
  `subject` varchar(300) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblemailtemplates`
--

CREATE TABLE `tblemailtemplates` (
  `emailtemplateid` int(11) NOT NULL,
  `type` mediumtext NOT NULL,
  `slug` varchar(100) NOT NULL,
  `language` varchar(40) DEFAULT NULL,
  `name` mediumtext NOT NULL,
  `subject` mediumtext NOT NULL,
  `message` text NOT NULL,
  `fromname` mediumtext NOT NULL,
  `fromemail` varchar(100) DEFAULT NULL,
  `plaintext` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblemailtemplates`
--

INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(1, 'client', 'new-client-created', 'english', 'New Contact Added/Registered (Welcome Email)', 'Welcome aboard', 'Dear {contact_firstname} {contact_lastname}<br /><br />Thank you for registering on the <strong>{companyname}</strong> CRM System.<br /><br />We just wanted to say welcome.<br /><br />Please contact us if you need any help.<br /><br />Click here to view your profile: <a href=\"{crm_url}\">{crm_url}</a><br /><br />Kind Regards, <br />{email_signature}<br /><br />(This is an automated email, so please don\'t reply to this email address)', '{companyname} | CRM', '', 0, 1, 0),
(2, 'invoice', 'invoice-send-to-client', 'english', 'Send Invoice to Customer', 'Invoice with number {invoice_number} created', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">We have prepared the following invoice for you: <strong># {invoice_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Invoice status</strong>: {invoice_status}</span><br /> <br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(3, 'ticket', 'new-ticket-opened-admin', 'english', 'New Ticket Opened (Opened by Staff, Sent to Customer)', 'New Support Ticket Opened', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">New support ticket has been opened.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department:</strong> {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {ticket_priority}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}<br /><br /></a>Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(4, 'ticket', 'ticket-reply', 'english', 'Ticket Reply (Sent to Customer)', 'New Ticket Reply', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">You have a new ticket reply to ticket <a href=\"{ticket_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket Subject:</strong> {ticket_subject}<br /></span><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(5, 'ticket', 'ticket-autoresponse', 'english', 'New Ticket Opened - Autoresponse', 'New Support Ticket Opened', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">Thank you for contacting our support team. A support ticket has now been opened for your request. You will be notified when a response is made by email.</span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {ticket_priority}</span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(6, 'invoice', 'invoice-payment-recorded', 'english', 'Invoice Payment Recorded (Sent to Customer)', 'Invoice Payment Recorded', '<span style=\"font-size: 12pt;\">Hello {contact_firstname}&nbsp;{contact_lastname}<br /><br /></span>Thank you for the payment. Find the payment details below:<br /><br />-------------------------------------------------<br /><br />Amount:&nbsp;<strong>{payment_total}<br /></strong>Date:&nbsp;<strong>{payment_date}</strong><br />Invoice number:&nbsp;<span style=\"font-size: 12pt;\"><strong># {invoice_number}<br /><br /></strong></span>-------------------------------------------------<br /><br />You can always view the invoice for this payment at the following link:&nbsp;<a href=\"{invoice_link}\"><span style=\"font-size: 12pt;\">{invoice_number}</span></a><br /><br />We are looking forward working with you.<br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(7, 'invoice', 'invoice-overdue-notice', 'english', 'Invoice Overdue Notice', 'Invoice Overdue Notice - {invoice_number}', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">This is an overdue notice for invoice <strong># {invoice_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\">This invoice was due: {invoice_duedate}</span><br /> <br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(8, 'invoice', 'invoice-already-send', 'english', 'Invoice Already Sent to Customer', 'On your command here is the invoice', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">At your request, here is the invoice with number <strong># {invoice_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(9, 'ticket', 'new-ticket-created-staff', 'english', 'New Ticket Created (Opened by Customer, Sent to Staff Members)', 'New Ticket Created', '<span style=\"font-size: 12pt;\">A new support ticket has been opened.</span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Subject</strong>: {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority</strong>: {ticket_priority}</span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}<br /></a></span><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(10, 'estimate', 'estimate-send-to-client', 'english', 'Send Estimate to Customer', 'Estimate # {estimate_number} created', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">Please find the attached estimate <strong># {estimate_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Estimate status:</strong> {estimate_status}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">We look forward to your communication.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}<br /></span>', '{companyname} | CRM', '', 0, 1, 0),
(11, 'ticket', 'ticket-reply-to-admin', 'english', 'Ticket Reply (Sent to Staff)', 'New Support Ticket Reply', '<span style=\"font-size: 12pt;\">A new support ticket reply from {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Subject</strong>: {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority</strong>: {ticket_priority}</span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /> <br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(12, 'estimate', 'estimate-already-send', 'english', 'Estimate Already Sent to Customer', 'Estimate # {estimate_number} ', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">Thank you for your estimate request.</span><br /> <br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(13, 'contract', 'contract-expiration', 'english', 'Contract Expiration Reminder (Sent to Customer Contacts)', 'Contract Expiration Reminder', '<span style=\"font-size: 12pt;\">Dear {client_company}</span><br /><br /><span style=\"font-size: 12pt;\">This is a reminder that the following contract will expire soon:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {contract_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Description:</strong> {contract_description}</span><br /><span style=\"font-size: 12pt;\"><strong>Date Start:</strong> {contract_datestart}</span><br /><span style=\"font-size: 12pt;\"><strong>Date End:</strong> {contract_dateend}</span><br /><br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(14, 'tasks', 'task-assigned', 'english', 'New Task Assigned (Sent to Staff)', 'New Task Assigned to You - {task_name}', '<span style=\"font-size: 12pt;\">Dear {staff_firstname} {staff_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">You have been assigned to a new task:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}<br /></span><strong>Start Date:</strong> {task_startdate}<br /><span style=\"font-size: 12pt;\"><strong>Due date:</strong> {task_duedate}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {task_priority}<br /><br /></span><span style=\"font-size: 12pt;\"><span>You can view the task on the following link</span>: <a href=\"{task_link}\">{task_name}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(15, 'tasks', 'task-added-as-follower', 'english', 'Staff Member Added as Follower on Task (Sent to Staff)', 'You are added as follower on task - {task_name}', '<span style=\"font-size: 12pt;\">Hi {staff_firstname} {staff_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">You have been added as follower on the following task:</span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}</span><br /><span style=\"font-size: 12pt;\"><strong>Start date:</strong> {task_startdate}</span><br /><br /><span>You can view the task on the following link</span><span>: </span><a href=\"{task_link}\">{task_name}</a><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(16, 'tasks', 'task-commented', 'english', 'New Comment on Task (Sent to Staff)', 'New Comment on Task - {task_name}', 'Dear {staff_firstname} {staff_lastname}<br /><br />A comment has been made on the following task:<br /><br /><strong>Name:</strong> {task_name}<br /><strong>Comment:</strong> {task_comment}<br /><br />You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a><br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(17, 'tasks', 'task-added-attachment', 'english', 'New Attachment(s) on Task (Sent to Staff)', 'New Attachment on Task - {task_name}', 'Hi {staff_firstname} {staff_lastname}<br /> <br /><strong>{task_user_take_action}</strong> added an attachment on the following task:<br /> <br /><strong>Name:</strong> {task_name}<br /> <br />You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a><br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(18, 'estimate', 'estimate-declined-to-staff', 'english', 'Estimate Declined (Sent to Staff)', 'Customer Declined Estimate', '<span style=\"font-size: 12pt;\">Hi</span><br /> <br /><span style=\"font-size: 12pt;\">Customer ({client_company}) declined estimate with number <strong># {estimate_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(19, 'estimate', 'estimate-accepted-to-staff', 'english', 'Estimate Accepted (Sent to Staff)', 'Customer Accepted Estimate', '<span style=\"font-size: 12pt;\">Hi</span><br /> <br /><span style=\"font-size: 12pt;\">Customer ({client_company}) accepted estimate with number <strong># {estimate_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(20, 'proposals', 'proposal-client-accepted', 'english', 'Customer Action - Accepted (Sent to Staff)', 'Customer Accepted Proposal', '<div>Hi<br /> <br />Client <strong>{proposal_proposal_to}</strong> accepted the following proposal:<br /> <br /><strong>Number:</strong> {proposal_number}<br /><strong>Subject</strong>: {proposal_subject}<br /><strong>Total</strong>: {proposal_total}<br /> <br />View the proposal on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /> <br />Kind Regards,<br />{email_signature}</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>', '{companyname} | CRM', '', 0, 1, 0),
(21, 'proposals', 'proposal-send-to-customer', 'english', 'Send Proposal to Customer', 'Proposal With Number {proposal_number} Created', 'Dear {proposal_proposal_to}<br /><br />Please find our attached proposal.<br /><br />This proposal is valid until: {proposal_open_till}<br />You can view the proposal on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /><br />Please don\'t hesitate to comment online if you have any questions.<br /><br />We look forward to your communication.<br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(22, 'proposals', 'proposal-client-declined', 'english', 'Customer Action - Declined (Sent to Staff)', 'Client Declined Proposal', 'Hi<br /> <br />Customer <strong>{proposal_proposal_to}</strong> declined the proposal <strong>{proposal_subject}</strong><br /> <br />View the proposal on the following link <a href=\"{proposal_link}\">{proposal_number}</a>&nbsp;or from the admin area.<br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(23, 'proposals', 'proposal-client-thank-you', 'english', 'Thank You Email (Sent to Customer After Accept)', 'Thank for you accepting proposal', 'Dear {proposal_proposal_to}<br /> <br />Thank for for accepting the proposal.<br /> <br />We look forward to doing business with you.<br /> <br />We will contact you as soon as possible<br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(24, 'proposals', 'proposal-comment-to-client', 'english', 'New Comment  (Sent to Customer/Lead)', 'New Proposal Comment', 'Dear {proposal_proposal_to}<br /> <br />A new comment has been made on the following proposal: <strong>{proposal_number}</strong><br /> <br />You can view and reply to the comment on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(25, 'proposals', 'proposal-comment-to-admin', 'english', 'New Comment (Sent to Staff) ', 'New Proposal Comment', 'Hi<br /> <br />A new comment has been made to the proposal <strong>{proposal_subject}</strong><br /> <br />You can view and reply to the comment on the following link: <a href=\"{proposal_link}\">{proposal_number}</a>&nbsp;or from the admin area.<br /> <br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(26, 'estimate', 'estimate-thank-you-to-customer', 'english', 'Thank You Email (Sent to Customer After Accept)', 'Thank for you accepting estimate', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">Thank for for accepting the estimate.</span><br /> <br /><span style=\"font-size: 12pt;\">We look forward to doing business with you.</span><br /> <br /><span style=\"font-size: 12pt;\">We will contact you as soon as possible.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(27, 'tasks', 'task-deadline-notification', 'english', 'Task Deadline Reminder - Sent to Assigned Members', 'Task Deadline Reminder', 'Hi {staff_firstname}&nbsp;{staff_lastname}<br /><br />This is an automated email from {companyname}.<br /><br />The task <strong>{task_name}</strong> deadline is on <strong>{task_duedate}</strong>. <br />This task is still not finished.<br /><br />You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a><br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(28, 'contract', 'send-contract', 'english', 'Send Contract to Customer', 'Contract - {contract_subject}', '<p><span style=\"font-size: 12pt;\">Hi&nbsp;{contact_firstname}&nbsp;{contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">Please find the {contract_subject} attached.<br /><br /></span><span style=\"font-size: 12pt;\">Looking forward to hear from you.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(29, 'invoice', 'invoice-payment-recorded-to-staff', 'english', 'Invoice Payment Recorded (Sent to Staff)', 'New Invoice Payment', '<span style=\"font-size: 12pt;\">Hi</span><br /><br /><span style=\"font-size: 12pt;\">Customer recorded payment for invoice <strong># {invoice_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(30, 'ticket', 'auto-close-ticket', 'english', 'Auto Close Ticket', 'Ticket Auto Closed', '<p><span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">Ticket {ticket_subject} has been auto close due to inactivity.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket #</strong>: <a href=\"{ticket_url}\">{ticket_id}</a></span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {ticket_priority}</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(31, 'project', 'new-project-discussion-created-to-staff', 'english', 'New Project Discussion (Sent to Project Members)', 'New Project Discussion Created', '<p>Hello {staff_firstname} {staff_lastname}<br /><br />New project discussion created from <strong>{discussion_creator}</strong><br /><br /><strong>Subject:</strong> {discussion_subject}<br /><strong>Description:</strong> {discussion_description}<br /><br />You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(32, 'project', 'new-project-discussion-created-to-customer', 'english', 'New Project Discussion (Sent to Customer Contacts)', 'New Project Discussion Created', '<p>Hello {contact_firstname} {contact_lastname}<br /><br />New project discussion created from <strong>{discussion_creator}</strong><br /><br /><strong>Subject:</strong> {discussion_subject}<br /><strong>Description:</strong> {discussion_description}<br /><br />You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(33, 'project', 'new-project-file-uploaded-to-customer', 'english', 'New Project File(s) Uploaded (Sent to Customer Contacts)', 'New Project File(s) Uploaded', '<p>Hello {contact_firstname} {contact_lastname}<br /><br />New project file is uploaded on <strong>{project_name}</strong> from <strong>{file_creator}</strong><br /><br />You can view the project on the following link: <a href=\"{project_link}\">{project_name}</a><br /><br />To view the file in our CRM you can click on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(34, 'project', 'new-project-file-uploaded-to-staff', 'english', 'New Project File(s) Uploaded (Sent to Project Members)', 'New Project File(s) Uploaded', '<p>Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}</p>\r\n<p>New project&nbsp;file is uploaded on&nbsp;<strong>{project_name}</strong> from&nbsp;<strong>{file_creator}</strong></p>\r\n<p>You can view the project on the following link: <a href=\"{project_link}\">{project_name}<br /></a><br />To view&nbsp;the file you can click on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></p>\r\n<p>Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(35, 'project', 'new-project-discussion-comment-to-customer', 'english', 'New Discussion Comment  (Sent to Customer Contacts)', 'New Discussion Comment', '<p><span style=\"font-size: 12pt;\">Hello {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">New discussion comment has been made on <strong>{discussion_subject}</strong> from <strong>{comment_creator}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Discussion subject:</strong> {discussion_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Comment</strong>: {discussion_comment}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(36, 'project', 'new-project-discussion-comment-to-staff', 'english', 'New Discussion Comment (Sent to Project Members)', 'New Discussion Comment', '<p>Hello {staff_firstname} {staff_lastname}<br /><br />New discussion comment has been made on <strong>{discussion_subject}</strong> from <strong>{comment_creator}</strong><br /><br /><strong>Discussion subject:</strong> {discussion_subject}<br /><strong>Comment:</strong> {discussion_comment}<br /><br />You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(37, 'project', 'staff-added-as-project-member', 'english', 'Staff Added as Project Member', 'New project assigned to you', '<p>Hello {staff_firstname} {staff_lastname}<br /><br />New project has been assigned to you.<br /><br />You can view the project on the following link <a href=\"{project_link}\">{project_name}</a><br /><br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(38, 'estimate', 'estimate-expiry-reminder', 'english', 'Estimate Expiration Reminder', 'Estimate Expiration Reminder', '<p><span style=\"font-size: 12pt;\">Hello {client_company}</span><br /><br /><span style=\"font-size: 12pt;\">The estimate with <strong># {estimate_number}</strong> will expire on <strong>{estimate_expirydate}</strong></span><br /><br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(39, 'proposals', 'proposal-expiry-reminder', 'english', 'Proposal Expiration Reminder', 'Proposal Expiration Reminder', '<p>Hello {proposal_proposal_to}<br /><br />The proposal {proposal_number}&nbsp;will expire on <strong>{proposal_open_till}</strong><br /><br />You can view the proposal on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(40, 'staff', 'new-staff-created', 'english', 'New Staff Created (Welcome Email)', 'You are added as staff member', 'Hello {staff_firstname} {staff_lastname}<br /><br />You are added as member on our CRM.<br /><br />Please use the following logic credentials:<br /><br /><strong>Email:</strong> {staff_email}<br /><strong>Password:</strong> {password}<br /><br />Click <a href=\"{admin_url}\">here </a>to login in the dashboard.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(41, 'client', 'contact-forgot-password', 'english', 'Forgot Password', 'Create New Password', '<h2>Create a new password</h2>\r\nForgot your password?<br /> To create a new password, just follow this link:<br /> <br /><a href=\"{reset_password_url}\">Reset Password</a><br /> <br /> You received this email, because it was requested by a {companyname}&nbsp;user. This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same. <br /><br /> {email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(42, 'client', 'contact-password-reseted', 'english', 'Password Reset - Confirmation', 'Your password has been changed', '<strong><span style=\"font-size: 14pt;\">You have changed your password.</span><br /></strong><br /> Please, keep it in your records so you don\'t forget it.<br /> <br /> Your email address for login is: {contact_email}<br /><br />If this wasnt you, please contact us.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(43, 'client', 'contact-set-password', 'english', 'Set New Password', 'Set new password on {companyname} ', '<h2><span style=\"font-size: 14pt;\">Setup your new password on {companyname}</span></h2>\r\nPlease use the following link to setup your new password:<br /><br /><a href=\"{set_password_url}\">Set new password</a><br /><br />Keep it in your records so you don\'t forget it.<br /><br /> Please set your new password in <strong>48 hours</strong>. After that you wont be able to set your password because this link will expire.<br /><br />You can login at: <a href=\"{crm_url}\">{crm_url}</a><br /> Your email address for login: {contact_email}<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(44, 'staff', 'staff-forgot-password', 'english', 'Forgot Password', 'Create New Password', '<h2><span style=\"font-size: 14pt;\">Create a new password</span></h2>\r\nForgot your password?<br /> To create a new password, just follow this link:<br /> <br /><a href=\"{reset_password_url}\">Reset Password</a><br /> <br /> You received this email, because it was requested by a <strong>{companyname}</strong>&nbsp;user. This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same. <br /><br /> {email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(45, 'staff', 'staff-password-reseted', 'english', 'Password Reset - Confirmation', 'Your password has been changed', '<span style=\"font-size: 14pt;\"><strong>You have changed your password.<br /></strong></span><br /> Please, keep it in your records so you don\'t forget it.<br /> <br /> Your email address for login is: {staff_email}<br /><br /> If this wasnt you, please contact us.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(46, 'project', 'assigned-to-project', 'english', 'New Project Created (Sent to Customer Contacts)', 'New Project Created', '<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>New project is assigned to your company.<br /><br /><strong>Project Name:</strong>&nbsp;{project_name}<br /><strong>Project Start Date:</strong>&nbsp;{project_start_date}</p>\r\n<p>You can view the project on the following link:&nbsp;<a href=\"{project_link}\">{project_name}</a></p>\r\n<p>We are looking forward hearing from you.<br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(47, 'tasks', 'task-added-attachment-to-contacts', 'english', 'New Attachment(s) on Task (Sent to Customer Contacts)', 'New Attachment on Task - {task_name}', '<span>Hi {contact_firstname} {contact_lastname}</span><br /><br /><strong>{task_user_take_action}</strong><span> added an attachment on the following task:</span><br /><br /><strong>Name:</strong><span> {task_name}</span><br /><br /><span>You can view the task on the following link: </span><a href=\"{task_link}\">{task_name}</a><br /><br /><span>Kind Regards,</span><br /><span>{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(48, 'tasks', 'task-commented-to-contacts', 'english', 'New Comment on Task (Sent to Customer Contacts)', 'New Comment on Task - {task_name}', '<span>Dear {contact_firstname} {contact_lastname}</span><br /><br /><span>A comment has been made on the following task:</span><br /><br /><strong>Name:</strong><span> {task_name}</span><br /><strong>Comment:</strong><span> {task_comment}</span><br /><br /><span>You can view the task on the following link: </span><a href=\"{task_link}\">{task_name}</a><br /><br /><span>Kind Regards,</span><br /><span>{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(49, 'leads', 'new-lead-assigned', 'english', 'New Lead Assigned to Staff Member', 'New lead assigned to you', '<p>Hello {lead_assigned}<br /><br />New lead is assigned to you.<br /><br /><strong>Lead Name:</strong>&nbsp;{lead_name}<br /><strong>Lead Email:</strong>&nbsp;{lead_email}<br /><br />You can view the lead on the following link: <a href=\"{lead_link}\">{lead_name}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(50, 'client', 'client-statement', 'english', 'Statement - Account Summary', 'Account Statement from {statement_from} to {statement_to}', 'Dear {contact_firstname} {contact_lastname}, <br /><br />Its been a great experience working with you.<br /><br />Attached with this email is a list of all transactions for the period between {statement_from} to {statement_to}<br /><br />For your information your account balance due is total:&nbsp;{statement_balance_due}<br /><br />Please contact us if you need more information.<br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(51, 'ticket', 'ticket-assigned-to-admin', 'english', 'New Ticket Assigned (Sent to Staff)', 'New support ticket has been assigned to you', '<p><span style=\"font-size: 12pt;\">Hi.</span></p>\r\n<p><span style=\"font-size: 12pt;\">A new support ticket&nbsp;has been assigned to you.</span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Subject</strong>: {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority</strong>: {ticket_priority}</span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /> <br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(52, 'client', 'new-client-registered-to-admin', 'english', 'New Customer Registration (Sent to admins)', 'New Customer Registration', 'Hello.<br /><br />New customer registration on your customer portal:<br /><br /><strong>Firstname:</strong>&nbsp;{contact_firstname}<br /><strong>Lastname:</strong>&nbsp;{contact_lastname}<br /><strong>Company:</strong>&nbsp;{client_company}<br /><strong>Email:</strong>&nbsp;{contact_email}<br /><br />Best Regards', '{companyname} | CRM', '', 0, 1, 0),
(53, 'leads', 'new-web-to-lead-form-submitted', 'english', 'Web to lead form submitted - Sent to lead', '{lead_name} - We Received Your Request', 'Hello {lead_name}.<br /><br /><strong>Your request has been received.</strong><br /><br />This email is to let you know that we received your request and we will get back to you as soon as possible with more information.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 0, 0),
(54, 'staff', 'two-factor-authentication', 'english', 'Two Factor Authentication', 'Confirm Your Login', '<p>Hello {staff_firstname}</p>\r\n<p style=\"text-align: left;\">You received this email because you have enabled two factor authentication in your account.<br />Use the following code to confirm your login:</p>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 18pt;\"><strong>{two_factor_auth_code}<br /><br /></strong><span style=\"font-size: 12pt;\">{email_signature}</span><strong><br /><br /><br /><br /></strong></span></p>', '{companyname} | CRM', '', 0, 1, 0),
(55, 'project', 'project-finished-to-customer', 'english', 'Project Marked as Finished (Sent to Customer Contacts)', 'Project Marked as Finished', '<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>You are receiving this email because project&nbsp;<strong>{project_name}</strong> has been marked as finished. This project is assigned under your company and we just wanted to keep you up to date.<br /><br />You can view the project on the following link:&nbsp;<a href=\"{project_link}\">{project_name}</a></p>\r\n<p>If you have any questions don\'t hesitate to contact us.<br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(56, 'credit_note', 'credit-note-send-to-client', 'english', 'Send Credit Note To Email', 'Credit Note With Number #{credit_note_number} Created', 'Dear&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />We have attached the credit note with number <strong>#{credit_note_number} </strong>for your reference.<br /><br /><strong>Date:</strong>&nbsp;{credit_note_date}<br /><strong>Total Amount:</strong>&nbsp;{credit_note_total}<br /><br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(57, 'tasks', 'task-status-change-to-staff', 'english', 'Task Status Changed (Sent to Staff)', 'Task Status Changed', '<span style=\"font-size: 12pt;\">Hi {staff_firstname} {staff_lastname}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>{task_user_take_action}</strong> marked task as <strong>{task_status}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}</span><br /><span style=\"font-size: 12pt;\"><strong>Due date:</strong> {task_duedate}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(58, 'tasks', 'task-status-change-to-contacts', 'english', 'Task Status Changed (Sent to Customer Contacts)', 'Task Status Changed', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>{task_user_take_action}</strong> marked task as <strong>{task_status}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}</span><br /><span style=\"font-size: 12pt;\"><strong>Due date:</strong> {task_duedate}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(59, 'staff', 'reminder-email-staff', 'english', 'Staff Reminder Email', 'You Have a New Reminder!', '<p>Hello&nbsp;{staff_firstname}<br /><br /><strong>You have a new reminder&nbsp;linked to&nbsp;{staff_reminder_relation_name}!<br /><br />Reminder description:</strong><br />{staff_reminder_description}<br /><br />Click <a href=\"{staff_reminder_relation_link}\">here</a> to view&nbsp;<a href=\"{staff_reminder_relation_link}\">{staff_reminder_relation_name}</a><br /><br />Best Regards<br /><br /></p>', '{companyname} | CRM', '', 0, 1, 0),
(60, 'contract', 'contract-comment-to-client', 'english', 'New Comment  (Sent to Customer Contacts)', 'New Contract Comment', 'Dear {contact_firstname} {contact_lastname}<br /> <br />A new comment has been made on the following contract: <strong>{contract_subject}</strong><br /> <br />You can view and reply to the comment on the following link: <a href=\"{contract_link}\">{contract_subject}</a><br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(61, 'contract', 'contract-comment-to-admin', 'english', 'New Comment (Sent to Staff) ', 'New Contract Comment', 'Hi<br /> <br />A new comment has been made to the proposal <strong>{contract_subject}</strong><br /> <br />You can view and reply to the comment on the following link: <a href=\"{contract_link}\">{contract_subject}</a>&nbsp;or from the admin area.<br /> <br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(62, 'subscriptions', 'send-subscription', 'english', 'Send Subscription to Customer', 'Subscription Created', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />We have prepared the subscription&nbsp;<strong>{subscription_name}</strong> for your company.<br /><br />Click <a href=\"{subscription_link}\">here</a> to review the subscription and subscribe.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(63, 'subscriptions', 'subscription-payment-failed', 'english', 'Subscription Payment Failed', 'Your most recent invoice payment failed', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br br=\"\" />Unfortunately, your most recent invoice payment for&nbsp;<strong>{subscription_name}</strong> was declined.<br /><br /> This could be due to a change in your card number, your card expiring,<br /> cancellation of your credit card, or the card issuer not recognizing the<br /> payment and therefore taking action to prevent it.<br /><br /> Please update your payment information as soon as possible by logging in here:<br /><a href=\"{crm_url}\">{crm_url}</a><br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(64, 'subscriptions', 'subscription-canceled', 'english', 'Subscription Canceled (Sent to customer primary contact)', 'Your subscription has been canceled', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />Your subscription&nbsp;<strong>{subscription_name} </strong>has been canceled, if you have any questions don\'t hesitate to contact us.<br /><br />It was a pleasure doing business with you.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(65, 'subscriptions', 'subscription-payment-succeeded', 'english', 'Subscription Payment Succeeded (Sent to customer primary contact)', 'Subscription  Payment Receipt - {subscription_name}', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />This email is to let you know that we received your payment for subscription&nbsp;<strong>{subscription_name}&nbsp;</strong>of&nbsp;<strong><span>{payment_total}<br /><br /></span></strong>The invoice associated with it is now with status&nbsp;<strong>{invoice_status}<br /></strong><br />Thank you for your confidence.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(66, 'contract', 'contract-expiration-to-staff', 'english', 'Contract Expiration Reminder (Sent to staff members)', 'Contract Expiration Reminder', 'Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}<br /><br /><span style=\"font-size: 12pt;\">This is a reminder that the following contract will expire soon:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {contract_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Description:</strong> {contract_description}</span><br /><span style=\"font-size: 12pt;\"><strong>Date Start:</strong> {contract_datestart}</span><br /><span style=\"font-size: 12pt;\"><strong>Date End:</strong> {contract_dateend}</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(67, 'gdpr', 'gdpr-removal-request', 'english', 'Removal Request From Contact (Sent to administrators)', 'Data Removal Request Received', 'Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}<br /><br />Data removal has been requested by&nbsp;{contact_firstname} {contact_lastname}<br /><br />You can review this request and take proper actions directly from the admin area.', '{companyname} | CRM', '', 0, 1, 0),
(68, 'gdpr', 'gdpr-removal-request-lead', 'english', 'Removal Request From Lead (Sent to administrators)', 'Data Removal Request Received', 'Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}<br /><br />Data removal has been requested by {lead_name}<br /><br />You can review this request and take proper actions directly from the admin area.<br /><br />To view the lead inside the admin area click here:&nbsp;<a href=\"{lead_link}\">{lead_link}</a>', '{companyname} | CRM', '', 0, 1, 0),
(69, 'client', 'client-registration-confirmed', 'english', 'Customer Registration Confirmed', 'Your registration is confirmed', '<p>Dear {contact_firstname} {contact_lastname}<br /><br />We just wanted to let you know that your registration at&nbsp;{companyname} is successfully confirmed and your account is now active.<br /><br />You can login at&nbsp;<a href=\"{crm_url}\">{crm_url}</a> with the email and password you provided during registration.<br /><br />Please contact us if you need any help.<br /><br />Kind Regards, <br />{email_signature}</p>\r\n<p><br />(This is an automated email, so please don\'t reply to this email address)</p>', '{companyname} | CRM', '', 0, 1, 0),
(70, 'client', 'new-client-created', 'vietnamese', 'New Contact Added/Registered (Welcome Email) [vietnamese]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(71, 'invoice', 'invoice-send-to-client', 'vietnamese', 'Send Invoice to Customer [vietnamese]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(72, 'ticket', 'new-ticket-opened-admin', 'vietnamese', 'New Ticket Opened (Opened by Staff, Sent to Customer) [vietnamese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(73, 'ticket', 'ticket-reply', 'vietnamese', 'Ticket Reply (Sent to Customer) [vietnamese]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(74, 'ticket', 'ticket-autoresponse', 'vietnamese', 'New Ticket Opened - Autoresponse [vietnamese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(75, 'invoice', 'invoice-payment-recorded', 'vietnamese', 'Invoice Payment Recorded (Sent to Customer) [vietnamese]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(76, 'invoice', 'invoice-overdue-notice', 'vietnamese', 'Invoice Overdue Notice [vietnamese]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(77, 'invoice', 'invoice-already-send', 'vietnamese', 'Invoice Already Sent to Customer [vietnamese]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, 0, 1, 0),
(78, 'ticket', 'new-ticket-created-staff', 'vietnamese', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [vietnamese]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(79, 'estimate', 'estimate-send-to-client', 'vietnamese', 'Send Estimate to Customer [vietnamese]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(80, 'ticket', 'ticket-reply-to-admin', 'vietnamese', 'Ticket Reply (Sent to Staff) [vietnamese]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(81, 'estimate', 'estimate-already-send', 'vietnamese', 'Estimate Already Sent to Customer [vietnamese]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(82, 'contract', 'contract-expiration', 'vietnamese', 'Contract Expiration Reminder (Sent to Customer Contacts) [vietnamese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(83, 'tasks', 'task-assigned', 'vietnamese', 'New Task Assigned (Sent to Staff) [vietnamese]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(84, 'tasks', 'task-added-as-follower', 'vietnamese', 'Staff Member Added as Follower on Task (Sent to Staff) [vietnamese]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(85, 'tasks', 'task-commented', 'vietnamese', 'New Comment on Task (Sent to Staff) [vietnamese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(86, 'tasks', 'task-added-attachment', 'vietnamese', 'New Attachment(s) on Task (Sent to Staff) [vietnamese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(87, 'estimate', 'estimate-declined-to-staff', 'vietnamese', 'Estimate Declined (Sent to Staff) [vietnamese]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(88, 'estimate', 'estimate-accepted-to-staff', 'vietnamese', 'Estimate Accepted (Sent to Staff) [vietnamese]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(89, 'proposals', 'proposal-client-accepted', 'vietnamese', 'Customer Action - Accepted (Sent to Staff) [vietnamese]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(90, 'proposals', 'proposal-send-to-customer', 'vietnamese', 'Send Proposal to Customer [vietnamese]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(91, 'proposals', 'proposal-client-declined', 'vietnamese', 'Customer Action - Declined (Sent to Staff) [vietnamese]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(92, 'proposals', 'proposal-client-thank-you', 'vietnamese', 'Thank You Email (Sent to Customer After Accept) [vietnamese]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(93, 'proposals', 'proposal-comment-to-client', 'vietnamese', 'New Comment  (Sent to Customer/Lead) [vietnamese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(94, 'proposals', 'proposal-comment-to-admin', 'vietnamese', 'New Comment (Sent to Staff)  [vietnamese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(95, 'estimate', 'estimate-thank-you-to-customer', 'vietnamese', 'Thank You Email (Sent to Customer After Accept) [vietnamese]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(96, 'tasks', 'task-deadline-notification', 'vietnamese', 'Task Deadline Reminder - Sent to Assigned Members [vietnamese]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(97, 'contract', 'send-contract', 'vietnamese', 'Send Contract to Customer [vietnamese]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(98, 'invoice', 'invoice-payment-recorded-to-staff', 'vietnamese', 'Invoice Payment Recorded (Sent to Staff) [vietnamese]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(99, 'ticket', 'auto-close-ticket', 'vietnamese', 'Auto Close Ticket [vietnamese]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(100, 'project', 'new-project-discussion-created-to-staff', 'vietnamese', 'New Project Discussion (Sent to Project Members) [vietnamese]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(101, 'project', 'new-project-discussion-created-to-customer', 'vietnamese', 'New Project Discussion (Sent to Customer Contacts) [vietnamese]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(102, 'project', 'new-project-file-uploaded-to-customer', 'vietnamese', 'New Project File(s) Uploaded (Sent to Customer Contacts) [vietnamese]', 'New Project File(s) Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(103, 'project', 'new-project-file-uploaded-to-staff', 'vietnamese', 'New Project File(s) Uploaded (Sent to Project Members) [vietnamese]', 'New Project File(s) Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(104, 'project', 'new-project-discussion-comment-to-customer', 'vietnamese', 'New Discussion Comment  (Sent to Customer Contacts) [vietnamese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(105, 'project', 'new-project-discussion-comment-to-staff', 'vietnamese', 'New Discussion Comment (Sent to Project Members) [vietnamese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(106, 'project', 'staff-added-as-project-member', 'vietnamese', 'Staff Added as Project Member [vietnamese]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(107, 'estimate', 'estimate-expiry-reminder', 'vietnamese', 'Estimate Expiration Reminder [vietnamese]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(108, 'proposals', 'proposal-expiry-reminder', 'vietnamese', 'Proposal Expiration Reminder [vietnamese]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(109, 'staff', 'new-staff-created', 'vietnamese', 'New Staff Created (Welcome Email) [vietnamese]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(110, 'client', 'contact-forgot-password', 'vietnamese', 'Forgot Password [vietnamese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(111, 'client', 'contact-password-reseted', 'vietnamese', 'Password Reset - Confirmation [vietnamese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(112, 'client', 'contact-set-password', 'vietnamese', 'Set New Password [vietnamese]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(113, 'staff', 'staff-forgot-password', 'vietnamese', 'Forgot Password [vietnamese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(114, 'staff', 'staff-password-reseted', 'vietnamese', 'Password Reset - Confirmation [vietnamese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(115, 'project', 'assigned-to-project', 'vietnamese', 'New Project Created (Sent to Customer Contacts) [vietnamese]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(116, 'tasks', 'task-added-attachment-to-contacts', 'vietnamese', 'New Attachment(s) on Task (Sent to Customer Contacts) [vietnamese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(117, 'tasks', 'task-commented-to-contacts', 'vietnamese', 'New Comment on Task (Sent to Customer Contacts) [vietnamese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(118, 'leads', 'new-lead-assigned', 'vietnamese', 'New Lead Assigned to Staff Member [vietnamese]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(119, 'client', 'client-statement', 'vietnamese', 'Statement - Account Summary [vietnamese]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(120, 'ticket', 'ticket-assigned-to-admin', 'vietnamese', 'New Ticket Assigned (Sent to Staff) [vietnamese]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(121, 'client', 'new-client-registered-to-admin', 'vietnamese', 'New Customer Registration (Sent to admins) [vietnamese]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(122, 'leads', 'new-web-to-lead-form-submitted', 'vietnamese', 'Web to lead form submitted - Sent to lead [vietnamese]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(123, 'staff', 'two-factor-authentication', 'vietnamese', 'Two Factor Authentication [vietnamese]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(124, 'project', 'project-finished-to-customer', 'vietnamese', 'Project Marked as Finished (Sent to Customer Contacts) [vietnamese]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(125, 'credit_note', 'credit-note-send-to-client', 'vietnamese', 'Send Credit Note To Email [vietnamese]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(126, 'tasks', 'task-status-change-to-staff', 'vietnamese', 'Task Status Changed (Sent to Staff) [vietnamese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(127, 'tasks', 'task-status-change-to-contacts', 'vietnamese', 'Task Status Changed (Sent to Customer Contacts) [vietnamese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(128, 'staff', 'reminder-email-staff', 'vietnamese', 'Staff Reminder Email [vietnamese]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(129, 'contract', 'contract-comment-to-client', 'vietnamese', 'New Comment  (Sent to Customer Contacts) [vietnamese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(130, 'contract', 'contract-comment-to-admin', 'vietnamese', 'New Comment (Sent to Staff)  [vietnamese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(131, 'subscriptions', 'send-subscription', 'vietnamese', 'Send Subscription to Customer [vietnamese]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(132, 'subscriptions', 'subscription-payment-failed', 'vietnamese', 'Subscription Payment Failed [vietnamese]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(133, 'subscriptions', 'subscription-canceled', 'vietnamese', 'Subscription Canceled (Sent to customer primary contact) [vietnamese]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(134, 'subscriptions', 'subscription-payment-succeeded', 'vietnamese', 'Subscription Payment Succeeded (Sent to customer primary contact) [vietnamese]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(135, 'contract', 'contract-expiration-to-staff', 'vietnamese', 'Contract Expiration Reminder (Sent to staff members) [vietnamese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(136, 'gdpr', 'gdpr-removal-request', 'vietnamese', 'Removal Request From Contact (Sent to administrators) [vietnamese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(137, 'gdpr', 'gdpr-removal-request-lead', 'vietnamese', 'Removal Request From Lead (Sent to administrators) [vietnamese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(138, 'client', 'client-registration-confirmed', 'vietnamese', 'Customer Registration Confirmed [vietnamese]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblestimates`
--

CREATE TABLE `tblestimates` (
  `id` int(11) NOT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `datesend` datetime DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `deleted_customer_name` varchar(100) DEFAULT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(32) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `expirydate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total` decimal(15,2) NOT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `clientnote` text,
  `adminnote` text,
  `discount_percent` decimal(15,2) DEFAULT '0.00',
  `discount_total` decimal(15,2) DEFAULT '0.00',
  `discount_type` varchar(30) DEFAULT NULL,
  `invoiceid` int(11) DEFAULT NULL,
  `invoiced_date` datetime DEFAULT NULL,
  `terms` text,
  `reference_no` varchar(100) DEFAULT NULL,
  `sale_agent` int(11) NOT NULL DEFAULT '0',
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_estimate` tinyint(1) NOT NULL DEFAULT '1',
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `pipeline_order` int(11) NOT NULL DEFAULT '0',
  `is_expiry_notified` int(11) NOT NULL DEFAULT '0',
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL,
  `signature` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblevents`
--

CREATE TABLE `tblevents` (
  `eventid` int(11) NOT NULL,
  `title` mediumtext NOT NULL,
  `description` text,
  `userid` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `public` int(11) NOT NULL DEFAULT '0',
  `color` varchar(10) DEFAULT NULL,
  `isstartnotified` tinyint(1) NOT NULL DEFAULT '0',
  `reminder_before` int(11) NOT NULL DEFAULT '0',
  `reminder_before_type` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblexpenses`
--

CREATE TABLE `tblexpenses` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `currency` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `tax2` int(11) NOT NULL DEFAULT '0',
  `reference_no` varchar(100) DEFAULT NULL,
  `note` text,
  `expense_name` varchar(500) DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `billable` int(11) DEFAULT '0',
  `invoiceid` int(11) DEFAULT NULL,
  `paymentmode` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `recurring_type` varchar(10) DEFAULT NULL,
  `repeat_every` int(11) DEFAULT NULL,
  `recurring` int(11) NOT NULL DEFAULT '0',
  `cycles` int(11) NOT NULL DEFAULT '0',
  `total_cycles` int(11) NOT NULL DEFAULT '0',
  `custom_recurring` int(11) NOT NULL DEFAULT '0',
  `last_recurring_date` date DEFAULT NULL,
  `create_invoice_billable` tinyint(1) DEFAULT NULL,
  `send_invoice_to_customer` tinyint(1) NOT NULL,
  `recurring_from` int(11) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblexpensescategories`
--

CREATE TABLE `tblexpensescategories` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblfiles`
--

CREATE TABLE `tblfiles` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `file_name` varchar(600) NOT NULL,
  `filetype` varchar(40) DEFAULT NULL,
  `visible_to_customer` int(11) NOT NULL DEFAULT '0',
  `attachment_key` varchar(32) DEFAULT NULL,
  `external` varchar(40) DEFAULT NULL,
  `external_link` text,
  `thumbnail_link` text COMMENT 'For external usage',
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT '0',
  `task_comment_id` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblformquestionboxes`
--

CREATE TABLE `tblformquestionboxes` (
  `boxid` int(11) NOT NULL,
  `boxtype` varchar(10) NOT NULL,
  `questionid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblformquestionboxesdescription`
--

CREATE TABLE `tblformquestionboxesdescription` (
  `questionboxdescriptionid` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `boxid` mediumtext NOT NULL,
  `questionid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblformquestions`
--

CREATE TABLE `tblformquestions` (
  `questionid` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `question` mediumtext NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `question_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblformresults`
--

CREATE TABLE `tblformresults` (
  `resultid` int(11) NOT NULL,
  `boxid` int(11) NOT NULL,
  `boxdescriptionid` int(11) DEFAULT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `questionid` int(11) NOT NULL,
  `answer` text,
  `resultsetid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblgoals`
--

CREATE TABLE `tblgoals` (
  `id` int(11) NOT NULL,
  `subject` varchar(400) NOT NULL,
  `description` text NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `goal_type` int(11) NOT NULL,
  `contract_type` int(11) NOT NULL DEFAULT '0',
  `achievement` int(11) NOT NULL,
  `notify_when_fail` tinyint(1) NOT NULL DEFAULT '1',
  `notify_when_achieve` tinyint(1) NOT NULL DEFAULT '1',
  `notified` int(11) NOT NULL DEFAULT '0',
  `staff_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblinvoicepaymentrecords`
--

CREATE TABLE `tblinvoicepaymentrecords` (
  `id` int(11) NOT NULL,
  `invoiceid` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `paymentmode` varchar(40) DEFAULT NULL,
  `paymentmethod` varchar(200) DEFAULT NULL,
  `date` date NOT NULL,
  `daterecorded` datetime NOT NULL,
  `note` text NOT NULL,
  `transactionid` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblinvoicepaymentsmodes`
--

CREATE TABLE `tblinvoicepaymentsmodes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `show_on_pdf` int(11) NOT NULL DEFAULT '0',
  `invoices_only` int(11) NOT NULL DEFAULT '0',
  `expenses_only` int(11) NOT NULL DEFAULT '0',
  `selected_by_default` int(11) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblinvoicepaymentsmodes`
--

INSERT INTO `tblinvoicepaymentsmodes` (`id`, `name`, `description`, `show_on_pdf`, `invoices_only`, `expenses_only`, `selected_by_default`, `active`) VALUES
(1, 'Bank', NULL, 0, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblinvoices`
--

CREATE TABLE `tblinvoices` (
  `id` int(11) NOT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `datesend` datetime DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `deleted_customer_name` varchar(100) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT '0',
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `duedate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total` decimal(15,2) NOT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `hash` varchar(32) NOT NULL,
  `status` int(11) DEFAULT '1',
  `clientnote` text,
  `adminnote` text,
  `last_overdue_reminder` date DEFAULT NULL,
  `cancel_overdue_reminders` int(11) NOT NULL DEFAULT '0',
  `allowed_payment_modes` mediumtext,
  `token` mediumtext,
  `discount_percent` decimal(15,2) DEFAULT '0.00',
  `discount_total` decimal(15,2) DEFAULT '0.00',
  `discount_type` varchar(30) NOT NULL,
  `recurring` int(11) NOT NULL DEFAULT '0',
  `recurring_type` varchar(10) DEFAULT NULL,
  `custom_recurring` tinyint(1) NOT NULL DEFAULT '0',
  `cycles` int(11) NOT NULL DEFAULT '0',
  `total_cycles` int(11) NOT NULL DEFAULT '0',
  `is_recurring_from` int(11) DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL,
  `terms` text,
  `sale_agent` int(11) NOT NULL DEFAULT '0',
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_invoice` tinyint(1) NOT NULL DEFAULT '1',
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `project_id` int(11) DEFAULT '0',
  `subscription_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblitems`
--

CREATE TABLE `tblitems` (
  `id` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `long_description` text,
  `rate` decimal(15,2) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `tax2` int(11) DEFAULT NULL,
  `unit` varchar(40) DEFAULT NULL,
  `group_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblitemsrelated`
--

CREATE TABLE `tblitemsrelated` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(30) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblitemstax`
--

CREATE TABLE `tblitemstax` (
  `id` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `taxrate` decimal(15,2) NOT NULL,
  `taxname` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblitems_groups`
--

CREATE TABLE `tblitems_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblitems_in`
--

CREATE TABLE `tblitems_in` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(15) NOT NULL,
  `description` mediumtext NOT NULL,
  `long_description` mediumtext,
  `qty` decimal(15,2) NOT NULL,
  `rate` decimal(15,2) NOT NULL,
  `unit` varchar(40) DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblknowledgebase`
--

CREATE TABLE `tblknowledgebase` (
  `articleid` int(11) NOT NULL,
  `articlegroup` int(11) NOT NULL,
  `subject` mediumtext NOT NULL,
  `description` text NOT NULL,
  `slug` mediumtext NOT NULL,
  `active` tinyint(4) NOT NULL,
  `datecreated` datetime NOT NULL,
  `article_order` int(11) NOT NULL DEFAULT '0',
  `staff_article` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblknowledgebasearticleanswers`
--

CREATE TABLE `tblknowledgebasearticleanswers` (
  `articleanswerid` int(11) NOT NULL,
  `articleid` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblknowledgebasegroups`
--

CREATE TABLE `tblknowledgebasegroups` (
  `groupid` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `group_slug` varchar(300) DEFAULT NULL,
  `description` mediumtext,
  `active` tinyint(4) NOT NULL,
  `color` varchar(10) DEFAULT '#28B8DA',
  `group_order` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblleadactivitylog`
--

CREATE TABLE `tblleadactivitylog` (
  `id` int(11) NOT NULL,
  `leadid` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `additional_data` varchar(600) DEFAULT NULL,
  `date` datetime NOT NULL,
  `staffid` int(11) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `custom_activity` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblleadactivitylog`
--

INSERT INTO `tblleadactivitylog` (`id`, `leadid`, `description`, `additional_data`, `date`, `staffid`, `full_name`, `custom_activity`) VALUES
(1, 1, 'not_lead_activity_created', '', '2018-06-29 10:26:53', 1, 'Dinh Nguyen', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblleads`
--

CREATE TABLE `tblleads` (
  `id` int(11) NOT NULL,
  `hash` varchar(65) DEFAULT NULL,
  `name` varchar(300) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `company` varchar(300) DEFAULT NULL,
  `description` text,
  `country` int(11) NOT NULL DEFAULT '0',
  `zip` varchar(15) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `assigned` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `from_form_id` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `lastcontact` datetime DEFAULT NULL,
  `dateassigned` date DEFAULT NULL,
  `last_status_change` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `leadorder` int(11) DEFAULT '1',
  `phonenumber` varchar(50) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `lost` tinyint(1) NOT NULL DEFAULT '0',
  `junk` int(11) NOT NULL DEFAULT '0',
  `last_lead_status` int(11) NOT NULL DEFAULT '0',
  `is_imported_from_email_integration` tinyint(1) NOT NULL DEFAULT '0',
  `email_integration_uid` varchar(30) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `default_language` varchar(40) DEFAULT NULL,
  `client_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblleads`
--

INSERT INTO `tblleads` (`id`, `hash`, `name`, `title`, `company`, `description`, `country`, `zip`, `city`, `state`, `address`, `assigned`, `dateadded`, `from_form_id`, `status`, `source`, `lastcontact`, `dateassigned`, `last_status_change`, `addedfrom`, `email`, `website`, `leadorder`, `phonenumber`, `date_converted`, `lost`, `junk`, `last_lead_status`, `is_imported_from_email_integration`, `email_integration_uid`, `is_public`, `default_language`, `client_id`) VALUES
(1, 'b7e877d493e6d96d7862832fbb1c5c80-f175607640c2bd1673c8e4eb511ebdbb', '111', '', '', '', 0, '', '', '', '', 1, '2018-06-29 10:26:53', 0, 1, 1, '2018-06-29 10:26:53', NULL, NULL, 1, '', '', 1, '', NULL, 0, 0, 0, 0, NULL, 0, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblleadsemailintegrationemails`
--

CREATE TABLE `tblleadsemailintegrationemails` (
  `id` int(11) NOT NULL,
  `subject` mediumtext,
  `body` mediumtext,
  `dateadded` datetime NOT NULL,
  `leadid` int(11) NOT NULL,
  `emailid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblleadsintegration`
--

CREATE TABLE `tblleadsintegration` (
  `id` int(11) NOT NULL COMMENT 'the ID always must be 1',
  `active` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `imap_server` varchar(100) NOT NULL,
  `password` mediumtext NOT NULL,
  `check_every` int(11) NOT NULL DEFAULT '5',
  `responsible` int(11) NOT NULL,
  `lead_source` int(11) NOT NULL,
  `lead_status` int(11) NOT NULL,
  `encryption` varchar(3) DEFAULT NULL,
  `folder` varchar(100) NOT NULL,
  `last_run` varchar(50) DEFAULT NULL,
  `notify_lead_imported` tinyint(1) NOT NULL DEFAULT '1',
  `notify_lead_contact_more_times` tinyint(1) NOT NULL DEFAULT '1',
  `notify_type` varchar(20) DEFAULT NULL,
  `notify_ids` mediumtext,
  `mark_public` int(11) NOT NULL DEFAULT '0',
  `only_loop_on_unseen_emails` tinyint(1) NOT NULL DEFAULT '1',
  `delete_after_import` int(11) NOT NULL DEFAULT '0',
  `create_task_if_customer` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblleadsintegration`
--

INSERT INTO `tblleadsintegration` (`id`, `active`, `email`, `imap_server`, `password`, `check_every`, `responsible`, `lead_source`, `lead_status`, `encryption`, `folder`, `last_run`, `notify_lead_imported`, `notify_lead_contact_more_times`, `notify_type`, `notify_ids`, `mark_public`, `only_loop_on_unseen_emails`, `delete_after_import`, `create_task_if_customer`) VALUES
(1, 0, '', '', '', 10, 0, 0, 0, 'tls', 'inbox', '', 1, 1, 'assigned', '', 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblleadssources`
--

CREATE TABLE `tblleadssources` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblleadssources`
--

INSERT INTO `tblleadssources` (`id`, `name`) VALUES
(1, 'Google'),
(2, 'Facebook');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblleadsstatus`
--

CREATE TABLE `tblleadsstatus` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `statusorder` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT '#28B8DA',
  `isdefault` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblleadsstatus`
--

INSERT INTO `tblleadsstatus` (`id`, `name`, `statusorder`, `color`, `isdefault`) VALUES
(1, 'Customer', 1000, '#7cb342', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbllistemails`
--

CREATE TABLE `tbllistemails` (
  `emailid` int(11) NOT NULL,
  `listid` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblmaillistscustomfields`
--

CREATE TABLE `tblmaillistscustomfields` (
  `customfieldid` int(11) NOT NULL,
  `listid` int(11) NOT NULL,
  `fieldname` varchar(150) NOT NULL,
  `fieldslug` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblmaillistscustomfieldvalues`
--

CREATE TABLE `tblmaillistscustomfieldvalues` (
  `customfieldvalueid` int(11) NOT NULL,
  `listid` int(11) NOT NULL,
  `customfieldid` int(11) NOT NULL,
  `emailid` int(11) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblmigrations`
--

CREATE TABLE `tblmigrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblmigrations`
--

INSERT INTO `tblmigrations` (`version`) VALUES
(201);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblmilestones`
--

CREATE TABLE `tblmilestones` (
  `id` int(11) NOT NULL,
  `name` varchar(400) NOT NULL,
  `description` text,
  `description_visible_to_customer` tinyint(1) DEFAULT '0',
  `due_date` date NOT NULL,
  `project_id` int(11) NOT NULL,
  `color` varchar(10) DEFAULT NULL,
  `milestone_order` int(11) NOT NULL DEFAULT '0',
  `datecreated` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblnotes`
--

CREATE TABLE `tblnotes` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `description` text,
  `date_contacted` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblnotifications`
--

CREATE TABLE `tblnotifications` (
  `id` int(11) NOT NULL,
  `isread` int(11) NOT NULL DEFAULT '0',
  `isread_inline` tinyint(1) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `description` text NOT NULL,
  `fromuserid` int(11) NOT NULL,
  `fromclientid` int(11) NOT NULL DEFAULT '0',
  `from_fullname` varchar(100) NOT NULL,
  `touserid` int(11) NOT NULL,
  `fromcompany` int(11) DEFAULT NULL,
  `link` mediumtext,
  `additional_data` varchar(600) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbloptions`
--

CREATE TABLE `tbloptions` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `value` longtext NOT NULL,
  `autoload` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbloptions`
--

INSERT INTO `tbloptions` (`id`, `name`, `value`, `autoload`) VALUES
(1, 'dateformat', 'Y-m-d|%Y-%m-%d', 1),
(2, 'companyname', 'Test', 1),
(3, 'services', '1', 1),
(4, 'maximum_allowed_ticket_attachments', '4', 1),
(5, 'ticket_attachments_file_extensions', '.jpg,.png,.pdf,.doc', 1),
(6, 'staff_access_only_assigned_departments', '1', 1),
(7, 'use_knowledge_base', '1', 1),
(8, 'smtp_email', 'midi9x@gmail.com', 1),
(9, 'smtp_password', 'cb5f1bd66b018ca655c7cf844b0cbfb0b6e51e92f1169c04c53f318f8f4cf010c962ed98f3cb6c0239f3bc889a7e0d6e8f7c55c063b6d12bdf1d1894de210938Z1jgyRDf9PZDARaSj56mIAK8WxLxOChlyMP+m8yIaLIiJT7mMpoIoZDT7Su2meWE', 1),
(10, 'company_info_format', '{company_name}<br />\r\n{address}<br />\r\n{city} {state}<br />\r\n{country_code} {zip_code}<br />\r\n{vat_number_with_label}', 0),
(11, 'smtp_port', '587', 1),
(12, 'smtp_host', 'smtp.gmail.com', 1),
(13, 'smtp_email_charset', 'utf-8', 1),
(14, 'default_timezone', 'Asia/Bangkok', 1),
(15, 'clients_default_theme', 'vsr', 1),
(16, 'company_logo', '', 1),
(17, 'tables_pagination_limit', '25', 1),
(18, 'main_domain', '', 1),
(19, 'allow_registration', '1', 1),
(20, 'knowledge_base_without_registration', '1', 1),
(21, 'email_signature', '', 1),
(22, 'default_staff_role', '1', 1),
(23, 'newsfeed_maximum_files_upload', '10', 1),
(24, 'contract_expiration_before', '4', 1),
(25, 'invoice_prefix', 'INV-', 1),
(26, 'decimal_separator', '.', 1),
(27, 'thousand_separator', ',', 1),
(28, 'currency_placement', 'before', 1),
(29, 'invoice_company_name', '', 1),
(30, 'invoice_company_address', '', 1),
(31, 'invoice_company_city', '', 1),
(32, 'invoice_company_country_code', '', 1),
(33, 'invoice_company_postal_code', '', 1),
(34, 'invoice_company_phonenumber', '', 1),
(35, 'view_invoice_only_logged_in', '0', 1),
(36, 'invoice_number_format', '1', 1),
(37, 'next_invoice_number', '1', 0),
(38, 'active_language', 'vietnamese', 1),
(39, 'invoice_number_decrement_on_delete', '1', 1),
(40, 'automatically_send_invoice_overdue_reminder_after', '1', 1),
(41, 'automatically_resend_invoice_overdue_reminder_after', '3', 1),
(42, 'expenses_auto_operations_hour', '21', 1),
(43, 'survey_send_emails_per_cron_run', '100', 1),
(44, 'delete_only_on_last_invoice', '1', 1),
(45, 'delete_only_on_last_estimate', '1', 1),
(46, 'create_invoice_from_recurring_only_on_paid_invoices', '0', 1),
(47, 'allow_payment_amount_to_be_modified', '1', 1),
(48, 'rtl_support_client', '0', 1),
(49, 'limit_top_search_bar_results_to', '10', 1),
(50, 'estimate_prefix', 'EST-', 1),
(51, 'next_estimate_number', '1', 0),
(52, 'estimate_number_decrement_on_delete', '1', 1),
(53, 'estimate_number_format', '1', 1),
(54, 'estimate_auto_convert_to_invoice_on_client_accept', '1', 1),
(55, 'exclude_estimate_from_client_area_with_draft_status', '1', 1),
(56, 'rtl_support_admin', '0', 1),
(57, 'last_cron_run', '', 1),
(58, 'show_sale_agent_on_estimates', '1', 1),
(59, 'show_sale_agent_on_invoices', '1', 1),
(60, 'predefined_terms_invoice', '', 1),
(61, 'predefined_terms_estimate', '', 1),
(62, 'default_task_priority', '2', 1),
(63, 'dropbox_app_key', '', 1),
(64, 'show_expense_reminders_on_calendar', '1', 1),
(65, 'only_show_contact_tickets', '1', 1),
(66, 'predefined_clientnote_invoice', '', 1),
(67, 'predefined_clientnote_estimate', '', 1),
(68, 'custom_pdf_logo_image_url', '', 1),
(69, 'favicon', '', 1),
(70, 'auto_backup_enabled', '0', 1),
(71, 'invoice_due_after', '30', 1),
(72, 'google_api_key', '', 1),
(73, 'google_calendar_main_calendar', '', 1),
(74, 'default_tax', 'a:0:{}', 1),
(75, 'show_invoices_on_calendar', '1', 1),
(76, 'show_estimates_on_calendar', '1', 1),
(77, 'show_contracts_on_calendar', '1', 1),
(78, 'show_tasks_on_calendar', '1', 1),
(79, 'show_customer_reminders_on_calendar', '1', 1),
(80, 'auto_backup_every', '7', 1),
(81, 'last_auto_backup', '', 1),
(82, 'output_client_pdfs_from_admin_area_in_client_language', '0', 1),
(83, 'show_lead_reminders_on_calendar', '1', 1),
(84, 'aside_menu_active', '{\"aside_menu_active\":[{\"name\":\"als_dashboard\",\"url\":\"/\",\"permission\":\"\",\"icon\":\"fa fa-tachometer\",\"id\":\"dashboard\"},{\"name\":\"als_clients\",\"url\":\"clients\",\"permission\":\"customers\",\"icon\":\"fa fa-user-o\",\"id\":\"customers\"},{\"name\":\"property\",\"url\":\"property\",\"permission\":\"\",\"icon\":\"fa fa-building\",\"id\":\"property\",\"children\":[{\"name\":\"list_posts\",\"url\":\"property\",\"permission\":\"\",\"icon\":\"fa fa-list\",\"id\":\"list-property\"},{\"name\":\"property_article_new_article\",\"url\":\"property/article\",\"permission\":\"\",\"icon\":\"fa fa-plus\",\"id\":\"new-property\"},{\"name\":\"als_kb_categories\",\"url\":\"property/manage_categories\",\"permission\":\"\",\"icon\":\"fa fa-object-group\",\"id\":\"manage-categories\"},{\"name\":\"als_kb_types\",\"url\":\"property/manage_types\",\"permission\":\"\",\"icon\":\"fa fa-asterisk\",\"id\":\"manage-types\"},{\"name\":\"als_kb_locations\",\"url\":\"property/manage_locations\",\"permission\":\"\",\"icon\":\"fa fa-location-arrow\",\"id\":\"manage-locations\"},{\"name\":\"als_kb_characteristics\",\"url\":\"property/manage_characteristics\",\"permission\":\"\",\"icon\":\"fa fa-check-square\",\"id\":\"manage-characteristics\"},{\"name\":\"property_contacts\",\"url\":\"property/manage_contacts\",\"permission\":\"\",\"icon\":\"fa fa-envelope\",\"id\":\"manage-contacts\"}]},{\"name\":\"news_string\",\"url\":\"news\",\"permission\":\"\",\"icon\":\"fa fa-newspaper-o\",\"id\":\"manage-news\",\"children\":[{\"name\":\"list_posts\",\"url\":\"news\",\"permission\":\"\",\"icon\":\"fa fa-list\",\"id\":\"list-news\"},{\"name\":\"kb_article_new_article\",\"url\":\"news/article\",\"permission\":\"\",\"icon\":\"fa fa-plus\",\"id\":\"new-news\"},{\"name\":\"als_kb_groups\",\"url\":\"news/manage_groups\",\"permission\":\"\",\"icon\":\"fa fa-object-group\",\"id\":\"manage-news-group\"}]},{\"name\":\"laws_string\",\"url\":\"laws\",\"permission\":\"\",\"icon\":\"fa fa-newspaper-o\",\"id\":\"manage-laws\",\"children\":[{\"name\":\"list_posts\",\"url\":\"laws\",\"permission\":\"\",\"icon\":\"fa fa-list\",\"id\":\"list-laws\"},{\"name\":\"kb_article_new_article\",\"url\":\"laws/article\",\"permission\":\"\",\"icon\":\"fa fa-plus\",\"id\":\"new-laws\"},{\"name\":\"als_kb_groups\",\"url\":\"laws/manage_groups\",\"permission\":\"\",\"icon\":\"fa fa-object-group\",\"id\":\"manage-laws-group\"}]},{\"name\":\"als_kb\",\"url\":\"knowledge_base\",\"permission\":\"knowledge_base\",\"icon\":\"fa fa-folder-open-o\",\"id\":\"knowledge-base\"},{\"name\":\"als_sales\",\"url\":\"#\",\"permission\":\"\",\"icon\":\"fa fa-balance-scale\",\"id\":\"sales\",\"children\":[{\"name\":\"proposals\",\"url\":\"proposals\",\"permission\":\"proposals\",\"icon\":\"\",\"id\":\"child-proposals\"},{\"name\":\"estimates\",\"url\":\"estimates/list_estimates\",\"permission\":\"estimates\",\"icon\":\"\",\"id\":\"child-estimates\"},{\"name\":\"invoices\",\"url\":\"invoices/list_invoices\",\"permission\":\"invoices\",\"icon\":\"\",\"id\":\"child-invoices\"},{\"name\":\"payments\",\"url\":\"payments\",\"permission\":\"payments\",\"icon\":\"\",\"id\":\"child-payments\"},{\"name\":\"credit_notes\",\"url\":\"credit_notes\",\"permission\":\"credit_notes\",\"icon\":\"\",\"id\":\"credit_notes\"},{\"name\":\"items\",\"url\":\"invoice_items\",\"permission\":\"items\",\"icon\":\"\",\"id\":\"child-items\"}]},{\"name\":\"als_expenses\",\"url\":\"expenses/list_expenses\",\"permission\":\"expenses\",\"icon\":\"fa fa-file-text-o\",\"id\":\"expenses\"},{\"name\":\"als_contracts\",\"url\":\"contracts\",\"permission\":\"contracts\",\"icon\":\"fa fa-file\",\"id\":\"contracts\"},{\"name\":\"projects\",\"url\":\"projects\",\"permission\":\"\",\"icon\":\"fa fa-bars\",\"id\":\"projects\"},{\"name\":\"als_tasks\",\"url\":\"tasks/list_tasks\",\"permission\":\"\",\"icon\":\"fa fa-tasks\",\"id\":\"tasks\"},{\"name\":\"support\",\"url\":\"tickets\",\"permission\":\"\",\"icon\":\"fa fa-ticket\",\"id\":\"tickets\"},{\"name\":\"als_utilities\",\"url\":\"#\",\"permission\":\"\",\"icon\":\"fa fa-cogs\",\"id\":\"utilities\",\"children\":[{\"name\":\"als_media\",\"url\":\"utilities/media\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-media\"},{\"name\":\"bulk_pdf_exporter\",\"url\":\"utilities/bulk_pdf_exporter\",\"permission\":\"bulk_pdf_exporter\",\"icon\":\"\",\"id\":\"child-bulk-pdf-exporter\"},{\"name\":\"als_calendar_submenu\",\"url\":\"utilities/calendar\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-calendar\"},{\"name\":\"als_goals_tracking\",\"url\":\"goals\",\"permission\":\"goals\",\"icon\":\"\",\"id\":\"child-goals-tracking\"},{\"name\":\"als_surveys\",\"url\":\"surveys\",\"permission\":\"surveys\",\"icon\":\"\",\"id\":\"child-surveys\"},{\"name\":\"als_announcements_submenu\",\"url\":\"announcements\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"child-announcements\"},{\"name\":\"utility_backup\",\"url\":\"utilities/backup\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"child-database-backup\"},{\"name\":\"als_activity_log_submenu\",\"url\":\"utilities/activity_log\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"child-activity-log\"},{\"name\":\"ticket_pipe_log\",\"url\":\"utilities/pipe_log\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"ticket-pipe-log\"}]},{\"name\":\"als_reports\",\"url\":\"#\",\"permission\":\"reports\",\"icon\":\"fa fa-area-chart\",\"id\":\"reports\",\"children\":[{\"name\":\"als_reports_sales_submenu\",\"url\":\"reports/sales\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-sales\"},{\"name\":\"als_reports_expenses\",\"url\":\"reports/expenses\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-expenses\"},{\"name\":\"als_expenses_vs_income\",\"url\":\"reports/expenses_vs_income\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-expenses-vs-income\"},{\"name\":\"als_reports_leads_submenu\",\"url\":\"reports/leads\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-leads\"},{\"name\":\"timesheets_overview\",\"url\":\"staff/timesheets?view=all\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"reports_timesheets_overview\"},{\"name\":\"als_kb_articles_submenu\",\"url\":\"reports/knowledge_base_articles\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-kb-articles\"}]}]}', 1),
(85, 'send_estimate_expiry_reminder_before', '4', 1),
(86, 'leads_default_source', '', 1),
(87, 'leads_default_status', '', 1),
(88, 'proposal_expiry_reminder_enabled', '1', 1),
(89, 'send_proposal_expiry_reminder_before', '4', 1),
(90, 'default_contact_permissions', 'a:6:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"6\";}', 1),
(91, 'pdf_logo_width', '150', 1),
(92, 'aside_menu_inactive', '{\"aside_menu_inactive\":[{\"name\":\"subscriptions\",\"url\":\"subscriptions\",\"permission\":\"subscriptions\",\"icon\":\"fa fa-repeat\",\"id\":\"subscriptions\"},{\"name\":\"als_leads\",\"url\":\"leads\",\"permission\":\"is_staff_member\",\"icon\":\"fa fa-tty\",\"id\":\"leads\"}]}', 1),
(93, 'setup_menu_active', '{\"setup_menu_active\":[{\"name\":\"als_staff\",\"url\":\"staff\",\"permission\":\"staff\",\"icon\":\"\",\"id\":\"staff\"},{\"name\":\"clients\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"customers\",\"children\":[{\"name\":\"customer_groups\",\"url\":\"clients\\/groups\",\"permission\":\"\",\"icon\":\"\",\"id\":\"groups\"}]},{\"name\":\"support\",\"url\":\"#\",\"permission\":\"\",\"icon\":\"\",\"id\":\"tickets\",\"children\":[{\"name\":\"acs_departments\",\"url\":\"departments\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"departments\"},{\"name\":\"acs_ticket_predefined_replies_submenu\",\"url\":\"tickets\\/predefined_replies\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"predefined-replies\"},{\"name\":\"acs_ticket_priority_submenu\",\"url\":\"tickets\\/priorities\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"ticket-priority\"},{\"name\":\"acs_ticket_statuses_submenu\",\"url\":\"tickets\\/statuses\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"ticket-statuses\"},{\"name\":\"acs_ticket_services_submenu\",\"url\":\"tickets\\/services\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"services\"},{\"name\":\"spam_filters\",\"url\":\"tickets\\/spam_filters\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"spam-filters\"}]},{\"name\":\"acs_leads\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"leads\",\"children\":[{\"name\":\"acs_leads_sources_submenu\",\"url\":\"leads\\/sources\",\"permission\":\"\",\"icon\":\"\",\"id\":\"sources\"},{\"name\":\"acs_leads_statuses_submenu\",\"url\":\"leads\\/statuses\",\"permission\":\"\",\"icon\":\"\",\"id\":\"statuses\"},{\"name\":\"leads_email_integration\",\"url\":\"leads\\/email_integration\",\"permission\":\"\",\"icon\":\"\",\"id\":\"email-integration\"},{\"name\":\"web_to_lead\",\"url\":\"leads\\/forms\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"web-to-lead\"}]},{\"name\":\"acs_finance\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"finance\",\"children\":[{\"name\":\"acs_sales_taxes_submenu\",\"url\":\"taxes\",\"permission\":\"\",\"icon\":\"\",\"id\":\"taxes\"},{\"name\":\"acs_sales_currencies_submenu\",\"url\":\"currencies\",\"permission\":\"\",\"icon\":\"\",\"id\":\"currencies\"},{\"name\":\"acs_sales_payment_modes_submenu\",\"url\":\"paymentmodes\",\"permission\":\"\",\"icon\":\"\",\"id\":\"payment-modes\"},{\"name\":\"acs_expense_categories\",\"url\":\"expenses\\/categories\",\"permission\":\"\",\"icon\":\"\",\"id\":\"expenses-categories\"}]},{\"name\":\"acs_contracts\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"contracts\",\"children\":[{\"name\":\"acs_contract_types\",\"url\":\"contracts\\/types\",\"permission\":\"\",\"icon\":\"\",\"id\":\"contract-types\"}]},{\"name\":\"acs_email_templates\",\"url\":\"emails\",\"permission\":\"email_templates\",\"icon\":\"\",\"id\":\"email-templates\"},{\"name\":\"asc_custom_fields\",\"url\":\"custom_fields\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"custom-fields\"},{\"name\":\"gdpr_short\",\"url\":\"gdpr\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"gdpr\"},{\"name\":\"acs_roles\",\"url\":\"roles\",\"permission\":\"roles\",\"icon\":\"\",\"id\":\"roles\"},{\"name\":\"menu_builder\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"menu-builder\",\"children\":[{\"name\":\"main_menu\",\"url\":\"utilities\\/main_menu\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"organize-sidebar\"},{\"name\":\"setup_menu\",\"url\":\"utilities\\/setup_menu\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"setup-menu\"}]},{\"name\":\"theme_style\",\"url\":\"utilities\\/theme_style\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"theme-style\"},{\"name\":\"acs_settings\",\"url\":\"settings\",\"permission\":\"settings\",\"icon\":\"\",\"id\":\"settings\"}]}', 1),
(94, 'access_tickets_to_none_staff_members', '0', 1),
(95, 'setup_menu_inactive', '{\"setup_menu_inactive\":[]}', 1),
(96, 'customer_default_country', '243', 1),
(97, 'view_estimate_only_logged_in', '0', 1),
(98, 'show_status_on_pdf_ei', '1', 1),
(99, 'email_piping_only_replies', '0', 1),
(100, 'email_piping_only_registered', '0', 1),
(101, 'default_view_calendar', 'month', 1),
(102, 'email_piping_default_priority', '2', 1),
(103, 'total_to_words_lowercase', '0', 1),
(104, 'show_tax_per_item', '1', 1),
(105, 'last_survey_send_cron', '', 1),
(106, 'total_to_words_enabled', '0', 1),
(107, 'receive_notification_on_new_ticket', '1', 1),
(108, 'autoclose_tickets_after', '0', 1),
(109, 'media_max_file_size_upload', '10', 1),
(110, 'client_staff_add_edit_delete_task_comments_first_hour', '0', 1),
(111, 'show_projects_on_calendar', '1', 1),
(112, 'leads_kanban_limit', '50', 1),
(113, 'tasks_reminder_notification_before', '2', 1),
(114, 'pdf_font', 'freesans', 1),
(115, 'pdf_table_heading_color', '#323a45', 1),
(116, 'pdf_table_heading_text_color', '#ffffff', 1),
(117, 'pdf_font_size', '10', 1),
(118, 'default_leads_kanban_sort', 'leadorder', 1),
(119, 'default_leads_kanban_sort_type', 'asc', 1),
(120, 'allowed_files', '.png,.jpg,.pdf,.doc,.docx,.xls,.xlsx,.zip,.rar,.txt', 1),
(121, 'show_all_tasks_for_project_member', '1', 1),
(122, 'email_protocol', 'smtp', 1),
(123, 'calendar_first_day', '0', 1),
(124, 'recaptcha_secret_key', '', 1),
(125, 'show_help_on_setup_menu', '1', 1),
(126, 'show_proposals_on_calendar', '1', 1),
(127, 'smtp_encryption', 'tls', 1),
(128, 'recaptcha_site_key', '', 1),
(129, 'smtp_username', 'midi9x@gmail.com', 1),
(130, 'auto_stop_tasks_timers_on_new_timer', '1', 1),
(131, 'notification_when_customer_pay_invoice', '1', 1),
(132, 'theme_style', '[]', 1),
(133, 'calendar_invoice_color', '#FF6F00', 1),
(134, 'calendar_estimate_color', '#FF6F00', 1),
(135, 'calendar_proposal_color', '#84c529', 1),
(136, 'new_task_auto_assign_current_member', '1', 1),
(137, 'calendar_reminder_color', '#03A9F4', 1),
(138, 'calendar_contract_color', '#B72974', 1),
(139, 'calendar_project_color', '#B72974', 1),
(140, 'update_info_message', '', 1),
(141, 'show_estimate_reminders_on_calendar', '1', 1),
(142, 'show_invoice_reminders_on_calendar', '1', 1),
(143, 'show_proposal_reminders_on_calendar', '1', 1),
(144, 'proposal_due_after', '7', 1),
(145, 'allow_customer_to_change_ticket_status', '0', 1),
(146, 'lead_lock_after_convert_to_customer', '0', 1),
(147, 'default_proposals_pipeline_sort', 'pipeline_order', 1),
(148, 'default_proposals_pipeline_sort_type', 'asc', 1),
(149, 'default_estimates_pipeline_sort', 'pipeline_order', 1),
(150, 'default_estimates_pipeline_sort_type', 'asc', 1),
(151, 'use_recaptcha_customers_area', '0', 1),
(152, 'remove_decimals_on_zero', '0', 1),
(153, 'remove_tax_name_from_item_table', '0', 1),
(154, 'pdf_format_invoice', 'A4-PORTRAIT', 1),
(155, 'pdf_format_estimate', 'A4-PORTRAIT', 1),
(156, 'pdf_format_proposal', 'A4-PORTRAIT', 1),
(157, 'pdf_format_payment', 'A4-PORTRAIT', 1),
(158, 'pdf_format_contract', 'A4-PORTRAIT', 1),
(159, 'swap_pdf_info', '0', 1),
(160, 'exclude_invoice_from_client_area_with_draft_status', '1', 1),
(161, 'cron_has_run_from_cli', '0', 1),
(162, 'hide_cron_is_required_message', '0', 0),
(163, 'auto_assign_customer_admin_after_lead_convert', '1', 1),
(164, 'show_transactions_on_invoice_pdf', '1', 1),
(165, 'show_pay_link_to_invoice_pdf', '1', 1),
(166, 'tasks_kanban_limit', '50', 1),
(167, 'purchase_key', '', 1),
(168, 'estimates_pipeline_limit', '50', 1),
(169, 'proposals_pipeline_limit', '50', 1),
(170, 'proposal_number_prefix', 'PRO-', 1),
(171, 'number_padding_prefixes', '6', 1),
(172, 'show_page_number_on_pdf', '0', 1),
(173, 'calendar_events_limit', '4', 1),
(174, 'show_setup_menu_item_only_on_hover', '0', 1),
(175, 'company_requires_vat_number_field', '1', 1),
(176, 'company_is_required', '1', 1),
(177, 'allow_contact_to_delete_files', '0', 1),
(178, 'company_vat', '', 1),
(179, 'di', '1529074925', 0),
(180, 'invoice_auto_operations_hour', '21', 1),
(181, 'use_minified_files', '1', 1),
(182, 'only_own_files_contacts', '0', 1),
(183, 'allow_primary_contact_to_view_edit_billing_and_shipping', '0', 1),
(184, 'estimate_due_after', '7', 1),
(185, 'delete_backups_older_then', '0', 1),
(186, 'staff_members_open_tickets_to_all_contacts', '1', 1),
(187, 'time_format', '24', 1),
(188, 'delete_activity_log_older_then', '1', 1),
(189, 'disable_language', '0', 1),
(190, 'company_state', '', 1),
(191, 'email_header', '<!doctype html>\r\n                            <html>\r\n                            <head>\r\n                              <meta name=\"viewport\" content=\"width=device-width\" />\r\n                              <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n                              <style>\r\n                                body {\r\n                                 background-color: #f6f6f6;\r\n                                 font-family: sans-serif;\r\n                                 -webkit-font-smoothing: antialiased;\r\n                                 font-size: 14px;\r\n                                 line-height: 1.4;\r\n                                 margin: 0;\r\n                                 padding: 0;\r\n                                 -ms-text-size-adjust: 100%;\r\n                                 -webkit-text-size-adjust: 100%;\r\n                               }\r\n                               table {\r\n                                 border-collapse: separate;\r\n                                 mso-table-lspace: 0pt;\r\n                                 mso-table-rspace: 0pt;\r\n                                 width: 100%;\r\n                               }\r\n                               table td {\r\n                                 font-family: sans-serif;\r\n                                 font-size: 14px;\r\n                                 vertical-align: top;\r\n                               }\r\n                                   /* -------------------------------------\r\n                                     BODY & CONTAINER\r\n                                     ------------------------------------- */\r\n                                     .body {\r\n                                       background-color: #f6f6f6;\r\n                                       width: 100%;\r\n                                     }\r\n                                     /* Set a max-width, and make it display as block so it will automatically stretch to that width, but will also shrink down on a phone or something */\r\n\r\n                                     .container {\r\n                                       display: block;\r\n                                       margin: 0 auto !important;\r\n                                       /* makes it centered */\r\n                                       max-width: 680px;\r\n                                       padding: 10px;\r\n                                       width: 680px;\r\n                                     }\r\n                                     /* This should also be a block element, so that it will fill 100% of the .container */\r\n\r\n                                     .content {\r\n                                       box-sizing: border-box;\r\n                                       display: block;\r\n                                       margin: 0 auto;\r\n                                       max-width: 680px;\r\n                                       padding: 10px;\r\n                                     }\r\n                                   /* -------------------------------------\r\n                                     HEADER, FOOTER, MAIN\r\n                                     ------------------------------------- */\r\n\r\n                                     .main {\r\n                                       background: #fff;\r\n                                       border-radius: 3px;\r\n                                       width: 100%;\r\n                                     }\r\n                                     .wrapper {\r\n                                       box-sizing: border-box;\r\n                                       padding: 20px;\r\n                                     }\r\n                                     .footer {\r\n                                       clear: both;\r\n                                       padding-top: 10px;\r\n                                       text-align: center;\r\n                                       width: 100%;\r\n                                     }\r\n                                     .footer td,\r\n                                     .footer p,\r\n                                     .footer span,\r\n                                     .footer a {\r\n                                       color: #999999;\r\n                                       font-size: 12px;\r\n                                       text-align: center;\r\n                                     }\r\n                                     hr {\r\n                                       border: 0;\r\n                                       border-bottom: 1px solid #f6f6f6;\r\n                                       margin: 20px 0;\r\n                                     }\r\n                                   /* -------------------------------------\r\n                                     RESPONSIVE AND MOBILE FRIENDLY STYLES\r\n                                     ------------------------------------- */\r\n\r\n                                     @media only screen and (max-width: 620px) {\r\n                                       table[class=body] .content {\r\n                                         padding: 0 !important;\r\n                                       }\r\n                                       table[class=body] .container {\r\n                                         padding: 0 !important;\r\n                                         width: 100% !important;\r\n                                       }\r\n                                       table[class=body] .main {\r\n                                         border-left-width: 0 !important;\r\n                                         border-radius: 0 !important;\r\n                                         border-right-width: 0 !important;\r\n                                       }\r\n                                     }\r\n                                   </style>\r\n                                 </head>\r\n                                 <body class=\"\">\r\n                                  <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"body\">\r\n                                    <tr>\r\n                                     <td>&nbsp;</td>\r\n                                     <td class=\"container\">\r\n                                      <div class=\"content\">\r\n                                        <!-- START CENTERED WHITE CONTAINER -->\r\n                                        <table class=\"main\">\r\n                                          <!-- START MAIN CONTENT AREA -->\r\n                                          <tr>\r\n                                           <td class=\"wrapper\">\r\n                                            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                                              <tr>\r\n                                               <td>', 1),
(192, 'show_pdf_signature_invoice', '1', 0),
(193, 'show_pdf_signature_estimate', '1', 0),
(194, 'signature_image', '', 0),
(195, 'scroll_responsive_tables', '0', 1),
(196, 'email_footer', '</td>\r\n                             </tr>\r\n                           </table>\r\n                         </td>\r\n                       </tr>\r\n                       <!-- END MAIN CONTENT AREA -->\r\n                     </table>\r\n                     <!-- START FOOTER -->\r\n                     <div class=\"footer\">\r\n                      <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                        <tr>\r\n                          <td class=\"content-block\">\r\n                            <span>{companyname}</span>\r\n                          </td>\r\n                        </tr>\r\n                      </table>\r\n                    </div>\r\n                    <!-- END FOOTER -->\r\n                    <!-- END CENTERED WHITE CONTAINER -->\r\n                  </div>\r\n                </td>\r\n                <td>&nbsp;</td>\r\n              </tr>\r\n            </table>\r\n            </body>\r\n            </html>', 1),
(197, 'exclude_proposal_from_client_area_with_draft_status', '1', 1),
(198, 'pusher_app_key', '', 1),
(199, 'pusher_app_secret', '', 1),
(200, 'pusher_app_id', '', 1),
(201, 'pusher_realtime_notifications', '0', 1),
(202, 'pdf_format_statement', 'A4-PORTRAIT', 1),
(203, 'pusher_cluster', '', 1),
(204, 'show_table_export_button', 'to_all', 1),
(205, 'allow_staff_view_proposals_assigned', '1', 1),
(206, 'show_cloudflare_notice', '1', 0),
(207, 'task_modal_class', 'modal-lg', 1),
(208, 'lead_modal_class', 'modal-lg', 1),
(209, 'show_timesheets_overview_all_members_notice_admins', '1', 0),
(210, 'desktop_notifications', '0', 1),
(211, 'hide_notified_reminders_from_calendar', '1', 0),
(212, 'customer_info_format', '{company_name}<br />\r\n{street}<br />\r\n{city} {state}<br />\r\n{country_code} {zip_code}<br />\r\n{vat_number_with_label}', 0),
(213, 'upgraded_from_version', '', 0),
(214, 'timer_started_change_status_in_progress', '1', 0),
(215, 'default_ticket_reply_status', '3', 1),
(216, 'default_task_status', 'auto', 1),
(217, 'email_queue_skip_with_attachments', '1', 1),
(218, 'email_queue_enabled', '0', 1),
(219, 'last_email_queue_retry', '', 1),
(220, 'auto_dismiss_desktop_notifications_after', '0', 1),
(221, 'proposal_info_format', '{proposal_to}<br />\r\n{address}<br />\r\n{city} {state}<br />\r\n{country_code} {zip_code}<br />\r\n{phone}<br />\r\n{email}', 0),
(222, 'ticket_replies_order', 'asc', 1),
(223, 'new_recurring_invoice_action', 'generate_and_send', 0),
(224, 'bcc_emails', '', 0),
(225, 'email_templates_language_checks', 'a:69:{s:29:\"new-client-created-vietnamese\";i:1;s:33:\"invoice-send-to-client-vietnamese\";i:1;s:34:\"new-ticket-opened-admin-vietnamese\";i:1;s:23:\"ticket-reply-vietnamese\";i:1;s:30:\"ticket-autoresponse-vietnamese\";i:1;s:35:\"invoice-payment-recorded-vietnamese\";i:1;s:33:\"invoice-overdue-notice-vietnamese\";i:1;s:31:\"invoice-already-send-vietnamese\";i:1;s:35:\"new-ticket-created-staff-vietnamese\";i:1;s:34:\"estimate-send-to-client-vietnamese\";i:1;s:32:\"ticket-reply-to-admin-vietnamese\";i:1;s:32:\"estimate-already-send-vietnamese\";i:1;s:30:\"contract-expiration-vietnamese\";i:1;s:24:\"task-assigned-vietnamese\";i:1;s:33:\"task-added-as-follower-vietnamese\";i:1;s:25:\"task-commented-vietnamese\";i:1;s:32:\"task-added-attachment-vietnamese\";i:1;s:37:\"estimate-declined-to-staff-vietnamese\";i:1;s:37:\"estimate-accepted-to-staff-vietnamese\";i:1;s:35:\"proposal-client-accepted-vietnamese\";i:1;s:36:\"proposal-send-to-customer-vietnamese\";i:1;s:35:\"proposal-client-declined-vietnamese\";i:1;s:36:\"proposal-client-thank-you-vietnamese\";i:1;s:37:\"proposal-comment-to-client-vietnamese\";i:1;s:36:\"proposal-comment-to-admin-vietnamese\";i:1;s:41:\"estimate-thank-you-to-customer-vietnamese\";i:1;s:37:\"task-deadline-notification-vietnamese\";i:1;s:24:\"send-contract-vietnamese\";i:1;s:44:\"invoice-payment-recorded-to-staff-vietnamese\";i:1;s:28:\"auto-close-ticket-vietnamese\";i:1;s:50:\"new-project-discussion-created-to-staff-vietnamese\";i:1;s:53:\"new-project-discussion-created-to-customer-vietnamese\";i:1;s:48:\"new-project-file-uploaded-to-customer-vietnamese\";i:1;s:45:\"new-project-file-uploaded-to-staff-vietnamese\";i:1;s:53:\"new-project-discussion-comment-to-customer-vietnamese\";i:1;s:50:\"new-project-discussion-comment-to-staff-vietnamese\";i:1;s:40:\"staff-added-as-project-member-vietnamese\";i:1;s:35:\"estimate-expiry-reminder-vietnamese\";i:1;s:35:\"proposal-expiry-reminder-vietnamese\";i:1;s:28:\"new-staff-created-vietnamese\";i:1;s:34:\"contact-forgot-password-vietnamese\";i:1;s:35:\"contact-password-reseted-vietnamese\";i:1;s:31:\"contact-set-password-vietnamese\";i:1;s:32:\"staff-forgot-password-vietnamese\";i:1;s:33:\"staff-password-reseted-vietnamese\";i:1;s:30:\"assigned-to-project-vietnamese\";i:1;s:44:\"task-added-attachment-to-contacts-vietnamese\";i:1;s:37:\"task-commented-to-contacts-vietnamese\";i:1;s:28:\"new-lead-assigned-vietnamese\";i:1;s:27:\"client-statement-vietnamese\";i:1;s:35:\"ticket-assigned-to-admin-vietnamese\";i:1;s:41:\"new-client-registered-to-admin-vietnamese\";i:1;s:41:\"new-web-to-lead-form-submitted-vietnamese\";i:1;s:36:\"two-factor-authentication-vietnamese\";i:1;s:39:\"project-finished-to-customer-vietnamese\";i:1;s:37:\"credit-note-send-to-client-vietnamese\";i:1;s:38:\"task-status-change-to-staff-vietnamese\";i:1;s:41:\"task-status-change-to-contacts-vietnamese\";i:1;s:31:\"reminder-email-staff-vietnamese\";i:1;s:37:\"contract-comment-to-client-vietnamese\";i:1;s:36:\"contract-comment-to-admin-vietnamese\";i:1;s:28:\"send-subscription-vietnamese\";i:1;s:38:\"subscription-payment-failed-vietnamese\";i:1;s:32:\"subscription-canceled-vietnamese\";i:1;s:41:\"subscription-payment-succeeded-vietnamese\";i:1;s:39:\"contract-expiration-to-staff-vietnamese\";i:1;s:31:\"gdpr-removal-request-vietnamese\";i:1;s:36:\"gdpr-removal-request-lead-vietnamese\";i:1;s:40:\"client-registration-confirmed-vietnamese\";i:1;}', 0),
(226, 'proposal_accept_identity_confirmation', '1', 0),
(227, 'estimate_accept_identity_confirmation', '1', 0),
(228, 'new_task_auto_follower_current_member', '0', 1),
(229, 'task_biillable_checked_on_creation', '1', 1),
(230, 'predefined_clientnote_credit_note', '', 1),
(231, 'predefined_terms_credit_note', '', 1),
(232, 'next_credit_note_number', '1', 1),
(233, 'credit_note_prefix', 'CN-', 1),
(234, 'credit_note_number_decrement_on_delete', '1', 1),
(235, 'pdf_format_credit_note', 'A4-PORTRAIT', 1),
(236, 'show_pdf_signature_credit_note', '1', 0),
(237, 'show_credit_note_reminders_on_calendar', '1', 1),
(238, 'show_amount_due_on_invoice', '1', 1),
(239, 'show_total_paid_on_invoice', '1', 1),
(240, 'show_credits_applied_on_invoice', '1', 1),
(241, 'show_project_on_invoice', '1', 1),
(242, 'show_project_on_estimate', '1', 1),
(243, 'visible_customer_profile_tabs', 'all', 0),
(244, 'staff_members_create_inline_lead_status', '1', 1),
(245, 'staff_members_create_inline_lead_source', '1', 1),
(246, 'staff_members_create_inline_customer_groups', '1', 1),
(247, 'staff_members_create_inline_ticket_services', '1', 1),
(248, 'staff_members_save_tickets_predefined_replies', '1', 1),
(249, 'staff_members_create_inline_contract_types', '1', 1),
(250, 'staff_members_create_inline_expense_categories', '1', 1),
(251, 'show_project_on_credit_note', '1', 1),
(252, 'proposals_auto_operations_hour', '21', 1),
(253, 'estimates_auto_operations_hour', '21', 1),
(254, 'contracts_auto_operations_hour', '21', 1),
(255, 'credit_note_number_format', '1', 1),
(256, 'allow_non_admin_members_to_import_leads', '0', 1),
(257, 'e_sign_legal_text', 'By clicking on \"Sign\", I consent to be legally bound by this electronic representation of my signature.', 1),
(258, 'show_pdf_signature_contract', '1', 1),
(259, 'view_contract_only_logged_in', '0', 1),
(260, 'show_subscriptions_in_customers_area', '1', 1),
(261, 'calendar_only_assigned_tasks', '0', 1),
(262, 'after_subscription_payment_captured', 'send_invoice_and_receipt', 1),
(263, 'mail_engine', 'phpmailer', 1),
(264, 'gdpr_enable_terms_and_conditions', '0', 1),
(265, 'privacy_policy', '', 1),
(266, 'terms_and_conditions', '', 1),
(267, 'gdpr_enable_terms_and_conditions_lead_form', '0', 1),
(268, 'gdpr_enable_terms_and_conditions_ticket_form', '0', 1),
(269, 'gdpr_contact_enable_right_to_be_forgotten', '0', 1),
(270, 'show_gdpr_in_customers_menu', '1', 1),
(271, 'show_gdpr_link_in_footer', '1', 1),
(272, 'enable_gdpr', '0', 1),
(273, 'gdpr_on_forgotten_remove_invoices_credit_notes', '0', 1),
(274, 'gdpr_on_forgotten_remove_estimates', '0', 1),
(275, 'gdpr_enable_consent_for_contacts', '0', 1),
(276, 'gdpr_consent_public_page_top_block', '', 1),
(277, 'gdpr_page_top_information_block', '', 1),
(278, 'gdpr_enable_lead_public_form', '0', 1),
(279, 'gdpr_show_lead_custom_fields_on_public_form', '0', 1),
(280, 'gdpr_lead_attachments_on_public_form', '0', 1),
(281, 'gdpr_enable_consent_for_leads', '0', 1),
(282, 'gdpr_lead_enable_right_to_be_forgotten', '0', 1),
(283, 'allow_staff_view_invoices_assigned', '1', 1),
(284, 'gdpr_data_portability_leads', '0', 1),
(285, 'gdpr_lead_data_portability_allowed', '', 1),
(286, 'gdpr_contact_data_portability_allowed', '', 1),
(287, 'gdpr_data_portability_contacts', '0', 1),
(288, 'allow_staff_view_estimates_assigned', '1', 1),
(289, 'gdpr_after_lead_converted_delete', '0', 1),
(290, 'gdpr_show_terms_and_conditions_in_footer', '0', 1),
(291, 'save_last_order_for_tables', '0', 1),
(292, 'company_logo_dark', '', 1),
(293, 'customers_register_require_confirmation', '0', 1),
(295, 'allow_non_admin_staff_to_delete_ticket_attachments', '0', 1),
(296, 'sms_twilio_account_sid', '', 0),
(297, 'sms_twilio_auth_token', '', 0),
(298, 'sms_twilio_phone_number', '', 0),
(299, 'sms_twilio_active', '0', 1),
(300, 'sms_twilio_initialized', '1', 1),
(301, 'sms_clickatell_api_key', '1yJp5B3rQc2mZWZ8JL7xXw==', 0),
(302, 'sms_clickatell_active', '1', 1),
(303, 'sms_clickatell_initialized', '1', 1),
(304, 'paymentmethod_payu_money_active', '0', 1),
(305, 'paymentmethod_payu_money_label', 'PayU Money', 1),
(306, 'paymentmethod_payu_money_key', '', 0),
(307, 'paymentmethod_payu_money_salt', '', 0),
(308, 'paymentmethod_payu_money_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(309, 'paymentmethod_payu_money_currencies', 'INR', 0),
(310, 'paymentmethod_payu_money_test_mode_enabled', '1', 0),
(311, 'paymentmethod_payu_money_default_selected', '1', 1),
(312, 'paymentmethod_payu_money_initialized', '1', 1),
(313, 'paymentmethod_stripe_active', '0', 1),
(314, 'paymentmethod_stripe_label', 'Stripe Checkout', 1),
(315, 'paymentmethod_stripe_api_secret_key', '', 0),
(316, 'paymentmethod_stripe_api_publishable_key', '', 0),
(317, 'paymentmethod_stripe_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(318, 'paymentmethod_stripe_webhook_key', '51157b2ef0aecdce9eeb70235910f44c', 0),
(319, 'paymentmethod_stripe_currencies', 'USD,CAD', 0),
(320, 'paymentmethod_stripe_allow_primary_contact_to_update_credit_card', '1', 0),
(321, 'paymentmethod_stripe_test_mode_enabled', '1', 0),
(322, 'paymentmethod_stripe_default_selected', '1', 1),
(323, 'paymentmethod_stripe_initialized', '1', 1),
(324, 'paymentmethod_stripe_ideal_active', '0', 1),
(325, 'paymentmethod_stripe_ideal_label', 'Stripe iDEAL', 1),
(326, 'paymentmethod_stripe_ideal_api_secret_key', '', 0),
(327, 'paymentmethod_stripe_ideal_api_publishable_key', '', 0),
(328, 'paymentmethod_stripe_ideal_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(329, 'paymentmethod_stripe_ideal_statement_descriptor', 'Payment for Invoice {invoice_number}', 0),
(330, 'paymentmethod_stripe_ideal_webhook_key', '4e8bb32cb9161ba6fc1f456059480cbb', 0),
(331, 'paymentmethod_stripe_ideal_currencies', 'EUR', 0),
(332, 'paymentmethod_stripe_ideal_test_mode_enabled', '1', 0),
(333, 'paymentmethod_stripe_ideal_default_selected', '1', 1),
(334, 'paymentmethod_stripe_ideal_initialized', '1', 1),
(335, 'paymentmethod_two_checkout_active', '0', 1),
(336, 'paymentmethod_two_checkout_label', '2Checkout', 1),
(337, 'paymentmethod_two_checkout_account_number', '', 0),
(338, 'paymentmethod_two_checkout_private_key', '', 0),
(339, 'paymentmethod_two_checkout_publishable_key', '', 0),
(340, 'paymentmethod_two_checkout_currencies', 'USD,EUR', 0),
(341, 'paymentmethod_two_checkout_test_mode_enabled', '1', 0),
(342, 'paymentmethod_two_checkout_default_selected', '1', 1),
(343, 'paymentmethod_two_checkout_initialized', '1', 1),
(344, 'paymentmethod_paypal_active', '0', 1),
(345, 'paymentmethod_paypal_label', 'Paypal', 1),
(346, 'paymentmethod_paypal_username', '', 0),
(347, 'paymentmethod_paypal_password', '', 0),
(348, 'paymentmethod_paypal_signature', '', 0),
(349, 'paymentmethod_paypal_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(350, 'paymentmethod_paypal_currencies', 'EUR,USD', 0),
(351, 'paymentmethod_paypal_test_mode_enabled', '1', 0),
(352, 'paymentmethod_paypal_default_selected', '1', 1),
(353, 'paymentmethod_paypal_initialized', '1', 1),
(354, 'paymentmethod_paypal_braintree_active', '0', 1),
(355, 'paymentmethod_paypal_braintree_label', 'Braintree', 1),
(356, 'paymentmethod_paypal_braintree_merchant_id', '', 0),
(357, 'paymentmethod_paypal_braintree_api_public_key', '', 0),
(358, 'paymentmethod_paypal_braintree_api_private_key', '', 0),
(359, 'paymentmethod_paypal_braintree_currencies', 'USD', 0),
(360, 'paymentmethod_paypal_braintree_test_mode_enabled', '1', 0),
(361, 'paymentmethod_paypal_braintree_default_selected', '1', 1),
(362, 'paymentmethod_paypal_braintree_initialized', '1', 1),
(363, 'paymentmethod_authorize_aim_active', '0', 1),
(364, 'paymentmethod_authorize_aim_label', 'Authorize.net AIM', 1),
(365, 'paymentmethod_authorize_aim_api_login_id', '', 0),
(366, 'paymentmethod_authorize_aim_api_transaction_key', '', 0),
(367, 'paymentmethod_authorize_aim_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(368, 'paymentmethod_authorize_aim_currencies', 'USD', 0),
(369, 'paymentmethod_authorize_aim_test_mode_enabled', '0', 0),
(370, 'paymentmethod_authorize_aim_developer_mode_enabled', '1', 0),
(371, 'paymentmethod_authorize_aim_default_selected', '1', 1),
(372, 'paymentmethod_authorize_aim_initialized', '1', 1),
(373, 'paymentmethod_authorize_sim_active', '0', 1),
(374, 'paymentmethod_authorize_sim_label', 'Authorize.net SIM', 1),
(375, 'paymentmethod_authorize_sim_api_login_id', '', 0),
(376, 'paymentmethod_authorize_sim_api_transaction_key', '', 0),
(377, 'paymentmethod_authorize_sim_api_secret_key', '', 0),
(378, 'paymentmethod_authorize_sim_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(379, 'paymentmethod_authorize_sim_currencies', 'USD', 0),
(380, 'paymentmethod_authorize_sim_test_mode_enabled', '0', 0),
(381, 'paymentmethod_authorize_sim_developer_mode_enabled', '1', 0),
(382, 'paymentmethod_authorize_sim_default_selected', '1', 1),
(383, 'paymentmethod_authorize_sim_initialized', '1', 1),
(384, 'paymentmethod_mollie_active', '0', 1),
(385, 'paymentmethod_mollie_label', 'Mollie', 1),
(386, 'paymentmethod_mollie_api_key', '', 0),
(387, 'paymentmethod_mollie_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(388, 'paymentmethod_mollie_currencies', 'EUR', 0),
(389, 'paymentmethod_mollie_test_mode_enabled', '1', 0),
(390, 'paymentmethod_mollie_default_selected', '1', 1),
(391, 'paymentmethod_mollie_initialized', '1', 1),
(392, 'sms_trigger_invoice_overdue_notice', '', 0),
(393, 'sms_trigger_invoice_payment_recorded', '', 0),
(394, 'sms_trigger_estimate_expiration_reminder', '', 0),
(395, 'sms_trigger_proposal_expiration_reminder', '', 0),
(396, 'sms_trigger_proposal_new_comment_to_customer', '', 0),
(397, 'sms_trigger_proposal_new_comment_to_staff', '', 0),
(398, 'sms_trigger_contract_new_comment_to_customer', '', 0),
(399, 'sms_trigger_contract_new_comment_to_staff', '', 0),
(400, 'sms_trigger_contract_expiration_reminder', '', 0),
(401, 'sms_trigger_staff_reminder', '', 0),
(402, '_smtp_test_email_success', '1', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblpermissions`
--

CREATE TABLE `tblpermissions` (
  `permissionid` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `shortname` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblpermissions`
--

INSERT INTO `tblpermissions` (`permissionid`, `name`, `shortname`) VALUES
(1, 'Contracts', 'contracts'),
(2, 'Tasks', 'tasks'),
(3, 'Reports', 'reports'),
(4, 'Settings', 'settings'),
(5, 'Projects', 'projects'),
(6, 'Surveys', 'surveys'),
(7, 'Staff', 'staff'),
(8, 'Customers', 'customers'),
(9, 'Email Templates', 'email_templates'),
(10, 'Roles', 'roles'),
(11, 'Estimates', 'estimates'),
(12, 'Knowledge base', 'knowledge_base'),
(13, 'Proposals', 'proposals'),
(14, 'Goals', 'goals'),
(15, 'Expenses', 'expenses'),
(16, 'Bulk PDF Exporter', 'bulk_pdf_exporter'),
(17, 'Payments', 'payments'),
(18, 'Invoices', 'invoices'),
(19, 'Items', 'items'),
(20, 'Tasks Checklist Templates', 'checklist_templates'),
(21, 'Credit notes', 'credit_notes'),
(22, 'Leads', 'leads'),
(23, 'Subscriptions', 'subscriptions');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblpinnedprojects`
--

CREATE TABLE `tblpinnedprojects` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblpostcomments`
--

CREATE TABLE `tblpostcomments` (
  `id` int(11) NOT NULL,
  `content` text,
  `userid` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblpostlikes`
--

CREATE TABLE `tblpostlikes` (
  `id` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateliked` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblposts`
--

CREATE TABLE `tblposts` (
  `postid` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `datecreated` datetime NOT NULL,
  `visibility` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `pinned` int(11) NOT NULL,
  `datepinned` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblpredefinedreplies`
--

CREATE TABLE `tblpredefinedreplies` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblpriorities`
--

CREATE TABLE `tblpriorities` (
  `priorityid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblpriorities`
--

INSERT INTO `tblpriorities` (`priorityid`, `name`) VALUES
(1, 'Low'),
(2, 'Medium'),
(3, 'High');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblprojectactivity`
--

CREATE TABLE `tblprojectactivity` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `fullname` varchar(100) DEFAULT NULL,
  `visible_to_customer` int(11) NOT NULL DEFAULT '0',
  `description_key` varchar(500) NOT NULL COMMENT 'Language file key',
  `additional_data` text,
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblprojectdiscussioncomments`
--

CREATE TABLE `tblprojectdiscussioncomments` (
  `id` int(11) NOT NULL,
  `discussion_id` int(11) NOT NULL,
  `discussion_type` varchar(10) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `content` text NOT NULL,
  `staff_id` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT '0',
  `fullname` varchar(300) DEFAULT NULL,
  `file_name` varchar(300) DEFAULT NULL,
  `file_mime_type` varchar(70) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblprojectdiscussions`
--

CREATE TABLE `tblprojectdiscussions` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `show_to_customer` tinyint(1) NOT NULL DEFAULT '0',
  `datecreated` datetime NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblprojectfiles`
--

CREATE TABLE `tblprojectfiles` (
  `id` int(11) NOT NULL,
  `file_name` mediumtext NOT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `description` text,
  `filetype` varchar(50) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `visible_to_customer` tinyint(1) DEFAULT '0',
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `external` varchar(40) DEFAULT NULL,
  `external_link` text,
  `thumbnail_link` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblprojectmembers`
--

CREATE TABLE `tblprojectmembers` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblprojectnotes`
--

CREATE TABLE `tblprojectnotes` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblprojects`
--

CREATE TABLE `tblprojects` (
  `id` int(11) NOT NULL,
  `name` varchar(600) NOT NULL,
  `description` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `clientid` int(11) NOT NULL,
  `billing_type` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `deadline` date DEFAULT NULL,
  `project_created` date NOT NULL,
  `date_finished` datetime DEFAULT NULL,
  `progress` int(11) DEFAULT '0',
  `progress_from_tasks` int(11) NOT NULL DEFAULT '1',
  `project_cost` decimal(15,2) DEFAULT NULL,
  `project_rate_per_hour` decimal(15,2) DEFAULT NULL,
  `estimated_hours` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblprojectsettings`
--

CREATE TABLE `tblprojectsettings` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblproposalcomments`
--

CREATE TABLE `tblproposalcomments` (
  `id` int(11) NOT NULL,
  `content` mediumtext,
  `proposalid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblproposals`
--

CREATE TABLE `tblproposals` (
  `id` int(11) NOT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `content` longtext,
  `addedfrom` int(11) NOT NULL,
  `datecreated` datetime NOT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT '0.00',
  `adjustment` decimal(15,2) DEFAULT NULL,
  `discount_percent` decimal(15,2) NOT NULL,
  `discount_total` decimal(15,2) NOT NULL,
  `discount_type` varchar(30) DEFAULT NULL,
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `currency` int(11) NOT NULL,
  `open_till` date DEFAULT NULL,
  `date` date NOT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(40) DEFAULT NULL,
  `assigned` int(11) DEFAULT NULL,
  `hash` varchar(32) NOT NULL,
  `proposal_to` varchar(600) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT '0',
  `zip` varchar(50) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `allow_comments` tinyint(1) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL,
  `estimate_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `pipeline_order` int(11) NOT NULL DEFAULT '0',
  `is_expiry_notified` int(11) NOT NULL DEFAULT '0',
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL,
  `signature` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblreminders`
--

CREATE TABLE `tblreminders` (
  `id` int(11) NOT NULL,
  `description` text,
  `date` datetime NOT NULL,
  `isnotified` int(11) NOT NULL DEFAULT '0',
  `rel_id` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `notify_by_email` int(11) NOT NULL DEFAULT '1',
  `creator` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblrequestsgdpr`
--

CREATE TABLE `tblrequestsgdpr` (
  `id` int(11) NOT NULL,
  `clientid` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `lead_id` int(11) NOT NULL DEFAULT '0',
  `request_type` varchar(200) DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL,
  `request_date` datetime NOT NULL,
  `request_from` varchar(150) DEFAULT NULL,
  `description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblrolepermissions`
--

CREATE TABLE `tblrolepermissions` (
  `rolepermissionid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  `can_view` tinyint(1) NOT NULL DEFAULT '0',
  `can_view_own` tinyint(1) NOT NULL DEFAULT '0',
  `can_edit` tinyint(1) DEFAULT '0',
  `can_create` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '0',
  `permissionid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblroles`
--

CREATE TABLE `tblroles` (
  `roleid` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblroles`
--

INSERT INTO `tblroles` (`roleid`, `name`) VALUES
(1, 'Employee');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblsalesactivity`
--

CREATE TABLE `tblsalesactivity` (
  `id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `rel_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `additional_data` text,
  `staffid` varchar(11) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblservices`
--

CREATE TABLE `tblservices` (
  `serviceid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblsessions`
--

CREATE TABLE `tblsessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblsessions`
--

INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0rfgmuoc9g8gcnl8tiktgdu5j7eg71b4', '127.0.0.1', 1530342795, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303334323539383b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393834323635313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533303333323230313b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('1bcdf86ibs6sg9q1uputh34dmg593nkb', '127.0.0.1', 1530340167, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303333393839303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393834323635313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533303333323230313b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('1cfaata4name34rac9sko2j2em95hrgd', '127.0.0.1', 1530331077, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303333303836333b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b6d6573736167652d737563636573737c733a32323a22c490c3a32078c3b361205068c3a26e206e68c3b36d2e223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167652d73756363657373223b733a333a226f6c64223b7d),
('1vr43c63lsl8nt4kicv1os05d86dta8m', '127.0.0.1', 1530330857, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303333303535393b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('2hkraqt8qumdt5vb1pjfs4ov58a6t1si', '127.0.0.1', 1530339477, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303333393435323b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393834323635313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533303333323230313b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('36fi6vkombjt5itifg7a7n8v2ajcdgvn', '127.0.0.1', 1531025675, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313032353431343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533313032323239353b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533313032323330353b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('37jeehv7455h6duf9bvp8u6mu2qni4lf', '127.0.0.1', 1531047844, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313034373831353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533313032323239353b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533313032323330353b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('39pjfvn6acgpr42t8j842pm8afqmn9ec', '127.0.0.1', 1530341379, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303334313130303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393834323635313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533303333323230313b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('3c5q2dbu6qdsdk5tgobmd5giqmor4au8', '127.0.0.1', 1530338777, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303333383539383b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393834323635313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533303333323230313b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('41t3banvlhf5vk258ut53vlup8f9fbof', '127.0.0.1', 1530324566, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303332343238343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('4sittjl5vhk36shvm79i6t4avpa8vh9n', '127.0.0.1', 1530333281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303333323930353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393834323635313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533303333323230313b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('4smoee56nppe9ddcotrpgl3r3hss58ht', '127.0.0.1', 1530341574, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303334313430383b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393834323635313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533303333323230313b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('4u57f7ssbuiqphsr21suhaq3ogg6isn8', '127.0.0.1', 1530458439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303435383433393b7265645f75726c7c733a33383a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f61646d696e2f70726f7065727479223b),
('5mg53gaq1lr5arst65vtrksvdkpfu6jg', '127.0.0.1', 1531016341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313031363333383b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('62pcbevcmopgs199jt1li4hbm9vlrt65', '127.0.0.1', 1531025394, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313032353131313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533313032323239353b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533313032323330353b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('7117h0ecra9rqbebpsrl3t5893pc3rb0', '127.0.0.1', 1531021522, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313032313231343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b6d6573736167652d737563636573737c733a31323a22c490c3a3207468c3aa6d202e223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167652d73756363657373223b733a333a226e6577223b7d),
('7bejprfsoggo3skjqjcf80o4q56565ib', '127.0.0.1', 1530327829, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303332373832383b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('7k5j2bp97ns2ast40dr44u9rjin74rcj', '127.0.0.1', 1531042034, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313034313836363b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533313032323239353b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533313032323330353b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('80netdl9592f5o6p0mnog4dqif4k1tdh', '127.0.0.1', 1530944765, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303934343634353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393834323635313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533303934343733373b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('826gdrcjuarfef4loomc18vallp043dq', '127.0.0.1', 1531024128, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313032333838383b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533313032323239353b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533313032323330353b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('8blpqg14j1siukui2ct1g18e4habdq6a', '127.0.0.1', 1531046405, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313034363235303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533313032323239353b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533313032323330353b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('8u5ie5phe2gb03mj0rsbrvasdnum0m8q', '127.0.0.1', 1531053400, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313035333430303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533313032323239353b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533313032323330353b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('9bgs1ql2c6gksj65huto3424s5i4848h', '127.0.0.1', 1530329065, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303332383935373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('9ij6br8n7g567en4mb3p66t7b3bdav0s', '127.0.0.1', 1531052023, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313035313934323b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533313032323239353b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533313032323330353b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('9n7qena4ipqubtm1ed9ps9pnbe1tlp72', '127.0.0.1', 1530933802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303933333532383b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b),
('a44qqin8p730321nq84r03n9cbfttkun', '127.0.0.1', 1530960322, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303936303331353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393834323635313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533303934343733373b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('aer0rj0hg86qb5ol2u3urqpotdl38nn0', '127.0.0.1', 1531022344, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313032323136393b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533313032323239353b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533313032323330353b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('an2a2f1kbnnfotaccavujie4ol26oea3', '127.0.0.1', 1530325243, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303332353039343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('aribfaqd2oin1cfuc68eg5l9hskdahu6', '127.0.0.1', 1531052527, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313035323235313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533313032323239353b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533313032323330353b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('b4fr4een08snr8eeddr2nkis5hv5nsog', '127.0.0.1', 1530355953, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303335353837303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393834323635313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533303333323230313b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('c3lu88cgsclr9t7uskh4utm8rv4t4vm1', '127.0.0.1', 1531017688, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313031373437333b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('c733sneue7tbb00acnje0ntmni85abbt', '127.0.0.1', 1530341017, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303334303732373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393834323635313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533303333323230313b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('c90b2rlaca7mld8s04qdb5b6gdguqa77', '127.0.0.1', 1530340466, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303334303230393b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393834323635313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533303333323230313b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('cjtd4q2leqhjbp6p7gt6tb3u4b1c7s8c', '127.0.0.1', 1531044630, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313034343339393b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533313032323239353b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533313032323330353b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('d86ovv33kcn6a4fvklunfsa4ot9cjv18', '127.0.0.1', 1531017399, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313031373130363b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('ebcmkpjumdes0komustmnmu2mh3qc2bt', '127.0.0.1', 1531024591, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313032343532353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533313032323239353b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533313032323330353b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('enjlsd2p0bjrits9aoh2vegsjom1cc50', '127.0.0.1', 1530427820, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303432373631323b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b636c69656e745f757365725f69647c733a313a2233223b636f6e746163745f757365725f69647c733a313a2234223b636c69656e745f6c6f676765645f696e7c623a313b);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('f7258vnsi6aq92ejph4hojnse3d834i9', '127.0.0.1', 1531024517, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313032343232343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533313032323239353b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533313032323330353b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('ffg1qg8d67pqrfi2362mvbhhohj2fb34', '127.0.0.1', 1531017998, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313031373738373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('fhcr0pnij2tfjsnp38dho5d31uvp40b8', '127.0.0.1', 1531053253, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313035323937303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533313032323239353b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533313032323330353b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('fhljqv33ujr4i1o37trg6s0h2556bma3', '127.0.0.1', 1530961365, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303936313336353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393834323635313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533303934343733373b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d73657475702d6d656e752d6f70656e7c733a303a22223b);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('fq3bp6tnktk1398lglreu8nub9et6q1j', '127.0.0.1', 1530332902, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303333323532373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393834323635313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533303333323230313b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('fs535jb3stl20iliov3ta1fi4c5d7o9h', '127.0.0.1', 1530323992, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303332333838303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b),
('ft3q773vecd2n38f31tbva2t8dam38a1', '127.0.0.1', 1530333581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303333333238333b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393834323635313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533303333323230313b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('fuki9nvcar589j8crqip2dku918qphpl', '127.0.0.1', 1531028373, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313032383337333b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533313032323239353b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533313032323330353b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('g74q2h80uhd2nj1jdkbles0d8006il09', '127.0.0.1', 1531025892, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313032353733353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533313032323239353b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533313032323330353b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('gq0o7kchoahkrn6oakrd2lpsoa33g2kh', '127.0.0.1', 1531018457, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313031383136333b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('hcaqkcluqa5dtg9lkph6ihv74h93h7ss', '127.0.0.1', 1530328551, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303332383331323b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('hruu5eufrfdo4ru2lo7q3rgjscdkd51a', '127.0.0.1', 1531017097, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313031363830303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('ipb66rcvsg8pg5em5s7h8qvb7d57avf2', '127.0.0.1', 1531047468, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313034373331303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533313032323239353b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533313032323330353b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('iuonbv0gtflnoj0kd0drho3godaa4jp2', '127.0.0.1', 1530329811, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303332393736383b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('k891jhth59b69tns13behraatlif2k55', '127.0.0.1', 1531023816, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313032333533383b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533313032323239353b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533313032323330353b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('lh09t5jtrqgq0lost62d4ce2nclehalg', '127.0.0.1', 1531023188, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313032323931303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533313032323239353b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533313032323330353b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('mff968ttmqbfjvil5s477ev91jl7c1qs', '127.0.0.1', 1531018778, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313031383533373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('mm3l696sdh5j34ahcqoiri0urgvgeplf', '127.0.0.1', 1530329512, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303332393431303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('nffgdpu5mgk5vjqmlk7um2ujif55a5k8', '127.0.0.1', 1531064192, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313036343138393b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533313032323239353b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533313032323330353b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('nh90kdbnphkgdbsf7rjc8plnruiugf9r', '127.0.0.1', 1530321800, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303332313734393b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b),
('nlvpqto4k8ir8jhiao3kirgfnnnoa0vi', '127.0.0.1', 1530332527, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303333323135353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393834323635313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533303333323230313b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('offv1rblkspgnhd564qusdd728eijm2p', '127.0.0.1', 1530323574, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303332333537313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b),
('p0k6g2rrh1ad1bnvadrnnt4q7h393jdb', '127.0.0.1', 1530328917, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303332383632353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b6d6573736167652d737563636573737c733a31323a22c490c3a3207468c3aa6d202e223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167652d73756363657373223b733a333a226f6c64223b7d);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('qbvvs4nari3g478cmvhrb8ksmlj1s7c7', '127.0.0.1', 1530334092, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303333333539393b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393834323635313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533303333323230313b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('qfj5uf79jlvjetoaj785kncknoucfjti', '127.0.0.1', 1531052812, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313035323535353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533313032323239353b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533313032323330353b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('qjg3170lcsalc4fs682cv9lrv5v89bln', '127.0.0.1', 1530331636, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303333313538373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('r9ib57rtcc9u4sh84tihd9gc6orq4l81', '127.0.0.1', 1530938344, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303933383233343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b),
('re0fs2hcp4v14ircgvphr6nph860epor', '127.0.0.1', 1531022887, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313032323630353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533313032323239353b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533313032323330353b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('sp7l1b1slrhfufll9nhgrvof5hut4euj', '127.0.0.1', 1530334325, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303333343039353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393834323635313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533303333323230313b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('t147ddq1mohuv6obn5ja0bennkoju480', '127.0.0.1', 1531021811, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313032313532323b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('u2t9qeh4bhr784dnjqenigtitqdd4sk8', '127.0.0.1', 1530933872, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303933333837303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b),
('u4bb6bo98498ng6ddbeq5clsnecf844a', '127.0.0.1', 1530324918, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303332343635373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('vfp3hsavtm9q777670vad4ri563sm9r9', '127.0.0.1', 1530943641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303934333532353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393834323635313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533303934333537363b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('vio7ajb59758n4mlkptmclc9fao53i7m', '127.0.0.1', 1531023459, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313032333232303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533313032323239353b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533313032323330353b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('vteqf7mha3e3rrlatabse0bah9pknqd8', '127.0.0.1', 1530343382, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303334333338323b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a226133383264306632313438316533636133323938303963663737303738333561223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223437393533336335326436356366363039313530316464313364386564386232223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393834323635313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f4c77223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a35343a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a226435356433646338383735623733363964386462376361346561666663366264223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313532393833333733393b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f4c77223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a222f223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a343a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a36313a222f4170706c69636174696f6e732f58414d50502f78616d707066696c65732f6874646f63732f626174646f6e6773616e2f6d656469612f7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a333a227a6970223b733a343a2261726763223b733a333a222d7239223b733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a343a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533303333323230313b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblstaff`
--

CREATE TABLE `tblstaff` (
  `staffid` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `facebook` mediumtext,
  `linkedin` mediumtext,
  `phonenumber` varchar(30) DEFAULT NULL,
  `skype` varchar(50) DEFAULT NULL,
  `password` varchar(250) NOT NULL,
  `datecreated` datetime NOT NULL,
  `profile_image` varchar(300) DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `admin` int(11) NOT NULL DEFAULT '0',
  `role` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `default_language` varchar(40) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  `media_path_slug` varchar(300) DEFAULT NULL,
  `is_not_staff` int(11) NOT NULL DEFAULT '0',
  `hourly_rate` decimal(15,2) NOT NULL DEFAULT '0.00',
  `two_factor_auth_enabled` tinyint(1) DEFAULT '0',
  `two_factor_auth_code` varchar(100) DEFAULT NULL,
  `two_factor_auth_code_requested` datetime DEFAULT NULL,
  `email_signature` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblstaff`
--

INSERT INTO `tblstaff` (`staffid`, `email`, `firstname`, `lastname`, `facebook`, `linkedin`, `phonenumber`, `skype`, `password`, `datecreated`, `profile_image`, `last_ip`, `last_login`, `last_activity`, `last_password_change`, `new_pass_key`, `new_pass_key_requested`, `admin`, `role`, `active`, `default_language`, `direction`, `media_path_slug`, `is_not_staff`, `hourly_rate`, `two_factor_auth_enabled`, `two_factor_auth_code`, `two_factor_auth_code_requested`, `email_signature`) VALUES
(1, 'midi9x@gmail.com', 'Dinh', 'Nguyen', NULL, NULL, NULL, NULL, '$2a$08$zsOz5XDjRWXIVKLVBtYlyOmTDvhj3ZYvsCO.OISMImrBAqoSokc8e', '2018-06-15 17:02:05', NULL, '127.0.0.1', '2018-07-08 09:19:00', '2018-07-08 22:36:30', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, 0, '0.00', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblstaffdepartments`
--

CREATE TABLE `tblstaffdepartments` (
  `staffdepartmentid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `departmentid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblstaffpermissions`
--

CREATE TABLE `tblstaffpermissions` (
  `staffpermid` int(11) NOT NULL,
  `permissionid` int(11) NOT NULL,
  `can_view` tinyint(1) NOT NULL DEFAULT '0',
  `can_view_own` tinyint(1) NOT NULL DEFAULT '0',
  `can_edit` tinyint(1) NOT NULL DEFAULT '0',
  `can_create` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '0',
  `staffid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblstafftaskassignees`
--

CREATE TABLE `tblstafftaskassignees` (
  `id` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  `assigned_from` int(11) NOT NULL DEFAULT '0',
  `is_assigned_from_contact` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblstafftaskcomments`
--

CREATE TABLE `tblstafftaskcomments` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `taskid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `file_id` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblstafftasks`
--

CREATE TABLE `tblstafftasks` (
  `id` int(11) NOT NULL,
  `name` mediumtext,
  `description` text,
  `priority` int(11) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `startdate` date NOT NULL,
  `duedate` date DEFAULT NULL,
  `datefinished` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `is_added_from_contact` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `recurring_type` varchar(10) DEFAULT NULL,
  `repeat_every` int(11) DEFAULT NULL,
  `recurring` int(11) NOT NULL DEFAULT '0',
  `is_recurring_from` int(11) DEFAULT NULL,
  `cycles` int(11) NOT NULL DEFAULT '0',
  `total_cycles` int(11) NOT NULL DEFAULT '0',
  `custom_recurring` tinyint(1) NOT NULL DEFAULT '0',
  `last_recurring_date` date DEFAULT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(30) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `billable` tinyint(1) NOT NULL DEFAULT '0',
  `billed` tinyint(1) NOT NULL DEFAULT '0',
  `invoice_id` int(11) NOT NULL DEFAULT '0',
  `hourly_rate` decimal(15,2) NOT NULL DEFAULT '0.00',
  `milestone` int(11) DEFAULT '0',
  `kanban_order` int(11) NOT NULL DEFAULT '0',
  `milestone_order` int(11) NOT NULL DEFAULT '0',
  `visible_to_client` tinyint(1) NOT NULL DEFAULT '0',
  `deadline_notified` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblstafftasksfollowers`
--

CREATE TABLE `tblstafftasksfollowers` (
  `id` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblsubscriptions`
--

CREATE TABLE `tblsubscriptions` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `description` text,
  `clientid` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL DEFAULT '0',
  `stripe_plan_id` text,
  `stripe_subscription_id` text NOT NULL,
  `next_billing_cycle` bigint(20) DEFAULT NULL,
  `ends_at` bigint(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(32) NOT NULL,
  `created` datetime NOT NULL,
  `created_from` int(11) NOT NULL,
  `date_subscribed` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblsurveyresultsets`
--

CREATE TABLE `tblsurveyresultsets` (
  `resultsetid` int(11) NOT NULL,
  `surveyid` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `useragent` varchar(150) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblsurveys`
--

CREATE TABLE `tblsurveys` (
  `surveyid` int(11) NOT NULL,
  `subject` mediumtext NOT NULL,
  `slug` mediumtext NOT NULL,
  `description` text NOT NULL,
  `viewdescription` text,
  `datecreated` datetime NOT NULL,
  `redirect_url` varchar(100) DEFAULT NULL,
  `send` tinyint(1) NOT NULL DEFAULT '0',
  `onlyforloggedin` int(11) DEFAULT '0',
  `fromname` varchar(100) DEFAULT NULL,
  `iprestrict` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `hash` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblsurveysemailsendcron`
--

CREATE TABLE `tblsurveysemailsendcron` (
  `id` int(11) NOT NULL,
  `surveyid` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `emailid` int(11) DEFAULT NULL,
  `listid` varchar(11) DEFAULT NULL,
  `log_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblsurveysendlog`
--

CREATE TABLE `tblsurveysendlog` (
  `id` int(11) NOT NULL,
  `surveyid` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `iscronfinished` int(11) NOT NULL DEFAULT '0',
  `send_to_mail_lists` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltags`
--

CREATE TABLE `tbltags` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltags_in`
--

CREATE TABLE `tbltags_in` (
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `tag_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltaskchecklists`
--

CREATE TABLE `tbltaskchecklists` (
  `id` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `finished` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `finished_from` int(11) DEFAULT '0',
  `list_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltaskstimers`
--

CREATE TABLE `tbltaskstimers` (
  `id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `start_time` varchar(64) NOT NULL,
  `end_time` varchar(64) DEFAULT NULL,
  `staff_id` int(11) NOT NULL,
  `hourly_rate` decimal(15,2) NOT NULL DEFAULT '0.00',
  `note` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltaxes`
--

CREATE TABLE `tbltaxes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `taxrate` decimal(15,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblticketattachments`
--

CREATE TABLE `tblticketattachments` (
  `id` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  `replyid` int(11) DEFAULT NULL,
  `file_name` mediumtext NOT NULL,
  `filetype` varchar(50) DEFAULT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblticketpipelog`
--

CREATE TABLE `tblticketpipelog` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `email_to` varchar(500) NOT NULL,
  `name` varchar(200) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `message` mediumtext NOT NULL,
  `email` varchar(300) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblticketreplies`
--

CREATE TABLE `tblticketreplies` (
  `id` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `contactid` int(11) NOT NULL DEFAULT '0',
  `name` text,
  `email` text,
  `date` datetime NOT NULL,
  `message` text,
  `attachment` int(11) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltickets`
--

CREATE TABLE `tbltickets` (
  `ticketid` int(11) NOT NULL,
  `adminreplying` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL,
  `contactid` int(11) NOT NULL DEFAULT '0',
  `email` text,
  `name` text,
  `department` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `service` int(11) DEFAULT NULL,
  `ticketkey` varchar(32) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `message` text,
  `admin` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `lastreply` datetime DEFAULT NULL,
  `clientread` int(11) NOT NULL DEFAULT '0',
  `adminread` int(11) NOT NULL DEFAULT '0',
  `assigned` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblticketsspamcontrol`
--

CREATE TABLE `tblticketsspamcontrol` (
  `id` int(11) NOT NULL,
  `type` varchar(40) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblticketstatus`
--

CREATE TABLE `tblticketstatus` (
  `ticketstatusid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `isdefault` int(11) NOT NULL DEFAULT '0',
  `statuscolor` varchar(7) DEFAULT NULL,
  `statusorder` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblticketstatus`
--

INSERT INTO `tblticketstatus` (`ticketstatusid`, `name`, `isdefault`, `statuscolor`, `statusorder`) VALUES
(3, 'Answered', 1, '#0000ff', 3),
(4, 'On Hold', 1, '#c0c0c0', 4),
(2, 'In progress', 1, '#84c529', 2),
(5, 'Closed', 1, '#03a9f4', 5),
(1, 'Open', 1, '#ff2d42', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltodoitems`
--

CREATE TABLE `tbltodoitems` (
  `todoid` int(11) NOT NULL,
  `description` text NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `finished` tinyint(1) NOT NULL,
  `datefinished` datetime DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbluserautologin`
--

CREATE TABLE `tbluserautologin` (
  `key_id` char(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_agent` varchar(150) NOT NULL,
  `last_ip` varchar(40) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `staff` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblusermeta`
--

CREATE TABLE `tblusermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `client_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `contact_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblusermeta`
--

INSERT INTO `tblusermeta` (`umeta_id`, `staff_id`, `client_id`, `contact_id`, `meta_key`, `meta_value`) VALUES
(3, 0, 0, 3, 'consent_key', 'd24623095b767e9be561388c9f28b8f7-823e38d209689e6807c1896a1124d786'),
(4, 0, 0, 4, 'consent_key', '6439ce397a3eea20fd9cb1165755cbc3-6d0f2cbb3abfef51c7b0a4d304d3edf0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblvault`
--

CREATE TABLE `tblvault` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `server_address` varchar(400) NOT NULL,
  `port` int(11) DEFAULT NULL,
  `username` varchar(300) NOT NULL,
  `password` text NOT NULL,
  `description` text,
  `creator` int(11) NOT NULL,
  `creator_name` varchar(100) DEFAULT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT '1',
  `share_in_projects` tinyint(1) NOT NULL DEFAULT '0',
  `last_updated` datetime DEFAULT NULL,
  `last_updated_from` varchar(100) DEFAULT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblviewstracking`
--

CREATE TABLE `tblviewstracking` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `view_ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblwebtolead`
--

CREATE TABLE `tblwebtolead` (
  `id` int(11) NOT NULL,
  `form_key` varchar(32) NOT NULL,
  `lead_source` int(11) NOT NULL,
  `lead_status` int(11) NOT NULL,
  `notify_lead_imported` int(11) NOT NULL DEFAULT '1',
  `notify_type` varchar(20) DEFAULT NULL,
  `notify_ids` mediumtext,
  `responsible` int(11) NOT NULL DEFAULT '0',
  `name` varchar(400) NOT NULL,
  `form_data` mediumtext,
  `recaptcha` int(11) NOT NULL DEFAULT '0',
  `submit_btn_name` varchar(40) DEFAULT NULL,
  `success_submit_msg` text,
  `language` varchar(40) DEFAULT NULL,
  `allow_duplicate` int(11) NOT NULL DEFAULT '1',
  `mark_public` int(11) NOT NULL DEFAULT '0',
  `track_duplicate_field` varchar(20) DEFAULT NULL,
  `track_duplicate_field_and` varchar(20) DEFAULT NULL,
  `create_task_on_duplicate` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `laws`
--
ALTER TABLE `laws`
  ADD PRIMARY KEY (`articleid`);

--
-- Chỉ mục cho bảng `lawsgroups`
--
ALTER TABLE `lawsgroups`
  ADD PRIMARY KEY (`groupid`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`articleid`);

--
-- Chỉ mục cho bảng `newsgroups`
--
ALTER TABLE `newsgroups`
  ADD PRIMARY KEY (`groupid`);

--
-- Chỉ mục cho bảng `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`property_id`);

--
-- Chỉ mục cho bảng `property_categories`
--
ALTER TABLE `property_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `property_characteristics`
--
ALTER TABLE `property_characteristics`
  ADD PRIMARY KEY (`characteristic_id`);

--
-- Chỉ mục cho bảng `property_characteristic_metas`
--
ALTER TABLE `property_characteristic_metas`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `property_contacts`
--
ALTER TABLE `property_contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- Chỉ mục cho bảng `property_images`
--
ALTER TABLE `property_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `property_locations`
--
ALTER TABLE `property_locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Chỉ mục cho bảng `property_types`
--
ALTER TABLE `property_types`
  ADD PRIMARY KEY (`type_id`);

--
-- Chỉ mục cho bảng `tblactivitylog`
--
ALTER TABLE `tblactivitylog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staffid` (`staffid`);

--
-- Chỉ mục cho bảng `tblannouncements`
--
ALTER TABLE `tblannouncements`
  ADD PRIMARY KEY (`announcementid`);

--
-- Chỉ mục cho bảng `tblcheckliststemplates`
--
ALTER TABLE `tblcheckliststemplates`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblclients`
--
ALTER TABLE `tblclients`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `country` (`country`),
  ADD KEY `leadid` (`leadid`),
  ADD KEY `company` (`company`);

--
-- Chỉ mục cho bảng `tblcommentlikes`
--
ALTER TABLE `tblcommentlikes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblconsentpurposes`
--
ALTER TABLE `tblconsentpurposes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblconsents`
--
ALTER TABLE `tblconsents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purpose_id` (`purpose_id`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `lead_id` (`lead_id`);
ALTER TABLE `tblconsents` ADD FULLTEXT KEY `action` (`action`);

--
-- Chỉ mục cho bảng `tblcontactpermissions`
--
ALTER TABLE `tblcontactpermissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblcontacts`
--
ALTER TABLE `tblcontacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `is_primary` (`is_primary`);

--
-- Chỉ mục cho bảng `tblcontractcomments`
--
ALTER TABLE `tblcontractcomments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblcontractrenewals`
--
ALTER TABLE `tblcontractrenewals`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblcontracts`
--
ALTER TABLE `tblcontracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client` (`client`),
  ADD KEY `contract_type` (`contract_type`);

--
-- Chỉ mục cho bảng `tblcontracttypes`
--
ALTER TABLE `tblcontracttypes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblcountries`
--
ALTER TABLE `tblcountries`
  ADD PRIMARY KEY (`country_id`);

--
-- Chỉ mục cho bảng `tblcreditnotes`
--
ALTER TABLE `tblcreditnotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency` (`currency`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `project_id` (`project_id`);

--
-- Chỉ mục cho bảng `tblcredits`
--
ALTER TABLE `tblcredits`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblcurrencies`
--
ALTER TABLE `tblcurrencies`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblcustomeradmins`
--
ALTER TABLE `tblcustomeradmins`
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Chỉ mục cho bảng `tblcustomergroups_in`
--
ALTER TABLE `tblcustomergroups_in`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupid` (`groupid`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Chỉ mục cho bảng `tblcustomersgroups`
--
ALTER TABLE `tblcustomersgroups`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblcustomfields`
--
ALTER TABLE `tblcustomfields`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblcustomfieldsvalues`
--
ALTER TABLE `tblcustomfieldsvalues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `relid` (`relid`),
  ADD KEY `fieldid` (`fieldid`),
  ADD KEY `fieldto` (`fieldto`);

--
-- Chỉ mục cho bảng `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`departmentid`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `tbldismissedannouncements`
--
ALTER TABLE `tbldismissedannouncements`
  ADD PRIMARY KEY (`dismissedannouncementid`),
  ADD KEY `announcementid` (`announcementid`),
  ADD KEY `staff` (`staff`),
  ADD KEY `userid` (`userid`);

--
-- Chỉ mục cho bảng `tblemaillists`
--
ALTER TABLE `tblemaillists`
  ADD PRIMARY KEY (`listid`);

--
-- Chỉ mục cho bảng `tblemailqueue`
--
ALTER TABLE `tblemailqueue`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblemailstracking`
--
ALTER TABLE `tblemailstracking`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblemailtemplates`
--
ALTER TABLE `tblemailtemplates`
  ADD PRIMARY KEY (`emailtemplateid`);

--
-- Chỉ mục cho bảng `tblestimates`
--
ALTER TABLE `tblestimates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `currency` (`currency`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `sale_agent` (`sale_agent`);

--
-- Chỉ mục cho bảng `tblevents`
--
ALTER TABLE `tblevents`
  ADD PRIMARY KEY (`eventid`);

--
-- Chỉ mục cho bảng `tblexpenses`
--
ALTER TABLE `tblexpenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `category` (`category`),
  ADD KEY `currency` (`currency`);

--
-- Chỉ mục cho bảng `tblexpensescategories`
--
ALTER TABLE `tblexpensescategories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblfiles`
--
ALTER TABLE `tblfiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`);

--
-- Chỉ mục cho bảng `tblformquestionboxes`
--
ALTER TABLE `tblformquestionboxes`
  ADD PRIMARY KEY (`boxid`);

--
-- Chỉ mục cho bảng `tblformquestionboxesdescription`
--
ALTER TABLE `tblformquestionboxesdescription`
  ADD PRIMARY KEY (`questionboxdescriptionid`);

--
-- Chỉ mục cho bảng `tblformquestions`
--
ALTER TABLE `tblformquestions`
  ADD PRIMARY KEY (`questionid`);

--
-- Chỉ mục cho bảng `tblformresults`
--
ALTER TABLE `tblformresults`
  ADD PRIMARY KEY (`resultid`);

--
-- Chỉ mục cho bảng `tblgoals`
--
ALTER TABLE `tblgoals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Chỉ mục cho bảng `tblinvoicepaymentrecords`
--
ALTER TABLE `tblinvoicepaymentrecords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoiceid` (`invoiceid`),
  ADD KEY `paymentmethod` (`paymentmethod`);

--
-- Chỉ mục cho bảng `tblinvoicepaymentsmodes`
--
ALTER TABLE `tblinvoicepaymentsmodes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblinvoices`
--
ALTER TABLE `tblinvoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency` (`currency`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `sale_agent` (`sale_agent`),
  ADD KEY `total` (`total`);

--
-- Chỉ mục cho bảng `tblitems`
--
ALTER TABLE `tblitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax` (`tax`),
  ADD KEY `tax2` (`tax2`),
  ADD KEY `group_id` (`group_id`);

--
-- Chỉ mục cho bảng `tblitemsrelated`
--
ALTER TABLE `tblitemsrelated`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblitemstax`
--
ALTER TABLE `tblitemstax`
  ADD PRIMARY KEY (`id`),
  ADD KEY `itemid` (`itemid`);

--
-- Chỉ mục cho bảng `tblitems_groups`
--
ALTER TABLE `tblitems_groups`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblitems_in`
--
ALTER TABLE `tblitems_in`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`),
  ADD KEY `id` (`id`),
  ADD KEY `qty` (`qty`),
  ADD KEY `rate` (`rate`);

--
-- Chỉ mục cho bảng `tblknowledgebase`
--
ALTER TABLE `tblknowledgebase`
  ADD PRIMARY KEY (`articleid`);

--
-- Chỉ mục cho bảng `tblknowledgebasearticleanswers`
--
ALTER TABLE `tblknowledgebasearticleanswers`
  ADD PRIMARY KEY (`articleanswerid`);

--
-- Chỉ mục cho bảng `tblknowledgebasegroups`
--
ALTER TABLE `tblknowledgebasegroups`
  ADD PRIMARY KEY (`groupid`);

--
-- Chỉ mục cho bảng `tblleadactivitylog`
--
ALTER TABLE `tblleadactivitylog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblleads`
--
ALTER TABLE `tblleads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assigned` (`assigned`),
  ADD KEY `status` (`status`),
  ADD KEY `source` (`source`),
  ADD KEY `lastcontact` (`lastcontact`),
  ADD KEY `dateadded` (`dateadded`),
  ADD KEY `leadorder` (`leadorder`),
  ADD KEY `from_form_id` (`from_form_id`);

--
-- Chỉ mục cho bảng `tblleadsemailintegrationemails`
--
ALTER TABLE `tblleadsemailintegrationemails`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblleadsintegration`
--
ALTER TABLE `tblleadsintegration`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblleadssources`
--
ALTER TABLE `tblleadssources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `tblleadsstatus`
--
ALTER TABLE `tblleadsstatus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `tbllistemails`
--
ALTER TABLE `tbllistemails`
  ADD PRIMARY KEY (`emailid`);

--
-- Chỉ mục cho bảng `tblmaillistscustomfields`
--
ALTER TABLE `tblmaillistscustomfields`
  ADD PRIMARY KEY (`customfieldid`);

--
-- Chỉ mục cho bảng `tblmaillistscustomfieldvalues`
--
ALTER TABLE `tblmaillistscustomfieldvalues`
  ADD PRIMARY KEY (`customfieldvalueid`),
  ADD KEY `listid` (`listid`),
  ADD KEY `customfieldid` (`customfieldid`);

--
-- Chỉ mục cho bảng `tblmilestones`
--
ALTER TABLE `tblmilestones`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblnotes`
--
ALTER TABLE `tblnotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`);

--
-- Chỉ mục cho bảng `tblnotifications`
--
ALTER TABLE `tblnotifications`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbloptions`
--
ALTER TABLE `tbloptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `tblpermissions`
--
ALTER TABLE `tblpermissions`
  ADD PRIMARY KEY (`permissionid`);

--
-- Chỉ mục cho bảng `tblpinnedprojects`
--
ALTER TABLE `tblpinnedprojects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Chỉ mục cho bảng `tblpostcomments`
--
ALTER TABLE `tblpostcomments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblpostlikes`
--
ALTER TABLE `tblpostlikes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`postid`);

--
-- Chỉ mục cho bảng `tblpredefinedreplies`
--
ALTER TABLE `tblpredefinedreplies`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblpriorities`
--
ALTER TABLE `tblpriorities`
  ADD PRIMARY KEY (`priorityid`);

--
-- Chỉ mục cho bảng `tblprojectactivity`
--
ALTER TABLE `tblprojectactivity`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblprojectdiscussioncomments`
--
ALTER TABLE `tblprojectdiscussioncomments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblprojectdiscussions`
--
ALTER TABLE `tblprojectdiscussions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblprojectfiles`
--
ALTER TABLE `tblprojectfiles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblprojectmembers`
--
ALTER TABLE `tblprojectmembers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Chỉ mục cho bảng `tblprojectnotes`
--
ALTER TABLE `tblprojectnotes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblprojects`
--
ALTER TABLE `tblprojects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `name` (`name`(333));

--
-- Chỉ mục cho bảng `tblprojectsettings`
--
ALTER TABLE `tblprojectsettings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Chỉ mục cho bảng `tblproposalcomments`
--
ALTER TABLE `tblproposalcomments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblproposals`
--
ALTER TABLE `tblproposals`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblreminders`
--
ALTER TABLE `tblreminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`),
  ADD KEY `staff` (`staff`);

--
-- Chỉ mục cho bảng `tblrequestsgdpr`
--
ALTER TABLE `tblrequestsgdpr`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblrolepermissions`
--
ALTER TABLE `tblrolepermissions`
  ADD PRIMARY KEY (`rolepermissionid`);

--
-- Chỉ mục cho bảng `tblroles`
--
ALTER TABLE `tblroles`
  ADD PRIMARY KEY (`roleid`);

--
-- Chỉ mục cho bảng `tblsalesactivity`
--
ALTER TABLE `tblsalesactivity`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`serviceid`);

--
-- Chỉ mục cho bảng `tblsessions`
--
ALTER TABLE `tblsessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Chỉ mục cho bảng `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD PRIMARY KEY (`staffid`),
  ADD KEY `firstname` (`firstname`),
  ADD KEY `lastname` (`lastname`);

--
-- Chỉ mục cho bảng `tblstaffdepartments`
--
ALTER TABLE `tblstaffdepartments`
  ADD PRIMARY KEY (`staffdepartmentid`);

--
-- Chỉ mục cho bảng `tblstaffpermissions`
--
ALTER TABLE `tblstaffpermissions`
  ADD PRIMARY KEY (`staffpermid`),
  ADD KEY `permissionid` (`permissionid`),
  ADD KEY `staffid` (`staffid`);

--
-- Chỉ mục cho bảng `tblstafftaskassignees`
--
ALTER TABLE `tblstafftaskassignees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taskid` (`taskid`),
  ADD KEY `staffid` (`staffid`);

--
-- Chỉ mục cho bảng `tblstafftaskcomments`
--
ALTER TABLE `tblstafftaskcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_id` (`file_id`),
  ADD KEY `taskid` (`taskid`);

--
-- Chỉ mục cho bảng `tblstafftasks`
--
ALTER TABLE `tblstafftasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`),
  ADD KEY `milestone` (`milestone`),
  ADD KEY `kanban_order` (`kanban_order`);

--
-- Chỉ mục cho bảng `tblstafftasksfollowers`
--
ALTER TABLE `tblstafftasksfollowers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblsubscriptions`
--
ALTER TABLE `tblsubscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `currency` (`currency`),
  ADD KEY `tax_id` (`tax_id`);

--
-- Chỉ mục cho bảng `tblsurveyresultsets`
--
ALTER TABLE `tblsurveyresultsets`
  ADD PRIMARY KEY (`resultsetid`);

--
-- Chỉ mục cho bảng `tblsurveys`
--
ALTER TABLE `tblsurveys`
  ADD PRIMARY KEY (`surveyid`);

--
-- Chỉ mục cho bảng `tblsurveysemailsendcron`
--
ALTER TABLE `tblsurveysemailsendcron`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblsurveysendlog`
--
ALTER TABLE `tblsurveysendlog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbltags`
--
ALTER TABLE `tbltags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `tbltags_in`
--
ALTER TABLE `tbltags_in`
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Chỉ mục cho bảng `tbltaskchecklists`
--
ALTER TABLE `tbltaskchecklists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taskid` (`taskid`);

--
-- Chỉ mục cho bảng `tbltaskstimers`
--
ALTER TABLE `tbltaskstimers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Chỉ mục cho bảng `tbltaxes`
--
ALTER TABLE `tbltaxes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblticketattachments`
--
ALTER TABLE `tblticketattachments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblticketpipelog`
--
ALTER TABLE `tblticketpipelog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblticketreplies`
--
ALTER TABLE `tblticketreplies`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbltickets`
--
ALTER TABLE `tbltickets`
  ADD PRIMARY KEY (`ticketid`),
  ADD KEY `service` (`service`),
  ADD KEY `department` (`department`),
  ADD KEY `status` (`status`),
  ADD KEY `userid` (`userid`),
  ADD KEY `priority` (`priority`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `contactid` (`contactid`);

--
-- Chỉ mục cho bảng `tblticketsspamcontrol`
--
ALTER TABLE `tblticketsspamcontrol`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblticketstatus`
--
ALTER TABLE `tblticketstatus`
  ADD PRIMARY KEY (`ticketstatusid`);

--
-- Chỉ mục cho bảng `tbltodoitems`
--
ALTER TABLE `tbltodoitems`
  ADD PRIMARY KEY (`todoid`);

--
-- Chỉ mục cho bảng `tblusermeta`
--
ALTER TABLE `tblusermeta`
  ADD PRIMARY KEY (`umeta_id`);

--
-- Chỉ mục cho bảng `tblvault`
--
ALTER TABLE `tblvault`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblviewstracking`
--
ALTER TABLE `tblviewstracking`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblwebtolead`
--
ALTER TABLE `tblwebtolead`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `laws`
--
ALTER TABLE `laws`
  MODIFY `articleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `lawsgroups`
--
ALTER TABLE `lawsgroups`
  MODIFY `groupid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `articleid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `newsgroups`
--
ALTER TABLE `newsgroups`
  MODIFY `groupid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `property`
--
ALTER TABLE `property`
  MODIFY `property_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `property_categories`
--
ALTER TABLE `property_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `property_characteristics`
--
ALTER TABLE `property_characteristics`
  MODIFY `characteristic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `property_characteristic_metas`
--
ALTER TABLE `property_characteristic_metas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `property_contacts`
--
ALTER TABLE `property_contacts`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `property_images`
--
ALTER TABLE `property_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `property_locations`
--
ALTER TABLE `property_locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `property_types`
--
ALTER TABLE `property_types`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT cho bảng `tblactivitylog`
--
ALTER TABLE `tblactivitylog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;
--
-- AUTO_INCREMENT cho bảng `tblannouncements`
--
ALTER TABLE `tblannouncements`
  MODIFY `announcementid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblcheckliststemplates`
--
ALTER TABLE `tblcheckliststemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblclients`
--
ALTER TABLE `tblclients`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `tblcommentlikes`
--
ALTER TABLE `tblcommentlikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblconsentpurposes`
--
ALTER TABLE `tblconsentpurposes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblconsents`
--
ALTER TABLE `tblconsents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblcontactpermissions`
--
ALTER TABLE `tblcontactpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT cho bảng `tblcontacts`
--
ALTER TABLE `tblcontacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `tblcontractcomments`
--
ALTER TABLE `tblcontractcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblcontractrenewals`
--
ALTER TABLE `tblcontractrenewals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblcontracts`
--
ALTER TABLE `tblcontracts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblcontracttypes`
--
ALTER TABLE `tblcontracttypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblcountries`
--
ALTER TABLE `tblcountries`
  MODIFY `country_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
--
-- AUTO_INCREMENT cho bảng `tblcreditnotes`
--
ALTER TABLE `tblcreditnotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblcredits`
--
ALTER TABLE `tblcredits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblcurrencies`
--
ALTER TABLE `tblcurrencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `tblcustomergroups_in`
--
ALTER TABLE `tblcustomergroups_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `tblcustomersgroups`
--
ALTER TABLE `tblcustomersgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `tblcustomfields`
--
ALTER TABLE `tblcustomfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblcustomfieldsvalues`
--
ALTER TABLE `tblcustomfieldsvalues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `departmentid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tbldismissedannouncements`
--
ALTER TABLE `tbldismissedannouncements`
  MODIFY `dismissedannouncementid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblemaillists`
--
ALTER TABLE `tblemaillists`
  MODIFY `listid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblemailqueue`
--
ALTER TABLE `tblemailqueue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblemailstracking`
--
ALTER TABLE `tblemailstracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblemailtemplates`
--
ALTER TABLE `tblemailtemplates`
  MODIFY `emailtemplateid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
--
-- AUTO_INCREMENT cho bảng `tblestimates`
--
ALTER TABLE `tblestimates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblevents`
--
ALTER TABLE `tblevents`
  MODIFY `eventid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblexpenses`
--
ALTER TABLE `tblexpenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblexpensescategories`
--
ALTER TABLE `tblexpensescategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblfiles`
--
ALTER TABLE `tblfiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblformquestionboxes`
--
ALTER TABLE `tblformquestionboxes`
  MODIFY `boxid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblformquestionboxesdescription`
--
ALTER TABLE `tblformquestionboxesdescription`
  MODIFY `questionboxdescriptionid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblformquestions`
--
ALTER TABLE `tblformquestions`
  MODIFY `questionid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblformresults`
--
ALTER TABLE `tblformresults`
  MODIFY `resultid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblgoals`
--
ALTER TABLE `tblgoals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblinvoicepaymentrecords`
--
ALTER TABLE `tblinvoicepaymentrecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblinvoicepaymentsmodes`
--
ALTER TABLE `tblinvoicepaymentsmodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `tblinvoices`
--
ALTER TABLE `tblinvoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblitems`
--
ALTER TABLE `tblitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblitemsrelated`
--
ALTER TABLE `tblitemsrelated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblitemstax`
--
ALTER TABLE `tblitemstax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblitems_groups`
--
ALTER TABLE `tblitems_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblitems_in`
--
ALTER TABLE `tblitems_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblknowledgebase`
--
ALTER TABLE `tblknowledgebase`
  MODIFY `articleid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblknowledgebasearticleanswers`
--
ALTER TABLE `tblknowledgebasearticleanswers`
  MODIFY `articleanswerid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblknowledgebasegroups`
--
ALTER TABLE `tblknowledgebasegroups`
  MODIFY `groupid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblleadactivitylog`
--
ALTER TABLE `tblleadactivitylog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `tblleads`
--
ALTER TABLE `tblleads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `tblleadsemailintegrationemails`
--
ALTER TABLE `tblleadsemailintegrationemails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblleadsintegration`
--
ALTER TABLE `tblleadsintegration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'the ID always must be 1', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `tblleadssources`
--
ALTER TABLE `tblleadssources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `tblleadsstatus`
--
ALTER TABLE `tblleadsstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `tbllistemails`
--
ALTER TABLE `tbllistemails`
  MODIFY `emailid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblmaillistscustomfields`
--
ALTER TABLE `tblmaillistscustomfields`
  MODIFY `customfieldid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblmaillistscustomfieldvalues`
--
ALTER TABLE `tblmaillistscustomfieldvalues`
  MODIFY `customfieldvalueid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblmilestones`
--
ALTER TABLE `tblmilestones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblnotes`
--
ALTER TABLE `tblnotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblnotifications`
--
ALTER TABLE `tblnotifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tbloptions`
--
ALTER TABLE `tbloptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;
--
-- AUTO_INCREMENT cho bảng `tblpermissions`
--
ALTER TABLE `tblpermissions`
  MODIFY `permissionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT cho bảng `tblpinnedprojects`
--
ALTER TABLE `tblpinnedprojects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblpostcomments`
--
ALTER TABLE `tblpostcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblpostlikes`
--
ALTER TABLE `tblpostlikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `postid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblpredefinedreplies`
--
ALTER TABLE `tblpredefinedreplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblpriorities`
--
ALTER TABLE `tblpriorities`
  MODIFY `priorityid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `tblprojectactivity`
--
ALTER TABLE `tblprojectactivity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblprojectdiscussioncomments`
--
ALTER TABLE `tblprojectdiscussioncomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblprojectdiscussions`
--
ALTER TABLE `tblprojectdiscussions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblprojectfiles`
--
ALTER TABLE `tblprojectfiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblprojectmembers`
--
ALTER TABLE `tblprojectmembers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblprojectnotes`
--
ALTER TABLE `tblprojectnotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblprojects`
--
ALTER TABLE `tblprojects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblprojectsettings`
--
ALTER TABLE `tblprojectsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblproposalcomments`
--
ALTER TABLE `tblproposalcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblproposals`
--
ALTER TABLE `tblproposals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblreminders`
--
ALTER TABLE `tblreminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblrequestsgdpr`
--
ALTER TABLE `tblrequestsgdpr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblrolepermissions`
--
ALTER TABLE `tblrolepermissions`
  MODIFY `rolepermissionid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblroles`
--
ALTER TABLE `tblroles`
  MODIFY `roleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `tblsalesactivity`
--
ALTER TABLE `tblsalesactivity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `serviceid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblstaff`
--
ALTER TABLE `tblstaff`
  MODIFY `staffid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `tblstaffdepartments`
--
ALTER TABLE `tblstaffdepartments`
  MODIFY `staffdepartmentid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblstaffpermissions`
--
ALTER TABLE `tblstaffpermissions`
  MODIFY `staffpermid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblstafftaskassignees`
--
ALTER TABLE `tblstafftaskassignees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblstafftaskcomments`
--
ALTER TABLE `tblstafftaskcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblstafftasks`
--
ALTER TABLE `tblstafftasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblstafftasksfollowers`
--
ALTER TABLE `tblstafftasksfollowers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblsubscriptions`
--
ALTER TABLE `tblsubscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblsurveyresultsets`
--
ALTER TABLE `tblsurveyresultsets`
  MODIFY `resultsetid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblsurveys`
--
ALTER TABLE `tblsurveys`
  MODIFY `surveyid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblsurveysemailsendcron`
--
ALTER TABLE `tblsurveysemailsendcron`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblsurveysendlog`
--
ALTER TABLE `tblsurveysendlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tbltags`
--
ALTER TABLE `tbltags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tbltaskchecklists`
--
ALTER TABLE `tbltaskchecklists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tbltaskstimers`
--
ALTER TABLE `tbltaskstimers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tbltaxes`
--
ALTER TABLE `tbltaxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblticketattachments`
--
ALTER TABLE `tblticketattachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblticketpipelog`
--
ALTER TABLE `tblticketpipelog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblticketreplies`
--
ALTER TABLE `tblticketreplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tbltickets`
--
ALTER TABLE `tbltickets`
  MODIFY `ticketid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblticketsspamcontrol`
--
ALTER TABLE `tblticketsspamcontrol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblticketstatus`
--
ALTER TABLE `tblticketstatus`
  MODIFY `ticketstatusid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT cho bảng `tbltodoitems`
--
ALTER TABLE `tbltodoitems`
  MODIFY `todoid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblusermeta`
--
ALTER TABLE `tblusermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `tblvault`
--
ALTER TABLE `tblvault`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblviewstracking`
--
ALTER TABLE `tblviewstracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tblwebtolead`
--
ALTER TABLE `tblwebtolead`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
