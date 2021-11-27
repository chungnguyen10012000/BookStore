SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

drop SCHEMA if EXISTS bookstore;
create SCHEMA bookstore;
use bookstore;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `user_name` varchar(30) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `registered_at` datetime DEFAULT NULL,
  `password` text DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `admin` (`id`, `email`, `first_name`, `last_name`, `user_name`, `phone`, `birthday`, `registered_at`, `password`, `avatar`) VALUES
(1, 'nvchung00@gmail.com', 'Chung', 'Nguyen Van', 'chungnguyen10012000', '098-943-9678', '2000-01-10', '2021-11-17 8:17:33', 'chungnguyen','../../assets/images/admin/avatar_1.png'),
(2, 'trung@gmail.com', 'Trung', 'Dang', 'trung', '012-345-6789', '2000-01-10', '2021-11-17 8:30:22', 'admin', '../../assets/images/admin/avatar_1.png'),
(3, 'hung@gmail.com', 'Hung', 'Nguyen', 'hung', '012-345-6789', '2000-01-10', '2021-11-17 8:30:22', 'admin', '../../assets/images/admin/avatar_1.png'),
(4, 'bach@gmail.com', 'Bach', 'Pham', 'bach', '012-345-6789', '2000-01-10', '2021-11-17 8:30:22', 'admin', '../../assets/images/admin/avatar_1.png'),
(5, 'admin@gmail.com', 'Admin', 'Admin', 'admin', '012-345-6789', '2000-01-10', '2021-11-17 8:30:22', 'admin', '../../assets/images/admin/avatar_1.png');

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` float DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `released` date DEFAULT NULL,
  `is_top` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `book` (`id`, `name`, `category`, `price`, `description`, `image`, `released`, `is_top`) VALUES
(1, 'Nhập môn kỹ thuật hoá học', 'hoá học', 120, 'Nhập môn Kỹ thuật Hóa học (Công cụ cho hôm nay và ngày mai) chủ yếu được biên soạn theo tài liệu tham khảo nổi tiếng trên thế giới về Nhập môn Kỹ thuật Hóa học (Introduction to Chemical Engineering) và dựa trên kinh nghiệm giảng dạy nhiều năm môn Nhập môn Kỹ thuật (Introduction to Engineering).', '../../../assets/images/book/NhapMonKyThuatHoaHoc.png', '2021-04-27', 1),
(2, 'Cơ sở khoa học vật liệu', 'hoá học', 93, 'Cuốn sách “CƠ SỞ KHOA HỌC VẬT LIỆU” nhằm đáp ứng yêu cầu nâng cao chất lượng dạy và học của cán bộ và sinh viên Khoa Công nghệ Vật liệu cũng như các ngành học liên quan. Nội dung chính của cuốn sách theo đề cương môn học cùng tên trong chương trình đào tạo.', '../../../assets/images/book/CoSoKhoaHocVatLieu.png', '2021-05-28', 1),
(3, 'Hoá học và hoá lý polime', 'hoá học', 27, '“HÓA HỌC VÀ HÓA LÝ POLYME” được biên soạn nhằm giúp ích cho việc học tập của sinh viên ngành Hóa trường Đại học Bách khoa TPHCM và sinh viên các trường kỹ thuật, các nhà chuyên môn', '../../../assets/images/book/HoaHocVaHoaLyPolime.png', '2021-10-01', 0),
(4, 'Giáo trình hoá học xanh', 'hoá học', 92, 'Hóa học xanh (Green chemistry) ngày nay được thừa nhận là xu thế tất yếu của ngành hóa học và kỹ thuật hóa học. Hàng năm, có hàng ngàn công trình khoa học về nhiều hướng nghiên cứu khác nhau của lĩnh vực hóa học xanh được công bố trên các tạp chí hóa học quốc tế chuyên ngành có uy tín.', '../../../assets/images/book/GiaoTrinhHoaHocXanh.png', '2019-05-01', 0),
(5, 'Hoá học chất rắn', 'hoá học', 40, 'HÓA HỌC CHẤT RẮN được biên soạn, dùng làm tài liệu giảng dạy cho môn học cùng tên, trong chương trình giảng dạy cho sinh viên chính quy Khoa Công nghệ Vật liệu, Trường Đại học Bách khoa - Đại học Quốc gia TP HCM. ', '../../../assets/images/book/HoaHocChatRan.png', '2018-12-12', 1),
(6, 'Thông tin di động', 'công nghệ', 22, 'Tài liệu sẽ cung cấp đa dạng các kiến thức cơ sở liên quan đến truyền thông không dây nói chung và thông tin di động nói riêng: các khái niệm cơ bản, các vấn đề về tái sử dụng tần số và can nhiễu, và dung lượng của thông tin vô tuyến di động tế bào; ', '../../../assets/images/book/ThongTinDiDong.png', '2019-07-01', 1),
(7, 'Hệ thống thông tin quản lý', 'công nghệ', 66, 'HỆ THỐNG THÔNG TIN QUẢN LÝ cung cấp kiến thức toàn diện nhưng không quá chi tiết về HTTTQL cho Nhà quản lý để họ có thể tham gia trực tiếp hay gián tiếp vào quá trình ứng dụng CNTT vào thực tiễn tổ chức sao cho có hiệu quả nhất.', '../../../assets/images/book/HeThongThongTinQuanLy.png', '2017-08-01', 0),
(8, 'Lý thuyết thông tin', 'công nghệ', 18, 'Tài liệu này được biên soạn theo đề cương môn học “Lý thuyết thông tin” - Khoa Công nghệ Thông tin, Trường Đại học Bách khoa - Đại học Quốc gia TP Hồ Chí Minh, chủ yếu trình bày lý thuyết thông tin theo quan điểm kỹ thuật, ngoài ra tài liệu cũng nêu ra một số khía cạnh của thông tin mà có thể áp dụng vào các lĩnh vực khác.', '../../../assets/images/book/LyThuyetThongTin.png', '2019-03-01', 0),
(9, 'Nguyên lý thông tin - tương tự sô', 'công nghệ', 15, '"Nguyên lý thông tin tương tự - số" được biên soạn nhằm mục đích cung cấp các kiến thức cơ sở về tín hiệu - phổ của các phương thức điều chế cổ điển (điều chế tương tự AM, FM, PM hoặc điều chế số ASK, FSK, PSK) và của các phương thức điều chế mới (điều chế và ghép kênh PCM, điều chế QAM, MSK...). ', '../../../assets/images/book/NguyenLyThongTinTuongTuSo.png', '2021-07-06', 1),
(10, 'Truyền số liệu và mạng thông tin sô', 'công nghệ', 54, 'TRUYỀN SỐ LIỆU VÀ MẠNG THÔNG TIN SỐ cung cấp một phần trong lượng kiến thức chuyên ngành cho sinh viên ngành Điện tử - Viễn thông về bản chất môi trường truyền, tác dụng của nhiễu, các loại tín hiệu truyền, các nghi thức truyền và kết nối mạng.', '../../../assets/images/book/TruyenSoLieu.png', '2021-01-12', 1),
(11, 'Sinh học đại cương tập 1', 'sinh học', 42, 'SINH HỌC ĐẠI CƯƠNG được biên soạn nhằm mục đích cung cấp cho sinh viên những kiến thức cơ bản nhất về các quy luật sinh học để từ đó sinh viên và cán bộ kỹ thuật có liên quan đủ kiến thức sau này tiếp cận với các chuyên ngành của công nghệ sinh học như công nghệ gen, công nghệ protein-enzyme, công nghệ lên men và công nghệ tế bào.', '../../../assets/images/book/SinhHocDaiCuong1.png', '2017-08-12', 1),
(12, 'Sinh học đại cương tập 2', 'sinh học', 40, 'SINH HỌC ĐẠI CƯƠNG được biên soạn nhằm mục đích cung cấp cho sinh viên những kiến thức cơ bản nhất về các quy luật sinh học để từ đó sinh viên và cán bộ kỹ thuật có liên quan đủ kiến thức sau này tiếp cận với các chuyên ngành của công nghệ sinh học như công nghệ gen, công nghệ protein-enzyme, công nghệ lên men và công nghệ tế bào.', '../../../assets/images/book/SinhHocDaiCuong2.png', '2016-09-13', 0),
(13, 'Thí nghiệm công nghệ sinh học', 'sinh học', 20, 'THÍ NGHIỆM HÓA SINH HỌC biên soạn những phương pháp mới, phù hợp với điều kiện của các phòng thí nghiệm hiện có ở Việt nam.', '../../../assets/images/book/ThiNghiemCongNgheSinhHoc.png', '2019-09-10', 0),
(14, 'Công nghệ sinh học môi trường tập 2', 'sinh học', 24, 'Cuốn “CÔNG NGHỆ SINH HỌC MÔI TRƯỜNG TẬP 2” được biên soạn trên cơ sở tập hợp các phương pháp xử lý chất thải trong và ngoài nước, nhằm cung cấp các kiến thức cơ bản về kỹ thuật xử lý các chất thải hữu cơ và một số loại chất khoáng cho sinh viên ngành công nghệ sinh học, kỹ thuật môi trường, các cán bộ khoa học có liên quan.', '../../../assets/images/book/CongNgheSinhHoc1.png', '2018-09-10', 1),
(15, 'Công nghệ sinh học môi trường tập 1', 'sinh học', 31, 'CÔNG NGHỆ SINH HỌC MÔI TRƯỜNG được biên soạn sẽ cung cấp các kiến thức về các quá trình sinh học và công nghệ sinh học môi trường cho sinh viên các ngành Công nghệ Sinh học, Kỹ thuật Môi trường và các cán bộ khoa học có liên quan.', '../../../assets/images/book/CongNgheSinhHoc2.png', '2021-09-05', 1),
(16, 'Giáo trình cơ sở thiết kế máy', 'cơ khí', 115, 'GIÁO TRÌNH CƠ SỞ THIẾT KẾ MÁY được biên soạn theo đề cương môn học Chi tiết máy cho sinh viên khoa Cơ khí và Kỹ thuật giao thông trường Đại học Bách Khoa - Đại học Quốc gia TP Hồ Chí Minh, phù hợp với nội dung môn Cơ sở thiết kế máy theo chương trình khung của Bộ Giáo dục và Đào tạo cho các ngành Cơ khí. ', '../../../assets/images/book/ThietKemay.png', '2018-10-12', 1),
(17, 'Giáo trình các quá trình chế tạo', 'cơ khí', 43, 'Giáo trình Các quá trình chế tạo cung cấp cho sinh viên ngành kỹ thuật nói chung và ngành cơ khí nói riêng những kiến thức cơ bản của các quá trình sản xuất đang được ứng dụng trong thực tế sản xuất của xã hội', '../../../assets/images/book/QuaTrinhCheTao.png', '2021-07-09', 1),
(18, 'Phương pháp tạo trang phục', 'cơ khí', 48, 'PHƯƠNG PHÁP TẠO TRANG PHỤC là tài liệu được biên soạn với mục đích giới thiệu tới độc giả trong và ngoài ngành những con đường hình thành nên trang phục', '../../../assets/images/book/PhuongPhapTaoTrangPhuc.png', '2021-03-01', 0),
(19, 'Đo lường trong dệt may', 'cơ khí', 41, 'Trong quá trình sản xuất, muốn bảo đảm chất lượng của quá trình cũng như chất lượng sản phẩm làm ra, cần thiết phải thực hiện đo lường. Đo lường trong sản xuất dệt may có hai loại đối tượng chính là vật liệu dệt may và các quá trình công nghệ.', '../../../assets/images/book/DoLuong.png', '2021-07-08', 0),
(20, 'Công nghệ may', 'cơ khí', 13, 'CÔNG NGHỆ MAY trình bày những kiến thức cơ bản trong ngành may, bao gồm: các quá trình công nghệ sản xuất và các thiết bị đi kèm, kỹ thuật may các chi tiết  và sản phẩm may. Những công nghệ này đang được áp dụng trong ngành may ở Việt Nam và các nước trong khu vực.', '../../../assets/images/book/CongNgheMay.png', '2021-07-07', 0);

CREATE TABLE `categories` (
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `categories` (`category`) VALUES
('hóa học'),
('công nghệ'),
('sinh học'),
('cơ khí');

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `registered_at` datetime DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT 1,
  `password` text DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `customer` (`id`, `name`, `email`, `phone`, `birthday`, `registered_at`, `active`, `password`, `avatar`) VALUES
(1, 'customer_1', '12345@gmail.com', '123456', '2000-10-12', '2021-17-08 00:00:00', 1, '$2y$10$1nAQq67NQhizV78n/u9AVOSzH4b/YF7HDwA6R2xOHAjF8I8rnnDZG', '../../../assets/images/admin/avatar_1.png'),
(2, 'customer_2', '123@gmail.com', '123456', '2000-10-12', '2021-17-08 00:00:00', 1, '$2y$10$Bg/al3CWUaaH5cv81nv2T.rZf/CUslCk2asNAghkfYmjMgaZhCF1m', '../../../assets/images/admin/avatar_2.png');

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `employee` (`id`, `name`, `role`, `image`, `facebook`, `twitter`, `instagram`) VALUES
(1, 'Nguyen Van Chung', 'Owner', '/assets/images/about/avatar_1.jpg', 'https://www.facebook.com', 'https://twitter.com', 'https://www.instagram.com'),
(2, 'Pham Cong Bach', 'Owner', '/assets/images/about/avatar_1.jpg', 'https://www.facebook.com', 'https://twitter.com', 'https://www.instagram.com'),
(3, 'Dang Nguyen Dien Trung', 'Owner', '/assets/images/avatar_1.jpg', 'https://www.facebook.com', 'https://twitter.com', 'https://www.instagram.com'),
(4, 'Nguyen Huu Hung', 'Owner', '/assets/images/about/avatar_1.jpg', 'https://www.facebook.com', 'https://twitter.com', 'https://www.instagram.com');

CREATE TABLE `reviewed_by` (
  `book_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `date_review` datetime NOT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `reviewed_by` (`book_id`, `customer_id`, `quality`, `price`, `date_review`, `content`) VALUES
