-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2023 at 03:41 PM
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
-- Database: `adsophdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `action_center`
--

CREATE TABLE `action_center` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `socket_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `action_center`
--

INSERT INTO `action_center` (`id`, `name`, `socket_id`) VALUES
(1, 'senyas', '');

-- --------------------------------------------------------

--
-- Table structure for table `active_cases`
--

CREATE TABLE `active_cases` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `log_in` varchar(255) DEFAULT NULL,
  `log_out` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_name`, `department`, `log_in`, `log_out`) VALUES
(1, 'idol', 'Action Center', '2023-09-20 19:19:52', '2023-09-20 19:19:54'),
(2, 'idol', 'Action Center', '2023-09-20 20:54:22', '2023-09-20 22:21:48'),
(3, 'idol', 'Action Center', '2023-09-20 23:08:34', '2023-09-26 15:16:17'),
(4, 'idol', 'Action Center', '2023-09-26 15:24:56', '2023-09-26 15:28:08'),
(5, 'idol', 'Action Center', '2023-09-26 15:36:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `id` int(11) NOT NULL,
  `imei` varchar(255) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `alert_type` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `imgpath` varchar(255) DEFAULT NULL,
  `logged_user` varchar(30) DEFAULT NULL,
  `incident` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alerts`
--

INSERT INTO `alerts` (`id`, `imei`, `lat`, `lng`, `alert_type`, `status`, `time`, `end_time`, `imgpath`, `logged_user`, `incident`) VALUES
(1, '10598126251', 14.1299229, 122.9335555, 'FIRE', 2, '2023-09-20 23:08:41', '2023-09-20 23:14:22', NULL, 'idol', 'FIRE'),
(2, '10598126251', 14.1299231, 122.9335563, 'MEDICAL', 2, '2023-09-20 23:14:48', '2023-09-20 23:15:49', NULL, 'idol', 'MEDICAL'),
(3, '10598126251', 14.1299249, 122.9335579, 'IMAGE', 2, '2023-09-20 23:17:06', '2023-09-20 23:17:24', NULL, 'idol', 'IMAGE'),
(4, '10598126251', 14.1299237, 122.9335572, 'IMAGE', 2, '2023-09-20 23:19:23', '2023-09-20 23:21:12', NULL, 'idol', 'IMAGE'),
(5, '10598126251', 14.1298636, 122.9335497, 'IMAGE', 2, '2023-09-20 23:21:28', '2023-09-20 23:22:06', '/img/1059812625120230920_232119.png', 'idol', 'IMAGE'),
(6, '10598126251', 0, 0, 'POLICE', 2, '2023-09-22 12:10:29', '2023-09-22 12:14:11', NULL, 'idol', 'VEHICULAR INCIDENT'),
(7, '10598126251', 0, 0, 'IMAGE', 2, '2023-09-22 17:27:29', '2023-09-22 17:31:48', '/img/1059812625120230922_172720.png', 'idol', 'IMAGE'),
(8, '10598126251', 14.1298844, 122.9335965, 'POLICE', 2, '2023-09-22 17:28:53', '2023-09-22 17:32:40', NULL, 'idol', 'OTHER POLICE CONCERN'),
(9, '10598126251', 14.1298854, 122.9335992, 'POLICE', 2, '2023-09-22 17:29:36', '2023-09-22 17:32:53', NULL, 'idol', 'OTHER POLICE CONCERN'),
(10, '10598126251', 14.1298847, 122.9335977, 'POLICE', 2, '2023-09-22 17:29:47', '2023-09-22 17:33:03', NULL, 'idol', 'ILLEGAL DRUGS RELATED'),
(11, '10598126251', 14.1298848, 122.9335983, 'POLICE', 2, '2023-09-22 17:29:57', '2023-09-22 17:33:13', NULL, 'idol', 'SHOOTING INCIDENT'),
(12, '10598126251', 14.1298848, 122.9335982, 'POLICE', 2, '2023-09-22 17:30:08', '2023-09-22 17:33:24', NULL, 'idol', 'ROBBERY'),
(13, '10598126251', 14.1298858, 122.9335989, 'MEDICAL', 2, '2023-09-22 17:30:36', '2023-09-22 17:33:51', NULL, 'idol', 'MEDICAL'),
(14, '10598126251', 14.1298848, 122.9335982, 'FIRE', 2, '2023-09-22 17:30:44', '2023-09-22 17:34:00', NULL, 'idol', 'FIRE'),
(15, '10598126251', 14.1298849, 122.9335988, 'FIRE', 2, '2023-09-22 18:59:39', '2023-09-22 19:23:31', NULL, 'idol', 'FIRE'),
(16, '10598126251', 14.1298858, 122.9335991, 'MEDICAL', 2, '2023-09-22 19:50:53', '2023-09-22 19:57:06', NULL, 'idol', 'MEDICAL'),
(17, '10598126251', 0, 0, 'FIRE', 2, '2023-09-23 14:07:41', '2023-09-23 14:11:01', NULL, 'idol', 'FIRE'),
(18, '10598126251', 0, 0, 'POLICE', 2, '2023-09-23 14:07:57', '2023-09-23 14:11:15', NULL, 'idol', 'VEHICULAR INCIDENT'),
(19, '10598126251', 14.1298858, 122.9335994, 'IMAGE', 2, '2023-09-23 14:08:49', '2023-09-23 14:12:31', '/img/1059812625120230923_140837.png', 'idol', 'IMAGE'),
(20, '10598126251', 0, 0, 'FIRE', 2, '2023-09-23 18:34:09', '2023-09-23 19:04:37', NULL, 'idol', 'FIRE'),
(21, '10598126251', 14.1298852, 122.9335937, 'IMAGE', 2, '2023-09-23 19:16:58', '2023-09-23 19:22:14', '/img/1059812625120230923_191621.png', 'idol', 'IMAGE'),
(22, '10598126251', 14.12989227, 122.93358413, 'IMAGE', 2, '2023-09-23 21:55:26', '2023-09-23 21:57:52', '/img/1059812625120230923_215444.png', 'idol', 'IMAGE'),
(23, '10598126251', 14.12989227, 122.93358413, 'POLICE', 2, '2023-09-24 00:02:59', '2023-09-24 00:06:32', NULL, 'idol', 'VEHICULAR INCIDENT'),
(24, '10598126251', 14.12989227, 122.93358413, 'FIRE', 2, '2023-09-24 00:03:49', '2023-09-24 00:07:07', NULL, 'idol', 'FIRE'),
(25, '10598126251', 14.1298783, 122.9336019, 'FIRE', 2, '2023-09-24 11:54:50', '2023-09-24 11:59:47', NULL, 'idol', 'FIRE'),
(26, '10598126251', 14.129884, 122.933598, 'MEDICAL', 2, '2023-09-24 11:57:01', '2023-09-24 12:00:32', NULL, 'idol', 'MEDICAL'),
(27, '10598126251', 14.1298846, 122.9335976, 'POLICE', 2, '2023-09-24 11:57:32', '2023-09-24 12:00:48', NULL, 'idol', 'ILLEGAL DRUGS RELATED'),
(28, '10598126251', 14.1298846, 122.9335969, 'POLICE', 2, '2023-09-24 11:57:53', '2023-09-24 12:01:14', NULL, 'idol', 'ROBBERY'),
(29, '10598126251', 14.1264964, 122.9376038, 'POLICE', 2, '2023-09-24 12:21:02', '2023-09-24 12:24:34', NULL, 'idol', 'SHOOTING INCIDENT'),
(30, '10598126251', 14.1298855, 122.9335996, 'POLICE', 2, '2023-09-24 12:22:40', '2023-09-24 12:25:59', NULL, 'idol', 'ILLEGAL DRUGS RELATED'),
(31, '10598126251', 14.1298863, 122.9335987, 'MEDICAL', 2, '2023-09-24 12:23:17', '2023-09-24 12:26:43', NULL, 'idol', 'MEDICAL'),
(32, '10598126251', 14.1299239, 122.9335574, 'HIGHRISK', 2, '2023-09-24 12:23:55', '2023-09-24 12:27:26', NULL, 'idol', 'HIGHRISK'),
(33, '10598126251', 14.1298799, 122.9336008, 'HIGHRISK', 2, '2023-09-24 12:24:38', '2023-09-24 12:28:01', NULL, 'idol', 'HIGHRISK'),
(34, '10598126251', 14.1298849, 122.9335989, 'IMAGE', 2, '2023-09-24 13:03:34', '2023-09-24 13:09:54', '/img/1059812625120230924_130315.png', 'idol', 'IMAGE'),
(35, '10598126251', 14.1298791, 122.9335985, 'FIRE', 2, '2023-09-24 14:58:33', '2023-09-24 15:08:46', NULL, 'idol', 'FIRE'),
(36, '10598126251', 14.1298849, 122.9335989, 'FIRE', 2, '2023-09-24 15:16:52', '2023-09-24 15:21:30', NULL, 'idol', 'FIRE'),
(37, '10598126251', 14.1298847, 122.9335987, 'FIRE', 2, '2023-09-24 15:25:32', '2023-09-24 15:32:51', NULL, 'idol', 'FIRE'),
(38, '10598126251', 14.1298846, 122.9335978, 'MEDICAL', 2, '2023-09-24 16:03:44', '2023-09-24 16:08:38', NULL, 'idol', 'MEDICAL'),
(39, '10598126251', 14.1298777, 122.9335986, 'FIRE', 2, '2023-09-24 16:22:07', '2023-09-24 16:29:23', NULL, 'idol', 'FIRE'),
(40, '10598126251', 14.1298844, 122.9335958, 'POLICE', 2, '2023-09-24 16:32:21', '2023-09-24 16:37:15', NULL, 'idol', 'VEHICULAR INCIDENT'),
(41, '10598126251', 14.1298788, 122.9335994, 'POLICE', 2, '2023-09-24 16:34:23', '2023-09-24 16:37:59', NULL, 'idol', 'VEHICULAR INCIDENT'),
(42, '10598126251', 14.1298844, 122.9335957, 'FIRE', 2, '2023-09-24 16:43:02', '2023-09-24 16:49:52', NULL, 'idol', 'FIRE'),
(43, '10598126251', 14.1298852, 122.9335933, 'MEDICAL', 2, '2023-09-24 16:49:12', '2023-09-24 16:52:41', NULL, 'idol', 'MEDICAL'),
(44, '10598126251', 14.1298857, 122.9335951, 'FIRE', 2, '2023-09-24 16:58:50', '2023-09-24 17:03:27', NULL, 'idol', 'FIRE'),
(45, '10598126251', 14.1298844, 122.9335957, 'POLICE', 2, '2023-09-24 17:00:53', '2023-09-24 17:04:13', NULL, 'idol', 'OTHER POLICE CONCERN'),
(46, '10598126251', 14.1298853, 122.9335931, 'MEDICAL', 2, '2023-09-24 17:06:43', '2023-09-24 17:11:37', NULL, 'idol', 'MEDICAL'),
(47, '10598126251', 14.1298848, 122.9335983, 'POLICE', 2, '2023-09-24 19:16:40', '2023-09-24 19:19:56', NULL, 'idol', 'VEHICULAR INCIDENT'),
(48, '10598126251', 14.1299237, 122.9335572, 'POLICE', 0, '2023-09-24 19:17:12', '2023-09-25 12:34:02', NULL, 'idol', 'VEHICULAR INCIDENT');

