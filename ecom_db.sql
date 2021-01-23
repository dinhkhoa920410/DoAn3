-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 22, 2021 lúc 11:50 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ecom_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Rau củ quả'),
(2, 'Hải sản'),
(3, 'Thịt'),
(4, 'Gạo và thực phẩm khác');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `news_id` int(10) NOT NULL,
  `news_title` text NOT NULL,
  `short_desc` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `page` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`news_id`, `news_title`, `short_desc`, `image`, `page`) VALUES
(1, 'Tin shock, khuyến mãi 50%', 'Do hàng tồn kho sắp hư nên khuyến mãi 50%, mại dzô mại dzô', 'thumbnail_1.jpg', 'news_1.php'),
(2, 'Tin shock hơn, khuyến mãi 80%', 'Đồ hết hạn sử dụng nên khuyến mãi tận 80%, quá rẻ quá rẻ', 'thumbnail_2.jpg', 'news_2.php');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `is_product_new` tinyint(1) NOT NULL,
  `is_product_sale` tinyint(1) NOT NULL,
  `product_current_price` double NOT NULL,
  `product_original_price` double NOT NULL,
  `product_price_unit` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `short_desc` text NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_remain` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_category_id`, `is_product_new`, `is_product_sale`, `product_current_price`, `product_original_price`, `product_price_unit`, `product_description`, `short_desc`, `product_image`, `product_remain`) VALUES
