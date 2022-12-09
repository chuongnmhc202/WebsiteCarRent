-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 05, 2022 lúc 04:30 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `furniture-shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `image`, `email`, `password`) VALUES
(1, 'admin', 'BMW-5-Series-LCI-vs-Audi-A6-8.jpg', 'admin@gmail.com', 'hamza123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `bdate` date DEFAULT NULL,
  `rdate` date DEFAULT NULL,
  `tt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`cart_id`, `cust_id`, `product_id`, `quantity`, `bdate`, `rdate`, `tt`) VALUES
(132, 9, 45, 4, '2022-12-03', '2022-12-05', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `category`) VALUES
(14, 'HONDA'),
(16, 'TOYOTA.'),
(17, 'SUZUKI'),
(18, 'ASTON MARTIN'),
(19, 'BENTLEY'),
(20, 'LandRover'),
(21, 'ROLLS-ROYCE'),
(22, 'KIA'),
(25, 'BMW'),
(26, 'Hyundai');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_pass` varchar(100) NOT NULL,
  `cust_add` varchar(200) NOT NULL,
  `cust_city` varchar(50) NOT NULL,
  `cust_postalcode` varchar(50) NOT NULL,
  `cust_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_name`, `cust_email`, `cust_pass`, `cust_add`, `cust_city`, `cust_postalcode`, `cust_number`) VALUES
(4, 'Minh Hoàng', 'hoang.map.125@gmail.com', '123456', '43 Trương Quang Giao', 'lahore', '54810', '0941357075'),
(8, 'Như Thảo', 'dinhlenhuthao@gmail.com', '123456', 'Khu phố Mỹ Viên', 'dn', '23', '0949775741'),
(9, 'Hoàng Chương', 'hoangchuong@gmail.com', '123456', '185 Lê Duẩn', 'HCM', '204', '0999222111');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer_order`
--

CREATE TABLE `customer_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_fullname` varchar(100) NOT NULL,
  `customer_address` varchar(225) NOT NULL,
  `customer_city` varchar(50) NOT NULL,
  `customer_pcode` int(11) NOT NULL,
  `customer_phonenumber` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_amount` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `products_qty` int(11) NOT NULL,
  `order_date` varchar(100) NOT NULL,
  `order_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `customer_order`
--

