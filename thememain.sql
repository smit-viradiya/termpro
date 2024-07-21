-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2024 at 02:55 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thememain`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'ff', 'dd@gmail.com', 'dd', '2024-06-27 06:26:59', '2024-06-27 06:26:59'),
(2, 'smit', 'smit@gmail.com', 'Hello', '2024-07-18 20:32:50', '2024-07-18 20:32:50'),
(3, 'Maulik', 'maulik@gmail.com', 'Hello', '2024-07-18 20:33:25', '2024-07-18 20:33:25'),
(4, 'aak', 'aak@gmail.com', 'hyyy', '2024-07-21 04:47:50', '2024-07-21 04:47:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_06_27_111850_create_contacts_table', 2),
(6, '2024_06_27_112541_create_projects_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_title` varchar(255) NOT NULL,
  `category` enum('Web Design','Branding','Mobile App') NOT NULL,
  `featured_image` varchar(255) NOT NULL,
  `project_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_title`, `category`, `featured_image`, `project_description`, `created_at`, `updated_at`) VALUES
(1, 'Project Name', 'Branding', '01J1CQXBDY5XVD0BMXSTK4JEXH.jpg', 'Project Name', '2024-06-27 06:09:52', '2024-06-27 06:09:52'),
(2, 'Your Maches', 'Mobile App', '01J1D7D5KF59XMXTVPH25R3DAR.jpg', 'Your Maches', '2024-06-27 10:40:39', '2024-06-27 10:40:39'),
(3, 'Branding 2', 'Branding', '01J1D7DVXHF1SRNQP1ETRH1RA3.jpg', 'Branding 2', '2024-06-27 10:41:02', '2024-06-27 10:41:02'),
(4, 'Branding 3', 'Branding', '01J1D7EMXKJQCVH6TRVZ0MK385.jpg', 'Branding 3', '2024-06-27 10:41:28', '2024-06-27 10:41:28'),
(5, 'Branding 4', 'Branding', '01J1D7FDN5BA65XNVGNBFDMPFB.jpg', 'Branding 4', '2024-06-27 10:41:53', '2024-06-27 10:41:53'),
(6, 'Dev 2', 'Mobile App', '01J1D7G5XQTR0A5WHPN8TNZ6ZY.jpg', 'Dev 2', '2024-06-27 10:42:18', '2024-06-27 10:42:18'),
(7, 'One Place', 'Web Design', '01J1D7GZFWV61D34DK26ZGR8X7.jpg', 'One Place', '2024-06-27 10:42:44', '2024-06-27 10:42:44'),
(8, 'History Desing', 'Web Design', '01J1D7HY52RQAD7CCTTYVZTXKW.jpg', 'History Desing', '2024-06-27 10:43:15', '2024-06-27 10:43:15'),
(9, 'Video Stream', 'Web Design', '01J1D7JV7SY5VPN0EPSZQ4GXH0.jpg', 'Video Stream', '2024-06-27 10:43:45', '2024-06-27 10:43:45'),
(10, 'Just Mobile', 'Mobile App', '01J1D7KDXV73YVDE96GKRS943A.jpg', 'Just Mobile', '2024-06-27 10:44:04', '2024-06-27 10:44:04'),
(11, 'Img Models', 'Branding', '01J1D7M4AT94ZBPAVRZ5W75ANE.jpg', 'Img Models', '2024-06-27 10:44:27', '2024-06-27 10:44:27'),
(12, 'LolipopsMo', 'Branding', '01J1D7MXSW21VWMF0MB29MXX4W.jpg', 'LolipopsMo', '2024-06-27 10:44:53', '2024-06-27 10:44:53'),
(13, 'shoe', 'Branding', '01J3990WTTKJDKQMVFRKNCAKAV.avif', 'shoes\n', '2024-07-21 03:53:20', '2024-07-21 03:53:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rohit Italiya', 'rohititaliaya@gmail.com', NULL, '$2y$12$5aEf8rAvo0HRzRYnKcv2KOM3SijU0saZmwgfh1.UPP/ZTjpoGJ4Ua', NULL, '2024-06-27 04:33:11', '2024-06-27 04:33:11'),
(2, 'admin', 'admin@gmail.com', NULL, '$2y$12$qI6YxkD7w1604jLNFKWDU.uBNuNtr8JZMLtOBT86moFpaWBErQOrK', 'QGO8Y7gUOg8H6WSxdAhIfdpoYAyfkGI12cKJGTLejxST0MCv9CQ2BTzmKPUM', '2024-06-27 05:50:25', '2024-06-27 05:50:25'),
(3, 'smit', 'smitviradiya55@gmail.com', NULL, '$2y$12$9QahKLD2f6JyG.DBM40Y5eXswZpTAsyCHwEuzgtvLXDp41GOS5TfC', NULL, '2024-07-18 18:46:21', '2024-07-18 18:46:21'),
(4, 'smit viradiya', 'smitviradiya3@gmail.com', NULL, '$2y$12$71cwNdI56KQr5jEGyJg09eupaLvjclMRvx5P/GVk.taof1C/xW7RO', NULL, '2024-07-21 03:45:47', '2024-07-21 03:45:47'),
(5, 'smit', 'smit@gmail.com', NULL, '$2y$12$ZyJtm3Oih62BNVCwRf0vGuBJKPL5HutXKyQy5Ck70j3mllXiVWHGi', NULL, '2024-07-21 04:43:01', '2024-07-21 04:43:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
