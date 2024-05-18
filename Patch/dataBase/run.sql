SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `syn_baiviet_tag`;
DROP TABLE IF EXISTS `tag`;
SET FOREIGN_KEY_CHECKS=1;

CREATE TABLE `syn_baiviet_tag` (
  `ID` int NOT NULL,
  `tagID` int NOT NULL,
  `baivietID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `syn_baiviet_tag`
--

INSERT INTO `syn_baiviet_tag` (`ID`, `tagID`, `baivietID`) VALUES
(1, 20, 34),
(2, 5, 41),
(3, 19, 31),
(4, 11, 40),
(5, 17, 45),
(6, 4, 43),
(7, 14, 40),
(8, 11, 33),
(9, 3, 32),
(10, 5, 48),
(11, 12, 36),
(12, 16, 49),
(13, 8, 31),
(14, 5, 49),
(15, 20, 32),
(16, 15, 33),
(17, 13, 43),
(18, 8, 50),
(19, 15, 44),
(20, 7, 39),
(21, 9, 44),
(22, 5, 50),
(23, 6, 37),
(24, 20, 46),
(25, 2, 30),
(26, 18, 37),
(27, 4, 47),
(28, 12, 37),
(29, 1, 32),
(30, 11, 35),
(31, 14, 43),
(32, 4, 48),
(33, 18, 45),
(34, 2, 32),
(35, 9, 43),
(36, 2, 38),
(37, 16, 46),
(38, 11, 33),
(39, 7, 31),
(40, 10, 30),
(41, 17, 49),
(42, 5, 37),
(43, 2, 35),
(44, 3, 49),
(45, 5, 35),
(46, 15, 48),
(47, 4, 36),
(48, 19, 45),
(49, 20, 44),
(50, 12, 45);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tag`
--

CREATE TABLE `tag` (
  `tag_id` int NOT NULL,
  `ten_tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tag`
--

INSERT INTO `tag` (`tag_id`, `ten_tag`) VALUES
(1, 'Điểm đến hấp dẫn'),
(2, 'Ăn uống ngon'),
(3, 'Khách sạn tốt'),
(4, 'Phong cảnh đẹp'),
(5, 'Nơi mua sắm'),
(6, 'Hoạt động thú vị'),
(7, 'Văn hóa địa phương'),
(8, 'Phiêu lưu mạo hiểm'),
(9, 'Giao thông thuận tiện'),
(10, 'Nghỉ dưỡng'),
(11, 'Du lịch gia đình'),
(12, 'Thời tiết lý tưởng'),
(13, 'Địa điểm lịch sử'),
(14, 'Dịch vụ du lịch'),
(15, 'Tiện ích công cộng'),
(16, 'Ẩm thực địa phương'),
(17, 'Hoạt động ngoại khoá'),
(18, 'Sự kiện đặc biệt'),
(19, 'Phương tiện di chuyển'),
(20, 'Kinh nghiệm du lịch');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `syn_baiviet_tag`
--
ALTER TABLE `syn_baiviet_tag`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `syn_baiviet_tag_baiviet` (`baivietID`),
  ADD KEY `syn_baiviet_tag_tag` (`tagID`);

--
-- Chỉ mục cho bảng `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tag_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `syn_baiviet_tag`
--
ALTER TABLE `syn_baiviet_tag`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `syn_baiviet_tag`
--
ALTER TABLE `syn_baiviet_tag`
  ADD CONSTRAINT `syn_baiviet_tag_baiviet` FOREIGN KEY (`baivietID`) REFERENCES `baiviet` (`baiviet_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `syn_baiviet_tag_tag` FOREIGN KEY (`tagID`) REFERENCES `tag` (`tag_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