-- --------------------------------------------------------

--
-- Table structure for table `alert_ac`
--

CREATE TABLE `alert_ac` (
  `id` int(11) NOT NULL,
  `alert_id` int(11) DEFAULT NULL,
  `ac_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `accept_time` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `alert_dept`
--

CREATE TABLE `alert_dept` (
  `id` int(11) NOT NULL,
  `alert_id` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `accept_time` datetime DEFAULT NULL,
  `arrival_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `alert_resp`
--

CREATE TABLE `alert_resp` (
  `id` int(11) NOT NULL,
  `alert_id` int(11) DEFAULT NULL,
  `st_id` int(11) DEFAULT NULL,
  `resp_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `accept_time` datetime DEFAULT NULL,
  `arrival_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `apk_update`
--

CREATE TABLE `apk_update` (
  `id` int(11) NOT NULL,
  `version` varchar(50) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app_users`
--

CREATE TABLE `app_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `imei` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `socket_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthdate` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barangay` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `municipality` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'Calamba',
  `province` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Laguna',
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `ser_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `app_users`
--

INSERT INTO `app_users` (`id`, `imei`, `socket_id`, `session_id`, `email`, `username`, `password`, `fname`, `mname`, `lname`, `birthdate`, `contact`, `street`, `barangay`, `municipality`, `province`, `status`, `created_at`, `updated_at`, `ser_num`) VALUES
(1, '10598126251', '', 'u60KVlBZPae6X1EudU94OmEKFQVtY6z78bEwRE5kcnoMPb8o2cAiN5BG8U75', 'undefined', 'undefined', 'FS3VMX', 'sam', 'b', 'gub', NULL, '09956412588', 'undefined', 'Asana', 'Calamba', 'Laguna', 1, '2023-09-20 07:03:44', NULL, '09956412588');

-- --------------------------------------------------------

--
-- Table structure for table `barangay`
--

CREATE TABLE `barangay` (
  `id` int(11) NOT NULL,
  `barangay` varchar(50) DEFAULT NULL,
  `ac_id` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barangay`
--

INSERT INTO `barangay` (`id`, `barangay`, `ac_id`, `dept_id`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Ambulance1', 1, 6, NULL, NULL, 1),
(2, 'Ambulance2', 1, 6, NULL, NULL, 0),
(3, 'Ambulance3', 1, 6, NULL, NULL, 0),
(4, 'Ambulance4', 1, 6, NULL, NULL, 0),
(5, 'Ambulance5', 1, 6, NULL, NULL, 0),
(6, 'Ambulance6', 1, 6, NULL, NULL, 0),
(7, 'Ambulance7', 1, 6, NULL, NULL, 0),
(8, 'Ambulance8', 1, 6, NULL, NULL, 0),
(9, 'Ambulance9', 1, 6, NULL, NULL, 0),
(10, 'Ambulance10', 1, 6, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`, `created_at`, `updated_at`) VALUES
(1, 'FIRE', '2018-08-24 13:49:35', '0000-00-00 00:00:00'),
(2, 'MEDICAL', '2018-11-10 18:16:42', NULL),
(3, 'POLICE', '2018-08-28 13:55:14', NULL),
(4, 'MARSHALL', '2018-12-08 21:20:21', NULL),
(5, 'FIRE AUXILIARY', '2018-12-08 21:20:21', NULL),
(6, 'AMBULANCE', '2018-12-13 14:39:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `point_of_interest`
--

CREATE TABLE `point_of_interest` (
  `id` bigint(20) NOT NULL,
  `poi` varchar(255) NOT NULL,
  `lat` int(11) NOT NULL,
  `lng` int(11) NOT NULL,
  `icon` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `responder`
--

CREATE TABLE `responder` (
  `id` int(11) NOT NULL,
  `imei` varchar(15) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `resp_unique_id` varchar(50) DEFAULT NULL,
  `ac_id` int(11) DEFAULT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `st_id` int(11) DEFAULT NULL,
  `socket_id` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `battery` varchar(255) NOT NULL DEFAULT 'Not Charging: 20%',
  `gps` varchar(255) NOT NULL DEFAULT 'ON',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tracking`
--

CREATE TABLE `tracking` (
  `id` int(11) NOT NULL,
  `alert_id` int(11) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tracking_resp`
--

CREATE TABLE `tracking_resp` (
  `id` int(11) NOT NULL,
  `ar_id` int(11) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `track_resp`
--

CREATE TABLE `track_resp` (
  `id` int(11) NOT NULL,
  `resp_id` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `socket_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(2) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barangay` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `municipality` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthdate` timestamp NULL DEFAULT current_timestamp(),
  `contact` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ass_mun` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'offline',
  `user_tag` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `socket_id`, `username`, `email`, `password`, `remember_token`, `status`, `created_at`, `updated_at`, `user_type`, `lname`, `fname`, `mname`, `street`, `barangay`, `municipality`, `province`, `age`, `birthdate`, `contact`, `position`, `ass_mun`, `log_status`, `user_tag`) VALUES
(1, NULL, 'user', 'leopoldv342@gmail.com', '$2y$10$iEoE375iOV.4yIv8Wxk5J.ppuylK6iM/7c7uTWEWoBFj.LBjXvgfu', 'Cl4pdB7XFZOTbEEspgOfJkvIBl8IewazDGvPTuqUVFfmHyuUvIZzVfpg3qqv', 1, '2023-02-13 22:04:32', '2023-03-12 21:21:05', '0', 'lname', 'fname', 'mname', 'street', 'barangay', 'senyas', 'laguna', NULL, '2023-02-14 06:04:32', NULL, 'Action Center', 'senyas', 'offline', 0),
(3, 'rpwtuQ-ogRLW9jqUAAAA', 'idol', 'idol1@gmail.com', '$2y$10$sF1vhKzhZajsPzaovyKf6.UF6sNoCumS56vi87gPUKpbiH5KidYf6', 'sakVTtz3g9kF7tkjKAgUbtdLPPlVhsEJUIMBURqttvwyf9iRleF9HcfhfYon', 1, '2023-02-13 22:06:39', '2023-09-26 01:33:53', '0', 'lname', 'fname', 'mname', 'street', 'barangay', 'senyas', 'laguna', NULL, '2023-02-14 06:06:39', NULL, 'Action Center', 'senyas', 'online', 0),
(5, NULL, 'admin2', 'idol122@gmail.com', '$2y$10$KJ//uQg0rzUu5e4LCJlwvuljXlu4at50Jcix0QiNvGi0/5e1tQlQm', 'Pr74ZzGeNuiyM5vJKVaNQYrLj7kqGkXiqziJsif18vYJMd53bOzcYsT8rHDP', 0, '2023-02-13 22:40:48', '2023-09-20 07:08:30', '1', 'lname', 'fname', 'mname', 'street', 'barangay', 'senyas', 'laguna', NULL, '2023-02-14 06:40:48', NULL, 'ADMIN', 'senyas', 'offline', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action_center`
--
ALTER TABLE `action_center`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `active_cases`
--
ALTER TABLE `active_cases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alert_ac`
--
ALTER TABLE `alert_ac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alert_dept`
--
ALTER TABLE `alert_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alert_resp`
--
ALTER TABLE `alert_resp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apk_update`
--
ALTER TABLE `apk_update`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_users`
--
ALTER TABLE `app_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barangay`
--
ALTER TABLE `barangay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `point_of_interest`
--
ALTER TABLE `point_of_interest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `responder`
--
ALTER TABLE `responder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracking`
--
ALTER TABLE `tracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracking_resp`
--
ALTER TABLE `tracking_resp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_resp`
--
ALTER TABLE `track_resp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `action_center`
--
ALTER TABLE `action_center`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `active_cases`
--
ALTER TABLE `active_cases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `alerts`
--
ALTER TABLE `alerts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `alert_ac`
--
ALTER TABLE `alert_ac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `alert_dept`
--
ALTER TABLE `alert_dept`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `alert_resp`
--
ALTER TABLE `alert_resp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apk_update`
--
ALTER TABLE `apk_update`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_users`
--
ALTER TABLE `app_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `barangay`
--
ALTER TABLE `barangay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `point_of_interest`
--
ALTER TABLE `point_of_interest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `responder`
--
ALTER TABLE `responder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracking`
--
ALTER TABLE `tracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracking_resp`
--
ALTER TABLE `tracking_resp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `track_resp`
--
ALTER TABLE `track_resp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