INSERT INTO `customer_order` (`order_id`, `customer_id`, `customer_email`, `customer_fullname`, `customer_address`, `customer_city`, `customer_pcode`, `customer_phonenumber`, `product_id`, `product_amount`, `invoice_no`, `products_qty`, `order_date`, `order_status`) VALUES
(90, 9, 'swasthik@gmail.com', 'nam', '185 Lê Du?n', 'dn', 204, '1234567890', 38, 0, 1506476242, 1, '02-12-2022', 'pending'),
(91, 9, 'swasthik@gmail.com', 'nam', '185 Lê Du?n', 'dn', 204, '1234567890', 37, 285000, 1862833986, 1, '02-12-2022', 'pending'),
(92, 9, 'swasthik@gmail.com', 'nam', '185 Lê Du?n', 'dn', 204, '1234567890', 39, 124500, 1162511407, 1, '02-12-2022', 'pending'),
(93, 9, 'swasthik@gmail.com', 'nam', '185 Lê Du?n', 'dn', 204, '1234567890', 37, 0, 975837609, 1, '02-12-2022', 'pending'),
(94, 8, 'dinhlenhuthao@gmail.com', 'Nh? Th?o', 'Khu ph? M? Viên', 'dn', 23, '0949775741', 45, 25000, 1053105789, 1, '03-12-2022', 'verified'),
(95, 8, 'dinhlenhuthao@gmail.com', 'Nh? Th?o', 'Khu ph? M? Viên', 'HCM', 23, '0949775741', 47, 29000, 1447593399, 1, '03-12-2022', 'verified'),
(96, 8, 'dinhlenhuthao@gmail.com', 'Nh? Th?o', 'Khu ph? M? Viên', 'dn', 23, '0949775741', 45, 25000, 2030913644, 1, '05-12-2022', 'verified'),
(97, 8, 'dinhlenhuthao@gmail.com', 'Nh? Th?o', 'Khu ph? M? Viên', 'dn', 23, '0949775741', 46, 230000, 2030913644, 1, '05-12-2022', 'pending'),
(98, 8, 'dinhlenhuthao@gmail.com', 'Nh? Th?o', 'Khu ph? M? Viên', 'dn', 23, '0949775741', 46, 230000, 102613952, 1, '05-12-2022', 'pending'),
(99, 8, 'dinhlenhuthao@gmail.com', 'Nh? Th?o', 'Khu ph? M? Viên', 'dn', 23, '0949775741', 46, 230000, 1595794799, 1, '05-12-2022', 'pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `furniture_product`
--

CREATE TABLE `furniture_product` (
  `pid` int(11) NOT NULL,
  `title` varchar(80) NOT NULL,
  `category` int(11) NOT NULL,
  `detail` text NOT NULL,
  `price` int(11) NOT NULL,
  `size` varchar(40) NOT NULL,
  `image` varchar(200) NOT NULL,
  `date` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `color` text DEFAULT NULL,
  `so` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `furniture_product`
--

INSERT INTO `furniture_product` (`pid`, `title`, `category`, `detail`, `price`, `size`, `image`, `date`, `status`, `color`, `so`) VALUES
(44, 'KIA RONDO', 22, '<p>G&iacute;a thu&ecirc; xe Kia Rondo lu&ocirc;n ở mức ph&ugrave; hợp với tất cả mọi người. Được trang bị động cơ linh hoạt, Kia Rondo được đ&aacute;nh gi&aacute; l&agrave; cao trong việc tăng tốc v&agrave; sức k&eacute;o tốt khi chở số lượng người lớn hoặc h&agrave;nh l&yacute; nặng. V&agrave; khả năng c&aacute;ch &acirc;m cao tạo cảm gi&aacute;c thoải v&agrave; dễ chịu cho người ngồi trong xe bởi c&aacute;c tạp &acirc;m b&ecirc;n ngo&agrave;i. Đ&acirc;y sẽ l&agrave; lựa chọn tối ưu cho c&aacute;c kh&aacute;ch du lịch hoặc gia đ&igrave;nh đi du lịch số lượng người nhiều, nếu bạn thấy Kia Rondo ph&ugrave; hợp với nhu cầu của m&igrave;nh th&igrave; h&atilde;y li&ecirc;n hệ với To&agrave;n Cầu V&agrave;ng để được nhận th&ecirc;m nhiều ưu đ&atilde;i:</p>\r\n\r\n<p><strong><a href=\"https://thuexetulaidanang.com/thue-xe-tu-lai/\">Thu&ecirc; xe tự l&aacute;i Đ&agrave; Nẵng</a></strong>&nbsp;tại Car4Remt&nbsp;bạn sẽ được:</p>\r\n\r\n<ul>\r\n	<li>Thủ tục thu&ecirc; xe đơn giản v&agrave; nhanh ch&oacute;ng</li>\r\n	<li>Kh&ocirc;ng cọc tiền thu&ecirc; xe</li>\r\n	<li>Miễn ph&iacute; rửa xe</li>\r\n	<li>Bảo mật th&ocirc;ng tin kh&aacute;ch h&agrave;ng</li>\r\n	<li>Giao xe v&agrave; tận nơi</li>\r\n</ul>\r\n', 700000, '4', 'gia-thue-xe-kia-rondo-4.jpg', '03-12-2022', 'publish', 'màu vàng', 'Tự động'),
(45, 'BMW 520i', 14, '<p>BMW l&agrave; h&atilde;ng sản xuất xe hơi Đức, một trong những c&ocirc;ng ty sản xuất xe hơi lớn nhất thế giới thuộc tập đo&agrave;n Volkswagen. Thị trường chủ yếu của h&atilde;ng l&agrave; ch&acirc;u &Acirc;u, những thương hiệu nổi tiếng trực thuộc h&atilde;ng bao gồm Audi, Bentley, Skoda, Lamborghini, Bugatti, SEAT, Porsche v&agrave; Volkswagen.</p>\r\n', 25000, '25 chỗ', 'BMW-5-Series-LCI-vs-Audi-A6-8.jpg', '03-12-2022', 'publish', 'màu vàng', 'Tự động'),
(46, 'Honda Civic', 14, '<p>Honda Civic&nbsp;l&agrave; một chiếc &quot;xe đua&quot; thể thao cầu trước trứ danh đến từ Honda, hứa hẹn mang đến một trải nghiệm tuyệt vời cho kh&aacute;ch h&agrave;ng</p>\r\n', 230000, '4 chỗ', 'honda-civic-1.jpg', '03-12-2022', 'publish', 'màu vàng', 'Tự động'),
(47, 'TOYOTA RUSH', 15, '<p>Chrysler l&agrave; một trong những nh&agrave; sản xuất &ocirc; t&ocirc; &quot;Big Three&quot; tại Hoa Kỳ, c&oacute; trụ sở tại Pontiac, Michigan. Chrysler Corporation ban đầu được th&agrave;nh lập v&agrave;o năm 1925 bởi Walter Chrysler từ phần c&ograve;n lại của C&ocirc;ng ty Maxwell Motor. Năm 1998, n&oacute; được Daimler-Benz mua lại v&agrave; c&ocirc;ng ty mẹ được đổi t&ecirc;n th&agrave;nh DaimlerChrysler.</p>\r\n', 29000, '4 ghế', '1.jpg', '03-12-2022', 'publish', 'màu vàng', 'Tự động');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Chỉ mục cho bảng `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `furniture_product`
--
ALTER TABLE `furniture_product`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `category` (`category`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT cho bảng `furniture_product`
--
ALTER TABLE `furniture_product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
