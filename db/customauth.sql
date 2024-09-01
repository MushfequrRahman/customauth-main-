-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2024 at 01:41 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'icon-chart-bar', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'icon-server', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'icon-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'icon-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'icon-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'icon-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'icon-history', 'auth/logs', NULL, NULL, NULL),
(8, 0, 0, 'Custom User', 'icon-address-book', 'customuser', NULL, '2024-08-31 23:35:29', '2024-08-31 23:35:29');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-28 02:08:24', '2024-08-28 02:08:24'),
(2, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-28 02:08:34', '2024-08-28 02:08:34'),
(3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-28 02:41:29', '2024-08-28 02:41:29'),
(4, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-28 02:41:34', '2024-08-28 02:41:34'),
(5, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-28 02:44:09', '2024-08-28 02:44:09'),
(6, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-28 02:44:28', '2024-08-28 02:44:28'),
(7, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-28 21:56:40', '2024-08-28 21:56:40'),
(8, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-28 22:21:03', '2024-08-28 22:21:03'),
(9, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-28 22:22:38', '2024-08-28 22:22:38'),
(10, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-28 22:29:52', '2024-08-28 22:29:52'),
(11, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-28 22:30:06', '2024-08-28 22:30:06'),
(12, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-28 22:30:13', '2024-08-28 22:30:13'),
(13, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-28 22:30:42', '2024-08-28 22:30:42'),
(14, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-28 22:51:47', '2024-08-28 22:51:47'),
(15, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-28 22:51:54', '2024-08-28 22:51:54'),
(16, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-28 22:54:21', '2024-08-28 22:54:21'),
(17, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-28 23:06:30', '2024-08-28 23:06:30'),
(18, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-28 23:14:09', '2024-08-28 23:14:09'),
(19, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-28 23:14:22', '2024-08-28 23:14:22'),
(20, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-28 23:14:26', '2024-08-28 23:14:26'),
(21, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-28 23:14:47', '2024-08-28 23:14:47'),
(22, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-28 23:14:53', '2024-08-28 23:14:53'),
(23, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:05:02', '2024-08-29 02:05:02'),
(24, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 02:05:07', '2024-08-29 02:05:07'),
(25, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:19:17', '2024-08-29 02:19:17'),
(26, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 02:19:21', '2024-08-29 02:19:21'),
(27, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:19:46', '2024-08-29 02:19:46'),
(28, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 02:19:52', '2024-08-29 02:19:52'),
(29, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:29:37', '2024-08-29 02:29:37'),
(30, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:30:09', '2024-08-29 02:30:09'),
(31, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 02:30:27', '2024-08-29 02:30:27'),
(32, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:30:44', '2024-08-29 02:30:44'),
(33, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:31:34', '2024-08-29 02:31:34'),
(34, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 02:31:41', '2024-08-29 02:31:41'),
(35, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:32:00', '2024-08-29 02:32:00'),
(36, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:34:46', '2024-08-29 02:34:46'),
(37, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 02:34:50', '2024-08-29 02:34:50'),
(38, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:35:12', '2024-08-29 02:35:12'),
(39, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 02:35:17', '2024-08-29 02:35:17'),
(40, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-08-29 02:40:33', '2024-08-29 02:40:33'),
(41, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:40:33', '2024-08-29 02:40:33'),
(42, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 02:40:39', '2024-08-29 02:40:39'),
(43, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-08-29 02:41:11', '2024-08-29 02:41:11'),
(44, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:41:11', '2024-08-29 02:41:11'),
(45, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 02:41:14', '2024-08-29 02:41:14'),
(46, 1, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"55iO0qKhYu75o7LPODURA9rPi7XgS3xvJPVaSwji\",\"email\":\"admin@admin.com\",\"password\":\"*****-filtered-out-*****\"}', '2024-08-29 02:42:17', '2024-08-29 02:42:17'),
(47, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-08-29 02:42:18', '2024-08-29 02:42:18'),
(48, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:42:18', '2024-08-29 02:42:18'),
(49, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 02:42:22', '2024-08-29 02:42:22'),
(50, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-08-29 02:42:36', '2024-08-29 02:42:36'),
(51, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:42:36', '2024-08-29 02:42:36'),
(52, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 02:42:39', '2024-08-29 02:42:39'),
(53, 1, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"v7qY4ZxTowFWRM2QwR0vEd44ZThOlQTWOXL7eK3E\",\"email\":\"admin@admin.com\",\"password\":\"*****-filtered-out-*****\"}', '2024-08-29 02:45:02', '2024-08-29 02:45:02'),
(54, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-08-29 02:45:03', '2024-08-29 02:45:03'),
(55, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 02:45:03', '2024-08-29 02:45:03'),
(56, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 02:47:55', '2024-08-29 02:47:55'),
(57, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 03:07:09', '2024-08-29 03:07:09'),
(58, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 03:07:15', '2024-08-29 03:07:15'),
(59, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 03:07:56', '2024-08-29 03:07:56'),
(60, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 03:08:00', '2024-08-29 03:08:00'),
(61, 1, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"FRvuJxdloya9CVt8J7PQ9kCSR9O4yjSkZSS3OCA3\",\"email\":\"admin@admin.com\",\"password\":\"*****-filtered-out-*****\"}', '2024-08-29 03:10:28', '2024-08-29 03:10:28'),
(62, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 03:10:29', '2024-08-29 03:10:29'),
(63, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 03:11:37', '2024-08-29 03:11:37'),
(64, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-29 03:12:42', '2024-08-29 03:12:42'),
(65, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-29 03:12:47', '2024-08-29 03:12:47'),
(66, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-30 21:25:45', '2024-08-30 21:25:45'),
(67, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-30 21:39:11', '2024-08-30 21:39:11'),
(68, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-31 00:21:35', '2024-08-31 00:21:35'),
(69, 1, 'admin/about', 'GET', '127.0.0.1', '[]', '2024-08-31 00:29:43', '2024-08-31 00:29:43'),
(70, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-08-31 00:29:58', '2024-08-31 00:29:58'),
(71, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-08-31 00:30:05', '2024-08-31 00:30:05'),
(72, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-08-31 00:30:09', '2024-08-31 00:30:09'),
(73, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-31 00:30:19', '2024-08-31 00:30:19'),
(74, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-31 21:52:02', '2024-08-31 21:52:02'),
(75, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-08-31 22:06:50', '2024-08-31 22:06:50'),
(76, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-08-31 22:26:58', '2024-08-31 22:26:58'),
(77, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-08-31 22:27:29', '2024-08-31 22:27:29'),
(78, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-08-31 22:29:04', '2024-08-31 22:29:04'),
(79, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-08-31 22:31:16', '2024-08-31 22:31:16'),
(80, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-08-31 22:31:29', '2024-08-31 22:31:29'),
(81, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-08-31 23:34:16', '2024-08-31 23:34:16'),
(82, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-31 23:34:48', '2024-08-31 23:34:48'),
(83, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Custom User\",\"icon\":\"icon-address-book\",\"uri\":\"customuser\",\"roles\":[null],\"permission\":null,\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\"}', '2024-08-31 23:35:29', '2024-08-31 23:35:29'),
(84, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-31 23:35:30', '2024-08-31 23:35:30'),
(85, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-31 23:35:33', '2024-08-31 23:35:33'),
(86, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-31 23:35:39', '2024-08-31 23:35:39'),
(87, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-08-31 23:35:56', '2024-08-31 23:35:56'),
(88, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-08-31 23:56:00', '2024-08-31 23:56:00'),
(89, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-08-31 23:58:39', '2024-08-31 23:58:39'),
(90, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-08-31 23:59:36', '2024-08-31 23:59:36'),
(91, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 00:13:50', '2024-09-01 00:13:50'),
(92, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 00:14:28', '2024-09-01 00:14:28'),
(93, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 00:14:46', '2024-09-01 00:14:46'),
(94, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 00:29:26', '2024-09-01 00:29:26'),
(95, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":null,\"email\":null,\"password\":null,\"image\":null,\"submit\":\"submit\"}', '2024-09-01 00:29:30', '2024-09-01 00:29:30'),
(96, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 00:29:39', '2024-09-01 00:29:39'),
(97, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":null,\"email\":null,\"password\":null,\"image\":null,\"submit\":\"submit\"}', '2024-09-01 00:30:19', '2024-09-01 00:30:19'),
(98, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 00:30:44', '2024-09-01 00:30:44'),
(99, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 00:30:47', '2024-09-01 00:30:47'),
(100, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":null,\"email\":null,\"password\":null,\"image\":null,\"submit\":\"submit\"}', '2024-09-01 00:30:49', '2024-09-01 00:30:49'),
(101, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 00:30:50', '2024-09-01 00:30:50'),
(102, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":\"test\",\"email\":\"test@test.com\",\"password\":\"*****-filtered-out-*****\",\"image\":\"test image\",\"submit\":\"submit\"}', '2024-09-01 00:31:23', '2024-09-01 00:31:23'),
(103, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 00:31:24', '2024-09-01 00:31:24'),
(104, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:04:28', '2024-09-01 01:04:28'),
(105, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":\"test1\",\"email\":\"test1@test.com\",\"password\":\"*****-filtered-out-*****\",\"submit\":\"submit\"}', '2024-09-01 01:05:06', '2024-09-01 01:05:06'),
(106, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:05:07', '2024-09-01 01:05:07'),
(107, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":\"test2\",\"email\":\"test2@test.com\",\"password\":\"*****-filtered-out-*****\",\"submit\":\"submit\"}', '2024-09-01 01:06:41', '2024-09-01 01:06:41'),
(108, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:07:10', '2024-09-01 01:07:10'),
(109, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":\"test2\",\"email\":\"test2@test.com\",\"password\":\"*****-filtered-out-*****\",\"submit\":\"submit\"}', '2024-09-01 01:07:20', '2024-09-01 01:07:20'),
(110, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:07:21', '2024-09-01 01:07:21'),
(111, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:17:11', '2024-09-01 01:17:11'),
(112, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":\"test3\",\"email\":\"test3@test.com\",\"password\":\"*****-filtered-out-*****\",\"submit\":\"submit\"}', '2024-09-01 01:17:40', '2024-09-01 01:17:40'),
(113, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:17:41', '2024-09-01 01:17:41'),
(114, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:18:15', '2024-09-01 01:18:15'),
(115, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":\"test4\",\"email\":\"test4@test.com\",\"password\":\"*****-filtered-out-*****\",\"submit\":\"submit\"}', '2024-09-01 01:18:43', '2024-09-01 01:18:43'),
(116, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:18:43', '2024-09-01 01:18:43'),
(117, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:22:51', '2024-09-01 01:22:51'),
(118, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":\"test5\",\"email\":\"test5@test.com\",\"password\":\"*****-filtered-out-*****\",\"submit\":\"submit\"}', '2024-09-01 01:23:17', '2024-09-01 01:23:17'),
(119, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:23:18', '2024-09-01 01:23:18'),
(120, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:23:41', '2024-09-01 01:23:41'),
(121, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":\"test6\",\"email\":\"test6@test.com\",\"password\":\"*****-filtered-out-*****\",\"submit\":\"submit\"}', '2024-09-01 01:27:27', '2024-09-01 01:27:27'),
(122, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:27:28', '2024-09-01 01:27:28'),
(123, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:32:45', '2024-09-01 01:32:45'),
(124, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":null,\"email\":null,\"password\":null,\"submit\":\"submit\"}', '2024-09-01 01:32:50', '2024-09-01 01:32:50'),
(125, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:32:50', '2024-09-01 01:32:50'),
(126, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:33:13', '2024-09-01 01:33:13'),
(127, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":\"test6\",\"email\":null,\"password\":null,\"submit\":\"submit\"}', '2024-09-01 01:33:21', '2024-09-01 01:33:21'),
(128, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:33:21', '2024-09-01 01:33:21'),
(129, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-09-01 01:38:26', '2024-09-01 01:38:26'),
(130, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-09-01 01:39:59', '2024-09-01 01:39:59'),
(131, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-09-01 01:40:08', '2024-09-01 01:40:08'),
(132, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-09-01 01:40:17', '2024-09-01 01:40:17'),
(133, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-09-01 01:40:21', '2024-09-01 01:40:21'),
(134, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-09-01 01:40:26', '2024-09-01 01:40:26'),
(135, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-09-01 01:42:43', '2024-09-01 01:42:43'),
(136, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2024-09-01 01:42:56', '2024-09-01 01:42:56'),
(137, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-09-01 01:43:07', '2024-09-01 01:43:07'),
(138, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '[]', '2024-09-01 01:43:10', '2024-09-01 01:43:10'),
(139, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2024-09-01 01:43:14', '2024-09-01 01:43:14'),
(140, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 01:59:51', '2024-09-01 01:59:51'),
(141, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":\"test6\",\"email\":\"test6@test.com\",\"password\":\"*****-filtered-out-*****\",\"submit\":\"submit\"}', '2024-09-01 02:00:43', '2024-09-01 02:00:43'),
(142, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 02:00:43', '2024-09-01 02:00:43'),
(143, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":null,\"email\":null,\"password\":null,\"submit\":\"submit\"}', '2024-09-01 02:59:08', '2024-09-01 02:59:08'),
(144, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 02:59:09', '2024-09-01 02:59:09'),
(145, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 03:16:15', '2024-09-01 03:16:15'),
(146, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":\"test7\",\"email\":null,\"password\":null,\"submit\":\"submit\"}', '2024-09-01 03:16:27', '2024-09-01 03:16:27'),
(147, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 03:16:28', '2024-09-01 03:16:28'),
(148, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 03:18:48', '2024-09-01 03:18:48'),
(149, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":null,\"email\":null,\"password\":null,\"submit\":\"submit\"}', '2024-09-01 03:18:54', '2024-09-01 03:18:54'),
(150, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 03:18:55', '2024-09-01 03:18:55'),
(151, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 03:19:58', '2024-09-01 03:19:58'),
(152, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":null,\"email\":null,\"password\":null,\"submit\":\"submit\"}', '2024-09-01 03:20:02', '2024-09-01 03:20:02'),
(153, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 03:20:02', '2024-09-01 03:20:02'),
(154, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":null,\"email\":null,\"password\":null,\"submit\":\"submit\"}', '2024-09-01 03:21:08', '2024-09-01 03:21:08'),
(155, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 03:21:08', '2024-09-01 03:21:08'),
(156, 1, 'admin/customuser', 'POST', '127.0.0.1', '{\"_token\":\"Nd0jNTJPkdSQ66659hXN6TvyJr0R03R7EZYWYN3h\",\"name\":null,\"email\":null,\"password\":null,\"submit\":\"submit\"}', '2024-09-01 03:22:40', '2024-09-01 03:22:40'),
(157, 1, 'admin/customuser', 'GET', '127.0.0.1', '[]', '2024-09-01 03:22:41', '2024-09-01 03:22:41');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2024-08-28 02:02:55', '2024-08-28 02:02:55');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`, `email`, `status`) VALUES
(1, 'admin', '$2y$10$KwRyiEZNRCW14veGxw5pSeKLZioa2rhQDRfpqC/h27y0z.eo5.Un2', 'Administrator', NULL, NULL, '2024-08-28 02:02:55', '2024-08-28 02:02:55', 'admin@admin.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_user`
--

CREATE TABLE `custom_user` (
  `userid` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_user`
--

INSERT INTO `custom_user` (`userid`, `name`, `email`, `password`, `image`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@test.com', '$2y$10$s8nhl6qXXM8T.kwID1HE..a69i4woahnSTrleatdTccnGm/Q3slXS', 'test image', '2024-09-01 00:31:23', '2024-09-01 00:31:23'),
(2, 'test1', 'test1@test.com', '$2y$10$yyuUPtn0xSxBR.o1ZVOTPOhamaSUmVSfzbfIqKWdGnExXmqLsS20a', 'D:\\xampp-7.4.1\\tmp\\php2492.tmp', '2024-09-01 01:05:07', '2024-09-01 01:05:07'),
(3, 'test2', 'test2@test.com', '$2y$10$UGAYub4vV.4Z6rXoTZO0HuIKprNnoWvIfnoTj.3RblWj.mcIyqa7e', 'uploads/images/1725174440_Screenshot 2024-08-21 at 13-58-42 Admin Administrator Create.png', '2024-09-01 01:07:20', '2024-09-01 01:07:20'),
(4, 'test3', 'test3@test.com', '$2y$10$p7Hx5YsLAB9U13nU7u.dU.BnotAKZNcuSfu.hqbOC2jQES1Hgg5F2', 'uploads/imagess/1725175060_Screenshot 2024-08-21 at 13-58-42 Admin Administrator Create.png', '2024-09-01 01:17:40', '2024-09-01 01:17:40'),
(5, 'test4', 'test4@test.com', '$2y$10$tDSfPrSBmVmwdgiqVCmcB.CwXcIKnIP1aun64wkOXquZOaLJRLBTS', 'uploads/images/1725175123_Screenshot 2024-08-21 at 13-58-42 Admin Administrator Create.png', '2024-09-01 01:18:43', '2024-09-01 01:18:43'),
(6, 'test5', 'test5@test.com', '$2y$10$fEnMYJA5wVtRCmenZ2LeM.n33fqvsCDW36Q5w.a6IRMvRQ.pFPqce', '1725175398_Screenshot 2024-08-21 at 13-58-42 Admin Administrator Create.png', '2024-09-01 01:23:18', '2024-09-01 01:23:18'),
(7, 'test6', 'test6@test.com', '$2y$10$A8Z4vilyuLolVB2gP8lWr.UWOvXsrG47YO1UTmasxTF/2eGn1436O', '1725177643_Screenshot 2024-08-21 at 13-58-42 Admin Administrator Create.png', '2024-09-01 02:00:43', '2024-09-01 02:00:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_08_31_040047_add_status_to_admin_users', 2),
(7, '2024_08_31_070952_create_custom_user_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `custom_user`
--
ALTER TABLE `custom_user`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `custom_user_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custom_user`
--
ALTER TABLE `custom_user`
  MODIFY `userid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
