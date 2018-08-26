-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 17, 2018 lúc 11:56 AM
-- Phiên bản máy phục vụ: 10.1.30-MariaDB
-- Phiên bản PHP: 7.1.13

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
-- Cấu trúc bảng cho bảng `advices`
--

CREATE TABLE `advices` (
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
  `article_order` int(11) NOT NULL DEFAULT '0',
  `location_id` int(11) NOT NULL,
  `author` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `advices`
--

INSERT INTO `advices` (`articleid`, `articlegroup`, `subject`, `description`, `slug`, `avatar`, `seo_title`, `seo_description`, `active`, `datecreated`, `article_order`, `location_id`, `author`) VALUES
(1, 1, '1Kêu gọi đầu tư một số dự án cấp bách vào đảo Phú Quốc1', '<p>Theo đ&oacute;, những dự &aacute;n n&agrave;y, gồm: Khu bệnh viện kết hợp nghỉ dưỡng diện t&iacute;ch hơn 10 ha tại Khu phức hợp B&atilde;i Trường, x&atilde; Dương Tơ với Bệnh viện - Trung t&acirc;m điều dưỡng B&atilde;i Trường v&agrave; đất c&ocirc;ng vi&ecirc;n c&acirc;y xanh, quy m&ocirc; 500 giường; Khu dịch vụ du lịch, nghỉ dưỡng hơn 42 ha tại Khu du lịch sinh th&aacute;i B&atilde;i Thơm, x&atilde; B&atilde;i Thơm, khả năng phục vụ khoảng 1.200 - 1.600 kh&aacute;ch/ng&agrave;y; dự &aacute;n đầu tư x&acirc;y dựng Nh&agrave; m&aacute;y xử l&yacute; r&aacute;c thải, c&ocirc;ng suất xử l&yacute; 150 tấn r&aacute;c/ng&agrave;y, quy m&ocirc; diện t&iacute;ch 5,25 ha tại ấp Dương Tơ, x&atilde; Dương Tơ.</p>\r\n<p>Chủ tịch UBND tỉnh Ki&ecirc;n Giang ph&ecirc; duyệt danh mục 3 dự &aacute;n k&ecirc;u gọi đầu tư n&agrave;y, giao Ban Quản l&yacute; Khu kinh tế Ph&uacute; Quốc tổ chức c&ocirc;ng bố danh mục dự &aacute;n, l&agrave;m b&ecirc;n mời thầu v&agrave; phối hợp với c&aacute;c sở, ng&agrave;nh, đơn vị c&oacute; li&ecirc;n quan tổ chức đấu thầu lựa chọn nh&agrave; đầu tư theo quy định của ph&aacute;p luật hiện h&agrave;nh.</p>\r\n<p>Theo Ban Quản l&yacute; Khu kinh tế Ph&uacute; Quốc, to&agrave;n huyện đảo Ph&uacute; Quốc hiện c&oacute; 278 dự &aacute;n đầu tư c&ograve;n hiệu lực trong c&aacute;c khu quy hoạch với diện t&iacute;ch 10.676 ha, ước tổng vốn đầu tư hơn 361.000 tỷ đồng; trong đ&oacute;, c&oacute; 241 dự &aacute;n được cấp giấy chứng nhận đầu tư, quyết định chủ trương đầu tư với tổng diện t&iacute;ch 8.809 ha, tổng vốn đầu tư đăng k&yacute; 263.491 tỷ đồng, trong số n&agrave;y đ&atilde; c&oacute; 34 dự &aacute;n đi v&agrave;o hoạt động, 73 dự &aacute;n đang ho&agrave;n thiện thủ tục đầu tư.</p>', 'keu-goi-dau-tu-mot-so-du-an-cap-bach-vao-dao-phu-quoc-1', 'http://batdongsan.local/media/pq.jpg', 'Kêu gọi đầu tư một số dự án cấp bách vào đảo Phú Quốc', 'Theo đó, những dự án này, gồm: Khu bệnh viện kết hợp nghỉ dưỡng diện tích hơn 10 ha tại Khu phức hợp Bãi Trường, xã Dương Tơ với Bệnh viện - Trung tâm điều dưỡng Bãi Trường và đất công viên cây xanh, quy mô 500 giường', 1, '2018-07-10 09:43:21', 0, 3, 'Dinh'),
(2, 1, 'Cao tốc 12.000 tỷ đánh thức thương cảng Vân Đồn2', '<p>Sau cơn mưa r&agrave;o, thời tiết th&ecirc;m oi nồng giữa c&aacute;i nắng 38 độ C, anh Quang lau mồ h&ocirc;i kể rằng nh&oacute;m thợ của m&igrave;nh đ&atilde; ho&agrave;n th&agrave;nh gần hết dải ph&acirc;n c&aacute;ch cứng suốt chiều d&agrave;i 53,6 km của cao tốc Hạ Long - V&acirc;n Đồn. Hiện tại, chỉ c&ograve;n khoảng 1 km dải ph&acirc;n c&aacute;ch nằm rải r&aacute;c suốt tuyến đường, nh&oacute;m của anh đang tăng tốc để kịp tiến độ v&agrave; th&ocirc;ng xe v&agrave;o cuối th&aacute;ng 7.</p>\r\n<p>Những ng&agrave;y n&agrave;y, v&agrave;i tuần trước thời hạn th&ocirc;ng xe, dọc cao tốc Hạ Long - V&acirc;n Đồn, kh&ocirc;ng kh&iacute; thi c&ocirc;ng nhộn nhịp khắp nơi. Từng nh&oacute;m thợ thi c&ocirc;ng ở nhiều hạng mục, nhiều g&oacute;i thầu kh&aacute;c nhau như trải thảm b&ecirc; t&ocirc;ng nhựa, ho&agrave;n th&agrave;nh dải ph&acirc;n c&aacute;ch cứng, thi c&ocirc;ng hệ thống tho&aacute;t nước, lắp đặt đ&egrave;n đường, gia cố m&aacute;i taluy, sơn kẻ đường&hellip;</p>', 'cao-toc-12-000-ty-danh-thuc-thuong-cang-van-don2', 'http://batdongsan.local/media/cong_nhan_zing_6_1.jpg', 'Cao tốc 12.000 tỷ đánh thức thương cảng Vân Đồn', 'Sau cơn mưa rào, thời tiết thêm oi nồng giữa cái nắng 38 độ C, anh Quang lau mồ hôi kể rằng nhóm thợ của mình đã hoàn thành gần hết dải phân cách cứng suốt chiều dài 53,6 km của cao tốc Hạ Long - Vân Đồn. Hiện tại, chỉ còn khoảng 1 km dải phân cách nằm rải rác suốt tuyến đường, nhóm của anh đang tăng tốc để kịp tiến độ và thông xe vào cuối tháng 7.', 1, '2018-07-10 09:44:49', 0, 2, 'Dinh'),
(3, 3, 'Dân đầu cơ đất tháo chạy khỏi Bắc Vân Phong3', '<p>&ldquo;T&igrave;nh h&igrave;nh mua b&aacute;n, chuyển nhượng đất đai tại huyện Vạn Ninh, Kh&aacute;nh H&ograve;a đ&atilde; lắng xuống rất nhiều&rdquo;. ng&agrave;y 10-6, trao đổi với<span>&nbsp;</span><i>Ph&aacute;p Luật TP.HCM</i>, &ocirc;ng V&otilde; Lục Phẩm, Ph&oacute; Chủ tịch UBND huyện Vạn Ninh, cho hay.</p>\r\n<p>Huyện Vạn Ninh l&agrave; địa phương được dự kiến th&agrave;nh lập đơn vị h&agrave;nh ch&iacute;nh-kinh tế đặc biệt (gọi tắt l&agrave; đặc khu) Bắc V&acirc;n Phong.</p>\r\n<p><b>Nhiều &ldquo;c&ograve;&rdquo; g&atilde;y c&aacute;nh</b></p>\r\n<p>Theo &ocirc;ng Phẩm, t&igrave;nh h&igrave;nh giao dịch, chuyển nhượng đất đai tại địa phương n&agrave;y thực chất bắt đầu lắng xuống từ ng&agrave;y 9-5. Đ&acirc;y l&agrave; thời điểm chủ tịch UBND tỉnh Kh&aacute;nh H&ograve;a c&oacute; c&ocirc;ng văn y&ecirc;u cầu tạm dừng tiếp nhận, giải quyết hồ sơ chuyển mục đ&iacute;ch sử dụng đất, chuyển quyền sử dụng đất, thực hiện việc t&aacute;ch thửa&hellip; tại Vạn Ninh cho đến chừng n&agrave;o dự &aacute;n luật đặc khu được cơ quan c&oacute; thẩm quyền th&ocirc;ng qua. Nay th&ocirc;ng tin l&ugrave;i việc th&ocirc;ng qua dự &aacute;n luật đặc khu c&agrave;ng khiến thị trường bất động sản (BĐS) tại huyện Vạn Ninh th&ecirc;m im ắng</p>', 'dan-dau-co-dat-thao-chay-khoi-bac-van-phong3', 'http://batdongsan.local/media/photo1528676247071-1528676247071381502062.jpg', 'Dân đầu cơ đất tháo chạy khỏi Bắc Vân Phong', '“Tình hình mua bán, chuyển nhượng đất đai tại huyện Vạn Ninh, Khánh Hòa đã lắng xuống rất nhiều”. ngày 10-6, trao đổi với Pháp Luật TP.HCM, ông Võ Lục Phẩm, Phó Chủ tịch UBND huyện Vạn Ninh, cho hay.', 1, '2018-07-10 09:46:38', 0, 3, 'Dinh Nguyen'),
(4, 1, 'Kêu gọi đầu tư một số dự án cấp bách vào đảo Phú Quốc4', '<p>Theo đ&oacute;, những dự &aacute;n n&agrave;y, gồm: Khu bệnh viện kết hợp nghỉ dưỡng diện t&iacute;ch hơn 10 ha tại Khu phức hợp B&atilde;i Trường, x&atilde; Dương Tơ với Bệnh viện - Trung t&acirc;m điều dưỡng B&atilde;i Trường v&agrave; đất c&ocirc;ng vi&ecirc;n c&acirc;y xanh, quy m&ocirc; 500 giường; Khu dịch vụ du lịch, nghỉ dưỡng hơn 42 ha tại Khu du lịch sinh th&aacute;i B&atilde;i Thơm, x&atilde; B&atilde;i Thơm, khả năng phục vụ khoảng 1.200 - 1.600 kh&aacute;ch/ng&agrave;y; dự &aacute;n đầu tư x&acirc;y dựng Nh&agrave; m&aacute;y xử l&yacute; r&aacute;c thải, c&ocirc;ng suất xử l&yacute; 150 tấn r&aacute;c/ng&agrave;y, quy m&ocirc; diện t&iacute;ch 5,25 ha tại ấp Dương Tơ, x&atilde; Dương Tơ.</p>\r\n<p>Chủ tịch UBND tỉnh Ki&ecirc;n Giang ph&ecirc; duyệt danh mục 3 dự &aacute;n k&ecirc;u gọi đầu tư n&agrave;y, giao Ban Quản l&yacute; Khu kinh tế Ph&uacute; Quốc tổ chức c&ocirc;ng bố danh mục dự &aacute;n, l&agrave;m b&ecirc;n mời thầu v&agrave; phối hợp với c&aacute;c sở, ng&agrave;nh, đơn vị c&oacute; li&ecirc;n quan tổ chức đấu thầu lựa chọn nh&agrave; đầu tư theo quy định của ph&aacute;p luật hiện h&agrave;nh.</p>\r\n<p>Theo Ban Quản l&yacute; Khu kinh tế Ph&uacute; Quốc, to&agrave;n huyện đảo Ph&uacute; Quốc hiện c&oacute; 278 dự &aacute;n đầu tư c&ograve;n hiệu lực trong c&aacute;c khu quy hoạch với diện t&iacute;ch 10.676 ha, ước tổng vốn đầu tư hơn 361.000 tỷ đồng; trong đ&oacute;, c&oacute; 241 dự &aacute;n được cấp giấy chứng nhận đầu tư, quyết định chủ trương đầu tư với tổng diện t&iacute;ch 8.809 ha, tổng vốn đầu tư đăng k&yacute; 263.491 tỷ đồng, trong số n&agrave;y đ&atilde; c&oacute; 34 dự &aacute;n đi v&agrave;o hoạt động, 73 dự &aacute;n đang ho&agrave;n thiện thủ tục đầu tư.</p>', 'keu-goi-dau-tu-mot-so-du-an-cap-bach-vao-dao-phu-quoc4', 'http://batdongsan.local/media/pq.jpg', 'Kêu gọi đầu tư một số dự án cấp bách vào đảo Phú Quốc', 'Theo đó, những dự án này, gồm: Khu bệnh viện kết hợp nghỉ dưỡng diện tích hơn 10 ha tại Khu phức hợp Bãi Trường, xã Dương Tơ với Bệnh viện - Trung tâm điều dưỡng Bãi Trường và đất công viên cây xanh, quy mô 500 giường', 1, '2018-07-10 09:43:21', 0, 2, 'Dinh'),
(5, 1, 'Cao tốc 12.000 tỷ đánh thức thương cảng Vân Đồn5', '<p>Sau cơn mưa r&agrave;o, thời tiết th&ecirc;m oi nồng giữa c&aacute;i nắng 38 độ C, anh Quang lau mồ h&ocirc;i kể rằng nh&oacute;m thợ của m&igrave;nh đ&atilde; ho&agrave;n th&agrave;nh gần hết dải ph&acirc;n c&aacute;ch cứng suốt chiều d&agrave;i 53,6 km của cao tốc Hạ Long - V&acirc;n Đồn. Hiện tại, chỉ c&ograve;n khoảng 1 km dải ph&acirc;n c&aacute;ch nằm rải r&aacute;c suốt tuyến đường, nh&oacute;m của anh đang tăng tốc để kịp tiến độ v&agrave; th&ocirc;ng xe v&agrave;o cuối th&aacute;ng 7.</p>\r\n<p>Những ng&agrave;y n&agrave;y, v&agrave;i tuần trước thời hạn th&ocirc;ng xe, dọc cao tốc Hạ Long - V&acirc;n Đồn, kh&ocirc;ng kh&iacute; thi c&ocirc;ng nhộn nhịp khắp nơi. Từng nh&oacute;m thợ thi c&ocirc;ng ở nhiều hạng mục, nhiều g&oacute;i thầu kh&aacute;c nhau như trải thảm b&ecirc; t&ocirc;ng nhựa, ho&agrave;n th&agrave;nh dải ph&acirc;n c&aacute;ch cứng, thi c&ocirc;ng hệ thống tho&aacute;t nước, lắp đặt đ&egrave;n đường, gia cố m&aacute;i taluy, sơn kẻ đường&hellip;</p>', 'cao-toc-12-000-ty-danh-thuc-thuong-cang-van-don5', 'http://batdongsan.local/media/cong_nhan_zing_6_1.jpg', 'Cao tốc 12.000 tỷ đánh thức thương cảng Vân Đồn', 'Sau cơn mưa rào, thời tiết thêm oi nồng giữa cái nắng 38 độ C, anh Quang lau mồ hôi kể rằng nhóm thợ của mình đã hoàn thành gần hết dải phân cách cứng suốt chiều dài 53,6 km của cao tốc Hạ Long - Vân Đồn. Hiện tại, chỉ còn khoảng 1 km dải phân cách nằm rải rác suốt tuyến đường, nhóm của anh đang tăng tốc để kịp tiến độ và thông xe vào cuối tháng 7.', 1, '2018-07-10 09:44:49', 0, 1, 'Dinh'),
(6, 3, 'Dân đầu cơ đất tháo chạy khỏi Bắc Vân Phong6', '<p>&ldquo;T&igrave;nh h&igrave;nh mua b&aacute;n, chuyển nhượng đất đai tại huyện Vạn Ninh, Kh&aacute;nh H&ograve;a đ&atilde; lắng xuống rất nhiều&rdquo;. ng&agrave;y 10-6, trao đổi với<span>&nbsp;</span><i>Ph&aacute;p Luật TP.HCM</i>, &ocirc;ng V&otilde; Lục Phẩm, Ph&oacute; Chủ tịch UBND huyện Vạn Ninh, cho hay.</p>\r\n<p>Huyện Vạn Ninh l&agrave; địa phương được dự kiến th&agrave;nh lập đơn vị h&agrave;nh ch&iacute;nh-kinh tế đặc biệt (gọi tắt l&agrave; đặc khu) Bắc V&acirc;n Phong.</p>\r\n<p><b>Nhiều &ldquo;c&ograve;&rdquo; g&atilde;y c&aacute;nh</b></p>\r\n<p>Theo &ocirc;ng Phẩm, t&igrave;nh h&igrave;nh giao dịch, chuyển nhượng đất đai tại địa phương n&agrave;y thực chất bắt đầu lắng xuống từ ng&agrave;y 9-5. Đ&acirc;y l&agrave; thời điểm chủ tịch UBND tỉnh Kh&aacute;nh H&ograve;a c&oacute; c&ocirc;ng văn y&ecirc;u cầu tạm dừng tiếp nhận, giải quyết hồ sơ chuyển mục đ&iacute;ch sử dụng đất, chuyển quyền sử dụng đất, thực hiện việc t&aacute;ch thửa&hellip; tại Vạn Ninh cho đến chừng n&agrave;o dự &aacute;n luật đặc khu được cơ quan c&oacute; thẩm quyền th&ocirc;ng qua. Nay th&ocirc;ng tin l&ugrave;i việc th&ocirc;ng qua dự &aacute;n luật đặc khu c&agrave;ng khiến thị trường bất động sản (BĐS) tại huyện Vạn Ninh th&ecirc;m im ắng</p>', 'dan-dau-co-dat-thao-chay-khoi-bac-van-phong6', 'http://batdongsan.local/media/photo1528676247071-1528676247071381502062.jpg', 'Dân đầu cơ đất tháo chạy khỏi Bắc Vân Phong', '“Tình hình mua bán, chuyển nhượng đất đai tại huyện Vạn Ninh, Khánh Hòa đã lắng xuống rất nhiều”. ngày 10-6, trao đổi với Pháp Luật TP.HCM, ông Võ Lục Phẩm, Phó Chủ tịch UBND huyện Vạn Ninh, cho hay.', 1, '2018-07-10 09:46:38', 0, 3, 'Dinh'),
(7, 1, 'Kêu gọi đầu tư một số dự án cấp bách vào đảo Phú Quốc7', '<p>Theo đ&oacute;, những dự &aacute;n n&agrave;y, gồm: Khu bệnh viện kết hợp nghỉ dưỡng diện t&iacute;ch hơn 10 ha tại Khu phức hợp B&atilde;i Trường, x&atilde; Dương Tơ với Bệnh viện - Trung t&acirc;m điều dưỡng B&atilde;i Trường v&agrave; đất c&ocirc;ng vi&ecirc;n c&acirc;y xanh, quy m&ocirc; 500 giường; Khu dịch vụ du lịch, nghỉ dưỡng hơn 42 ha tại Khu du lịch sinh th&aacute;i B&atilde;i Thơm, x&atilde; B&atilde;i Thơm, khả năng phục vụ khoảng 1.200 - 1.600 kh&aacute;ch/ng&agrave;y; dự &aacute;n đầu tư x&acirc;y dựng Nh&agrave; m&aacute;y xử l&yacute; r&aacute;c thải, c&ocirc;ng suất xử l&yacute; 150 tấn r&aacute;c/ng&agrave;y, quy m&ocirc; diện t&iacute;ch 5,25 ha tại ấp Dương Tơ, x&atilde; Dương Tơ.</p>\r\n<p>Chủ tịch UBND tỉnh Ki&ecirc;n Giang ph&ecirc; duyệt danh mục 3 dự &aacute;n k&ecirc;u gọi đầu tư n&agrave;y, giao Ban Quản l&yacute; Khu kinh tế Ph&uacute; Quốc tổ chức c&ocirc;ng bố danh mục dự &aacute;n, l&agrave;m b&ecirc;n mời thầu v&agrave; phối hợp với c&aacute;c sở, ng&agrave;nh, đơn vị c&oacute; li&ecirc;n quan tổ chức đấu thầu lựa chọn nh&agrave; đầu tư theo quy định của ph&aacute;p luật hiện h&agrave;nh.</p>\r\n<p>Theo Ban Quản l&yacute; Khu kinh tế Ph&uacute; Quốc, to&agrave;n huyện đảo Ph&uacute; Quốc hiện c&oacute; 278 dự &aacute;n đầu tư c&ograve;n hiệu lực trong c&aacute;c khu quy hoạch với diện t&iacute;ch 10.676 ha, ước tổng vốn đầu tư hơn 361.000 tỷ đồng; trong đ&oacute;, c&oacute; 241 dự &aacute;n được cấp giấy chứng nhận đầu tư, quyết định chủ trương đầu tư với tổng diện t&iacute;ch 8.809 ha, tổng vốn đầu tư đăng k&yacute; 263.491 tỷ đồng, trong số n&agrave;y đ&atilde; c&oacute; 34 dự &aacute;n đi v&agrave;o hoạt động, 73 dự &aacute;n đang ho&agrave;n thiện thủ tục đầu tư.</p>', 'keu-goi-dau-tu-mot-so-du-an-cap-bach-vao-dao-phu-quoc7', 'http://batdongsan.local/media/pq.jpg', 'Kêu gọi đầu tư một số dự án cấp bách vào đảo Phú Quốc', 'Theo đó, những dự án này, gồm: Khu bệnh viện kết hợp nghỉ dưỡng diện tích hơn 10 ha tại Khu phức hợp Bãi Trường, xã Dương Tơ với Bệnh viện - Trung tâm điều dưỡng Bãi Trường và đất công viên cây xanh, quy mô 500 giường', 1, '2018-07-10 09:43:21', 0, 2, 'Dinh'),
(8, 1, 'Cao tốc 12.000 tỷ đánh thức thương cảng Vân Đồn8', '<p>Sau cơn mưa r&agrave;o, thời tiết th&ecirc;m oi nồng giữa c&aacute;i nắng 38 độ C, anh Quang lau mồ h&ocirc;i kể rằng nh&oacute;m thợ của m&igrave;nh đ&atilde; ho&agrave;n th&agrave;nh gần hết dải ph&acirc;n c&aacute;ch cứng suốt chiều d&agrave;i 53,6 km của cao tốc Hạ Long - V&acirc;n Đồn. Hiện tại, chỉ c&ograve;n khoảng 1 km dải ph&acirc;n c&aacute;ch nằm rải r&aacute;c suốt tuyến đường, nh&oacute;m của anh đang tăng tốc để kịp tiến độ v&agrave; th&ocirc;ng xe v&agrave;o cuối th&aacute;ng 7.</p>\r\n<p>Những ng&agrave;y n&agrave;y, v&agrave;i tuần trước thời hạn th&ocirc;ng xe, dọc cao tốc Hạ Long - V&acirc;n Đồn, kh&ocirc;ng kh&iacute; thi c&ocirc;ng nhộn nhịp khắp nơi. Từng nh&oacute;m thợ thi c&ocirc;ng ở nhiều hạng mục, nhiều g&oacute;i thầu kh&aacute;c nhau như trải thảm b&ecirc; t&ocirc;ng nhựa, ho&agrave;n th&agrave;nh dải ph&acirc;n c&aacute;ch cứng, thi c&ocirc;ng hệ thống tho&aacute;t nước, lắp đặt đ&egrave;n đường, gia cố m&aacute;i taluy, sơn kẻ đường&hellip;</p>', 'cao-toc-12-000-ty-danh-thuc-thuong-cang-van-don8', 'http://batdongsan.local/media/cong_nhan_zing_6_1.jpg', 'Cao tốc 12.000 tỷ đánh thức thương cảng Vân Đồn', 'Sau cơn mưa rào, thời tiết thêm oi nồng giữa cái nắng 38 độ C, anh Quang lau mồ hôi kể rằng nhóm thợ của mình đã hoàn thành gần hết dải phân cách cứng suốt chiều dài 53,6 km của cao tốc Hạ Long - Vân Đồn. Hiện tại, chỉ còn khoảng 1 km dải phân cách nằm rải rác suốt tuyến đường, nhóm của anh đang tăng tốc để kịp tiến độ và thông xe vào cuối tháng 7.', 1, '2018-07-10 09:44:49', 0, 3, 'Dinh'),
(9, 3, 'Dân đầu cơ đất tháo chạy khỏi Bắc Vân Phong9', '<p>&ldquo;T&igrave;nh h&igrave;nh mua b&aacute;n, chuyển nhượng đất đai tại huyện Vạn Ninh, Kh&aacute;nh H&ograve;a đ&atilde; lắng xuống rất nhiều&rdquo;. ng&agrave;y 10-6, trao đổi với<span>&nbsp;</span><i>Ph&aacute;p Luật TP.HCM</i>, &ocirc;ng V&otilde; Lục Phẩm, Ph&oacute; Chủ tịch UBND huyện Vạn Ninh, cho hay.</p>\r\n<p>Huyện Vạn Ninh l&agrave; địa phương được dự kiến th&agrave;nh lập đơn vị h&agrave;nh ch&iacute;nh-kinh tế đặc biệt (gọi tắt l&agrave; đặc khu) Bắc V&acirc;n Phong.</p>\r\n<p><b>Nhiều &ldquo;c&ograve;&rdquo; g&atilde;y c&aacute;nh</b></p>\r\n<p>Theo &ocirc;ng Phẩm, t&igrave;nh h&igrave;nh giao dịch, chuyển nhượng đất đai tại địa phương n&agrave;y thực chất bắt đầu lắng xuống từ ng&agrave;y 9-5. Đ&acirc;y l&agrave; thời điểm chủ tịch UBND tỉnh Kh&aacute;nh H&ograve;a c&oacute; c&ocirc;ng văn y&ecirc;u cầu tạm dừng tiếp nhận, giải quyết hồ sơ chuyển mục đ&iacute;ch sử dụng đất, chuyển quyền sử dụng đất, thực hiện việc t&aacute;ch thửa&hellip; tại Vạn Ninh cho đến chừng n&agrave;o dự &aacute;n luật đặc khu được cơ quan c&oacute; thẩm quyền th&ocirc;ng qua. Nay th&ocirc;ng tin l&ugrave;i việc th&ocirc;ng qua dự &aacute;n luật đặc khu c&agrave;ng khiến thị trường bất động sản (BĐS) tại huyện Vạn Ninh th&ecirc;m im ắng</p>', 'dan-dau-co-dat-thao-chay-khoi-bac-van-phong9', 'http://batdongsan.local/media/photo1528676247071-1528676247071381502062.jpg', 'Dân đầu cơ đất tháo chạy khỏi Bắc Vân Phong', '“Tình hình mua bán, chuyển nhượng đất đai tại huyện Vạn Ninh, Khánh Hòa đã lắng xuống rất nhiều”. ngày 10-6, trao đổi với Pháp Luật TP.HCM, ông Võ Lục Phẩm, Phó Chủ tịch UBND huyện Vạn Ninh, cho hay.', 1, '2018-07-10 09:46:38', 0, 3, 'Dinh'),
(10, 1, 'Kêu gọi đầu tư một số dự án cấp bách vào đảo Phú Quốc10', '<p>Theo đ&oacute;, những dự &aacute;n n&agrave;y, gồm: Khu bệnh viện kết hợp nghỉ dưỡng diện t&iacute;ch hơn 10 ha tại Khu phức hợp B&atilde;i Trường, x&atilde; Dương Tơ với Bệnh viện - Trung t&acirc;m điều dưỡng B&atilde;i Trường v&agrave; đất c&ocirc;ng vi&ecirc;n c&acirc;y xanh, quy m&ocirc; 500 giường; Khu dịch vụ du lịch, nghỉ dưỡng hơn 42 ha tại Khu du lịch sinh th&aacute;i B&atilde;i Thơm, x&atilde; B&atilde;i Thơm, khả năng phục vụ khoảng 1.200 - 1.600 kh&aacute;ch/ng&agrave;y; dự &aacute;n đầu tư x&acirc;y dựng Nh&agrave; m&aacute;y xử l&yacute; r&aacute;c thải, c&ocirc;ng suất xử l&yacute; 150 tấn r&aacute;c/ng&agrave;y, quy m&ocirc; diện t&iacute;ch 5,25 ha tại ấp Dương Tơ, x&atilde; Dương Tơ.</p>\r\n<p>Chủ tịch UBND tỉnh Ki&ecirc;n Giang ph&ecirc; duyệt danh mục 3 dự &aacute;n k&ecirc;u gọi đầu tư n&agrave;y, giao Ban Quản l&yacute; Khu kinh tế Ph&uacute; Quốc tổ chức c&ocirc;ng bố danh mục dự &aacute;n, l&agrave;m b&ecirc;n mời thầu v&agrave; phối hợp với c&aacute;c sở, ng&agrave;nh, đơn vị c&oacute; li&ecirc;n quan tổ chức đấu thầu lựa chọn nh&agrave; đầu tư theo quy định của ph&aacute;p luật hiện h&agrave;nh.</p>\r\n<p>Theo Ban Quản l&yacute; Khu kinh tế Ph&uacute; Quốc, to&agrave;n huyện đảo Ph&uacute; Quốc hiện c&oacute; 278 dự &aacute;n đầu tư c&ograve;n hiệu lực trong c&aacute;c khu quy hoạch với diện t&iacute;ch 10.676 ha, ước tổng vốn đầu tư hơn 361.000 tỷ đồng; trong đ&oacute;, c&oacute; 241 dự &aacute;n được cấp giấy chứng nhận đầu tư, quyết định chủ trương đầu tư với tổng diện t&iacute;ch 8.809 ha, tổng vốn đầu tư đăng k&yacute; 263.491 tỷ đồng, trong số n&agrave;y đ&atilde; c&oacute; 34 dự &aacute;n đi v&agrave;o hoạt động, 73 dự &aacute;n đang ho&agrave;n thiện thủ tục đầu tư.</p>', 'keu-goi-dau-tu-mot-so-du-an-cap-bach-vao-dao-phu-quoc10', 'http://batdongsan.local/media/pq.jpg', 'Kêu gọi đầu tư một số dự án cấp bách vào đảo Phú Quốc', 'Theo đó, những dự án này, gồm: Khu bệnh viện kết hợp nghỉ dưỡng diện tích hơn 10 ha tại Khu phức hợp Bãi Trường, xã Dương Tơ với Bệnh viện - Trung tâm điều dưỡng Bãi Trường và đất công viên cây xanh, quy mô 500 giường', 1, '2018-07-10 09:43:21', 0, 2, 'Dinh'),
(11, 1, 'Cao tốc 12.000 tỷ đánh thức thương cảng Vân Đồn11', '<p>Sau cơn mưa r&agrave;o, thời tiết th&ecirc;m oi nồng giữa c&aacute;i nắng 38 độ C, anh Quang lau mồ h&ocirc;i kể rằng nh&oacute;m thợ của m&igrave;nh đ&atilde; ho&agrave;n th&agrave;nh gần hết dải ph&acirc;n c&aacute;ch cứng suốt chiều d&agrave;i 53,6 km của cao tốc Hạ Long - V&acirc;n Đồn. Hiện tại, chỉ c&ograve;n khoảng 1 km dải ph&acirc;n c&aacute;ch nằm rải r&aacute;c suốt tuyến đường, nh&oacute;m của anh đang tăng tốc để kịp tiến độ v&agrave; th&ocirc;ng xe v&agrave;o cuối th&aacute;ng 7.</p>\r\n<p>Những ng&agrave;y n&agrave;y, v&agrave;i tuần trước thời hạn th&ocirc;ng xe, dọc cao tốc Hạ Long - V&acirc;n Đồn, kh&ocirc;ng kh&iacute; thi c&ocirc;ng nhộn nhịp khắp nơi. Từng nh&oacute;m thợ thi c&ocirc;ng ở nhiều hạng mục, nhiều g&oacute;i thầu kh&aacute;c nhau như trải thảm b&ecirc; t&ocirc;ng nhựa, ho&agrave;n th&agrave;nh dải ph&acirc;n c&aacute;ch cứng, thi c&ocirc;ng hệ thống tho&aacute;t nước, lắp đặt đ&egrave;n đường, gia cố m&aacute;i taluy, sơn kẻ đường&hellip;</p>', 'cao-toc-12-000-ty-danh-thuc-thuong-cang-van-don11', 'http://batdongsan.local/media/cong_nhan_zing_6_1.jpg', 'Cao tốc 12.000 tỷ đánh thức thương cảng Vân Đồn', 'Sau cơn mưa rào, thời tiết thêm oi nồng giữa cái nắng 38 độ C, anh Quang lau mồ hôi kể rằng nhóm thợ của mình đã hoàn thành gần hết dải phân cách cứng suốt chiều dài 53,6 km của cao tốc Hạ Long - Vân Đồn. Hiện tại, chỉ còn khoảng 1 km dải phân cách nằm rải rác suốt tuyến đường, nhóm của anh đang tăng tốc để kịp tiến độ và thông xe vào cuối tháng 7.', 1, '2018-07-10 09:44:49', 0, 1, 'Dinh'),
(12, 3, 'Dân đầu cơ đất tháo chạy khỏi Bắc Vân Phong12', '<p>&ldquo;T&igrave;nh h&igrave;nh mua b&aacute;n, chuyển nhượng đất đai tại huyện Vạn Ninh, Kh&aacute;nh H&ograve;a đ&atilde; lắng xuống rất nhiều&rdquo;. ng&agrave;y 10-6, trao đổi với<span>&nbsp;</span><i>Ph&aacute;p Luật TP.HCM</i>, &ocirc;ng V&otilde; Lục Phẩm, Ph&oacute; Chủ tịch UBND huyện Vạn Ninh, cho hay.</p>\r\n<p>Huyện Vạn Ninh l&agrave; địa phương được dự kiến th&agrave;nh lập đơn vị h&agrave;nh ch&iacute;nh-kinh tế đặc biệt (gọi tắt l&agrave; đặc khu) Bắc V&acirc;n Phong.</p>\r\n<p><b>Nhiều &ldquo;c&ograve;&rdquo; g&atilde;y c&aacute;nh</b></p>\r\n<p>Theo &ocirc;ng Phẩm, t&igrave;nh h&igrave;nh giao dịch, chuyển nhượng đất đai tại địa phương n&agrave;y thực chất bắt đầu lắng xuống từ ng&agrave;y 9-5. Đ&acirc;y l&agrave; thời điểm chủ tịch UBND tỉnh Kh&aacute;nh H&ograve;a c&oacute; c&ocirc;ng văn y&ecirc;u cầu tạm dừng tiếp nhận, giải quyết hồ sơ chuyển mục đ&iacute;ch sử dụng đất, chuyển quyền sử dụng đất, thực hiện việc t&aacute;ch thửa&hellip; tại Vạn Ninh cho đến chừng n&agrave;o dự &aacute;n luật đặc khu được cơ quan c&oacute; thẩm quyền th&ocirc;ng qua. Nay th&ocirc;ng tin l&ugrave;i việc th&ocirc;ng qua dự &aacute;n luật đặc khu c&agrave;ng khiến thị trường bất động sản (BĐS) tại huyện Vạn Ninh th&ecirc;m im ắng</p>', 'dan-dau-co-dat-thao-chay-khoi-bac-van-phong12', 'http://batdongsan.local/media/photo1528676247071-1528676247071381502062.jpg', 'Dân đầu cơ đất tháo chạy khỏi Bắc Vân Phong', '“Tình hình mua bán, chuyển nhượng đất đai tại huyện Vạn Ninh, Khánh Hòa đã lắng xuống rất nhiều”. ngày 10-6, trao đổi với Pháp Luật TP.HCM, ông Võ Lục Phẩm, Phó Chủ tịch UBND huyện Vạn Ninh, cho hay.', 1, '2018-07-10 09:46:38', 0, 3, 'Dinh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `advicesgroups`
--

CREATE TABLE `advicesgroups` (
  `groupid` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `group_slug` varchar(300) DEFAULT NULL,
  `description` mediumtext,
  `active` tinyint(4) NOT NULL,
  `group_seo_title` text NOT NULL,
  `group_seo_description` text NOT NULL,
  `group_order` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `advicesgroups`
--

INSERT INTO `advicesgroups` (`groupid`, `name`, `group_slug`, `description`, `active`, `group_seo_title`, `group_seo_description`, `group_order`) VALUES
(1, 'Tin mới1', 'tin-moi', '', 1, 'Tin mới', 'Tin mới', 1),
(3, 'Tin hot', 'tin-hot', '', 1, 'Tin hot', 'Tin hot', 3),
(4, '22', '22', '22', 1, '', '', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `contact_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `contact_phone` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `contact_email` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `contact_property` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `contact_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mreports`
--

CREATE TABLE `mreports` (
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
  `article_order` int(11) NOT NULL DEFAULT '0',
  `location_id` int(11) NOT NULL,
  `author` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mreports`
--

INSERT INTO `mreports` (`articleid`, `articlegroup`, `subject`, `description`, `slug`, `avatar`, `seo_title`, `seo_description`, `active`, `datecreated`, `article_order`, `location_id`, `author`) VALUES
(1, 1, 'Kêu gọi đầu tư một số dự án cấp bách vào đảo Phú Quốc1', '<p>Theo đ&oacute;, những dự &aacute;n n&agrave;y, gồm: Khu bệnh viện kết hợp nghỉ dưỡng diện t&iacute;ch hơn 10 ha tại Khu phức hợp B&atilde;i Trường, x&atilde; Dương Tơ với Bệnh viện - Trung t&acirc;m điều dưỡng B&atilde;i Trường v&agrave; đất c&ocirc;ng vi&ecirc;n c&acirc;y xanh, quy m&ocirc; 500 giường; Khu dịch vụ du lịch, nghỉ dưỡng hơn 42 ha tại Khu du lịch sinh th&aacute;i B&atilde;i Thơm, x&atilde; B&atilde;i Thơm, khả năng phục vụ khoảng 1.200 - 1.600 kh&aacute;ch/ng&agrave;y; dự &aacute;n đầu tư x&acirc;y dựng Nh&agrave; m&aacute;y xử l&yacute; r&aacute;c thải, c&ocirc;ng suất xử l&yacute; 150 tấn r&aacute;c/ng&agrave;y, quy m&ocirc; diện t&iacute;ch 5,25 ha tại ấp Dương Tơ, x&atilde; Dương Tơ.</p>\r\n<p>Chủ tịch UBND tỉnh Ki&ecirc;n Giang ph&ecirc; duyệt danh mục 3 dự &aacute;n k&ecirc;u gọi đầu tư n&agrave;y, giao Ban Quản l&yacute; Khu kinh tế Ph&uacute; Quốc tổ chức c&ocirc;ng bố danh mục dự &aacute;n, l&agrave;m b&ecirc;n mời thầu v&agrave; phối hợp với c&aacute;c sở, ng&agrave;nh, đơn vị c&oacute; li&ecirc;n quan tổ chức đấu thầu lựa chọn nh&agrave; đầu tư theo quy định của ph&aacute;p luật hiện h&agrave;nh.</p>\r\n<p>Theo Ban Quản l&yacute; Khu kinh tế Ph&uacute; Quốc, to&agrave;n huyện đảo Ph&uacute; Quốc hiện c&oacute; 278 dự &aacute;n đầu tư c&ograve;n hiệu lực trong c&aacute;c khu quy hoạch với diện t&iacute;ch 10.676 ha, ước tổng vốn đầu tư hơn 361.000 tỷ đồng; trong đ&oacute;, c&oacute; 241 dự &aacute;n được cấp giấy chứng nhận đầu tư, quyết định chủ trương đầu tư với tổng diện t&iacute;ch 8.809 ha, tổng vốn đầu tư đăng k&yacute; 263.491 tỷ đồng, trong số n&agrave;y đ&atilde; c&oacute; 34 dự &aacute;n đi v&agrave;o hoạt động, 73 dự &aacute;n đang ho&agrave;n thiện thủ tục đầu tư.</p>', 'keu-goi-dau-tu-mot-so-du-an-cap-bach-vao-dao-phu-quoc-1', 'http://batdongsan.local/media/pq.jpg', 'Kêu gọi đầu tư một số dự án cấp bách vào đảo Phú Quốc', 'Theo đó, những dự án này, gồm: Khu bệnh viện kết hợp nghỉ dưỡng diện tích hơn 10 ha tại Khu phức hợp Bãi Trường, xã Dương Tơ với Bệnh viện - Trung tâm điều dưỡng Bãi Trường và đất công viên cây xanh, quy mô 500 giường', 1, '2018-07-10 09:43:21', 0, 3, 'Dinh'),
(2, 1, 'Cao tốc 12.000 tỷ đánh thức thương cảng Vân Đồn2', '<p>Sau cơn mưa r&agrave;o, thời tiết th&ecirc;m oi nồng giữa c&aacute;i nắng 38 độ C, anh Quang lau mồ h&ocirc;i kể rằng nh&oacute;m thợ của m&igrave;nh đ&atilde; ho&agrave;n th&agrave;nh gần hết dải ph&acirc;n c&aacute;ch cứng suốt chiều d&agrave;i 53,6 km của cao tốc Hạ Long - V&acirc;n Đồn. Hiện tại, chỉ c&ograve;n khoảng 1 km dải ph&acirc;n c&aacute;ch nằm rải r&aacute;c suốt tuyến đường, nh&oacute;m của anh đang tăng tốc để kịp tiến độ v&agrave; th&ocirc;ng xe v&agrave;o cuối th&aacute;ng 7.</p>\r\n<p>Những ng&agrave;y n&agrave;y, v&agrave;i tuần trước thời hạn th&ocirc;ng xe, dọc cao tốc Hạ Long - V&acirc;n Đồn, kh&ocirc;ng kh&iacute; thi c&ocirc;ng nhộn nhịp khắp nơi. Từng nh&oacute;m thợ thi c&ocirc;ng ở nhiều hạng mục, nhiều g&oacute;i thầu kh&aacute;c nhau như trải thảm b&ecirc; t&ocirc;ng nhựa, ho&agrave;n th&agrave;nh dải ph&acirc;n c&aacute;ch cứng, thi c&ocirc;ng hệ thống tho&aacute;t nước, lắp đặt đ&egrave;n đường, gia cố m&aacute;i taluy, sơn kẻ đường&hellip;</p>', 'cao-toc-12-000-ty-danh-thuc-thuong-cang-van-don2', 'http://batdongsan.local/media/cong_nhan_zing_6_1.jpg', 'Cao tốc 12.000 tỷ đánh thức thương cảng Vân Đồn', 'Sau cơn mưa rào, thời tiết thêm oi nồng giữa cái nắng 38 độ C, anh Quang lau mồ hôi kể rằng nhóm thợ của mình đã hoàn thành gần hết dải phân cách cứng suốt chiều dài 53,6 km của cao tốc Hạ Long - Vân Đồn. Hiện tại, chỉ còn khoảng 1 km dải phân cách nằm rải rác suốt tuyến đường, nhóm của anh đang tăng tốc để kịp tiến độ và thông xe vào cuối tháng 7.', 1, '2018-07-10 09:44:49', 0, 2, 'Dinh'),
(3, 3, 'Dân đầu cơ đất tháo chạy khỏi Bắc Vân Phong3', '<p>&ldquo;T&igrave;nh h&igrave;nh mua b&aacute;n, chuyển nhượng đất đai tại huyện Vạn Ninh, Kh&aacute;nh H&ograve;a đ&atilde; lắng xuống rất nhiều&rdquo;. ng&agrave;y 10-6, trao đổi với<span>&nbsp;</span><i>Ph&aacute;p Luật TP.HCM</i>, &ocirc;ng V&otilde; Lục Phẩm, Ph&oacute; Chủ tịch UBND huyện Vạn Ninh, cho hay.</p>\r\n<p>Huyện Vạn Ninh l&agrave; địa phương được dự kiến th&agrave;nh lập đơn vị h&agrave;nh ch&iacute;nh-kinh tế đặc biệt (gọi tắt l&agrave; đặc khu) Bắc V&acirc;n Phong.</p>\r\n<p><b>Nhiều &ldquo;c&ograve;&rdquo; g&atilde;y c&aacute;nh</b></p>\r\n<p>Theo &ocirc;ng Phẩm, t&igrave;nh h&igrave;nh giao dịch, chuyển nhượng đất đai tại địa phương n&agrave;y thực chất bắt đầu lắng xuống từ ng&agrave;y 9-5. Đ&acirc;y l&agrave; thời điểm chủ tịch UBND tỉnh Kh&aacute;nh H&ograve;a c&oacute; c&ocirc;ng văn y&ecirc;u cầu tạm dừng tiếp nhận, giải quyết hồ sơ chuyển mục đ&iacute;ch sử dụng đất, chuyển quyền sử dụng đất, thực hiện việc t&aacute;ch thửa&hellip; tại Vạn Ninh cho đến chừng n&agrave;o dự &aacute;n luật đặc khu được cơ quan c&oacute; thẩm quyền th&ocirc;ng qua. Nay th&ocirc;ng tin l&ugrave;i việc th&ocirc;ng qua dự &aacute;n luật đặc khu c&agrave;ng khiến thị trường bất động sản (BĐS) tại huyện Vạn Ninh th&ecirc;m im ắng</p>', 'dan-dau-co-dat-thao-chay-khoi-bac-van-phong3', 'http://batdongsan.local/media/photo1528676247071-1528676247071381502062.jpg', 'Dân đầu cơ đất tháo chạy khỏi Bắc Vân Phong', '“Tình hình mua bán, chuyển nhượng đất đai tại huyện Vạn Ninh, Khánh Hòa đã lắng xuống rất nhiều”. ngày 10-6, trao đổi với Pháp Luật TP.HCM, ông Võ Lục Phẩm, Phó Chủ tịch UBND huyện Vạn Ninh, cho hay.', 1, '2018-07-10 09:46:38', 0, 3, 'Dinh Nguyen'),
(4, 1, 'Kêu gọi đầu tư một số dự án cấp bách vào đảo Phú Quốc4', '<p>Theo đ&oacute;, những dự &aacute;n n&agrave;y, gồm: Khu bệnh viện kết hợp nghỉ dưỡng diện t&iacute;ch hơn 10 ha tại Khu phức hợp B&atilde;i Trường, x&atilde; Dương Tơ với Bệnh viện - Trung t&acirc;m điều dưỡng B&atilde;i Trường v&agrave; đất c&ocirc;ng vi&ecirc;n c&acirc;y xanh, quy m&ocirc; 500 giường; Khu dịch vụ du lịch, nghỉ dưỡng hơn 42 ha tại Khu du lịch sinh th&aacute;i B&atilde;i Thơm, x&atilde; B&atilde;i Thơm, khả năng phục vụ khoảng 1.200 - 1.600 kh&aacute;ch/ng&agrave;y; dự &aacute;n đầu tư x&acirc;y dựng Nh&agrave; m&aacute;y xử l&yacute; r&aacute;c thải, c&ocirc;ng suất xử l&yacute; 150 tấn r&aacute;c/ng&agrave;y, quy m&ocirc; diện t&iacute;ch 5,25 ha tại ấp Dương Tơ, x&atilde; Dương Tơ.</p>\r\n<p>Chủ tịch UBND tỉnh Ki&ecirc;n Giang ph&ecirc; duyệt danh mục 3 dự &aacute;n k&ecirc;u gọi đầu tư n&agrave;y, giao Ban Quản l&yacute; Khu kinh tế Ph&uacute; Quốc tổ chức c&ocirc;ng bố danh mục dự &aacute;n, l&agrave;m b&ecirc;n mời thầu v&agrave; phối hợp với c&aacute;c sở, ng&agrave;nh, đơn vị c&oacute; li&ecirc;n quan tổ chức đấu thầu lựa chọn nh&agrave; đầu tư theo quy định của ph&aacute;p luật hiện h&agrave;nh.</p>\r\n<p>Theo Ban Quản l&yacute; Khu kinh tế Ph&uacute; Quốc, to&agrave;n huyện đảo Ph&uacute; Quốc hiện c&oacute; 278 dự &aacute;n đầu tư c&ograve;n hiệu lực trong c&aacute;c khu quy hoạch với diện t&iacute;ch 10.676 ha, ước tổng vốn đầu tư hơn 361.000 tỷ đồng; trong đ&oacute;, c&oacute; 241 dự &aacute;n được cấp giấy chứng nhận đầu tư, quyết định chủ trương đầu tư với tổng diện t&iacute;ch 8.809 ha, tổng vốn đầu tư đăng k&yacute; 263.491 tỷ đồng, trong số n&agrave;y đ&atilde; c&oacute; 34 dự &aacute;n đi v&agrave;o hoạt động, 73 dự &aacute;n đang ho&agrave;n thiện thủ tục đầu tư.</p>', 'keu-goi-dau-tu-mot-so-du-an-cap-bach-vao-dao-phu-quoc4', 'http://batdongsan.local/media/pq.jpg', 'Kêu gọi đầu tư một số dự án cấp bách vào đảo Phú Quốc', 'Theo đó, những dự án này, gồm: Khu bệnh viện kết hợp nghỉ dưỡng diện tích hơn 10 ha tại Khu phức hợp Bãi Trường, xã Dương Tơ với Bệnh viện - Trung tâm điều dưỡng Bãi Trường và đất công viên cây xanh, quy mô 500 giường', 1, '2018-07-10 09:43:21', 0, 2, 'Dinh'),
(5, 1, 'Cao tốc 12.000 tỷ đánh thức thương cảng Vân Đồn5', '<p>Sau cơn mưa r&agrave;o, thời tiết th&ecirc;m oi nồng giữa c&aacute;i nắng 38 độ C, anh Quang lau mồ h&ocirc;i kể rằng nh&oacute;m thợ của m&igrave;nh đ&atilde; ho&agrave;n th&agrave;nh gần hết dải ph&acirc;n c&aacute;ch cứng suốt chiều d&agrave;i 53,6 km của cao tốc Hạ Long - V&acirc;n Đồn. Hiện tại, chỉ c&ograve;n khoảng 1 km dải ph&acirc;n c&aacute;ch nằm rải r&aacute;c suốt tuyến đường, nh&oacute;m của anh đang tăng tốc để kịp tiến độ v&agrave; th&ocirc;ng xe v&agrave;o cuối th&aacute;ng 7.</p>\r\n<p>Những ng&agrave;y n&agrave;y, v&agrave;i tuần trước thời hạn th&ocirc;ng xe, dọc cao tốc Hạ Long - V&acirc;n Đồn, kh&ocirc;ng kh&iacute; thi c&ocirc;ng nhộn nhịp khắp nơi. Từng nh&oacute;m thợ thi c&ocirc;ng ở nhiều hạng mục, nhiều g&oacute;i thầu kh&aacute;c nhau như trải thảm b&ecirc; t&ocirc;ng nhựa, ho&agrave;n th&agrave;nh dải ph&acirc;n c&aacute;ch cứng, thi c&ocirc;ng hệ thống tho&aacute;t nước, lắp đặt đ&egrave;n đường, gia cố m&aacute;i taluy, sơn kẻ đường&hellip;</p>', 'cao-toc-12-000-ty-danh-thuc-thuong-cang-van-don5', 'http://batdongsan.local/media/cong_nhan_zing_6_1.jpg', 'Cao tốc 12.000 tỷ đánh thức thương cảng Vân Đồn', 'Sau cơn mưa rào, thời tiết thêm oi nồng giữa cái nắng 38 độ C, anh Quang lau mồ hôi kể rằng nhóm thợ của mình đã hoàn thành gần hết dải phân cách cứng suốt chiều dài 53,6 km của cao tốc Hạ Long - Vân Đồn. Hiện tại, chỉ còn khoảng 1 km dải phân cách nằm rải rác suốt tuyến đường, nhóm của anh đang tăng tốc để kịp tiến độ và thông xe vào cuối tháng 7.', 1, '2018-07-10 09:44:49', 0, 1, 'Dinh'),
(6, 3, 'Dân đầu cơ đất tháo chạy khỏi Bắc Vân Phong6', '<p>&ldquo;T&igrave;nh h&igrave;nh mua b&aacute;n, chuyển nhượng đất đai tại huyện Vạn Ninh, Kh&aacute;nh H&ograve;a đ&atilde; lắng xuống rất nhiều&rdquo;. ng&agrave;y 10-6, trao đổi với<span>&nbsp;</span><i>Ph&aacute;p Luật TP.HCM</i>, &ocirc;ng V&otilde; Lục Phẩm, Ph&oacute; Chủ tịch UBND huyện Vạn Ninh, cho hay.</p>\r\n<p>Huyện Vạn Ninh l&agrave; địa phương được dự kiến th&agrave;nh lập đơn vị h&agrave;nh ch&iacute;nh-kinh tế đặc biệt (gọi tắt l&agrave; đặc khu) Bắc V&acirc;n Phong.</p>\r\n<p><b>Nhiều &ldquo;c&ograve;&rdquo; g&atilde;y c&aacute;nh</b></p>\r\n<p>Theo &ocirc;ng Phẩm, t&igrave;nh h&igrave;nh giao dịch, chuyển nhượng đất đai tại địa phương n&agrave;y thực chất bắt đầu lắng xuống từ ng&agrave;y 9-5. Đ&acirc;y l&agrave; thời điểm chủ tịch UBND tỉnh Kh&aacute;nh H&ograve;a c&oacute; c&ocirc;ng văn y&ecirc;u cầu tạm dừng tiếp nhận, giải quyết hồ sơ chuyển mục đ&iacute;ch sử dụng đất, chuyển quyền sử dụng đất, thực hiện việc t&aacute;ch thửa&hellip; tại Vạn Ninh cho đến chừng n&agrave;o dự &aacute;n luật đặc khu được cơ quan c&oacute; thẩm quyền th&ocirc;ng qua. Nay th&ocirc;ng tin l&ugrave;i việc th&ocirc;ng qua dự &aacute;n luật đặc khu c&agrave;ng khiến thị trường bất động sản (BĐS) tại huyện Vạn Ninh th&ecirc;m im ắng</p>', 'dan-dau-co-dat-thao-chay-khoi-bac-van-phong6', 'http://batdongsan.local/media/photo1528676247071-1528676247071381502062.jpg', 'Dân đầu cơ đất tháo chạy khỏi Bắc Vân Phong', '“Tình hình mua bán, chuyển nhượng đất đai tại huyện Vạn Ninh, Khánh Hòa đã lắng xuống rất nhiều”. ngày 10-6, trao đổi với Pháp Luật TP.HCM, ông Võ Lục Phẩm, Phó Chủ tịch UBND huyện Vạn Ninh, cho hay.', 1, '2018-07-10 09:46:38', 0, 3, 'Dinh'),
(7, 1, 'Kêu gọi đầu tư một số dự án cấp bách vào đảo Phú Quốc7', '<p>Theo đ&oacute;, những dự &aacute;n n&agrave;y, gồm: Khu bệnh viện kết hợp nghỉ dưỡng diện t&iacute;ch hơn 10 ha tại Khu phức hợp B&atilde;i Trường, x&atilde; Dương Tơ với Bệnh viện - Trung t&acirc;m điều dưỡng B&atilde;i Trường v&agrave; đất c&ocirc;ng vi&ecirc;n c&acirc;y xanh, quy m&ocirc; 500 giường; Khu dịch vụ du lịch, nghỉ dưỡng hơn 42 ha tại Khu du lịch sinh th&aacute;i B&atilde;i Thơm, x&atilde; B&atilde;i Thơm, khả năng phục vụ khoảng 1.200 - 1.600 kh&aacute;ch/ng&agrave;y; dự &aacute;n đầu tư x&acirc;y dựng Nh&agrave; m&aacute;y xử l&yacute; r&aacute;c thải, c&ocirc;ng suất xử l&yacute; 150 tấn r&aacute;c/ng&agrave;y, quy m&ocirc; diện t&iacute;ch 5,25 ha tại ấp Dương Tơ, x&atilde; Dương Tơ.</p>\r\n<p>Chủ tịch UBND tỉnh Ki&ecirc;n Giang ph&ecirc; duyệt danh mục 3 dự &aacute;n k&ecirc;u gọi đầu tư n&agrave;y, giao Ban Quản l&yacute; Khu kinh tế Ph&uacute; Quốc tổ chức c&ocirc;ng bố danh mục dự &aacute;n, l&agrave;m b&ecirc;n mời thầu v&agrave; phối hợp với c&aacute;c sở, ng&agrave;nh, đơn vị c&oacute; li&ecirc;n quan tổ chức đấu thầu lựa chọn nh&agrave; đầu tư theo quy định của ph&aacute;p luật hiện h&agrave;nh.</p>\r\n<p>Theo Ban Quản l&yacute; Khu kinh tế Ph&uacute; Quốc, to&agrave;n huyện đảo Ph&uacute; Quốc hiện c&oacute; 278 dự &aacute;n đầu tư c&ograve;n hiệu lực trong c&aacute;c khu quy hoạch với diện t&iacute;ch 10.676 ha, ước tổng vốn đầu tư hơn 361.000 tỷ đồng; trong đ&oacute;, c&oacute; 241 dự &aacute;n được cấp giấy chứng nhận đầu tư, quyết định chủ trương đầu tư với tổng diện t&iacute;ch 8.809 ha, tổng vốn đầu tư đăng k&yacute; 263.491 tỷ đồng, trong số n&agrave;y đ&atilde; c&oacute; 34 dự &aacute;n đi v&agrave;o hoạt động, 73 dự &aacute;n đang ho&agrave;n thiện thủ tục đầu tư.</p>', 'keu-goi-dau-tu-mot-so-du-an-cap-bach-vao-dao-phu-quoc7', 'http://batdongsan.local/media/pq.jpg', 'Kêu gọi đầu tư một số dự án cấp bách vào đảo Phú Quốc', 'Theo đó, những dự án này, gồm: Khu bệnh viện kết hợp nghỉ dưỡng diện tích hơn 10 ha tại Khu phức hợp Bãi Trường, xã Dương Tơ với Bệnh viện - Trung tâm điều dưỡng Bãi Trường và đất công viên cây xanh, quy mô 500 giường', 1, '2018-07-10 09:43:21', 0, 2, 'Dinh'),
(8, 1, 'Cao tốc 12.000 tỷ đánh thức thương cảng Vân Đồn8', '<p>Sau cơn mưa r&agrave;o, thời tiết th&ecirc;m oi nồng giữa c&aacute;i nắng 38 độ C, anh Quang lau mồ h&ocirc;i kể rằng nh&oacute;m thợ của m&igrave;nh đ&atilde; ho&agrave;n th&agrave;nh gần hết dải ph&acirc;n c&aacute;ch cứng suốt chiều d&agrave;i 53,6 km của cao tốc Hạ Long - V&acirc;n Đồn. Hiện tại, chỉ c&ograve;n khoảng 1 km dải ph&acirc;n c&aacute;ch nằm rải r&aacute;c suốt tuyến đường, nh&oacute;m của anh đang tăng tốc để kịp tiến độ v&agrave; th&ocirc;ng xe v&agrave;o cuối th&aacute;ng 7.</p>\r\n<p>Những ng&agrave;y n&agrave;y, v&agrave;i tuần trước thời hạn th&ocirc;ng xe, dọc cao tốc Hạ Long - V&acirc;n Đồn, kh&ocirc;ng kh&iacute; thi c&ocirc;ng nhộn nhịp khắp nơi. Từng nh&oacute;m thợ thi c&ocirc;ng ở nhiều hạng mục, nhiều g&oacute;i thầu kh&aacute;c nhau như trải thảm b&ecirc; t&ocirc;ng nhựa, ho&agrave;n th&agrave;nh dải ph&acirc;n c&aacute;ch cứng, thi c&ocirc;ng hệ thống tho&aacute;t nước, lắp đặt đ&egrave;n đường, gia cố m&aacute;i taluy, sơn kẻ đường&hellip;</p>', 'cao-toc-12-000-ty-danh-thuc-thuong-cang-van-don8', 'http://batdongsan.local/media/cong_nhan_zing_6_1.jpg', 'Cao tốc 12.000 tỷ đánh thức thương cảng Vân Đồn', 'Sau cơn mưa rào, thời tiết thêm oi nồng giữa cái nắng 38 độ C, anh Quang lau mồ hôi kể rằng nhóm thợ của mình đã hoàn thành gần hết dải phân cách cứng suốt chiều dài 53,6 km của cao tốc Hạ Long - Vân Đồn. Hiện tại, chỉ còn khoảng 1 km dải phân cách nằm rải rác suốt tuyến đường, nhóm của anh đang tăng tốc để kịp tiến độ và thông xe vào cuối tháng 7.', 1, '2018-07-10 09:44:49', 0, 3, 'Dinh'),
(9, 3, 'Dân đầu cơ đất tháo chạy khỏi Bắc Vân Phong9', '<p>&ldquo;T&igrave;nh h&igrave;nh mua b&aacute;n, chuyển nhượng đất đai tại huyện Vạn Ninh, Kh&aacute;nh H&ograve;a đ&atilde; lắng xuống rất nhiều&rdquo;. ng&agrave;y 10-6, trao đổi với<span>&nbsp;</span><i>Ph&aacute;p Luật TP.HCM</i>, &ocirc;ng V&otilde; Lục Phẩm, Ph&oacute; Chủ tịch UBND huyện Vạn Ninh, cho hay.</p>\r\n<p>Huyện Vạn Ninh l&agrave; địa phương được dự kiến th&agrave;nh lập đơn vị h&agrave;nh ch&iacute;nh-kinh tế đặc biệt (gọi tắt l&agrave; đặc khu) Bắc V&acirc;n Phong.</p>\r\n<p><b>Nhiều &ldquo;c&ograve;&rdquo; g&atilde;y c&aacute;nh</b></p>\r\n<p>Theo &ocirc;ng Phẩm, t&igrave;nh h&igrave;nh giao dịch, chuyển nhượng đất đai tại địa phương n&agrave;y thực chất bắt đầu lắng xuống từ ng&agrave;y 9-5. Đ&acirc;y l&agrave; thời điểm chủ tịch UBND tỉnh Kh&aacute;nh H&ograve;a c&oacute; c&ocirc;ng văn y&ecirc;u cầu tạm dừng tiếp nhận, giải quyết hồ sơ chuyển mục đ&iacute;ch sử dụng đất, chuyển quyền sử dụng đất, thực hiện việc t&aacute;ch thửa&hellip; tại Vạn Ninh cho đến chừng n&agrave;o dự &aacute;n luật đặc khu được cơ quan c&oacute; thẩm quyền th&ocirc;ng qua. Nay th&ocirc;ng tin l&ugrave;i việc th&ocirc;ng qua dự &aacute;n luật đặc khu c&agrave;ng khiến thị trường bất động sản (BĐS) tại huyện Vạn Ninh th&ecirc;m im ắng</p>', 'dan-dau-co-dat-thao-chay-khoi-bac-van-phong9', 'http://batdongsan.local/media/photo1528676247071-1528676247071381502062.jpg', 'Dân đầu cơ đất tháo chạy khỏi Bắc Vân Phong', '“Tình hình mua bán, chuyển nhượng đất đai tại huyện Vạn Ninh, Khánh Hòa đã lắng xuống rất nhiều”. ngày 10-6, trao đổi với Pháp Luật TP.HCM, ông Võ Lục Phẩm, Phó Chủ tịch UBND huyện Vạn Ninh, cho hay.', 1, '2018-07-10 09:46:38', 0, 3, 'Dinh'),
(10, 1, 'Kêu gọi đầu tư một số dự án cấp bách vào đảo Phú Quốc10', '<p>Theo đ&oacute;, những dự &aacute;n n&agrave;y, gồm: Khu bệnh viện kết hợp nghỉ dưỡng diện t&iacute;ch hơn 10 ha tại Khu phức hợp B&atilde;i Trường, x&atilde; Dương Tơ với Bệnh viện - Trung t&acirc;m điều dưỡng B&atilde;i Trường v&agrave; đất c&ocirc;ng vi&ecirc;n c&acirc;y xanh, quy m&ocirc; 500 giường; Khu dịch vụ du lịch, nghỉ dưỡng hơn 42 ha tại Khu du lịch sinh th&aacute;i B&atilde;i Thơm, x&atilde; B&atilde;i Thơm, khả năng phục vụ khoảng 1.200 - 1.600 kh&aacute;ch/ng&agrave;y; dự &aacute;n đầu tư x&acirc;y dựng Nh&agrave; m&aacute;y xử l&yacute; r&aacute;c thải, c&ocirc;ng suất xử l&yacute; 150 tấn r&aacute;c/ng&agrave;y, quy m&ocirc; diện t&iacute;ch 5,25 ha tại ấp Dương Tơ, x&atilde; Dương Tơ.</p>\r\n<p>Chủ tịch UBND tỉnh Ki&ecirc;n Giang ph&ecirc; duyệt danh mục 3 dự &aacute;n k&ecirc;u gọi đầu tư n&agrave;y, giao Ban Quản l&yacute; Khu kinh tế Ph&uacute; Quốc tổ chức c&ocirc;ng bố danh mục dự &aacute;n, l&agrave;m b&ecirc;n mời thầu v&agrave; phối hợp với c&aacute;c sở, ng&agrave;nh, đơn vị c&oacute; li&ecirc;n quan tổ chức đấu thầu lựa chọn nh&agrave; đầu tư theo quy định của ph&aacute;p luật hiện h&agrave;nh.</p>\r\n<p>Theo Ban Quản l&yacute; Khu kinh tế Ph&uacute; Quốc, to&agrave;n huyện đảo Ph&uacute; Quốc hiện c&oacute; 278 dự &aacute;n đầu tư c&ograve;n hiệu lực trong c&aacute;c khu quy hoạch với diện t&iacute;ch 10.676 ha, ước tổng vốn đầu tư hơn 361.000 tỷ đồng; trong đ&oacute;, c&oacute; 241 dự &aacute;n được cấp giấy chứng nhận đầu tư, quyết định chủ trương đầu tư với tổng diện t&iacute;ch 8.809 ha, tổng vốn đầu tư đăng k&yacute; 263.491 tỷ đồng, trong số n&agrave;y đ&atilde; c&oacute; 34 dự &aacute;n đi v&agrave;o hoạt động, 73 dự &aacute;n đang ho&agrave;n thiện thủ tục đầu tư.</p>', 'keu-goi-dau-tu-mot-so-du-an-cap-bach-vao-dao-phu-quoc10', 'http://batdongsan.local/media/pq.jpg', 'Kêu gọi đầu tư một số dự án cấp bách vào đảo Phú Quốc', 'Theo đó, những dự án này, gồm: Khu bệnh viện kết hợp nghỉ dưỡng diện tích hơn 10 ha tại Khu phức hợp Bãi Trường, xã Dương Tơ với Bệnh viện - Trung tâm điều dưỡng Bãi Trường và đất công viên cây xanh, quy mô 500 giường', 1, '2018-07-10 09:43:21', 0, 2, 'Dinh'),
(11, 1, 'Cao tốc 12.000 tỷ đánh thức thương cảng Vân Đồn11', '<p>Sau cơn mưa r&agrave;o, thời tiết th&ecirc;m oi nồng giữa c&aacute;i nắng 38 độ C, anh Quang lau mồ h&ocirc;i kể rằng nh&oacute;m thợ của m&igrave;nh đ&atilde; ho&agrave;n th&agrave;nh gần hết dải ph&acirc;n c&aacute;ch cứng suốt chiều d&agrave;i 53,6 km của cao tốc Hạ Long - V&acirc;n Đồn. Hiện tại, chỉ c&ograve;n khoảng 1 km dải ph&acirc;n c&aacute;ch nằm rải r&aacute;c suốt tuyến đường, nh&oacute;m của anh đang tăng tốc để kịp tiến độ v&agrave; th&ocirc;ng xe v&agrave;o cuối th&aacute;ng 7.</p>\r\n<p>Những ng&agrave;y n&agrave;y, v&agrave;i tuần trước thời hạn th&ocirc;ng xe, dọc cao tốc Hạ Long - V&acirc;n Đồn, kh&ocirc;ng kh&iacute; thi c&ocirc;ng nhộn nhịp khắp nơi. Từng nh&oacute;m thợ thi c&ocirc;ng ở nhiều hạng mục, nhiều g&oacute;i thầu kh&aacute;c nhau như trải thảm b&ecirc; t&ocirc;ng nhựa, ho&agrave;n th&agrave;nh dải ph&acirc;n c&aacute;ch cứng, thi c&ocirc;ng hệ thống tho&aacute;t nước, lắp đặt đ&egrave;n đường, gia cố m&aacute;i taluy, sơn kẻ đường&hellip;</p>', 'cao-toc-12-000-ty-danh-thuc-thuong-cang-van-don11', 'http://batdongsan.local/media/cong_nhan_zing_6_1.jpg', 'Cao tốc 12.000 tỷ đánh thức thương cảng Vân Đồn', 'Sau cơn mưa rào, thời tiết thêm oi nồng giữa cái nắng 38 độ C, anh Quang lau mồ hôi kể rằng nhóm thợ của mình đã hoàn thành gần hết dải phân cách cứng suốt chiều dài 53,6 km của cao tốc Hạ Long - Vân Đồn. Hiện tại, chỉ còn khoảng 1 km dải phân cách nằm rải rác suốt tuyến đường, nhóm của anh đang tăng tốc để kịp tiến độ và thông xe vào cuối tháng 7.', 1, '2018-07-10 09:44:49', 0, 1, 'Dinh'),
(12, 3, 'Dân đầu cơ đất tháo chạy khỏi Bắc Vân Phong12', '<p>&ldquo;T&igrave;nh h&igrave;nh mua b&aacute;n, chuyển nhượng đất đai tại huyện Vạn Ninh, Kh&aacute;nh H&ograve;a đ&atilde; lắng xuống rất nhiều&rdquo;. ng&agrave;y 10-6, trao đổi với<span>&nbsp;</span><i>Ph&aacute;p Luật TP.HCM</i>, &ocirc;ng V&otilde; Lục Phẩm, Ph&oacute; Chủ tịch UBND huyện Vạn Ninh, cho hay.</p>\r\n<p>Huyện Vạn Ninh l&agrave; địa phương được dự kiến th&agrave;nh lập đơn vị h&agrave;nh ch&iacute;nh-kinh tế đặc biệt (gọi tắt l&agrave; đặc khu) Bắc V&acirc;n Phong.</p>\r\n<p><b>Nhiều &ldquo;c&ograve;&rdquo; g&atilde;y c&aacute;nh</b></p>\r\n<p>Theo &ocirc;ng Phẩm, t&igrave;nh h&igrave;nh giao dịch, chuyển nhượng đất đai tại địa phương n&agrave;y thực chất bắt đầu lắng xuống từ ng&agrave;y 9-5. Đ&acirc;y l&agrave; thời điểm chủ tịch UBND tỉnh Kh&aacute;nh H&ograve;a c&oacute; c&ocirc;ng văn y&ecirc;u cầu tạm dừng tiếp nhận, giải quyết hồ sơ chuyển mục đ&iacute;ch sử dụng đất, chuyển quyền sử dụng đất, thực hiện việc t&aacute;ch thửa&hellip; tại Vạn Ninh cho đến chừng n&agrave;o dự &aacute;n luật đặc khu được cơ quan c&oacute; thẩm quyền th&ocirc;ng qua. Nay th&ocirc;ng tin l&ugrave;i việc th&ocirc;ng qua dự &aacute;n luật đặc khu c&agrave;ng khiến thị trường bất động sản (BĐS) tại huyện Vạn Ninh th&ecirc;m im ắng</p>', 'dan-dau-co-dat-thao-chay-khoi-bac-van-phong12', 'http://batdongsan.local/media/photo1528676247071-1528676247071381502062.jpg', 'Dân đầu cơ đất tháo chạy khỏi Bắc Vân Phong', '“Tình hình mua bán, chuyển nhượng đất đai tại huyện Vạn Ninh, Khánh Hòa đã lắng xuống rất nhiều”. ngày 10-6, trao đổi với Pháp Luật TP.HCM, ông Võ Lục Phẩm, Phó Chủ tịch UBND huyện Vạn Ninh, cho hay.', 1, '2018-07-10 09:46:38', 0, 3, 'Dinh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mreportsgroups`
--

CREATE TABLE `mreportsgroups` (
  `groupid` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `group_slug` varchar(300) DEFAULT NULL,
  `description` mediumtext,
  `active` tinyint(4) NOT NULL,
  `group_seo_title` text NOT NULL,
  `group_seo_description` text NOT NULL,
  `group_order` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mreportsgroups`
--

INSERT INTO `mreportsgroups` (`groupid`, `name`, `group_slug`, `description`, `active`, `group_seo_title`, `group_seo_description`, `group_order`) VALUES
(1, 'Tin mới', 'tin-moi', '', 1, 'Tin mới', 'Tin mới', 1),
(3, 'Tin hot', 'tin-hot', '', 1, 'Tin hot', 'Tin hot', 3),
(4, 'f', 'f', 'f', 1, '', '', 3);

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
  `article_order` int(11) NOT NULL DEFAULT '0',
  `location_id` int(11) NOT NULL,
  `author` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`articleid`, `articlegroup`, `subject`, `description`, `slug`, `avatar`, `seo_title`, `seo_description`, `active`, `datecreated`, `article_order`, `location_id`, `author`) VALUES
(1, 1, 'Kêu gọi đầu tư một số dự án cấp bách vào đảo Phú Quốc1', '<p>Theo đ&oacute;, những dự &aacute;n n&agrave;y, gồm: Khu bệnh viện kết hợp nghỉ dưỡng diện t&iacute;ch hơn 10 ha tại Khu phức hợp B&atilde;i Trường, x&atilde; Dương Tơ với Bệnh viện - Trung t&acirc;m điều dưỡng B&atilde;i Trường v&agrave; đất c&ocirc;ng vi&ecirc;n c&acirc;y xanh, quy m&ocirc; 500 giường; Khu dịch vụ du lịch, nghỉ dưỡng hơn 42 ha tại Khu du lịch sinh th&aacute;i B&atilde;i Thơm, x&atilde; B&atilde;i Thơm, khả năng phục vụ khoảng 1.200 - 1.600 kh&aacute;ch/ng&agrave;y; dự &aacute;n đầu tư x&acirc;y dựng Nh&agrave; m&aacute;y xử l&yacute; r&aacute;c thải, c&ocirc;ng suất xử l&yacute; 150 tấn r&aacute;c/ng&agrave;y, quy m&ocirc; diện t&iacute;ch 5,25 ha tại ấp Dương Tơ, x&atilde; Dương Tơ.</p>\r\n<p>Chủ tịch UBND tỉnh Ki&ecirc;n Giang ph&ecirc; duyệt danh mục 3 dự &aacute;n k&ecirc;u gọi đầu tư n&agrave;y, giao Ban Quản l&yacute; Khu kinh tế Ph&uacute; Quốc tổ chức c&ocirc;ng bố danh mục dự &aacute;n, l&agrave;m b&ecirc;n mời thầu v&agrave; phối hợp với c&aacute;c sở, ng&agrave;nh, đơn vị c&oacute; li&ecirc;n quan tổ chức đấu thầu lựa chọn nh&agrave; đầu tư theo quy định của ph&aacute;p luật hiện h&agrave;nh.</p>\r\n<p>Theo Ban Quản l&yacute; Khu kinh tế Ph&uacute; Quốc, to&agrave;n huyện đảo Ph&uacute; Quốc hiện c&oacute; 278 dự &aacute;n đầu tư c&ograve;n hiệu lực trong c&aacute;c khu quy hoạch với diện t&iacute;ch 10.676 ha, ước tổng vốn đầu tư hơn 361.000 tỷ đồng; trong đ&oacute;, c&oacute; 241 dự &aacute;n được cấp giấy chứng nhận đầu tư, quyết định chủ trương đầu tư với tổng diện t&iacute;ch 8.809 ha, tổng vốn đầu tư đăng k&yacute; 263.491 tỷ đồng, trong số n&agrave;y đ&atilde; c&oacute; 34 dự &aacute;n đi v&agrave;o hoạt động, 73 dự &aacute;n đang ho&agrave;n thiện thủ tục đầu tư.</p>', 'keu-goi-dau-tu-mot-so-du-an-cap-bach-vao-dao-phu-quoc-1', 'http://batdongsan.local/media/pq.jpg', 'Kêu gọi đầu tư một số dự án cấp bách vào đảo Phú Quốc', 'Theo đó, những dự án này, gồm: Khu bệnh viện kết hợp nghỉ dưỡng diện tích hơn 10 ha tại Khu phức hợp Bãi Trường, xã Dương Tơ với Bệnh viện - Trung tâm điều dưỡng Bãi Trường và đất công viên cây xanh, quy mô 500 giường', 1, '2018-07-10 09:43:21', 0, 3, 'Dinh'),
(2, 1, 'Cao tốc 12.000 tỷ đánh thức thương cảng Vân Đồn2', '<p>Sau cơn mưa r&agrave;o, thời tiết th&ecirc;m oi nồng giữa c&aacute;i nắng 38 độ C, anh Quang lau mồ h&ocirc;i kể rằng nh&oacute;m thợ của m&igrave;nh đ&atilde; ho&agrave;n th&agrave;nh gần hết dải ph&acirc;n c&aacute;ch cứng suốt chiều d&agrave;i 53,6 km của cao tốc Hạ Long - V&acirc;n Đồn. Hiện tại, chỉ c&ograve;n khoảng 1 km dải ph&acirc;n c&aacute;ch nằm rải r&aacute;c suốt tuyến đường, nh&oacute;m của anh đang tăng tốc để kịp tiến độ v&agrave; th&ocirc;ng xe v&agrave;o cuối th&aacute;ng 7.</p>\r\n<p>Những ng&agrave;y n&agrave;y, v&agrave;i tuần trước thời hạn th&ocirc;ng xe, dọc cao tốc Hạ Long - V&acirc;n Đồn, kh&ocirc;ng kh&iacute; thi c&ocirc;ng nhộn nhịp khắp nơi. Từng nh&oacute;m thợ thi c&ocirc;ng ở nhiều hạng mục, nhiều g&oacute;i thầu kh&aacute;c nhau như trải thảm b&ecirc; t&ocirc;ng nhựa, ho&agrave;n th&agrave;nh dải ph&acirc;n c&aacute;ch cứng, thi c&ocirc;ng hệ thống tho&aacute;t nước, lắp đặt đ&egrave;n đường, gia cố m&aacute;i taluy, sơn kẻ đường&hellip;</p>', 'cao-toc-12-000-ty-danh-thuc-thuong-cang-van-don2', 'http://batdongsan.local/media/cong_nhan_zing_6_1.jpg', 'Cao tốc 12.000 tỷ đánh thức thương cảng Vân Đồn', 'Sau cơn mưa rào, thời tiết thêm oi nồng giữa cái nắng 38 độ C, anh Quang lau mồ hôi kể rằng nhóm thợ của mình đã hoàn thành gần hết dải phân cách cứng suốt chiều dài 53,6 km của cao tốc Hạ Long - Vân Đồn. Hiện tại, chỉ còn khoảng 1 km dải phân cách nằm rải rác suốt tuyến đường, nhóm của anh đang tăng tốc để kịp tiến độ và thông xe vào cuối tháng 7.', 1, '2018-07-10 09:44:49', 0, 2, 'Dinh'),
(3, 3, 'Dân đầu cơ đất tháo chạy khỏi Bắc Vân Phong3', '<p>&ldquo;T&igrave;nh h&igrave;nh mua b&aacute;n, chuyển nhượng đất đai tại huyện Vạn Ninh, Kh&aacute;nh H&ograve;a đ&atilde; lắng xuống rất nhiều&rdquo;. ng&agrave;y 10-6, trao đổi với<span>&nbsp;</span><i>Ph&aacute;p Luật TP.HCM</i>, &ocirc;ng V&otilde; Lục Phẩm, Ph&oacute; Chủ tịch UBND huyện Vạn Ninh, cho hay.</p>\r\n<p>Huyện Vạn Ninh l&agrave; địa phương được dự kiến th&agrave;nh lập đơn vị h&agrave;nh ch&iacute;nh-kinh tế đặc biệt (gọi tắt l&agrave; đặc khu) Bắc V&acirc;n Phong.</p>\r\n<p><b>Nhiều &ldquo;c&ograve;&rdquo; g&atilde;y c&aacute;nh</b></p>\r\n<p>Theo &ocirc;ng Phẩm, t&igrave;nh h&igrave;nh giao dịch, chuyển nhượng đất đai tại địa phương n&agrave;y thực chất bắt đầu lắng xuống từ ng&agrave;y 9-5. Đ&acirc;y l&agrave; thời điểm chủ tịch UBND tỉnh Kh&aacute;nh H&ograve;a c&oacute; c&ocirc;ng văn y&ecirc;u cầu tạm dừng tiếp nhận, giải quyết hồ sơ chuyển mục đ&iacute;ch sử dụng đất, chuyển quyền sử dụng đất, thực hiện việc t&aacute;ch thửa&hellip; tại Vạn Ninh cho đến chừng n&agrave;o dự &aacute;n luật đặc khu được cơ quan c&oacute; thẩm quyền th&ocirc;ng qua. Nay th&ocirc;ng tin l&ugrave;i việc th&ocirc;ng qua dự &aacute;n luật đặc khu c&agrave;ng khiến thị trường bất động sản (BĐS) tại huyện Vạn Ninh th&ecirc;m im ắng</p>', 'dan-dau-co-dat-thao-chay-khoi-bac-van-phong3', 'http://batdongsan.local/media/photo1528676247071-1528676247071381502062.jpg', 'Dân đầu cơ đất tháo chạy khỏi Bắc Vân Phong', '“Tình hình mua bán, chuyển nhượng đất đai tại huyện Vạn Ninh, Khánh Hòa đã lắng xuống rất nhiều”. ngày 10-6, trao đổi với Pháp Luật TP.HCM, ông Võ Lục Phẩm, Phó Chủ tịch UBND huyện Vạn Ninh, cho hay.', 1, '2018-07-10 09:46:38', 0, 3, 'Dinh Nguyen'),
(4, 1, 'Kêu gọi đầu tư một số dự án cấp bách vào đảo Phú Quốc4', '<p>Theo đ&oacute;, những dự &aacute;n n&agrave;y, gồm: Khu bệnh viện kết hợp nghỉ dưỡng diện t&iacute;ch hơn 10 ha tại Khu phức hợp B&atilde;i Trường, x&atilde; Dương Tơ với Bệnh viện - Trung t&acirc;m điều dưỡng B&atilde;i Trường v&agrave; đất c&ocirc;ng vi&ecirc;n c&acirc;y xanh, quy m&ocirc; 500 giường; Khu dịch vụ du lịch, nghỉ dưỡng hơn 42 ha tại Khu du lịch sinh th&aacute;i B&atilde;i Thơm, x&atilde; B&atilde;i Thơm, khả năng phục vụ khoảng 1.200 - 1.600 kh&aacute;ch/ng&agrave;y; dự &aacute;n đầu tư x&acirc;y dựng Nh&agrave; m&aacute;y xử l&yacute; r&aacute;c thải, c&ocirc;ng suất xử l&yacute; 150 tấn r&aacute;c/ng&agrave;y, quy m&ocirc; diện t&iacute;ch 5,25 ha tại ấp Dương Tơ, x&atilde; Dương Tơ.</p>\r\n<p>Chủ tịch UBND tỉnh Ki&ecirc;n Giang ph&ecirc; duyệt danh mục 3 dự &aacute;n k&ecirc;u gọi đầu tư n&agrave;y, giao Ban Quản l&yacute; Khu kinh tế Ph&uacute; Quốc tổ chức c&ocirc;ng bố danh mục dự &aacute;n, l&agrave;m b&ecirc;n mời thầu v&agrave; phối hợp với c&aacute;c sở, ng&agrave;nh, đơn vị c&oacute; li&ecirc;n quan tổ chức đấu thầu lựa chọn nh&agrave; đầu tư theo quy định của ph&aacute;p luật hiện h&agrave;nh.</p>\r\n<p>Theo Ban Quản l&yacute; Khu kinh tế Ph&uacute; Quốc, to&agrave;n huyện đảo Ph&uacute; Quốc hiện c&oacute; 278 dự &aacute;n đầu tư c&ograve;n hiệu lực trong c&aacute;c khu quy hoạch với diện t&iacute;ch 10.676 ha, ước tổng vốn đầu tư hơn 361.000 tỷ đồng; trong đ&oacute;, c&oacute; 241 dự &aacute;n được cấp giấy chứng nhận đầu tư, quyết định chủ trương đầu tư với tổng diện t&iacute;ch 8.809 ha, tổng vốn đầu tư đăng k&yacute; 263.491 tỷ đồng, trong số n&agrave;y đ&atilde; c&oacute; 34 dự &aacute;n đi v&agrave;o hoạt động, 73 dự &aacute;n đang ho&agrave;n thiện thủ tục đầu tư.</p>', 'keu-goi-dau-tu-mot-so-du-an-cap-bach-vao-dao-phu-quoc4', 'http://batdongsan.local/media/pq.jpg', 'Kêu gọi đầu tư một số dự án cấp bách vào đảo Phú Quốc', 'Theo đó, những dự án này, gồm: Khu bệnh viện kết hợp nghỉ dưỡng diện tích hơn 10 ha tại Khu phức hợp Bãi Trường, xã Dương Tơ với Bệnh viện - Trung tâm điều dưỡng Bãi Trường và đất công viên cây xanh, quy mô 500 giường', 1, '2018-07-10 09:43:21', 0, 2, 'Dinh'),
(5, 1, 'Cao tốc 12.000 tỷ đánh thức thương cảng Vân Đồn5', '<p>Sau cơn mưa r&agrave;o, thời tiết th&ecirc;m oi nồng giữa c&aacute;i nắng 38 độ C, anh Quang lau mồ h&ocirc;i kể rằng nh&oacute;m thợ của m&igrave;nh đ&atilde; ho&agrave;n th&agrave;nh gần hết dải ph&acirc;n c&aacute;ch cứng suốt chiều d&agrave;i 53,6 km của cao tốc Hạ Long - V&acirc;n Đồn. Hiện tại, chỉ c&ograve;n khoảng 1 km dải ph&acirc;n c&aacute;ch nằm rải r&aacute;c suốt tuyến đường, nh&oacute;m của anh đang tăng tốc để kịp tiến độ v&agrave; th&ocirc;ng xe v&agrave;o cuối th&aacute;ng 7.</p>\r\n<p>Những ng&agrave;y n&agrave;y, v&agrave;i tuần trước thời hạn th&ocirc;ng xe, dọc cao tốc Hạ Long - V&acirc;n Đồn, kh&ocirc;ng kh&iacute; thi c&ocirc;ng nhộn nhịp khắp nơi. Từng nh&oacute;m thợ thi c&ocirc;ng ở nhiều hạng mục, nhiều g&oacute;i thầu kh&aacute;c nhau như trải thảm b&ecirc; t&ocirc;ng nhựa, ho&agrave;n th&agrave;nh dải ph&acirc;n c&aacute;ch cứng, thi c&ocirc;ng hệ thống tho&aacute;t nước, lắp đặt đ&egrave;n đường, gia cố m&aacute;i taluy, sơn kẻ đường&hellip;</p>', 'cao-toc-12-000-ty-danh-thuc-thuong-cang-van-don5', 'http://batdongsan.local/media/cong_nhan_zing_6_1.jpg', 'Cao tốc 12.000 tỷ đánh thức thương cảng Vân Đồn', 'Sau cơn mưa rào, thời tiết thêm oi nồng giữa cái nắng 38 độ C, anh Quang lau mồ hôi kể rằng nhóm thợ của mình đã hoàn thành gần hết dải phân cách cứng suốt chiều dài 53,6 km của cao tốc Hạ Long - Vân Đồn. Hiện tại, chỉ còn khoảng 1 km dải phân cách nằm rải rác suốt tuyến đường, nhóm của anh đang tăng tốc để kịp tiến độ và thông xe vào cuối tháng 7.', 1, '2018-07-10 09:44:49', 0, 1, 'Dinh'),
(6, 3, 'Dân đầu cơ đất tháo chạy khỏi Bắc Vân Phong6', '<p>&ldquo;T&igrave;nh h&igrave;nh mua b&aacute;n, chuyển nhượng đất đai tại huyện Vạn Ninh, Kh&aacute;nh H&ograve;a đ&atilde; lắng xuống rất nhiều&rdquo;. ng&agrave;y 10-6, trao đổi với<span>&nbsp;</span><i>Ph&aacute;p Luật TP.HCM</i>, &ocirc;ng V&otilde; Lục Phẩm, Ph&oacute; Chủ tịch UBND huyện Vạn Ninh, cho hay.</p>\r\n<p>Huyện Vạn Ninh l&agrave; địa phương được dự kiến th&agrave;nh lập đơn vị h&agrave;nh ch&iacute;nh-kinh tế đặc biệt (gọi tắt l&agrave; đặc khu) Bắc V&acirc;n Phong.</p>\r\n<p><b>Nhiều &ldquo;c&ograve;&rdquo; g&atilde;y c&aacute;nh</b></p>\r\n<p>Theo &ocirc;ng Phẩm, t&igrave;nh h&igrave;nh giao dịch, chuyển nhượng đất đai tại địa phương n&agrave;y thực chất bắt đầu lắng xuống từ ng&agrave;y 9-5. Đ&acirc;y l&agrave; thời điểm chủ tịch UBND tỉnh Kh&aacute;nh H&ograve;a c&oacute; c&ocirc;ng văn y&ecirc;u cầu tạm dừng tiếp nhận, giải quyết hồ sơ chuyển mục đ&iacute;ch sử dụng đất, chuyển quyền sử dụng đất, thực hiện việc t&aacute;ch thửa&hellip; tại Vạn Ninh cho đến chừng n&agrave;o dự &aacute;n luật đặc khu được cơ quan c&oacute; thẩm quyền th&ocirc;ng qua. Nay th&ocirc;ng tin l&ugrave;i việc th&ocirc;ng qua dự &aacute;n luật đặc khu c&agrave;ng khiến thị trường bất động sản (BĐS) tại huyện Vạn Ninh th&ecirc;m im ắng</p>', 'dan-dau-co-dat-thao-chay-khoi-bac-van-phong6', 'http://batdongsan.local/media/photo1528676247071-1528676247071381502062.jpg', 'Dân đầu cơ đất tháo chạy khỏi Bắc Vân Phong', '“Tình hình mua bán, chuyển nhượng đất đai tại huyện Vạn Ninh, Khánh Hòa đã lắng xuống rất nhiều”. ngày 10-6, trao đổi với Pháp Luật TP.HCM, ông Võ Lục Phẩm, Phó Chủ tịch UBND huyện Vạn Ninh, cho hay.', 1, '2018-07-10 09:46:38', 0, 3, 'Dinh'),
(7, 1, 'Kêu gọi đầu tư một số dự án cấp bách vào đảo Phú Quốc7', '<p>Theo đ&oacute;, những dự &aacute;n n&agrave;y, gồm: Khu bệnh viện kết hợp nghỉ dưỡng diện t&iacute;ch hơn 10 ha tại Khu phức hợp B&atilde;i Trường, x&atilde; Dương Tơ với Bệnh viện - Trung t&acirc;m điều dưỡng B&atilde;i Trường v&agrave; đất c&ocirc;ng vi&ecirc;n c&acirc;y xanh, quy m&ocirc; 500 giường; Khu dịch vụ du lịch, nghỉ dưỡng hơn 42 ha tại Khu du lịch sinh th&aacute;i B&atilde;i Thơm, x&atilde; B&atilde;i Thơm, khả năng phục vụ khoảng 1.200 - 1.600 kh&aacute;ch/ng&agrave;y; dự &aacute;n đầu tư x&acirc;y dựng Nh&agrave; m&aacute;y xử l&yacute; r&aacute;c thải, c&ocirc;ng suất xử l&yacute; 150 tấn r&aacute;c/ng&agrave;y, quy m&ocirc; diện t&iacute;ch 5,25 ha tại ấp Dương Tơ, x&atilde; Dương Tơ.</p>\r\n<p>Chủ tịch UBND tỉnh Ki&ecirc;n Giang ph&ecirc; duyệt danh mục 3 dự &aacute;n k&ecirc;u gọi đầu tư n&agrave;y, giao Ban Quản l&yacute; Khu kinh tế Ph&uacute; Quốc tổ chức c&ocirc;ng bố danh mục dự &aacute;n, l&agrave;m b&ecirc;n mời thầu v&agrave; phối hợp với c&aacute;c sở, ng&agrave;nh, đơn vị c&oacute; li&ecirc;n quan tổ chức đấu thầu lựa chọn nh&agrave; đầu tư theo quy định của ph&aacute;p luật hiện h&agrave;nh.</p>\r\n<p>Theo Ban Quản l&yacute; Khu kinh tế Ph&uacute; Quốc, to&agrave;n huyện đảo Ph&uacute; Quốc hiện c&oacute; 278 dự &aacute;n đầu tư c&ograve;n hiệu lực trong c&aacute;c khu quy hoạch với diện t&iacute;ch 10.676 ha, ước tổng vốn đầu tư hơn 361.000 tỷ đồng; trong đ&oacute;, c&oacute; 241 dự &aacute;n được cấp giấy chứng nhận đầu tư, quyết định chủ trương đầu tư với tổng diện t&iacute;ch 8.809 ha, tổng vốn đầu tư đăng k&yacute; 263.491 tỷ đồng, trong số n&agrave;y đ&atilde; c&oacute; 34 dự &aacute;n đi v&agrave;o hoạt động, 73 dự &aacute;n đang ho&agrave;n thiện thủ tục đầu tư.</p>', 'keu-goi-dau-tu-mot-so-du-an-cap-bach-vao-dao-phu-quoc7', 'http://batdongsan.local/media/pq.jpg', 'Kêu gọi đầu tư một số dự án cấp bách vào đảo Phú Quốc', 'Theo đó, những dự án này, gồm: Khu bệnh viện kết hợp nghỉ dưỡng diện tích hơn 10 ha tại Khu phức hợp Bãi Trường, xã Dương Tơ với Bệnh viện - Trung tâm điều dưỡng Bãi Trường và đất công viên cây xanh, quy mô 500 giường', 1, '2018-07-10 09:43:21', 0, 2, 'Dinh'),
(8, 1, 'Cao tốc 12.000 tỷ đánh thức thương cảng Vân Đồn8', '<p>Sau cơn mưa r&agrave;o, thời tiết th&ecirc;m oi nồng giữa c&aacute;i nắng 38 độ C, anh Quang lau mồ h&ocirc;i kể rằng nh&oacute;m thợ của m&igrave;nh đ&atilde; ho&agrave;n th&agrave;nh gần hết dải ph&acirc;n c&aacute;ch cứng suốt chiều d&agrave;i 53,6 km của cao tốc Hạ Long - V&acirc;n Đồn. Hiện tại, chỉ c&ograve;n khoảng 1 km dải ph&acirc;n c&aacute;ch nằm rải r&aacute;c suốt tuyến đường, nh&oacute;m của anh đang tăng tốc để kịp tiến độ v&agrave; th&ocirc;ng xe v&agrave;o cuối th&aacute;ng 7.</p>\r\n<p>Những ng&agrave;y n&agrave;y, v&agrave;i tuần trước thời hạn th&ocirc;ng xe, dọc cao tốc Hạ Long - V&acirc;n Đồn, kh&ocirc;ng kh&iacute; thi c&ocirc;ng nhộn nhịp khắp nơi. Từng nh&oacute;m thợ thi c&ocirc;ng ở nhiều hạng mục, nhiều g&oacute;i thầu kh&aacute;c nhau như trải thảm b&ecirc; t&ocirc;ng nhựa, ho&agrave;n th&agrave;nh dải ph&acirc;n c&aacute;ch cứng, thi c&ocirc;ng hệ thống tho&aacute;t nước, lắp đặt đ&egrave;n đường, gia cố m&aacute;i taluy, sơn kẻ đường&hellip;</p>', 'cao-toc-12-000-ty-danh-thuc-thuong-cang-van-don8', 'http://batdongsan.local/media/cong_nhan_zing_6_1.jpg', 'Cao tốc 12.000 tỷ đánh thức thương cảng Vân Đồn', 'Sau cơn mưa rào, thời tiết thêm oi nồng giữa cái nắng 38 độ C, anh Quang lau mồ hôi kể rằng nhóm thợ của mình đã hoàn thành gần hết dải phân cách cứng suốt chiều dài 53,6 km của cao tốc Hạ Long - Vân Đồn. Hiện tại, chỉ còn khoảng 1 km dải phân cách nằm rải rác suốt tuyến đường, nhóm của anh đang tăng tốc để kịp tiến độ và thông xe vào cuối tháng 7.', 1, '2018-07-10 09:44:49', 0, 3, 'Dinh'),
(9, 3, 'Dân đầu cơ đất tháo chạy khỏi Bắc Vân Phong9', '<p>&ldquo;T&igrave;nh h&igrave;nh mua b&aacute;n, chuyển nhượng đất đai tại huyện Vạn Ninh, Kh&aacute;nh H&ograve;a đ&atilde; lắng xuống rất nhiều&rdquo;. ng&agrave;y 10-6, trao đổi với<span>&nbsp;</span><i>Ph&aacute;p Luật TP.HCM</i>, &ocirc;ng V&otilde; Lục Phẩm, Ph&oacute; Chủ tịch UBND huyện Vạn Ninh, cho hay.</p>\r\n<p>Huyện Vạn Ninh l&agrave; địa phương được dự kiến th&agrave;nh lập đơn vị h&agrave;nh ch&iacute;nh-kinh tế đặc biệt (gọi tắt l&agrave; đặc khu) Bắc V&acirc;n Phong.</p>\r\n<p><b>Nhiều &ldquo;c&ograve;&rdquo; g&atilde;y c&aacute;nh</b></p>\r\n<p>Theo &ocirc;ng Phẩm, t&igrave;nh h&igrave;nh giao dịch, chuyển nhượng đất đai tại địa phương n&agrave;y thực chất bắt đầu lắng xuống từ ng&agrave;y 9-5. Đ&acirc;y l&agrave; thời điểm chủ tịch UBND tỉnh Kh&aacute;nh H&ograve;a c&oacute; c&ocirc;ng văn y&ecirc;u cầu tạm dừng tiếp nhận, giải quyết hồ sơ chuyển mục đ&iacute;ch sử dụng đất, chuyển quyền sử dụng đất, thực hiện việc t&aacute;ch thửa&hellip; tại Vạn Ninh cho đến chừng n&agrave;o dự &aacute;n luật đặc khu được cơ quan c&oacute; thẩm quyền th&ocirc;ng qua. Nay th&ocirc;ng tin l&ugrave;i việc th&ocirc;ng qua dự &aacute;n luật đặc khu c&agrave;ng khiến thị trường bất động sản (BĐS) tại huyện Vạn Ninh th&ecirc;m im ắng</p>', 'dan-dau-co-dat-thao-chay-khoi-bac-van-phong9', 'http://batdongsan.local/media/photo1528676247071-1528676247071381502062.jpg', 'Dân đầu cơ đất tháo chạy khỏi Bắc Vân Phong', '“Tình hình mua bán, chuyển nhượng đất đai tại huyện Vạn Ninh, Khánh Hòa đã lắng xuống rất nhiều”. ngày 10-6, trao đổi với Pháp Luật TP.HCM, ông Võ Lục Phẩm, Phó Chủ tịch UBND huyện Vạn Ninh, cho hay.', 1, '2018-07-10 09:46:38', 0, 3, 'Dinh'),
(10, 1, 'Kêu gọi đầu tư một số dự án cấp bách vào đảo Phú Quốc10', '<p>Theo đ&oacute;, những dự &aacute;n n&agrave;y, gồm: Khu bệnh viện kết hợp nghỉ dưỡng diện t&iacute;ch hơn 10 ha tại Khu phức hợp B&atilde;i Trường, x&atilde; Dương Tơ với Bệnh viện - Trung t&acirc;m điều dưỡng B&atilde;i Trường v&agrave; đất c&ocirc;ng vi&ecirc;n c&acirc;y xanh, quy m&ocirc; 500 giường; Khu dịch vụ du lịch, nghỉ dưỡng hơn 42 ha tại Khu du lịch sinh th&aacute;i B&atilde;i Thơm, x&atilde; B&atilde;i Thơm, khả năng phục vụ khoảng 1.200 - 1.600 kh&aacute;ch/ng&agrave;y; dự &aacute;n đầu tư x&acirc;y dựng Nh&agrave; m&aacute;y xử l&yacute; r&aacute;c thải, c&ocirc;ng suất xử l&yacute; 150 tấn r&aacute;c/ng&agrave;y, quy m&ocirc; diện t&iacute;ch 5,25 ha tại ấp Dương Tơ, x&atilde; Dương Tơ.</p>\r\n<p>Chủ tịch UBND tỉnh Ki&ecirc;n Giang ph&ecirc; duyệt danh mục 3 dự &aacute;n k&ecirc;u gọi đầu tư n&agrave;y, giao Ban Quản l&yacute; Khu kinh tế Ph&uacute; Quốc tổ chức c&ocirc;ng bố danh mục dự &aacute;n, l&agrave;m b&ecirc;n mời thầu v&agrave; phối hợp với c&aacute;c sở, ng&agrave;nh, đơn vị c&oacute; li&ecirc;n quan tổ chức đấu thầu lựa chọn nh&agrave; đầu tư theo quy định của ph&aacute;p luật hiện h&agrave;nh.</p>\r\n<p>Theo Ban Quản l&yacute; Khu kinh tế Ph&uacute; Quốc, to&agrave;n huyện đảo Ph&uacute; Quốc hiện c&oacute; 278 dự &aacute;n đầu tư c&ograve;n hiệu lực trong c&aacute;c khu quy hoạch với diện t&iacute;ch 10.676 ha, ước tổng vốn đầu tư hơn 361.000 tỷ đồng; trong đ&oacute;, c&oacute; 241 dự &aacute;n được cấp giấy chứng nhận đầu tư, quyết định chủ trương đầu tư với tổng diện t&iacute;ch 8.809 ha, tổng vốn đầu tư đăng k&yacute; 263.491 tỷ đồng, trong số n&agrave;y đ&atilde; c&oacute; 34 dự &aacute;n đi v&agrave;o hoạt động, 73 dự &aacute;n đang ho&agrave;n thiện thủ tục đầu tư.</p>', 'keu-goi-dau-tu-mot-so-du-an-cap-bach-vao-dao-phu-quoc10', 'http://batdongsan.local/media/pq.jpg', 'Kêu gọi đầu tư một số dự án cấp bách vào đảo Phú Quốc', 'Theo đó, những dự án này, gồm: Khu bệnh viện kết hợp nghỉ dưỡng diện tích hơn 10 ha tại Khu phức hợp Bãi Trường, xã Dương Tơ với Bệnh viện - Trung tâm điều dưỡng Bãi Trường và đất công viên cây xanh, quy mô 500 giường', 1, '2018-07-10 09:43:21', 0, 2, 'Dinh'),
(11, 1, 'Cao tốc 12.000 tỷ đánh thức thương cảng Vân Đồn11', '<p>Sau cơn mưa r&agrave;o, thời tiết th&ecirc;m oi nồng giữa c&aacute;i nắng 38 độ C, anh Quang lau mồ h&ocirc;i kể rằng nh&oacute;m thợ của m&igrave;nh đ&atilde; ho&agrave;n th&agrave;nh gần hết dải ph&acirc;n c&aacute;ch cứng suốt chiều d&agrave;i 53,6 km của cao tốc Hạ Long - V&acirc;n Đồn. Hiện tại, chỉ c&ograve;n khoảng 1 km dải ph&acirc;n c&aacute;ch nằm rải r&aacute;c suốt tuyến đường, nh&oacute;m của anh đang tăng tốc để kịp tiến độ v&agrave; th&ocirc;ng xe v&agrave;o cuối th&aacute;ng 7.</p>\r\n<p>Những ng&agrave;y n&agrave;y, v&agrave;i tuần trước thời hạn th&ocirc;ng xe, dọc cao tốc Hạ Long - V&acirc;n Đồn, kh&ocirc;ng kh&iacute; thi c&ocirc;ng nhộn nhịp khắp nơi. Từng nh&oacute;m thợ thi c&ocirc;ng ở nhiều hạng mục, nhiều g&oacute;i thầu kh&aacute;c nhau như trải thảm b&ecirc; t&ocirc;ng nhựa, ho&agrave;n th&agrave;nh dải ph&acirc;n c&aacute;ch cứng, thi c&ocirc;ng hệ thống tho&aacute;t nước, lắp đặt đ&egrave;n đường, gia cố m&aacute;i taluy, sơn kẻ đường&hellip;</p>', 'cao-toc-12-000-ty-danh-thuc-thuong-cang-van-don11', 'http://batdongsan.local/media/cong_nhan_zing_6_1.jpg', 'Cao tốc 12.000 tỷ đánh thức thương cảng Vân Đồn', 'Sau cơn mưa rào, thời tiết thêm oi nồng giữa cái nắng 38 độ C, anh Quang lau mồ hôi kể rằng nhóm thợ của mình đã hoàn thành gần hết dải phân cách cứng suốt chiều dài 53,6 km của cao tốc Hạ Long - Vân Đồn. Hiện tại, chỉ còn khoảng 1 km dải phân cách nằm rải rác suốt tuyến đường, nhóm của anh đang tăng tốc để kịp tiến độ và thông xe vào cuối tháng 7.', 1, '2018-07-10 09:44:49', 0, 1, 'Dinh'),
(12, 3, 'Dân đầu cơ đất tháo chạy khỏi Bắc Vân Phong12', '<p>&ldquo;T&igrave;nh h&igrave;nh mua b&aacute;n, chuyển nhượng đất đai tại huyện Vạn Ninh, Kh&aacute;nh H&ograve;a đ&atilde; lắng xuống rất nhiều&rdquo;. ng&agrave;y 10-6, trao đổi với<span>&nbsp;</span><i>Ph&aacute;p Luật TP.HCM</i>, &ocirc;ng V&otilde; Lục Phẩm, Ph&oacute; Chủ tịch UBND huyện Vạn Ninh, cho hay.</p>\r\n<p>Huyện Vạn Ninh l&agrave; địa phương được dự kiến th&agrave;nh lập đơn vị h&agrave;nh ch&iacute;nh-kinh tế đặc biệt (gọi tắt l&agrave; đặc khu) Bắc V&acirc;n Phong.</p>\r\n<p><b>Nhiều &ldquo;c&ograve;&rdquo; g&atilde;y c&aacute;nh</b></p>\r\n<p>Theo &ocirc;ng Phẩm, t&igrave;nh h&igrave;nh giao dịch, chuyển nhượng đất đai tại địa phương n&agrave;y thực chất bắt đầu lắng xuống từ ng&agrave;y 9-5. Đ&acirc;y l&agrave; thời điểm chủ tịch UBND tỉnh Kh&aacute;nh H&ograve;a c&oacute; c&ocirc;ng văn y&ecirc;u cầu tạm dừng tiếp nhận, giải quyết hồ sơ chuyển mục đ&iacute;ch sử dụng đất, chuyển quyền sử dụng đất, thực hiện việc t&aacute;ch thửa&hellip; tại Vạn Ninh cho đến chừng n&agrave;o dự &aacute;n luật đặc khu được cơ quan c&oacute; thẩm quyền th&ocirc;ng qua. Nay th&ocirc;ng tin l&ugrave;i việc th&ocirc;ng qua dự &aacute;n luật đặc khu c&agrave;ng khiến thị trường bất động sản (BĐS) tại huyện Vạn Ninh th&ecirc;m im ắng</p>', 'dan-dau-co-dat-thao-chay-khoi-bac-van-phong12', 'http://batdongsan.local/media/photo1528676247071-1528676247071381502062.jpg', 'Dân đầu cơ đất tháo chạy khỏi Bắc Vân Phong', '“Tình hình mua bán, chuyển nhượng đất đai tại huyện Vạn Ninh, Khánh Hòa đã lắng xuống rất nhiều”. ngày 10-6, trao đổi với Pháp Luật TP.HCM, ông Võ Lục Phẩm, Phó Chủ tịch UBND huyện Vạn Ninh, cho hay.', 1, '2018-07-10 09:46:38', 0, 3, 'Dinh');

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
  `group_seo_title` text NOT NULL,
  `group_seo_description` text NOT NULL,
  `group_order` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `newsgroups`
--

INSERT INTO `newsgroups` (`groupid`, `name`, `group_slug`, `description`, `active`, `group_seo_title`, `group_seo_description`, `group_order`) VALUES
(1, 'Tin mới', 'tin-moi', '', 1, 'Tin mới', 'Tin mới', 1),
(3, 'Tin hot', 'tin-hot', '', 1, 'Tin hot', 'Tin hot', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `articleid` int(11) NOT NULL,
  `subject` mediumtext NOT NULL,
  `description` text NOT NULL,
  `slug` mediumtext NOT NULL,
  `avatar` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `seo_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL,
  `datecreated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `pages`
--

INSERT INTO `pages` (`articleid`, `subject`, `description`, `slug`, `avatar`, `seo_title`, `seo_description`, `active`, `datecreated`) VALUES
(1, 'Giới thiệu', '<div class=\"row mx-0 align-items-center\">\r\n<div class=\"col-md-12 mt-3\">\r\n<h4 class=\"title\" id=\"trietly\">Triết l&yacute; kinh doanh <span class=\"arrow-right \"></span></h4>\r\n</div>\r\n<div class=\"col-md-9 mb-3\">\r\n<div class=\"content\">Thị trường Bất động sản c&oacute; vai tr&ograve; đặc biệt quan trọng trong nền kinh tế v&igrave; n&oacute; li&ecirc;n quan trực tiếp tới lượng t&agrave;i sản c&oacute; gi&aacute; trị rất lớn của mọi nền kinh tế quốc d&acirc;n, của mọi quốc gia tr&ecirc;n khắp Thế giới.<br /><br />C&ocirc;ng ty Cổ phần Địa ốc 19 l&agrave; C&ocirc;ng ty chuy&ecirc;n Kinh doanh c&aacute;c Dịch vụ Bất động sản. Ch&uacute;ng t&ocirc;i hoạt động chuy&ecirc;n s&acirc;u trong c&aacute;c lĩnh vực dịch vụ bất động sản &ndash; tự h&agrave;o l&agrave; một trong những đơn vị cung cấp dịch vụ h&agrave;ng đầu Việt nam, g&oacute;p phần v&agrave;o việc ph&aacute;t triển v&agrave; ổn định thị trường quan trọng n&agrave;y.<br />Để C&ocirc;ng ty Cổ phần Địa ốc 19 được vững mạnh v&agrave; ph&aacute;t triển như hiện nay ngo&agrave;i sự nỗ lực, chuy&ecirc;n t&acirc;m, cần mẫm v&agrave; đo&agrave;n kết của c&aacute;n bộ, nh&acirc;n vi&ecirc;n C&ocirc;ng ty ch&uacute;ng t&ocirc;i l&agrave; sự t&iacute;n nhiệm, y&ecirc;u thương , ủng hộ đầy nhiệt th&agrave;nh của Qu&yacute; vị. Tất cả những tin y&ecirc;u đ&oacute; hợp th&agrave;nh sức mạnh để c&oacute; Địa ốc 19 của ng&agrave;y h&ocirc;m nay.<br /><br />Để xứng đ&aacute;ng với những t&igrave;nh cảm lớn lao đ&oacute;, Ch&uacute;ng t&ocirc;i_ tập thể c&aacute;n bộ C&ocirc;ng ty Cổ phần Địa ốc 19 lu&ocirc;n truyền tải đến to&agrave;n thể anh chị em nh&acirc;n vi&ecirc;n đang l&agrave;m việc tại C&ocirc;ng ty c&ugrave;ng chung duy nhất một t&acirc;m niệm l&agrave; lấy chữ t&iacute;n l&agrave;m kim chỉ nam xuy&ecirc;n suốt trong hoạt động kinh doanh của m&igrave;nh.<br /><br />Triết l&yacute; kinh doanh của ch&uacute;ng t&ocirc;i l&agrave;:<br />&rdquo; &Aacute;p dụng, th&iacute;ch nghi, cải tiến &ldquo;<br /><br />Với mong muốn mang đến cho tất cả những b&agrave;n b&egrave; đối t&aacute;c, những kh&aacute;ch h&agrave;ng một t&agrave;i sản đ&iacute;ch thực, một gi&aacute; trị sống đ&iacute;ch thực, một niềm tin đ&iacute;ch thực _ C&ocirc;ng ty Cổ phần Địa ốc 19 đ&atilde;, đang v&agrave; sẽ m&atilde;i m&atilde;i l&agrave; người bạn th&acirc;n thiết của qu&yacute; đối t&aacute;c, qu&yacute; kh&aacute;ch h&agrave;ng v&agrave; mọi gia đ&igrave;nh. D&ugrave; Qu&yacute; vị mới t&igrave;m hiểu, mới biết đến hay đ&atilde; th&acirc;n thiết với Ch&uacute;ng t&ocirc;i th&igrave; đ&oacute; l&agrave; một NH&Acirc;N DUY&Ecirc;N. Bằng tất cả mọi t&acirc;m sức, mọi khả năng v&agrave; đạo đức nghề nghiệp, Ch&uacute;ng t&ocirc;i nguyện trong mọi điều kiện ho&agrave;n cảnh lu&ocirc;n đ&aacute;p ứng tất cả những nhu cầu, mong muốn của Qu&yacute; vị.</div>\r\n</div>\r\n<div class=\"col-md-3 mb-3\"><img src=\"http://batdongsan.local/media/gioi-thieu-1.png\" class=\"float-right w-100\" /></div>\r\n</div>\r\n<div class=\"row mx-0 align-items-center\">\r\n<div class=\"col-md-12 mt-3\">\r\n<h4 class=\"title\" id=\"hoachdinh\">Hoạch định - Sứ mệnh <span class=\"arrow-right \"></span></h4>\r\n</div>\r\n<div class=\"col-md-3 mb-3\"><img src=\"http://batdongsan.local/media/gioi-thieu-2.png\" class=\"float-left w-100\" /></div>\r\n<div class=\"col-md-9 mb-3\">\r\n<div class=\"content\"><strong>Hoạch định</strong><br />Trở th&agrave;nh một tập đo&agrave;n đa ng&agrave;nh nghề, đa sở hữu v&agrave; đa quốc gia. <br /><br /><strong>Sứ Mệnh</strong><br />&ndash; Đối với kh&aacute;ch h&agrave;ng: Thấu hiểu v&agrave; đ&aacute;p ứng tối đa c&aacute;c nhu cầu nhằm mang đến lựa chọn tối ưu cho cuộc sống kh&aacute;ch h&agrave;ng.<br />&ndash; Đối với cổ đ&ocirc;ng: Đồng h&agrave;nh c&ugrave;ng cổ đ&ocirc;ng chia sẻ cơ hội, th&aacute;ch thức v&agrave; lợi &iacute;ch.<br />&ndash; Đối với nh&acirc;n vi&ecirc;n: Tạo m&ocirc;i trường l&agrave;m việc cởi mở, th&acirc;n thiện nhưng đầy thử th&aacute;ch với nhiều cơ hội cho nh&acirc;n vi&ecirc;n thể hiện bản th&acirc;n, ph&aacute;t triển sự nghiệp v&agrave; n&acirc;ng cao gi&aacute; trị bản th&acirc;n cũng như đời sống tinh thần.<br />&ndash; Đối với x&atilde; hội: Chung tay mang đến cuộc sống ưu việt, hạnh ph&uacute;c cho cộng đồng v&agrave; n&acirc;ng cao chất lượng cuộc sống con người.</div>\r\n</div>\r\n</div>\r\n<div class=\"row mx-0 align-items-center\">\r\n<div class=\"col-md-12 mt-3\">\r\n<h4 class=\"title\" id=\"giatri\">Gi&aacute; trị cốt l&otilde;i <span class=\"arrow-right \"></span></h4>\r\n</div>\r\n<div class=\"col-md-9 mb-3\">\r\n<div class=\"content\">&ndash; T&acirc;m: Lu&ocirc;n th&agrave;nh t&acirc;m với kh&aacute;ch h&agrave;ng, t&acirc;m huyết với c&ocirc;ng việc, nhiệt t&acirc;m với đồng nghiệp.<br /><br />&ndash; T&agrave;i: Địa ốc 19 l&agrave; nơi tạo điều kiện để mỗi c&aacute; nh&acirc;n bộc lộ , ho&agrave;n thiện v&agrave; ph&aacute;t huy tối đa t&agrave;i năng, nh&acirc;n c&aacute;ch, bản lĩnh ri&ecirc;ng của m&igrave;nh.<br /><br />&ndash; Tr&iacute;: Cam kết mang lại cho kh&aacute;ch h&agrave;ng những lựa chọn v&agrave; giải ph&aacute;p bất động sản ho&agrave;n hảo, l&agrave; kết tinh tr&iacute; tuệ của to&agrave;n thể Ban l&atilde;nh đạo, c&aacute;n bộ nh&acirc;n vi&ecirc;n Địa ốc 19. Từ những hạt nh&acirc;n b&eacute; nhỏ_mỗi nh&acirc;n vi&ecirc;n Địa ốc 19 lu&ocirc;n tự h&agrave;o thể hiện bản lĩnh của một tri thức chuẩn mực.<br /><br />&ndash; T&iacute;n: Dựa v&agrave;o lợi thế t&iacute;ch hợp giữa Đầu tư &ndash; X&acirc;y dựng &ndash; Quản l&yacute; điều h&agrave;nh &ndash; Dịch vụ m&ocirc;i giới, Địa ốc 19 lu&ocirc;n l&agrave; đơn vị cung cấp c&aacute;c giải ph&aacute;p BĐS được đ&aacute;nh gi&aacute; dưới nhiều ti&ecirc;u tr&iacute; nhằm nổi bật nhiều ưu điểm vượt trội so với c&aacute;c BĐS c&ugrave;ng khu vực. Trước khi tung ra thị trường c&aacute;c sản phẩm BĐS, Địa ốc 19 lu&ocirc;n chặt chẽ trong việc nhận định năng lực cũng như uy t&iacute;n của CĐT, thẩm định dự &aacute;n, thương thảo đ&agrave;m ph&aacute;n, đ&aacute;nh gi&aacute; độ an to&agrave;n của sản phẩm với c&aacute;c kh&aacute;ch h&agrave;ng tiềm năng. B&ecirc;n cạnh đ&oacute;, dịch vụ chăm s&oacute;c kh&aacute;ch h&agrave;ng, hậu b&aacute;n h&agrave;ng lu&ocirc;n được đề cao. Tất cả những yếu tố n&agrave;y nhằm mang lại sự an t&acirc;m tuyệt đối cho Đối t&aacute;c v&agrave; kh&aacute;ch h&agrave;ng.</div>\r\n</div>\r\n<div class=\"col-md-3 mb-3\"><img src=\"http://batdongsan.local/media/gioi-thieu-3.png\" class=\"float-right w-100\" /></div>\r\n</div>\r\n<div class=\"row mx-0 align-items-center\">\r\n<div class=\"col-md-12 mt-3\">\r\n<h4 class=\"title\" id=\"linhvuc\">Lĩnh vực hoạt động <span class=\"arrow-right \"></span></h4>\r\n</div>\r\n<div class=\"col-md-12 mb-3\">\r\n<div class=\"content\">- Tư vấn đầu tư bất động sản <br />- Đầu tư bất động sản <br />- Du lịch nghỉ dưỡng</div>\r\n</div>\r\n</div>\r\n<div class=\"row mx-0 align-items-center\">\r\n<div class=\"col-md-12 mt-3\">\r\n<h4 class=\"title\" id=\"nangluc\">Năng lực hoạt động <span class=\"arrow-right \"></span></h4>\r\n</div>\r\n<div class=\"col-md-3 mb-3\"><img src=\"http://batdongsan.local/media/gioi-thieu-4.png\" class=\"float-left w-100\" /></div>\r\n<div class=\"col-md-9 mb-3\">\r\n<div class=\"content\">- 2016 l&agrave; nh&agrave; độc quyền ph&acirc;n phối dự &aacute;n bất động sản Lacasa Villa ,Số 25 đường Vũ Ngọc Phan, Phường L&aacute;ng Hạ, Quận Đống Đa, TP. H&agrave; Nội<br />- 2017 Trở th&agrave;nh đối t&aacute;c ph&acirc;n phối chiến lược cho c&aacute;c dự &aacute;n lớn c&oacute; mặt ở Ph&uacute; Quốc ,đẩy mạnh hợp t&aacute;c với những tổ chức bất động sản h&agrave;ng đầu Việt Nam<br />- 2018 Hoạt động kinh doanh m&ocirc;i giới bất động sản ở ba v&ugrave;ng đăch khu kinh tế Việt Nam</div>\r\n</div>\r\n</div>', 'gioi-thieu', '', 'Giới thiệu', 'Giới thiệu', 1, '2018-08-15 00:00:00'),
(4, 'Tuyển dụng', '<div class=\"col-md-12\">\r\n<h2>Tuyển Dụng Gi&aacute;m Đốc</h2>\r\n<div class=\"job-description mobile-box\">\r\n<h3>M&Ocirc; TẢ C&Ocirc;NG VIỆC</h3>\r\n<div class=\"description\">- X&acirc;y dựng kế hoạch, hoạch định chiến lược b&aacute;n h&agrave;ng h&agrave;ng qu&yacute;/năm (trung hạn v&agrave; d&agrave;i hạn) c&ugrave;ng với Khối kinh doanh v&agrave; Ban Tổng gi&aacute;m đốc, bao gồm c&aacute;c kế hoạch về sản phẩm, định hướng k&ecirc;nh ph&acirc;n phối...<br />- X&acirc;y dựng, thực hiện chiến lược kinh doanh v&agrave; c&aacute;c ch&iacute;nh s&aacute;ch ph&aacute;t triển k&ecirc;nh ph&acirc;n phối.<br />- X&acirc;y dựng v&agrave; triển khai c&aacute;c kế hoạch B&aacute;n h&agrave;ng v&agrave; c&aacute;c chiến dịch th&uacute;c đẩy b&aacute;n h&agrave;ng.<br />- Cập nhật nguồn th&ocirc;ng tin kinh tế vĩ m&ocirc;, ng&agrave;nh, kh&aacute;ch h&agrave;ng v&agrave; đối thủ cạnh tranh.<br />- Quản l&yacute; điều h&agrave;nh nh&acirc;n sự v&agrave; hoạt động của Ph&ograve;ng B&aacute;n h&agrave;ng.<br />- Chủ tr&igrave; phối hợp với c&aacute;c ph&ograve;ng ban li&ecirc;n quan để triển khai hiệu quả c&aacute;c chương tr&igrave;nh b&aacute;n h&agrave;ng.<br />- Tham gia tổ chức c&aacute;c sự kiện ra mắt sản phẩm mới của c&ocirc;ng ty.<br />- Thực hiện c&aacute;c nhiệm vụ kh&aacute;c do Ban Tổng Gi&aacute;m Đốc giao.</div>\r\n</div>\r\n<div class=\"job-requirements mobile-box\">\r\n<h3>Y&Ecirc;U CẦU C&Ocirc;NG VIỆC</h3>\r\n<div class=\"requirements\">1. Tr&igrave;nh độ học vấn/chuy&ecirc;n m&ocirc;n:<span>&nbsp;</span><br />- Tốt nghiệp Đại học chuy&ecirc;n ng&agrave;nh Quản trị kinh doanh hoặc tương đương.<span>&nbsp;</span><br />- Ưu ti&ecirc;n tr&igrave;nh độ tr&ecirc;n đại học, được đ&agrave;o tạo tại nước ngo&agrave;i.<br />2. Kinh nghiệm:<span>&nbsp;</span><br />- C&oacute; kinh nghiệm l&agrave;m việc tối thiểu 07 năm trong đ&oacute; c&oacute; &iacute;t nhất 05 năm kinh nghiệm ở vị tr&iacute; tương đương, c&ocirc;ng t&aacute;c trong c&aacute;c Tập đo&agrave;n, Doanh nghiệp c&oacute; quy m&ocirc; lớn.<span>&nbsp;</span><br />3. Kỹ năng:<br />- C&oacute; tư duy s&aacute;ng tạo v&agrave; tầm nh&igrave;n d&agrave;i hạn về ng&agrave;nh Bất động sản.<br />- C&oacute; khả năng định hướng chiến lược kinh doanh trung hạn, d&agrave;i hạn v&agrave; x&acirc;y dựng chiến lược ph&aacute;t triển kinh doanh một c&aacute;ch xuất sắc trong ng&agrave;nh bất động sản, cho thu&ecirc; mặt bằng, cho thu&ecirc; căn hộ, kh&aacute;ch sạn, trung t&acirc;m thương mại....<br />- C&oacute; c&aacute;c kỹ năng x&acirc;y dựng mục ti&ecirc;u kinh doanh, thiết lập kế hoạch &ndash; phương ph&aacute;p thực hiện mục ti&ecirc;u kinh doanh ngắn hạn, trung hạn v&agrave; d&agrave;i hạn.<br />- C&oacute; c&aacute;c kỹ năng triển khai kế hoạch thực hiện mục ti&ecirc;u kinh doanh đến c&aacute;c đơn vị/ bộ phận một c&aacute;ch hợp l&yacute; v&agrave; thực hiện tốt c&aacute;c chức năng quản l&yacute; &ndash; điều h&agrave;nh &ndash; kiểm tra &ndash; kiểm so&aacute;t &ndash; gi&aacute;m s&aacute;t cả hệ thống vận h&agrave;nh hiệu quả.<br />- C&oacute; c&aacute;c kỹ năng ph&acirc;n t&iacute;ch &ndash; tổng hợp đưa ra c&aacute;c kết luận mang t&iacute;nh chiến lược, c&oacute; &yacute; tưởng s&aacute;ng tạo cho c&aacute;c thị trường kinh doanh mới. C&oacute; c&aacute;c chi&ecirc;u thức tiếp thị b&aacute;n h&agrave;ng, tổ chức c&aacute;c sự kiện v&agrave; quảng b&aacute; h&igrave;nh ảnh.<br />- C&oacute; kỹ năng đ&agrave;m ph&aacute;n &ndash; thương lượng với c&aacute;c đối t&aacute;c một c&aacute;ch thuyết phục.<br />- Th&agrave;nh thạo tin học văn ph&ograve;ng.<br />- Tiếng Anh: Th&agrave;nh thạo 4 kỹ năng (nghe, n&oacute;i, đọc v&agrave; viết).<br />4. Phẩm chất c&aacute; nh&acirc;n:<br />- &Yacute; thức kỷ luật cao.<br />- Nhanh nhẹn, năng động, lu&ocirc;n c&oacute; tinh thần học hỏi, s&aacute;ng tạo trong c&ocirc;ng việc.<br />- T&aacute;c phong l&agrave;m việc chuy&ecirc;n nghiệp.<br />- Khả năng th&iacute;ch nghi cao với sự thay đổi.<br />- Khả năng chịu &aacute;p lực c&ocirc;ng việc cao.<br />- S&aacute;ng tạo, đam m&ecirc; với nghề kinh doanh BĐS, xem việc b&aacute;n h&agrave;ng như l&agrave; một phong c&aacute;ch sống.</div>\r\n</div>\r\n</div>', 'tuyen-dung', '', 'Tuyển dụng', 'Tuyển dụng', 1, '2018-08-15 14:24:38'),
(5, 'Chính sách bảo mật', '<div class=\"col-md-12\">\r\n<h2>Ch&uacute;ng t&ocirc;i l&agrave; ai</h2>\r\nĐịa chỉ website l&agrave;: http://vsr.com.vn\r\n<h2>Th&ocirc;ng tin c&aacute; nh&acirc;n n&agrave;o bị thu thập v&agrave; tại sao thu thập</h2>\r\n<h3>B&igrave;nh luận</h3>\r\nKhi kh&aacute;ch truy cập để lại b&igrave;nh luận tr&ecirc;n trang web, ch&uacute;ng t&ocirc;i thu thập dữ liệu được hiển thị trong biểu mẫu b&igrave;nh luận v&agrave; cũng l&agrave; địa chỉ IP của người truy cập v&agrave; chuỗi user agent của người d&ugrave;ng tr&igrave;nh duyệt để gi&uacute;p ph&aacute;t hiện spam Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (c&ograve;n được gọi l&agrave; hash) c&oacute; thể được cung cấp cho dịch vụ Gravatar để xem bạn c&oacute; đang sử dụng n&oacute; hay kh&ocirc;ng. Ch&iacute;nh s&aacute;ch bảo mật của dịch vụ Gravatar c&oacute; tại đ&acirc;y: https://automattic.com/privacy/. Sau khi chấp nhận b&igrave;nh luận của bạn, ảnh tiểu sử của bạn được hiển thị c&ocirc;ng khai trong ngữ cảnh b&igrave;nh luận của bạn.\r\n<h3>Thư viện</h3>\r\nNếu bạn tải h&igrave;nh ảnh l&ecirc;n trang web, bạn n&ecirc;n tr&aacute;nh tải l&ecirc;n h&igrave;nh ảnh c&oacute; dữ liệu vị tr&iacute; được nh&uacute;ng (EXIF GPS) đi k&egrave;m. Kh&aacute;ch truy cập v&agrave;o trang web c&oacute; thể tải xuống v&agrave; giải n&eacute;n bất kỳ dữ liệu vị tr&iacute; n&agrave;o từ h&igrave;nh ảnh tr&ecirc;n trang web.\r\n<h3>Cookies</h3>\r\nNếu bạn viết b&igrave;nh luận trong website, bạn c&oacute; thể cung cấp cần nhập t&ecirc;n, email địa chỉ website trong cookie. C&aacute;c th&ocirc;ng tin n&agrave;y nhằm gi&uacute;p bạn kh&ocirc;ng cần nhập th&ocirc;ng tin nhiều lần khi viết b&igrave;nh luận kh&aacute;c. Cookie n&agrave;y sẽ được lưu giữ trong một năm. Nếu bạn c&oacute; t&agrave;i khoản v&agrave; đăng nhập v&agrave; website, ch&uacute;ng t&ocirc;i sẽ thiết lập một cookie tạm thời để x&aacute;c định nếu tr&igrave;nh duyệt cho ph&eacute;p sử dụng cookie. Cookie n&agrave;y kh&ocirc;ng bao gồm th&ocirc;ng tin c&aacute; nh&acirc;n v&agrave; sẽ được gỡ bỏ khi bạn đ&oacute;ng tr&igrave;nh duyệt. Khi bạn đăng nhập, ch&uacute;ng t&ocirc;i sẽ thiết lập một v&agrave;i cookie để lưu th&ocirc;ng tin đăng nhập v&agrave; lựa chọn hiển thị. Th&ocirc;ng tin đăng nhập gần nhất lưu trong hai ng&agrave;y, v&agrave; lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn \"Nhớ t&ocirc;i\", th&ocirc;ng tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn tho&aacute;t t&agrave;i khoản, th&ocirc;ng tin cookie đăng nhập sẽ bị xo&aacute;. Nếu bạn sửa hoặc c&ocirc;ng bố b&agrave;i viết, một bản cookie bổ sung sẽ được lưu trong tr&igrave;nh duyệt. Cookie n&agrave;y kh&ocirc;ng chứa th&ocirc;ng tin c&aacute; nh&acirc;n v&agrave; chỉ đơn giản bao gồm ID của b&agrave;i viết bạn đ&atilde; sửa. N&oacute; tự động hết hạn sau 1 ng&agrave;y.\r\n<h3>Nội dung nh&uacute;ng từ website kh&aacute;c</h3>\r\nC&aacute;c b&agrave;i viết tr&ecirc;n trang web n&agrave;y c&oacute; thể bao gồm nội dung được nh&uacute;ng (v&iacute; dụ: video, h&igrave;nh ảnh, b&agrave;i viết, v.v.). Nội dung được nh&uacute;ng từ c&aacute;c trang web kh&aacute;c hoạt động theo c&ugrave;ng một c&aacute;ch ch&iacute;nh x&aacute;c như khi kh&aacute;ch truy cập đ&atilde; truy cập trang web kh&aacute;c. C&aacute;c trang web n&agrave;y c&oacute; thể thu thập dữ liệu về bạn, sử dụng cookie, nh&uacute;ng m&atilde; theo d&otilde;i từ b&ecirc;n thứ ba v&agrave; theo d&otilde;i tương t&aacute;c của bạn với nội dung được nh&uacute;ng đ&oacute;, bao gồm truy t&igrave;m tương t&aacute;c của bạn với nội dung được nh&uacute;ng nếu bạn c&oacute; t&agrave;i khoản v&agrave; đăng nhập v&agrave;o trang web đ&oacute;.\r\n<h2>Dữ liệu của bạn tồn tại bao l&acirc;u</h2>\r\nNếu bạn để lại b&igrave;nh luận, b&igrave;nh luận v&agrave; si&ecirc;u dữ liệu của n&oacute; sẽ được giữ lại v&ocirc; thời hạn. Điều n&agrave;y l&agrave; để ch&uacute;ng t&ocirc;i c&oacute; thể tự động nhận ra v&agrave; chấp nhận bất kỳ b&igrave;nh luận n&agrave;o thay v&igrave; giữ ch&uacute;ng trong khu vực đợi kiểm duyệt. Đối với người d&ugrave;ng đăng k&yacute; tr&ecirc;n trang web của ch&uacute;ng t&ocirc;i (nếu c&oacute;), ch&uacute;ng t&ocirc;i cũng lưu trữ th&ocirc;ng tin c&aacute; nh&acirc;n m&agrave; họ cung cấp trong hồ sơ người d&ugrave;ng của họ. Tất cả người d&ugrave;ng c&oacute; thể xem, chỉnh sửa hoặc x&oacute;a th&ocirc;ng tin c&aacute; nh&acirc;n của họ bất kỳ l&uacute;c n&agrave;o (ngoại trừ họ kh&ocirc;ng thể thay đổi t&ecirc;n người d&ugrave;ng của họ). Quản trị vi&ecirc;n trang web cũng c&oacute; thể xem v&agrave; chỉnh sửa th&ocirc;ng tin đ&oacute;.\r\n<h2>C&aacute;c quyền n&agrave;o của bạn với dữ liệu của m&igrave;nh</h2>\r\nNếu bạn c&oacute; t&agrave;i khoản tr&ecirc;n trang web n&agrave;y hoặc đ&atilde; để lại nhận x&eacute;t, bạn c&oacute; thể y&ecirc;u cầu nhận tệp xuất dữ liệu c&aacute; nh&acirc;n m&agrave; ch&uacute;ng t&ocirc;i lưu giữ về bạn, bao gồm mọi dữ liệu bạn đ&atilde; cung cấp cho ch&uacute;ng t&ocirc;i. Bạn cũng c&oacute; thể y&ecirc;u cầu ch&uacute;ng t&ocirc;i x&oacute;a mọi dữ liệu c&aacute; nh&acirc;n m&agrave; ch&uacute;ng t&ocirc;i lưu giữ về bạn. Điều n&agrave;y kh&ocirc;ng bao gồm bất kỳ dữ liệu n&agrave;o ch&uacute;ng t&ocirc;i c&oacute; nghĩa vụ giữ cho c&aacute;c mục đ&iacute;ch h&agrave;nh ch&iacute;nh, ph&aacute;p l&yacute; hoặc bảo mật.\r\n<h2>C&aacute;c dữ liệu của bạn được gửi tới đ&acirc;u</h2>\r\nC&aacute;c b&igrave;nh luận của kh&aacute;ch (kh&ocirc;ng phải l&agrave; th&agrave;nh vi&ecirc;n) c&oacute; thể được kiểm tra th&ocirc;ng qua dịch vụ tự động ph&aacute;t hiện spam.</div>', 'chinh-sach-bao-mat', '', 'Chính sách bảo mật', 'Chính sách bảo mật', 1, '2018-08-15 14:24:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `property`
--

CREATE TABLE `property` (
  `property_id` int(11) NOT NULL,
  `property_theloai` int(11) NOT NULL,
  `property_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `property_avatar` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `property_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `property_category_id` int(11) NOT NULL,
  `property_type_id` int(11) NOT NULL,
  `property_location_id` int(11) NOT NULL,
  `property_town_id` int(11) NOT NULL,
  `property_status` int(11) NOT NULL,
  `property_price` int(11) NOT NULL,
  `property_bedroom` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `property_bathroom` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `property_acreage` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `property_facade` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `property_slug` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `property_seo_title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `property_seo_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `property_created_at` datetime DEFAULT NULL,
  `property_active` int(11) NOT NULL,
  `property_stick` int(11) NOT NULL DEFAULT '0',
  `property_order` int(11) NOT NULL,
  `property_socan` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `property_solo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `property_quyhoach` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vitri_google` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `property_matbang` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `property_canhonen` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `property_tienich` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `author` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `property`
--

INSERT INTO `property` (`property_id`, `property_theloai`, `property_name`, `property_avatar`, `property_content`, `property_category_id`, `property_type_id`, `property_location_id`, `property_town_id`, `property_status`, `property_price`, `property_bedroom`, `property_bathroom`, `property_acreage`, `property_facade`, `property_slug`, `property_seo_title`, `property_seo_description`, `property_created_at`, `property_active`, `property_stick`, `property_order`, `property_socan`, `property_solo`, `property_quyhoach`, `vitri_google`, `property_matbang`, `property_canhonen`, `property_tienich`, `author`) VALUES
(1, 1, 'Mua căn hộ Imperia Sky Garden nhận chiết khấu đến 250tr', 'http://batdongsan.local/media/20180817093230-909e_wm.jpg', '<span>Mua 1 được 1 căn hộ cơ hội chỉ đến một lần v&agrave; si&ecirc;u ch&iacute;nh s&aacute;ch th&igrave; c&oacute; hạn.</span><br /><span>Mua căn hộ Imperia Sky Garden nắm trong tay cơ hội sở hữu th&ecirc;m một căn hộ Imperia Sky Garden.</span><br /><span>C&ugrave;ng cơ hội sở hữu h&agrave;ng chục chuyến du lịch h&egrave; Ch&acirc;u &Acirc;u, Singapore, Ph&uacute; Quốc.</span><br /><span>Đặc biệt tặng g&oacute;i nội thất trị gi&aacute; 50 triệu đồng cho 30 kh&aacute;ch h&agrave;ng đầu ti&ecirc;n.</span><br /><span>Ng&acirc;n h&agrave;ng hỗ trợ l&atilde;i suất 0% trong 10 th&aacute;ng.</span><br /><span>Chiết khấu l&ecirc;n đến 200 triệu đồng cho kh&aacute;ch h&agrave;ng thanh to&aacute;n sớm 95%.</span><br /><span>Gi&aacute; chỉ từ 31.5 tr/m2 nội thất nhập khẩu cao cấp.</span><br /><span>Hotline: 0976 245 733.</span><br /><br /><span>Vị tr&iacute; v&agrave;ng đắc địa bậc nhất Nam H&agrave; Nội.</span><br /><span>Gi&aacute; trị vượt trội trong tương lai nằm tr&ecirc;n mặt tiền đường Minh Khai 60m v&agrave; trục đường tr&ecirc;n cao lối từ cầu Vĩnh Tuy đến Ng&atilde; Tư Sở.</span><br /><span>Ho&agrave;n hảo với 68 tiện &iacute;ch d&agrave;nh ri&ecirc;ng cho cư d&acirc;n với tuyệt t&aacute;c nghệ thuật vườn ch&acirc;n m&acirc;y đầu ti&ecirc;n trong nội đ&ocirc;.</span><br /><span>Kh&ocirc;ng gian sống l&yacute; tưởng, thanh b&igrave;nh tuyệt đối.</span><br /><span>M&ocirc;i trường sống đẳng cấp v&agrave; nh&acirc;n văn.</span><br /><span>Dự &aacute;n được ph&aacute;t triển bởi đơn vị uy t&iacute;n số 1 Việt Nam: Terra Gold Việt Nam, MIK Group, MIK Home, H&ograve;a B&igrave;nh.</span><br /><span>Mật độ x&acirc;y dựng thấp: 35%.</span><br /><br /><span>Thiết kế căn hộ hiện đại, tối ưu, ngập tr&agrave;n &aacute;nh s&aacute;ng. Diện t&iacute;ch phong ph&uacute; từ 58m2 - 105m2.</span><br /><span>Căn hộ 2PN - 1WC - 1 l&ocirc; gia - 58m2, gi&aacute; từ 2 tỷ.</span><br /><span>Căn hộ 2PN - 2WC - 2 l&ocirc; gia từ 73m2 - 82m2, gi&aacute; từ 2,4 tỷ.</span><br /><span>Căn hộ 3PN - 2WC - 2 l&ocirc; gia từ 86m2 - 98m2, gi&aacute; từ 3,1 tỷ.</span><br /><span>Căn hộ 3PN - 2WC - 3 l&ocirc; gia từ 103m2 - 105m2, gi&aacute; từ 3,7 tỷ.</span><br /><span>Gi&aacute; tr&ecirc;n đ&atilde; bao gồm VAT + nội thất nhập khẩu cao cấp.</span><br /><span>Tiến độ thanh to&aacute;n linh hoạt chia l&agrave;m 6 đợt: 25% - 20% - 15% - 10% - 25% - 5%.</span>', 2, 8, 3, 1, 1, 10000000, '', '3', '100', '4', 'mua-can-ho-imperia-sky-garden-nhan-chiet-khau-den-250tr', 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', '2018-07-08 10:58:33', 1, 1, 2, '', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.907016321105!2d105.83729470007394!3d20.996364085947345!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0:0xe3b35eb42a276726!2sDDG+TECHNOLOGY+JSC!5e0!3m2!1sen!2s!4v1533708629868\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '', '', '', 'Hoang Minh'),
(2, 1, 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', 'http://batdongsan.local/media/20180706182443-c423_wm.jpg', '<span>Do chuyển sang mua liền kề n&ecirc;n m&igrave;nh cần b&aacute;n nh&agrave;:</span><br /><span>1. Sổ hồng ch&iacute;nh chủ.</span><br /><span>2. Diện t&iacute;ch: 67m2.</span><br /><span>3. Đ&uacute;c 3 tấm.</span><br /><span>4. Vị tr&iacute; ngay chợ đầu mối H&oacute;c M&ocirc;n.</span><br /><span>5. Nh&agrave; mới x&acirc;y rất đẹp.</span><br /><span>6. Nh&agrave; hướng nam rất m&aacute;t.</span><br /><span>7. Ng&otilde; th&ocirc;ng - xe hơi v&ocirc; tận nh&agrave;.</span><br /><span>8. H&ograve;n non bộ phong thủy.</span><br /><span>9. Hệ thống b&aacute;o trộm đột nhập qua ĐT.</span><br /><span>10. Full nội thất.</span><br /><span>11. 4 camera an ninh.</span><br /><span>12. 5 ph&ograve;ng ngủ - 4 WC.</span><br /><span>Gi&aacute; b&aacute;n 3.1 tỷ - Li&ecirc;n hệ 0942.686.686.</span>', 1, 9, 3, 1, 1, 40000000, '5', '3', '1003', '4', 'ban-nha-1-tret-2-lau-duc-3-tam-2', 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', '2018-07-08 10:58:33', 1, 0, 2, '', '', 'Quy ', '', '', '', '', ''),
(3, 1, 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', 'http://batdongsan.local/media/20180706182443-fb3e_wm.jpg', '<span>Do chuyển sang mua liền kề n&ecirc;n m&igrave;nh cần b&aacute;n nh&agrave;:</span><br /><span>1. Sổ hồng ch&iacute;nh chủ.</span><br /><span>2. Diện t&iacute;ch: 67m2.</span><br /><span>3. Đ&uacute;c 3 tấm.</span><br /><span>4. Vị tr&iacute; ngay chợ đầu mối H&oacute;c M&ocirc;n.</span><br /><span>5. Nh&agrave; mới x&acirc;y rất đẹp.</span><br /><span>6. Nh&agrave; hướng nam rất m&aacute;t.</span><br /><span>7. Ng&otilde; th&ocirc;ng - xe hơi v&ocirc; tận nh&agrave;.</span><br /><span>8. H&ograve;n non bộ phong thủy.</span><br /><span>9. Hệ thống b&aacute;o trộm đột nhập qua ĐT.</span><br /><span>10. Full nội thất.</span><br /><span>11. 4 camera an ninh.</span><br /><span>12. 5 ph&ograve;ng ngủ - 4 WC.</span><br /><span>Gi&aacute; b&aacute;n 3.1 tỷ - Li&ecirc;n hệ 0942.686.686.</span>', 1, 9, 3, 1, 1, 30000000, '5', '3', '1000', '4', 'ban-nha-1-tret-2-lau-duc-3-tam-3', 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', '2018-07-08 10:58:33', 1, 0, 2, '', '', 'Quy ', '', '', '', '', ''),
(4, 1, 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', 'http://batdongsan.local/media/20180706182443-fb3e_wm.jpg', '<span>Do chuyển sang mua liền kề n&ecirc;n m&igrave;nh cần b&aacute;n nh&agrave;:</span><br /><span>1. Sổ hồng ch&iacute;nh chủ.</span><br /><span>2. Diện t&iacute;ch: 67m2.</span><br /><span>3. Đ&uacute;c 3 tấm.</span><br /><span>4. Vị tr&iacute; ngay chợ đầu mối H&oacute;c M&ocirc;n.</span><br /><span>5. Nh&agrave; mới x&acirc;y rất đẹp.</span><br /><span>6. Nh&agrave; hướng nam rất m&aacute;t.</span><br /><span>7. Ng&otilde; th&ocirc;ng - xe hơi v&ocirc; tận nh&agrave;.</span><br /><span>8. H&ograve;n non bộ phong thủy.</span><br /><span>9. Hệ thống b&aacute;o trộm đột nhập qua ĐT.</span><br /><span>10. Full nội thất.</span><br /><span>11. 4 camera an ninh.</span><br /><span>12. 5 ph&ograve;ng ngủ - 4 WC.</span><br /><span>Gi&aacute; b&aacute;n 3.1 tỷ - Li&ecirc;n hệ 0942.686.686.</span>', 2, 8, 3, 1, 0, 10000000, '5', '3', '100', '4', 'ban-nha-1-tret-2-lau-duc-3-tam-4', 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', '2018-07-08 10:58:33', 1, 1, 2, '', '', '', '', '', '', '', 'Dinh Nguyen'),
(5, 1, 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', 'http://batdongsan.local/media/20180706182443-c423_wm.jpg', '<span>Do chuyển sang mua liền kề n&ecirc;n m&igrave;nh cần b&aacute;n nh&agrave;:</span><br /><span>1. Sổ hồng ch&iacute;nh chủ.</span><br /><span>2. Diện t&iacute;ch: 67m2.</span><br /><span>3. Đ&uacute;c 3 tấm.</span><br /><span>4. Vị tr&iacute; ngay chợ đầu mối H&oacute;c M&ocirc;n.</span><br /><span>5. Nh&agrave; mới x&acirc;y rất đẹp.</span><br /><span>6. Nh&agrave; hướng nam rất m&aacute;t.</span><br /><span>7. Ng&otilde; th&ocirc;ng - xe hơi v&ocirc; tận nh&agrave;.</span><br /><span>8. H&ograve;n non bộ phong thủy.</span><br /><span>9. Hệ thống b&aacute;o trộm đột nhập qua ĐT.</span><br /><span>10. Full nội thất.</span><br /><span>11. 4 camera an ninh.</span><br /><span>12. 5 ph&ograve;ng ngủ - 4 WC.</span><br /><span>Gi&aacute; b&aacute;n 3.1 tỷ - Li&ecirc;n hệ 0942.686.686.</span>', 1, 9, 3, 1, 1, 40000000, '5', '3', '1003', '4', 'ban-nha-1-tret-2-lau-duc-3-tam-5', 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', '2018-07-08 10:58:33', 1, 0, 2, '', '', 'Quy ', '', '', '', '', ''),
(6, 1, 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', 'http://batdongsan.local/media/20180706182443-fb3e_wm.jpg', '<span>Do chuyển sang mua liền kề n&ecirc;n m&igrave;nh cần b&aacute;n nh&agrave;:</span><br /><span>1. Sổ hồng ch&iacute;nh chủ.</span><br /><span>2. Diện t&iacute;ch: 67m2.</span><br /><span>3. Đ&uacute;c 3 tấm.</span><br /><span>4. Vị tr&iacute; ngay chợ đầu mối H&oacute;c M&ocirc;n.</span><br /><span>5. Nh&agrave; mới x&acirc;y rất đẹp.</span><br /><span>6. Nh&agrave; hướng nam rất m&aacute;t.</span><br /><span>7. Ng&otilde; th&ocirc;ng - xe hơi v&ocirc; tận nh&agrave;.</span><br /><span>8. H&ograve;n non bộ phong thủy.</span><br /><span>9. Hệ thống b&aacute;o trộm đột nhập qua ĐT.</span><br /><span>10. Full nội thất.</span><br /><span>11. 4 camera an ninh.</span><br /><span>12. 5 ph&ograve;ng ngủ - 4 WC.</span><br /><span>Gi&aacute; b&aacute;n 3.1 tỷ - Li&ecirc;n hệ 0942.686.686.</span>', 1, 9, 3, 1, 1, 30000000, '5', '3', '1000', '4', 'ban-nha-1-tret-2-lau-duc-3-tam-6', 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', '2018-07-08 10:58:33', 1, 0, 2, '', '', 'Quy ', '', '', '', '', ''),
(7, 1, 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', 'http://batdongsan.local/media/20180706182443-fb3e_wm.jpg', '<span>Do chuyển sang mua liền kề n&ecirc;n m&igrave;nh cần b&aacute;n nh&agrave;:</span><br /><span>1. Sổ hồng ch&iacute;nh chủ.</span><br /><span>2. Diện t&iacute;ch: 67m2.</span><br /><span>3. Đ&uacute;c 3 tấm.</span><br /><span>4. Vị tr&iacute; ngay chợ đầu mối H&oacute;c M&ocirc;n.</span><br /><span>5. Nh&agrave; mới x&acirc;y rất đẹp.</span><br /><span>6. Nh&agrave; hướng nam rất m&aacute;t.</span><br /><span>7. Ng&otilde; th&ocirc;ng - xe hơi v&ocirc; tận nh&agrave;.</span><br /><span>8. H&ograve;n non bộ phong thủy.</span><br /><span>9. Hệ thống b&aacute;o trộm đột nhập qua ĐT.</span><br /><span>10. Full nội thất.</span><br /><span>11. 4 camera an ninh.</span><br /><span>12. 5 ph&ograve;ng ngủ - 4 WC.</span><br /><span>Gi&aacute; b&aacute;n 3.1 tỷ - Li&ecirc;n hệ 0942.686.686.</span>', 2, 8, 3, 1, 1, 10000000, '5', '3', '100', '4', 'ban-nha-1-tret-2-lau-duc-3-tam-7', 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', '2018-07-08 10:58:33', 1, 1, 2, '', '', '', '', '', '', '', ''),
(8, 1, 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', 'http://batdongsan.local/media/20180706182443-c423_wm.jpg', '<span>Do chuyển sang mua liền kề n&ecirc;n m&igrave;nh cần b&aacute;n nh&agrave;:</span><br /><span>1. Sổ hồng ch&iacute;nh chủ.</span><br /><span>2. Diện t&iacute;ch: 67m2.</span><br /><span>3. Đ&uacute;c 3 tấm.</span><br /><span>4. Vị tr&iacute; ngay chợ đầu mối H&oacute;c M&ocirc;n.</span><br /><span>5. Nh&agrave; mới x&acirc;y rất đẹp.</span><br /><span>6. Nh&agrave; hướng nam rất m&aacute;t.</span><br /><span>7. Ng&otilde; th&ocirc;ng - xe hơi v&ocirc; tận nh&agrave;.</span><br /><span>8. H&ograve;n non bộ phong thủy.</span><br /><span>9. Hệ thống b&aacute;o trộm đột nhập qua ĐT.</span><br /><span>10. Full nội thất.</span><br /><span>11. 4 camera an ninh.</span><br /><span>12. 5 ph&ograve;ng ngủ - 4 WC.</span><br /><span>Gi&aacute; b&aacute;n 3.1 tỷ - Li&ecirc;n hệ 0942.686.686.</span>', 1, 9, 3, 1, 1, 40000000, '5', '3', '1003', '4', 'ban-nha-1-tret-2-lau-duc-3-tam-8', 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', '2018-07-08 10:58:33', 1, 0, 2, '', '', 'Quy ', '', '', '', '', ''),
(9, 1, 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', 'http://batdongsan.local/media/20180706182443-fb3e_wm.jpg', '<span>Do chuyển sang mua liền kề n&ecirc;n m&igrave;nh cần b&aacute;n nh&agrave;:</span><br /><span>1. Sổ hồng ch&iacute;nh chủ.</span><br /><span>2. Diện t&iacute;ch: 67m2.</span><br /><span>3. Đ&uacute;c 3 tấm.</span><br /><span>4. Vị tr&iacute; ngay chợ đầu mối H&oacute;c M&ocirc;n.</span><br /><span>5. Nh&agrave; mới x&acirc;y rất đẹp.</span><br /><span>6. Nh&agrave; hướng nam rất m&aacute;t.</span><br /><span>7. Ng&otilde; th&ocirc;ng - xe hơi v&ocirc; tận nh&agrave;.</span><br /><span>8. H&ograve;n non bộ phong thủy.</span><br /><span>9. Hệ thống b&aacute;o trộm đột nhập qua ĐT.</span><br /><span>10. Full nội thất.</span><br /><span>11. 4 camera an ninh.</span><br /><span>12. 5 ph&ograve;ng ngủ - 4 WC.</span><br /><span>Gi&aacute; b&aacute;n 3.1 tỷ - Li&ecirc;n hệ 0942.686.686.</span>', 1, 9, 3, 1, 1, 30000000, '5', '3', '1000', '4', 'ban-nha-1-tret-2-lau-duc-3-tam-9', 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', '2018-07-08 10:58:33', 1, 0, 2, '', '', 'Quy ', '', '', '', '', ''),
(10, 1, 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', 'http://batdongsan.local/media/20180706182443-fb3e_wm.jpg', '<span>Do chuyển sang mua liền kề n&ecirc;n m&igrave;nh cần b&aacute;n nh&agrave;:</span><br /><span>1. Sổ hồng ch&iacute;nh chủ.</span><br /><span>2. Diện t&iacute;ch: 67m2.</span><br /><span>3. Đ&uacute;c 3 tấm.</span><br /><span>4. Vị tr&iacute; ngay chợ đầu mối H&oacute;c M&ocirc;n.</span><br /><span>5. Nh&agrave; mới x&acirc;y rất đẹp.</span><br /><span>6. Nh&agrave; hướng nam rất m&aacute;t.</span><br /><span>7. Ng&otilde; th&ocirc;ng - xe hơi v&ocirc; tận nh&agrave;.</span><br /><span>8. H&ograve;n non bộ phong thủy.</span><br /><span>9. Hệ thống b&aacute;o trộm đột nhập qua ĐT.</span><br /><span>10. Full nội thất.</span><br /><span>11. 4 camera an ninh.</span><br /><span>12. 5 ph&ograve;ng ngủ - 4 WC.</span><br /><span>Gi&aacute; b&aacute;n 3.1 tỷ - Li&ecirc;n hệ 0942.686.686.</span>', 2, 8, 3, 1, 1, 10000000, '5', '3', '100', '4', 'ban-nha-1-tret-2-lau-duc-3-tam-10', 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', '2018-07-08 10:58:33', 1, 0, 2, '', '', '', '', '', '', '', ''),
(11, 2, 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', 'http://batdongsan.local/media/20180706182443-c423_wm.jpg', '<span>Do chuyển sang mua liền kề n&ecirc;n m&igrave;nh cần b&aacute;n nh&agrave;:</span><br /><span>1. Sổ hồng ch&iacute;nh chủ.</span><br /><span>2. Diện t&iacute;ch: 67m2.</span><br /><span>3. Đ&uacute;c 3 tấm.</span><br /><span>4. Vị tr&iacute; ngay chợ đầu mối H&oacute;c M&ocirc;n.</span><br /><span>5. Nh&agrave; mới x&acirc;y rất đẹp.</span><br /><span>6. Nh&agrave; hướng nam rất m&aacute;t.</span><br /><span>7. Ng&otilde; th&ocirc;ng - xe hơi v&ocirc; tận nh&agrave;.</span><br /><span>8. H&ograve;n non bộ phong thủy.</span><br /><span>9. Hệ thống b&aacute;o trộm đột nhập qua ĐT.</span><br /><span>10. Full nội thất.</span><br /><span>11. 4 camera an ninh.</span><br /><span>12. 5 ph&ograve;ng ngủ - 4 WC.</span><br /><span>Gi&aacute; b&aacute;n 3.1 tỷ - Li&ecirc;n hệ 0942.686.686.</span>', 1, 9, 3, 1, 1, 40000000, '5', '3', '1003', '4', 'ban-nha-1-tret-2-lau-duc-3-tam-11', 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', '2018-07-08 10:58:33', 1, 0, 2, '', '', 'Quy ', '', '', '', '', ''),
(12, 2, 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', 'http://batdongsan.local/media/20180706182443-fb3e_wm.jpg', '<span>Do chuyển sang mua liền kề n&ecirc;n m&igrave;nh cần b&aacute;n nh&agrave;:</span><br /><span>1. Sổ hồng ch&iacute;nh chủ.</span><br /><span>2. Diện t&iacute;ch: 67m2.</span><br /><span>3. Đ&uacute;c 3 tấm.</span><br /><span>4. Vị tr&iacute; ngay chợ đầu mối H&oacute;c M&ocirc;n.</span><br /><span>5. Nh&agrave; mới x&acirc;y rất đẹp.</span><br /><span>6. Nh&agrave; hướng nam rất m&aacute;t.</span><br /><span>7. Ng&otilde; th&ocirc;ng - xe hơi v&ocirc; tận nh&agrave;.</span><br /><span>8. H&ograve;n non bộ phong thủy.</span><br /><span>9. Hệ thống b&aacute;o trộm đột nhập qua ĐT.</span><br /><span>10. Full nội thất.</span><br /><span>11. 4 camera an ninh.</span><br /><span>12. 5 ph&ograve;ng ngủ - 4 WC.</span><br /><span>Gi&aacute; b&aacute;n 3.1 tỷ - Li&ecirc;n hệ 0942.686.686.</span>', 1, 9, 3, 1, 1, 30000000, '5', '3', '1000', '4', 'ban-nha-1-tret-2-lau-duc-3-tam-12', 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', '2018-07-08 10:58:33', 1, 0, 2, '', '', 'Quy ', '', '', '', '', ''),
(13, 2, 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', 'http://batdongsan.local/media/20180706182443-fb3e_wm.jpg', '<span>Do chuyển sang mua liền kề n&ecirc;n m&igrave;nh cần b&aacute;n nh&agrave;:</span><br /><span>1. Sổ hồng ch&iacute;nh chủ.</span><br /><span>2. Diện t&iacute;ch: 67m2.</span><br /><span>3. Đ&uacute;c 3 tấm.</span><br /><span>4. Vị tr&iacute; ngay chợ đầu mối H&oacute;c M&ocirc;n.</span><br /><span>5. Nh&agrave; mới x&acirc;y rất đẹp.</span><br /><span>6. Nh&agrave; hướng nam rất m&aacute;t.</span><br /><span>7. Ng&otilde; th&ocirc;ng - xe hơi v&ocirc; tận nh&agrave;.</span><br /><span>8. H&ograve;n non bộ phong thủy.</span><br /><span>9. Hệ thống b&aacute;o trộm đột nhập qua ĐT.</span><br /><span>10. Full nội thất.</span><br /><span>11. 4 camera an ninh.</span><br /><span>12. 5 ph&ograve;ng ngủ - 4 WC.</span><br /><span>Gi&aacute; b&aacute;n 3.1 tỷ - Li&ecirc;n hệ 0942.686.686.</span>', 1, 9, 3, 1, 1, 30000000, '5', '3', '1000', '4', 'ban-nha-1-tret-2-lau-duc-3-tam-13', 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', 'Bán nhà 1 trệt 2 lầu đúc 3 tấm', '2018-07-08 10:58:33', 1, 0, 2, '', '', 'Quy ', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `property_categories`
--

CREATE TABLE `property_categories` (
  `category_id` int(11) NOT NULL,
  `category_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category_slug` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category_active` int(11) NOT NULL,
  `category_seo_title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category_seo_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `property_categories`
--

INSERT INTO `property_categories` (`category_id`, `category_name`, `category_slug`, `category_description`, `category_active`, `category_seo_title`, `category_seo_description`, `category_order`) VALUES
(1, 'Nhà đất bán', 'nha-dat-ban', '', 1, 'Nhà đất bán 1', 'Nhà đất bán', 1),
(2, 'Nhà đất cho thuê', 'nha-dat-cho-thue', '', 1, 'Nhà đất cho thuê', 'Nhà đất cho thuê', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `property_characteristics`
--

CREATE TABLE `property_characteristics` (
  `characteristic_id` int(11) NOT NULL,
  `characteristic_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `characteristic_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `characteristic_slug` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `characteristic_active` int(11) NOT NULL,
  `characteristic_seo_title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `characteristic_seo_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `characteristic_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `property_characteristics`
--

INSERT INTO `property_characteristics` (`characteristic_id`, `characteristic_name`, `characteristic_description`, `characteristic_slug`, `characteristic_active`, `characteristic_seo_title`, `characteristic_seo_description`, `characteristic_order`) VALUES
(1, 'Có sân vườn', '', 'co-san-vuon', 1, '', '', 1),
(2, 'Full đồ & Nội thất', '', 'full-do-noi-that', 1, '2', '2', 2),
(3, ' Sổ đỏ chính chủ', '', 'so-do-chinh-chu', 1, '1', '1', 3);

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
(42, 1, 2),
(43, 1, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `property_contacts`
--

CREATE TABLE `property_contacts` (
  `contact_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `contact_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `contact_phone` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `contact_address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `contact_message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
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
(15, 2, 'http://batdongsan.local/media/20180706182443-c423_wm.jpg'),
(55, 1, 'http://batdongsan.local/media/20180817093230-909e_wm.jpg'),
(56, 1, 'http://batdongsan.local/media/20180817093232-b69d_wm.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `property_locations`
--

CREATE TABLE `property_locations` (
  `location_id` int(11) NOT NULL,
  `location_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `location_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `location_slug` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `location_active` int(11) NOT NULL,
  `location_seo_title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `location_seo_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `location_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `property_locations`
--

INSERT INTO `property_locations` (`location_id`, `location_name`, `location_description`, `location_slug`, `location_active`, `location_seo_title`, `location_seo_description`, `location_order`) VALUES
(1, 'Phú Quốc', '', 'phu-quoc', 1, '1', '1', 1),
(2, 'Vân Đồn', '', 'van-don', 1, '1', '1', 2),
(3, 'Bắc Vân Phong', '', 'bac-van-phong', 1, '', '', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `property_towns`
--

CREATE TABLE `property_towns` (
  `town_id` int(11) NOT NULL,
  `town_location_id` int(11) NOT NULL,
  `town_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `town_slug` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `town_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `town_active` int(11) NOT NULL,
  `town_seo_title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `town_seo_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `town_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `property_towns`
--

INSERT INTO `property_towns` (`town_id`, `town_location_id`, `town_name`, `town_slug`, `town_description`, `town_active`, `town_seo_title`, `town_seo_description`, `town_order`) VALUES
(1, 3, 'Đồng Xuân', 'Đồng Xuân', 'Đồng Xuân', 1, 'Đồng Xuân', 'Đồng Xuân', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `property_types`
--

CREATE TABLE `property_types` (
  `type_id` int(11) NOT NULL,
  `type_category_id` int(11) NOT NULL,
  `type_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type_slug` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type_active` int(11) NOT NULL,
  `type_seo_title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type_seo_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `property_types`
--

INSERT INTO `property_types` (`type_id`, `type_category_id`, `type_name`, `type_slug`, `type_description`, `type_active`, `type_seo_title`, `type_seo_description`, `type_order`) VALUES
(1, 2, 'Cho thuê nhà mặt phố', 'cho-thue-nha-mat-pho', '', 1, '12', '12', 1),
(2, 2, 'Cho thuê nhà kho, nhà xưởng, đất', 'cho-thue-nha-kho-nha-xuong-dat', '', 1, '', '', 2),
(3, 2, 'Cho thuê cửa hàng kiot', 'cho-thue-cua-hang-kiot', '', 1, '', '', 3),
(4, 2, 'Cho thuê condotel', 'cho-thue-condotel', '', 1, '', '', 4),
(5, 2, 'Cho thuê căn hộ chung cư', 'cho-thue-can-ho-chung-cu', '', 1, '', '', 5),
(6, 2, 'Cho thuê biệt thự', 'cho-thue-biet-thu', '', 1, '', '', 6),
(7, 2, 'Cho thuê bất động sản khác', 'cho-thue-bat-dong-san-khac', '', 1, '', '', 7),
(8, 1, ' Bán shophouse', 'ban-shophouse', '', 1, '1', '', 8),
(9, 1, 'Bán resort', 'ban-resort', '', 1, '1', '', 9),
(10, 1, 'Bán nhà riêng', 'ban-nha-rieng', '', 1, '', '', 10),
(11, 1, 'Bán nhà mặt phố', 'ban-nha-mat-pho', '', 1, '', '', 11),
(12, 1, 'Bán nhà kho ,xưởng', 'ban-nha-kho-xuong', '', 1, '', '', 12),
(13, 1, 'Bán khu nghỉ dưỡng', 'ban-khu-nghi-duong', '', 1, '', '', 13),
(14, 1, 'Bán khách sạn', 'ban-khach-san', '', 1, '', '', 14),
(16, 1, 'Bán đất nền', 'ban-dat-nen', '', 1, '', '', 16),
(17, 1, 'Bán cửa hàng, kiot', 'ban-cua-hang-kiot', '', 1, '', '', 17),
(18, 1, 'Bán condotel', 'ban-condotel', '', 1, '', '', 18),
(19, 1, 'Bán căn hộ chung cư', 'ban-can-ho-chung-cu', '', 1, '', '', 19),
(20, 1, 'Bán biệt thự', 'ban-biet-thu', '', 1, '', '', 20),
(21, 1, 'Bán bất động sản khác', 'ban-bat-dong-san-khac', '', 1, '', '', 21);

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
(230, 'New Article Group Added [GroupID: 3]', '2018-07-08 19:13:37', 'Dinh Nguyen'),
(231, 'New Article Group Added [GroupID: 1]', '2018-07-10 09:41:35', 'Dinh Nguyen'),
(232, 'New Article Group Added [GroupID: 2]', '2018-07-10 09:41:43', 'Dinh Nguyen'),
(233, 'New Article Group Added [GroupID: 3]', '2018-07-10 09:41:49', 'Dinh Nguyen'),
(234, 'New Article Added [ArticleID: 1 GroupID: 1]', '2018-07-10 09:43:21', 'Dinh Nguyen'),
(235, 'New Article Added [ArticleID: 2 GroupID: 2]', '2018-07-10 09:44:49', 'Dinh Nguyen'),
(236, 'New Article Added [ArticleID: 3 GroupID: 3]', '2018-07-10 09:46:38', 'Dinh Nguyen'),
(237, 'Article Group Updated [CatID: 2]', '2018-07-10 11:19:28', 'Dinh Nguyen'),
(238, 'Article Group Updated [CatID: 2]', '2018-07-10 11:19:33', 'Dinh Nguyen'),
(239, 'Article Group Updated [CatID: 2]', '2018-07-10 11:21:30', 'Dinh Nguyen'),
(240, 'Updated Type [ID: 1]', '2018-07-10 11:57:25', 'Dinh Nguyen'),
(241, 'Updated Type [ID: 1]', '2018-07-10 11:57:30', 'Dinh Nguyen'),
(242, 'Updated characteristic [ID: 3]', '2018-07-10 11:58:22', 'Dinh Nguyen'),
(243, 'Updated location [ID: 2]', '2018-07-10 12:00:01', 'Dinh Nguyen'),
(244, 'Article Group Updated [CatID: 2]', '2018-07-10 12:15:34', 'Dinh Nguyen'),
(245, 'Article Group Updated [CatID: 1]', '2018-07-10 12:15:56', 'Dinh Nguyen'),
(246, 'Updated characteristic [ID: 2]', '2018-07-10 13:28:25', 'Dinh Nguyen'),
(247, 'Failed Login Attempt [Email:midi9x@gmail.comma, Is Staff Member:Yes, IP:127.0.0.1]', '2018-07-14 16:56:11', NULL),
(248, 'Article Updated [ArticleID: 1]', '2018-07-15 10:27:59', 'Dinh Nguyen'),
(249, 'Article Updated [ArticleID: 2]', '2018-07-15 16:41:36', 'Dinh Nguyen'),
(250, 'Article Updated [ArticleID: 1]', '2018-07-17 13:18:48', 'Dinh Nguyen'),
(251, 'New contact [ID: 1]', '2018-07-17 15:27:25', 'Dinh Nguyen'),
(252, 'New contact [ID: 2]', '2018-07-17 15:35:18', 'Dinh Nguyen'),
(253, 'New contact [ID: 3]', '2018-07-17 15:50:57', 'Dinh Nguyen'),
(254, 'New contact [ID: 4]', '2018-07-17 15:55:59', 'Dinh Nguyen'),
(255, 'Updated contact [ID: 3]', '2018-07-17 16:00:10', 'Dinh Nguyen'),
(256, 'Email Send To [Email: dinhnm.dhpt@gmail.com, Template: New Contact Added/Registered (Welcome Email)]', '2018-07-18 15:20:16', NULL),
(257, 'Contact Created [ID: 5]', '2018-07-18 15:20:16', NULL),
(258, 'New Client Created [ID: 4]', '2018-07-18 15:20:16', NULL),
(259, 'Email Send To [Email: midi9x@gmail.com, Template: New Customer Registration (Sent to admins)]', '2018-07-18 15:20:19', 'Dinh Nguyen'),
(260, 'Failed Login Attempt [Email:dinhnm.dhpt@gmail.com, Is Staff Member:Yes, IP:127.0.0.1]', '2018-07-18 15:26:09', 'Dinh Nguyen'),
(261, 'Contact Updated [ID: 5]', '2018-07-18 15:47:58', 'Dinh1 Nguyen1'),
(262, 'Failed Login Attempt [Email:dinhnm.dhpt@gmail.com, Is Staff Member:Yes, IP:127.0.0.1]', '2018-07-18 15:51:15', 'Dinh1 Nguyen1'),
(263, 'Failed Login Attempt [Email:dinhnm.dhpt@gmail.com, Is Staff Member:No, IP:127.0.0.1]', '2018-07-18 15:51:37', 'Dinh Nguyen'),
(264, 'Failed Login Attempt [Email:dinhnm.dhpt@gmail.com, Is Staff Member:No, IP:127.0.0.1]', '2018-07-18 15:51:42', 'Dinh Nguyen'),
(265, 'Failed Login Attempt [Email:dinhnm.dhpt@gmail.com, Is Staff Member:No, IP:127.0.0.1]', '2018-07-18 15:51:49', 'Dinh Nguyen'),
(266, 'Contact Updated [ID: 4]', '2018-07-18 15:52:07', 'test test'),
(267, 'Failed Login Attempt [Email:dinhnm.dhpt@gmail.com, Is Staff Member:No, IP:127.0.0.1]', '2018-07-18 15:52:31', 'Dinh Nguyen'),
(268, 'Contact Updated [ID: 4]', '2018-07-18 15:56:36', 'test test'),
(269, 'Customer Info Updated From Clients Area [ID: 3]', '2018-07-18 15:58:27', 'test test'),
(270, 'New wishlist [ID: 1]', '2018-07-18 16:27:31', 'test test'),
(271, 'New wishlist [ID: 2]', '2018-07-18 16:28:16', 'test test'),
(272, 'New wishlist [ID: 3]', '2018-07-18 16:28:42', 'test test'),
(273, 'New wishlist [ID: 4]', '2018-07-18 16:28:45', 'test test'),
(274, 'New wishlist [ID: 5]', '2018-07-18 16:29:31', 'test test'),
(275, 'New contact [ID: 5]', '2018-07-18 16:33:08', 'test test'),
(276, 'New contact [ID: 6]', '2018-07-18 16:33:30', 'test test'),
(277, 'New wishlist [ID: 1]', '2018-07-18 16:43:01', 'test test'),
(278, 'New wishlist [ID: 1]', '2018-07-18 16:43:37', 'test test'),
(279, 'New wishlist [ID: 2]', '2018-07-18 16:44:29', 'test test'),
(280, 'Failed Login Attempt [Email:dinhnm.dhpt@gmail.com, Is Staff Member:No, IP:127.0.0.1]', '2018-07-19 09:51:12', NULL),
(281, 'New town [ID: 1]', '2018-08-02 14:56:15', 'Dinh Nguyen'),
(282, 'Town Status Changed [ID: 1 Status: 0]', '2018-08-02 14:56:30', 'Dinh Nguyen'),
(283, 'Town Status Changed [ID: 1 Status: 1]', '2018-08-02 14:56:48', 'Dinh Nguyen'),
(284, 'Updated town [ID: 1]', '2018-08-02 14:56:57', 'Dinh Nguyen'),
(285, 'Town Status Changed [ID: 1 Status: 1]', '2018-08-02 14:57:05', 'Dinh Nguyen'),
(286, 'Article Updated [ArticleID: 1]', '2018-08-02 15:08:26', 'Dinh Nguyen'),
(287, 'SMS to send via Clickatell to 01682485646, Message: Xin chào xx xx, \r\nBài viết `Bán nhà 1 trệt 2 lầu đúc 3 tấm` vừa được cập nhật tại Test. \r\nChi tiết: http://batdongsan.local/bat-dong-san/ban-nha-1-tret-2-lau-duc-3-tam-1', '2018-08-02 15:15:01', 'Dinh Nguyen'),
(288, 'SMS to send via Clickatell to 09999999991, Message: Xin chào Dinh1 Nguyen1, \r\nBài viết `Bán nhà 1 trệt 2 lầu đúc 3 tấm` vừa được cập nhật tại Test. \r\nChi tiết: http://batdongsan.local/bat-dong-san/ban-nha-1-tret-2-lau-duc-3-tam-1', '2018-08-02 15:15:02', 'Dinh Nguyen'),
(289, 'SMS to send via Clickatell to 01682485646, Message: Xin chào xx xx, \r\nBài viết `Bán nhà 1 trệt 2 lầu đúc 3 tấm` vừa được cập nhật tại Test. \r\nChi tiết: http://batdongsan.local/bat-dong-san/ban-nha-1-tret-2-lau-duc-3-tam-1', '2018-08-02 15:17:27', 'Dinh Nguyen'),
(290, 'SMS to send via Clickatell to 09999999991, Message: Xin chào Dinh1 Nguyen1, \r\nBài viết `Bán nhà 1 trệt 2 lầu đúc 3 tấm` vừa được cập nhật tại Test. \r\nChi tiết: http://batdongsan.local/bat-dong-san/ban-nha-1-tret-2-lau-duc-3-tam-1', '2018-08-02 15:17:29', 'Dinh Nguyen'),
(291, 'Article Updated [ArticleID: 1]', '2018-08-02 16:21:30', 'Dinh Nguyen'),
(292, 'Article Updated [ArticleID: 1]', '2018-08-03 09:37:43', 'Dinh Nguyen'),
(293, 'Article Updated [ArticleID: 3]', '2018-08-03 09:52:51', 'Dinh Nguyen'),
(294, 'Article Updated [ArticleID: 3]', '2018-08-03 09:52:56', 'Dinh Nguyen'),
(295, 'Knowledge Base Group Deleted', '2018-08-03 09:54:40', 'Dinh Nguyen'),
(296, 'Article Group Updated [GroupID: 1]', '2018-08-03 09:54:53', 'Dinh Nguyen'),
(297, 'Article Group Updated [GroupID: 1]', '2018-08-03 09:55:00', 'Dinh Nguyen'),
(298, 'Article Group Updated [GroupID: 3]', '2018-08-03 09:55:13', 'Dinh Nguyen'),
(299, 'Article Updated [ArticleID: 2]', '2018-08-03 10:38:17', 'Dinh Nguyen'),
(300, 'Article Updated [ArticleID: 3]', '2018-08-03 15:25:01', 'Dinh Nguyen'),
(301, 'New Article Added [ArticleID: 13 GroupID: 3]', '2018-08-03 15:25:31', 'Dinh Nguyen'),
(302, 'Article Group Updated [GroupID: 1]', '2018-08-06 13:18:21', 'Dinh Nguyen'),
(303, 'advice Article Group Added [GroupID: 4]', '2018-08-06 13:25:52', 'Dinh Nguyen'),
(304, 'New Article Group Added [GroupID: 4]', '2018-08-06 14:15:03', 'Dinh Nguyen'),
(305, 'Article Updated [ArticleID: 2]', '2018-08-06 15:57:28', 'Dinh Nguyen'),
(306, 'Article Updated [ArticleID: 1]', '2018-08-08 11:14:09', 'Dinh Nguyen'),
(307, 'Article Updated [ArticleID: 1]', '2018-08-08 11:40:09', 'Dinh Nguyen'),
(308, 'Article Updated [ArticleID: 1]', '2018-08-08 13:02:53', 'Dinh Nguyen'),
(309, 'Article Updated [ArticleID: 1]', '2018-08-08 13:10:43', 'Dinh Nguyen'),
(310, 'Article Updated [ArticleID: 1]', '2018-08-08 13:12:46', 'Dinh Nguyen'),
(311, 'Article Updated [ArticleID: 1]', '2018-08-08 13:13:01', 'Dinh Nguyen'),
(312, 'Article Updated [ArticleID: 1]', '2018-08-08 13:17:56', 'Dinh Nguyen'),
(313, 'Article Updated [ArticleID: 1]', '2018-08-08 13:20:05', 'Dinh Nguyen'),
(314, 'New contact [ID: 7]', '2018-08-08 14:03:58', 'Dinh Nguyen'),
(315, 'New contact [ID: 8]', '2018-08-08 14:05:45', 'Dinh Nguyen'),
(316, 'New contact [ID: 9]', '2018-08-08 14:06:04', 'Dinh Nguyen'),
(317, 'New contact [ID: 10]', '2018-08-08 14:07:28', 'Dinh Nguyen'),
(318, 'New contact [ID: 11]', '2018-08-08 14:07:56', 'Dinh Nguyen'),
(319, 'New contact [ID: 12]', '2018-08-08 14:08:10', 'Dinh Nguyen'),
(320, 'New contact [ID: 13]', '2018-08-08 14:08:30', 'Dinh Nguyen'),
(321, 'New contact [ID: 14]', '2018-08-08 14:10:12', 'Dinh Nguyen'),
(322, 'Contact Updated [ContactID: 1]', '2018-08-09 09:41:32', 'Dinh Nguyen'),
(323, 'Contact Updated [ContactID: 1]', '2018-08-09 09:41:37', 'Dinh Nguyen'),
(324, 'Contact Updated [ContactID: 1]', '2018-08-09 09:42:26', 'Dinh Nguyen'),
(325, 'New Contact Added [ContactID: 7]', '2018-08-09 10:18:37', 'Dinh Nguyen'),
(326, 'New Contact Added [ContactID: 8]', '2018-08-09 10:18:49', 'Dinh Nguyen'),
(327, 'New Contact Added [ContactID: 9]', '2018-08-09 10:19:00', 'Dinh Nguyen'),
(328, 'New Contact Added [ContactID: 10]', '2018-08-09 10:20:17', 'Dinh Nguyen'),
(329, 'New Contact Added [ContactID: 11]', '2018-08-09 10:24:58', 'Dinh Nguyen'),
(330, 'New Contact Added [ContactID: 12]', '2018-08-09 10:48:58', 'Dinh Nguyen'),
(331, 'New Contact Added [ContactID: 13]', '2018-08-09 10:49:34', 'Dinh Nguyen'),
(332, 'New Contact Added [ContactID: 1]', '2018-08-09 10:51:14', 'Dinh Nguyen'),
(333, 'New Contact Added [ContactID: 2]', '2018-08-09 10:51:23', 'Dinh Nguyen'),
(334, 'New Contact Added [ContactID: 3]', '2018-08-09 10:51:33', 'Dinh Nguyen'),
(335, 'Banner Updated [Banner: banner1]', '2018-08-09 14:18:40', 'Dinh Nguyen'),
(336, 'Banner Updated [Banner: banner1]', '2018-08-09 14:33:35', 'Dinh Nguyen'),
(337, 'Banner Updated [Banner: banner2]', '2018-08-09 14:35:07', 'Dinh Nguyen'),
(338, 'Banner Updated [Banner: banner3]', '2018-08-09 14:35:17', 'Dinh Nguyen'),
(339, 'Banner Updated [Banner: banner1]', '2018-08-09 14:36:12', 'Dinh Nguyen'),
(340, 'Banner Updated [Banner: banner1]', '2018-08-09 14:36:17', 'Dinh Nguyen'),
(341, 'Banner Updated [Banner: banner2]', '2018-08-09 15:02:41', 'Dinh Nguyen'),
(342, 'Banner Updated [Banner: banner3]', '2018-08-09 15:02:46', 'Dinh Nguyen'),
(343, 'Email Send To [Email: midi9x@gmail.com, Template: Forgot Password]', '2018-08-10 16:27:17', 'Dinh Nguyen'),
(344, 'User Reseted Password [User ID:4, Is Staff Member:No, IP:127.0.0.1]', '2018-08-10 16:27:53', 'Dinh Nguyen'),
(345, 'Email Send To [Email: midi9x@gmail.com, Template: Password Reset - Confirmation]', '2018-08-10 16:27:56', 'Dinh Nguyen'),
(346, 'Customer Info Updated From Clients Area [ID: 3]', '2018-08-14 16:27:45', 'test test'),
(347, 'New Department Added [test, ID: 1]', '2018-08-14 16:45:13', 'Dinh Nguyen'),
(348, 'Email Send To [Email: midi9x@gmail.com, Template: New Ticket Opened - Autoresponse]', '2018-08-14 16:47:47', 'test test'),
(349, 'New Ticket Created [ID: 1]', '2018-08-14 16:47:47', 'test test'),
(350, 'New Ticket Reply [ReplyID: 1]', '2018-08-14 16:49:32', 'Dinh Nguyen'),
(351, 'Email Send To [Email: midi9x@gmail.com, Template: Ticket Reply (Sent to Customer)]', '2018-08-14 16:49:35', 'Dinh Nguyen'),
(352, 'New Ticket Reply [ReplyID: 2]', '2018-08-15 09:08:03', 'test test'),
(353, 'New Ticket Reply [ReplyID: 3]', '2018-08-15 09:23:45', 'test test'),
(354, 'Updated town [ID: 1]', '2018-08-15 09:36:43', 'Dinh Nguyen'),
(355, 'New Page Added [ArticleID: 2', '2018-08-15 13:06:51', 'Dinh Nguyen'),
(356, 'Page Updated [ArticleID: 2]', '2018-08-15 13:07:24', 'Dinh Nguyen'),
(357, 'Page Deleted [ArticleID: 2]', '2018-08-15 13:07:29', 'Dinh Nguyen'),
(358, 'Page Updated [ArticleID: 1]', '2018-08-15 13:09:48', 'Dinh Nguyen'),
(359, 'Page Updated [ArticleID: 1]', '2018-08-15 13:10:19', 'Dinh Nguyen'),
(360, 'Page Updated [ArticleID: 1]', '2018-08-15 13:10:59', 'Dinh Nguyen'),
(361, 'New Page Added [ArticleID: 3', '2018-08-15 13:11:48', 'Dinh Nguyen'),
(362, 'Page Updated [ArticleID: 1]', '2018-08-15 13:43:42', 'Dinh Nguyen'),
(363, 'Page Updated [ArticleID: 3]', '2018-08-15 13:44:43', 'Dinh Nguyen'),
(364, 'New Contact Added [ContactID: 4]', '2018-08-15 14:05:10', 'Dinh Nguyen'),
(365, 'Page Deleted [ArticleID: 3]', '2018-08-15 14:07:29', 'Dinh Nguyen'),
(366, 'Contact Updated [ContactID: 4]', '2018-08-15 14:14:33', 'Dinh Nguyen'),
(367, 'New Contact Added [ContactID: 5]', '2018-08-15 14:14:54', 'Dinh Nguyen'),
(368, 'New Page Added [ArticleID: 4', '2018-08-15 14:24:38', 'Dinh Nguyen'),
(369, 'New Page Added [ArticleID: 5', '2018-08-15 14:24:46', 'Dinh Nguyen'),
(370, 'Page Updated [ArticleID: 5]', '2018-08-15 14:32:18', 'Dinh Nguyen'),
(371, 'Page Updated [ArticleID: 5]', '2018-08-15 14:34:34', 'Dinh Nguyen'),
(372, 'Page Updated [ArticleID: 5]', '2018-08-15 14:35:44', 'Dinh Nguyen'),
(373, 'Page Updated [ArticleID: 4]', '2018-08-15 14:54:24', 'Dinh Nguyen'),
(374, 'Page Updated [ArticleID: 4]', '2018-08-15 14:55:08', 'Dinh Nguyen'),
(375, 'Page Updated [ArticleID: 4]', '2018-08-15 14:55:29', 'Dinh Nguyen'),
(376, 'SMS to send via Clickatell to 01682485646, Message: Xin chào xx xx,', '2018-08-16 10:10:05', 'Dinh Nguyen'),
(377, 'SMS to send via Clickatell to 09999999991, Message: Xin chào Dinh1 Nguyen1,', '2018-08-16 10:10:06', 'Dinh Nguyen'),
(378, 'Article Updated [ArticleID: 1]', '2018-08-16 10:10:10', 'Dinh Nguyen'),
(379, 'Article Updated [ArticleID: 1]', '2018-08-16 10:10:15', 'Dinh Nguyen'),
(380, 'Article Updated [ArticleID: 1]', '2018-08-16 10:12:57', 'Dinh Nguyen'),
(381, 'Article Updated [ArticleID: 1]', '2018-08-16 10:13:04', 'Dinh Nguyen'),
(382, 'Email Send To [Email: midi9x@gmail.com, Template: Forgot Password]', '2018-08-16 16:45:37', 'Dinh Nguyen'),
(383, 'Email Send To [Email: midi9x@gmail.com, Template: Forgot Password]', '2018-08-16 16:45:57', 'Dinh Nguyen'),
(384, 'Email Send To [Email: dinhnm.dhpt@gmail.com, Template: New Contact Added/Registered (Welcome Email)]', '2018-08-16 16:46:25', 'Dinh Nguyen'),
(385, 'Contact Created [ID: 6]', '2018-08-16 16:46:25', 'Dinh Nguyen'),
(386, 'New Client Created [ID: 5, From Staff: 1]', '2018-08-16 16:46:25', 'Dinh Nguyen'),
(387, 'Email Send To [Email: midi9x@gmail.com, Template: New Customer Registration (Sent to admins)]', '2018-08-16 16:46:28', 'DS DSD'),
(388, 'User Reseted Password [User ID:4, Is Staff Member:No, IP:127.0.0.1]', '2018-08-16 16:49:22', NULL),
(389, 'Email Send To [Email: midi9x@gmail.com, Template: Password Reset - Confirmation]', '2018-08-16 16:49:25', NULL),
(390, 'Article Updated [ArticleID: 1]', '2018-08-17 14:20:38', 'Dinh Nguyen'),
(391, 'Article Updated [ArticleID: 1]', '2018-08-17 14:23:02', 'Dinh Nguyen'),
(392, 'Article Updated [ArticleID: 1]', '2018-08-17 14:23:25', 'Dinh Nguyen'),
(393, 'Staff Profile Updated [Staff: Dinh Nguyen]', '2018-08-17 14:24:12', 'Dinh Nguyen'),
(394, 'Article Updated [ArticleID: 1]', '2018-08-17 14:24:22', 'Hoang Minh'),
(395, 'Article Updated [ArticleID: 1]', '2018-08-17 14:24:36', 'Hoang Minh'),
(396, 'New Currency Added [ID: VND]', '2018-08-17 15:11:57', 'Hoang Minh'),
(397, 'Department Updated [Name: Phòng kinh doanh, ID: 1]', '2018-08-17 15:14:50', 'Hoang Minh'),
(398, 'Role Updated [ID: 1.Nhân viên]', '2018-08-17 15:21:57', 'Hoang Minh'),
(399, 'Payment Mode Updated [ID: 1, Name:Chuyển khoản ngân hàng]', '2018-08-17 15:24:52', 'Hoang Minh'),
(400, 'Staff Member Updated [ID: 1, Hoang Minh]', '2018-08-17 16:37:14', 'Hoang Minh'),
(401, 'Staff Member Updated [ID: 1, Hoang Minh]', '2018-08-17 16:37:32', 'Hoang Minh'),
(402, 'Email Send To [Email: dinhnm.dhpt@gmail.com, Template: New Staff Created (Welcome Email)]', '2018-08-17 16:38:55', 'Hoang Minh'),
(403, 'New Staff Member Added [ID: 2, Nhan Vien]', '2018-08-17 16:38:55', 'Hoang Minh'),
(404, 'Staff Member Updated [ID: 2, Nhan Vien]', '2018-08-17 16:39:12', 'Hoang Minh'),
(405, 'Role Updated [ID: 1.Nhân viên]', '2018-08-17 16:43:59', 'Hoang Minh'),
(406, 'Role Updated [ID: 1.Nhân viên]', '2018-08-17 16:44:16', 'Hoang Minh'),
(407, 'Tried to access page where don\'t have permission [property]', '2018-08-17 16:44:37', 'Nhan Vien'),
(408, 'Staff Member Updated [ID: 2, Nhan Vien]', '2018-08-17 16:45:12', 'Hoang Minh');

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
(3, 'xx56', '56', '56', 243, '56', '56', '5', '56', '5', '2018-07-01 13:48:47', 1, NULL, '', '', '', '', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, 1, 1),
(2, 'xx', '', '', 0, '', '', '', '', '', '2018-06-29 10:26:13', 1, NULL, '', '', '', '', 0, '', '', '', '', 0, NULL, NULL, '', 0, 0, NULL, 1, 1),
(4, 'altplus.com.vn', NULL, NULL, 243, NULL, NULL, NULL, NULL, NULL, '2018-07-18 15:20:13', 1, NULL, NULL, NULL, NULL, NULL, 243, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, 1, 0),
(5, 'SD', NULL, NULL, 243, NULL, NULL, NULL, NULL, NULL, '2018-08-16 16:46:23', 1, NULL, NULL, NULL, NULL, NULL, 243, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, 1, 1);

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
(18, 6, 3),
(25, 1, 5),
(26, 2, 5),
(27, 3, 5),
(28, 4, 5),
(29, 5, 5),
(30, 6, 5),
(31, 1, 6),
(32, 2, 6),
(33, 3, 6),
(34, 4, 6),
(35, 5, 6),
(36, 6, 6);

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
(4, 3, 1, 'test', 'test', 'midi9x@gmail.com', '0999999999', 'x', '2018-07-01 13:48:47', '$2a$08$ptwPFGqTVv60z4pHVot3ieytL8BwhrGW2RgUC1UzsRTyp.g0dq9MS', NULL, NULL, '127.0.0.1', '2018-08-17 16:20:15', '2018-08-16 16:49:22', 1, NULL, '', 1, 1, 1, 1, 1, 1, 1),
(3, 2, 1, 'xx', 'xx', 'dinh.nm@altplus.com.vn', '01682485646', '', '2018-06-29 10:26:29', '$2a$08$55yvqu5IHSOEfPEAUeOHkucjQNMfbZ.GUPE1l5r.HiWd.oij3qcoy', NULL, NULL, NULL, NULL, NULL, 1, NULL, '', 1, 1, 1, 1, 1, 1, 1),
(5, 4, 1, 'Dinh1', 'Nguyen1', 'dinhnm.dhpt@gmail.com1', '09999999991', 'HN1', '2018-07-18 15:20:13', '$2a$08$w/p1Eg83gKS2I8hzEwI1buDIw3HGQmzy.HNsnNHVjmqHbikEqWmI6', NULL, NULL, '127.0.0.1', '2018-07-18 15:39:18', NULL, 1, '36614391_1822302557835807_2931761924838260736_n.jpg', NULL, 1, 1, 1, 1, 1, 1, 1),
(6, 5, 1, 'DS', 'DSD', 'dinhnm.dhpt@gmail.com', '0999', 'DS', '2018-08-16 16:46:23', '$2a$08$cqFaMNQYC4gvXeK29lWeKuwwS1q/veUEUDF3MB4Lsa81rUJZ3tcMK', NULL, NULL, '127.0.0.1', '2018-08-16 16:46:25', NULL, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, 1);

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
(1, '$', 'USD', 0),
(2, '€', 'EUR', 0),
(3, 'VND', 'VND', 1);

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
(2, 1, 2),
(3, 1, 4),
(4, 1, 5);

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

--
-- Đang đổ dữ liệu cho bảng `tbldepartments`
--

INSERT INTO `tbldepartments` (`departmentid`, `name`, `imap_username`, `email`, `email_from_header`, `host`, `password`, `encryption`, `delete_after_import`, `calendar_id`, `hidefromclient`) VALUES
(1, 'Phòng kinh doanh', 'midi9x@gmail.com', 'midi9x@gmail.com', 0, '', '', '', 0, '', 0);

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
(1, 'Chuyển khoản ngân hàng', '', 1, 0, 0, 1, 1);

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
(2, 'companyname', 'VSR', 1),
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
(16, 'company_logo', 'logo.png', 1),
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
(29, 'invoice_company_name', 'VSR', 1),
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
(69, 'favicon', 'favicon.png', 1),
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
(84, 'aside_menu_active', '{\"aside_menu_active\":[{\"name\":\"als_dashboard\",\"url\":\"/\",\"permission\":\"\",\"icon\":\"fa fa-tachometer\",\"id\":\"dashboard\"},{\"name\":\"property\",\"url\":\"property\",\"permission\":\"property\",\"icon\":\"fa fa-building\",\"id\":\"property\",\"children\":[{\"name\":\"list_product\",\"url\":\"property/index/1\",\"permission\":\"property\",\"icon\":\"fa fa-list\",\"id\":\"list-property-1\"},{\"name\":\"list_project\",\"url\":\"property/index/2\",\"permission\":\"property\",\"icon\":\"fa fa-list\",\"id\":\"list-property-2\"},{\"name\":\"property_article_new_article\",\"url\":\"property/article\",\"permission\":\"property\",\"icon\":\"fa fa-plus\",\"id\":\"new-property\"},{\"name\":\"als_kb_categories\",\"url\":\"property/manage_categories\",\"permission\":\"property\",\"icon\":\"fa fa-object-group\",\"id\":\"manage-categories\"},{\"name\":\"als_kb_types\",\"url\":\"property/manage_types\",\"permission\":\"property\",\"icon\":\"fa fa-asterisk\",\"id\":\"manage-types\"},{\"name\":\"als_kb_locations\",\"url\":\"property/manage_locations\",\"permission\":\"property\",\"icon\":\"fa fa-location-arrow\",\"id\":\"manage-locations\"},{\"name\":\"als_kb_towns\",\"url\":\"property/manage_towns\",\"permission\":\"property\",\"icon\":\"fa fa-map-marker\",\"id\":\"manage-towns\"},{\"name\":\"als_kb_characteristics\",\"url\":\"property/manage_characteristics\",\"permission\":\"property\",\"icon\":\"fa fa-check-square\",\"id\":\"manage-characteristics\"},{\"name\":\"property_contacts\",\"url\":\"property/manage_contacts\",\"permission\":\"property\",\"icon\":\"fa fa-envelope\",\"id\":\"manage-contacts\"}]},{\"name\":\"news_string\",\"url\":\"news\",\"permission\":\"news\",\"icon\":\"fa fa-newspaper-o\",\"id\":\"manage-news\",\"children\":[{\"name\":\"list_posts\",\"url\":\"news\",\"permission\":\"news\",\"icon\":\"fa fa-list\",\"id\":\"list-news\"},{\"name\":\"kb_article_new_article\",\"url\":\"news/article\",\"permission\":\"news\",\"icon\":\"fa fa-plus\",\"id\":\"new-news\"},{\"name\":\"als_kb_groups\",\"url\":\"news/manage_groups\",\"permission\":\"news\",\"icon\":\"fa fa-object-group\",\"id\":\"manage-news-group\"}]},{\"name\":\"advices_string\",\"url\":\"advicadviceses\",\"permission\":\"advices\",\"icon\":\"fa fa-hacker-news\",\"id\":\"manage-advices\",\"children\":[{\"name\":\"list_posts\",\"url\":\"advices\",\"permission\":\"advices\",\"icon\":\"fa fa-list\",\"id\":\"list-advices\"},{\"name\":\"kb_article_new_article\",\"url\":\"advices/article\",\"permission\":\"advices\",\"icon\":\"fa fa-plus\",\"id\":\"new-advices\"},{\"name\":\"als_kb_groups\",\"url\":\"advices/manage_groups\",\"permission\":\"advices\",\"icon\":\"fa fa-object-group\",\"id\":\"manage-advices-group\"}]},{\"name\":\"mreports_string\",\"url\":\"mreports\",\"permission\":\"mreports\",\"icon\":\"fa fa-adn\",\"id\":\"manage-mreports\",\"children\":[{\"name\":\"list_posts\",\"url\":\"mreports\",\"permission\":\"mreports\",\"icon\":\"fa fa-list\",\"id\":\"list-mreports\"},{\"name\":\"kb_article_new_article\",\"url\":\"mreports/article\",\"permission\":\"mreports\",\"icon\":\"fa fa-plus\",\"id\":\"new-mreports\"},{\"name\":\"als_kb_groups\",\"url\":\"mreports/manage_groups\",\"permission\":\"mreports\",\"icon\":\"fa fa-object-group\",\"id\":\"manage-mreports-group\"}]},{\"name\":\"pages\",\"url\":\"pages\",\"permission\":\"pages\",\"icon\":\"fa fa-file\",\"id\":\"pages\"},{\"name\":\"contacts\",\"url\":\"contacts\",\"permission\":\"contacts\",\"icon\":\"fa fa-envelope\",\"id\":\"manage-contacts\",\"children\":[{\"name\":\"menu_contact_email\",\"url\":\"contacts/index/1\",\"permission\":\"contacts\",\"icon\":\"fa fa-list\",\"id\":\"contact-email\"},{\"name\":\"menu_contact_info\",\"url\":\"contacts/index/2\",\"permission\":\"contacts\",\"icon\":\"fa fa-list\",\"id\":\"contact-info\"},{\"name\":\"menu_contact_property\",\"url\":\"contacts/index/3\",\"permission\":\"contacts\",\"icon\":\"fa fa-list\",\"id\":\"contact-property\"},{\"name\":\"page_contacts\",\"url\":\"contacts/index/4\",\"permission\":\"contacts\",\"icon\":\"fa fa-list\",\"id\":\"contact-contact\"}]},{\"name\":\"als_clients\",\"url\":\"clients\",\"permission\":\"customers\",\"icon\":\"fa fa-user-o\",\"id\":\"customers\"},{\"name\":\"support\",\"url\":\"tickets\",\"permission\":\"\",\"icon\":\"fa fa-ticket\",\"id\":\"tickets\"},{\"name\":\"als_sales\",\"url\":\"#\",\"permission\":\"\",\"icon\":\"fa fa-balance-scale\",\"id\":\"sales\",\"children\":[{\"name\":\"proposals\",\"url\":\"proposals\",\"permission\":\"proposals\",\"icon\":\"\",\"id\":\"child-proposals\"},{\"name\":\"estimates\",\"url\":\"estimates/list_estimates\",\"permission\":\"estimates\",\"icon\":\"\",\"id\":\"child-estimates\"},{\"name\":\"invoices\",\"url\":\"invoices/list_invoices\",\"permission\":\"invoices\",\"icon\":\"\",\"id\":\"child-invoices\"},{\"name\":\"payments\",\"url\":\"payments\",\"permission\":\"payments\",\"icon\":\"\",\"id\":\"child-payments\"},{\"name\":\"credit_notes\",\"url\":\"credit_notes\",\"permission\":\"credit_notes\",\"icon\":\"\",\"id\":\"credit_notes\"},{\"name\":\"items\",\"url\":\"invoice_items\",\"permission\":\"items\",\"icon\":\"\",\"id\":\"child-items\"}]},{\"name\":\"als_expenses\",\"url\":\"expenses/list_expenses\",\"permission\":\"expenses\",\"icon\":\"fa fa-file-text-o\",\"id\":\"expenses\"},{\"name\":\"als_contracts\",\"url\":\"contracts\",\"permission\":\"contracts\",\"icon\":\"fa fa-file\",\"id\":\"contracts\"},{\"name\":\"projects\",\"url\":\"projects\",\"permission\":\"\",\"icon\":\"fa fa-bars\",\"id\":\"projects\"},{\"name\":\"als_tasks\",\"url\":\"tasks/list_tasks\",\"permission\":\"\",\"icon\":\"fa fa-tasks\",\"id\":\"tasks\"},{\"name\":\"als_utilities\",\"url\":\"#\",\"permission\":\"\",\"icon\":\"fa fa-cogs\",\"id\":\"utilities\",\"children\":[{\"name\":\"als_media\",\"url\":\"utilities/media\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-media\"},{\"name\":\"bulk_pdf_exporter\",\"url\":\"utilities/bulk_pdf_exporter\",\"permission\":\"bulk_pdf_exporter\",\"icon\":\"\",\"id\":\"child-bulk-pdf-exporter\"},{\"name\":\"als_calendar_submenu\",\"url\":\"utilities/calendar\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-calendar\"},{\"name\":\"als_goals_tracking\",\"url\":\"goals\",\"permission\":\"goals\",\"icon\":\"\",\"id\":\"child-goals-tracking\"},{\"name\":\"als_surveys\",\"url\":\"surveys\",\"permission\":\"surveys\",\"icon\":\"\",\"id\":\"child-surveys\"},{\"name\":\"als_announcements_submenu\",\"url\":\"announcements\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"child-announcements\"},{\"name\":\"utility_backup\",\"url\":\"utilities/backup\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"child-database-backup\"},{\"name\":\"als_activity_log_submenu\",\"url\":\"utilities/activity_log\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"child-activity-log\"},{\"name\":\"ticket_pipe_log\",\"url\":\"utilities/pipe_log\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"ticket-pipe-log\"}]},{\"name\":\"als_reports\",\"url\":\"#\",\"permission\":\"reports\",\"icon\":\"fa fa-area-chart\",\"id\":\"reports\",\"children\":[{\"name\":\"als_reports_sales_submenu\",\"url\":\"reports/sales\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-sales\"},{\"name\":\"als_reports_expenses\",\"url\":\"reports/expenses\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-expenses\"},{\"name\":\"als_expenses_vs_income\",\"url\":\"reports/expenses_vs_income\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-expenses-vs-income\"},{\"name\":\"als_reports_leads_submenu\",\"url\":\"reports/leads\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-leads\"},{\"name\":\"timesheets_overview\",\"url\":\"staff/timesheets?view=all\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"reports_timesheets_overview\"},{\"name\":\"als_kb_articles_submenu\",\"url\":\"reports/knowledge_base_articles\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-kb-articles\"}]}]}', 1),
(85, 'send_estimate_expiry_reminder_before', '4', 1),
(86, 'leads_default_source', '', 1),
(87, 'leads_default_status', '', 1),
(88, 'proposal_expiry_reminder_enabled', '1', 1),
(89, 'send_proposal_expiry_reminder_before', '4', 1),
(90, 'default_contact_permissions', 'a:6:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"6\";}', 1),
(91, 'pdf_logo_width', '150', 1),
(92, 'aside_menu_inactive', '{\"aside_menu_inactive\":[{\"name\":\"als_kb\",\"url\":\"knowledge_base\",\"permission\":\"knowledge_base\",\"icon\":\"fa fa-folder-open-o\",\"id\":\"knowledge-base\"},{\"name\":\"subscriptions\",\"url\":\"subscriptions\",\"permission\":\"subscriptions\",\"icon\":\"fa fa-repeat\",\"id\":\"subscriptions\"},{\"name\":\"als_leads\",\"url\":\"leads\",\"permission\":\"is_staff_member\",\"icon\":\"fa fa-tty\",\"id\":\"leads\"}]}', 1),
(93, 'setup_menu_active', '{\"setup_menu_active\":[{\"name\":\"als_staff\",\"url\":\"staff\",\"permission\":\"staff\",\"icon\":\"\",\"id\":\"staff\"},{\"name\":\"clients\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"customers\",\"children\":[{\"name\":\"customer_groups\",\"url\":\"clients\\/groups\",\"permission\":\"\",\"icon\":\"\",\"id\":\"groups\"}]},{\"name\":\"support\",\"url\":\"#\",\"permission\":\"\",\"icon\":\"\",\"id\":\"tickets\",\"children\":[{\"name\":\"acs_departments\",\"url\":\"departments\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"departments\"},{\"name\":\"acs_ticket_predefined_replies_submenu\",\"url\":\"tickets\\/predefined_replies\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"predefined-replies\"},{\"name\":\"acs_ticket_priority_submenu\",\"url\":\"tickets\\/priorities\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"ticket-priority\"},{\"name\":\"acs_ticket_statuses_submenu\",\"url\":\"tickets\\/statuses\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"ticket-statuses\"},{\"name\":\"acs_ticket_services_submenu\",\"url\":\"tickets\\/services\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"services\"},{\"name\":\"spam_filters\",\"url\":\"tickets\\/spam_filters\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"spam-filters\"}]},{\"name\":\"acs_finance\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"finance\",\"children\":[{\"name\":\"acs_sales_taxes_submenu\",\"url\":\"taxes\",\"permission\":\"\",\"icon\":\"\",\"id\":\"taxes\"},{\"name\":\"acs_sales_currencies_submenu\",\"url\":\"currencies\",\"permission\":\"\",\"icon\":\"\",\"id\":\"currencies\"},{\"name\":\"acs_sales_payment_modes_submenu\",\"url\":\"paymentmodes\",\"permission\":\"\",\"icon\":\"\",\"id\":\"payment-modes\"},{\"name\":\"acs_expense_categories\",\"url\":\"expenses\\/categories\",\"permission\":\"\",\"icon\":\"\",\"id\":\"expenses-categories\"}]},{\"name\":\"acs_contracts\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"contracts\",\"children\":[{\"name\":\"acs_contract_types\",\"url\":\"contracts\\/types\",\"permission\":\"\",\"icon\":\"\",\"id\":\"contract-types\"}]},{\"name\":\"acs_email_templates\",\"url\":\"emails\",\"permission\":\"email_templates\",\"icon\":\"\",\"id\":\"email-templates\"},{\"name\":\"acs_roles\",\"url\":\"roles\",\"permission\":\"roles\",\"icon\":\"\",\"id\":\"roles\"},{\"name\":\"menu_builder\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"menu-builder\",\"children\":[{\"name\":\"main_menu\",\"url\":\"utilities\\/main_menu\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"organize-sidebar\"},{\"name\":\"setup_menu\",\"url\":\"utilities\\/setup_menu\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"setup-menu\"},{\"name\":\"web_menu\",\"url\":\"utilities\\/web_menu\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"web-menu\"}]},{\"name\":\"theme_style\",\"url\":\"utilities\\/theme_style\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"theme-style\"},{\"name\":\"acs_settings\",\"url\":\"settings\",\"permission\":\"settings\",\"icon\":\"\",\"id\":\"settings\"},{\"name\":\"banners\",\"url\":\"options\\/banner\",\"permission\":\"options\",\"icon\":\"\",\"id\":\"options-banner\"},{\"name\":\"options_other\",\"url\":\"options\",\"permission\":\"options\",\"icon\":\"\",\"id\":\"options-other\"}]}', 1),
(94, 'access_tickets_to_none_staff_members', '0', 1),
(95, 'setup_menu_inactive', '{\"setup_menu_inactive\":[{\"name\":\"acs_leads\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"leads\",\"children\":[{\"name\":\"acs_leads_sources_submenu\",\"url\":\"leads\\/sources\",\"permission\":\"\",\"icon\":\"\",\"id\":\"sources\"},{\"name\":\"acs_leads_statuses_submenu\",\"url\":\"leads\\/statuses\",\"permission\":\"\",\"icon\":\"\",\"id\":\"statuses\"},{\"name\":\"leads_email_integration\",\"url\":\"leads\\/email_integration\",\"permission\":\"\",\"icon\":\"\",\"id\":\"email-integration\"},{\"name\":\"web_to_lead\",\"url\":\"leads\\/forms\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"web-to-lead\"}]},{\"name\":\"gdpr_short\",\"url\":\"gdpr\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"gdpr\"},{\"name\":\"asc_custom_fields\",\"url\":\"custom_fields\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"custom-fields\"}]}', 1),
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
(132, 'theme_style', '[{\"id\":\"top-header\",\"color\":\"#3a4283\"}]', 1),
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
(292, 'company_logo_dark', 'logo_dark.png', 1),
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
(402, '_smtp_test_email_success', '1', 0),
(403, 'home_title', 'Trang chủ', 1),
(404, 'home_description', 'VSR', 1),
(405, 'header_contact', '1900.8198', 1),
(406, 'header_time', '8h - 17h hằng ngày', 1),
(407, 'footer_facebook', '#', 1),
(408, 'footer_youtube', '#', 1),
(409, 'footer_google', '#', 1),
(410, 'footer_doitac', '[\"http:\\/\\/batdongsan.local\\/media\\/vingroup.png\",\"http:\\/\\/batdongsan.local\\/media\\/flc.png\",\"http:\\/\\/batdongsan.local\\/media\\/giaphat.png\",\"http:\\/\\/batdongsan.local\\/media\\/flc.png\",\"http:\\/\\/batdongsan.local\\/media\\/giaphat.png\",\"http:\\/\\/batdongsan.local\\/media\\/ceo.jpg\"]', 1),
(411, 'url_banner_1', 'http://batdongsan.local/', 1),
(412, 'image_banner_1', 'http://batdongsan.local/media/banner-1.png', 1),
(414, 'active_banner_1', '1', 1),
(415, 'url_banner_2', 'http://batdongsan.local/', 1),
(416, 'image_banner_2', 'http://batdongsan.local/media/banner-2.png', 1),
(417, 'active_banner_2', '1', 1),
(418, 'url_banner_3', 'http://batdongsan.local/', 1),
(419, 'image_banner_3', 'http://batdongsan.local/media/banner-3.png', 1),
(420, 'active_banner_3', '1', 1),
(421, 'web_menu_inactive', '{\"web_menu_inactive\":[]}', 1),
(422, 'web_menu_active', '{\"web_menu_active\":[{\"name\":\"Trang ch\\u1ee7\",\"url\":\"\\/\",\"permission\":\"\",\"icon\":\"\",\"id\":\"home\"},{\"name\":\"Gi\\u1edbi thi\\u1ec7u\",\"url\":\"gioi-thieu\",\"permission\":\"\",\"icon\":\"\",\"id\":\"about\"},{\"name\":\"B\\u00e1o c\\u00e1o th\\u1ecb tr\\u01b0\\u1eddng\",\"url\":\"bao-cao-thi-truong\",\"permission\":\"\",\"icon\":\"\",\"id\":\"mreport\"},{\"name\":\"Tin t\\u01b0 v\\u1ea5n\",\"url\":\"tin-tu-van\",\"permission\":\"\",\"icon\":\"\",\"id\":\"advice\"},{\"name\":\"Ph\\u00fa Qu\\u1ed1c\",\"url\":\"phu-quoc\",\"permission\":\"\",\"icon\":\"\",\"id\":\"phu-quoc\"},{\"name\":\"V\\u00e2n \\u0110\\u1ed3n\",\"url\":\"van-don\",\"permission\":\"\",\"icon\":\"\",\"id\":\"van-don\"},{\"name\":\"B\\u1eafc V\\u00e2n Phong\",\"url\":\"bac-van-phong\",\"permission\":\"\",\"icon\":\"\",\"id\":\"bac-van-phong\"},{\"name\":\"Tin t\\u1ee9c\",\"url\":\"tin-tuc\",\"permission\":\"\",\"icon\":\"\",\"id\":\"tin-tuc\"},{\"name\":\"Li\\u00ean h\\u1ec7\",\"url\":\"lien-he\",\"permission\":\"\",\"icon\":\"\",\"id\":\"lien-he\"}]}', 1);

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
(23, 'Subscriptions', 'subscriptions'),
(24, 'Advices', 'advices'),
(25, 'Mreports', 'mreports'),
(26, 'News', 'news'),
(27, 'Property', 'property'),
(28, 'Contacts', 'contacts'),
(29, 'Pages', 'pages');

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

--
-- Đang đổ dữ liệu cho bảng `tblrolepermissions`
--

INSERT INTO `tblrolepermissions` (`rolepermissionid`, `roleid`, `can_view`, `can_view_own`, `can_edit`, `can_create`, `can_delete`, `permissionid`) VALUES
(1, 1, 0, 0, 0, 0, 0, 16),
(2, 1, 0, 0, 0, 0, 0, 1),
(3, 1, 0, 0, 0, 0, 0, 21),
(4, 1, 0, 0, 0, 0, 0, 8),
(5, 1, 0, 0, 0, 0, 0, 9),
(6, 1, 0, 0, 0, 0, 0, 11),
(7, 1, 0, 0, 0, 0, 0, 15),
(8, 1, 0, 0, 0, 0, 0, 14),
(9, 1, 0, 0, 0, 0, 0, 18),
(10, 1, 0, 0, 0, 0, 0, 19),
(11, 1, 0, 0, 0, 0, 0, 12),
(12, 1, 0, 0, 0, 0, 0, 22),
(13, 1, 0, 0, 0, 0, 0, 17),
(14, 1, 0, 0, 0, 0, 0, 5),
(15, 1, 0, 0, 0, 0, 0, 13),
(16, 1, 0, 0, 0, 0, 0, 3),
(17, 1, 0, 0, 0, 0, 0, 10),
(18, 1, 0, 0, 0, 0, 0, 4),
(19, 1, 0, 0, 0, 0, 0, 7),
(20, 1, 0, 0, 0, 0, 0, 23),
(21, 1, 0, 0, 0, 0, 0, 6),
(22, 1, 0, 0, 0, 0, 0, 2),
(23, 1, 0, 0, 0, 0, 0, 20),
(24, 1, 0, 0, 0, 0, 0, 24),
(25, 1, 0, 0, 0, 0, 0, 25),
(26, 1, 0, 0, 0, 0, 0, 26),
(27, 1, 1, 0, 1, 1, 1, 27),
(28, 1, 0, 0, 0, 0, 0, 28),
(29, 1, 0, 0, 0, 0, 0, 29);

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
(1, 'Nhân viên');

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
('35m7dms31gubp70ce81lrqc8uest2gar', '127.0.0.1', 1534491943, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343439313934333b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a223262646239353534366663396635336564356164616333303039636263386634223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223436653837616261326433306533623565623230303533633063643433613231223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533343439303535313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f5841223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31363a226170706c69636174696f6e2f782d787a223b733a323a22787a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a33333a22433a5c58414d5050325c6874646f63735c626174646f6e6773616e5c6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d634a66223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223935336463366535663836643630333138623963663733303039616338343637223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533333139333838333b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f5841223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31363a226170706c69636174696f6e2f782d787a223b733a323a22787a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a34303a22433a5c58414d5050325c6874646f63735c626174646f6e6773616e5c6d656469615c7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d634a66223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533343439303537343b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('363117htr2esoknjq0har42u1nhkv3a6', '127.0.0.1', 1534498568, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343439383536383b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('5ebgherfdd9fiema8r8jol1tok8plr32', '127.0.0.1', 1534499559, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343439393535393b),
('7n8iatg0uh9n6eh2pvhq5lpi7aao62so', '127.0.0.1', 1534493934, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343439333933343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a223262646239353534366663396635336564356164616333303039636263386634223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223436653837616261326433306533623565623230303533633063643433613231223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533343439303535313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f5841223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31363a226170706c69636174696f6e2f782d787a223b733a323a22787a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a33333a22433a5c58414d5050325c6874646f63735c626174646f6e6773616e5c6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d634a66223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223935336463366535663836643630333138623963663733303039616338343637223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533333139333838333b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f5841223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31363a226170706c69636174696f6e2f782d787a223b733a323a22787a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a34303a22433a5c58414d5050325c6874646f63735c626174646f6e6773616e5c6d656469615c7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d634a66223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533343439303537343b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('8cpgrl4iel92cvqu8947ndtngeajqi27', '127.0.0.1', 1534495386, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343439353338363b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a223262646239353534366663396635336564356164616333303039636263386634223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223436653837616261326433306533623565623230303533633063643433613231223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533343439303535313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f5841223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31363a226170706c69636174696f6e2f782d787a223b733a323a22787a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a33333a22433a5c58414d5050325c6874646f63735c626174646f6e6773616e5c6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d634a66223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223935336463366535663836643630333138623963663733303039616338343637223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533333139333838333b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f5841223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31363a226170706c69636174696f6e2f782d787a223b733a323a22787a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a34303a22433a5c58414d5050325c6874646f63735c626174646f6e6773616e5c6d656469615c7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d634a66223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533343439303537343b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('93iquljdnei9nuts2eui74mlqirjalgf', '127.0.0.1', 1534493592, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343439333539323b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a223262646239353534366663396635336564356164616333303039636263386634223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223436653837616261326433306533623565623230303533633063643433613231223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533343439303535313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f5841223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31363a226170706c69636174696f6e2f782d787a223b733a323a22787a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a33333a22433a5c58414d5050325c6874646f63735c626174646f6e6773616e5c6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d634a66223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223935336463366535663836643630333138623963663733303039616338343637223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533333139333838333b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f5841223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31363a226170706c69636174696f6e2f782d787a223b733a323a22787a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a34303a22433a5c58414d5050325c6874646f63735c626174646f6e6773616e5c6d656469615c7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d634a66223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533343439303537343b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('ad0ju7md77sjru0tpe12qugto2235rte', '127.0.0.1', 1534491631, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343439313633313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a223262646239353534366663396635336564356164616333303039636263386634223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223436653837616261326433306533623565623230303533633063643433613231223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533343439303535313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f5841223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31363a226170706c69636174696f6e2f782d787a223b733a323a22787a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a33333a22433a5c58414d5050325c6874646f63735c626174646f6e6773616e5c6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d634a66223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223935336463366535663836643630333138623963663733303039616338343637223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533333139333838333b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f5841223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31363a226170706c69636174696f6e2f782d787a223b733a323a22787a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a34303a22433a5c58414d5050325c6874646f63735c626174646f6e6773616e5c6d656469615c7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d634a66223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533343439303537343b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('degtb0v4arql05j1gs3p1optbaad78b0', '127.0.0.1', 1534491007, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343439313030373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a223262646239353534366663396635336564356164616333303039636263386634223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223436653837616261326433306533623565623230303533633063643433613231223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533343439303535313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f5841223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31363a226170706c69636174696f6e2f782d787a223b733a323a22787a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a33333a22433a5c58414d5050325c6874646f63735c626174646f6e6773616e5c6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d634a66223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223935336463366535663836643630333138623963663733303039616338343637223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533333139333838333b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f5841223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31363a226170706c69636174696f6e2f782d787a223b733a323a22787a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a34303a22433a5c58414d5050325c6874646f63735c626174646f6e6773616e5c6d656469615c7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d634a66223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533343439303537343b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('fou2rbru92hf2cnsribm7ahef6hu8lda', '127.0.0.1', 1534497317, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343439373331373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a223262646239353534366663396635336564356164616333303039636263386634223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223436653837616261326433306533623565623230303533633063643433613231223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533343439303535313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f5841223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31363a226170706c69636174696f6e2f782d787a223b733a323a22787a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a33333a22433a5c58414d5050325c6874646f63735c626174646f6e6773616e5c6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d634a66223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223935336463366535663836643630333138623963663733303039616338343637223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533333139333838333b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f5841223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31363a226170706c69636174696f6e2f782d787a223b733a323a22787a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a34303a22433a5c58414d5050325c6874646f63735c626174646f6e6773616e5c6d656469615c7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d634a66223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533343439303537343b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('k4gsfn5fpi1bbftf7mkjjtckr33h2ko6', '127.0.0.1', 1534498114, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343439383131343b),
('mclpkframfkfsfmkbdf54ja6qja6irk5', '127.0.0.1', 1534493290, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343439333239303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a223262646239353534366663396635336564356164616333303039636263386634223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223436653837616261326433306533623565623230303533633063643433613231223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533343439303535313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f5841223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31363a226170706c69636174696f6e2f782d787a223b733a323a22787a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a33333a22433a5c58414d5050325c6874646f63735c626174646f6e6773616e5c6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d634a66223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223935336463366535663836643630333138623963663733303039616338343637223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533333139333838333b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f5841223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31363a226170706c69636174696f6e2f782d787a223b733a323a22787a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a34303a22433a5c58414d5050325c6874646f63735c626174646f6e6773616e5c6d656469615c7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d634a66223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533343439303537343b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('oa17ie6759r4nn89q80gokff5dof9blm', '127.0.0.1', 1534491309, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343439313330393b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a223262646239353534366663396635336564356164616333303039636263386634223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223436653837616261326433306533623565623230303533633063643433613231223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533343439303535313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f5841223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31363a226170706c69636174696f6e2f782d787a223b733a323a22787a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a33333a22433a5c58414d5050325c6874646f63735c626174646f6e6773616e5c6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d634a66223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223935336463366535663836643630333138623963663733303039616338343637223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533333139333838333b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f5841223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31363a226170706c69636174696f6e2f782d787a223b733a323a22787a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a34303a22433a5c58414d5050325c6874646f63735c626174646f6e6773616e5c6d656469615c7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d634a66223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533343439303537343b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('oe42319cnpm1cmlg2mt8lmro9kqvovs6', '127.0.0.1', 1534490351, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343439303335313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('op6920mlpncq05knjea3ths3f4e5h9nv', '127.0.0.1', 1534490652, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343439303635323b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a223262646239353534366663396635336564356164616333303039636263386634223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223436653837616261326433306533623565623230303533633063643433613231223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533343439303535313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f5841223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31363a226170706c69636174696f6e2f782d787a223b733a323a22787a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a33333a22433a5c58414d5050325c6874646f63735c626174646f6e6773616e5c6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d634a66223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223935336463366535663836643630333138623963663733303039616338343637223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533333139333838333b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f5841223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31363a226170706c69636174696f6e2f782d787a223b733a323a22787a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a34303a22433a5c58414d5050325c6874646f63735c626174646f6e6773616e5c6d656469615c7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d634a66223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533343439303537343b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('pv921tiaj7ormt5q6u5gr85pobkhccbl', '127.0.0.1', 1534492658, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343439323635383b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a223262646239353534366663396635336564356164616333303039636263386634223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223436653837616261326433306533623565623230303533633063643433613231223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533343439303535313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f5841223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31363a226170706c69636174696f6e2f782d787a223b733a323a22787a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a33333a22433a5c58414d5050325c6874646f63735c626174646f6e6773616e5c6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d634a66223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223935336463366535663836643630333138623963663733303039616338343637223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533333139333838333b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f5841223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31363a226170706c69636174696f6e2f782d787a223b733a323a22787a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a34303a22433a5c58414d5050325c6874646f63735c626174646f6e6773616e5c6d656469615c7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d634a66223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533343439303537343b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('rjukhnkhj7fmvnhn4rrt1c0i78tk7ufj', '127.0.0.1', 1534499592, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343439393535393b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('t6k8jdrv4369s7frkbvpoma4qbf134tr', '127.0.0.1', 1534494251, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343439343235313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a223262646239353534366663396635336564356164616333303039636263386634223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223436653837616261326433306533623565623230303533633063643433613231223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533343439303535313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f5841223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31363a226170706c69636174696f6e2f782d787a223b733a323a22787a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a33333a22433a5c58414d5050325c6874646f63735c626174646f6e6773616e5c6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d634a66223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223935336463366535663836643630333138623963663733303039616338343637223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533333139333838333b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f5841223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31363a226170706c69636174696f6e2f782d787a223b733a323a22787a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a34303a22433a5c58414d5050325c6874646f63735c626174646f6e6773616e5c6d656469615c7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d634a66223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533343439303537343b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('tgp3am5pu91833ila8rvof5gb3hvqt0f', '127.0.0.1', 1534496214, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343439363231343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a223262646239353534366663396635336564356164616333303039636263386634223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223436653837616261326433306533623565623230303533633063643433613231223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533343439303535313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f5841223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31363a226170706c69636174696f6e2f782d787a223b733a323a22787a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a33333a22433a5c58414d5050325c6874646f63735c626174646f6e6773616e5c6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d634a66223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223935336463366535663836643630333138623963663733303039616338343637223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533333139333838333b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f5841223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31363a226170706c69636174696f6e2f782d787a223b733a323a22787a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a34303a22433a5c58414d5050325c6874646f63735c626174646f6e6773616e5c6d656469615c7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d634a66223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533343439303537343b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('v9ancs9gim2lq8r3d7ie6am0v530vmfc', '127.0.0.1', 1534492975, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343439323937353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b656c46696e6465724361636865737c613a353a7b733a383a225f6f7074734d4435223b733a33323a223262646239353534366663396635336564356164616333303039636263386634223b733a333a226c315f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223436653837616261326433306533623565623230303533633063643433613231223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533343439303535313b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f5841223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33303a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f223b733a363a22746d6255726c223b733a33353a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31363a226170706c69636174696f6e2f782d787a223b733a323a22787a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a33333a22433a5c58414d5050325c6874646f63735c626174646f6e6773616e5c6d65646961223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d634a66223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a333a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223935336463366535663836643630333138623963663733303039616338343637223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313533333139333838333b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f5841223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32303a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a33373a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f223b733a363a22746d6255726c223b733a34323a22687474703a2f2f626174646f6e6773616e2e6c6f63616c2f6d656469612f7075626c69632f2e746d622f223b733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a39343a225e283f3a283f3a696d6167657c766964656f7c617564696f297c6170706c69636174696f6e2f283f3a782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a353a7b693a303b733a31373a226170706c69636174696f6e2f782d746172223b693a313b733a31383a226170706c69636174696f6e2f782d677a6970223b693a323b733a31393a226170706c69636174696f6e2f782d627a697032223b693a333b733a31363a226170706c69636174696f6e2f782d787a223b693a343b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b733a333a22746172223b733a31383a226170706c69636174696f6e2f782d677a6970223b733a333a2274677a223b733a31393a226170706c69636174696f6e2f782d627a697032223b733a333a2274627a223b733a31363a226170706c69636174696f6e2f782d787a223b733a323a22787a223b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a31303030303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31333a2273756273746974757465496d67223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a363a226973726f6f74223b693a313b733a353a227068617368223b733a303a22223b7d7d733a373a2273756264697273223b613a313a7b733a34303a22433a5c58414d5050325c6874646f63735c626174646f6e6773616e5c6d656469615c7075626c6963223b623a303b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d6366223b733a333a22657874223b733a333a22746172223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d637a66223b733a333a22657874223b733a333a2274677a223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d636a66223b733a333a22657874223b733a333a2274627a223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a333a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d634a66223b733a333a22657874223b733a323a22787a223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a353a7b733a31373a226170706c69636174696f6e2f782d746172223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a333a222d7866223b733a333a22657874223b733a333a22746172223b733a363a22746f53706563223b733a333a222d4320223b7d733a31383a226170706c69636174696f6e2f782d677a6970223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d787a66223b733a333a22657874223b733a333a2274677a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31393a226170706c69636174696f6e2f782d627a697032223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d786a66223b733a333a22657874223b733a333a2274627a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31363a226170706c69636174696f6e2f782d787a223b613a343a7b733a333a22636d64223b733a333a22746172223b733a343a2261726763223b733a343a222d784a66223b733a333a22657874223b733a323a22787a223b733a363a22746f53706563223b733a333a222d4320223b7d733a31353a226170706c69636174696f6e2f7a6970223b613a343a7b733a333a22636d64223b733a353a22756e7a6970223b733a343a2261726763223b733a303a22223b733a333a22657874223b733a333a227a6970223b733a363a22746f53706563223b733a333a222d6420223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313533343439303537343b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d);

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
(1, 'midi9x@gmail.com', 'Hoang', 'Minh', '', '', '', '', '$2a$08$zsOz5XDjRWXIVKLVBtYlyOmTDvhj3ZYvsCO.OISMImrBAqoSokc8e', '2018-06-15 17:02:05', NULL, '127.0.0.1', '2018-08-17 16:52:50', '2018-08-17 16:53:12', NULL, NULL, NULL, 1, 0, 1, '', '', NULL, 0, '0.00', 0, NULL, NULL, ''),
(2, 'dinhnm.dhpt@gmail.com', 'Nhan', 'Vien', '', '', '', '', '$2a$08$ONuQiOB4vVkhvS9O81/fLeZ8OBx7kKNtWBmU20Gfdca9LsDJmj8DO', '2018-08-17 16:38:53', NULL, '127.0.0.1', '2018-08-17 16:45:29', '2018-08-17 16:45:33', '2018-08-17 16:39:12', NULL, NULL, 0, 1, 1, '', '', 'nhan-vien', 0, '100000.00', 0, NULL, NULL, '');

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

--
-- Đang đổ dữ liệu cho bảng `tblstaffpermissions`
--

INSERT INTO `tblstaffpermissions` (`staffpermid`, `permissionid`, `can_view`, `can_view_own`, `can_edit`, `can_create`, `can_delete`, `staffid`) VALUES
(87, 29, 0, 0, 0, 0, 0, 2),
(86, 28, 0, 0, 0, 0, 0, 2),
(85, 27, 1, 0, 1, 1, 1, 2),
(84, 26, 0, 0, 0, 0, 0, 2),
(83, 25, 0, 0, 0, 0, 0, 2),
(82, 24, 0, 0, 0, 0, 0, 2),
(81, 23, 0, 0, 0, 0, 0, 2),
(80, 22, 0, 0, 0, 0, 0, 2),
(79, 21, 0, 0, 0, 0, 0, 2),
(78, 20, 0, 0, 0, 0, 0, 2),
(77, 19, 0, 0, 0, 0, 0, 2),
(76, 18, 0, 0, 0, 0, 0, 2),
(75, 17, 0, 0, 0, 0, 0, 2),
(74, 16, 0, 0, 0, 0, 0, 2),
(73, 15, 0, 0, 0, 0, 0, 2),
(72, 14, 0, 0, 0, 0, 0, 2),
(71, 13, 0, 0, 0, 0, 0, 2),
(70, 12, 0, 0, 0, 0, 0, 2),
(69, 11, 0, 0, 0, 0, 0, 2),
(68, 10, 0, 0, 0, 0, 0, 2),
(67, 9, 0, 0, 0, 0, 0, 2),
(66, 8, 0, 0, 0, 0, 0, 2),
(65, 7, 0, 0, 0, 0, 0, 2),
(64, 6, 0, 0, 0, 0, 0, 2),
(63, 5, 0, 0, 0, 0, 0, 2),
(62, 4, 0, 0, 0, 0, 0, 2),
(61, 3, 0, 0, 0, 0, 0, 2),
(60, 2, 0, 0, 0, 0, 0, 2),
(59, 1, 0, 0, 0, 0, 0, 2);

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

--
-- Đang đổ dữ liệu cho bảng `tblticketattachments`
--

INSERT INTO `tblticketattachments` (`id`, `ticketid`, `replyid`, `file_name`, `filetype`, `dateadded`) VALUES
(1, 1, NULL, 'vanchuyen.png', 'image/png', '2018-08-14 16:47:44'),
(2, 1, 3, 'vanchuyen-1.png', 'image/png', '2018-08-15 09:23:45');

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

--
-- Đang đổ dữ liệu cho bảng `tblticketreplies`
--

INSERT INTO `tblticketreplies` (`id`, `ticketid`, `userid`, `contactid`, `name`, `email`, `date`, `message`, `attachment`, `admin`) VALUES
(1, 1, 0, 0, NULL, NULL, '2018-08-14 16:49:32', 'yui', NULL, 1),
(2, 1, 3, 4, NULL, NULL, '2018-08-15 09:08:03', 'yg', NULL, NULL),
(3, 1, 3, 4, NULL, NULL, '2018-08-15 09:23:45', 'rt', NULL, NULL);

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

--
-- Đang đổ dữ liệu cho bảng `tbltickets`
--

INSERT INTO `tbltickets` (`ticketid`, `adminreplying`, `userid`, `contactid`, `email`, `name`, `department`, `priority`, `status`, `service`, `ticketkey`, `subject`, `message`, `admin`, `date`, `project_id`, `lastreply`, `clientread`, `adminread`, `assigned`) VALUES
(1, 0, 3, 4, NULL, NULL, 1, 1, 1, NULL, '615daf0d341ebfc67c5f34fa8da5196c', 'test', 'test', NULL, '2018-08-14 16:47:44', 0, '2018-08-15 09:23:45', 1, 0, 0);

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
(4, 0, 0, 4, 'consent_key', '6439ce397a3eea20fd9cb1165755cbc3-6d0f2cbb3abfef51c7b0a4d304d3edf0'),
(5, 0, 0, 5, 'consent_key', 'fe0433f3686a4243b4c67af27d2c5dd6-9d224bc9b770e79bd1714a6bdddcd886'),
(6, 1, 0, 0, 'dashboard_widgets_visibility', 'a:9:{i:0;a:2:{s:2:\"id\";s:9:\"top_stats\";s:7:\"visible\";s:1:\"0\";}i:1;a:2:{s:2:\"id\";s:16:\"finance_overview\";s:7:\"visible\";s:1:\"0\";}i:2;a:2:{s:2:\"id\";s:9:\"user_data\";s:7:\"visible\";s:1:\"0\";}i:3;a:2:{s:2:\"id\";s:8:\"calendar\";s:7:\"visible\";s:1:\"1\";}i:4;a:2:{s:2:\"id\";s:21:\"weekly_payments_chart\";s:7:\"visible\";s:1:\"0\";}i:5;a:2:{s:2:\"id\";s:5:\"todos\";s:7:\"visible\";s:1:\"1\";}i:6;a:2:{s:2:\"id\";s:11:\"leads_chart\";s:7:\"visible\";s:1:\"0\";}i:7;a:2:{s:2:\"id\";s:14:\"projects_chart\";s:7:\"visible\";s:1:\"0\";}i:8;a:2:{s:2:\"id\";s:17:\"projects_activity\";s:7:\"visible\";s:1:\"0\";}}'),
(7, 0, 0, 6, 'consent_key', '6f6f811e1684ee45307b5fb0de1efc43-a6462ff4ac202e9a7ba20944abecb8fe');

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

--
-- Đang đổ dữ liệu cho bảng `tblviewstracking`
--

INSERT INTO `tblviewstracking` (`id`, `rel_id`, `rel_type`, `date`, `view_ip`) VALUES
(1, 1, 'law', '2018-07-15 13:29:22', '127.0.0.1'),
(2, 3, 'law', '2018-07-15 13:33:15', '127.0.0.1'),
(3, 2, 'law', '2018-07-17 08:46:57', '127.0.0.1'),
(4, 4, 'law', '2018-07-17 09:39:46', '127.0.0.1'),
(5, 4, 'law', '2018-07-17 09:40:34', '127.0.0.1'),
(6, 4, 'law', '2018-07-17 09:40:35', '127.0.0.1'),
(7, 3, 'property', '2018-07-17 10:01:32', '127.0.0.1'),
(8, 3, 'property', '2018-07-17 10:01:38', '127.0.0.1'),
(9, 1, 'property', '2018-07-17 10:01:47', '127.0.0.1'),
(10, 1, 'property', '2018-07-17 10:01:56', '127.0.0.1'),
(11, 2, 'property', '2018-07-17 10:19:04', '127.0.0.1'),
(12, 3, 'property', '2018-07-17 13:06:10', '127.0.0.1'),
(13, 3, 'property', '2018-07-17 13:06:11', '127.0.0.1'),
(14, 1, 'new', '2018-07-17 15:01:38', '127.0.0.1'),
(15, 3, 'property', '2018-07-18 16:20:48', '127.0.0.1'),
(16, 3, 'property', '2018-07-18 16:30:12', '127.0.0.1'),
(17, 3, 'property', '2018-07-18 16:33:08', '127.0.0.1'),
(18, 3, 'property', '2018-07-18 16:33:30', '127.0.0.1'),
(19, 3, 'property', '2018-07-19 16:06:52', '127.0.0.1'),
(20, 1, 'new', '2018-08-06 10:56:31', '127.0.0.1'),
(21, 10, 'new', '2018-08-06 10:58:52', '127.0.0.1'),
(22, 2, 'new', '2018-08-06 10:59:01', '127.0.0.1'),
(23, 5, 'new', '2018-08-06 10:59:45', '127.0.0.1'),
(24, 9, 'new', '2018-08-06 11:12:06', '127.0.0.1'),
(25, 9, 'new', '2018-08-06 11:12:47', '127.0.0.1'),
(26, 9, 'new', '2018-08-06 11:13:05', '127.0.0.1'),
(27, 9, 'new', '2018-08-06 11:13:21', '127.0.0.1'),
(28, 9, 'new', '2018-08-06 11:13:22', '127.0.0.1'),
(29, 9, 'new', '2018-08-06 11:13:24', '127.0.0.1'),
(30, 9, 'new', '2018-08-06 11:13:24', '127.0.0.1'),
(31, 9, 'new', '2018-08-06 11:13:26', '127.0.0.1'),
(32, 9, 'new', '2018-08-06 11:13:27', '127.0.0.1'),
(33, 9, 'new', '2018-08-06 11:13:27', '127.0.0.1'),
(34, 9, 'new', '2018-08-06 11:13:29', '127.0.0.1'),
(35, 9, 'new', '2018-08-06 11:13:30', '127.0.0.1'),
(36, 9, 'new', '2018-08-06 11:13:30', '127.0.0.1'),
(37, 9, 'new', '2018-08-06 11:13:31', '127.0.0.1'),
(38, 9, 'new', '2018-08-06 11:13:31', '127.0.0.1'),
(39, 9, 'new', '2018-08-06 11:13:32', '127.0.0.1'),
(40, 9, 'new', '2018-08-06 11:13:36', '127.0.0.1'),
(41, 9, 'new', '2018-08-06 11:13:39', '127.0.0.1'),
(42, 12, 'new', '2018-08-06 11:14:08', '127.0.0.1'),
(43, 12, 'mreport', '2018-08-07 08:47:25', '127.0.0.1'),
(44, 3, 'property', '2018-08-07 08:52:30', '127.0.0.1'),
(45, 1, 'property', '2018-08-07 08:52:57', '127.0.0.1'),
(46, 12, 'mreport', '2018-08-07 08:56:16', '127.0.0.1'),
(47, 3, 'property', '2018-08-07 08:56:21', '127.0.0.1'),
(48, 1, 'property', '2018-08-07 10:38:42', '127.0.0.1'),
(49, 1, 'property', '2018-08-07 13:32:59', '127.0.0.1'),
(50, 1, 'property', '2018-08-07 13:33:10', '127.0.0.1'),
(51, 1, 'property', '2018-08-07 13:35:27', '127.0.0.1'),
(52, 2, 'property', '2018-08-07 15:38:29', '127.0.0.1'),
(53, 1, 'property', '2018-08-07 15:52:05', '127.0.0.1'),
(54, 1, 'property', '2018-08-07 15:52:53', '127.0.0.1'),
(55, 1, 'property', '2018-08-07 16:14:36', '127.0.0.1'),
(56, 1, 'property', '2018-08-07 16:46:21', '127.0.0.1'),
(57, 1, 'property', '2018-08-08 09:39:40', '127.0.0.1'),
(58, 10, 'advice', '2018-08-08 10:52:17', '127.0.0.1'),
(59, 12, 'mreport', '2018-08-08 10:53:05', '127.0.0.1'),
(60, 12, 'mreport', '2018-08-08 10:53:07', '127.0.0.1'),
(61, 1, 'property', '2018-08-08 11:02:45', '127.0.0.1'),
(62, 1, 'property', '2018-08-08 11:08:21', '127.0.0.1'),
(63, 10, 'new', '2018-08-09 08:30:33', '127.0.0.1'),
(64, 12, 'mreport', '2018-08-09 08:32:40', '127.0.0.1'),
(65, 12, 'advice', '2018-08-09 08:33:32', '127.0.0.1'),
(66, 12, 'advice', '2018-08-09 08:37:40', '127.0.0.1'),
(67, 12, 'new', '2018-08-09 08:37:43', '127.0.0.1'),
(68, 3, 'property', '2018-08-09 08:37:54', '127.0.0.1'),
(69, 10, 'new', '2018-08-09 08:38:00', '127.0.0.1'),
(70, 9, 'new', '2018-08-09 08:39:23', '127.0.0.1'),
(71, 12, 'advice', '2018-08-11 17:58:24', '127.0.0.1'),
(72, 12, 'new', '2018-08-14 15:31:25', '127.0.0.1');

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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `wishlists`
--

INSERT INTO `wishlists` (`id`, `property_id`, `user_id`, `created_at`) VALUES
(1, 3, 3, '2018-07-18 16:43:37'),
(2, 2, 3, '2018-07-18 16:44:29');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `advices`
--
ALTER TABLE `advices`
  ADD PRIMARY KEY (`articleid`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `articlegroup` (`articlegroup`);

--
-- Chỉ mục cho bảng `advicesgroups`
--
ALTER TABLE `advicesgroups`
  ADD PRIMARY KEY (`groupid`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mreports`
--
ALTER TABLE `mreports`
  ADD PRIMARY KEY (`articleid`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `articlegroup` (`articlegroup`);

--
-- Chỉ mục cho bảng `mreportsgroups`
--
ALTER TABLE `mreportsgroups`
  ADD PRIMARY KEY (`groupid`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`articleid`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `articlegroup` (`articlegroup`);

--
-- Chỉ mục cho bảng `newsgroups`
--
ALTER TABLE `newsgroups`
  ADD PRIMARY KEY (`groupid`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`articleid`);

--
-- Chỉ mục cho bảng `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`property_id`),
  ADD KEY `property_category_id` (`property_category_id`),
  ADD KEY `property_category_id_2` (`property_category_id`,`property_type_id`,`property_location_id`,`property_town_id`),
  ADD KEY `property_type_id` (`property_type_id`);

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
-- Chỉ mục cho bảng `property_towns`
--
ALTER TABLE `property_towns`
  ADD PRIMARY KEY (`town_id`);

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
-- Chỉ mục cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `advices`
--
ALTER TABLE `advices`
  MODIFY `articleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `advicesgroups`
--
ALTER TABLE `advicesgroups`
  MODIFY `groupid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `mreports`
--
ALTER TABLE `mreports`
  MODIFY `articleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `mreportsgroups`
--
ALTER TABLE `mreportsgroups`
  MODIFY `groupid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `articleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `newsgroups`
--
ALTER TABLE `newsgroups`
  MODIFY `groupid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `articleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `property`
--
ALTER TABLE `property`
  MODIFY `property_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `property_contacts`
--
ALTER TABLE `property_contacts`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `property_images`
--
ALTER TABLE `property_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `property_locations`
--
ALTER TABLE `property_locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `property_towns`
--
ALTER TABLE `property_towns`
  MODIFY `town_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `property_types`
--
ALTER TABLE `property_types`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tblactivitylog`
--
ALTER TABLE `tblactivitylog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=409;

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
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `tblcontacts`
--
ALTER TABLE `tblcontacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tblcustomergroups_in`
--
ALTER TABLE `tblcustomergroups_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `departmentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=423;

--
-- AUTO_INCREMENT cho bảng `tblpermissions`
--
ALTER TABLE `tblpermissions`
  MODIFY `permissionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
  MODIFY `postid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `rolepermissionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
  MODIFY `staffid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tblstaffdepartments`
--
ALTER TABLE `tblstaffdepartments`
  MODIFY `staffdepartmentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tblstaffpermissions`
--
ALTER TABLE `tblstaffpermissions`
  MODIFY `staffpermid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tblticketpipelog`
--
ALTER TABLE `tblticketpipelog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tblticketreplies`
--
ALTER TABLE `tblticketreplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbltickets`
--
ALTER TABLE `tbltickets`
  MODIFY `ticketid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tblvault`
--
ALTER TABLE `tblvault`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tblviewstracking`
--
ALTER TABLE `tblviewstracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `tblwebtolead`
--
ALTER TABLE `tblwebtolead`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
