-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2021 at 07:56 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sanayibazaar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'Demir Çelik', '2021-08-13 16:20:54', '2021-08-13 16:20:54'),
(4, 'Elektronik Malzemeleri', '2021-08-13 16:24:55', '2021-08-13 16:24:55'),
(5, 'Elektrik Motorları', '2021-08-13 16:25:14', '2021-08-13 16:25:14'),
(6, 'Redüktör', '2021-08-13 16:25:27', '2021-08-13 16:25:27'),
(7, 'Rulman, Keçe ve Kayış', '2021-08-13 16:25:42', '2021-08-13 16:25:42'),
(8, 'Hırdavat', '2021-08-13 16:25:51', '2021-08-13 16:25:51'),
(9, 'Lazer Kesim ve Plazma Ürünleri', '2021-08-13 16:26:10', '2021-08-13 16:26:10'),
(10, 'Sanayi Makinaları', '2021-08-13 16:26:21', '2021-08-13 16:26:21'),
(11, 'Kalıp Sanayi', '2021-08-13 16:26:31', '2021-08-13 16:26:31'),
(12, 'Dişli Sanayi', '2021-08-13 16:26:39', '2021-08-13 16:26:39'),
(13, 'Alüminyum', '2021-08-13 16:26:47', '2021-08-13 16:26:47');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `msg` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `email`, `msg`, `created_at`, `updated_at`) VALUES
(1, 'ezgihareket@gmail.com', 'gözüküyor mu', '2021-08-13 09:06:59', '2021-08-13 09:06:59');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'ezgihareket@gmail.com', 'customer', '2021-08-13 10:22:04', '2021-08-13 10:22:04'),
(2, 'deneme@gmail.com', 'deneme', '2021-08-13 10:22:52', '2021-08-13 10:22:52');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(11) NOT NULL COMMENT 'Teklif Id si',
  `productId` int(11) DEFAULT NULL COMMENT 'Ürün Id si',
  `offerHead` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL COMMENT 'Teklif açıklaması',
  `offerValue` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL COMMENT 'Teklif para değeri',
  `offerCreateTime` datetime DEFAULT NULL COMMENT 'Teklif Oluşturulma Tarihi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `productId`, `offerHead`, `offerValue`, `offerCreateTime`) VALUES
(11, 6, 'deneme1', '9700', '2021-08-14 17:04:52'),
(12, 6, 'deneme2', '731', '2021-08-14 17:05:17'),
(13, 7, 'deneme4', '8800', '2021-08-14 17:05:36'),
(14, NULL, NULL, '125', NULL),
(15, NULL, NULL, '44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `total` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `address`, `phone`, `total`, `created_at`, `updated_at`) VALUES
(1, 0, 'deneme adres', '05344026615', 176, '2021-08-13 12:21:33', '2021-08-13 12:21:33'),
(2, 2, 'deneme adres', '542524', 176, '2021-08-13 12:24:30', '2021-08-13 12:24:30'),
(3, 2, 'adres', '32234234', 176, '2021-08-13 12:31:06', '2021-08-13 12:31:06'),
(4, 2, 'adres', '32234234', 176, '2021-08-13 12:35:06', '2021-08-13 12:35:06'),
(7, 0, 'adres2', '0534402658', 255, '2021-08-14 16:10:12', '2021-08-14 16:10:12'),
(8, 2, 'deneme adresi', '0534524852', 200, '2021-08-14 17:39:13', '2021-08-14 17:39:13');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 2, '2021-08-13 12:31:06', '2021-08-13 12:31:06'),
(2, 4, 2, 2, '2021-08-13 12:35:06', '2021-08-13 12:35:06'),
(3, 5, 2, 1, '2021-08-13 15:55:18', '2021-08-13 15:55:18'),
(4, 5, 3, 1, '2021-08-13 15:55:19', '2021-08-13 15:55:19'),
(5, 6, 7, 1, '2021-08-13 19:19:19', '2021-08-13 19:19:19'),
(6, 7, 6, 2, '2021-08-14 16:10:12', '2021-08-14 16:10:12'),
(7, 7, 7, 1, '2021-08-14 16:10:12', '2021-08-14 16:10:12'),
(8, 7, 8, 1, '2021-08-14 16:10:12', '2021-08-14 16:10:12'),
(9, 8, 7, 1, '2021-08-14 17:39:13', '2021-08-14 17:39:13');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `picture` varchar(30) NOT NULL,
  `description` mediumtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `picture`, `description`, `category_id`, `created_at`, `updated_at`) VALUES