(1, 'Chuối già hương', 1, 0, 1, 593, 1140, '6 trái', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'banana.jpg', 5),
(2, 'Dâu tây Đà Lạt', 1, 1, 1, 115, 229, '1 hộp', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'strawberry.jpg', 300),
(18, 'Bia Sài Gòn Special', 4, 1, 0, 519, 519, '1 lốc (6 lon)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'beer.jpg', 0),
(3, 'Dưa hấu vỏ xanh, ruột vàng', 1, 1, 1, 236, 369, '1 trái', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit, risus purus fringilla eros.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco.', 'watermelon.jpg', 0),
(4, 'Cá hồi Chinook', 2, 1, 1, 1971, 2560, '3 con', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit, risus purus fringilla eros, vel congue elit odio et turpis. Sed mattis consectetur urna at sagittis.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'salmon.jpg', 0),
(5, 'Tôm hùm bông', 2, 0, 1, 1709, 1987, '1 con', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'lobster.jpg', 0),
(17, 'Gạo thơm Nàng Sen', 4, 0, 1, 99, 129, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim.', 'rice.jpg', 0),
(6, 'Đu đủ Nhật Bản', 1, 0, 1, 534, 890, '2 trái', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation.', 'papaya.jpg', 0),
(7, 'Việt quất New Jersey', 1, 1, 1, 375, 750, '1 hộp (0,5 ký)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt.', 'blueberry.jpg', 0),
(16, 'Maggi xương hầm 3 ngọt', 4, 0, 0, 198, 198, '1 bịch (250 gr)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.', 'incredient.jpg', 0),
(8, 'Thịt gà các loại', 3, 0, 1, 506, 790, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'chicken-meat.jpg', 0),
(15, 'Bột các loại', 4, 1, 0, 285, 285, '3 bịch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore.', 'powder.jpg', 0),
(9, 'Thịt cừu tươi', 3, 1, 1, 2006, 2639, '1 hộp (500 gr)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'lamb-meat.jpg', 0),
(10, 'Thịt bò Kobe', 3, 0, 1, 818, 986, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', 'cow-meat.jpg', 0),
(14, 'Bơ 034', 1, 0, 0, 250, 250, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'advocado.jpg', 0),
(11, 'Xoài cát Hòa Lộc', 1, 0, 1, 331, 385, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'mango.jpg', 0),
(12, 'Táo Fuji', 1, 1, 1, 255, 399, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua.', 'apple.jpg', 0),
(13, 'Dứa (Thơm) Đức Trọng', 1, 0, 1, 668, 879, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'pineapple.jpg', 0),
(19, 'Cua Hoàng Đế', 2, 0, 0, 1230, 1230, '250gr', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua.', 'crap.jpg', 0),
(20, 'Cá các loại', 2, 0, 0, 532, 532, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore.', 'fish.jpg', 0),
(21, 'Bắp Ấn Độ', 1, 1, 0, 519, 519, '6 trái', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.', 'corn.jpg', 0),
(22, 'Nho Ninh Thuận', 1, 1, 1, 233, 299, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et.', 'grapes.jpg', 0),
(23, 'Bí đỏ tròn', 1, 1, 0, 149, 149, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'pumkin.jpg', 0),
(24, 'Thịt heo các loại', 3, 0, 0, 244, 244, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'pork-meat.jpg', 0),
(25, 'Thịt vịt các loại', 3, 0, 0, 546, 546, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua.', 'duck-meat.jpg', 0),
(26, 'Thịt thỏ các loại', 3, 0, 1, 495, 989, '500 gr', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'rabbit-meat.jpg', 0),
(27, 'Khoai các loại', 1, 1, 0, 269, 269, '3 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et.', 'sweet-potato.jpg', 0),
(28, 'Dứa (thơm) các loại', 1, 1, 0, 1899, 1899, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'pineapple.jpg', 0),
(29, 'Khoai tây bột, khoai tây sáp', 1, 0, 0, 181, 181, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'potato.jpg', 0),
(30, 'Muối ăn', 4, 0, 1, 257, 299, '5 bịch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation.', 'salt.jpg', 0),
(31, 'Đường tinh luyện', 4, 0, 1, 113, 149, '3 bịch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore.', 'sugar.jpg', 0),
(32, 'Nước uống có ga', 4, 1, 0, 269, 269, '1 lốc (6 lon)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et.', 'coke.jpg', 0),
(33, 'Nước uống có cồn (nhẹ)', 4, 0, 1, 656, 790, '1 lốc (6 lon)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad.', 'soft-drink.jpg', 0),
(34, 'Thịt ngỗng các loại', 3, 1, 1, 1158, 1346, '500 gr', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.', 'goose-meat.jpg', 0),
(35, 'Thịt dê các loại', 3, 1, 0, 632, 632, '300 gr', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim.', 'goat-meat.jpg', 0),
(36, 'Thịt rắn các loại', 3, 0, 0, 489, 489, '300 gr', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'snake-meat.jpg', 0),
(37, 'Thịt côn trùng các loại', 3, 1, 0, 578, 578, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'insect-meat.jpg', 0),
(38, 'Nếp cái hoa vàng', 4, 1, 1, 119, 150, '3 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore.', 'stick-rice.jpg', 0),
(39, 'Dầu Oliu nguyên chất', 4, 0, 0, 275, 275, '1 chai (500 mL)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt.', 'Lorem ipsum dolor sit amet.', 'olive-oil.jpg', 0),
(40, 'Thịt bạch tuột', 2, 1, 0, 1654, 1654, '500 gr', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.', 'octopus.jpg', 0),
(41, 'Tôm sú', 2, 0, 0, 325, 325, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore.', 'shrimp.jpg', 0),
(42, 'Nghêu các loại', 2, 0, 1, 313, 489, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore.', 'clam.jpg', 0),
(43, 'Sò, ốc các loại', 2, 0, 0, 531, 531, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius', 'Lorem ipsum dolor sit amet.', 'shellfish.jpg', 0),
(44, 'Thịt sứa biển', 2, 1, 1, 406, 489, '500 gr', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore.', 'jellyfish.jpg', 0),
(45, 'Hàu sữa', 2, 0, 1, 571, 723, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'oyster.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `product_info`
-- (See below for the actual view)
--
CREATE TABLE `product_info` (
`product_id` int(11)
,`product_title` varchar(255)
,`product_category_id` int(11)
,`is_product_new` tinyint(1)
,`is_product_sale` tinyint(1)
,`product_current_price` double
,`product_original_price` double
,`product_price_unit` varchar(255)
,`product_description` text
,`short_desc` text
,`product_image` varchar(255)
,`product_remain` int(11)
,`product_star` decimal(36,4)
);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `rating_id` int(10) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(15) NOT NULL,
  `star` int(1) NOT NULL,
  `comment` text NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `rating`
--

INSERT INTO `rating` (`rating_id`, `product_id`, `user_id`, `star`, `comment`, `datetime`) VALUES
(1, 1, 1, 5, 'Tot', '2021-01-10 13:48:42'),
(2, 1, 2, 1, 'Te qua', '2021-01-13 13:48:59'),
(3, 1, 3, 4, 'Hang chat luong', '2021-01-10 13:49:06'),
(4, 2, 1, 5, 'Hang tot qua', '2021-01-10 13:49:11'),
(6, 3, 1, 5, '2222', '2021-01-16 14:34:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subscriber`
--

CREATE TABLE `subscriber` (
  `subscriber_id` int(11) NOT NULL,
  `sub_email` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `subscriber`
--

INSERT INTO `subscriber` (`subscriber_id`, `sub_email`) VALUES
(1, 'lequangcanh@gmail.com'),
(4, 'lequangtruong@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `supplier_short_desc` text NOT NULL,
  `supplier_address` varchar(255) NOT NULL,
  `supplier_phone` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_name`, `cat_id`, `supplier_short_desc`, `supplier_address`, `supplier_phone`) VALUES
(1, 'Thực phẩm Đồng Xanh', 1, 'Công ty Đồng Xanh cung cấp rau củ quả giá sỉ dịch vụ uy tín nhất. Chúng tôi luôn cam kết quy trình chuyên nghiệp cùng các sản phẩm cao cấp, đảm bảo mang đến sự hài lòng cho mọi khách hàng. Đặc biệt, nguồn hàng với số lượng lớn của chúng tôi luôn sẵn sàng phục vụ, đáp ứng mọi nhu cầu của quý khách hàng ngay cả trong những dịp cao điểm nhất.', '34/23 Hoàng Ngọc Phách, P. Phú Thọ Hoà, Q.Tân Phú, TP.HCM', 936685268),
(2, 'Đảo Hải Sản', 2, 'Công ty Đồng Xanh cung cấp rau củ quả giá sỉ dịch vụ uy tín nhất. Chúng tôi luôn cam kết quy trình chuyên nghiệp cùng các sản phẩm cao cấp, đảm bảo mang đến sự hài lòng cho mọi khách hàng. Đặc biệt, nguồn hàng với số lượng lớn của chúng tôi luôn sẵn sàng phục vụ, đáp ứng mọi nhu cầu của quý khách hàng ngay cả trong những dịp cao điểm nhất.', 'A9 Nguyễn Sỹ Sách, P15, Quận Tân Bình', 19000098),
(3, 'Công ty TNHH Xuất Nhập Khẩu Thực Phẩm Duy Anh', 3, 'Duy Anh - Đơn vị trên 10 năm kinh nghiệm sản xuất & cung cấp các loại thực phẩm ăn liền làm từ gạo, như: Bánh tráng, bún gạo, bún bò huế, phở gạo, phở bột lọc, hủ tiếu nam vang, bánh canh, bún vắt vuông, bún ăn liền, bánh hỏi, phở ăn liền,..', '368/4 Tỉnh Lộ 15, Ấp Bến Cỏ, X. Phú Hòa Đông, H. Củ Chi, Tp. Hồ Chí Minh (TPHCM)', 903646487),
(4, 'Vựa gạo An Bình Phát', 4, 'Đại lý gạo An Bình Phát trên 15 năm cung cấp các loại gạo ngon, gạo sạch, gạo giá sỉ, gạo từ thiện tại TPHCM. Cùng với đó là dịch vụ giao gạo tận nhà tiện lợi, nhanh chóng cho khách hàng.Là một thành phố lớn và đông dân nên nhu cầu về các loại gạo ngon, gạo sạch tại Thành phố Hồ Chí Minh (tphcm) là rất lớn. Do đó mà có không ít đại lý, vựa gạo tại tphcm ra đời. Tuy nhiên bên cạnh những đơn vị kinh doanh uy tín thì cũng có không ít cơ sở vì chạy theo lợi nhuận mà làm ăn gian dối, cung cấp gạo không đảm bảo chất lượng.', '175 Khuông Việt, Phường Phú Trung, Quận Tân Phú, Tp. Hồ Chí Minh', 972697381);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'quangcanh', 'quangcanh@gmail.com', '123'),
(2, 'quangtruong', 'quangtruong@gmail.com', '456'),
(8, 'nguyendinhkhoa', 'dinhkhoa@gmail.com', '456789'),
(6, 'lethithuytrang', 'trangthuy@gmail.com', '789456'),
(7, 'nguyendinhkhoa', 'dinhkhoa@gmail.com', '456789'),
(9, 'mykieu', 'mykieu@gmail.com', '147258'),
(10, 'tienhoang', 'tienhoang@gmail.com', '456789');

-- --------------------------------------------------------

--
-- Cấu trúc cho view `product_info`
--
DROP TABLE IF EXISTS `product_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_info`  AS  (select `p`.`product_id` AS `product_id`,`p`.`product_title` AS `product_title`,`p`.`product_category_id` AS `product_category_id`,`p`.`is_product_new` AS `is_product_new`,`p`.`is_product_sale` AS `is_product_sale`,`p`.`product_current_price` AS `product_current_price`,`p`.`product_original_price` AS `product_original_price`,`p`.`product_price_unit` AS `product_price_unit`,`p`.`product_description` AS `product_description`,`p`.`short_desc` AS `short_desc`,`p`.`product_image` AS `product_image`,`p`.`product_remain` AS `product_remain`,sum(`r`.`star`) / count(`r`.`rating_id`) AS `product_star` from (`products` `p` left join `rating` `r` on(`p`.`product_id` = `r`.`product_id`)) group by `p`.`product_id`) ;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Chỉ mục cho bảng `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`subscriber_id`);

--
-- Chỉ mục cho bảng `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `subscriber_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
