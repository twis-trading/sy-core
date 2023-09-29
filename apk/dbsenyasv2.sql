-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2023 at 02:29 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbsenyasv2`
--

-- --------------------------------------------------------

--
-- Table structure for table `alert`
--

CREATE TABLE `alert` (
  `id` int(11) NOT NULL,
  `payload` varchar(255) NOT NULL,
  `imei` varchar(255) NOT NULL,
  `lat` varchar(255) NOT NULL,
  `lng` varchar(255) NOT NULL,
  `alert_type` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT '1',
  `start_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `end_time` timestamp NULL DEFAULT NULL,
  `imagePath` varchar(255) DEFAULT NULL,
  `cmd_responder` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alert`
--

INSERT INTO `alert` (`id`, `payload`, `imei`, `lat`, `lng`, `alert_type`, `status`, `start_time`, `end_time`, `imagePath`, `cmd_responder`, `remarks`, `createdAt`, `updatedAt`) VALUES
(1, '7ff32a7e-bba6-4a67-a3a4-ea0e6f009592', '10598126251', '14.1299229', '22.229922942', 'MEDICAL', '1', '2023-09-25 03:17:17', NULL, '', NULL, 'MEDICAL', '2023-09-25 03:17:17', NULL),
(2, '7ff32a7e-bba6-4a67-a3a4-ea0e6f009592', '10598126251', '14.1299229', '22.229922942', 'MEDICAL', '1', '2023-09-25 04:30:22', NULL, '', NULL, 'MEDICAL', '2023-09-25 04:30:22', NULL),
(3, '7ff32a7e-bba6-4a67-a3a4-ea0e6f009592', '10598126251', '14.1299229', '22.229922942', 'MEDICAL', '1', '2023-09-25 04:30:33', NULL, '', NULL, 'MEDICAL', '2023-09-25 04:30:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app_users`
--

