-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 14, 2021 lúc 11:59 AM
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
  `product_image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_category_id`, `is_product_new`, `is_product_sale`, `product_current_price`, `product_original_price`, `product_price_unit`, `product_description`, `short_desc`, `product_image`) VALUES
(1, 'Chuối già hương', 1, 0, 1, 593, 1140, '6 trái', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'banana.jpg'),
(2, 'Dâu tây Đà Lạt', 1, 1, 1, 115, 229, '1 hộp', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'strawberry.jpg'),
(18, 'Bia Sài Gòn Special', 4, 1, 0, 519, 519, '1 lốc (6 lon)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'beer.jpg'),
(3, 'Dưa hấu vỏ xanh, ruột vàng', 1, 1, 1, 236, 369, '1 trái', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit, risus purus fringilla eros.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco.', 'watermelon.jpg'),
(4, 'Cá hồi Chinook', 2, 1, 1, 1971, 2560, '3 con', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit, risus purus fringilla eros, vel congue elit odio et turpis. Sed mattis consectetur urna at sagittis.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'salmon.jpg'),
(5, 'Tôm hùm bông', 2, 0, 1, 1709, 1987, '1 con', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'lobster.jpg'),
(17, 'Gạo thơm Nàng Sen', 4, 0, 1, 99, 129, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim.', 'rice.jpg'),
(6, 'Đu đủ Nhật Bản', 1, 0, 1, 534, 890, '2 trái', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation.', 'papaya.jpg'),
(7, 'Việt quất New Jersey', 1, 1, 1, 375, 750, '1 hộp (0,5 ký)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt.', 'blueberry.jpg'),
(16, 'Maggi xương hầm 3 ngọt', 4, 0, 0, 198, 198, '1 bịch (250 gr)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.', 'incredient.jpg'),
(8, 'Thịt gà các loại', 3, 0, 1, 506, 790, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'chicken-meat.jpg'),
(15, 'Bột các loại', 4, 1, 0, 285, 285, '3 bịch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore.', 'powder.jpg'),
(9, 'Thịt cừu tươi', 3, 1, 1, 2006, 2639, '1 hộp (500 gr)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'lamb-meat.jpg'),
(10, 'Thịt bò Kobe', 3, 0, 1, 818, 986, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', 'cow-meat.jpg'),
(14, 'Bơ 034', 1, 0, 0, 250, 250, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'advocado.jpg'),
(11, 'Xoài cát Hòa Lộc', 1, 0, 1, 331, 385, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'mango.jpg'),
(12, 'Táo Fuji', 1, 1, 1, 255, 399, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua.', 'apple.jpg'),
(13, 'Dứa (Thơm) Đức Trọng', 1, 0, 1, 668, 879, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'pineapple.jpg'),
(19, 'Cua Hoàng Đế', 2, 0, 0, 1230, 1230, '250gr', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua.', 'crap.jpg'),
(20, 'Cá các loại', 2, 0, 0, 532, 532, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore.', 'fish.jpg'),
(21, 'Bắp Ấn Độ', 1, 1, 0, 519, 519, '6 trái', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.', 'corn.jpg'),
(22, 'Nho Ninh Thuận', 1, 1, 1, 233, 299, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et.', 'grapes.jpg'),
(23, 'Bí đỏ tròn', 1, 1, 0, 149, 149, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'pumkin.jpg'),
(24, 'Thịt heo các loại', 3, 0, 0, 244, 244, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'pork-meat.jpg'),
(25, 'Thịt vịt các loại', 3, 0, 0, 546, 546, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua.', 'duck-meat.jpg'),
(26, 'Thịt thỏ các loại', 3, 0, 1, 495, 989, '500 gr', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'rabbit-meat.jpg'),
(27, 'Khoai các loại', 1, 1, 0, 269, 269, '3 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et.', 'sweet-potato.jpg'),
(28, 'Dứa (thơm) các loại', 1, 1, 0, 1899, 1899, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'pineapple.jpg'),
(29, 'Khoai tây bột, khoai tây sáp', 1, 0, 0, 181, 181, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'potato.jpg'),
(30, 'Muối ăn', 4, 0, 1, 257, 299, '5 bịch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation.', 'salt.jpg'),
(31, 'Đường tinh luyện', 4, 0, 1, 113, 149, '3 bịch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore.', 'sugar.jpg'),
(32, 'Nước uống có ga', 4, 1, 0, 269, 269, '1 lốc (6 lon)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et.', 'coke.jpg'),
(33, 'Nước uống có cồn (nhẹ)', 4, 0, 1, 656, 790, '1 lốc (6 lon)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad.', 'soft-drink.jpg'),
(34, 'Thịt ngỗng các loại', 3, 1, 1, 1158, 1346, '500 gr', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.', 'goose-meat.jpg'),
(35, 'Thịt dê các loại', 3, 1, 0, 632, 632, '300 gr', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim.', 'goat-meat.jpg'),
(36, 'Thịt rắn các loại', 3, 0, 0, 489, 489, '300 gr', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'snake-meat.jpg'),
(37, 'Thịt côn trùng các loại', 3, 1, 0, 578, 578, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'insect-meat.jpg'),
(38, 'Nếp cái hoa vàng', 4, 1, 1, 119, 150, '3 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore.', 'stick-rice.jpg'),
(39, 'Dầu Oliu nguyên chất', 4, 0, 0, 275, 275, '1 chai (500 mL)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt.', 'Lorem ipsum dolor sit amet.', 'olive-oil.jpg'),
(40, 'Thịt bạch tuột', 2, 1, 0, 1654, 1654, '500 gr', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.', 'octopus.jpg'),
(41, 'Tôm sú', 2, 0, 0, 325, 325, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore.', 'shrimp.jpg'),
(42, 'Nghêu các loại', 2, 0, 1, 313, 489, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore.', 'clam.jpg'),
(43, 'Sò, ốc các loại', 2, 0, 0, 531, 531, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius', 'Lorem ipsum dolor sit amet.', 'shellfish.jpg'),
(44, 'Thịt sứa biển', 2, 1, 1, 406, 489, '500 gr', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore.', 'jellyfish.jpg'),
(45, 'Hàu sữa', 2, 0, 1, 571, 723, '1 ký', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'oyster.jpg');

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
(4, 2, 1, 5, 'Hang tot qua', '2021-01-10 13:49:11');

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
(2, 'quangtruong', 'quangtruong@gmail.com', '456');

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
  MODIFY `rating_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
