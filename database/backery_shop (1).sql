-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2024 at 04:29 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backery_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyer_purchases`
--

CREATE TABLE `buyer_purchases` (
  `id` int(11) DEFAULT NULL,
  `purchase_date` date NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_name` varchar(259) NOT NULL,
  `username` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buyer_purchases`
--

INSERT INTO `buyer_purchases` (`id`, `purchase_date`, `product_price`, `product_name`, `username`) VALUES
(NULL, '0000-00-00', 11.00, 'test1', 'wasie'),
(NULL, '0000-00-00', 22.00, 'test2', 'wasie'),
(NULL, '0000-00-00', 45.00, 'test3', 'wasie');

-- --------------------------------------------------------

--
-- Table structure for table `items_dilivered`
--

CREATE TABLE `items_dilivered` (
  `username` varchar(255) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_name` varchar(259) NOT NULL,
  `delivery_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items_dilivered`
--

INSERT INTO `items_dilivered` (`username`, `product_price`, `product_name`, `delivery_date`, `id`) VALUES
('sfsf', 44.00, 'tangina namn', '2024-05-17 10:06:40', 1),
('ana', 33.00, 'lespu', '2024-05-16 12:41:30', 2),
('bahala', 23.00, 'arnel', '2024-05-16 12:39:14', 3),
('bahala', 23.00, 'arnel', '2024-05-16 12:40:56', 4),
('bahala', 33.00, 'lespu', '2024-05-16 13:32:27', 5),


-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `pcs` varchar(259) NOT NULL,
  `image_path` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `pcs`, `image_path`) VALUES
(17, 'lespu', 33, '33', '../uploads/437066069_1827738024377329_4160714669465111478_n.jpg'),
(18, 'arnel', 23, '23', '../uploads/cob-16.jpg'),
(19, 'tangina namn', 44, '41', '../uploads/cob-16.jpg'),
(20, 'test1', 11, '-11', '../uploads/cob-16.jpg'),
(21, 'test2', 22, '0', '../uploads/cob-16.jpg'),
(22, 'test3', 45, '0', '../uploads/cob-16.jpg'),
(23, 'maalat', 10, '3', '../uploads/Screenshot 2024-03-05 234927.png'),
(24, 'maalat', 10, '3', '../uploads/Screenshot 2024-03-05 234927.png'),
(25, 'maalat', 10, '3', '../uploads/Screenshot 2024-02-12 223126.png'),
(26, 'wasiess', 0, '3', '../uploads/Screenshot 2024-02-12 223126.png'),
(27, 'Alice', 11, '11', '../uploads/Screenshot 2024-03-05 234927.png'),
(28, 'wasie', 22, '22', '../uploads/Screenshot 2024-03-05 234927.png');

-- --------------------------------------------------------

--
-- Table structure for table `user_admin`
--

CREATE TABLE `user_admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `type` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_admin`
--

INSERT INTO `user_admin` (`id`, `name`, `last_name`, `contact`, `email`, `password`, `type`) VALUES
(42, 'admin', 'acuna', 907695675467, 'admin@gmail.com', 'admin', 'admin'),
(43, '', 'luxer', 9510608496, 'luxer@gmail.com', 'luxer', 'user'),
(46, 'luxers', '', 0, 'luxers@gmail.com', 'luxers', 'user'),
(47, 'rens', '', 0, 'rasieacuna@gmail.com', 'rens', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `user_cart`
--

CREATE TABLE `user_cart` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(259) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_pcs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_cart`
--

INSERT INTO `user_cart` (`id`, `username`, `product_id`, `product_name`, `product_price`, `product_pcs`) VALUES
(14, 'jerome', 18, 'arnel', 23.00, 0),
(15, 'jerome', 18, 'arnel', 23.00, 0),
(16, 'jerome', 19, 'tangina namn', 44.00, 0),
(17, 'sfsf', 18, 'arnel', 23.00, 0),
(27, 'deo', 18, 'arnel', 23.00, 0),
(50, 'bahala', 21, 'test2', 22.00, 0),
(51, 'bahala', 18, 'arnel', 23.00, 0),
(52, 'bahala', 19, 'tangina namn', 44.00, 0),
(63, 'wasiess', 19, 'tangina namn', 44.00, 0),
(64, 'wasiess', 18, 'arnel', 23.00, 0),
(76, 'wasiess', 18, 'arnel', 23.00, 0),
(77, 'wasiess', 18, 'arnel', 23.00, 0),
(78, 'wasiess', 18, 'arnel', 23.00, 0),
(81, '', 18, 'arnel', 23.00, 0),
(82, '', 19, 'tangina namn', 44.00, 0),
(88, 'rens', 19, 'tangina namn', 44.00, 0),
(89, 'rens', 18, 'arnel', 23.00, 0),
(90, 'rens', 17, 'lespu', 33.00, 0),
(91, 'rens', 18, 'arnel', 23.00, 0),
(92, 'rens', 18, 'arnel', 23.00, 0),
(93, 'rens', 18, 'arnel', 23.00, 0),
(94, 'rens', 18, 'arnel', 23.00, 0),
(95, 'rens', 18, 'arnel', 23.00, 0),
(96, 'rens', 17, 'lespu', 33.00, 0),
(112, 'luxers', 19, 'tangina namn', 44.00, 44),
(113, 'luxers', 19, 'tangina namn', 44.00, 44),
(114, 'luxers', 19, 'tangina namn', 44.00, 43);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items_dilivered`
--
ALTER TABLE `items_dilivered`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_admin`
--
ALTER TABLE `user_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_cart`
--
ALTER TABLE `user_cart`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items_dilivered`
--
ALTER TABLE `items_dilivered`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2414;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user_admin`
--
ALTER TABLE `user_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `user_cart`
--
ALTER TABLE `user_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
