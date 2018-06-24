-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th6 24, 2018 lúc 06:01 PM
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
-- Cấu trúc bảng cho bảng `property`
--

CREATE TABLE `property` (
  `property_id` int(11) NOT NULL,
  `property_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_avatar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_category_id` int(11) NOT NULL,
  `property_type_id` int(11) NOT NULL,
  `property_location_id` int(11) NOT NULL,
  `property_status` int(11) NOT NULL,
  `property_price` int(11) NOT NULL,
  `property_slug` text NOT NULL,
  `property_created_at` datetime DEFAULT NULL,
  `property_active` int(11) NOT NULL,
  `property_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `property`
--

INSERT INTO `property` (`property_id`, `property_name`, `property_avatar`, `property_content`, `property_category_id`, `property_type_id`, `property_location_id`, `property_status`, `property_price`, `property_slug`, `property_created_at`, `property_active`, `property_order`) VALUES
(1, 'Đất nền phú quốc', 'http://batdongsan.local/media/noimage-1.png', '<a href=\"http://batdongsan.local/\">OK ngon</a>\r\n<div><img src=\"http://batdongsan.local/media/noimage.png\" width=\"525\" height=\"421\" alt=\"\"></div>', 1, 1, 1, 0, 0, 'dat-nen-phu-quoc', '2018-06-24 12:10:07', 1, 0),
(2, 'Phu quoc', 'http://batdongsan.local/media/noimage-1.png', 'd', 1, 1, 1, 0, 0, 'phu-quoc-2', '2018-06-24 21:13:40', 1, 0),
(6, 'test', 'http://batdongsan.local/media/noimage-1.png', 'Test', 1, 1, 1, 1, 100000, 'test', '2018-06-24 22:55:50', 1, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`property_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `property`
--
ALTER TABLE `property`
  MODIFY `property_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