(1, 1, 4, NULL, '2021-08-27 01:00:00', 'Hay'),
(1, 1, 5, NULL, '2021-09-02 04:00:00', 'Hay'),
(2, 1, 3, NULL, '2021-09-03 05:00:00', 'Hay'),
(2, 1, 4, NULL, '2021-09-04 05:00:00', 'Hay'),
(3, 1, 5, NULL, '2021-09-17 12:00:00', 'Hay'),
(3, 1, 2, NULL, '2021-10-15 12:00:00', 'Hay'),
(4, 1, 5, NULL, '2021-10-19 01:00:00', 'Hay'),
(4, 1, 4, NULL, '2021-07-17 03:00:00', 'Hay'),
(4, 1, 4, NULL, '2021-07-13 09:00:00', 'Hay'),
(4, 1, 0, NULL, '2021-07-10 01:00:00', 'Hay'),
(4, 1, 1, NULL, '2021-07-01 01:00:00', 'Hay'),
(4, 1, 0, NULL, '2021-06-23 01:00:00', 'Hay'),
(5, 1, 1, NULL, '2021-06-23 05:00:00', 'Hay'),
(5, 1, 2, NULL, '2021-06-11 04:00:00', 'Hay'),
(6, 1, 3, NULL, '2021-05-30 09:00:00', 'Hay');

