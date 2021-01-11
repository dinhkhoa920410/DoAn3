-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 11, 2021 lúc 11:57 AM
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
-- Cơ sở dữ liệu: `ecom_db_1`
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
  `product_rate` float NOT NULL,
  `product_description` text NOT NULL,
  `short_desc` text NOT NULL,
  `product_image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_category_id`, `is_product_new`, `is_product_sale`, `product_current_price`, `product_original_price`, `product_rate`, `product_description`, `short_desc`, `product_image`) VALUES
(1, 'product 1', 1, 0, 1, 593, 1140, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'banana.jpg'),
(2, 'product 2', 1, 1, 1, 115, 229, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'strawberry.jpg'),
(18, 'product 18', 4, 1, 0, 519, 519, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'beer.jpg'),
(3, 'product 3', 1, 1, 1, 236, 369, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit, risus purus fringilla eros.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco.', 'watermelon.jpg'),
(4, 'product 4', 2, 1, 1, 1971, 2560, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit, risus purus fringilla eros, vel congue elit odio et turpis. Sed mattis consectetur urna at sagittis.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'salmon.jpg'),
(5, 'product 5', 2, 0, 1, 1709, 1987, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'lobster.jpg'),
(17, 'product 17', 4, 0, 1, 99, 129, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim.', 'rice.jpg'),
(6, 'product 6', 1, 0, 1, 534, 890, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation.', 'papaya.jpg'),
(7, 'product 7', 1, 1, 1, 375, 750, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt.', 'blueberry.jpg'),
(16, 'product 16', 4, 0, 0, 198, 198, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.', 'incredient.jpg'),
(8, 'product 8', 3, 0, 1, 506, 790, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'chicken-meat.jpg'),
(15, 'product 15', 4, 1, 0, 285, 285, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore.', 'powder.jpg'),
(9, 'product 9', 3, 1, 1, 2006, 2639, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'lamb-meat.jpg'),
(10, 'product 10', 3, 0, 1, 818, 986, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', 'cow-meat.jpg'),
(14, 'product 14', 1, 0, 0, 250, 250, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'advocado.jpg'),
(11, 'product 11', 1, 0, 1, 331, 385, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'mango.jpg'),
(12, 'product 12', 1, 1, 1, 255, 399, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua.', 'apple.jpg'),
(13, 'product 13', 1, 0, 1, 668, 879, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'pineapple.jpg'),
(19, 'product 19', 2, 0, 0, 1230, 1230, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua.', 'crap.jpg'),
(20, 'product 20', 2, 0, 0, 532, 532, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore.', 'fish.jpg'),
(21, 'product 21', 1, 1, 0, 519, 519, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.', 'corn.jpg'),
(22, 'product 22', 1, 1, 1, 233, 299, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et.', 'grapes.jpg'),
(23, 'product 23', 1, 1, 0, 149, 149, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'pumkin.jpg'),
(24, 'product 24', 3, 0, 0, 244, 244, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'pork-meat.jpg'),
(25, 'product 25', 3, 0, 0, 546, 546, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua.', 'duck-meat.jpg'),
(26, 'product 26', 3, 0, 1, 495, 989, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'rabbit-meat.jpg'),
(27, 'product 27', 1, 1, 0, 269, 269, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et.', 'sweet-potato.jpg'),
(28, 'product 28', 1, 1, 0, 1899, 1899, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'pineapple.jpg'),
(29, 'product 29', 1, 0, 0, 181, 181, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'potato.jpg'),
(30, 'product 30', 4, 0, 1, 257, 299, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation.', 'salt.jpg'),
(31, 'product 31', 4, 0, 1, 113, 149, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore.', 'sugar.jpg'),
(32, 'product 32', 4, 1, 0, 269, 269, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et.', 'coke.jpg'),
(33, 'product 33', 4, 0, 1, 656, 790, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad.', 'soft-drink.jpg'),
(34, 'product 34', 3, 1, 1, 1158, 1346, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.', 'goose-meat.jpg'),
(35, 'product 35', 3, 1, 0, 632, 632, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim.', 'goat-meat.jpg'),
(36, 'product 36', 3, 0, 0, 489, 489, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'snake-meat.jpg'),
(37, 'product 37', 3, 1, 0, 578, 578, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'insect-meat.jpg'),
(38, 'product 38', 4, 1, 1, 119, 150, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore.', 'stick-rice.jpg'),
(39, 'product 39', 4, 0, 0, 275, 275, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt.', 'Lorem ipsum dolor sit amet.', 'olive-oil.jpg'),
(40, 'product 40', 2, 1, 0, 1654, 1654, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.', 'octopus.jpg'),
(41, 'product 41', 2, 0, 0, 325, 325, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore.', 'shrimp.jpg'),
(42, 'product 42', 2, 0, 1, 313, 489, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore.', 'clam.jpg'),
(43, 'product 43', 2, 0, 0, 531, 531, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius', 'Lorem ipsum dolor sit amet.', 'shellfish.jpg'),
(44, 'product 44', 2, 1, 1, 406, 489, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore.', 'jellyfish.jpg'),
(45, 'product 45', 2, 0, 1, 571, 723, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'oyster.jpg');

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
