-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2021 at 01:13 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'example 1'),
(2, 'example 2'),
(3, 'aaaaa');

-- --------------------------------------------------------

--
-- Table structure for table `products`
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
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_category_id`, `is_product_new`, `is_product_sale`, `product_current_price`, `product_original_price`, `product_rate`, `product_description`, `short_desc`, `product_image`) VALUES
(1, 'product 1', 1, 0, 1, 25, 100, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit, risus purus fringilla eros, vel congue elit odio et turpis. Sed mattis consectetur urna at sagittis.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'banana.jpg'),
(2, 'product 2', 1, 1, 1, 300, 400, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit, risus purus fringilla eros, vel congue elit odio et turpis. Sed mattis consectetur urna at sagittis.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'strawberry.jpg'),
(3, 'product 3', 1, 1, 1, 300, 400, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit, risus purus fringilla eros, vel congue elit odio et turpis. Sed mattis consectetur urna at sagittis.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'watermelon.jpg'),
(4, 'product 4', 1, 0, 1, 25, 100, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit, risus purus fringilla eros, vel congue elit odio et turpis. Sed mattis consectetur urna at sagittis.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'papaya.jpg'),
(5, 'product 5', 1, 1, 1, 30, 100, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit, risus purus fringilla eros, vel congue elit odio et turpis. Sed mattis consectetur urna at sagittis.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'blueberry.jpg'),
(6, 'product 6', 1, 0, 1, 255, 400, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit, risus purus fringilla eros, vel congue elit odio et turpis. Sed mattis consectetur urna at sagittis.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'mango.jpg'),
(7, 'product 7', 1, 1, 1, 15, 400, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit, risus purus fringilla eros, vel congue elit odio et turpis. Sed mattis consectetur urna at sagittis.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'apple.jpg'),
(8, 'product 8', 1, 0, 1, 30, 100, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit, risus purus fringilla eros, vel congue elit odio et turpis. Sed mattis consectetur urna at sagittis.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'pineapple.jpg'),
(9, 'product 9', 1, 0, 0, 26, 100, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit, risus purus fringilla eros, vel congue elit odio et turpis. Sed mattis consectetur urna at sagittis.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'http://placehold.it/320x150'),
(10, 'product 10', 1, 0, 0, 27, 100, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit, risus purus fringilla eros, vel congue elit odio et turpis. Sed mattis consectetur urna at sagittis.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'http://placehold.it/320x150'),
(11, 'product 11', 1, 0, 1, 75, 100, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit, risus purus fringilla eros, vel congue elit odio et turpis. Sed mattis consectetur urna at sagittis.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'http://placehold.it/320x150'),
(12, 'product 12', 1, 0, 0, 50, 100, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci elit, feugiat vel lectus ac, fermentum eleifend lectus. Nam malesuada mi ut magna pretium luctus. Sed tortor turpis, viverra id hendrerit vel, efficitur sit amet sem. Sed vitae volutpat nisi. Curabitur rhoncus felis semper nisi tincidunt dignissim. Phasellus varius mi ut libero porta, eu dapibus mi tincidunt. Maecenas vel lacus suscipit, efficitur lorem id, egestas urna. Quisque interdum elementum erat quis vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et turpis vel dolor tempus aliquam. Phasellus tincidunt velit ligula, non finibus diam vulputate ut. Etiam consectetur est eu urna gravida tempus. Ut feugiat, diam sit amet bibendum hendrerit, risus purus fringilla eros, vel congue elit odio et turpis. Sed mattis consectetur urna at sagittis.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'http://placehold.it/320x150');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
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
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rating_id`, `product_id`, `user_id`, `star`, `comment`, `datetime`) VALUES
(1, 1, 1, 5, 'Tot', '2021-01-10 13:48:42'),
(2, 1, 2, 1, 'Te qua', '2021-01-13 13:48:59'),
(3, 1, 3, 4, 'Hang chat luong', '2021-01-10 13:49:06'),
(4, 2, 1, 5, 'Hang tot qua', '2021-01-10 13:49:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'quangcanh', 'quangcanh@gmail.com', '123'),
(2, 'quangtruong', 'quangtruong@gmail.com', '456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