CREATE TABLE `app_users` (
  `id` int(11) NOT NULL,
  `payload` varchar(255) NOT NULL,
  `imei` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'ACTIVE',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_users`
--

INSERT INTO `app_users` (`id`, `payload`, `imei`, `name`, `phone`, `email`, `address`, `status`, `createdAt`, `updatedAt`) VALUES
(2, '7ff32a7e-bba6-4a67-a3a4-ea0e6f009592', '10598126251', 'Konics Dev', '09123456789', 'konics.dev@gmail.com', 'Calamba City', 'ACTIVE', '2023-09-25 00:39:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `code_list`
--

CREATE TABLE `code_list` (
  `id` int(11) NOT NULL,
  `payload` varchar(255) NOT NULL,
  `imei` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `isValid` varchar(5) NOT NULL DEFAULT '1',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `code_list`
--

INSERT INTO `code_list` (`id`, `payload`, `imei`, `code`, `isValid`, `createdAt`, `updatedAt`) VALUES
(1, '7ff32a7e-bba6-4a67-a3a4-ea0e6f009592', '10598126251', 'IGK4G3', '0', '2023-09-25 01:22:05', '2023-09-25 01:52:53'),
(2, '7ff32a7e-bba6-4a67-a3a4-ea0e6f009592', '10598126251', 'JBTUI9', '0', '2023-09-25 01:53:20', '2023-09-25 01:57:37'),
(3, '7ff32a7e-bba6-4a67-a3a4-ea0e6f009592', '10598126251', '1BTKY5', '0', '2023-09-25 02:15:12', '2023-09-25 01:57:52'),
(4, '7ff32a7e-bba6-4a67-a3a4-ea0e6f009592', '10598126251', 'AFCFKV', '1', '2023-09-25 02:40:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tracking`
--

CREATE TABLE `tracking` (
  `id` int(11) NOT NULL,
  `payload` varchar(255) NOT NULL,
  `alert_id` varchar(255) NOT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tracking`
--

INSERT INTO `tracking` (`id`, `payload`, `alert_id`, `lat`, `lng`, `createdAt`) VALUES
(1, '85c787de-b545-40f1-9a69-dac6889361a6', '7ff32a7e-bba6-4a67-a3a4-ea0e6f009592', '14.1299229', '22.229922942', '2023-09-25 04:05:59'),
(2, '85c787de-b545-40f1-9a69-dac6889361a6', '7ff32a7e-bba6-4a67-a3a4-ea0e6f009592', '14.1299229', '22.229922942', '2023-09-25 04:06:11'),
(3, '85c787de-b545-40f1-9a69-dac6889361a6', '7ff32a7e-bba6-4a67-a3a4-ea0e6f009592', '14.1299229', '22.229922942', '2023-09-25 04:06:39'),
(4, '7e68da79-17da-472f-9819-c721c6098649', '7ff32a7e-bba6-4a67-a3a4-ea0e6f009592', '14.1299229', '22.229922942', '2023-09-25 04:09:23'),
(5, '7e68da79-17da-472f-9819-c721c6098649', '7ff32a7e-bba6-4a67-a3a4-ea0e6f009592', '14.1299229', '22.229922942', '2023-09-25 04:09:29'),
(6, '3ea8e222-000e-4b88-a76e-63e194e09080', '7ff32a7e-bba6-4a67-a3a4-ea0e6f009592', '14.1299229', '22.229922942', '2023-09-25 04:10:44'),
(7, '3ea8e222-000e-4b88-a76e-63e194e09080', '7ff32a7e-bba6-4a67-a3a4-ea0e6f009592', '14.1299229', '22.229922942', '2023-09-25 04:10:50'),
(8, 'a2fecd39-fe13-4891-9621-4407862389be', '7ff32a7e-bba6-4a67-a3a4-ea0e6f009592', '14.1299229', '22.229922942', '2023-09-25 04:13:44'),
(9, '7d7f17ba-12bd-476e-8954-18467f4569f7', '7ff32a7e-bba6-4a67-a3a4-ea0e6f009592', '14.1299229', '22.229922942', '2023-09-25 04:13:46'),
(10, '6394c078-f13f-4818-b0b7-a1ed75456ac8', '7ff32a7e-bba6-4a67-a3a4-ea0e6f009592', '14.1299229', '22.229922942', '2023-09-25 04:13:50'),
(11, 'cdb7508b-7a85-4dea-bacc-a66f3105bfcd', '7ff32a7e-bba6-4a67-a3a4-ea0e6f009592', '14.1299229', '22.229922942', '2023-09-25 04:16:49'),
(12, 'f07587e3-512b-429e-8e37-97a9a19ad535', '7ff32a7e-bba6-4a67-a3a4-ea0e6f009592', '14.1299229', '22.229922942', '2023-09-25 04:33:44'),
(13, '9f079d3d-bbb6-4b3d-b242-e8f9ecc41f00', '7ff32a7e-bba6-4a67-a3a4-ea0e6f009592', '14.1299229', '22.229922942', '2023-09-25 04:33:45'),
(14, '8b85f103-f649-459b-a950-de725f1d6c59', '7ff32a7e-bba6-4a67-a3a4-ea0e6f009592', '14.1299229', '22.229922942', '2023-09-25 04:33:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `payload` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'ACTIVE',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `payload`, `username`, `password`, `name`, `email`, `age`, `address`, `user_type`, `status`, `createdAt`, `updatedAt`) VALUES
(3, 'bed5a8f3-5321-4576-866f-52963b3e0f4c', 'konics1', '$2a$10$6WQ9urOkO1Gf4.IQmLHFcu7z2tMNge.S/fvSAVtjsN8602pzhikrS', 'Konics Dev', 'konics.dev@gmail.com', 23, 'Makati City', '1', 'ACTIVE', '2023-09-24 23:56:37', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alert`
--
ALTER TABLE `alert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_users`
--
ALTER TABLE `app_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `code_list`
--
ALTER TABLE `code_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracking`
--
ALTER TABLE `tracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`(50));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alert`
--
ALTER TABLE `alert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app_users`
--
ALTER TABLE `app_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `code_list`
--
ALTER TABLE `code_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tracking`
--
ALTER TABLE `tracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
