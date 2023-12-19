-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 02, 2021 lúc 03:38 PM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `waka`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(20) NOT NULL COMMENT 'id bình luận',
  `id_product` int(10) NOT NULL COMMENT 'id sản phẩm',
  `id_user` int(10) NOT NULL COMMENT 'id tài khoản',
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nội dung',
  `date` date NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày đăng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `id_product`, `id_user`, `content`, `date`) VALUES
(7, 29, 1, 'Doanh môn phục quý - Tập 8 Rất tuyệt vời', '2020-10-21'),
(8, 28, 1, 'Nice', '2020-10-21'),
(9, 28, 2, 'So good', '2020-10-21'),
(10, 58, 2, 'Làm giàu thôi', '2020-10-21'),
(11, 58, 2, 'Dead is like the wind, alway by my side', '2020-10-21'),
(12, 15, 2, 'Embrace the darkness', '2020-10-21'),
(13, 15, 2, 'Violent solve everything', '2020-10-21'),
(14, 18, 2, 'Let\'s do it', '2020-10-21'),
(15, 37, 3, 'You\'re so great!', '2020-10-21'),
(16, 37, 3, 'You\'re so great', '2020-10-21'),
(17, 15, 2, 'Hey yo', '2020-10-21'),
(18, 15, 2, 'demo 1', '2020-10-21'),
(19, 15, 1, 'minh dz', '2020-10-21'),
(20, 58, 6, 'abc', '2020-10-21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(11) NOT NULL,
  `id_cart` int(11) NOT NULL,
  `id_product` int(10) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date` int(11) NOT NULL DEFAULT current_timestamp(),
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhaxuatban`
--

CREATE TABLE `nhaxuatban` (
  `id` int(5) NOT NULL COMMENT 'id nhà xuất bản',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên nhà xuất bản'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhaxuatban`
--

INSERT INTO `nhaxuatban` (`id`, `name`) VALUES
(1, 'Đang Cập Nhật'),
(2, 'NXB Âm Nhạc'),
(3, 'NXB Bưu Điện'),
(4, 'NXB Chính Trị Quốc Gia'),
(5, 'NXB Công An'),
(6, 'NXB Công An Nhân Dân'),
(7, 'NXB Công Thương'),
(8, 'NXB Dân Trí'),
(9, 'NXB Đại Học Bách Khoa'),
(10, 'NXB Đại Học Kinh Tế Quốc Dân'),
(11, 'NXB ĐHSP'),
(12, 'NXB Giao Thông Vận Tải'),
(13, 'NXB Hà Nội'),
(14, 'NXB Hội Nhà Văn'),
(15, 'NXB Hồng Bàng'),
(16, 'NXB Hồng Đức'),
(17, 'NXB Khoa học và Kỹ thuật'),
(18, 'NXB Khoa Học Xã Hội'),
(19, 'NXB Kim Đồng'),
(20, 'NXB Lao Động'),
(21, 'NXB Lao Động Xã Hội'),
(22, 'NXB Mũi Cà Mau Minh Hải'),
(23, 'NXB Mỹ Thuật'),
(24, 'NXB Nam Sơn'),
(25, 'NXB Phụ Nữ'),
(26, 'NXB Phương Đông'),
(27, 'NXB Phương Nam books'),
(28, 'NXB Quân Đội Nhân Dân'),
(29, 'NXB Thanh Hóa'),
(30, 'NXB Thanh Niên'),
(31, 'NXB Thể Dục Thể thao'),
(32, 'NXB Thế Giới'),
(33, 'NXB Thời Đại'),
(34, 'NXB Thông Tấn'),
(35, 'NXB Thông Tin Và Truyền Thông'),
(36, 'NXB Thuận Hóa'),
(37, 'NXB Tôn Giáo'),
(38, 'NXB Tổng hợp thành phố HCM'),
(39, 'NXB Trẻ'),
(40, 'NXB Tri Thức'),
(41, 'NXB Từ Điển Bách Khoa'),
(42, 'NXB Văn Hóa Dân Tộc'),
(43, 'NXB Văn Hóa Sài Gòn'),
(44, 'NXB Văn Hóa Thông Tin'),
(45, 'NXB Văn Hóa Văn Nghệ'),
(46, 'NXB Văn Hóa Văn Nghệ TPHCM'),
(47, 'NXB Văn Học'),
(48, 'NXB Văn Mới (Sài Gòn)'),
(49, 'NXB Văn Nghệ'),
(50, 'NXB Văn Nghệ TP.HCM'),
(51, 'NXB Y học'),
(52, 'Thể thao văn hóa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(10) NOT NULL COMMENT 'id sản phẩm',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên sản phẩm',
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Đường dẫn hình ảnh',
  `id_author` int(10) NOT NULL COMMENT 'id tác giả',
  `id_catalog` int(3) NOT NULL COMMENT 'id thể loại',
  `id_publisher` int(5) NOT NULL COMMENT 'id nhà xuất bản',
  `date` date NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày cập nhật',
  `votes` int(10) DEFAULT 0 COMMENT 'Số lượng đánh giá',
  `views` int(10) DEFAULT 0 COMMENT 'Lượt xem',
  `price` int(10) DEFAULT 0 COMMENT 'Giá',
  `free` tinyint(1) DEFAULT 0 COMMENT 'Miễn phí hay không',
  `hot` tinyint(1) DEFAULT 0 COMMENT 'Độ hot của sản phẩm',
  `purchase` int(10) DEFAULT 0 COMMENT 'Lượt mua',
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Mô tả'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `image`, `id_author`, `id_catalog`, `id_publisher`, `date`, `votes`, `views`, `price`, `free`, `hot`, `purchase`, `description`) VALUES
(1, 'Gió ấm không bằng anh thâm tình - Tập 33', 'gio_am_khong_bang_anh_tham_tinh_tap33.jpg', 1, 14, 1, '2020-07-27', 46, 5990, 0, 0, 0, 0, 'Mặc Cảnh Thâm trở về Los Angeles để xử lý dứt điểm các vấn đề liên quan đến nhóm tội phạm ở Campuchia trước đây, tuy nhiên anh lại không ngờ Quý Noãn cũng bị lừa đến Mỹ.\r\n \r\nMặc dù đã vô cùng cẩn thận nhưng Mặc Cảnh Thâm vẫn không thể bảo vệ được Quý Noãn, chuyện xảy ra như thế nào?\r\n \r\nPhong Lăng bất ngờ trở về Los Angeles, liệu cô có chạm mặt Nam Hành? Sự trở về của cô có giúp ích được gì cho Quý Noãn hay không?\r\n \r\nWaka trân trọng giới thiệu Tập 33 (từ chương 671 đến chương 690) nằm trong bộ tiểu thuyết ngôn tình dài tập Gió ấm không bằng anh thâm tình của tác giả Thanh Thanh Thùy Tiếu.'),
(2, 'Thịnh thế kiều y - Tập 16', 'trinh_the_kieu_y_tap16.jpg', 4, 13, 1, '2020-07-28', 21, 1606, 0, 0, 0, 0, 'Cố Thanh Hoàn tách khỏi Cố gia, tự lập môn hộ riêng. Đây là chuyện trước nay chưa từng có, cũng chưa ai dám làm. Một người con gái thân cô thế cô thì có thể làm nên chuyện gì lớn chứ?\r\n\r\nNhững tưởng Cố Thanh Hoàn sẽ cắt đứt mọi ràng buộc với Cố gia nhưng Cố Thanh Chỉ vẫn còn ở đó, một ngày Cố Thanh Chỉ chưa được gả đi thì kế hoạch trả thù của Cố Thanh Hoàn vẫn chưa thể tiến hành.\r\n\r\nNgười ta bảo chơi với vua như chơi với hổ, Cố Thanh Hoàn muốn tính kế Hoàng thượng, nhưng cô sẽ tính thế nào đây?\r\n\r\nWaka trân trọng giới thiệu Tập 16 (từ chương 226 đến chương 240) nằm trong bộ tiểu thuyết ngôn tình dài tập Thịnh thế kiều y – tác giả Phương Phương.'),
(4, 'Đắc nhân tâm', 'dac_nhan_tam.jpg', 3, 18, 39, '2015-11-16', 6188, 21589, 0, 0, 0, 0, 'Đắc nhân tâm của Dale Carnegie là quyển sách nổi tiếng nhất, bán chạy nhất  và có tầm ảnh hưởng nhất của mọi thời đại…\r\n\r\nDale Breckenridge Carnegie (24/11/1888 - 1/11/1955) là một nhà văn và nhà thuyết trình Mỹ và là người chịu trách nhiệm các lớp phát triển con người, kỹ năng, nghệ thuật bán hàng, huấn luyện đoàn thể, nói trước công chúng và các kỹ năng giao tiếp giữa mọi người. Ra đời trong cảnh nghèo đói tại một trang trại ở Missouri, Dale Carnegie là tác giả cuốn sách Đắc nhân tâm- được xuất bản lần đầu năm 1936 và là một trong những quyển sách nổi tiếng nhất thế giới thuộc thể loại self-help, liên tục đứng đầu danh mục bán chạy nhất của mọi thời đại do báo The New York Times bình chọn suốt 10 năm liền. Tác phẩm đã được chuyển ngữ sang hầu hết các thứ tiếng trên thế giới và có mặt ở hàng trăm quốc gia, đặc biệt bản tiếng Anh đã bán được hơn 15 triệu bản trên thế giới.\r\n\r\nĐắc Nhân Tâm là cuốn sách đưa ra các lời khuyên về cách thức cư xử, ứng xử và giao tiếp với mọi người để đạt được thành công trong cuộc sống. Gần 80 năm kể từ khi ra đời, Đắc Nhân Tâm là cuốn sách gối đầu giường của nhiều thế hệ luôn muốn hoàn thiện chính mình để vươn tới một cuộc sống tốt đẹp và thành công.\r\n\r\nĐắc Nhân Tâm cụ thể và chi tiết với những chỉ dẫn để dẫn đạo người, để gây thiện cảm và dẫn dắt người khác,... những hướng dẫn ấy, qua thời gian, có thể không còn thích hợp trong cuộc sống hiện đại nhưng nếu người đọc có thể cảm và hiểu được những thông điệp tác giả muốn truyền đạt thì việc áp dụng nó vào cuộc sống trở nên dễ dàng và hiệu quả.\r\n\r\nĐắc Nhân Tâm, từ một cuốn sách, hôm nay đã trở thành một danh từ để chỉ một lối sống mà ở đó con người ta cư xử linh hoạt và thấu tình đạt lý. Lý thuyết muôn thuở vẫn là những quy tắc chết, nhưng Nhân Tâm là sống, là biến đổi. Bạn hãy thử đọc \"Đắc Nhân tâm\" và tự mình chiêm nghiệm những cái đang diễn ra trong đời thực hiện hữu, chắc chắn bạn sẽ có những bài học cho riêng mình.\r\n\r\nTác phẩm có sức lan toả vô cùng rộng lớn – dù  bạn đi đến bất cứ đâu, bất kỳ quốc gia nào cũng đều có thể nhìn thấy. Tác phẩm được đánh giá là cuốn sách đầu tiên và hay nhất trong thể loại này, có ảnh hưởng thay đổi cuộc đời đối với hàng triệu người trên thế giới.\r\n\r\nWaka trân trọng giới thiệu cuốn sách Đắc Nhân Tâm - Dale Carnegie.'),
(5, 'Yêu tinh quán - Tập 3', 'yeu_tinh_quan_tap3.jpg', 5, 17, 1, '2020-07-28', 4, 785, 0, 0, 0, 0, 'Vì muốn thu thập tin tức về cha mẹ và để nhanh chóng tìm được họ, Vân Đóa Nhi đã đồng ý tham gia huấn luyện để trở thành “chìa khoá” ở Rừng rậm Bóng tối. Thế nhưng, nhìn qua thì nơi này có vẻ rất bình thường, nhưng lại ẩn chưa muôn vào khó khăn và nhiều mối nguy không tưởng. Một cô gái nhỏ bé yếu ớt như Vân Đoá Nhi có chịu được huấn luyện khắc nghiệt hay không?\r\n\r\nSau khi ra khỏi căn nhà gỗ, Vân Đóa Nhi đột nhiên trở nên khác thường và có sức mạnh cực kỳ quái dị. Điều này đã khiến đám U Tinh Trần nghi ngờ thân xác cô đã bị kẻ nào đó chiếm giữ. Kẻ đó sử mượn thân xác cô làm ra rất nhiều chuyện quái gở và mất mặt, thậm chí còn có “ý đồ” với Liễu Minh Trạch. Chuyện gì đã xảy ra trong Rừng rậm Bóng tối? Lẽ nào Vân Đóa Nhi cứ thế mà bị đoạt xác?\r\n\r\nWaka xin trân trọng giới thiệu Tập 3 - Yêu tinh quán (từ chương 31 đến chương 45) nằm trong tiểu thuyết hiện đại, huyền ảo - tác giả Niệm Niệm.'),
(6, 'Nông viên tự cẩm - Tập 39', 'nong_vien_tu_cam_tap39.jpg', 6, 13, 1, '2020-07-27', 23, 1821, 0, 0, 0, 0, 'Dư Tiểu Thảo đã khai trương Dược thiện phường ở Kinh thành, mọi người vô cùng đón nhận, việc làm ăn của nàng càng ngày càng thịnh vượng. Dư Hàng và Lưu Tuệ Phương cũng chính thức kết hôn.\r\n\r\nThời gian thấm thoắt trôi qua, hai năm sau Chu Tuấn Dương chiến thắng trở về. Hắn bí mật trở về thăm Tiểu Thảo trước, cả hai trùng phùng đầy lãng mạn. Sau đó Tiểu Thảo bị cha con Hoàng thượng ép thăng quan, được đi đón đoàn quân khải hoàn của Chu Tuấn Dương.\r\n\r\nChu Tuấn Dương oai phong lẫm liệt vinh quy, hắn được phong làm Húc vương nên được phân phủ ở riêng. Ngay sau đó, Tiểu Thảo mở tiệc đón gió tẩy trần cho mọi người, nàng biết được Tô Nhiên bị thương đã không nề hà nhận việc điểu dưỡng cho y, bởi vậy cũng làm đổ bình giấm Húc vương. Không những vậy, hôm ấy nàng còn gặp lại nhà Triệu lão tướng quân, mọi người vui vẻ ôn lại chuyện xưa.\r\n\r\nWaka trân trọng giới thiệu Tập 39 (từ chương 641 đến chương 655) thuộc bộ truyện ngôn tình cổ trang, điền văn Nông viên tự cẩm - tác giả Quỹ Họa Tình Vũ.'),
(7, 'Kết hôn âm dương - Tập 1', 'ket_hon_am_duong_tap1.jpg', 7, 6, 1, '2020-04-05', 807, 77792, 0, 0, 0, 0, 'Ngày Tết, tôi theo Từ Dương về nhà anh.\r\n\r\nLần đầu gặp mặt, bố mẹ anh đã cho tôi hai phong bao lì xì, một lớn một nhỏ, một đen một đỏ.\r\n\r\nMở phong bao lì xì này ra, sau này dù có làm người hay làm ma thì vẫn là người của nhà họ Từ.\r\n\r\nSinh ra là người, chết thành ma, nhận phong bao giấy trắng nhà tao, ăn cơm nhà tao, ngủ trên nắp quan tài nhà tao, là người hay ma đều không thể thoát!\r\n\r\nWaka trân trọng giới thiệu Tập 1 (từ chương 1 đến chương 15) bộ truyện linh dị siêu hot Kết hôn âm dương - tác giả 0 Giờ Sáng - dịch giả Phương Đặng!'),
(8, 'Cưng chiều cô vợ quân nhân - Tập 51', 'cung_chieu_co_vo_quan_nhan_tap51.jpg', 2, 14, 1, '2020-07-27', 106, 6767, 0, 0, 0, 0, 'Trong trận chiến lần này, ngoài người của đội dự bị và Quân khu 2 ra thì còn có đội thủy quân lục chiến và những tinh anh đến từ Quân khu 9, điều đó chứng tỏ Lý Tông Dũng đã cố gắng để huy động mọi nguồn lực có thể sử dụng. Tuy nhiên, bọn họ đã tấn công đảo rất nhiều lần những vẫn chưa thể xâm nhập vào được.\r\n\r\nĐối với Lý Tông Dũng, Nhiếp Nhiên mới là con át chủ bài của trận chiến này. Cô không những có bản lĩnh, mà tất cả những cạm bẫy đang ngăn cản bọn họ đều do một tay cô sắp xếp. Liệu Nhiếp Nhiên có giúp được toàn đội, có thể góp phần giúp Hoắc Hoành hoàn thành nhiệm vụ hay không?\r\n\r\nWaka trân trọng giới thiệu Tập 51 (Chương 1604.1 đến chương 1621.2) nằm trong tiểu thuyết ngôn tình dài kỳ Cưng chiều cô vợ quân nhân – tác giả Huỳnh Hạ.'),
(9, 'Cưng chiều cô vợ quân nhân - Tập 52', 'cung_chieu_co_vo_quan_nhan_tap52.jpg', 2, 14, 1, '2020-07-30', 84, 5608, 0, 0, 0, 0, 'Với sự hướng dẫn của Nhiếp Nhiên, tất cả mọi người cùng âm thầm lên đảo chính từ hòn đảo phụ phía sau. Khi nhận thấy có những thi thể chết một cách bất thường, Nhiếp Nhiên lập tức nhận ra sự không ổn. Không thể để hành động này xảy ra sơ sót vì khinh địch, cô lại lặng lẽ hành động một mình.\r\n\r\nBên cạnh việc tiêu diệt cướp biển và kho vũ khí đạn dược, Nhiếp Nhiên còn có một nhiệm vụ quan trọng hơn: Ngăn không cho quân đội lấy được tin tức từ đám cướp biển, bởi rất có thể sẽ liên lụy tới Hoắc Hoành. Chính cách thức hành động có sự xung đột này đã khiến Nhiếp Nhiên làm mếch lòng nhiều người trong đội ngũ…\r\n\r\nWaka trân trọng giới thiệu Tập 52 (Chương 1622.1 đến chương 1642.2) nằm trong tiểu thuyết ngôn tình dài kỳ Cưng chiều cô vợ quân nhân – tác giả Huỳnh Hạ.'),
(10, 'Chỉ yêu mình em - Tập 16', 'chi_yeu_minh_em_tap16.jpg', 8, 14, 1, '2020-07-26', 20, 2238, 0, 0, 0, 0, 'Sau khi phát hiện ra thân phận của Dịch Hải Âm, Nhan Linh vô cùng tức giận vì anh đã giấu giếm cô bao lâu nay. Cô tức giận bỏ đi, thậm chí không có Dịch Hải Âm cơ hội giải thích. Lẽ nào mối quan hệ của hai người vừa mới bắt đầu đã phải đặt dấu chấm hết tại đây?\r\n\r\nNghiêm Thừa Trì bỗng nhiên rời đi không một lời giải thích khiến Hạ Trường Duyệt lo lắng không yên. Nhân cơ hội Hướng Phong cử cô đi công tác ở thành phố S, Hạ Trường Duyệt đã tìm cách thăm dò tin tức của anh nhưng đều vô ích. Bất ngờ là ngay sau đó, cô lại gặp anh ở bữa tiệc, thế nhưng anh lại tỏ ra không hề quen biết cô. Tại sao Nghiêm Thừa Trì lại tỏ ra không quen biết Hạ Trường Duyệt như vậy?\r\n\r\nWaka trân trọng giới thiệu Tập 16 (chương 661 đến chương 704) nằm trong bộ truyện ngôn tình hiện đại Chỉ yêu mình em – tác giả Phù Đồ Yêu.'),
(11, 'Quỷ giấu người - Tập 10', 'quy_giau_nguoi_tap10.jpg', 9, 6, 1, '2020-07-28', 3, 468, 0, 0, 0, 0, '“Mười vạn quỷ khóc than, mộ ưng Bắc Tạng tàn.”\r\n\r\nHành trình đi lên Tây Tạng tìm hai anh em Tiểu Mã của Tiểu Thất và Triệu mù chứa đầy những bí ẩn rùng rợn. Đầu tiên là trên đường đi, mọi người gặp phải một chiếc xe ma không người lái, sau xe còn có một kẻ với gương mặt quái dị nằm vắt vẻo. Một người thợ săn ưng bí ẩn, có thân thế không tầm thường. Một chiếc rương da chứa quái vật đầy kỳ quái.\r\n\r\nTrong chuyến đi này, Tiểu Thất cũng được mở mang tầm mắt với tục thiên táng đầy huyền bí cũng như đáng sợ của người Tây Tạng. Đó là tục lệ cho kền kền ăn thịt người chết, với mong muốn người đó sẽ được lên thiên đường. \r\n\r\nĐiều bất ngờ nhất, đó là, nhóm Tiểu Thất dường như phát hiện ra bí mật về loài chim ưng khổng lồ to bằng cả căn phòng... Bí mật đó là gì?\r\n\r\nWaka trân trọng giới thiệu Tập 10 (từ chương 136 đến chương 150) thuộc bộ truyện phiêu lưu thám hiểm dài kỳ Quỷ giấu người - tác giả Truyền Thuyết Một Con Cá.'),
(14, 'Bạn là ai trong mắt người khác', 'ban_la_ai_trong_mat_nguoi_khac.jpg', 10, 21, 7, '2020-01-14', 293, 1476, 0, 0, 0, 0, 'Để thành công trong thời đại bùng nổ thông tin, hiện nay, bạn cần phải trở thành một cái tên nổi bật trong lĩnh vực của mình. Dù bạn là doanh nhân, học sinh, nghệ sĩ, giáo viên dạy yoga, nhà thiết kế hay đầu bếp, bạn là một “ thương hiệu” có danh tiếng riêng cần được công nhận. Bạn không thể để người khác kiểm soát thương hiệu của chính mình.\r\n\r\nQuá trình dựng thương hiệu cá nhân cũng giống như lạc vào khu rừng vậy. Giữa những blog, mạng xã hội, xây dựng quan hệ, trang web, tiếp thị nội dung, trang đích, email, quan hệ công chúng, có quá nhiều thứ bạn cần quản lý trong thế giới luôn trực tuyến, luôn kết nối này.\r\n\r\nBạn là ai trong mắt người khác ? được sinh ra để đưa bạn thoát khỏi những lối mòn, dẫn lối chỉ đường bạn đến thành công bằng các lời khuyên và chiến thuật có hệ thống, được nêu rõ trong từng chương. Và mỗi chương thực chất là một trọng tâm của những người cuốn sách kinh doanh.\r\n\r\nNếu bạn muốn người thân, bạn bè và đồng nghiệp công nhận khả năng của mình, đây chính là cuốn sách DÀNH CHO BẠN.'),
(15, 'Hệ thống nhà ma - Tập 18', 'he_thong_nha_ma_tap18.jpg', 21, 6, 1, '2020-08-02', 4, 384, 0, 0, 0, 0, 'Bóng đen mặc áo khoác y tá đang cúi đầu, dường như trong miệng đang lẩm bẩm cái gì đó, nó càng lúc càng đến gần phòng bệnh nơi Trần Ca đang đứng, Trần Ca cũng càng lúc càng nhìn rõ.\r\nCái bóng đen đang di chuyển này là một ma nữ khoác áo y tá, phần eo cong lên, các bộ phận trên cơ thể cực kỳ không cân đối, đến ngón tay cũng rất dị dạng, toàn thân như bị xe cán qua vậy.\r\nChuyện gì đã xảy ra với nữ y ta trong bệnh viện tâm thần bị bỏ hoang này vậy? Tại sao linh hồn của bà ta không thể siêu thoát? Những bí ẩn gì sẽ được vén màn trong tập này?\r\n\r\nWaka trân trọng giới thiệu Tập 18 (chương 171 - 180) bộ truyện kinh dị, hiện đại dài kỳ Hệ thống nhà ma - tác giả Tôi biết sửa điều hòa. '),
(16, 'Thầy dời mộ - Tập 10', 'thay_doi_mo_tap10.jpg', 22, 6, 1, '2020-07-31', 4, 371, 0, 0, 0, 0, '\r\nCó rất nhiều yêu quái có tu vi cao ẩn nấp sau rừng trúc nhằm trục lợi từ việc Cố U Hoàng độ kiếp. Nhà họ Cố sẽ làm những gì để giải quyết bọn chúng?\r\n\r\nTrong số những yêu quái này, giao long là kẻ lợi hại nhất. Tuy chỉ là người phàm, nhưng với trí thông minh là lòng dũng cảm của mình, Trần An đã tìm ra được nhiều điểm quan trọng.\r\n\r\nNhững điểm quan trọng đó là gì? Lần này Trần An sẽ “trổ tài” như thế nào? \r\n\r\nWaka trân trọng giới thiệu đến các bạn tập 10 (từ chương 91 - 100) của cuốn tiểu thuyết linh dị dài kỳ mang tên Thầy dời mộ - Tác giả Tô Hoàn.'),
(17, 'Mộ Khâu Tử - Tập 15', 'mo_khau_tu_tap15.jpg', 17, 6, 1, '2020-07-31', 1, 226, 0, 0, 0, 0, 'Trương Viễn Dương quay trở về thôn Tọa Ngưu và biết được rất nhiều việc đã thay đổi. Những sự việc đó là gì? Nó có tác động như thế nào đến cậu?\r\n\r\nTheo lời Bàng Phương, Trương Viễn Dương đi đến trụ sở của Dân Dị Xã để gặp người điểm canh. Tại đây, cậu lại đối mặt với những chuyện rất kì quái...\r\n\r\nMột vụ án ly kì mang tên “Cô gái động Lạc Hoa” lại dẫn dắt Trương Viễn Dương đến với những sự kiện mới mẻ...\r\n\r\nWaka trân trọng giới thiệu đến các bạn tập 15 (từ chương 141 - 150) của cuốn tiểu thuyết linh dị dài kỳ mang tên Mộ Khâu Tử - Tác giả Hà Đăng.'),
(18, 'Thanh quỷ kỷ sự - Tập 9', 'thanh_quy_ky_su_tap9.jpg', 23, 6, 1, '2020-07-31', 11, 672, 0, 0, 0, 0, 'Tiệm làm đẹp, giảm cân Tịnh Tịnh không còn là bí mật riêng của Lâu Ninh và Chu Văn Văn nữa, mà sau khi bám theo hai người, hai cô bạn cùng phòng cũng nghiễm nhiên thành khách quen ở đây. Đương nhiên, ai cũng đẹp lên trông thấy, nhất là Chu Văn Văn, có xu thế trở thành hoa khôi mới nổi.\r\n\r\nChu Văn Văn tự tin đi tìm Lâm Lâm một lần nữa để tỏ tình, nhưng lần này, phản ứng của Lâm Lâm càng làm cô ta tuyệt vọng. Lâm Lâm không những không từ chối mà còn tỏ vẻ chê bai, ghét bỏ ngoại hình của cô ta. Thêm phản ứng nôn ọe như gặp phải thứ gì kinh tởm của Hà Thanh, Chu Văn Văn và Lâu Ninh như bị đả kích sâu sắc.\r\n\r\nSau đó, vào một ngày, Hà Thanh bất ngờ khi thấy Lâu Ninh tới tìm mình. Thứ trên mặt Lâu Ninh thực chất là gì? Bí mật của Cửa hàng giảm cân Tịnh Tịnh kinh khủng tới mức nào mà đến Lâm Lâm cũng suỷt trở tay không kịp?\r\n\r\nWaka trân trọng giới thiệu Tập 9 (Từ chương 6 tới chương 20 - Quyển 8) thuộc bộ truyện linh dị nữ dài kỳ Thanh quỷ kỷ sự - tác giả Kinh Cức Chi Ca.'),
(19, 'Hoàng Hà phục yêu truyện - Tập 17', 'hoang_ha_phuc_yeu_truyen_tap17.jpg', 24, 6, 1, '2020-07-29', 4, 429, 0, 0, 0, 0, 'Trên bãi sông Hoàng Hà có một câu là Vô Ý hữu ý, Trần Cửu trọng nghĩa. Tên thật của Người Cầm Đèn Bàng Đại của Thất môn là Bàng Vô Ý, nhũ danh của Trần Nhất Khôi là Trần Cửu. Ý của câu này tức là Bàng Đại mới là người nặng tình nhất, Trần Cửu là người nặng nghĩa nhất.\r\n\r\nWaka trân trọng giới thiệu đến các bạn tập 17 (từ chương 161 - 170) của cuốn tiểu thuyết linh dị dài kỳ mang tên \"Hoàng Hà phục yêu truyện\" - Tác giả Long Phi Có Yêu Khí!'),
(20, 'Hệ thống nhà ma - Tập 17', 'he_thong_nha_ma_tap17.jpg', 21, 6, 1, '2020-07-27', 3, 416, 0, 0, 0, 0, 'Khu Nội Trú Số Ba có bệnh nhân tâm thần, có linh hồn chết oan chưa siêu thoát, còn có quái vật từ sau cánh cửa máu chạy ra nữa, có thể nói là mỗi bước đi đều mang nguy hiểm chết người.\r\n\r\nCó thể nói, đây chính là ngôi nhà đáng sợ nhất từ trước đến nay được khám phá trong truyện. Liệu vụ án oan đằng sau đó có được phá để giải thoát cho một trung tâm tâm thần bị bỏ hoang được trở về với những năm tháng yên bình chỉ còn tiếng cười của bệnh nhân?\r\n\r\nWaka trân trọng giới thiệu Tập 17 (chương 161-170) bộ truyện kinh dị, hiện đại dài kỳ Hệ thống nhà ma - tác giả Tôi biết sửa điều hòa.'),
(21, 'Thanh quỷ kỷ sự - Tập 8', 'thanh_quy_ky_su_tap8.jpg', 23, 6, 1, '2020-07-25', 9, 588, 0, 0, 0, 0, 'Lục Thiệu Đan cảm thấy không yên tâm về chuyện của cô mình là Lục Minh Hà nên đã nhờ Hà Thanh tới nhà vợ chồng cô ấy để xem xét giúp. Quả nhiên, Hà Thanh đã phát hiện ra những thứ không bình thường. Lan can khắc cá chép vượt long môn, chiếc đầu rồng quỷ dị, những đứa con bị sẩy của Lục Minh Hà không hề đi đầu thai mà cứ quanh quẩn ở bên để bảo vệ mẹ mình.\r\n\r\nĐêm hôm ấy, khi căn nhà chìm vào giấc ngủ, quả nhiên có thứ không sạch sẽ tìm tới Lục Minh Hà. Thứ nó muốn chính là sinh cơ của Lục Minh Hà, hay đúng hơn là huyết mạch nhà họ Lục, khí vận của nhà họ Lục. Hà Thanh đã ra tay đánh tan nó, đồng thời tìm ra chân tướng sự việc. Một chân tướng đau lòng, mà kẻ gây ra, lại chính là người mà Lục Minh Hà yêu thương nhất. \r\n\r\nNhưng điều Hà Thanh không biết, là sự việc lần này, lại có liên quan tới Lâm Lâm, cậu trai trẻ năm nhất bá đạo mà cô đang dìu dắt, rèn rũa.\r\n\r\nWaka trân trọng giới thiệu Tập 8 (Từ chương 13 - Quyển 7 đến hết chương 5 - Quyển 8) thuộc bộ truyện linh dị dài kỳ Thanh quỷ kỷ sự - tác giả Kinh Cức Chi Ca.'),
(22, 'Mộ Khâu Tử - Tập 14', 'mo_khau_tu_tap14.jpg', 17, 6, 1, '2020-07-25', 2, 252, 0, 0, 0, 0, 'Trương Viễn Dương đi đến chân núi sau thôn thì bị một kẻ lạ mặt bắt vào trong hang núi nơi có đàn khỉ mặt quỷ và Thần núi. Tại đây, đám người lạ mặt này sẽ làm gì KINH KHỦNG với đàn khỉ và Thần núi? Về phần mình, Trương Viễn Dương sẽ ra sao? Cậu sẽ làm những gì?\r\n\r\nVà quan trọng là, cậu sẽ gặp được những ai?\r\n\r\nWaka trân trọng giới thiệu đến các bạn tập 14 (từ chương 131 - 140) của cuốn tiểu thuyết linh dị dài kỳ mang tên Mộ Khâu Tử - Tác giả Hà Đăng.'),
(23, 'Hoàng Hà phục yêu truyện - Tập 16', 'hoang_ha_phuc_yeu_truyen_tap16.jpg', 24, 6, 1, '2020-07-22', 6, 427, 0, 0, 0, 0, 'Khoảng hai mươi hay ba mươi năm về trước, trên bãi sông Hoàng Hà có một vị đạo sĩ vô cùng thú vị. Người này không môn không phái, lẻ loi một mình nhưng lại chẳng hề sợ hãi cái gì, ông ta chuyên chọn những nhân vật mà người khác không dám động vào để lừa gạt hoặc trộm cướp gì đó, cái gì ông ta cũng làm được. \r\n\r\nLí do khiến vị đạo sĩ kia không bao giờ thất bại chẳng phải vì võ công của ông ta đã đạt đến mức vô địch thiên hạ mà chẳng qua là ông ta có hai sở trường. Cái thứ nhất là chạy rất nhanh, mỗi khi ông ta bị phát hiện sẽ lập tức bỏ chạy mà rất ít người có thể đuổi kịp ông ta. Cái thứ hai chính là ông ta chịu đòn rất giỏi, cơ thể ông ta cứ như được làm từ sắt thép vậy, nhưng vết thương người bình thường chắc chắn không chịu nổi mà vào tay ông ta thì đơn giản như một bữa ăn sáng.\r\n\r\nQuả thực, bãi sông Hoàng Hà trải dài nên chuyện và người kỳ bí không hề hiếm. Chuyện thú vị gì sẽ xảy ra ở tập này?\r\n\r\nWaka trân trọng giới thiệu đến các bạn tập 16 (từ chương 151 - 160) của cuốn tiểu thuyết linh dị dài kỳ mang tên \"Hoàng Hà phục yêu truyện\" - Tác giả Long Phi Có Yêu Khí!'),
(24, 'Hệ thống nhà ma - Tập 16', 'he_thong_nha_ma_tap16.jpg', 21, 6, 1, '2020-07-21', 2, 402, 0, 0, 0, 0, '\r\nTrần Ca khám phá một bệnh viện tâm thần đã bị bỏ hoang. Ở đây anh khám phá ra được những bí ẩn liên quan đến Khu Nội Trú Số Ba của bệnh viện - nơi lưu trú của những bệnh nhân nặng nhất nơi này. Có tổng cộng 10 căn phòng ở Khu Nội Trú Số Ba, mỗi phòng chỉ có 1 bệnh nhân và mức độ nguy hiểm của các bệnh nhân được xếp theo thứ tự phòng từ thấp đến cao.\r\n\r\nĐiều đáng ngạc nhiên đó chính là trong hồ sơ bệnh nhân có đầy đủ thông tin của 9 người, chỉ duy phòng bệnh số 3 là gần như bốc hơi mọi thông tin về bệnh nhân. Vậy người bệnh trước kia ở phòng số 3 này là ai? Tại sao những người còn lại đều biến mất sau khi bệnh viện bị bỏ hoang?\r\n\r\nWaka trân trọng giới thiệu Tập 16 (chương 151 - 160) bộ truyện kinh dị, hiện đại dài kỳ Hệ thống nhà ma - tác giả Tôi biết sửa điều hòa.'),
(26, 'Cô vợ siêu sao - Tập 3', 'co_vo_sieu_sao_tap3.jpg', 28, 15, 1, '2020-07-31', 58, 3125, 0, 0, 0, 0, 'Quay xong bộ phim “Lạc Sơn đại địa chấn”, Tô Miên được nghỉ xả hơi trước khi vào bộ đội quay chương trình giải trí. Cô đưa hai nhóc thông minh đáng yêu của mình về nhà họ Cố để nghỉ ngơi.\r\n\r\nCố Quân Nghiên biết cô về nhà nên đã mang Hắc Dạ - chú chó nghiệp vụ đã cứu Tô Miên về, để cả hai làm quen, vì Hắc Dạ cũng tham gia chương trình giải trí cùng với cô. Tô Miên có khả năng đặc biệt nên càng thêm tự tin, cuộc sống ở nhà họ Cố của cô cũng vô cùng vui vẻ thoải mái.\r\n\r\nNhưng kỳ nghỉ còn chưa kết thúc, Úy Thanh đã nhận thêm công việc, Tô Miên lại tràn đầy khí thế quay về làm việc, nhưng cô lại bị đạo diễn quay quảng cáo đại ngôn cho một thương hiện thức ăn cho chó cao cấp làm khó.\r\n\r\nCố Quân Nghiên dẫn Hắc Dạ tới thăm nhà Tô Miên, phát hiện trị an ở khu nhà cô ở không tốt lắm, nên anh đã yêu cầu cô chuyển nhà tới Tiểu khu Nhạc Dương. Sau đó, anh còn quay lại dạy dỗ tên biến thái có ý đồ xấu với Tô Miên.\r\n\r\nWaka trân trọng giới thiệu Tập 3 (từ chương 41 đến chương 60) thuộc bộ truyện Cô vợ siêu sao - tác giả Hứa Lục Lục.'),
(27, 'Em là cả nhân gian của anh - Tập 17', 'em_la_ca_nhan_gian_cua_anh_tap17.jpg', 27, 14, 1, '2020-07-31', 5, 992, 0, 0, 0, 0, 'Sau đêm hội từ thiện của Công ty Giải trí TS, lại có tin tức về mối quan hệ mập mờ giữa Diên Hoa - nữ nghệ sĩ hàng đầu của Công ty Giải trí TS và Lương Thần phát tán ra ngoài.\r\n\r\nCảnh Hảo Hảo làm như không hề biết đến tin tức kia nhưng thật ra trong lòng cô đang vô cùng rối rắm. Trong đầu cô chỉ quanh quẩn tình cảnh Lương Thần và Diên Hoa vai kề vai đứng chung với nhau.\r\n\r\nTrước khi biết Lương Thần, Cảnh Hảo Hảo đã từng nghe lời đồn về anh. Bây giờ, tin đồn của Lương Thần và Diên Hoa bay ngập trời, chỉ có một khả năng, đó là… Lương Thần tự nguyện.\r\n\r\nLương Thần không ngăn cấm việc giới truyền thông đưa tin anh và Diên Hoa, là anh đang âm thầm công khai mối quan hệ giữa mình và cô ấy sao?\r\n\r\nWaka trân trọng giới thiệu Tập 17 (chương 481 đến chương 510) nằm trong bộ truyện ngôn tình hiện đại Em là cả nhân gian của anh – tác giả Diệp Phi Dạ.'),
(28, 'Uông xưởng công - Tập 43', 'uong_xuong_xong_tap43.jpg', 26, 16, 1, '2020-07-31', 22, 1345, 0, 0, 0, 0, 'Sau khi chiếu thứ phế thái tử được ban xuống, thái tử Trịnh Trọng và Hoàng quý phi Phạm thị đều cố gắng giãy giụa lần cuối, nhưng có vẻ tất cả đều vô dụng trước Vĩnh Chiêu Đế. Phạm thị còn định dùng chiêu cuối cùng coi như cọng rơm cứu mạng, có điều, thứ chờ bà ta lại là một kết cục thảm hại hơn.\r\n\r\nDiệp Tuy lại tiến cung thăm chị gái. Lần này vừa gặp lại em mình, Diệp Tự bất giác nhận ra một điều: Diệp Tuy và Uông Ấn đã làm chuyện vợ chồng, nay em gái nàng đã mang dáng vẻ quyến rũ của phụ nữ được trải nghiệm cảm giác yêu đương, chuyện này là một mối nguy trong tình hình hiện tại. Diệp Tự nhắc nhở em mình phải cẩn thận mà không ngờ rằng có kẻ cũng đang chú ý tới điều đó.\r\n\r\nWaka trân trọng giới thiệu Tập 43 (Chương 1051 đến chương 1075) nằm trong tiểu thuyết ngôn tình cổ đại dài kỳ Uông xưởng công – tác giả Bình Bạch Huynh.'),
(29, 'Doanh môn phục quý - Tập 8', 'doanh_mon_phuc_quy_tap8.jpg', 25, 13, 1, '2020-07-31', 20, 1016, 0, 0, 0, 0, 'Khang Quận vương thắng trận trở về, lập được công lớn, chắc chắn sẽ được ban thưởng hậu hĩnh. Những người có liên quan cũng được thơm lây, trong đó có Trần Doãn Viễn. Tuy nhiên, chưa đợi được đến ngày hái quả ngọt, chuyện khiến người ta đau đầu đã xuất hiện.\r\n \r\nNgười trong Kinh đồn nhau, có lẽ Hoàng thượng sẽ chọn con gái của các quan lại có công tiến cung, coi như là một phần thưởng đặc biệt. Trần gia bàng hoàng, chẳng lẽ Lâm Di cũng sẽ có tên trong danh sách?\r\n \r\nKỳ thi Xuân diễn ra, liệu mọi chuyện có diễn ra như trong kiếp trước, Lâm Chính Thanh vẫn sẽ đỗ đầu bảng?\r\n \r\nWaka trân trọng giới thiệu Tập 8 (từ chương 106 đến chương 120) nằm trong bộ tiểu thuyết ngôn tình dài tập Doanh môn phục quý – tác giả Vân Nghê.'),
(30, 'Cẩm đường quy yến - Tập 32', 'cam_duong_quy_yen_tap32.jpg', 29, 13, 1, '2020-07-30', 15, 1022, 0, 0, 0, 0, 'Nội giám trong cung đến Tần phủ tuyên đọc thánh chỉ phong Tần Nghi Ninh làm siêu nhất phẩm cáo mệnh phu nhân, đồng thời ban thưởng vàng bạc, tơ lụa, đồ trang sức.\r\n\r\nTần Hòe Viễn và Bàng Kiêu thấy vậy đều hiểu rõ, đây là Lý Khải Thiên giám thị bọn họ. Lý Khải Thiên đưa phần thưởng tới thẳng Tần phủ cho Tần Nghi Ninh, chính là nói cho bọn họ biết, thánh thượng đã biết sự đi lại thân mật giữa hai nhà.\r\n\r\nNgay sau đó, một nội thị khác lại đến tuyên chỉ, thông báo bãi chức quan của tất cả nam tử Tần gia, vĩnh viễn không tuyển dụng.\r\n\r\nMột câu này, đã khiến cảnh tượng náo nhiệt ngoài sân lập tức yên tĩnh lại. Ngoại trừ Tần Hòe Viễn vẫn giữ được vẻ bình tĩnh, tất cả mọi người đều lộ vẻ khiếp sợ không nói nên lời.\r\n\r\nWaka trân trọng giới thiệu Tập 32 (từ chương 571 đến chương 590) thuộc bộ truyện ngôn tình cổ trang quyền mưu đỉnh cao Cẩm đường quy yến - tác giả Phong Quang Tế Nguyệt.'),
(31, 'Thiên hậu trở về - Tập 19', 'thien_hau_tro_ve_tap19.jpg', 30, 16, 1, '2020-07-29', 10, 1573, 0, 0, 0, 0, 'Sau khi album solo đầu tay của Hạ Lăng được tung ra thị trường, cô đã trở nên vô cùng nổi tiếng. Lâm Úc Nam nhân cơ hội này nhận cho cô một hợp đồng quảng cáo của một hãng điện thoại đẳng cấp cao, phù hợp với địa vị của cô. Có điều, quảng cáo phải quay với môn dù lượn có tính thử thách ở vùng núi cao có phong cảnh tuyệt đẹp.\r\n\r\nHạ Lăng đã dành nhiều thời gian học môn thể thao mới này, hơn nữa lúc quay còn có Lệ Lôi ở bên cạnh giúp đỡ. Nhưng tất cả mọi người đều không thể ngờ được rằng thời tiết lại có vấn đề…\r\n\r\nGiống như hiệu ứng cánh bướm, sự cố lần này đã khiến cuộc sống của Hạ Lăng hoàn toàn đảo lộn.\r\n\r\nWaka trân trọng giới thiệu Tập 19 (Chương 361 đến chương 380) nằm trong tiểu thuyết ngôn tình hiện đại dài kỳ Thiên hậu trở về – tác giả Hạ Uyển Anh.'),
(32, 'Kinh doanh bằng tiền của khách hàng', 'kinh_doanh_bang_tien_cua_khach_hang.jpg', 32, 12, 17, '2020-05-08', 4, 683, 0, 0, 0, 0, 'Cho dù bạn là một doanh nhân tham vọng đang thiếu vốn cần thiết để khởi nghiệp, một doanh nhân trong giai đoạn đầu đang khát vốn mạo hiểm để cất cánh, một lãnh đạo doanh nghiệp đang tìm kiếm vốn để phát triển doanh nghiệp của mình, hay là một nhà đầu tư thiên thần, một người hướng dẫn, một người thúc đẩy doanh nghiệp hay một vườn ươm tạo chuyên nghiệp hỗ trợ các doanh nghiệp có tiềm năng kinh doanh cao…\r\n\r\nThì đây là cuốn sách cung cấp tới bạn một con đường chắc chắn nhất để bắt đầu, huy động vốn, phát triển doanh nghiệp của chính bạn hoặc các doanh nghiệp mà bạn đang hỗ trợ với những kiến thức mới quan trọng dành cho giới học giả.\r\n\r\nCuốn sách sẽ hấp dẫn bất cứ ai quan tâm đang tìm kiếm sự cảm hứng về cách giữ nhu cầu tiền mặt ở mức tối thiểu và tránh được các rủi ro trong đầu tư – thì đây là cuốn sách đầu tiên mà họ cần cầm lên và đọc nó.\r\n\r\nCuốn “Kinh doanh bằng tiền của khách hàng” do Tiến sĩ JOHN MULLINS, phó Giáo sư về quản trị thực hành tại Trường Kinh doanh Luân Đôn, một trong những tiếng nói có quyền lực và nổi tiếng nhất trên thế giới trong lĩnh vực sáng tạo, tài chính và phát triển các doanh nghiệp kinh doanh mạo hiểm – là tác giả.\r\n\r\nÔng là một người kỳ cựu của ba dự án mạo hiểm, bao gồm một công ty đã được đại chúng hóa, cũng là tác giả của các cuốn sách đánh giá các cơ hội kinh doanh (Thử nghiệm một cách thức kinh doanh mới) và trong việc sáng tạo các mô hình kinh doanh mang tính đột phá (Thực hiện kế hoạch B viết cùng với Randy Komisar). John là một diễn giả quen thuộc với cộng đồng doanh nhân và các cộng sự của họ, với các giám đốc điều hành của các công ty tăng trưởng nhanh và các nhà đầu tư vào các công ty.\r\n\r\nMời các bạn đón đọc'),
(33, 'Cuộc chiến phố Wall', 'cuoc_chien_pho_wall.jpg', 34, 11, 10, '2020-05-18', 6, 568, 0, 0, 0, 0, 'Kể từ thời khai sinh chế độ Cộng hòa, người Mỹ đã phải bận tâm với các câu hỏi về ngân hàng, tiền và tín dụng, với quyền lực của chúng ta, với vấn đề kép - làm thế nào để tạo ra các tập đoàn đồng thời hạn chế sức phá hoại của của chúng. Từ giá trị của tiền tệ trong túi mọi người đến bản chất của tiền tệ và mối liên hệ của nó với tiền giấy và kim loại , các nhà kinh tế, nông dân và các nhà máy đã liên tục đưa ngành ngân hàng vào trung tâm chính trị của Mỹ. Không nhiều chủ đề gây ra tranh cãi hay kiên kết chặt chẽ cuộc chiến, nền chính trị và cuộc sống hằng ngày của nước Mỹ đến vậy.\r\n\r\nCuốn sách cung cấp lịch sử ngắn gọn về tài chính nước Mỹ, hình thức tập đoàn và tập trung vào các cuộc khủng hoảng ngày càng trầm trọng kể từ năm 1929, khi bối cảnh pháp lý mà chúng ta biết phần lớn là hình thành: cuộc khủng hoảng tiết kiệm của thập niên 1980, sự sụp đổ của gã khổng lồ ngành năng lượng Enron với một loạt vụ bê bối kế toán, và cuộc khủng hoảng nhà đất với cái tên Đại suy thoái. Mỗi thảm họa đều phát triển từ khủng hoảng trước đó. Việc kể các câu chuyện trên theo trình tự sẽ giúp minh họa mối tương quan giữa chúng và cung cấp cho bạn những hiểu biết cần thiết để lường trước và chuẩn bị tốt hơn cho cuộc khủng hoảng tài chính tiếp theo.\r\n\r\nWaka trân trọng giới thiệu cuốn sách Cuộc chiến phố Wall - tác giả Kathleen Day!'),
(34, 'Content đắt có bắt được trend', 'content_dat_co_bat_duoc_trend.jpg', 33, 8, 7, '2020-05-25', 5, 1063, 0, 0, 0, 0, 'Có bốn yếu tố then chốt cần được cân nhắc với trước khi tiến hành bất kỳ chiến dịch truyền thông nào. Đó là:\r\n\r\n- Mục tiêu\r\n- Tính hiệu quả\r\n- Xu hướng\r\n- Tỷ suất hoàn vốn\r\n\r\nChúng ta đang sống trong thời đại mà để có thể theo kịp trong không gian truyền thông số, tất cả mọi thứ cần quan tâm là Content, Content và Content. Điều này đặt rất nhiều áp lực lên bộ phận truyền thông và nhiều áp lực hơn nữa lên chính bản thân bạn nếu bạn là chủ một doanh nghiệp nhỏ.\r\n\r\nNhưng ngày này, để có thể theo kịp sự cạnh tranh trong tất cả các không gian truyền thông khác nhau, tỷ lệ mà bạn cần tạo ra những content chất lượng quả là điên rồ. Thậm chí, có những người còn nói rằng họ phải sản xuất ra 50 bài content mỗi ngày chỉ để đăng tải lên các tài khoản thương hiệu cá nhân. Điều này nghe có vẻ điên rồ, nhưng hãy thử chia nhỏ con số trên ra và bạn sẽ thấy rằng nó hoàn toàn hợp lý…\r\n\r\nVà vấn đề duy nhất ở đây chính là chúng ta luôn luôn cần thêm nhiều nội dung hơn nữa. Nhiều hơn nữa những nội dung mới mẻ và thú vị làm bất ngờ những người đại diện, lôi cuốn khán giả tìm đến và tiêu tiền. Việc đăng một bức hình lặp đi lặp lại không còn hiệu quả. Nó giống như việc một người nổi tiếng mặc cùng một bộ đồ cho hai sự kiện Thảm đỏ, và ngay lập tức, mọi người sẽ nhận ra điều đó.\r\n\r\nWaka trân trọng giới thiệu cuốn sách Content đắt có bắt được trend - tác giả Ryan Wakeman!'),
(35, 'Từ chiến lược Marketing đến doanh nghiệp thành công', 'tu_chien_luoc_marketing_den_doanh_nghiep_thanh_cong.jpg', 35, 8, 10, '2020-06-15', 8, 718, 0, 0, 0, 0, '                    Việc tìm hiểu, nghiên cứu và phân tích thị trường, lĩnh vực hoạt động của doanh nghiệp rất quan trọng để xây dựng nên một chiến lược marketing phù hợp, từ đó giúp tối ưu các hoạt động và đem lại những lợi ích cốt lõi cho doanh nghiệp cũng như cho mục tiêu vì xã hội. Trong “Từ chiến lược marketing đến doanh nghiệp thành công”, Philip Kotler, một trong những tiếng nói hàng đầu của thế giới về kinh doanh và tiếp thị, và Nancy Lee, Chủ tịch Social Marketing Services, Inc., cung cấp 25 thực tiễn tốt nhất, giúp bạn có được cái nhìn sâu sắc nhất trong việc ra quyết định trong lĩnh vực trách nhiệm xã hội của doanh nghiệp cũng như có được chiến lược marketing hiệu quả nhất, nhằm tối đa hóa lợi nhuận của doanh nghiệp, đồng thời thực hiện tốt nhất các vấn đề về môi trường, kinh tế và xã hội. Với cuốn sách này, bạn sẽ học hỏi được những bài học sâu sắc và đó chính là chìa khóa giúp bạn đạt được thành công.\r\n\r\nCuốn sách “Từ chiến lược marketing đến doanh nghiệp thành công” sẽ giúp các nhà quản lí doanh nghiệp và các nhân viên có được sự chuẩn bị tốt hơn trong việc lựa chọn những vấn đề phù hợp nhất, những đối tác tốt nhất, và những chiến lược marketing hiệu quả nhất. Cuốn sách sẽ giúp các bạn có thêm nhiệt huyết để đưa ra nhiều đề xuất hơn nữa cũng như tạo nguồn cảm hứng cho bạn nảy sinh những sáng kiến tuyệt vời. Và có lẽ quan trọng nhất là, nó sẽ nâng cao độ chính xác cho các báo cáo của bạn cũng như là nguồn tài liệu quý báu cho công ty bạn và mục tiêu vì xã hội.\r\n\r\nWaka xin trân trọng giới thiệu!                '),
(36, 'Những nhà kinh tế tiên phong', 'nhung_nha_kinh_te_tien_phong.jpg', 36, 11, 7, '2020-06-22', 0, 267, 0, 0, 0, 0, 'Một chế độ phong kiến kiểu mới đang trỗi dậy ở phạm vi toàn cầu, với những tập đoàn độc quyền trao tặng chiến lợi phẩm cho người giàu, còn các thường dân thì sống một cuộc đời bất ổn định và đầy biến động. Nhưng trong cuốn sách “Những nhà kinh tế tiên phong”, tác giả Nathan Schneider đã chỉ ra rằng có một phương án thay thế đã xuất hiện, chỉ chờ chúng ta khám phá và tận dụng. Đó chính là tiến hành những mô hình hợp tác.\r\n\r\nMột nền kinh tế cấp tiến mới sẽ được hình thành trong tương lai gần, và nó bén rễ từ truyền thống hợp tác đã luôn trao sức mạnh cho con người trong hàng thế kỷ. Chủ nghĩa hợp tác đang được hồi sinh, trả lại quyền làm chủ, quyền giám sát và quyền điều hành cho người dân - những người vừa là chủ sở hữu, vừa là người quản trị, đồng thời là người cấp vốn, cũng như là người tiêu dùng kiêm thành viên của những liên minh hoạt động vì lợi ích chung.\r\n\r\nCác tổ chức hợp tác là những doanh nghiệp thuộc sở hữu chung của mọi người, được vận hành một cách dân chủ nhằm cải thiện lợi ích về kinh tế, xã hội và văn hóa của các thành viên. Những liên minh này thường nổi lên trong những giai đoạn khủng hoảng, giúp người dân có tiếng nói tại nơi làm việc, cũng như tại các tổ chức liên hiệp tín dụng, dịch vụ y tế, đơn vị cung cấp tiện ích cô - những nơi mà con người luôn dựa vào để duy trì một cuộc sống tốt đẹp.\r\n\r\nCuốn sách “Những nhà kinh tế tiên phong” cho ta biết về cuộc cách mạng đang diễn ra, về những người tiên phong vì công bằng đang tận tâm cống hiến và tạo ra sự thay đổi trên khắp thế giới. Qua hàng loạt câu chuyện thực tế dưới ngòi bút của phóng viên Nathan Schneider, ta hiểu rằng chủ nghĩa hợp tác là một truyền thống lâu đời, đã xuất hiện cách đây hàng thế kỷ, được gìn giữ qua bao thăng trầm lịch sử, và lại đang tiếp tục nổi lên trong thời đại kỹ thuật số. Các tổ chức hợp tác mới đang xuất hiện để giúp những người dân thường có được những điều họ xứng đáng được hưởng, dù cho đây là một công cuộc khó khăn và không thể tránh khỏi những sai lầm.\r\n\r\nWaka trân trọng giới thiệu!'),
(37, 'Chiến lược phát triển nhân viên', 'chien_luoc_phat_trien_nhan_vien.jpg', 37, 9, 10, '2020-06-29', 0, 328, 0, 0, 0, 0, 'Cách chúng ta đối xử với nhân viên từ trước đến nay đã không còn hiệu quả. Chỉ có 30% nhân viên cảm thấy được gắn kết trong công việc, và đặt trong bối cảnh thế giới đang phát triển từng ngày, như vậy là chưa đủ.\r\n\r\nNhững công ty thành công nhất thế giới đã âm thầm trở nên khác biệt suốt gần hai thập kỷ qua. Trong thời gian đó, họ gần như đã tăng gấp đôi lợi nhuận thị trường chứng khoán so với mức thông thường và tỷ lệ nhân viên nghỉ việc chỉ bằng một nửa các công ty cùng ngành. Nhân viên của họ đổi mới nhiều hơn, cung cấp dịch vụ khách hàng tốt hơn và giành lợi thế cạnh tranh. Những công ty này vượt trội hẳn lên và làm chủ thị trường họ đang hoạt động. Những nhà lãnh đạo của các công ty này được gọi là những “kẻ nổi loạn”.\r\n\r\nHọ đã phá vỡ các quy tắc nhân sự truyền thống. Họ nổi loạn chống lại hiện trạng cản trở sự tăng trưởng kinh doanh. Cuốn sách “Chiến lược phát triển nhân viên” của tác giả Glenn Elliott và Debra Corey đã tìm ra những “kẻ nổi loạn”, phá vỡ quy tắc và chia sẻ những bí mật tối ưu của họ để gắn kết nhân viên, tối ưu hóa năng lực nhân sự, nâng cao hiệu quả công việc. Mối liên hệ giữa gắn kết nhân viên với kết quả kinh doanh là yếu tố được minh chứng rõ ràng nhất. Gallup, Great Place to Work, Best Companies và Glassdoor đều tìm hiểu về gắn kết nhân viên và liên hệ với kết quả trên thị trường chứng khoán. Dù bạn nhìn vào dữ liệu nào, kết quả cũng như nhau - những công ty có nhân viên được gắn kết vượt xa các đối thủ cạnh tranh.'),
(38, 'Kinh doanh từ A đến Z', 'kinh_doanh_tu_a_den_z.jpg', 38, 12, 20, '2020-07-06', 1, 488, 0, 0, 0, 0, 'Cuốn sách Kinh doanh từ A đến Z của Alan C. Fox chứa đựng những kinh nghiệm tinh túy nhất được Alan đúc rút từ sự nghiệp kế toán, luật và bất động sản. Cuốn sách là toàn bộ tâm huyết mà Alan muốn chia sẻ về lợi ích của cách tư duy, từng câu từng chữ đều được chưng cất từ tri thức, thành công và thất bại của ông. Người đọc có thể sử dụng những kỹ năng cơ bản trong cuốn sách để đạt được thành công giống như ông.\r\n\r\nWaka xin trân trọng giới thiệu Kinh doanh từ A đến Z!'),
(39, 'Marketing điểm bán', 'marketing_diem_ban.jpg', 39, 8, 10, '2020-07-14', 1, 361, 0, 0, 0, 0, 'Với 20 năm kinh nghiệm nghiên cứu và từng trải trong ngành bán lẻ, Doug Stephens sẽ trả lời những câu hỏi mà các doanh nghiệp vẫn đang băn khoăn như: Liệu bán lẻ đã thực sẽ hết thời? Hay đó chỉ là tầm nhìn hạn hẹp của những doanh nghiệp bán lẻ chạy theo xu hướng hiện đại của công nghệ, đầu tư vào các ứng dụng ảo, trí thông minh nhân tạo và robot bán hàng?\r\n\r\nThông qua cuốn “Marketing điểm bán” , các doanh nghiệp sẽ hiểu hơn về tiếp thị bán hàng trong thời đại công nghệ 4.0 và cách vận dụng hài hòa các yếu tố công nghệ hiện đại để đạt được hiệu quả bán lẽ tốt nhất và bền vững nhất.\r\n\r\nWaka xin trân trọng giới thiệu!'),
(40, 'Kỹ năng quản lý nhân sự chuyên nghiệp', 'ky_nang_quan_ly_nhan_su_chuyen_nghiep.jpg', 40, 9, 20, '2020-07-14', 1, 307, 0, 0, 0, 0, '\r\n“Kỹ năng quản lý nhân sự chuyên nghiệp” là một cuốn sách quan trọng cho các nhà quản lý muốn giúp các thành viên trong nhóm học hỏi, phát triển và nhận ra tiềm năng của họ.\r\nTrong cuốn sách này, Whitney Johnson – người từng có 20 năm huấn luyện, đầu tư và tư vấn, đã giới thiệu các cách để trở thành một trong những nhà quản lý giỏi và xây dựng đội ngũ nhân viên làm việc hiệu quả và năng suất.\r\n\r\nWaka xin trân trọng giới thiệu!'),
(41, 'Marketing cho startup', 'marketing_cho_startup.jpg', 41, 8, 10, '2020-02-19', 14, 1876, 0, 0, 0, 0, 'Bạn đang cầm trên tay cuốn sách chứa đựng những tài liệu giá trị từ các phóng viên kỳ cựu, các biên tập viên xuất sắc và các chuyên gia giàu kinh nghiệm về lĩnh vực marketing và kinh tế.\r\n\r\nĐừng ngạc nhiên nếu Marketing cho startup của Simona Covel sẽ “thổi bay” những quan niệm cũ của bạn về marketing trong kinh doanh ở thời đại mới. Hãy để cuốn sách đồng hành cùng thành công của công ty khởi nghiệp của bạn.\r\n\r\nĐể đưa một công ty khởi nghiệp lên bệ phóng, không có gì hữu hiệu hơn là một chiến lược marketing tuyệt vời. Cho dù ý tưởng ban đầu của bạn có tham vọng đến cỡ nào nhưng công ty sẽ rơi vào đình trệ nếu không có các chiến dịch quảng bá, tạo đà và thúc đẩy doanh số. Nhưng thực tế có bao nhiêu nhà khởi nghiệp làm marketing xuất sắc? Chắc hẳn, con số này không nhiều.\r\n\r\nWaka trân trọng giới thiệu!'),
(42, '27 thách thức của nhà quản lý', '27_thach_thuc_cua_nha_quan_ly.jpg', 42, 9, 32, '2020-02-19', 58, 11286, 0, 0, 0, 0, '27 thách thức của nhà quản lý sẽ giúp bạn phá vỡ vòng luẩn quẩn và giành quyền kiểm soát các mối quan hệ quản lý. Bất kể là vấn đề gì, Bruce Tulgan cũng cho thấy các nguyên tắc cơ bản mà các nhà quản lý đều nên nắm vững: liên tục tổ chức các cuộc trao đổi trực tiếp, đưa ra những kỳ vọng rõ ràng, theo dõi sát sao hiệu suất, đưa ra phản hồi kịp thời và thúc đẩy mọi người có tinh thần trách nhiệm.\r\n\r\nĐối với mọi vấn đề tại nơi làm việc, ngay cả phải đối mặt với những người khó tính nhất, 27 thách thức của nhà quản lý sẽ giúp bạn điều chỉnh các cuộc hội thoại nhằm giải quyết các tình huống giữa các quản lý. Bruce Tulgan cũng cung cấp cách tiếp cận rõ ràng đối với những thái độ tiêu cực nhằm giảm xung đột, cải thiện hiệu suất, giữ chân những người giỏi và thậm chí giúp bạn giảm tải áp lực trong công việc của chính mình.\r\n\r\n27 thách thức của nhà quản lý sẽ giúp bạn chủ động giải quyết (gần như) bất kỳ vấn đề nào mà người quản lý có thể gặp phải...\r\n\r\nWaka trân trọng giới thiệu!'),
(43, 'Bí mật của người kể chuyện', 'bi_mat_cua_nguoi_ke_chuyen.jpg', 43, 12, 32, '2020-02-19', 167, 26318, 0, 0, 0, 0, 'Kể chuyện là một nghệ thuật, và người kể chuyện là một nghệ sĩ. Nghệ thuật kể chuyện có thể thay đổi cuộc đời của chúng ta.\r\n\r\nLàm thế nào một người bán áo phông có thể trở thành một nhà sản xuất chương trình hàng đầu? Làm thế nào người con trai nhút nhát của một mục sư vượt qua được nỗi sợ nói trước đám đông để thuyết trình và bán hết vé tại sân vận động? Làm thế nào các phong trào nổi tiếng trên thế giới như “thử thách xô đá” được mọi người hướng ứng, bao gồm cả những người nổi tiếng như Bill Gates hay Mark Zurketberg. \r\n\r\nHọ đã kể những câu chuyện tuyệt vời. Trong Bí mật của Người kể chuyện, Carmille Gallo tiết lộ những chìa khóa để kể những câu chuyện đầy mạnh mẽ, truyền cảm hứng, xây dựng thương hiệu, khơi dậy các phong trào và thay đổi cuộc sống.\r\n\r\nNhư tỷ phú Richard Branson đã nói: “Nghệ thuật kể chuyện có thể được sử dụng để thúc đẩy sự thay đổi.” \r\n\r\n“Tôi tin rằng khó khăn của bạn chính là lợi thế của bạn. Carmine Gallo đã chia sẻ triết lý này. Trong Bí mật của Người kể chuyện, anh ấy cho thấy cách chúng ta vượt qua thử thách là cách những câu chuyện tuyệt vời và các thành công vang dội được tạo ra.” – Darren Hardy, cựu CEO của tạp  chí Success.\r\n\r\nWaka trân trọng giới thiệu!'),
(44, 'Cẩm nang mở nhà hàng', 'cam_nang_mo_nha_hang.jpg', 44, 12, 32, '2020-02-19', 200, 24671, 0, 0, 0, 0, 'Cẩm nang mở nhà hàng như một cuốn hướng dẫn khởi nghiệp cung cấp cho những chủ nhà hàng tương lai cách lên kế hoạch để mở một nhà hàng của riêng mình, từ kinh phí, địa điểm, thiết kế không gian, xây dựng thực đơn, marketing quảng bá, quản lý tài chính...  Không chỉ vậy, cuốn sách còn chia sẻ những bí quyết thành công giúp bạn chèo lái nhà hàng vượt qua năm đầu tiên đầy sóng gió và làm ăn phát đạt trong nhiều năm với một lượng khách hàng trung thành.\r\n\r\nMở nhà hàng không phải việc dễ dàng, nhưng những hướng dẫn của tác giả - một anh chàng kế toán, chủ nhà hàng và nhà tư vấn nhà hàng đầy mơ mộng – sẽ giúp biến giấc mơ mở nhà hàng của bạn thành hiện thực.\r\n\r\n“Sau nhiều năm làm việc, tôi nghĩ rằng mình đã biết tất cả mọi thứ, nhưng khi làm việc với Roger, tôi nhận ra còn quá nhiều điều mình cần học hỏi. Cẩm nang mở nhà hàng chứa đựng bí quyết giúp bạn mở và điều hành một nhà hàng làm ăn phát đạt. Nếu bạn muốn thành công trong kinh doanh nhà hàng, hãy đọc nó!”\r\n\r\n- GRÉGOIRE JACQUET, bếp trưởng kiêm chủ nhà hàng Grégoire\r\n\r\nWaka trân trọng giới thiệu!'),
(45, 'Nhân sự cốt cán', 'nhan_su_cot_can.jpg', 45, 9, 32, '2020-03-10', 120, 26881, 0, 0, 0, 0, 'Làm thế nào để thúc đẩy sự nghiệp và tạo ra tương lai rực rỡ bất chấp xuất phát điểm của bạn ở đâu?\r\n\r\nTại sao một số người dễ dàng bị sa thải, nản chí và bị thu hẹp mọi cơ hội, trong khi những người khác có cơ hội lựa chọn? Trong cuốn sách ấn tượng này, Seth Godin lập luận rằng đây là lúc cần trở nên thiết yếu hơn bao giờ hết, để trở thành người không thể thiếu - nhân sự cốt cán trong mọi tổ chức bạn làm việc.\r\n\r\nNhân sự cốt cán là mạch máu của mọi tổ chức: họ phát minh, lãnh đạo (bất kể chức danh nào), kết nối mọi người, làm cho mọi thứ xảy ra và tạo ra trật tự thoát khỏi sự hỗn loạn. Họ yêu thích công việc và nỗ lực trở thành phiên bản tốt nhất của bản thân và biến mỗi ngày thành một kiệt tác nghệ thuật. Trong thế giới ngày nay, họ có được những công việc tốt nhất và tự do nhất.\r\n\r\nNếu bạn từng tìm thấy một lối tắt mà người khác đã bỏ lỡ, thấy một cách mới để giải quyết xung đột hoặc kết nối với những người không thể với tới thì bạn đã có những tố chất cần thiết để trở thành người không thể thiếu.\r\n\r\nWaka trân trọng giới thiệu!'),
(46, 'Thế giới ảo, thương hiệu thật', 'the_gioi_ao_thuong_hieu_that.jpg', 46, 8, 32, '2020-03-16', 8, 1758, 0, 0, 0, 0, 'Gary Vaynerchuk được cho là thương hiệu cá nhân mạnh nhất trong toàn bộ không gian khởi nghiệp trực tuyến. Ngay từ lúc bắt đầu, anh đã gây ấn tượng với mọi người bằng những video nói về rượu vang ở ngay chính cửa hàng rượu của cha mẹ mình.\r\n\r\nHiện nay, Gary Vaynerchuk đã có cả một đế chế truyền thông tập trung vào thương hiệu cá nhân của mình.\r\n\r\nNgay cả khi bạn không muốn bị một máy quay ghi lại cuộc sống thường ngày, thì bạn vẫn nên bắt đầu tạo dựng thương hiệu cá nhân của mình ngay từ hôm nay.\r\n\r\nBa bài học quan trọng từ Thế giới ảo, thương hiệu thật:\r\n\r\nCó rất nhiều cách khác nhau để tạo dựng thương hiệu cá nhân;\r\n\r\nTạo dựng thương hiệu cá nhân không nhất thiết phải phô bày mọi khía cạnh trong cuộc sống;\r\n\r\nPhát ngôn qua phương tiện truyền thông là xu hướng của tương lai!\r\n\r\nWaka trân trọng giới thiệu!'),
(47, 'Trải nghiệm khách hàng trong thời đại số', 'trai_nghiem_khach_hang_trong_thoi_dai_so.jpg', 47, 12, 7, '2020-04-18', 4, 417, 0, 0, 0, 0, 'Dịch vụ khách hàng đã từng được coi đơn thuần là phạm vi hoạt động của trung tâm chăm sóc khách hàng hoặc đội ngũ nhân viên bán hàng trong một tổ chức dịch vụ. Tuy nhiên, thời thế đã thay đổi. Những người cho rằng dịch vụ như một điểm khác biệt cạnh tranh sẽ là những người sống sót duy nhất.\r\n\r\n“Trải nghiệm khách hàng trong thời đại số” đem đến một lời thức tỉnh về việc khách hàng ngày nay khác biệt như thế nào so với trước đây. Trên thực tế, họ đang tiếp tục thay đổi một cách nhanh chóng. Những thứ là xu hướng của hôm nay có thể nhanh chóng trở nên lỗi thời ngày mai. Cuốn sách này đã vạch ra rất rõ những nguyên nhân và phân loại các giải pháp cho từng nguyên nhân đó. Nó cũng đem đến nhận thức sâu sắc giúp bạn có được những chiến lược hiệu quả và phương pháp thực hành thận trọng. Không giống rất nhiều cuốn sách khác cùng chủ đề, cuốn sách này đem đến cho người đọc rất nhiều công cụ với vô số các ví dụ minh họa hành động tốt nhất. Nó cũng đồng thời cung cấp mối liên hệ trọng yếu giữa quy trình dịch vụ và văn hóa cầu tiến.\r\n\r\nWaka trân trọng giới thiệu!'),
(48, 'Quản lý công việc hiệu quả theo phương pháp Agile', 'quan_ly_cong_viec_hieu_qua_theo_phuong_phap_agile.jpg', 48, 9, 10, '2020-04-21', 9, 657, 0, 0, 0, 0, '“Quản lý công việc hiệu quả theo phương pháp Agile” là tác phẩm mới nhất của Steve Dennin và đang gây được tiếng vang lớn khi nhắc tới “phương pháp Agile” như một cuộc cách mạng trong quản lý công việc không thể bị ngăn cản và phương pháp Agile chính là xu hướng quản trị của tương lai, đem lại cho những doanh nghiệp áp dụng nó những thành tựu lớn lao và bền vững.\r\n\r\nSteve nhận định chúng ta đang ở nguồn gốc của một thời đại mới - thời đại của Agile. Đó là một thời đại nhiều phấn khởi, bởi vì sự thay đổi chưa từng có có thể xảy ra gần như chỉ sau một đêm. Tại sao lại có điều này? Bởi vì một tổ chức Agile thực sự sẽ kết nối tất cả mọi người, mọi thứ và mọi lúc. Tổ chức này có khả năng cung cấp giá trị tức thì cho khách hàng, gần gũi trên quy mô lớn.\r\n\r\nNhưng bằng cách nào? Làm thế nào một công ty phức tạp như Ericsson, Barclays, Fidelity Investments, hoặc Microsoft có thể bắt tay vào thử nghiệm các sáng kiến mới với tốc độ nhanh nhẹn của một vận động viên? Làm thế nào các tổ chức lớn có thể hoạt động như các tổ chức nhỏ? Trong “Quản lý công việc hiệu quả theo phương pháp Agile”, bạn sẽ học các nguyên tắc và kỹ thuật tạo nên quản lý Agile. Được phát triển đầu tiên trong ngành công nghiệp phần mềm, cách tiếp cận quản lý Agile  ngày nay đã được cải tiến và nhào nặn để hoạt động mạnh mẽ trong tất cả các ngành công nghiệp: công nghệ, sản xuất, dược phẩm, y tế, viễn thông, máy bay, ô tô gần như bất kỳ lĩnh vực nào.\r\n\r\nVới nhu cầu phát triển nhanh chóng của người tiêu dùng và công nghệ đang được cập nhật nhanh hơn bao giờ hết, các doanh nghiệp đang nhận ra mức độ cần thiết của phương pháp Agile . Nó cho phép một nhóm, đơn vị hoặc doanh nghiệp nhanh chóng tích lũy và nâng cấp các sản phẩm và dịch vụ để đáp ứng các nhu cầu thay đổi liên tục này. Với các ví dụ từ mọi lĩnh vực, The Age of Agile giúp người đọc:\r\n\r\nNắm vững ba luật Quản lý Agile (nhóm , khách hàng, mạng lưới)\r\nNắm bắt tư duy mới\r\nKhắc phục những hạn chế\r\nSử dụng các số liệu có ý nghĩa\r\nLàm cho toàn bộ tổ chức trở nên nhanh nhẹn. Với các công thức đột phá được trình bày trong cuốn sách này, ngay cả tổ chức “khổng lồ toàn cầu” cũng có thể học cách hành động linh hoạt trong kinh doanh. Tương lai công ty của bạn có thể phụ thuộc vào nó!');
INSERT INTO `sanpham` (`id`, `name`, `image`, `id_author`, `id_catalog`, `id_publisher`, `date`, `votes`, `views`, `price`, `free`, `hot`, `purchase`, `description`) VALUES
(49, 'Kinh doanh Online: Xu hướng kiếm tiền trong thời đại số', 'kinh_doanh_online_xu_huong_kiem_tien_trong_thoi_dai_so.jpg', 49, 12, 7, '2020-04-23', 8, 1145, 0, 0, 0, 0, '“Cuối cùng, đã có một cuốn sách giáo khoa giúp chúng ta có thể sử dụng để dạy sinh viên khởi nghiệp kỹ thuật số!”\r\n\r\nChính tác giả Jonathan P.Allen cũng nhận định về vai trò của công nghệ số đối với khởi nghiệp:\r\n\r\n“ Chúng tôi tin rằng tự làm chủ kinh doanh kỹ thuật số có thể giúp việc tạo ra các dự án kinh doanh mạo hiểm mới có nội hàm rộng và dân chủ hơn. Nhưng nếu chỉ riêng công nghệ số sẽ không thể khiến cho các thay đổi này xảy ra một cách mặc nhiên. Những nhà khởi nghiệp cần phải làm việc chăm chỉ và có tầm nhìn để nhận ra tiềm năng của công nghệ nhằm cải thiện mọi thứ. Tôi mong rằng quyển sách này sẽ hữu ích với các độc giả.”\r\n\r\nNgày nay, sự phát triển như vũ bão của công nghệ đã tạo ra một kỷ nguyên khởi nghiệp mới khi các doanh nhân tìm thấy các công cụ kỹ thuật số cho phép khai thác các cơ hội thương mại trên toàn thế giới. Đây là cuốn sách thiết thực cung cấp cho sinh viên các hướng dẫn của nhiều chuyên gia hàng đầu về việc sử dụng các nền tảng công nghệ để “dấn thân” vào các dự án mới.\r\n\r\nVới cách tiếp cận đã giành được giải thưởng, Johnathan P. Allen hướng dẫn độc giả trong suốt quá trình khởi nghiệp tinh gọn, thực hiện phương pháp \"kỹ thuật số đầu tiên\" để khởi nghiệp. Cuốn sách giúp người đọc mở rộng vốn hiểu biết nâng cao về các mô hình kinh doanh kỹ thuật số khác nhau, các kỹ năng phân tích cho các dự án kỹ thuật số và sự tự tin để chuyển từ nguyên mẫu sang sản phẩm. Johnathan P. Allen dường như đang khai mở cả thế giới số “phức tạp” thành những phần đơn giản, dễ hiểu nhất giúp các nhà khởi nghiệp tiếp cận công nghệ số đúng hướng và thực hành các thử nghiệm một cách thuần thục, góp phần làm tăng khả năng thành công của ý tưởng kinh doanh.\r\n\r\n“Tinh thần khởi nghiệp và cải tiến thực sự có nội hàm lớn hơn trong kỷ nguyên số mới, cần phải có nhiều người tin rằng họ cũng có thể trở thành những nhà khởi nghiệp số mới. Tương lai của công nghệ số phải dành cho nhiều người, không phải cho số ít. Chúc may mắn!”\r\n\r\nWaka trân trọng giới thiệu Kinh doanh Online: Xu hướng kiếm tiền trong thời đại số!'),
(50, 'Nghệ thuật thuyết phục lòng người trong kinh doanh', 'nghe_thuat_thuyet_phuc_long_nguoi_trong_kinh_doanh.jpg', 50, 11, 7, '2020-05-04', 5, 888, 0, 0, 0, 0, 'Cuộc sống đang ngày càng trở nên biến động, không chắc chắn, phức tạp và mơ hồ. Trong môi trường đó, giao tiếp, thuyết trình trở thành một trong những kỹ năng vô cùng quan trọng và cần thiết. Để giải quyết thách thức trong thời đại mới, các doanh nghiệp cần phải nỗ lực rất nhiều để tạo ra sự tin tưởng. Việc trình bày các ý tưởng một cách hiệu quả sẽ tạo ra niềm tin và tính xác thực cao của giao tiếp, tạo nên thành công, trước hết là trong nội bộ của tổ chức. Khi nhân viên được làm việc với một lãnh đạo mà họ cảm thấy thực sự tin tưởng hay với một lãnh đạo có khả năng thể hiện ý tưởng một cách rõ ràng, hấp dẫn và xác thực, thì sự thay đổi có thể xảy ra, nhóm sẽ được thành lập, và các chiến lược sẽ trở nên sống động.\r\n\r\nNgày nay, khi mạng xã hội đang ở thời kỳ hưng thịnh, rất nhiều nhà lãnh đạo doanh nghiệp chọn giao tiếp với nhân viên thông qua các kênh trực tuyến, nơi khó có thể tạo ra mức độ tin cậy cần thiết.\r\n\r\nCuốn sách Nghệ thuật thuyết phục lòng người trong kinh doanh có mặt thật đúng lúc khi nó tập trung phát triển một phong thái chuyên nghiệp không chỉ ở giao tiếp trực tiếp mà còn ở tất cả các hình thức khác của giao tiếp bằng lời nói. Cuốn sách sẽ cung cấp những lời khuyên cụ thể, hữu ích dành cho bạn, và tất cả những ai đang trên con đường trở thành nhà quản lý, để có được một phong cách giao tiếp chuyên nghiệp, thuyết phục được lòng người, mang lại hiệu quả tối đa trong kinh doanh cũng như trong cuộc sống!\r\n\r\nWaka trân trọng giới thiệu!'),
(55, 'Quản lý khủng hoảng và phát triển doanh nghiệp trong thời đại 4.0', 'quan_ly_khung_hoang_va_phat_trien_doanh_nghiep_trong_thoi_dai_4_0.jpg', 35, 9, 7, '2020-08-07', 0, 0, 0, 0, 0, 0, 'Sự toàn cầu hóa và những phát triển công nghệ khiến thế giới ngày nay càng trở nên liên kết. Sự gắn kết và lệ thuộc sẽ gắn kết và phụ thuộc mang lại lợi ích cho tất cả các bên trong những thời điểm tốt đẹp, nhưng khi khủng hoảng xảy ra, nó càng nhanh chóng lan tỏa những tồn tại to lớn và đẩy các doanh nghiệp đứng trước đến bờ vực sụp đổ.\r\n\r\nSự hỗn loạn đã trở thành điều bình thường ở mọi ngành nghề, mọi thị trường và mọi công ty. Làm thế nào để trang bị lớp giáp vững chắc trong kỷ nguyên hỗn loạn, nhưng không bỏ lỡ tiềm năng phát triển vượt bậc khi đối thủ phạm sai lầm? Với Quản lý khủng hoảng và phát triển doanh nghiệp trong thời đại 4.0, Philip Kotler và Jonh A. Caslione đã đưa ra lời đáp cho câu hỏi này, thông qua những bước đi chiến lược chi tiết, có tên áp dụng cho mọi doanh nghiệp.\r\n\r\nWaka trân trọng giới thiệu!'),
(58, '[Tóm tắt sách] - Thấu hiểu marketing từ A đến Z', 'tom_tat_sach_thau_hieu_marketing_tu_a_den_z.jpg', 35, 8, 1, '2020-08-07', 0, 0, 0, 0, 0, 0, '                                                                                                                                                                                                                            Đây là bản tóm tắt của sách Thấu hiểu marketing từ A đến Z. Các nội dung trong sách đã được Alpha Books giản lược một cách ngắn gọn và cô đọng nhất song tổng thể vẫn đầy đủ so với bản gốc.\r\n\r\nTrong cuốn Thấu hiểu Marketing từ A đến Z này, Philip Kotler, nhà hiền triết đáng kính nhất về tiếp thị, đã chọn lọc và khảo sát các khái niệm quan trọng nhất của bộ môn này trong hiện tại và cả tương lai, đưa ra một đúc kết mới mẻ và thú vị về việc tiếp thị sẽ thay đổi như thế nào, và những người làm công việc tiếp thị phải thay đổi ra sao.\r\n\r\nKotler đã nêu bật 80 khái niệm căn bản của tiếp thị, chia sẻ với chúng ta những suy gẫm sâu sắc và sáng tạo thu thập được qua 40 năm kinh nghiệm từng trải của mình. Những lập luận xuất sắc của ông đã làm sáng tỏ những chủ đề như thương hiệu, lợi thế cạnh tranh, tính sáng tạo, quản lý quan hệ khách hàng, tiếp thị trên cơ sở dữ liệu, khác biệt hóa, đổi mới, định vị, và phân khúc thị trường.\r\n\r\nCác chủ đề từ \"Advertising - Quảng cáo\" đến \"Zest - Sự say mê\" được sắp xếp theo thứ tự chữ cái cho phép người đọc dễ dàng truy cập lời khuyên của ông, Với những từ ngữ thích đáng và rõ ràng, cuốn sách này đủ toàn diện cho các nhà quản lý muốn hoàn tất giai đoạn vỡ lòng về tiếp thị, nhưng cũng là một nguồn tư liệu mới mẻ và tiên tiến nhất cho những nhà tiếp thị dày dạn kinh nghiệm muốn theo kịp với tư duy mới nhất. Bất luận là bạn cần một ý tưởng mới mẻ về cách xây dựng thương hiệu hay những chiến lược mới trong tiếp thị truyền miệng, Thấu hiểu tiếp thị từ A đến Z sẽ trao cho bạn những công cụ bạn cần để cạnh tranh giành khách hàng trên một thị trường đang đổi thay nhanh chóng. Cuốn sách này là một công cụ thiết yếu cho các nhà quản lý, tổng giám đốc, giám đốc tiếp thị, và bất cứ ai muốn hiểu rõ những vấn đề căn bản của tiếp thị.\r\n\r\nTrong thập niên kế tiếp - và sau này nữa - những hiện thực thị trường và người tiêu dùng thay đổi sẽ có nghĩa là sự tái phát minh bản thân việc tiếp thị. Những người làm tiếp thị sẽ không chỉ có mặt trong việc bán bất cứ thứ gì do công ty mình sản xuất ra, mà họ sẽ phải thiết kế những hoạt động tiếp thị của toàn bộ công ty, các chiến dịch quảng cáo, và cả quan hệ công chúng nữa. Cuốn sách Thấu hiểu tiếp thị từ A đến Z sẽ giúp bạn theo kịp thời đại vì nó nêu bật những đổi thay nhanh chóng trong lĩnh vực này, mang đến một cái nhìn mới về môn khoa học quen thuộc này, và giải thích nhanh những khái niệm căn bản. Cuối cùng, thành công sẽ đến với ai dẫn đầu cuộc chạy đua vào tương lai của tiếp thị - đây chính là cuốn cẩm nang giúp bạn bứt ra dẫn đầu trong cuộc đua đó.\r\n\r\nWaka xin trân trọng giới thiệu sách [Tóm tắt sách] Thấu hiểu marketing từ A đến Z.                                                                                                                                \r\n                \r\n                \r\n                ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tacgia`
--

CREATE TABLE `tacgia` (
  `id` int(10) NOT NULL COMMENT 'id tác giả',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên tác giả',
  `image` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Đường dẫn hình ảnh',
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Mô tả'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tacgia`
--

INSERT INTO `tacgia` (`id`, `name`, `image`, `description`) VALUES
(1, 'Thanh Thanh Thùy Tiếu', NULL, NULL),
(2, 'Huỳnh Hạ', NULL, 'Huỳnh Hạ là tác giả bộ truyện ngôn tình hiện đại dài kỳ Cưng chiều cô vợ quân nhân trên Waka.'),
(3, 'Dale Carnegie', '3_dale-carnegie.jpg', 'Dale Breckenridge Carnegie (24 tháng 11 năm 1888 – 1 tháng 11 năm 1955) là một nhà văn và nhà thuyết trình Mỹ và là người phát triển các lớp tự giáo dục, nghệ thuật bán hàng, huấn luyện đoàn thể, nói trước công chúng và các kỹ năng giao tiếp giữa mọi người. Ra đời trong cảnh nghèo đói tại một trang trại ở Missouri, ông là tác giả cuốn Đắc Nhân Tâm, được xuất bản lần đầu năm 1936, một cuốn sách thuộc hàng bán chạy nhất và được biết đến nhiều nhất cho đến tận ngày nay. Ông cũng viết một cuốn tiểu sử Abraham Lincoln, với tựa đề Lincoln con người chưa biết, và nhiều cuốn sách khác.\r\n\r\nCarnegie là một trong những người đầu tiên đề xuất cái ngày nay được gọi là đảm đương trách nhiệm, dù nó chỉ được đề cập tỉ mỉ trong tác phẩm viết của ông. Một trong những ý tưởng chủ chốt trong những cuốn sách của ông là có thể thay đổi thái độ của người khác khi thay đổi sự đối xử của ta với họ.'),
(4, 'Phương Phương', NULL, NULL),
(5, ' Niệm Niệm', NULL, NULL),
(6, 'Quỹ Họa Tình Vũ', NULL, NULL),
(7, '0 Giờ Sáng', NULL, NULL),
(8, ' Phù Đồ Yêu', NULL, NULL),
(9, 'Truyền Thuyết Một Con Cá', NULL, 'Truyền Thuyết Một Con Cá là tác giả giành được danh hiệu được đón nhận nhiều nhất sau Thiên Hạ Bá Xướng và Nam Phái Tam Thúc về thể loại thám hiểm kì bí, cũng như dã ngoại sinh tồn.\r\nÔng là người khá kiêm tốn, trên mạng không hề xuất hiện bất cứ hình ảnh cá nhân nào của tác giả.\r\nTheo thông tin tìm hiểu được, ông xuất thân trong gia đình quân đội, gia đình ông có truyền thống về các nghề như khảo sát, hàng không, quốc phòng. Bản thân ông cũng từng tham gia nhiều công trình nghiên cứu khoa học, hiện tại làm việc tự do.\r\nNăm 2013, trong một bài trả lời phỏng vấn của báo thành phố, ông thừa nhận sáng tác chỉ là sở thích của ông và không muốn vì sáng tác mà quấy rầy đến cuộc sống cá nhân của mình cho nên không đồng ý xuất hiện trong lễ ra mắt sách hay tham gia các buổi gặp gỡ giao lưu với fan nào được tổ chức. Chính vì thế ông được xưng là tác gia thần bí và khiêm tốn nhất Trung Quốc Đại Lục.\r\nMục lục các tác phẩm tính đến nay gồm có:\r\nCổ đạo trên sông Hoàng Hà 1: Quan tài hình người (Đã xuất bản)\r\nCổ đạo trên sông Hoàng Hà 2: Cấm địa người sống (Đã xuất bản)\r\nHồ sơ quỷ 1: Phủ bụi hồ sơ quân sự năm 1980 (Đã xuất bản)\r\nHồ sơ quỷ 2: Thuỷ quái sông Mạc Hà (đang sáng tác)\r\nQuỷ giấu người 1: Lang Thành Âm Sơn (Đã xuất bản)\r\nQuỷ giấu người 2: Hang Rắn Lan Thương (Đã xuất bản)\r\nQuỷ giấu người 3: Mộ Ưng Tàng Bắc (Đã xuất bản)\r\nQuỷ giấu người 4: Thuỷ Quái Nam Hải (Đã xuất bản)'),
(10, 'Seth Price, Barry Feldman', NULL, 'Đồng tác giả cuốn sách \"Bạn là ai trong mắt người khác\"'),
(11, 'Napoleon Hill', '11_napoleon-hill.jpg', 'Napoleon Hill (sinh ngày 26 tháng 10 năm 1883 - mất ngày 8 tháng 11 năm 1970). Ông sinh ra trong một căn nhà nhỏ trong vùng rừng núi Virginia, là một tác giả người Mỹ, một trong những người sáng lập nên một thể loại văn học hiện đại đó là môn \"thành công học\" (là khoa học về sự thành công của cá nhân). Tác phẩm được cho là nổi tiếng nhất của ông có tên \"Nghĩ giàu và làm giàu\" (Think and Grow Rich) là một trong những cuốn sách bán chạy nhất mọi thời đại.\r\n\r\nTrong sự nghiệp của mình, ông cũng từng được trở thành một cố vấn cho Tổng thống Franklin D. Roosevelt. Câu nói nổi tiếng thể hiện tư tưởng của ông là \"Điều gì mà tâm trí có thể nhận thức và tin tưởng thì tâm trí có thể hoàn thành\". Napoleon Hill được xem là người có ảnh hưởng rộng rãi nhất, mạnh mẽ nhất trong lĩnh vực thành công cá nhân.\r\n\r\nCuốn sách kinh điển Suy nghĩ và Làm giàu của ông đã giúp cho hàng triệu người trên thế giới thành công và nó có một ý nghĩa, vai trò vô cùng quan trọng trong cuộc đời của rất nhiều người thành công như W.Clement Stone, Og Mandino...\r\n\r\nMột số các tác phẩm nổi bật của ông như: Quy luật của thành công - The Law of Success (1928), The Magic Ladder To Success (1930), Cách nghĩ để thành công - Think and Grow Rich (1937), Làm giàu! - Grow Rich!: With Peace of Mind (1967), Chiến thắng Con quỷ trong bạn - Outwitting the Devil (2011),...'),
(12, 'Robert Fulghum', '12_robert-fulghum.jpg', 'Sinh: 4 tháng 6, 1937 (tuổi 79), Waco, Texas, Hoa Kỳ\r\n\r\nRobert Fulghum là một tác giả chuyên viết những tác phẩm tiểu luận ngắn. Trước khi bắt đầu viết văn, ông là giảng viên môn vẽ chì, vẽ màu, và triết học tại ngôi trường Lakeside ở Seattle. Ngoài ra, Fulghum còn là một họa sĩ và điêu khắc gia. Robert Fulghum đã nổi tiếng ngay từ quyển sách đầu tiên của mình, All I Really Need To Know I Learned In Kindergarten phát hành vào năm 1988. Quyển sách này đã nằm trong danh sách best-sellers của tờ New York Times liên tục 2 năm liền. Tuyển tập này bao gồm 50 bài tiểu luận ngắn, từ 200 chữ đến khoảng 1000 chữ bàn về nhiều chủ đề khác nhau trong đời sống. Tính đến thời điểm hiện nay, các tác phẩm của Robert Fulghum đã bán được hơn 16 triệu bản, dịch ra 27 thứ tiếng và phát hành tại 103 quốc gia trên toàn thế giới.\r\n\r\nNhững tác phẩm tiêu biểu: All I Really Need To Know I Learned In Kindergarten (1988), It Was On fire When I Lay Down On It (1991), From Beginning to End - The Rituals of Our Lives (1996), What On Earth Have I Done? (2008)...'),
(13, 'Madisyn Taylor', '13_madisyn-talor.jpg', 'Madisyn Taylor là đồng sáng lập kiêm tổng biên tập và phụ trách nội dung website DailyOM. Bà cũng sáng lập, phụ trách phát triển thành công sản phẩm liệu pháp mùi hương và trang sức mang ý nghĩa tinh thần lấy tên Madisyn Taylor. Bà còn có nhiều năm kinh nghiệm trong công tác phát triển và điều trị tâm lý. Khi rảnh rỗi, bà thường chơi với chú mèo Zoe trong vườn hay hòa mình vào thiên nhiên. Bà cũng thích viết nhật ký, thiền, đi dạo trong khu rừng gần nhà ở thành phố Ashland, tiểu bang Oregon.\r\n\r\nTác phẩm tiêu biểu: Blog Cho Tâm Hồn....'),
(14, 'D.R', NULL, NULL),
(15, 'Mãn Tọa Y Quan Thắng Tuyết', NULL, 'Tác phẩm tiêu biểu: Công Tử Liên Thành'),
(16, 'François Lelord', '16_francois-lelord.jpg', 'Sinh: 22 tháng 6, 1953 (tuổi 63), Paris, Pháp.\r\n\r\nÔng theo học y khoa, đi sâu chuyên ngành tâm thần học, sau trở thành bác sĩ chữa bệnh tâm thần (psychiatre) điều trị bằng liệu pháp tâm lý (psychothérapie).\r\n\r\nNăm 1985, ông sang Mỹ đi sâu nghiên cứu thêm ở Đại học California và ở lại làm việc tại Mỹ mấy năm, đến 1988 thì trở về Pháp. Những năm gần đây, F. Lelord làm việc cho tổ chức mang tên Alain Carpentier với tư cách bác sĩ chữa bệnh tâm thần.\r\n\r\nÔng bắt đầu viết từ sau khi ở Mỹ trở về Pháp. Cuốn sách đầu tiên của ông là “Những truyện của một bác sĩ tâm thần bình dị” (Les contes d’un psychiatre ordinaire) ra mắt tại nhà xuất bản Odile Jacob năm 1993). Tuy mang danh là “truyện” nhưng thực ra đó là loại sách tìm hiểu về bệnh tâm thần. Tiếp đó, Lelord còn cộng tác với các bác sĩ tâm thần Christophe André, Patrick Lesgeron viết một số cuốn nữa vào những năm 1998, 2000, 2001 trước khi Hành trình của Hector xuất hiện khiến ông nổi tiếng và nhiều tài liệu bắt đầu ghi tên ông với danh hiệu “nhà văn” kèm theo danh hiệu “bác sĩ tâm thần”.\r\n\r\nBác sĩ tâm thần học Francois Lelord đã có một sự nghiệp thành công tại quê hương Pháp và cả tại Mỹ – nơi ông theo đuổi nghiên cứu sau tiến sĩ ở trường Đại học California, Los Angeles (UCLA). Ông là đồng tác giả của nhiều quyển sách tự hoàn thiện bản thân và đã tư vấn cho nhiều công ty quan tâm tới việc làm giảm căng thẳng cho các nhân viên của họ. Sau “Hành trình của Hector”, tác giả cho ra mắt mấy cuốn nữa cũng với nhân vật Hector và vẫn ở nhà xuất bản Odile Jacob: “Hector và những bí ẩn của tình yêu” (Hector et les secrets de l’amour, 2005), “Hector và thời gian” (Hector et le temps, 2006).'),
(17, 'Hà Đăng', NULL, 'Hà Đăng là tác giả cuốn tiểu thuyết linh dị mang tựa đề Mộ Khâu Tử.'),
(18, 'Spencer Johnson', NULL, NULL),
(19, 'Huyền Sắc', NULL, NULL),
(20, 'Cửu Lộ Phi Hương', '20_cuu-lo-phi-huong.jpg', 'Cửu Lộ Phi Hương là tác giả người Trung Quốc sinh ngày 27/08/1992 thuộc cung Xử Nữ.\r\n\r\nBộ truyện đầu tiên Cửu Lộ Phi Hương viết và đăng lên Tấn Giang vào ngày 2/8/2011 là Kỷ hồi hồn mộng thuộc thể loại xuyên không, huyền ảo.\r\n\r\nPhong cách sáng tác:\r\n\r\nHơn một nửa số tác phẩm của Cửu Lộ Phi Hương là truyện ngắn (khoảng 10 chương hoặc ít hơn), các truyện dài có độ dài vừa phải, văn phong trong tác phẩm không tỏ vẻ uyên thâm hay màu mè, cách hành văn ngắn gọn, dễ hiểu và hài hước. Mặc dù các truyện ngắn của Cửu Lộ Phi Hương thường có kết buồn nhưng đối với truyện dài thì cô luôn để các nhân vật chính nhận được kết thúc viên mãn. Phần lớn các tác phẩm của Cửu Lộ Phi Hương thuộc thể loại huyền huyễn bởi ngày nhỏ cô rất thích đọc những câu chuyện như “Tây du ký”, “Tân truyền kỳ Bạch Nương tử”, lớn hơn chút nữa thì thích xem phim hoạt hình giả tưởng nên từ đó có hứng thú với thể loại này.\r\n\r\nTác phẩm tiêu biểu:\r\n\r\n- Tình kiếp Tam Sinh\r\n- Bảy kiếp xui xẻo\r\n- Bổn Vương ở đây\r\n- Cô nàng mạnh mẽ\r\n- Bách Quỷ tập\r\n- Cửu gia đừng làm vậy\r\n- Không yêu thì biến\r\n- Ta muốn đến Cửu Châu'),
(21, 'Tôi biết sửa điều hòa', NULL, 'Tôi biết sửa điều hòa là tác giả cuốn tiểu thuyết truyện ma Hệ thống nhà ma!'),
(22, 'Tô Hoàn', NULL, 'Tô Hoàn là tác giả bộ truyện linh dị dài kỳ mang tên Thầy dời mộ'),
(23, 'Kinh Cức Chi Ca', NULL, 'Tác giả bộ truyện linh dị đô thị Thanh quỷ kỷ sự.'),
(24, 'Long Phi Có Yêu Khí', NULL, 'Long Phi Có Yêu Khí là tác giả của truyện Hoàng Hà phục yêu truyện'),
(25, 'Vân Nghê', NULL, 'Tác phẩm tiêu biểu: Hãy Để Anh Ở Bên Em'),
(26, 'Bình Bạch Huynh', NULL, NULL),
(27, 'Diệp Phi Dạ', NULL, NULL),
(28, 'Hứa Lục Lục', NULL, 'Hứa Lục Lục là tác giả của bộ tiểu thuyết ngôn tình Cô vợ siêu sao.'),
(29, 'Phong Quang Tế Nguyệt', NULL, NULL),
(30, 'Hạ Uyển Anh', NULL, NULL),
(31, 'Thập Nguyệt Sơ', '31_thap-nguyet-so.jpg', 'Nữ tác giả Trung Quốc gắn liền với các bộ truyện hot Boss hung mãnh - Ông xã, kết hôn nào! và Cẩm nang sinh tồn gian phi...'),
(32, 'John Mullins', NULL, 'Tiến sĩ John Mullins, phó Giáo sư về quản trị thực hành tại Trường Kinh doanh Luân Đôn, một trong những tiếng nói có quyền lực và nổi tiếng nhất trên thế giới trong lĩnh vực sáng tạo, tài chính và phát triển các doanh nghiệp kinh doanh mạo hiểm – là tác giả.\r\n\r\nÔng là một người kỳ cựu của ba dự án mạo hiểm, bao gồm một công ty đã được đại chúng hóa, cũng là tác giả của các cuốn sách đánh giá các cơ hội kinh doanh (Thử nghiệm một cách thức kinh doanh mới) và trong việc sáng tạo các mô hình kinh doanh mang tính đột phá (Thực hiện kế hoạch B viết cùng với Randy Komisar). John là một diễn giả quen thuộc với cộng đồng doanh nhân và các cộng sự của họ, với các giám đốc điều hành của các công ty tăng trưởng nhanh và các nhà đầu tư vào các công ty.'),
(33, 'Ryan Wakeman', NULL, 'Tác phẩm:\r\n\r\n- Content đắt có bắt được Trend'),
(34, 'Kathleen Day', NULL, 'Tác phẩm:\r\n\r\n- Cuộc chiến phố Wall'),
(35, 'Philip Kotler', NULL, 'Tác giả cuốn sách \"Thấu hiểu tiếp thị từ A-Z\"'),
(36, 'Nathan Schneider', NULL, 'Tác phẩm:\r\n\r\n- Những nhà kinh tế tiên phong'),
(37, 'Glenn Elliott', NULL, 'Tác phẩm:\r\n\r\n- Chiến lược phát triển nhân viên'),
(38, 'Alan C. Fox', NULL, 'Alan C. Fox là một tác giả bán chạy nhất của Thời báo New York, đồng thời là người sáng lập Tạp chí Thơ ca. Ông cũng là chủ tịch và người sáng lập của ACF Property Management, một công ty bất động sản thương mại có trụ sở tại Studio City, California và là một nhà từ thiện tích cực.'),
(39, 'Doug Stephens', NULL, 'Tác phẩm:\r\n\r\n- Tái cấu trúc hoạt động bán lẻ'),
(40, 'Whitney Johnson', NULL, 'Whitney Johnson là Giám đốc điều hành của công ty tư vấn cửa hàng WLJ Advisors và là một trong năm mươi nhà tư tưởng kinh doanh hàng đầu trên thế giới được đặt tên bởi Thinkers50 - một chuyên gia giúp các tổ chức tăng trưởng cao phát triển các cá nhân tăng trưởng cao. Whitney là một tác giả từng đoạt giải thưởng, diễn giả chính tầm cỡ thế giới, giảng viên thường xuyên cho Harvard Business School, Chuyên viên giáo dục điều hành, đồng thời là huấn luyện viên điều hành và cố vấn cho các CEO.'),
(41, 'Simona Covel', NULL, 'Tác phẩm:\r\n\r\n- Marketing cho startup'),
(42, 'Bruce Tulgan', NULL, 'Bruce L. Tulgan là một nhà văn người Mỹ chuyên đào tạo quản lý và đa dạng thế hệ trong lực lượng lao động. Các cuốn sách của ông bao gồm Không phải ai cũng nhận được cúp, 27 người quản lý thách thức, không sao để trở thành ông chủ và quản lý thế hệ X.'),
(43, 'Carmine Gallo', '43_carmine-gallo.jpg', 'Carmine Gallo sinh ngày 26 tháng 7 năm 1965, là tác giả, nhà báo và diễn giả người Mỹ. Ông là chủ tịch của tập đoàn truyền thông Gallo. Ông được coi là chuyên gia về kỹ năng giao tiếp và lãnh đạo trong kinh doanh. Ông cũng từng giảng dạy cho các sinh viên MBA tại Stanford, UCLA và UC Berkeley. \r\n\r\nCác cuốn sách nổi tiếng nhất của ông là về người đã sáng lập ra Apple - Steve Jobs. Cuốn sách đầu tiên trong series sách đó là The Presentation Secrets of Steve Jobs đã nhanh chóng nằm trong chuyên mục bestseller của Wall Street Journal và được dịch ra hơn 20 thứ tiếng. Cuốn sách thứ hai là The Innovation Secrets of Steve Jobs cũng trở thành một tác phẩm ăn khách và giành được giải thưởng Axiom Award cho một trong số 3 cuốn sách kinh doanh hay nhất năm 2011. Cuốn sách thứ ba gần đây nhất của Gallo là The Apple Experience xuất bản vào tháng 4 năm 2012, trước khi Setve Jobs mất vài tháng. Ngoài ra ông cũng cho xuất bản nhiều cuốn sách với những chủ đề tổng quát hơn như: 10 Simple Secrets of the World’s Greatest Business Communicators, In Fire Them Up!, The Power of foursquare,...'),
(44, 'Roger Fields', NULL, 'Roger C. Field (sinh ngày 31 tháng 7 năm 1945 tại London) là một nhà thiết kế kiểu dáng công nghiệp và người phát minh với hơn 100 bằng sáng chế.'),
(45, 'Seth Godin', NULL, 'Seth Godin (sinh ngày 10 tháng 7 1960) là tác giả sách kinh doanh bán chạy và là một diễn giả nổi tiếng từ cuối thập niên 1990 đến nay. Cuốn sách nổi tiếng đầu tiên của ông là về chủ đề permission marketing (tiếp thị đồng tinh).\r\n\r\nSeth Godin nổi tiếng với phong cách diễn thuyết trực quan, đầy cá tính và sôi nổi. Ông được tổ chức Successful Meeting xem là một trong 21 diễn giả hàng đầu của thế kỷ 21 Tạp chí Business Week từng ca ngợi rằng \"Seth Godin có lẽ là doanh nhân xuất sắc nhất của Thời Đại Thông tin\" (Ultimate Entrepreneur for the Information) Age\".\r\nGodin đã viết được 9 cuốn sách và đều bán rất chạy trên khắp thế giới. CÁc cuốn sách này đã làm thay đổi cách tư duy của mọi người về marketing, sự thay đổi và công việc. Sách của ông đã được dịch sang hơn 20 thứ tiếng và sách ebook của ông thuộc dạng bán chạy nhất. Nhiều từ vựng mới trong lĩnh vực marketing là do ông tạo ra, chẳng hạn như permission marketing (tiếp thị đồng tình), ideaviruses (ý tưởng virus), purple cows (con bò tía), sneezers (người hắt hơi),…\r\nCuốn sách mới nhất của ông The Dip, là cuốn bán chạy nhất của ông từ trước đến nay. Cuốn sách nói về nghệ thuật bỏ cuộc, nhưng quan trọng hơn nó nói về cách thức trở thành số 1 thế giới..\r\n\r\nSmall is the New Big được xuất bản năm 2006 và đã được đề cử giải thưởng Quill bởi tạp chí Publishers Weekly.\r\n\r\nAll Marketers are Liars (Những tay tiếp thị đều nói xạo) từng lọt vào top 100 sách bán chạy nhất của Amazon and đã được dịch sang hơn 12 thứ tiếng, trong đó có cả tiếng Việt.'),
(46, 'Gary Vaynerchuk', '46_gary-vaynerchuk.jpg', 'Gary Vaynerchuk sinh ngày 14 tháng 11 năm 1975 tại Belarus và sinh sống tại Mỹ từ năm 1978 đến nay. Ông tốt nghiệp trường Mount Ida College.\r\n\r\nGary Vaynerchuk được biết đến như một người tiên phong trong lĩnh vực marketing online. Anh là nhà kinh doanh tài ba, đồng thời là một chuyên gia về rượu, đã cách mạng hóa các hoạt động PR và marketing trong ngành rượu với những video blog trên trang Wine Library TV, phát triển công việc kinh doanh rượu của gia đình từ quy mô 4 triệu đô-la lên tới 60 triệu đô-la trong vòng 5 năm khi tập trung vào Internet và tận dụng các công cụ truyền thông mạng xã hội như Facebook, Twitter, Blog, Wordpress, YouTube, v.v…\r\n\r\nTác phẩm: Đam Mê Khám Phá'),
(47, 'John A.Goodman', NULL, 'Tác giả của cuốn sách \"Trải nghiệm khách hàng trong thời đại số\"'),
(48, 'Stephen Denning', NULL, 'Stephen Denning sinh ra ở Sydney, Úc. Anh học luật và tâm lý học tại Đại học Sydney. Sau khi tốt nghiệp luật sau đại học tại Đại học Oxford, ông gia nhập Ngân hàng Thế giới nơi ông làm việc trong nhiều thập kỷ với nhiều năng lực quản lý khác nhau, bao gồm Giám đốc Chương trình Quản lý Tri thức từ 1996-2000.'),
(49, 'Jonathan P.Allen', NULL, 'Tác giả cuốn sách \"Kinh doanh online: XU hướng kiếm tiền trong thời đại số\"'),
(50, 'Jacqui Harper', NULL, 'Tác phẩm:\r\n\r\n- Nghệ thuật thuyết phục lòng người trong kinh doanh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(10) NOT NULL COMMENT 'id tài khoản',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên người dùng',
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Email người dùng',
  `tel` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sđt',
  `pass` varchar(254) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mật khẩu',
  `activation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Mã kích hoạt',
  `avatar` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Ảnh đại diện',
  `cardimage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Ảnh bìa',
  `birth` date NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sinh',
  `date` date NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày đăng kí',
  `role` tinyint(1) DEFAULT 0 COMMENT 'Phân biệt quyền tài khoản'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `name`, `email`, `tel`, `pass`, `activation`, `avatar`, `cardimage`, `birth`, `date`, `role`) VALUES
(1, 'Nguyễn Bảo Toàn', 'toannbps12879@fpt.edu.vn', '', '$2y$10$d0InZ5xiDOstIIilUY744eGn/4wLQ2Hehsc.TiTRXH9dMqZWtMsVG', 'toannbps12879@admin', 'user_1_avt.png', 'user_1_cardimage.png', '2001-08-16', '2020-08-09', 1),
(2, 'Nguyễn Phan Gia Bảo', 'baonpgps12694@fpt.edu.vn', '', '$2y$10$d0InZ5xiDOstIIilUY744eGn/4wLQ2Hehsc.TiTRXH9dMqZWtMsVG', 'baonpg', 'user_2_avt.jpg', 'user_2_cardimage.jpg', '2001-07-07', '2020-08-10', 0),
(3, 'Nguyễn Huỳnh Minh', 'minhnhps12689@fpt.edu.vn', '', '123456', 'minhnh', 'user_3_avt.jpg', NULL, '2001-08-11', '2020-08-10', 0),
(5, 'Phạm Đình Thuận', 'thuanpdps12779@fpt.edu.vn', '', '123456', 'thuanpd', NULL, NULL, '2020-08-12', '2020-08-12', 0),
(6, 'Nguyễn Bảo Toàn', 'nguyenbaotoan2001@gmail.com', '0921469828', '$2y$10$R2BrFl5jTMJa1mQgFMVcquz0VbMUlDSB4UXj0moilwo/KEVy6q98.', '2ddc6403e0c5bd96aec254e5926428d3', NULL, NULL, '2020-10-21', '2020-10-21', 0),
(7, 'Nguyễn Bảo Toàn', 'toannb.it@gmail.com', '123456789', '$2y$10$FX9fvFYORXPXuFurS.QHEuqPhmRcOhI.PN.66l1ISkrJ6CM6anGli', 'ce5cc704e8dc7870b671e81765fce1ae', NULL, NULL, '2020-10-21', '2020-10-21', 0),
(8, 'Nguyễn Bảo Toàn', 'admin@admin.com', '0593433778', '$2y$10$vqdL43LxAQS9Ce59eMz2zuorqvyyRPAWrD4BTCPQL.ynrfmhGDMU6', '6a3f73674d718e201d4c9eafcab4430c', NULL, NULL, '2021-03-01', '2021-03-01', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `id` int(3) NOT NULL COMMENT 'id thể loại',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên thể loại',
  `sort` tinyint(1) DEFAULT 0 COMMENT 'Sắp xếp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`id`, `name`, `sort`) VALUES
(1, 'Sách nói', 9),
(2, 'Linh dị', 9),
(3, 'Kinh doanh', 9),
(4, 'Ngôn tình', 8),
(5, 'Văn hoá - Xã hội', 5),
(6, 'Khoa học - Công nghệ', 4),
(7, 'Tạp chí & Chuyên đề', 3),
(8, 'Truyện tranh', 2),
(9, 'Thiếu nhi', 3),
(13, 'Kỹ năng', 7),
(14, 'Tác phẩm kinh điển', 6),
(15, 'Chăm sóc gia đình', 6),
(16, 'Văn học', 6),
(17, 'Nhân vật - Sự kiện', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai_con`
--

CREATE TABLE `theloai_con` (
  `id` int(3) NOT NULL COMMENT 'id TL con',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên TL con',
  `id_parent` int(3) NOT NULL COMMENT 'id TL cha',
  `sort` tinyint(1) DEFAULT 0 COMMENT 'Sắp xếp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai_con`
--

INSERT INTO `theloai_con` (`id`, `name`, `id_parent`, `sort`) VALUES
(1, 'Truyện đọc', 1, 7),
(2, 'Phát triển bản thân', 1, 6),
(3, 'Bí quyết kinh doanh', 1, 5),
(4, 'Hạt giống tâm hồn', 1, 3),
(5, 'Truyện thiếu nhi', 1, 2),
(6, 'Truyện ma tâm linh', 2, 7),
(7, 'Khởi nghiệp', 3, 9),
(8, 'Marketing - Bán hàng', 3, 7),
(9, 'Quản trị - Lãnh đạo', 3, 5),
(10, 'Đầu tư - Tài chính', 3, 4),
(11, 'Kiến thức kinh tế', 3, 3),
(12, 'Kinh doanh tổng hợp', 3, 0),
(13, 'Cổ trang', 4, 8),
(14, 'Hiện đại', 4, 6),
(15, 'Xuyên không', 4, 4),
(16, 'Trùng sinh', 4, 3),
(17, 'Huyền ảo', 4, 2),
(18, 'Nghệ thuật sống', 13, 7),
(19, 'Kỹ năng làm việc', 13, 6),
(20, 'Hướng nghiệp', 13, 3),
(21, 'Kỹ năng sống', 13, 2),
(22, 'Tiểu thuyết', 14, 9),
(23, 'Chăm sóc sức khoẻ', 15, 9),
(24, 'Nuôi dạy con', 15, 7),
(25, 'Tâm lý - Giới tính', 15, 6),
(26, 'Phụ nữ - Làm đẹp', 15, 5),
(27, 'Thơ - Tản văn', 16, 9),
(28, 'Truyện dài - Tiểu thuyết', 16, 8),
(29, 'Trinh thám', 16, 7),
(30, 'Kiếm hiệp', 16, 6),
(31, 'Truyện ngắn', 16, 5),
(32, 'Hài hước', 16, 4),
(33, 'Giả tưởng', 16, 3),
(34, 'Tự truyện', 16, 2),
(35, 'Kinh dị', 16, 1),
(36, 'Văn học Teen', 16, 0),
(37, 'Nhân vật', 17, 1),
(38, 'Sự kiện', 17, 0),
(39, 'Chính trị - Pháp luật', 5, 7),
(40, 'Tôn giáo - Tâm linh', 5, 6),
(41, 'Khoa học xã hội', 5, 4),
(42, 'Văn hoá nghệ thuật', 5, 3),
(43, 'Giáo dục', 5, 2),
(44, 'Kỹ thuật - Công nghệ', 6, 2),
(45, 'Kiến thức khoa học', 6, 0),
(46, 'Cổ tích - Thần thoại', 9, 5),
(47, 'Sách minh hoạ', 9, 3),
(48, 'Bài học cuộc sống', 9, 1),
(49, 'Văn học thiếu nhi', 9, 0),
(51, 'Chuyên đề', 7, 0),
(52, 'Drama', 8, 8),
(53, 'Action', 8, 7),
(54, 'Romance', 8, 5),
(55, 'Sports', 8, 3),
(56, 'VnComic', 8, 2),
(57, 'Thiếu nhi', 8, 1),
(60, 'Tạp chí', 7, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `binhluan_sp` (`id_product`),
  ADD KEY `tk_binhluan` (`id_user`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cart_detail` (`id_cart`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_cart` (`id_user`);

--
-- Chỉ mục cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thuoc_nxb` (`id_publisher`),
  ADD KEY `trong_dm` (`id_catalog`) USING BTREE,
  ADD KEY `cua_tg` (`id_author`) USING BTREE;

--
-- Chỉ mục cho bảng `tacgia`
--
ALTER TABLE `tacgia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `theloai_con`
--
ALTER TABLE `theloai_con`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thuoc_dm` (`id_parent`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id bình luận', AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'id nhà xuất bản', AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id sản phẩm', AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `tacgia`
--
ALTER TABLE `tacgia`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id tác giả', AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id tài khoản', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT COMMENT 'id thể loại', AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `theloai_con`
--
ALTER TABLE `theloai_con`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT COMMENT 'id TL con', AUTO_INCREMENT=69;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_sp` FOREIGN KEY (`id_product`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tk_binhluan` FOREIGN KEY (`id_user`) REFERENCES `taikhoan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `fk_cart_detail` FOREIGN KEY (`id_cart`) REFERENCES `giohang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `fk_user_cart` FOREIGN KEY (`id_user`) REFERENCES `taikhoan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `cua` FOREIGN KEY (`id_author`) REFERENCES `tacgia` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `thuoc_nxb` FOREIGN KEY (`id_publisher`) REFERENCES `nhaxuatban` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trong` FOREIGN KEY (`id_catalog`) REFERENCES `theloai_con` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `theloai_con`
--
ALTER TABLE `theloai_con`
  ADD CONSTRAINT `thuoc` FOREIGN KEY (`id_parent`) REFERENCES `theloai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
