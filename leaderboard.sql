-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 24, 2024 at 08:32 PM
-- Server version: 8.0.31
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leaderboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
CREATE TABLE IF NOT EXISTS `activities` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `points` int NOT NULL DEFAULT '20',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activities_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `user_id`, `points`, `created_at`, `updated_at`) VALUES
(1, 1, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(2, 1, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(3, 1, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(4, 1, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(5, 1, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(6, 2, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(7, 2, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(8, 2, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(9, 3, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(10, 4, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(11, 4, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(12, 5, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(13, 5, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(14, 5, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(15, 5, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(16, 5, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(17, 6, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(18, 6, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(19, 6, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(20, 6, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(21, 7, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(22, 7, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(23, 7, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(24, 7, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(25, 8, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(26, 9, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(27, 9, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(28, 9, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(29, 9, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(30, 10, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(31, 10, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23'),
(32, 10, 20, '2024-10-24 12:40:23', '2024-10-24 12:40:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_24_173103_create_activities_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` int DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `rank`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Clementina Altenwerth', 'ebins@example.net', '2024-10-24 12:40:23', '$2y$12$c7mtDgVe0M6FpBXwRXu.D.oaYYdIuwbM2geblHx35PxITkr9fZ.Ua', 1, 'SpszesYXvm', '2024-10-24 12:40:23', '2024-10-24 13:07:41'),
(2, 'Prof. Rebekah O\'Kon', 'margarette.gerlach@example.com', '2024-10-24 12:40:23', '$2y$12$c7mtDgVe0M6FpBXwRXu.D.oaYYdIuwbM2geblHx35PxITkr9fZ.Ua', 6, 'Bs2fQ6m7a9', '2024-10-24 12:40:23', '2024-10-24 13:07:42'),
(3, 'Garnett Hessel', 'lavina.stokes@example.com', '2024-10-24 12:40:23', '$2y$12$c7mtDgVe0M6FpBXwRXu.D.oaYYdIuwbM2geblHx35PxITkr9fZ.Ua', 9, 'R5QgD0OqG7', '2024-10-24 12:40:23', '2024-10-24 13:07:42'),
(4, 'Leonie Fritsch', 'alicia81@example.net', '2024-10-24 12:40:23', '$2y$12$c7mtDgVe0M6FpBXwRXu.D.oaYYdIuwbM2geblHx35PxITkr9fZ.Ua', 8, 'G2rdv84K9M', '2024-10-24 12:40:23', '2024-10-24 13:07:42'),
(5, 'Margarita Senger', 'braxton.swift@example.net', '2024-10-24 12:40:23', '$2y$12$c7mtDgVe0M6FpBXwRXu.D.oaYYdIuwbM2geblHx35PxITkr9fZ.Ua', 1, 'DjTrA55Qcy', '2024-10-24 12:40:23', '2024-10-24 13:07:41'),
(6, 'Nona Raynor', 'cory16@example.org', '2024-10-24 12:40:23', '$2y$12$c7mtDgVe0M6FpBXwRXu.D.oaYYdIuwbM2geblHx35PxITkr9fZ.Ua', 3, 'dK7irrzg4u', '2024-10-24 12:40:23', '2024-10-24 13:07:41'),
(7, 'Talia Fadel', 'lgislason@example.org', '2024-10-24 12:40:23', '$2y$12$c7mtDgVe0M6FpBXwRXu.D.oaYYdIuwbM2geblHx35PxITkr9fZ.Ua', 3, '8ifFgaLYL2', '2024-10-24 12:40:23', '2024-10-24 13:07:41'),
(8, 'Macey Spinka DDS', 'bmante@example.com', '2024-10-24 12:40:23', '$2y$12$c7mtDgVe0M6FpBXwRXu.D.oaYYdIuwbM2geblHx35PxITkr9fZ.Ua', 9, 'xQbXiP4WlO', '2024-10-24 12:40:23', '2024-10-24 13:07:42'),
(9, 'Norberto Fisher MD', 'abbey.mueller@example.org', '2024-10-24 12:40:23', '$2y$12$c7mtDgVe0M6FpBXwRXu.D.oaYYdIuwbM2geblHx35PxITkr9fZ.Ua', 3, 'iIyrGYl88X', '2024-10-24 12:40:23', '2024-10-24 13:07:42'),
(10, 'Alize Rowe', 'xlangworth@example.com', '2024-10-24 12:40:23', '$2y$12$c7mtDgVe0M6FpBXwRXu.D.oaYYdIuwbM2geblHx35PxITkr9fZ.Ua', 6, 'gZGz2Hfvfv', '2024-10-24 12:40:23', '2024-10-24 13:07:42');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