CREATE TABLE `send_email_log` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `shopping_log` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `shopping_log` (`id`, `customer_id`, `total_price`, `created_at`) VALUES
(7, 2, 10.15, '2021-06-08 22:08:27'),
(8, 2, 32.65, '2021-06-08 22:10:34'),
(9, 1, 23.69, '2021-06-08 22:11:08'),
(10, 1, 59.78, '2021-06-08 22:11:26'),
(11, 1, 19.58, '2021-06-08 22:11:46'),
(12, 1, 20.4, '2021-06-08 22:12:30');

CREATE TABLE `shopping_log_entry` (
  `log_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `shopping_log_entry` (`log_id`, `book_id`, `quantity`) VALUES
(7, 2, 1),
(8, 2, 1),
(8, 5, 1),
(8, 8, 1),
(8, 9, 1),
(9, 1, 1),
(9, 5, 1),
(9, 15, 1),
(10, 4, 1),
(10, 16, 1),
(10, 17, 1),
(11, 6, 1),
(11, 7, 1),
(11, 14, 1),
(12, 10, 1);

CREATE TABLE `verification_account` (
  `email` varchar(255) NOT NULL,
  `hash` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `verification_account` (`email`, `hash`) VALUES
('123@gmail.com', 'e07413354875be01a996dc560274708e'),
('12345@gmail.com', 'dc912a253d1e9ba40e2c597ed2376640');

CREATE TABLE `written_by` (
  `book_id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `written_by` (`book_id`, `author`) VALUES
(1, 'Nguyễn Hữu Hiếu'),
(2, 'Đỗ Quang Minh'),
(3, 'Phan Thanh Bình'),
(4, 'Phan Thanh Sơn Nam'),
(5, 'Đỗ Quang Minh'),
(6, 'Hồ Văn Khương'),
(7, 'Nguyễn Thanh Hùng'),
(8, 'Hồ Văn Quân'),
(9, 'Vũ Đình Thành'),
(10, 'Trần Văn Sư'),
(11, 'Nguyễn Đức Lượng'),
(12, 'Nguyễn Đức Lượng'),
(13, 'Nguyễn Đức Lượng'),
(14, 'Nguyễn Đức Lượng'),
(15, 'Nguyễn Đức Lượng'),
(16, 'Nguyễn Hữu Lộc'),
(17, 'Trần Doãn Sơn'),
(18, 'Hồ Thị Minh Hương'),
(19, 'Đào Duy Thái'),
(20, 'Lê Thị Kiều Liên');

ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

ALTER TABLE `categories`
  ADD PRIMARY KEY (`category`);

ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `reviewed_by`
  ADD PRIMARY KEY (`book_id`,`customer_id`,`date_review`),
  ADD KEY `customer_id` (`customer_id`);

ALTER TABLE `send_email_log`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `shopping_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

ALTER TABLE `shopping_log_entry`
  ADD PRIMARY KEY (`log_id`,`book_id`),
  ADD KEY `book_id` (`book_id`);

ALTER TABLE `verification_account`
  ADD PRIMARY KEY (`email`);

ALTER TABLE `written_by`
  ADD PRIMARY KEY (`book_id`,`author`);

ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `send_email_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `shopping_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`category`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `reviewed_by`
  ADD CONSTRAINT `reviewed_by_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviewed_by_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `shopping_log`
  ADD CONSTRAINT `shopping_log_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

ALTER TABLE `shopping_log_entry`
  ADD CONSTRAINT `shopping_log_entry_ibfk_1` FOREIGN KEY (`log_id`) REFERENCES `shopping_log` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shopping_log_entry_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `verification_account`
  ADD CONSTRAINT `verification_account_ibfk_1` FOREIGN KEY (`email`) REFERENCES `customer` (`email`);

ALTER TABLE `written_by`
  ADD CONSTRAINT `written_by_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;
