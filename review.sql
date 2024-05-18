-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th5 18, 2024 lúc 10:58 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `review`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `author`
--

CREATE TABLE `author` (
  `author_id` int NOT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `author_mail` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `author`
--

INSERT INTO `author` (`author_id`, `author_name`, `author_mail`) VALUES
(40, 'Trần Mạnh Thắng', 'manhthang0704@gmail.com'),
(41, 'Trần Thị Phương Thanh', 'phuongthanh@gmail.com'),
(42, 'Lê Thị Phương Thanh', 'lepthanh@gmail.com'),
(43, 'Nguyễn Thị Quỳnh', 'quynh@gmail.com'),
(44, 'Nguyễn Đức Lan Tâm', 'lantam@gmail.com'),
(45, 'Bùi Anh Tuấn', 'tuanbui@gmail.com'),
(46, 'Trương Minh Quốc Thắng', 'quocthang@gmail.com'),
(47, 'Lê Xuân Mạnh', 'xuanmanh@gmail.com'),
(48, 'Nguyễn Việt Thành', 'vietthanh@gmail.com'),
(49, 'Trần Bá Huy', 'bahuy@gmail.com'),
(50, 'Lê Văn Đông', 'vandong@gmail.com'),
(51, 'Trần Hùng Huy', 'huytran@gmail.com'),
(52, 'Nguyễn Thị Việt Hoa', 'viethoa@gmail.com'),
(53, 'Phan Văn Giang', 'vangiang@gmail.com'),
(54, 'Phan Minh Cường', 'phancuong@gmail.com'),
(55, 'Lê Hoàng Nhật ', 'lenhat79@gmail.com'),
(56, 'Bùi Quang Trường', 'quangtruong@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

CREATE TABLE `baiviet` (
  `baiviet_id` int NOT NULL,
  `author_id` int NOT NULL,
  `danhmuc_id` int NOT NULL,
  `tieude` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `content` varchar(10000) COLLATE utf8mb4_general_ci NOT NULL,
  `anh` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `tomtat` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `Ngaytao` date NOT NULL,
  `luotxem` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`baiviet_id`, `author_id`, `danhmuc_id`, `tieude`, `content`, `anh`, `tomtat`, `Ngaytao`, `luotxem`) VALUES
(28, 40, 35, 'NHỮNG ĐIỂM VUI CHƠI THÚ VỊ ĐÀ NẴNG QUẢNG BÌNH HÚT KHÁCH NHẤT', '<p><strong>I. Từ Đà Nẵng đi Quảng Bình bao nhiêu km?</strong></p><p>Quãng đường từ Đà Nẵng đi Quảng Bình có chiều dài khoảng 235km, không quá xa nên nếu bạn muốn tiếp tục chuyến du lịch của mình thì có thể lựa chọn tuyến đường đi theo quốc lộ 1A hoặc đường mòn Hồ Chí Minh.</p><p>Bắt đầu từ thành phố Đà Nẵng đi qua đèo Hải Vân qua tỉnh Thừa Thiên Huế sẽ đến địa phận tỉnh Quảng Trị. Từ đây, bạn có thể di chuyển đến Quảng Bình bằng quốc lộ 1A hoặc đường Hồ Chí Minh. Tuy nhiên, trong quá trình di chuyển hãy tuân thủ đúng luật giao thông và đi đúng làn đường, tốc độ để tránh mắc lỗi phạt. Đồng thời, các bạn cũng nên tìm hiểu kỹ cung đường để có chuyến đi an toàn nhất nhé.</p><figure class=\"image\"><img style=\"aspect-ratio:750/422;\" src=\"https://reviewdulich.com.vn/images/upload/images/nhung-dia-diem-vui-choi-quang-binh/duong-mon-ho-chi-minh.jpg\" alt=\"Đường mòn Hồ Chí Minh\" width=\"750\" height=\"422\"></figure><p><i><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Di chuyển bằng đường mòn Hồ Chí Minh đến Quảng Bình</strong></i></p><p>Bên cạnh đó, ngoài xe ô tô và xe máy cá nhân bạn cũng có thể đi xe khách để bắt đầu cho hành trình của mình. Một số hãng xe chạy từ Đà Nẵng đi Quảng Bình có thể kể đến như: Hoàng Long, Hiếu Hoa, Phương Trang, Quang Nguyên, Hải Hà... Những hãng xe này có mức giá khoảng 180.000 - 220.000 đồng tùy chất lượng nhà xe.</p><figure class=\"image\"><img style=\"aspect-ratio:750/422;\" src=\"https://reviewdulich.com.vn/images/upload/images/nhung-dia-diem-vui-choi-quang-binh/nha-xe-phuong-trang.jpg\" alt=\"Nhà xe Phương Trang\" width=\"750\" height=\"422\"></figure><p><i><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Nhà xe Phương Trang được nhiều khách hàng lựa chọn</strong></i></p><p>Lựa chọn phương tiện từ Đà Nẵng đi Quảng Bình phù hợp để có chuyến đi vui vẻ nhé. Tới đây bạn sẽ được ghé thăm nhiều địa điểm đẹp nơi đây mà không phải nơi nào cũng có được.</p><p>Những điểm vui chơi thú vị Đà Nẵng Quảng Bình</p><p>Đến Quảng Bình bạn sẽ có cơ hội ghé thăm rất nhiều địa điểm du lịch đẹp và nổi tiếng được nhiều người biết đến như:</p><p>&nbsp;</p><p><strong>1.Vũng Chùa – Đảo Yến</strong></p><p>Đây là địa điểm du lịch được biết đến là nơi an nghỉ của đại tướng Võ Nguyên Giáp đáng kính. Vì vậy, rất nhiều khách du lịch đến đây để thăm viếng mộ của đại tướng. Tuy nhiên, nếu đến đây dâng hương du khách chú ý ăn mặc lịch sự và yên tĩnh, không gây mất trật tự ở đây để tránh làm ảnh hưởng đến không gian trang nghiêm.</p><figure class=\"image\"><img style=\"aspect-ratio:750/422;\" src=\"https://reviewdulich.com.vn/images/upload/images/nhung-dia-diem-vui-choi-quang-binh/vung-chua-dao-yen.jpg\" alt=\"Vũng Chùa - đảo Yến\" width=\"750\" height=\"422\"></figure><p><i><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Từ mộ Đại Tướng nhìn ra đảo Yến</strong></i></p><p><strong>2.Suối nước Moọc</strong></p><p>Suối nước Moọc là nơi có phong cảnh non nước hữu tình và thơ mộng nên vô cùng thích hợp với những ai tìm kiếm một nơi yên bình để giải tỏa căng thẳng, mệt mỏi.</p><p>Không những thế, khi tới đây bạn còn có cơ hội dạo chơi ở dòng suối mát rượi, băng qua những cây cầu và tảng đá men theo suối. Đồng thời, đến suối Moọc vào mùa hè nước rất mát nên sẽ khiến du khách muốn hòa mình vào dòng nước trong veo. Nếu muốn vui chơi thoải mái bạn hãy mang theo đồ bơi nhé.</p><figure class=\"image\"><img style=\"aspect-ratio:750/750;\" src=\"https://reviewdulich.com.vn/images/upload/images/nhung-dia-diem-vui-choi-quang-binh/suoi-nuoc-mooc.jpg\" alt=\"Suối nước Mọoc\" width=\"750\" height=\"750\"></figure><p><i><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Suối nước Mọoc là nơi có phong cảnh non nước hữu tình</strong></i></p><p><strong>3.Bãi đá nhảy</strong></p><p>Đây là một bãi biển đẹp và độc đáo của Quảng Bình mà các bạn nhất định nên tới một lần. Bãi đá nhảy sở dĩ có cái tên này là vì ở bãi tắm có rất nhiều hòn đá từ kích cỡ lớn tới nhỏ vươn mình ra biển cả.</p><p>Đồng thời, nước ở bãi đá nhảy cũng khá trong cộng thêm những hòn đá chắn ngang khiến người nhìn có cảm giác bãi tắm không được rộng. Tuy nhiên, thực tế bãi tắm khá rộng và an toàn khi tắm tại đây. Ngoài ra, tới bãi đá nhảy du khách còn có thể chụp được nhiều ảnh đẹp.</p><figure class=\"image\"><img style=\"aspect-ratio:750/938;\" src=\"https://reviewdulich.com.vn/images/upload/images/nhung-dia-diem-vui-choi-quang-binh/bai-da-nhay.jpg\" alt=\"Bãi đá nhảy\" width=\"750\" height=\"938\"></figure><p><i><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Bãi đá nhảy là khu vực có thể chụp được rất nhiều ảnh đẹp</strong></i></p><p><strong>4.Cồn cát Quang Phú</strong></p><p>Cồn cát Quang Phú là điểm đến mới đang nổi lên hiện nay tại Quảng Bình. Nơi đây thu hút du khách bởi những triền cát trắng trải dài, lung linh dưới nắng. Không những thế với những điểm nhấn sắc xanh của những bụi cây dại, màu nâu trầm của những cành cây khô khiến cảnh sắc nơi đây càng thêm đẹp và hấp dẫn.</p><p>Ngoài ra, tới cồn cát Quang Phú các bạn còn có cơ hội khám phá bộ môn trượt cát với ván trượt là mo cau và giấy cứng. Khi trượt từ trên cao xuống bạn sẽ cảm nhận được những lớp cát trắng mịn bám vào cơ thể và bung tỏa trong không gian. Giúp bạn như đang được hòa với thiên nhiên bao la và hùng vĩ. Tuy nhiên, đây là trò chơi chỉ lý tưởng cho những người giữ thăng bằng tốt cũng như yêu thích cảm giác mạnh.</p><figure class=\"image\"><img style=\"aspect-ratio:750/750;\" src=\"https://reviewdulich.com.vn/images/upload/images/nhung-dia-diem-vui-choi-quang-binh/con-cat-quang-phu.jpg\" alt=\"Cồn cát Quang Phú\" width=\"750\" height=\"750\"></figure><p><i><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Triền cát trắng trải dài lung linh dưới nắng</strong></i></p><p><br>&nbsp;</p>', '131959006143950704.jpg', 'Nhắc đến Quảng Bình chúng ta sẽ nghĩ ngay đến mảnh đất Miền Trung đầy nắng và gió nhưng được ưu đãi rất nhiều về rừng núi, biển… Tất cả những yếu tố đó tạo nên một mảnh đất đẹp đẽ và thu hút khách du lịch. Không những thế, gần với Đà Nẵng – một trung tâm du lịch miền Trung nên Quảng Bình tạo điều kiện thuận lợi để du khách có thể ghé thăm nhiều nơi.  Vậy hãy tìm hiểu xem Đà Nẵng Quảng Bình có những điểm du dịch hút khách nào nhé.', '2024-05-16', 0),
(30, 42, 35, 'Bái Đính cổ tự - ngôi chùa trứ danh đất Ninh Bình', '<p><i>Bái Đính cổ tự đã có từ vài trăm năm trước và cho đến nay khi khu chùa mới có quy mô hoành tráng cũng không làm mất đi sức hút của nó.Bái Đính cổ tự đã có từ vài trăm năm trước và cho đến nay khi khu chùa mới có quy mô hoành tráng cũng không làm mất đi sức hút của nó.Bái Đính cổ tự đã có từ vài trăm năm trước và cho đến nay khi khu chùa mới có quy mô hoành tráng cũng không làm mất đi sức hút của nó.Bái Đính cổ tự đã có từ vài trăm năm trước và cho đến nay khi khu chùa mới có quy mô hoành tráng cũng không làm mất đi sức hút của nó.Bái Đính cổ tự đã có từ vài trăm năm trước và cho đến nay khi khu chùa mới có quy mô hoành tráng cũng không làm mất đi sức hút của nó.</i></p>', 'diemden_3.jpg', 'Bái Đính cổ tự đã có từ vài trăm năm trước và cho đến nay khi khu chùa mới có quy mô hoành tráng cũng không làm mất đi sức hút của nó.', '2024-05-15', 64),
(31, 43, 35, 'Tham khảo lịch trình du lịch Đà Nẵng bằng ô tô – cẩm nang du lịch', '<p><i>Du lịch Đà Nẵng bằng ô tô đang trở thành vấn đề được nhiều người quan tâm hiện nay. Đà Nẵng được biết tới là một trong những thành phố sạch và đẹp nhất tại Việt Nam hiện nay. Chính vì vậy nơi đây là điểm đến thu hút nhiều khách du lịch tới thăm hàng năm. &nbsp;Việc du lịch bằng ô tô sẽ mang tới cho bạn những trải nghiệm tuyệt vời và tiết kiệm được một khoản chi phí đáng kể.Du lịch Đà Nẵng bằng ô tô đang trở thành vấn đề được nhiều người quan tâm hiện nay. Đà Nẵng được biết tới là một trong những thành phố sạch và đẹp nhất tại Việt Nam hiện nay. Chính vì vậy nơi đây là điểm đến thu hút nhiều khách du lịch tới thăm hàng năm. &nbsp;Việc du lịch bằng ô tô sẽ mang tới cho bạn những trải nghiệm tuyệt vời và tiết kiệm được một khoản chi phí đáng kể.Du lịch Đà Nẵng bằng ô tô đang trở thành vấn đề được nhiều người quan tâm hiện nay. Đà Nẵng được biết tới là một trong những thành phố sạch và đẹp nhất tại Việt Nam hiện nay. Chính vì vậy nơi đây là điểm đến thu hút nhiều khách du lịch tới thăm hàng năm. &nbsp;Việc du lịch bằng ô tô sẽ mang tới cho bạn những trải nghiệm tuyệt vời và tiết kiệm được một khoản chi phí đáng kể.</i></p>', 'diemden_4.jpg', 'Du lịch Đà Nẵng bằng ô tô đang trở thành vấn đề được nhiều người quan tâm hiện nay. Đà Nẵng được biết tới là một trong những thành phố sạch và đẹp nhất tại Việt Nam hiện nay. Chính vì vậy nơi đây là điểm đến thu hút nhiều khách du lịch tới thăm hàng năm. ', '2024-05-15', 1),
(32, 44, 35, 'Bạn biết Yên Tử có bao nhiêu bậc không?', '<p><i>Yên Tử có bao nhiêu bậc là thắc mắc của nhiều du khách khi muốn lựa chọn đi bộ leo núi lên chùa Đồng để chinh phục đỉnh núi và tỏ lòng thành kính với đức Phật.Yên Tử có bao nhiêu bậc là thắc mắc của nhiều du khách khi muốn lựa chọn đi bộ leo núi lên chùa Đồng để chinh phục đỉnh núi và tỏ lòng thành kính với đức Phật.Yên Tử có bao nhiêu bậc là thắc mắc của nhiều du khách khi muốn lựa chọn đi bộ leo núi lên chùa Đồng để chinh phục đỉnh núi và tỏ lòng thành kính với đức Phật.Yên Tử có bao nhiêu bậc là thắc mắc của nhiều du khách khi muốn lựa chọn đi bộ leo núi lên chùa Đồng để chinh phục đỉnh núi và tỏ lòng thành kính với đức Phật.Yên Tử có bao nhiêu bậc là thắc mắc của nhiều du khách khi muốn lựa chọn đi bộ leo núi lên chùa Đồng để chinh phục đỉnh núi và tỏ lòng thành kính với đức Phật.Yên Tử có bao nhiêu bậc là thắc mắc của nhiều du khách khi muốn lựa chọn đi bộ leo núi lên chùa Đồng để chinh phục đỉnh núi và tỏ lòng thành kính với đức Phật.</i></p>', 'diemden_5.jpg', 'Yên Tử có bao nhiêu bậc là thắc mắc của nhiều du khách khi muốn lựa chọn đi bộ leo núi lên chùa Đồng để chinh phục đỉnh núi và tỏ lòng thành kính với đức Phật.', '2024-05-15', 0),
(33, 45, 36, 'KINH NGHIỆM DU LỊCH CHÂU ÂU TỰ TÚC TRONG 12 NGÀY QUA 4 NƯỚC VỚI NHỮNG NGƯỜI BẠN MỚI QUEN', '<p>Ước mơ được đặt chân đến lục địa già đã được nó ấp ủ từ khi còn bé. Tưởng chừng đã từng có cơ hội được đến vùng đất mơ ước rồi nhưng đó vẫn chỉ giấc mơ. Và rồi để hiện thực hoá giấc mơ đó, nó đã lên hẳn 1 kế hoạch dài hơi để biến giấc mơ đó thành sự thực.Ước mơ được đặt chân đến lục địa già đã được nó ấp ủ từ khi còn bé. Tưởng chừng đã từng có cơ hội được đến vùng đất mơ ước rồi nhưng đó vẫn chỉ giấc mơ. Và rồi để hiện thực hoá giấc mơ đó, nó đã lên hẳn 1 kế hoạch dài hơi để biến giấc mơ đó thành sự thực.Ước mơ được đặt chân đến lục địa già đã được nó ấp ủ từ khi còn bé. Tưởng chừng đã từng có cơ hội được đến vùng đất mơ ước rồi nhưng đó vẫn chỉ giấc mơ. Và rồi để hiện thực hoá giấc mơ đó, nó đã lên hẳn 1 kế hoạch dài hơi để biến giấc mơ đó thành sự thực.</p>', 'kinhnghiem1.jpg', 'Ước mơ được đặt chân đến lục địa già đã được nó ấp ủ từ khi còn bé. Tưởng chừng đã từng có cơ hội được đến vùng đất mơ ước rồi nhưng đó vẫn chỉ giấc mơ. Và rồi để hiện thực hoá giấc mơ đó, nó đã lên hẳn 1 kế hoạch dài hơi để biến giấc mơ đó thành sự thực.', '2024-05-15', 28),
(34, 46, 36, 'Hành trình khám phá Côn Minh – Lệ Giang – Shangrila trong 9 ngày với 13 triệu đồng', '<p><i>Trung Quốc là một đất nước rất kỳ lạ, nhưng thú vị. Bỏ qua một vài hạn chế như ngôn ngữ, nhà vệ sinh (vâng chính là nhà vệ sinh), không dùng thẻ visa… thì đây là một nơi mà bạn có thể tìm thấy mọi mong muốn về một chuyến du lịch: Nền văn hoá lâu đời, cảnh sắc tuyệt đẹp, ẩm thực phong phú, nhiều công trình kiến trúc nguy nga đồ sộTrung Quốc là một đất nước rất kỳ lạ, nhưng thú vị. Bỏ qua một vài hạn chế như ngôn ngữ, nhà vệ sinh (vâng chính là nhà vệ sinh), không dùng thẻ visa… thì đây là một nơi mà bạn có thể tìm thấy mọi mong muốn về một chuyến du lịch: Nền văn hoá lâu đời, cảnh sắc tuyệt đẹp, ẩm thực phong phú, nhiều công trình kiến trúc nguy nga đồ sộTrung Quốc là một đất nước rất kỳ lạ, nhưng thú vị. Bỏ qua một vài hạn chế như ngôn ngữ, nhà vệ sinh (vâng chính là nhà vệ sinh), không dùng thẻ visa… thì đây là một nơi mà bạn có thể tìm thấy mọi mong muốn về một chuyến du lịch: Nền văn hoá lâu đời, cảnh sắc tuyệt đẹp, ẩm thực phong phú, nhiều công trình kiến trúc nguy nga đồ sộTrung Quốc là một đất nước rất kỳ lạ, nhưng thú vị. Bỏ qua một vài hạn chế như ngôn ngữ, nhà vệ sinh (vâng chính là nhà vệ sinh), không dùng thẻ visa… thì đây là một nơi mà bạn có thể tìm thấy mọi mong muốn về một chuyến du lịch: Nền văn hoá lâu đời, cảnh sắc tuyệt đẹp, ẩm thực phong phú, nhiều công trình kiến trúc nguy nga đồ sộ</i></p>', 'kinhnghiem2.jpg', 'Trung Quốc là một đất nước rất kỳ lạ, nhưng thú vị. Bỏ qua một vài hạn chế như ngôn ngữ, nhà vệ sinh (vâng chính là nhà vệ sinh), không dùng thẻ visa… thì đây là một nơi mà bạn có thể tìm thấy mọi mong muốn về một chuyến du lịch: Nền văn hoá lâu đời, cảnh', '2024-05-15', 0),
(35, 40, 36, 'Du lịch bụi Quy Nhơn 1 ngày nên đi đâu, làm gì để thưởng thực trọn vẹn vẻ đẹp Quy Nhơn', '<p><i>Với vẻ đẹp nguyên sơ của những bãi biển xanh ngắt, những bãi đá, những công trình kiến trúc cổ xưa, Quy Nhơn đang trở thành điểm đến vô cùng hấp dẫn đối với bất cứ ai đam mê dịch chuyển. Thế nhưng một chuyến du lịch 1 ngày ngắn ngủi thì phải làm gì để thưởng thức trọn vẹn vẻ đẹp thiên nhiên, văn hóa nơi đây?</i></p><p><br><i>Với vẻ đẹp nguyên sơ của những bãi biển xanh ngắt, những bãi đá, những công trình kiến trúc cổ xưa, Quy Nhơn đang trở thành điểm đến vô cùng hấp dẫn đối với bất cứ ai đam mê dịch chuyển. Thế nhưng một chuyến du lịch 1 ngày ngắn ngủi thì phải làm gì để thưởng thức trọn vẹn vẻ đẹp thiên nhiên, văn hóa nơi đây?</i></p><p><br><i>Với vẻ đẹp nguyên sơ của những bãi biển xanh ngắt, những bãi đá, những công trình kiến trúc cổ xưa, Quy Nhơn đang trở thành điểm đến vô cùng hấp dẫn đối với bất cứ ai đam mê dịch chuyển. Thế nhưng một chuyến du lịch 1 ngày ngắn ngủi thì phải làm gì để thưởng thức trọn vẹn vẻ đẹp thiên nhiên, văn hóa nơi đây?</i></p><p><br><i>Với vẻ đẹp nguyên sơ của những bãi biển xanh ngắt, những bãi đá, những công trình kiến trúc cổ xưa, Quy Nhơn đang trở thành điểm đến vô cùng hấp dẫn đối với bất cứ ai đam mê dịch chuyển. Thế nhưng một chuyến du lịch 1 ngày ngắn ngủi thì phải làm gì để thưởng thức trọn vẹn vẻ đẹp thiên nhiên, văn hóa nơi đây?</i></p><p><br>&nbsp;</p>', 'kinhnghiem3.jpg', 'Với vẻ đẹp nguyên sơ của những bãi biển xanh ngắt, những bãi đá, những công trình kiến trúc cổ xưa, Quy Nhơn đang trở thành điểm đến vô cùng hấp dẫn đối với bất cứ ai đam mê dịch chuyển. Thế nhưng một chuyến du lịch 1 ngày ngắn ngủi thì phải làm gì để thư', '2024-05-15', 0),
(36, 41, 36, 'Thông tin mới nhất, ở Đà Nẵng có Grab không', '<p>Grab là ứng dụng đặt xe đang ngày càng trở nên phổ biến tại Việt Nam, nhưng hiện nay chỉ mới một số thành phố lớn như Hà Nội, TP.HCM… Chính vì vậy, Đà Nẵng có hay chưa vẫn luôn được nhiều người quan tâm nhằm thuận tiện cho việc di chuyển của mình trong chuyến ghé thăm thành phố xinh đẹp này.</p><h2><strong>I. Ở Đà Nẵng có Grab không?</strong></h2><p>Bắt đầu từ 11/11, GrabCar sẽ chính thức có mặt tại thành phố Đà Nẵng và thật vui vì ngoài GrabTaxi, các bạn đã có thể đặt GrabCar thông qua ứng dụng Grab. Nhờ đó bạn sẽ thấy chuyến đi của mình thật thoải mái và dễ chịu.</p><p>Với ứng dụng GrabCar, việc đi lại trong thành phố của bạn sẽ càng trở nên dễ dàng hơn với cước phí biết trước và giá cố định trong suốt quãng đường.</p><p>Ngoài ra còn có một số phụ phí như: Phí cầu đường, phí sân bay, thay đổi lộ trình sẽ tính phụ thu 30.000 VNĐ/điểm dừng, trong phạm vi 5km và áp dụng tối đa cho 3 điểm dừng. Bên cạnh đó, với những thay đổi lộ trình xa hơn 5km, quý khách vui lòng đặt lại chuyến đi và quý khách hàng có thể nhìn thấy cước phí hiển thị trên ứng dụng sẽ chưa bao gồm các khoản khuyến mại/giảm giá.</p>', 'kinhnghiem4.jpg', 'Ở Đà Nẵng có Grab không là câu hỏi nhận được rất nhiều sự quan tâm của những du khách khi có ý định ghé thăm Đà Nẵng.', '2024-05-15', 0),
(37, 44, 36, 'Bạn cần biết đi Đà Nẵng tháng 12 có tắm biển được không', '<p>Nhưng bạn hãy thử một ghé thăm biển ở Đà Nẵng tháng 12 xem thế nào nhé, lúc này sẽ có một vẻ đẹp hoàn toàn khác của thành phố này. Nhưng liệu có nên đi Đà Nẵng tháng 12 có tắm biển được không?</p><h2><strong>I. Đi Đà Nẵng tháng 12 có tắm biển được không?</strong></h2><p>Thông thường, du khách sẽ đến Đà Nẵng biển du lịch vào mùa hè hoặc mùa thu, nhưng vào tháng 12 cũng là thời điểm đẹp để bạn có thể khám phá vô vàn điều mới lạ đấy. Lúc này, khí hậu Đà Nẵng vào gần tết nên hơi se lạnh nhưng vẫn có một số ngày có nắng. Chính vì vậy các bạn hoàn toàn có thể tắm biển được, chỉ cần vận động một lát cho nóng người là có thể xuống biển tắm, một lúc là sẽ ấm lên ngay. Tuy nhiên, cần lựa chọn những người không mưa và biển ít động để đảm bảo an toàn.</p>', 'kinhnghiem5.jpg', 'Đà Nẵng – một thành phố biển xinh đẹp, sôi động và tràn đầy sức sống mà bất kỳ ai cũng muốn ghé thăm một lần.', '2024-05-15', 0),
(38, 53, 37, '15 homestay giá chỉ từ 100k/ người ở thác Bản Giốc, Cao Bằng có view và không gian cực đẹp', '<p><strong>1. Primrose homestay Cao Bang</strong></p><ul><li>Địa chỉ: số nhà 18 Hồng Việt, phường Hợp Giang, thành phố Cao Bằng.</li><li>SĐT: 098.399.4869</li></ul><p>Primrose homestay Cao Bằng không mang dáng dấp của bất cứ khách sạn nào cả mà chỉ đúng nghĩa như một ngôi nhà dành cho những con người đi xa để trở về. Homestay tọa lạc ngay trung tâm thành phố Cao Bằng, lại ngay gần chợ nên rất thuận tiện cho việc đi lại, chỉ cần đi bộ là bạn đã có thể đi hết các địa chỉ cần đến ở thành phố Cao Bằng rồi. Homestay này không quá lớn, chỉ có 2 phòng riêng và 2 phòng giường tầng nên rất dễ rơi vào tình trạng cháy phòng. Giá phòng ở đây cũng khá dễ chịu, phòng riêng ở được 2 người giá 275k/phòng, nếu ở thêm 1 người thì kê thêm đệm và phụ phí là 100k. Còn phòng giường tầng thì có giá 120k/người.<br><strong>2. Yến Nhi homestay</strong></p><ul><li>Địa chỉ: thác Bản Giốc, Đàm Thủy, Trùng Khánh, tỉnh Cao Bằng</li><li>SĐT: 0942.241.760</li></ul><p>Homestay là một ngôi nhà sàn đá đặc trưng của người dân tộc Tày có kiến trúc độc đáo và kiên cố nhưng không kém đi phần mộc mạc, giản dị. Bên trong đã được anh chị chủ trang hoàng lại khá tiện nghi để phục vụ nhu cầu của du khách. Anh chị chủ đều là người dân tộc Tày, bạn sẽ có cơ hội được thưởng thức những món ăn đặc trưng của đồng bào dân tộc Tày do chính tay anh chị chủ nấu. Giá phòng ở đây cũng khá dễ chịu: 200k/phòng đơn, 100k/phòng dorm, 100k/người/bữa ăn. Ngoài ra, bạn có thể thuê xe máy ngay tại homestay để rong ruổi khám phá thác Bản Giốc và các địa danh khác của tỉnh Cao Bằng. Anh chị chủ còn dẫn khách đi những chuyến trekking khám phá bản làng dân tộc Tày, Nùng hay chèo thuyền kayak trên sông. Nếu bạn muốn ở gần thác Bản Giốc, động Ngườm Ngao thì homestay này là một lựa chọn hợp lý đấy.</p>', 'KS_1.jpg', 'Thác Bản Giốc, Cao Bằng với khung cảnh thiên nhiên hùng vĩ, đẹp tựa như tranh luôn luôn là điểm đến thu hút rất nhiều khách du lịch. Nếu muốn có một chuyến du lịch thác Bản Giốc vui vẻ và tiết kiệm, bạn nên chọn lưu trú tại 15 homestay giá chỉ từ 100k/ người có view và không gian cực đẹp dưới đây:', '2024-05-16', 37),
(39, 54, 37, 'Top 5 khách sạn có không gian sống ảo đẹp bậc nhất ở Sapa', '<p><strong>1. Victoria Sapa Resort &amp; Spa</strong></p><p>Đứng đầu trong top danh sách những địa chỉ nghỉ dưỡng hàng đầu tại Sa Pa đó chính là Victoria Sapa Resort &amp; Spa. Đây là khách sạn rất nổi tiếng tại Sa Pa vì có vị trí đắc địa ngay tại trung tâm thị trấn Sa Pa nên rất nổi bật và nhận được rất nhiều sự quan tâm của du khách. Tuy là tọa lạc tại trung tâm thị trấn nhưng diện tích khách sạn này lại rất rộng rãi, không gian thoáng đãng và view cực đẹp, xung quanh khách sạn là những thửa ruộng bậc thang đặc trưng của vùng núi rừng Tây Bắc mang lại cảm giác thư giãn và thoải mái vô cùng.</p>', 'KS_2.jpg', 'Đi du lịch Sapa, ngoài chiêm ngưỡng những cảnh đẹp hùng vỹ do thiên nhiên ban tặng thì sống ảo bên những khách sạn có view và decor đẹp chắc chắn sẽ khiến bạn cảm thấy chuyến đi của mình thêm trọn vẹn hơn.', '2024-05-15', 0),
(40, 56, 37, 'Ở khách sạn nào khi đi du lịch Quy Nhơn? - Gợi ý những khách sạn chất lượng tốt nhất Quy Nhơn', '<p>&nbsp;</p><p>Khách sạn này có vị trí vô cùng thuận lợi &nbsp;ngay sát với bờ biển Quy Nhơn, thực đơn đi kèm với giá phòng bao gồm cả bữa sáng và bữa tối tại khách sạn rất ngon và rất bắt mắt là điểm mà du khách rất thích ở khách sạn hạng sang này.Ngay tại khách sạn các dịch vụ như massage, sauna, phòng làm đẹp spa hay thể dục, tắm hơi đều được cung cấp rất tốt, phục vụ nhiệt tình và chất lượng miễn chê. Vì là khách sạn cao cấp nên Hải Âu có bể bơi trong nhà lẫn ngoài trời, bồn tắm nước nóng để phục vụ nhau cầu của khách lưu trú. Nếu gia đình bạn có con nhỏ thì cũng không cần phải đi đâu xa vì ngay tại khách sạn cũng có hồ bơi riêng rất an toàn dành cho trẻ nhỏ.</p>', 'KS_3.jpg', 'Khi du lịch Quy Nhơn bắt đầu nở rộ và thu hút khách du lịch mọi miền tổ quốc và bạn bè quốc tế thì số lượng khách sạn, nhà nghỉ ở Quy Nhơn cũng đang mọc lên như nấm sau mưa. Nếu bạn đang muốn tìm kiếm một khách sạn uy tín, chất lượng tốt thì đừng bỏ qua b', '2024-05-15', 0),
(41, 55, 38, 'Gợi ý 13 quán ăn và món ăn ngon ở Sapa cho bạn ních căng bụng, thách thức cái lạnh thấu xương', '<p>Nhiều người đi Sapa về thường nói đồ nướng ở Sapa đắt, nhưng thực ra không phải vậy. Mỗi xiên đồ nướng ở Yến Hoa có giá từ 10 – 30k, mỗi người ăn tầm 100 – 150k là bao no rồi. Các món nướng có thịt ba chỉ lợn, thịt bò cuốn lá lốt, gà ác, ếch, chả cá, xúc xích, thịt gà, sườn sụn, trứng, ngô, khoai, lòng lợn, rau củ quả... Nói chung là siêu đa dạng.</p><p>Một điểm cộng nữa ở quán này là được free chè tuyết san Sapa siêu ngon. Các bạn đi Sapa nhớ ghé quán này nhé!</p><p><strong>2. Mì vằn thắn quán Ông Há</strong></p><p>Mì vằn thắn ở quán Ông Há có nước dùng thanh và vị rất lạ, sủi cảo cũng siêu ngon, vỏ dai nếu ăn kèm mì vằn thắn, còn siêu giòn nếu ăn sủi cảo chiên.</p>', 'Z_anuong_1.jpg', 'Đi Sapa đã phải đi bộ nhiều lại luôn ở trong thời tiết lạnh giá nên rất nhanh đói nhé, vì thế hãy lưu lại ngay danh sách 13 quán ăn và món ăn ngon ở Sapa dưới đây để ních căng bụng mỗi khi cần, kẻo lúc đói lại phải đi tìm quán ăn thì mệt lắm đó nha!', '2024-05-15', 0),
(42, 51, 38, 'Đi du lịch Phú Quốc ăn gì vừa ngon vừa rẻ', '<p><strong>Nhum nướng</strong></p><p>&nbsp;</p><p>Nhum nướng là món ăn khá phổ biến tại Phú Quốc. Món ăn này cũng tương đối dễ dàng khi bạn chỉ cần cắt đôi con nhum, sau đó nướng quanh lửa hồng. Với nhiệt độ của bếp hồng, nhum sẽ nhanh chóng tỏa mùi, nên bạn chỉ cần nướng sơ, sau đó dùng muỗng nạo phần thịt chấm muối tiêu chanh. Với vị béo và thơm, nhum nướng chắc chắn sẽ giúp bạn quên đi nỗi băn khoăn du lịch Phú Quốc ăn gì.</p>', 'Z_anuong_2.jpg', 'Phú Quốc là địa điểm thu hút nhiều khách du lịch trong và ngoài nước tới thăm. Không chỉ được biết tới là hòn đảo xinh đẹp, nơi đây còn là thiên đường tuyệt vời của những món ăn. Vậy đi du lịch Phú Quốc ăn gì vừa ngon vừa rẻ? Bài viết này sẽ gợi ý giúp bạ', '2024-05-15', 40),
(43, 40, 38, 'Cẩm nang du lịch Hà Nội: Ăn gì mùa gió về?', '<p><strong>2. Bánh trôi tàu phố Hàng Bạc</strong></p><p>Nếu bạn còn lăn tăn du lịch Hà Nội nên ăn gì thì đừng bỏ qua món bánh trôi tàu trong tiết trời se lạnh đầu đông này nhé. Bánh trôi tàu cô Dung trên phố Hàng Bạc là một trong những địa chỉ không thể chối từ. Được biết, cô Dung trước đây là giáo viên, với đam mê và tâm huyết muốn lưu giữ món bánh trôi tàu, sau khi nghỉ hưu, cô đã mở quán ăn nhỏ này và duy trì cho đến tận bây giờ. Trải qua nhiều năm, bánh trôi tàu cô Dung thực sự đã chinh phục được khẩu vị của người Hà thành, trở thành món ngon được nhiều du khách yêu thích.</p>', 'Z_anuong_3.jpg', 'Mang trong mình vẻ đẹp trầm mặc, cổ kính, Hà Nội với những nếp nhà cổ, mái rêu phong, những biệt thự ven hồ mang lối kiến trúc Pháp kiêu sa làm say lòng biết bao du khách. Dạo qua những con phố cổ của Hà thành, bạn không chỉ có cơ hội trải nghiệm những né', '2024-05-15', 1),
(44, 48, 38, 'Dạo một vòng khám phá thiên đường ăn đêm Hà Nội', '<p>Quán nằm gọn trên góc phố, khách đến ăn chỉ ngồi trên ghế con và dùng một chiếc ghế cao hơn làm bàn, mặc dù không gian có phần hạn chế là vậy, nhưng thực khách vẫn xếp hàng nườm nượp đợi lượt. Cũng là một trong những quán ăn bình dân có thâm niên, bún riêu Hồng Phúc đã có 20 năm là địa chỉ quen thuộc của người dân Hà Nội. Trải qua nhiều biến cố, những quán vẫn giữ nét truyền thống riêng trong chế biến, đem đến một hương vị bún riêu đặc biệt, khó có thể nhầm lẫn.</p><p><br>&nbsp;</p>', 'Z_anuong_4.jpg', 'Hà Nội về đêm không chỉ chìm đắm trong ánh điện muôn màu với nhiều hoạt động văn hóa, giải trí, mà còn hấp dẫn bởi ẩm thực đêm với muôn vàn món ăn độc đáo. Khám phá thiên đường ăn đêm Hà Nội chắc chắn sẽ đem đến cho du khách những trải nghiệm không thể nà', '2024-05-15', 0),
(45, 54, 38, 'Ô mai Hà Nội - Đặc sản đậm tình người Hà thành', '<p><strong>I. Ô mai Hồng Lam</strong></p><p>Ô mai Hồng Lam là một trong những thương hiệu ô mai nổi tiếng nhất Hà thành. Dọc theo các con phố của Hà Nội, bạn sẽ không ít lần bắt gặp các quầy hàng ô mai Hồng Lam với sắc cam đặc trưng. Sản phẩm của thương hiệu này không chỉ trở thành món quà sang trọng, mang đậm bản sắc văn hóa Hà thành, được sử dụng trong các dịp lễ, Tết quan trọng, mà còn được xuất khẩu ra nhiều nước trên thế giới.</p><p>Với 21 năm xây dựng và phát triển, ô mai Hồng Lam thực sự đã trở thành một phần không thể thiếu đối với những ai yêu văn hóa và ẩm thực truyền thống Hà Nội. Để bắt nhịp với xu hướng phát triển và nhu cầu ngày càng đa dạng của người tiêu dùng, bên cạnh các vị ô mai Hà Nội xưa, Hồng Lam còn cho ra đời nhiều dòng sản phẩm mang hương vị mới lạ, phù hợp với thị hiếu của giới trẻ.</p>', 'Z_anuong_5.jpg', 'Hà Nội với muôn vàn món ngon vật lạ làm say lòng biết bao du khách từng ghé chân qua. Trong đó phải kể đến ô mai Hà Nội, không chỉ là món quà vặt ưa thích mà còn trở thành món đặc sản đậm tình người Hà Thành. Ô mai Hà Nội loại nào ngon và mua ô mai ở đâu ', '2024-05-15', 0),
(46, 50, 39, 'Kinh nghiệm du lịch Lào bằng máy bay từ Hà Nội', '<p><strong>1. Giới thiệu đất nước Lào</strong></p><p>Lào là đất nước có biên giới phía Đông giáp ranh hoàn toàn với nước ta và có phong cảnh thiên nhiên còn khá hoang sơ. Đất nước Lào chỉ có hơn 7 triệu dân trên phần diện tích lên tới 230612 km2 nên dân cư ở đây khá thưa thớt, chỉ tập trung ở thủ đô Viêng Chăn (hơn 5 triệu người).</p><p>Đất nước Lào có 3 thành phố nổi tiếng nhất là Viêng Chăn, Luong Prabang và Vang Viêng. Đặc sản của Lào là các “ngôi chùa” (tổng số chùa trên đất nước Lào là khoảng 7000 ngôi chùa, tính ra cứ 1000 dân lại có một ngôi chùa).</p><p>Người dân Lào sống rất chậm rãi và thoải mái. Họ thường chỉ làm đủ ăn sau đó đi chùa chiền trong suốt thời gian còn lại. Đặc biệt người Lào rất quý khách du lịch Việt Nam nên nhiều người Việt Nam thường thích đi du lịch Lào mỗi khi có dịp.</p><p><strong>2. Thời điểm thích hợp để đi du lịch Lào</strong></p><p>Thời gian đi Lào đẹp nhất là tháng 4. Tết Lào té nước. Hoặc thời gian khác trừ tháng 7-10 do mùa mưa và trời nắng nóng.</p><p><strong>3. Kinh nghiệm du lịch Lào</strong></p><p><strong>Thủ đô Vientiane</strong></p><p>- Hàng ngày có 2 chuyến bay 9h40 sáng và 16h40 từ Hà Nội qua Vientiane, và 1 chuyến 15h30 từ SG (transit Cam). Giá vé khứ hồi rẻ nhất là 220 USD. Các anh chị từ HN có thể lựa chọn bay: Hà Nội – Vientiane, Vientiane đi Vang Viêng = bus, Vang Viêng – Luang = bus, và bay Luang – Hà Nội. Chi phí khoảng 220 USD + vé bus (khoảng 200.000-400.000 LAK ~ 500.000 VND – 1tr VND).</p><p>- Nếu đi ô tô từ HN thì xe xuất phát 6h ở bến xe nước ngầm, các nhà xe Hoàng Giang (3,5,7), Sơn Huế ... giá vé 500.000 VND. Xe giường nằm, đến cửa khẩu Cầu Treo (Hà Tĩnh) ngủ lại và 7 giờ sáng hôm sau sẽ làm thủ tục nhập cảnh. Xe đến Vientiane 5h chiều. Chọn tuk tuk hoặc taxi để về trung tâm phố Tây tại Vientiane. Giá taxi 50.000 KIP ~ 130.000 VND. Nếu đi tuk tuk thì giá là 20.000 KIP ~ 56.000 VND.</p><p>- Phương tiện đi lại ở Lào chủ yếu tuk tuk, taxi khá hiếm, chỉ có taxi từ sân bay về trung tâm. Từ sân bay anh chị có thể đi bus,taxi, tuk tuk về khách sạn. Giá taxi niêm yết: 60.000 KIP – 70.000 KIP ~ 160.000 – 180.000 VND, bus: 10.000 KIP ~ 26.000 VND, tuk tuk: 30.000 KIP ~ 80.000 VND. Tuk tuk các anh chị nên trả giá vì họ cũng đòi thách. Giảm khoảng 30% là hợp lí.</p><p>- Tùy vào nhu cầu của các anh chị để book ks, tuy nhiên có một khách sạn em đã ở giá rất hợp lí, phòng ốc sạch sẽ, gần khu phố Tây: Vientiane Boutique Villa, giá phòng 20-50USD, phòng đôi hoặc phòng Family, có bể bơi, chủ khách sạn người Việt, bên cạnh khách sạn có quán ăn Vĩnh Xuân của người Việt, đồ ăn ngon giá cả hợp lí. Người Việt tại Lào hay ghé quán để ăn. Có suất hoặc gọi món, cơm suất khoảng: 25.000 KIP ~ 65.000 VND hoặc theo món giá khoảng: 50.000 KIP~ 130.000 VND Khách sạn trên phố Tây 20-30 USD thường là ks bình thường, phòng nhỏ và bí. Các khách sạn đẹp giá khoảng 50-100 USD.</p><p>- Các điểm tham quan tại Vientiane: Patuxay, Thatluang, Chùa Mẹ: Wat Si Muang, Chùa Cổ. Các điểm này rất gần nhau, nên di chuyển bằng tuk tuk khoảng 50.000 KIP/1 người tất cả các điểm. Ngoài ra còn có Vườn Tượng Phật (cách Vientiane 30km). Các điểm ở Vientiane rất gần nhau. Nếu ở ks Vientiane Boutique Villa thì đi bộ khoảng 700m là đến Patuxay, từ Patuxay đi Thatluang 1 km. Tuk tuk 20.000 KIP. Từ Thatluang đi chùa Wat Si Muang và chùa cổ khoảng 2-3 km nếu đi tuk tuk sẽ khoảng 20.000 KIP - 30.000 KIP. Phố Tây và sông Me Kong đi bộ từ Chùa Cổ hoặc Ks lên khoảng 700-1km</p><p>- Một số nhà hàng tại Vientiane: Tummor (bờ sông Mekong, bên kia là ThaiLand, được đánh giá rất tốt trên các trang du lịch, bản thân em thì cũng ngồi nhiều quán, nhưng chỉ có Tummor là em thấy đồ ăn ngon, giá cả hợp lí. Một số món ngon: Lạp Vịt, Gà nướng, Tom Yum, Bò Lào, Cá hấp, Bò khô Lào… Ngoài ra có Kong View, Khop Chai De, Hang Out (có món xôi xoài) … đều là những nhà hàng chuyên về đồ ăn của Lào. Giá cả từ 20.000 KIP – 80.000 KIP/ món. Hoặc có thể lang thang phố Tây ăn đồ nướng, kèm xôi cũng rất okie.</p><p>- Một số quán ăn ngon cho các anh chị thích đi phượt: Quán vịt nướng ở Naxay, Gà nướng Nampong, Tamthad.</p><p>- Nếu các anh chị muốn trải nghiệm Vientiane thì bay chuyến 9h40 sáng, ngủ ở Vientiane 1 đêm sáng mai lên đường đi Vang Viêng.</p><p>Wat Sisaket là ngôi chùa cổ nhất ở Viêng Chăn, được vua Phothisararat xây dựng lần đầu vào năm 1551 sau đó được vua Anouvong xây dựng lại vào năm 1818. Thiết kế của chùa chịu ảnh hưởng của kiến trúc Thái Lan với phần mái 5 tầng tạo nên sự khác biệt với các đền thờ khác của Lào. Bên cạnh đó, ngôi chùa này còn được coi là một bảo tàng với hơn 6.800 tượng Phật và hàng nghìn cuốn sách. Du khách đến thăm Wat Sisaket cần lưu ý mặc quần áo kín đáo và để dép bên ngoài trước khi bước vào chùa.</p><p>Khu bảo tồn thiên nhiên Bokeo cũng là một trong những địa điểm du lịch Lào nổi tiếng. Nó được tạo ra để bảo vệ dân cư của vượn đen má đen, được phát hiện lại năm 1997, trước đây đã từng bị tuyệt chủng. Chuyến tham quan khu bảo tồn thiên nhiên Bokeo sẽ không hoàn chỉnh nếu du khách không có thời gian lưu trú lại đây để trải nghiệm Gibbon, một dự án bảo tồn du lịch sinh thái.</p><p>Du khách ở lại trong những ngôi nhà cây và đi du lịch bằng đường dây kéo băng qua rừng để tìm kiếm Black Gibbon. Bên cạnh vượn đen nhún nhường, khách du lịch Lào đến khu bảo tồn cũng có thể nhìn thấy con voi, gấu, hổ và trâu hoang dã. Kinh nghiệm Gibbon cũng làm việc để phục hồi và trở lại với các động vật hoang dã bị bắt bởi những kẻ săn trộm. Với những dãy núi rộng từ 1.600 đến gần cao hơn 5.000 feet, khu bảo tồn này cũng là nơi tốt để xem chim.</p><p><strong>Vang Viêng</strong></p><p>- Vang Viêng cách thủ đô Vientiane 150 km, đi bus từ bến xe (phía sau chợ Sáng) giá vé: 50.000 KIP ~ 130.000 VND, thời gian di chuyển khoảng 4 tiếng. Vang Viêng có rất nhiều các hoạt động như: Nằm phao trả trôi sông, chèo thuyền Kayak, leo núi, trượt Zipline, thuê xe buggy đi khám phá, tắm hồ blue lagoon, nhảy từ trên cây xuống hồ (hồ ở đây rất mát và trong). Tất cả đều có thể mua tại bất cứ điểm bán nào tại Vang Viêng theo gói: 220.000 KIP ~ 600.000 VND. Ngoài ra có cả trò lên kinh khí cầu ngắm Vang Viêng tuy nhiên giá khoảng 100 USD nên em chưa tham gia </p><p>- Khách sạn ở Vang Viêng có khá nhiều khách sạn giá cả hợp lí, tuy nhiên một số khách sạn đẹp có thể hết phòng do lượng khách Hàn, khách Tây đến Vang Viêng khá đông vào các dịp: Noel, Tết dương lịch, Tháng 4 (tết Lào)…</p><p>- Một số khách sạn đẹp: 50-100 USD: Inthira Vang Viêng (50 USD/1 đêm) view sông Nam Song, Vang Vieng Tara Villa (khách sạn này có các đồng lúa xanh chụp hình đẹp), Sanctuary Nam Ngum Beach Resort… Một số khách sạn 2* thì giá khoảng 20-30 USD</p><p>- Chợ đêm ở Vang Viêng buổi tối có bán nhiều đồ dạng thổ cẩm Lào hoặc TQ, có một số đồ ăn vặt như : bánh dừa, đồ nướng Lào.</p><p>- Để khám phá hết Vang Viêng thì nên ở khoảng 2 đêm. Trải nghiệm hết các trò chơi tại đây.</p><p><strong>Luang Prabang</strong></p><p>- Từ Vang Viêng, các anh chị có thể mua vé bus để đi Luang Prabang, Luang các Vang Viêng khoảng 150 km, tuy nhiên đường khá ngoằn nghèo. Thời gian di chuyển 4-5 tiếng, hoặc đi thẳng từ Vientiane – Luang bằng máy bay, giá vé: 1.200.000 KIP ~ 3.120.000 VND. Nếu anh chị nào chọn đi Luang bằng máy bay và về HN luôn, thì book vé bay thẳng chiều về Luang – HN.</p><p>- Luang Prabang là cố đô cũ của Lào, có rất nhiều nhà cổ, rộng hơn phố cổ Hội An rất nhiều, khu phố cổ được bao quanh bởi dòng sông Mê Kong. Các anh chị có thể đi bộ hoặc thuê xe đạp đạp vòng quanh phố cổ cũng hết cả ngày được.</p><p><strong>Các điểm tham quan và hoạt động ở Luang:</strong></p><p>- Khất thực: Các nhà sư sẽ đi khất thực thời gian từ 5h30-6h30. Các anh chị có thể chuẩn bị đồ mua sẵn tại các siêu thị như: bánh trái, nước, sữa, một chút tiền lẻ. Hiện tại có một số hàng quán bán xôi và ghế ngồi đợi các nhà sư đi qua. Tuy nhiên do ai cũng cúng xôi nên các nhà sư thường không thể ăn hết. Nên cúng dường các đồ mình chuẩn bị thì tốt hơn.</p><p>- Chùa Wat Xiêng Thong: Đây là một ngôi chùa cổ ở Luang, được xây dựng từ năm 1559-1560 với kiến trúc mái vòm cong.</p><p>- Phousi: Núi Phousi nằm trong khu vực phố cổ, leo lên đỉnh núi có thể ngắm toàn cảnh Luang Prabang. Núi cao và phải leo khoảng 330 bậc. Các anh chị nên leo lúc sáng sớm để ngắm bình minh hoặc chiều muộn để ngắm hoàng hôn.</p><p>- Bảo tàng cung điện Hoàng Gia: Bảo tàng nằm đối diện với núi Phousi, trong bảo tàng có hoạt động múa hát của Lào, thời gian từ 6h tối – 7h tối. Giá vé 50.000 LAK ~ 130.000 LAK. Họ múa rất đẹp và đóng rất hay dù em k hiểu gì . Nhưng em vẫn thích.</p><p>- Thác Kuangsi: Thác các trung tâm khoảng 30 km, các anh chị có thể thuê xe máy chạy xuống thác hoặc thuê xe tại ks hoặc đi tuk tuk. Thác buổi sáng thường vắng, khách Tây họ thường đi cả ngày, tắm luôn tại thác, nước rất trong và mát. Ngoài ra có rất nhiều cá nhỏ khi tắm hoặc lội suối sẽ rỉa rỉa như massage rất thú vị. Xe tuk tuk em thấy báo giá 200.000 KIP, em thuê xe mini van giá 300.000 KIP đưa đi đón về thoải mái.</p><p>- Một số địa điểm khác: Khu bảo tồn Voi, vườn Bươm Bướm gần thác nên kết hợp đi cùng.</p><p>Ngôi làng mộc mạc Nong Kiau</p><p>Nong Kiau, đôi khi được gọi Nong Khiaw là địa điểm du lịch Lào nổi tiếng ở tỉnh Luang Prabang, vì có nhiều cơ hội đi bộ, leo núi và đi xe đạp. Một điểm đáng xem là cầu qua sông Nam Ôu được xây dựng bởi Trung Quốc. Cây cầu kết nối hai phần của Nong Kiau, và là một nơi tốt để xem cảnh quan tuyệt đẹp của sông và núi.</p><p>Nong Kiau là một ngôi làng mộc mạc, vì vậy du khách không nên mong đợi tìm thấy một chuyến du lịch sang chảnh ở đây. Những du khách du lịch Lào bụi có thể thích khám phá những hang động Pha Thams nằm cách thành phố khoảng 1 dặm. Các hang động nằm trong làng trong Chiến tranh Đông Dương thứ hai với những tàn tích để lại cho đến nay.</p><p>- Khách sạn ở Luang: Em đi Luang 2 lần, 1 lần ở khách sạn Hong Vi Lay gần trung tâm giá 50 USD (có ăn sáng), lần 2 em ở Sanctuary giá 70 USD và em rất ưng. Tuy nhiên nếu các anh chị có kế hoạch đi sớm nên book 1 số guest house view sông Mê Kong, sáng dậy ngồi uống</p>', 'review_1.jpg', 'Người dân Lào sống rất chậm rãi và thoải mái. Họ thường chỉ làm đủ ăn sau đó đi chùa chiền trong suốt thời gian còn lại. Đặc biệt người Lào rất quý khách du lịch Việt Nam nên nhiều người Việt Nam thường thích đi du lịch Lào mỗi khi có dịp.', '2024-05-15', 0),
(47, 56, 39, 'Cattour lừa đảo? Hãy ĐỌC NGAY bài viết này!', '<p>Khi khách hàng đã thanh toán tiền đặt cọc tour, sẽ luôn có các bạn chăm sóc khách hàng liên lạc và thông báo, nhắc nhở ngày giờ khởi hành và những vật dụng cần chuẩn bị đi tour cho trưởng đoàn cách ngày khởi hành khoảng 1 tuần và 3 ngày.</p><p>Trong quá trình đi tour, mọi vấn đề phát sinh sẽ được bạn phụ trách tour và hướng dẫn viên của Cattour giải quyết trong vòng 1h (đối với những phát sinh lớn). Còn nếu khách hàng phàn nàn hoặc không vừa ý về chất lượng chuyến đi, Cattour sẽ luôn có hình thức hỗ trợ và cải thiện nhanh chóng nhất. Dù khách hàng có gọi điện vào lúc nửa đêm thì Cattour vẫn luôn có người túc trực và hỗ trợ.</p><p>Với quy trình làm việc rõ ràng như trên nên hầu hết các tour du lịch, cả tour trong nước và nước ngoài do Cattour thực hiện đều thành công tốt đẹp và được nhiều khách hàng khen ngợi. Vì thế sẽ không bao giờ có chuyện Cattour lừa đảo khách hàng.</p>', 'review_2.jpg', 'Với nhu cầu đi du lịch ngày càng cao của người dân Việt Nam, việc càng ngày càng nhiều các công ty lữ hành du lịch ra đời nhằm phục vụ nhu cầu này là vô cùng hợp lý và thuận theo tự nhiên. Tuy nhiên, đại đa số du khách Việt Nam đi du lịch theo tour thường', '2024-05-15', 21),
(48, 56, 39, 'Địa điểm du lịch Tết 2024 ở trong và ngoài nước đẹp và đông vui hết nấc', '<p><strong>I. Địa điểm du lịch Tết Nguyên Đán ở trong nước</strong></p><p><strong>1. Địa điểm du lịch Tết âm ở miền Bắc</strong></p><p><strong>+ Sapa</strong></p><p>Sapa là một địa điểm được rất nhiều người lựa chọn để đi chơi vào dịp Tết Nguyên Đán. Ngoài có không khí se lạnh và cảnh quan xinh đẹp, Sapa còn có rất nhiều thứ đặc sắc chỉ có vào dịp Tết mà chắc chắn bạn không thể tìm thấy ở nơi nào khác.</p><p>Nếu đi Sapa vào dịp Tết, bạn sẽ được chứng kiến một không khí Tết mang đậm chất cổ truyền. Vào ngày Tết, đi đâu bạn cũng được chào đón nhiệt tình. Dưới làn khói mờ mờ, thơm dịu của lớp khói tỏa ra từ những căn nhà sàn là những chiếc bánh chưng đen còn nóng hổi, những nắm xôi ngũ sắc đã bắt đầu chín mềm chuẩn bị được dọn lên đĩa, và cạnh đó là ánh mắt có phần “thèm thuồng” của những em bé người Mông, người Tày... đang chờ mẹ thắp hương xong để được thưởng thức thứ đặc sản mà gần như chỉ có vào dịp Tết chúng mới có cơ hội được ăn.</p>', 'review_3.jpg', 'Tết Nguyên Đán 2024 đã đến rất gần rồi, giờ là lúc bắt đầu lên kế hoạch du lịch Tết cho cả gia đình. Với những địa điểm du lịch Tết ở trong và ngoài nước đẹp và đông vui hết nấc dưới đây, đảm bảo gia đình bạn sẽ có một mùa Tết đoàn viên và trọn vẹn hơn ba', '2024-05-15', 0),
(49, 47, 39, '23 địa điểm du lịch ở Mộc Châu với cảnh sắc đẹp “mười phân vẹn mười”', '<p>Dù đến Ngũ động Bản Ôn vào mùa nào chăng nữa thì khách du lịch cũng có thể tận hưởng vẻ đẹp rực rỡ của muôn loài hoa. Hoa dã quỳ vàng rực, hoa trạng nguyên thắm đỏ và choáng ngợp trong đồi hoa cải trắng chạy dài mê mải hay co ro trong cái giá rét khi mùa đông về để đắm mình trong những rừng hoa mai, hoa mận nở trắng rừng.</p><p><strong>3. Thác Dải Yếm</strong></p><p>Thác Dải Yếm các tên gọi khác là \"thác Nàng\", \"thác Bản Vặt\" nằm tại xã Mường Sang, huyện Mộc Châu, tỉnh Sơn La. Sở dĩ thác mang tên là Dải Yếm vì theo truyền thuyết, thác là dải yếm của người con gái cứu chàng trai thoát khỏi dòng nước lũ.</p><p>Thác Dải Yếm khởi nguồn từ 2 khe nước Bó Co Lắm và Bo Tá Cháu, chảy từ hang đá ở địa đầu bản Vặt (nơi có lịch sử lâu đời nhất ở vùng đất này khi tộc người Thái đến định cư ở đây). Nước từ nguồn trong núi chảy ra tạo thành suối Vặt khoảng 5 km thì hòa vào dòng chảy của suối Bó Sập giáp biên giới Việt Lào chảy về đất Yên Châu tạo thành thác nước hùng vĩ.</p>', 'review_4.jpg', 'Mộc Châu là một huyện thuộc tỉnh Sơn La, nơi có cảnh sắc thiên nhiên tươi đẹp và không khí ôn hòa nên quanh năm luôn thu hút một lượng lớn khách du lịch tìm về nơi đây.', '2024-05-15', 0),
(50, 40, 39, 'Những điều thú vị khi đi du lịch Nhật Bản mùa hoa Tử Đằng', '<p>Loài hoa này có 3 màu sắc chủ đạo là tím, hồng và trắng với mùi hương thơm nhẹ nhàng, thanh khiết tạo ra sự tươi mát cho người thưởng ngoạn khi đứng dưới giàn hoa xinh đẹp này.</p><p>Ngoài ra, các bộ phận của hoa Tử Đằng như vỏ cây, hoa, lá đều có thể dùng làm thuốc chữa bệnh và làm thức ăn. Quan trọng hơn, loài cây này còn thể hiện giá trị về văn hoá và môi trường vô cùng sâu sắc với xứ sở Phù Tang.</p><p><strong>2. Thăm quan những hầm hoa tử đằng huyền ảo nhất thế giới</strong></p><p>Dù là loài hoa mọc nhiều ở Nhật Bản nhưng điều khiến du khách thích thú và ấn tượng khi tới đây là đường hầm hoa Tử Đằng tại công viên Ashikaga, Kawachi. Đến đây vào mùa hoa nở rộ không đơn thuần là ngắm hoa mà du khách còn được trải nghiệm những khoảnh khắc đẹp mê hồn. Với hàng nghìn chùm nở rộ, đan xen vào nhau, hầm hoa Tử Đằng ở đây tạo nên một đường hầm hoa kỳ ảo muôn màu. Đặc biệt hơn, từng chùm hoa rủ xuống mong manh, nhẹ nhàng giống như rèm hoa khiến con đường trở nên lãng mạn và huyền ảo hơn bao giờ hết.</p>', 'review_5.jpg', 'Không chỉ nổi tiếng với sắc hoa anh đào, đến với Nhật Bản người ta còn say lòng bởi loài hoa tử đằng xinh đẹp. Do đó, vào những dịp hoa Tử Đằng nở thu hút rất nhiều du khách tới đây để thăm thú và chiêm ngưỡng. Vậy du lịch Nhật Bản mùa hoa Tử Đằng có gì t', '2024-05-15', 0),
(53, 41, 35, 'Những địa điểm du lịch thú vị ở quận 1 Đà Nẵng không nên bỏ qua', '<p>Cũng như các tỉnh thành khác khi được hỏi Đà Nẵng có bao nhiêu quận thì câu trả lời là rất nhiều. Trong đó, quận 1 Đà Nẵng, quận 2 Đà Nẵng, Đà Nẵng quận 3 là những địa danh cũ và hiện nay đã được gộp vào thành phố Đà Nẵng (thị xã Đà Nẵng trước đây). Vì vậy, quận 3 Đà Nẵng là quận nào thì đây là một quận nằm ngay lòng đô thị Đà Nẵng và gắn kết quận 3 – Sơn Trà – Ngũ Hành Sơn – Một khu nghỉ dưỡng bậc nhất Việt Nam ngày nay. Thay cho một vùng quê nghèo thì ngày nay quận 3 Đà Nẵng đã có bước chuyển mình với nhiều điểm du lịch nổi tiếng được nhiều người biết đến và muốn ghé thăm một lần.</p><h2><strong>Những điểm du lịch ở quận 1 Đà Nẵng vô cùng thú vị</strong></h2><p><strong>Cầu sông Hàn - Điểm đến cuốn hút nhất Đà Nẵng</strong></p><p><i><img src=\"https://reviewdulich.com.vn/images/upload/images/da-nang/nhung-diem-den-thu-vi-o-quan-1-da-nang-khong-nen-bo-qua/causonghan.png\" alt=\"\" width=\"750\" height=\"562\"></i><br><i>Cầu sông hàn là điểm đến hấp dẫn ở Quận 1 Đà Nẵng</i></p><p>&nbsp;</p><p>Đến Đà Nẵng không thể không ghé thăm cầu sông Hàn được xây dựng trên đường đường Bạch Đằng, nối giữa quận Hải Châu và Sơn Trà. Cây cầu là niệm tự hào của người dân Đà Nẵng được khánh thành vào ngày 29 tháng 3 năm 2000. Khi màn đêm buông xuống cây cầu với vẻ đẹp lung linh giữa thành phố náo nhiệt. Đặc biệt hơn, cứ vào 0h30 mỗi đêm cây cầu quay 90 độ quanh trục cho những con tàu lớn đi qua và đóng lại lúc 3h30. Đây là điều hấp dẫn nhất khi nói về cây cầu này mà không bất kỳ cây cầu nào ở Việt Nam có được hiện nay. Du lịch Đà Nẵng với những lần dạo bước trên cầu sông Hàn bạn sẽ cảm nhận được vẻ đẹp của cây cầu cũng như không khí yên bình nhất của thành phố.</p><p><strong>Ngũ Hành Sơn</strong></p><p><i><img src=\"https://reviewdulich.com.vn/images/upload/images/da-nang/nhung-diem-den-thu-vi-o-quan-1-da-nang-khong-nen-bo-qua/nguhanhson.png\" alt=\"\" width=\"750\" height=\"938\"></i></p><p><i>Đến Đà Nẵng du lịch bạn không nên bỏ qua Ngũ Hành Sơn</i></p><p>&nbsp;</p><p>Ngũ Hành Sơn cách trung tâm thành phố Đà Nẵng khoảng 7km, nơi đây gồm có núi đá Kim Sơn, Mộc Sơn, Thủy Sơn, Hỏa Sơn và Thổ Sơn tạo thành quần thể Ngũ Hành Sơn nổi tiếng. Du lịch nơi đây du khách sẽ được ghé thăm động Huyền Không, Vân Không, Vân Nguyệt và chùa Tham Thai, cùng với đó là những cảnh giới của cõi âm như: ngục A Tỳ hay suối Giải Oan… Không những vậy, tới Ngũ Hành Sơn bạn còn có cơ hội ghé thăm làng đá mỹ nghệ Non Nước dưới chân núi nổi tiếng với nghề điêu khắc đá.</p><p><strong>Bán đảo Sơn Trà</strong></p><p><i><img src=\"https://reviewdulich.com.vn/images/upload/images/da-nang/nhung-diem-den-thu-vi-o-quan-1-da-nang-khong-nen-bo-qua/bandaosontra.png\" alt=\"\" width=\"750\" height=\"723\"></i></p><p><i>Bán đảo Sơn Trà - hòn ngọc quý của Đà Nẵng</i></p><p>Cách thành phố Đà Nẵng 10km về hướng đông bắc, bán đảo Sơn Trà được coi là viên ngọc quý của Đà Nẵng và thu hút rất nhiều khách du lịch mỗi năm. Tới đây bạn sẽ được trải nghiệm những giây phút thú vị theo dòng cảm xúc từ lên rừng xuống biển. Đặc biệt, quanh bán đảo Sơn Trà có những bãi biển tuyệt đẹp như: bãi Đa, bãi Nam, bãi Bắc, bãi Con, Đá Đen, bãi Rạng, bãi Bụt… mà bạn có thể khám phá, ngắm nhìn và chụp hình làm kỷ niệm.</p><p><strong>Bãi biển Mỹ Khê</strong></p><p><strong><img src=\"https://reviewdulich.com.vn/images/upload/images/da-nang/nhung-diem-den-thu-vi-o-quan-1-da-nang-khong-nen-bo-qua/mykhe.png\" alt=\"\" width=\"750\" height=\"750\"></strong></p><p><i>Bãi biển Mỹ Khê được bình trọng là một trong 6 bãi biển đẹp nhất hành tinh</i></p><p>&nbsp;</p><p>Nhắc đến biển Mỹ Khê người ta sẽ nghĩ ngay tới Đà Nẵng, đây là một ưu ái lớn được thiên nhiên ban tặng cho Đà Nẵng. Vì lẽ đó, bãi biển Mỹ Khê được bình chọn là một trong 6 bãi biển quyến rũ nhất hành tinh.</p><p>Với chiều dài 900m, bãi biển Mỹ Khê nổi tiếng với cát trắng mịn cũng sóng biển ôn hòa và hàng dừa tạo nên khung cảnh tuyệt vời. Nhờ đó đã tạo điều kiện thuận lợi cho việc chơi các môn thể thao. Đồng thời, xung quanh bãi biển Mỹ Khê cũng có rất nhiều khu nghỉ dưỡng hạng sang và những nhà hàng hải sản ngon nổi tiếng.</p><p><i><strong><img src=\"https://reviewdulich.com.vn/images/upload/images/da-nang/nhung-diem-den-thu-vi-o-quan-1-da-nang-khong-nen-bo-qua/nonnuoc.png\" alt=\"\" width=\"1080\" height=\"734\"></strong></i></p><p><i>Bãi tắm non nước tuyệt đẹp</i></p><p>Đây là bãi tắm có hình dáng giống như một chiếc bát bao tròn ôm lấy chân núi Ngũ Hành Sơn, từ đó tạo nên khung cảnh tuyệt đẹp. Không những thế, nước biển ở đây rất sạch và trong thích hợp với việc nghỉ ngơi, dã ngoại hay cắm trại. Đồng thời, vui chơi các môn thể thao và thưởng thức hải sản tươi ngon cũng rất phù hợp với bãi biển này.</p><p><strong>Công viên Châu Á Đà Nẵng</strong></p><p><i><img src=\"https://reviewdulich.com.vn/images/upload/images/da-nang/nhung-diem-den-thu-vi-o-quan-1-da-nang-khong-nen-bo-qua/asianpark.png\" alt=\"\" width=\"960\" height=\"1200\"></i></p><p><i>Công viên Asian Park thu hút rất nhiều du khách đến thăm</i></p><p>Nằm ngay trong trung tâm thành phố Đà Nẵng, Công Viên Châu Á Đà Nẵng là khu vui chơi giải trí về đêm lý tưởng ở Đà Nẵng. Vào các ngày trong tuần, công viên chỉ mở cửa từ khoảng chiều đến tối, nhưng vào cuối tuần công viên có mở cửa cả ngày. Tuy nhiên, thời điểm vui chơi ở công viên Châu Á hấp dẫn nhất là chiều tối, bởi lúc này bạn có thể ngắm toàn cảnh thành phố về đêm trên vòng quay mặt trời.</p><p>Trên đây là những điểm du lịch thú vị ở quận 1 Đà Nẵng mà bạn không nên bỏ qua khi ghé thăm nơi đây. Những điểm du lịch này sẽ mang tới cho bạn kỳ nghỉ vui vẻ và khó quên mà không phải nơi nào cũng có được. Hi vọng với những gợi ý này sẽ giúp bạn có thêm kinh nghiệm lên lịch trình cho mình trong chuyến đi Đà Nẵng sắp tới. Nhờ đó bạn sẽ không mất thời gian tìm kiếm khi tới đây mà chỉ cần lên lịch trình và thực hiện chuyến đi của mình.</p>', 'diemden_2.jpg', 'Nằm trong Top 52 điểm hấp dẫn nhất năm 2015, Đà Nẵng nổi tiếng với những danh lam thắng cảnh đẹp cả ở núi, biển và đồng bằng. Trong đó, quận 1 Đà Nẵng là một trong những quận có nhiều điểm du lịch nổi tiếng ở Đà Nẵng. Dưới đây là những địa điểm du lịch th', '2024-05-16', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `comment_id` int NOT NULL,
  `baiviet_id` int NOT NULL,
  `content` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Ngaydang` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int NOT NULL,
  `parent_comment_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `danhmuc_id` int NOT NULL,
  `ten_danhmuc` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`danhmuc_id`, `ten_danhmuc`) VALUES
(35, 'ĐIỂM ĐẾN'),
(36, 'KINH NGHIỆM'),
(37, 'KHÁCH SẠN'),
(38, 'ĂN UỐNG'),
(39, 'REVIEW');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `syn_baiviet_tag`
--

CREATE TABLE `syn_baiviet_tag` (
  `ID` int NOT NULL,
  `tagID` int NOT NULL,
  `baivietID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `ten_tag` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_password` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_phone` varchar(20) NOT NULL,
  `role` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`baiviet_id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comment_baiviet` (`baiviet_id`),
  ADD KEY `comment_tbl_user` (`user_id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`danhmuc_id`);

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
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `baiviet_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `danhmuc_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

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
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_baiviet` FOREIGN KEY (`baiviet_id`) REFERENCES `baiviet` (`baiviet_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `comment_tbl_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

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