(6, 'Lorem ipsum dolor sit amet', 11, 'uploads/demir.jpg', 'Proin id mauris et enim finibus tristique non at nisi. Nam tincidunt ultrices orci, non posuere erat tristique id. Praesent mauris quam, faucibus id diam at, interdum tincidunt nunc. Donec massa libero, fringilla sed est at, bibendum rhoncus nisl. Sed lectus justo, pulvinar ut ante ac, bibendum fermentum mi. Nullam a orci ut sapien malesuada rutrum. Cras ex metus, venenatis sit amet tristique a, laoreet ac dndit augue eget interdum. Praesent ullamcorper venenatis ante ac convallis. Curabitur eget ante quis nisl imperdiet luctus. Duis congue turpis nibh, ac euismod nulla malesuada eu. Nunc mattis felis quis aliquet mollis. Aliquam erat volutpat', 3, '2021-08-13 16:30:35', '2021-08-13 16:30:35'),
(7, 'Lorem ipsum dolor sit amet2', 200, 'uploads/demir2.jpg', 'is et enim finibus tristique non at nisi. Nam tincidunt ultrices orci, non posuere erat tristique id. Praesent mauris quam, faucibam urna augue, porttitor a tincidunt ac, bibendum et tellus. Integer faucibus odio eget dictum condimentum. Sed nisi dolor, congue volutpat suscipit ac, facilisis at orci. Nullam ultricies tellus orci, nec imperdiet felis dictum nec. Nullam condimentum blandit augue eget interdum. Praesent ullamcorper venenatis ante ac convallis. Curabitur eget ante quis nisl imperdiet luctus. Duis congue turpis nibh, ac euismod nulla malesuada eu. Nunc mattis felis quis aliquet mollis. Aliquam erat volutpat', 3, '2021-08-13 16:31:58', '2021-08-13 16:31:58'),
(8, 'Lorem ipsum dolor sit amet3', 33, 'uploads/elektrik.jpg', 'Proin id mauris et enim finibus tristique non at nisi. ', 4, '2021-08-13 16:33:10', '2021-08-13 16:33:10'),
(9, 'Lorem ipsum 1', 44, 'uploads/product2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut risus urna, mattis in dapibus ac, euismod sed enim. Pellentesque in cursus orci. Nunc nec risus eu turpis ullamcorper placerat. Suspendisse aliquam.', 4, '2021-08-13 16:47:08', '2021-08-13 16:47:08'),
(10, 'Lorem ipsum 2', 55, 'uploads/elektrik2.png', 'Proin id mauris et enim finibus tristique non at nisi. Nam tincidunt ultrices orci, non posuere erat tristique id. Praesent mauris quam, faucibus id diam at, interdum tincidunt nunc. Donec massa libero, fringilla sed est at, bibendum rhoncus nisl. Sed lectus justo, pulvinar ut ante ac, llam urna augue, porttitor a tincidunt ac, bibendum et tellus. Integer faucibus odio eget dictum condimentum. Sed nisi dolor, congue volutpat suscipit ac, facilisis at orci. Nullam ultricies tellus orci, nec imperdiet felis dictum nec. Nullam condimentum blandit augue eget interdum. Praesent ullamcorper venenatis ante ac convallis. Curabitur eget ante quis nisl imperdiet luctus. Duis congue turpis nibh, ac euismod nulla malesuada eu. Nunc mattis felis quis aliquet mollis. Aliquam erat volutpat', 4, '2021-08-13 16:49:05', '2021-08-13 16:49:05'),
(11, 'Lorem ipsum 3', 66, 'uploads/motor2.jpg', 'Proin id mauris et enim finibus tristique non at nisi. Nam tincidunt ultrices orci, non posuere erat tristique id. Praesent mauris quam, faucibus id diam at, interdum tincidunt nunc. Donec massa libero, fringilla sed est at, bibendum rhoncus nisl. Sed lectus justo, pulvinar ut ante ac, bibendum fermentum mi. Nullam a orci ut sapien malesuada rutrum. Cras ex metus, venenatis sit amet tristique a, laoreet ac diam. Donec lobortis sodales lorem a tincidunt. Cras ut hendrerit mauris. Nulla facilisi. Nam nec eros lobortis leo maximus mattis a a nulla. Etiam posuere, ante sit amet sagittis sollicitudin, diam elit laoreet neque, non sagittis mi leo quis massa.\r\n\r\nNullam urna augue, porttitor a tincidunt ac, bibendum et tellus. Integer faucibus odio eget dictum condimentum. Sed nisi dolor, congue volutpat suscipit ac, facilisis at orci. Nullam ultricies tellus orci, nec imperdiet felis dictum nec. Nullam condimentum blandit augue eget interdum. Praesent ullamcorper venenatis ante ac convallis. Curabitur eget ante quis nisl imperdiet luctus. Duis congue turpis nibh, ac euismod nulla malesuada eu. Nunc mattis felis quis aliquet mollis. Aliquam erat volutpat', 5, '2021-08-13 16:49:39', '2021-08-13 16:49:39'),
(12, 'Lorem ipsum 5', 88, 'uploads/motr2.jpg', 'rna augue, porttitor a tincidunt ac, bibendum et tellus. Integer faucibus odio eget dictum condimentum. Sed nisi dolor, congue volutpat suscipit ac, facilisis at orci. Nullam ultricies tellus orci, nec imperdiet felis dictum nec. Nullam condimentum blandit augue eget interdum. Praesent ullamcorper venenatis ante ac convallis. Curabitur eget ante quis nisl imperdiet luctus. Duis congue turpis nibh, ac euismod nulla malesuada eu. Nunc mattis felis quis aliquet mollis. Aliquam erat volutpat', 5, '2021-08-13 16:51:40', '2021-08-13 16:51:40'),
(13, 'Lorem ipsum 8', 101, 'uploads/reduktor2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut risus urna, mattis in', 6, '2021-08-13 16:56:01', '2021-08-13 16:56:01'),
(14, 'Lorem ipsum 10', 103, 'uploads/hirdavat2.jpg', 'luctus lobortis leo. Proin id mauris et enim finibus tristique non at nisi. Nam tincidunt ultrices orci, non posuere erat tristique id. Praesent mauris quam, ', 8, '2021-08-13 16:58:33', '2021-08-13 16:58:33'),
(15, 'Lorem ipsum 11', 104, 'uploads/rulman.jpg', 'Curabitur eget ante quis nisl imperdiet luctus. Duis congue turpis nibh, ac euismod nulla malesuada eu. Nunc mattis felis quis aliquet mollis. Aliquam erat volutpat. Suspendisse potenti. Ut fermentum convallis aliquam. Nullam a luctus ligula. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer massa velit, ullamcorper at auctor a, dignissim gravida augue.', 7, '2021-08-13 16:59:39', '2021-08-13 16:59:39'),
(16, 'Lorem ipsum 12', 105, 'uploads/kayis.jpg', 'erdiet luctus. Duis congue turpis nibh, ac euismod nulla malesuada eu. Nunc mattis felis quis aliquet mollis. Aliquam erat volutpat. Suspendisse potenti. Ut fermentum convallis aliquam. Nullam a luctus ligula. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer massa velit, ullamcorper at auctor a, dignissim gravida augue.', 7, '2021-08-13 17:00:24', '2021-08-13 17:00:24'),
(17, 'Lorem ipsum 14', 106, 'uploads/kece.jpg', 'convallis. Curabitur eget ante quis nisl imperdiet luctus.', 7, '2021-08-13 17:01:11', '2021-08-13 17:01:11'),
(18, 'Lorem ipsum 15', 107, 'uploads/plazma.jpg', 'Curabitur eget ante quis nisl imperdiet luctus. Proin id mauris e', 9, '2021-08-13 17:02:42', '2021-08-13 17:02:42'),
(19, 'Lorem ipsum 20', 109, 'uploads/sanayi.jpg', 'ac convallis. Curabitur eget ante quis nisl imperdiet luctus. Duis congue turpis nibh, ac euismod nulla malesuada eu. Nunc mattis felis quis aliquet mollis. Aliquam erat volutpat', 10, '2021-08-13 17:06:00', '2021-08-13 17:06:00'),
(20, 'Lorem ipsum 22', 120, 'uploads/sanayi2.jpg', 'quis nisl imperdiet luctus. Duis congue turpis nibh, ac euismod nulla malesuada eu. Nunc mattis felis quis aliquet mollis. Aliquam erat volutpa', 10, '2021-08-13 17:06:32', '2021-08-13 17:06:32'),
(21, 'Lorem ipsum 23', 121, 'uploads/kalip.jpg', 'imperdiet luctus. Duis congue turpis nibh, ac euismod nulla malesuada eu. Nunc mattis felis quis', 11, '2021-08-13 17:07:46', '2021-08-13 17:07:46'),
(22, 'Lorem ipsum 24', 122, 'uploads/disli.jpg', 'Proin id mauris et enim finibus tristique non at nisi. Nam tincidunt ultrices orci, non posuere erat tristique id. Praesent mauris quam, faucibus id diam at, interdum tincidunt nunc. Donec massa libero, fringilla sed est at, bibendum rhoncus nisl. Sed lectus justo, pulvinar ut ante ac, bibendum fermentum mi. Nullam a orci ut sapien malesuada rutrum. Cras ex metus, venenatis sit amet tristique a, laoreet ac diam. Donec lobortis sodales lorem a tincidunt. Cras ut hendrerit mauris. Nulla facilisi. Nam nec eros lobortis leo maximus mattis a a nulla. Etiam posuere, ante sit amet sagittis sollicitudin, diam elit laoreet neque, non sagittis mi leo quis massa.\r\n\r\nNullam urna augue, porttitor a tincidunt ac, bibendum et tellus. Integer faucibus odio eget dictum condimentum. Sed nisi dolor, congue volutpat suscipit ac, facilisis at orci. Nullam ultricies tellus orci, nec imperdiet felis dictum nec. Nullam condimentum blandit augue eget interdum. Praesent ullamcorper venenatis ante ac convallis. Curabitur eget ante quis nisl imperd', 12, '2021-08-13 17:08:44', '2021-08-13 17:08:44'),
(23, 'Lorem ipsum 25', 125, 'uploads/alumin.jpg', 'Proin id mauris et enim finibus tristique non at nisi. Nam tincidunt ultrices orci, non posuere erat tristique id. Praesent mauris quam, faucibus id diam at, interdum tincidunt nunc. Donec massa libero, fringilla sed est at, bibendum rhoncus nisl. Sed lectus justo, pulvinar ut ante ac, bibendum fermentum mi. Nullam a orci ut sapien malesuada rutrum. Cras ex metus, venenatis sit amet tristique a, laoreet ac diam. Donec lobortis sodales lorem a tincidunt. Cras ut hendrerit mauris. Nulla facilisi. Nam nec eros lobortis leo maximus mattis a a nulla. Etiam posuere, ante sit amet sagittis sollicitudin, diam elit laoreet neque, non sagittis mi leo quis massa.\r\n\r\nNullam urna augue, porttitor a tincidunt ac, bibendum et tellus. Integer faucibus odio eget dictum condimentum. Sed nisi dolor, congue volutpat suscipit ac, facilisis at orci. Nullam ultricies tellus orci, nec imperdiet felis dictum nec. Nullam condimentum blandit augue eget interdum. Praesent ullamcorper venenatis ante ac convallis. Curabitur eget ante quis nisl imperdiet luctus. Duis congue turpis nibh, ac euismod nulla malesuada eu. Nunc mattis felis quis aliquet mollis. Aliquam erat volutpat', 13, '2021-08-13 17:09:48', '2021-08-13 17:09:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `productId` (`productId`) USING BTREE;

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Teklif Id si', AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `offers`
--
ALTER TABLE `offers`
  ADD CONSTRAINT `offers_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
