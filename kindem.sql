-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2022 at 08:41 AM
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
-- Database: `kindem`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `level`, `created_at`, `updated_at`) VALUES
('8plSIjT7Jq', 'ANIMAL', 'https://drive.google.com/uc?id=1fuYCltcjffFwDRxF06ojepEEx04gy1h1&export=media', 3, '2021-10-27 09:44:53', '2021-10-28 07:19:50'),
('agkha0rF1Z', 'NEEDS', 'https://drive.google.com/uc?id=1iLuJaVEovwDZ6nSjgxn3oEXbX4_7sSO1&export=media', 2, '2021-10-27 09:44:29', '2021-10-28 07:16:32'),
('dVpFFDlkVs', 'PROFESSION', 'https://drive.google.com/uc?id=1oQJ8yG5MCYM6ERHOwDkjGwk6GgkJ8beM&export=media', 6, '2021-10-27 09:45:47', '2021-10-28 07:25:11'),
('EnPbsNYv30', 'UNIVERSE', 'https://drive.google.com/uc?id=1EMi7H3WugxY0DccN0Ea0pmO-hXKMPuDI&export=media', 10, '2021-10-27 09:47:07', '2021-10-28 07:29:22'),
('gwZXhPEkNQ', 'ENVIRONMENT', 'https://drive.google.com/uc?id=1tFWGsBKSwp3pzoMLGbXuyhG1BMD0R7wI&export=media', 11, '2021-10-27 09:44:08', '2021-10-28 07:15:43'),
('iTDaqkOaIf', 'MY SELF', 'https://drive.google.com/uc?id=11K7GA4TjUryd1MK0tfbgMav_35DVrVph&export=media', 1, '2021-10-27 09:39:41', '2021-11-03 06:52:46'),
('l8qS5IT1Q9', 'RECREATION', 'https://drive.google.com/uc?id=1yivSwmbKiSezUVy2lqyzJWkpT0EeHBZL&export=media', 5, '2021-10-27 09:45:35', '2021-10-28 07:24:19'),
('NDztn6Aec1', 'COMMUNICATION TOOL', 'https://drive.google.com/uc?id=13W-BF_ERKunse2xhMZZtZLb_usn2ZI2j&export=media', 8, '2021-10-27 09:46:34', '2021-10-28 07:27:27'),
('QC4B3q0XGj', 'PLANT', 'https://drive.google.com/uc?id=1E1Sm9VxN1BOyQPl0Don1bYuRar0zamo-&export=media', 4, '2021-10-27 09:45:09', '2021-10-28 07:23:23'),
('rlddYB56KX', 'NATIVE LAND', 'https://drive.google.com/uc?id=1KitRIJiwG6MI8CUuSfqv3Lvf46-74JxX&export=media', 9, '2021-10-27 09:46:50', '2021-10-28 07:28:29'),
('uOxGSRQRZF', 'AIR WATER FIRE', 'https://drive.google.com/uc?id=1FNs_9vkaf0ytBwLC_7TX2ElQvenJcPXR&export=media', 7, '2021-10-27 09:46:09', '2021-10-28 07:26:42');

-- --------------------------------------------------------

--
-- Table structure for table `complete_categories`
--

CREATE TABLE `complete_categories` (
  `id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `is_complete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complete_categories`
--

INSERT INTO `complete_categories` (`id`, `category_id`, `user_id`, `is_complete`, `created_at`, `updated_at`) VALUES
('6ResIknPdD', 'NDztn6Aec1', 3, 0, '2022-04-03 05:27:05', '2022-04-03 05:27:05'),
('9p3dgOiUK3', 'uOxGSRQRZF', 3, 0, '2022-04-03 05:27:05', '2022-04-03 05:27:05'),
('Bd1qYp3vZ2', 'gwZXhPEkNQ', 3, 0, '2022-04-03 05:27:05', '2022-04-03 05:27:05'),
('D11jN5yDcQ', 'l8qS5IT1Q9', 3, 0, '2022-04-03 05:27:05', '2022-04-03 05:27:05'),
('EWIR7NZJZF', '8plSIjT7Jq', 3, 0, '2022-04-03 05:27:05', '2022-04-03 05:27:05'),
('hXrgQt5lWe', 'dVpFFDlkVs', 3, 0, '2022-04-03 05:27:05', '2022-04-03 05:27:05'),
('oJKvfx5Rjn', 'iTDaqkOaIf', 3, 1, '2022-04-03 05:27:05', '2022-04-21 00:18:10'),
('qzmSu1Hmur', 'agkha0rF1Z', 3, 0, '2022-04-03 05:27:05', '2022-04-03 05:27:05'),
('WbTULuYbiL', 'QC4B3q0XGj', 3, 0, '2022-04-03 05:27:05', '2022-04-03 05:27:05'),
('WowRUMPAjE', 'rlddYB56KX', 3, 0, '2022-04-03 05:27:05', '2022-04-03 05:27:05'),
('ztBCRFnEmz', 'EnPbsNYv30', 3, 0, '2022-04-03 05:27:05', '2022-04-03 05:27:05');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indonesia_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `english_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_course` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_category_id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_voice` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `indonesia_text`, `english_text`, `image`, `image_course`, `sub_category_id`, `is_voice`, `created_at`, `updated_at`) VALUES
('0aFa0vTWLm', 'AIR', 'WATER', 'https://drive.google.com/uc?id=1NJ5Ginsk5zIxtcvVre4LptKWMEotBPat&export=media', NULL, '5tqy8Q0anH', 1, '2021-11-04 02:24:38', '2021-11-04 02:24:38'),
('0raI0RHnqx', 'TUJUH', 'SEVEN', 'https://drive.google.com/uc?id=1Kgn9fJBMGDKlR-Bc58Wq7E1fvQhmfEa5&export=media', NULL, 'lQfg1njp9J', 1, '2021-10-27 11:16:28', '2021-11-01 10:19:45'),
('1cAstesWzI', 'TELINGA', 'EAR', 'https://drive.google.com/uc?id=1usLs6ng8Wyc_ZRDl94mL6U9VVlrztLUZ&export=media', NULL, 'kd4oos26tl', 0, '2021-10-27 10:50:52', '2021-11-01 06:50:55'),
('1jOF9VLkCq', 'KORAN', 'NEWSPAPER', 'https://drive.google.com/uc?id=1I7vJ33KUdTT1Q67F7YeF7CXYeAYKl2Sv&export=media', NULL, '4ZMJBI87Ii', 1, '2021-11-04 02:34:22', '2021-11-04 02:34:22'),
('2otGyf0qoe', 'TEH', 'TEA', 'https://drive.google.com/uc?id=11KjbzKntP6FTrAkm8UQTZwHFSuynvWkR&export=media', NULL, 'UXogDXaamX', 1, '2021-11-02 01:41:32', '2021-11-02 01:41:32'),
('2PfoLX2bYD', 'SATURNUS', 'SATURN', 'https://drive.google.com/uc?id=14q29mP0pTiNp8JZLOUu3mVDYNnEtNZnx&export=media', NULL, 'G4bbWyjO99', 1, '2021-11-04 02:55:49', '2021-11-04 02:55:49'),
('34bIDiBClG', 'DELAPAN', 'EIGHT', 'https://drive.google.com/uc?id=1OCoq5DKKfL8lGEWCbduPtSntXlqIIUmB&export=media', NULL, 'lQfg1njp9J', 1, '2021-10-27 11:16:53', '2021-11-01 10:21:34'),
('3JRCjsKslO', 'Y', 'Y', 'https://drive.google.com/uc?id=1IAjksEN9XHu6qu2IK0tLZF59q9yOwuuF&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 11:04:59', '2021-11-01 07:00:55'),
('47AX1WRn3G', 'J', 'J', 'https://drive.google.com/uc?id=1cQUZed-GInmxjmUQyQz-wpVUnXXPLcoO&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 10:57:34', '2021-11-01 09:43:12'),
('4hMc2krnHT', 'UNGU', 'PURPLE', 'https://drive.google.com/uc?id=1N4BE1CVffUEyY1gl24nm6mu25U2X74dT&export=media', NULL, 'lIlykI7yix', 1, '2021-10-27 11:10:30', '2021-11-01 09:48:42'),
('4I8cvGKu9U', 'IBU', 'MOTHER', 'https://drive.google.com/uc?id=15c0JoVf1hHzMxCvxslUcJBcg7pp6xqZ9&export=media', NULL, 'iQrnJmYOoG', 1, '2021-11-01 21:46:12', '2021-11-02 21:36:18'),
('5kvk6W2rDf', 'TANGAN', 'HAND', 'https://drive.google.com/uc?id=1wVP-r6RAxtFhm0pRWoaRCnaX5g8RUbTz&export=media', NULL, 'kd4oos26tl', 0, '2021-10-27 10:52:01', '2021-11-01 06:47:26'),
('675XYEHK4I', 'URANUS', 'URANUS', 'https://drive.google.com/uc?id=1DqntkTJ3pA03_Uv928NZnaH-mQTTdIXP&export=media', NULL, 'G4bbWyjO99', 1, '2021-11-04 02:56:40', '2021-11-04 02:56:40'),
('6CO55MClMB', 'KAKEK', 'GRANDFATHER', 'https://drive.google.com/uc?id=1NhcwhWksdxKwLHPsVcaCtzNYWdavikIK&export=media', NULL, 'iQrnJmYOoG', 1, '2021-11-01 21:49:48', '2021-11-02 21:39:20'),
('6GSB5nzhyo', 'TAS', 'BAG', 'https://drive.google.com/uc?id=189rYLB0G4pp0FtBqtHN-qAWkPCyOHdzd&export=media', NULL, 'e4iJNgm6Ca', 1, '2021-11-01 10:38:30', '2021-11-01 10:38:30'),
('6jineGKQUi', 'GUNUNG', 'MOUNTAIN', 'https://drive.google.com/uc?id=1ajlOuZ0_wbjYewqP3sMLW0C5dc6AHkCC&export=media', NULL, 'jsDsCkdOPZ', 1, '2021-11-04 02:10:26', '2021-11-04 02:10:26'),
('6LShPoNxwp', 'KUNING', 'YELLOW', 'https://drive.google.com/uc?id=1ENh0vuPcAdIflSdlUzP8c1mPkJyLUcNE&export=media', NULL, 'lIlykI7yix', 1, '2021-10-27 11:11:19', '2021-11-01 09:52:13'),
('6PXkZ58QOz', 'BIRU', 'BLUE', 'https://drive.google.com/uc?id=16KlNB5iOZcdiQztIt4uDk_xp_uhp599s&export=media', NULL, 'lIlykI7yix', 1, '2021-10-27 11:10:45', '2021-11-01 09:49:46'),
('6ZKGSoQqsq', 'SATU', 'ONE', 'https://drive.google.com/uc?id=1woOR_lH2KCRwXACq4G6cQSsgxtibw45l&export=media', NULL, 'lQfg1njp9J', 1, '2021-10-27 11:14:51', '2021-11-01 10:06:57'),
('732d6aRHcP', 'S', 'S', 'https://drive.google.com/uc?id=1VhJxBWmdMSGwVQio3EZp5Usd5W8ZdWoK&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 10:59:37', '2021-11-01 09:24:59'),
('81ipxaUaRF', 'JUPITER', 'JUPITER', 'https://drive.google.com/uc?id=1nHRQacePEMq0lCnJSXlELt9raj4bu2Kn&export=media', NULL, 'G4bbWyjO99', 1, '2021-11-04 02:54:43', '2021-11-04 02:54:43'),
('8ckWF6i0er', 'SINGA', 'LION', 'https://drive.google.com/uc?id=1F32QEiNkoJ8zoIQhFMih_6uS6XWFveX5&export=media', NULL, 'ygubUyqQoN', 1, '2021-11-02 22:07:00', '2021-11-02 22:07:00'),
('8n5GEXqASn', 'NOL', 'ZERO', 'https://drive.google.com/uc?id=1zJRDztSriv1emZhMoPdB-H5AzwsLiERa&export=media', NULL, 'lQfg1njp9J', 1, '2021-10-27 11:14:34', '2021-11-01 10:00:52'),
('8SOuxj4IVL', 'ENAM', 'SIX', 'https://drive.google.com/uc?id=1UbwUS4RsUQCSkqFnI_1809plAUbQiP8s&export=media', NULL, 'lQfg1njp9J', 1, '2021-10-27 11:16:13', '2021-11-01 10:18:08'),
('8sVdGgTweV', 'CELANA PANJANG', 'TROUSER', 'https://drive.google.com/uc?id=1nP0sja3jogUb4_I2hNYgafzLhBeCLu_l&export=media', NULL, 'UlSaRWh3E1', 1, '2021-11-02 01:29:41', '2021-11-02 01:29:41'),
('8YkDz24v7k', 'NASI', 'RICE', 'https://drive.google.com/uc?id=15QesyupPidj2DIgK-795AVQRFueuDmwQ&export=media', NULL, 'UXogDXaamX', 1, '2021-11-02 01:35:06', '2021-11-02 01:35:06'),
('96wUddudBO', 'KAPAL', 'SHIP', 'https://drive.google.com/uc?id=1VcTG4vgu4J3wjNjMiadBRd_JVQ46mrXT&export=media', NULL, 'xsF19TMhoZ', 1, '2021-11-04 02:17:51', '2021-11-04 02:17:51'),
('9BHzyskTvL', 'MERAH MUDA', 'PINK', 'https://drive.google.com/uc?id=1ugOm60EtoJ8-xTXQBkzz6fCkjZQ4zEyF&export=media', NULL, 'lIlykI7yix', 1, '2021-10-27 11:10:10', '2021-11-01 09:46:49'),
('9eirKxxjtJ', 'Q', 'Q', 'https://drive.google.com/uc?id=1Lqf4tOTAtiedX84Cd8-_73hi21SPy9y3&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 11:03:56', '2021-11-01 09:04:38'),
('9PngcKu3jV', 'SEPATU', 'SHOES', 'https://drive.google.com/uc?id=1ZK2T-4j2t1zq_BvD0OrAbxeXmn3ww9Jm&export=media', NULL, 'e4iJNgm6Ca', 1, '2021-11-01 10:31:39', '2021-11-01 10:31:39'),
('9Z7ptRkZ5g', 'GAJAH', 'ELEPHANT', 'https://drive.google.com/uc?id=1F6xiIGzRURd_GeiVaVgmpLerDXpdZNBD&export=media', NULL, 'ygubUyqQoN', 1, '2021-11-02 22:00:32', '2021-11-02 22:00:32'),
('9zIpFCxZoI', 'K', 'K', 'https://drive.google.com/uc?id=1nlzpgb_1nTvO5vtGKmCCI5HRUfTshmVP&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 11:02:54', '2021-11-01 09:12:02'),
('a1GDHKhhOt', 'SAPI', 'COW', 'https://drive.google.com/uc?id=1ccQxlcYCF56Fee3A_OwCRrAXcMSZEtLr&export=media', NULL, 'Kx3nrVcSeN', 1, '2021-11-04 01:20:48', '2021-11-04 01:20:48'),
('a32L3ZqBre', 'DAGING', 'MEAT', 'https://drive.google.com/uc?id=1o5WVUbdcI7WiHSbkBPJiWC5hKfyuo00a&export=media', NULL, 'UXogDXaamX', 1, '2021-11-02 01:47:55', '2021-11-02 01:47:55'),
('A3ouuriVfh', 'KEBAKARAN HUTAN', 'FOREST FIRES', 'https://drive.google.com/uc?id=1IE3Q1rFjcw27Od4U5G1f2dK6CLpejPZj&export=media', NULL, 'ZR8Oom877B', 1, '2021-11-04 09:04:58', '2021-11-04 09:04:58'),
('a7WqzS57Tv', 'MERAH', 'RED', 'https://drive.google.com/uc?id=1YPtPD8I7RBqX7LeG47TXEbUntiJBkVY-&export=media', NULL, 'lIlykI7yix', 1, '2021-10-27 11:09:54', '2021-11-01 09:44:53'),
('AAN8SqU79D', 'KUDA ZEBRA', 'ZEBRA', 'https://drive.google.com/uc?id=1Yc_J1FCWFpcTUSBs8bGBZIWPhFMEJ254&export=media', NULL, 'ygubUyqQoN', 1, '2021-11-02 21:56:21', '2021-11-02 21:56:21'),
('aeoescB7Xu', 'U', 'U', 'https://drive.google.com/uc?id=1Uml0j_w8rq8nP6vij1QoQbevgbMsfgqn&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 11:00:02', '2021-11-01 09:20:47'),
('aS1zsXNvrW', 'PENSIL', 'PENCIL', 'https://drive.google.com/uc?id=1IRhpMWtg0MVx-NkPrZM6TX9YVJkNT1Eo&export=media', NULL, 'e4iJNgm6Ca', 1, '2021-11-01 10:36:27', '2021-11-01 10:36:27'),
('att2Lg5hHz', 'GUNUNG MELETUS', 'VOLCANO ERUPTION', 'https://drive.google.com/uc?id=1PvO_2863NXJL_4U4raDnXpQYlLNN24Em&export=media', NULL, 'ZR8Oom877B', 1, '2021-11-04 09:01:19', '2021-11-04 09:01:19'),
('AzhENXtEvP', 'DAUN', 'LEAF', 'https://drive.google.com/uc?id=167FouiKZmi3Qb56SjoYRLXNxPzzy7dXk&export=media', NULL, 'LkcMVU9fBL', 1, '2021-11-04 01:49:13', '2021-11-04 01:49:13'),
('bboFGJEozi', 'MERKURIUS', 'MERCURY', 'https://drive.google.com/uc?id=1jn0VSSK8eVeIiokc-IZ0rPYoiFUPJ83w&export=media', NULL, 'G4bbWyjO99', 1, '2021-11-04 02:50:53', '2021-11-04 02:50:53'),
('BdB6vZmiGm', 'KEMEJA', 'SHIRT', 'https://drive.google.com/uc?id=1oMBLP0hWEi3qHfEZ_q01c3hCwHkl1N8y&export=media', NULL, 'UlSaRWh3E1', 1, '2021-11-02 01:28:19', '2021-11-02 01:28:19'),
('bisjhvxfx7', 'BUNGA', 'FLOWER', 'https://drive.google.com/uc?id=1guySZ4g0V7lsYvhucjhnmEHaNRBtZNI7&export=media', NULL, 'LkcMVU9fBL', 1, '2021-11-04 01:50:27', '2021-11-04 01:50:27'),
('bly0hAKbTQ', 'DAPUR', 'KITCHEN', 'https://drive.google.com/uc?id=1_bcOxO68mKqVS541yMHCyDTzv-0YdI0i&export=media', NULL, 'xRADaFn1It', 1, '2021-11-01 21:43:50', '2021-11-02 21:15:34'),
('BNA1o6Illo', 'API', 'FIRE', 'https://drive.google.com/uc?id=13loTZyPp6_ebmQEFmU1ThgkXRiO_Lee8&export=media', NULL, '5tqy8Q0anH', 1, '2021-11-04 02:25:37', '2021-11-04 02:25:37'),
('bqvENscSWs', 'TELUR', 'EGG', 'https://drive.google.com/uc?id=1OnF_UmGYM0gFCJGxtBQHpMbZqueHBLgJ&export=media', NULL, 'UXogDXaamX', 1, '2021-11-02 01:37:14', '2021-11-02 01:37:14'),
('bvLwcbT2sW', 'KENTONGAN', 'CLAPPER', 'https://drive.google.com/uc?id=1v1-gf03hE548ZjckqvrgabG4lbaGYMD8&export=media', NULL, 'd6HV0jwtEZ', 1, '2021-11-04 09:09:22', '2021-11-04 09:09:22'),
('BWoCSuZLq1', 'LIMA', 'FIVE', 'https://drive.google.com/uc?id=1fQDLPW-v5TuutUPqAsYJgV5BwAV3wP0-&export=media', NULL, 'lQfg1njp9J', 1, '2021-10-27 11:15:57', '2021-11-01 10:15:39'),
('BX3FMd6M20', 'AIR TERJUN', 'WATERFALL', 'https://drive.google.com/uc?id=1hnRTGuBcHcigYREnFbXqcOAWsNsRYVXK&export=media', NULL, 'jsDsCkdOPZ', 1, '2021-11-04 02:11:32', '2021-11-04 02:11:32'),
('C3hp7MAHv5', 'DINDING', 'WALL', 'https://drive.google.com/uc?id=16FaQV5ydjwqx05cJ5PnflGV4ol_yFir0&export=media', NULL, 'xRADaFn1It', 1, '2021-11-01 21:31:12', '2021-11-02 20:57:46'),
('cgMxRnxtpR', 'SAUDARA PEREMPUAN', 'SISTER', 'https://drive.google.com/uc?id=12QQw39LsyxfYGWbRVaTYneZCokABlcw8&export=media', NULL, 'iQrnJmYOoG', 1, '2021-11-01 21:58:23', '2021-11-02 21:49:01'),
('cIVagB3Zzv', 'HIJAU', 'GREEN', 'https://drive.google.com/uc?id=1EYN-ESRaeOjVLDFcc-vO0RRCgfPbQ0Qs&export=media', 'https://drive.google.com/uc?id=1-0Hg4sQ_SOsx2wWwMLH5pZum2Oe7NSXT&export=media', 'lIlykI7yix', 1, '2021-10-27 11:11:00', '2022-04-11 05:31:24'),
('cjLqJv5K8S', 'ROK', 'SKIRT', 'https://drive.google.com/uc?id=13ydnsYv6eY0p_PDLzWBB2QzK2qCXqyhQ&export=media', NULL, 'UlSaRWh3E1', 1, '2021-11-02 01:30:53', '2021-11-02 01:30:53'),
('cO0VJPbBlJ', 'ROTI', 'BREAD', 'https://drive.google.com/uc?id=1pFiEe1B2XswJ3n8KHtVZI6unhpuicbHC&export=media', NULL, 'UXogDXaamX', 1, '2021-11-02 01:36:11', '2021-11-02 01:36:11'),
('CqBONY3sTM', 'R', 'R', 'https://drive.google.com/uc?id=1CYTL5dpAgD1FO80CHQc8o0EJHGSj6nb5&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 10:59:24', '2021-11-01 09:26:21'),
('cRfkiLBPtW', 'HIDUNG', 'NOSE', 'https://drive.google.com/uc?id=1xqVkOA10zRZC205zHRHF1zojY4Io6Dbv&export=media', NULL, 'kd4oos26tl', 0, '2021-10-27 10:49:42', '2021-10-28 23:01:13'),
('D85SQQmRuH', 'V', 'V', 'https://drive.google.com/uc?id=1n9H2GenuZQm6joqw9L1_oZXuOnCSLyse&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 11:00:16', '2021-11-01 09:18:28'),
('dBPcXKEyVP', 'BERUANG', 'BEAR', 'https://drive.google.com/uc?id=1TGFmlD6Ds8PTlxorFQUTZY6Dv3vBAM3-&export=media', NULL, 'ygubUyqQoN', 1, '2021-11-02 22:02:14', '2021-11-02 22:02:14'),
('dSmyHyVHAe', 'TELEPON PINTAR', 'SMARTPHONE', 'https://drive.google.com/uc?id=1NrZvUboiZntW8CrcH-q2snzNT8iHB-JM&export=media', NULL, '4ZMJBI87Ii', 1, '2021-11-04 02:33:14', '2021-11-04 08:50:46'),
('eBmbw188GS', 'DAGU', 'CHIN', 'https://drive.google.com/uc?id=1HE3OoGAlfzhpEIXFBEvNQucUNQmT6IxA&export=media', NULL, 'kd4oos26tl', 0, '2021-10-27 10:53:06', '2021-10-28 22:40:50'),
('EDw1TZH41O', 'JUS', 'JUICE', 'https://drive.google.com/uc?id=1s3ZIM-u5402eKF-lxd3reWNAVjL_8-_D&export=media', NULL, 'UXogDXaamX', 1, '2021-11-02 01:51:26', '2021-11-02 01:51:26'),
('eEe41H3qkW', 'X', 'X', 'https://drive.google.com/uc?id=187zdewOVnScR8-iIa-M5Ejszs0xeHlJ4&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 11:04:47', '2021-11-01 07:07:59'),
('efekszL6Um', 'VENUS', 'VENUS', 'https://drive.google.com/uc?id=1lY-eMewKw_W439g6N9LUMYKZ4CiVMkaG&export=media', NULL, 'G4bbWyjO99', 1, '2021-11-04 02:51:41', '2021-11-04 02:51:41'),
('es7u1MUhD9', 'KAMBING', 'GOAT', 'https://drive.google.com/uc?id=1iKqmM4MNDLQdCRZy-wuxHJWA4RM9FWpv&export=media', NULL, 'Kx3nrVcSeN', 1, '2021-11-04 01:25:06', '2021-11-04 03:02:57'),
('F0P7mdu2HI', 'SAUDARA LAKI-LAKI', 'BROTHER', 'https://drive.google.com/uc?id=1RV5_tRwcY7dkwVCidRTGKiPWewMuWhA5&export=media', NULL, 'iQrnJmYOoG', 1, '2021-11-01 21:56:41', '2021-11-02 21:45:56'),
('F9pqUoU5op', 'PINTU', 'DOOR', 'https://drive.google.com/uc?id=1HBPJLzruvy1obLYRzfDsvPex7G324i2D&export=media', NULL, 'xRADaFn1It', 1, '2021-11-01 21:25:05', '2021-11-01 21:25:05'),
('fAm7Fyjyag', 'ANGIN', 'WIND', 'https://drive.google.com/uc?id=1Mc9Gf8CSHTb2JHaeTcX9LWN3L36vLqmO&export=media', NULL, '5tqy8Q0anH', 1, '2021-11-04 02:28:03', '2021-11-04 02:28:03'),
('FgH3XDUTvn', 'TIGA', 'THREE', 'https://drive.google.com/uc?id=151q30by79lvMq46m6b-60Ba3nSVUnR_j&export=media', NULL, 'lQfg1njp9J', 1, '2021-10-27 11:15:24', '2021-11-01 10:10:08'),
('fQLpaiZZhK', 'SALJU', 'SNOW', 'https://drive.google.com/uc?id=1sGtH-vvRFkCpsp9QLouwjNBSPMIFLukB&export=media', NULL, '5tqy8Q0anH', 1, '2021-11-04 02:29:33', '2021-11-04 02:29:33'),
('frPfztqi1F', 'KANTOR', 'OFFICE', 'https://drive.google.com/uc?id=1bvTM4YW5CGcP6TCvCCxKyMzDbpCgN_du&export=media', NULL, 'Uv1CjrXSOF', 1, '2021-11-04 08:53:21', '2021-11-04 08:53:21'),
('fYyaE7aLNn', 'MULUT', 'MOUTH', 'https://drive.google.com/uc?id=1sM9mrjJECOf_f5lwluwUjAge7qAj1PCd&export=media', NULL, 'kd4oos26tl', 0, '2021-10-27 10:50:35', '2021-11-01 06:57:38'),
('Fze5rbpe6i', 'GORILA', 'GORILLA', 'https://drive.google.com/uc?id=1iyKMXLo-OXWmUsQNOcDNF4EeQy4bJ_uG&export=media', NULL, 'ygubUyqQoN', 1, '2021-11-02 21:52:04', '2021-11-02 21:52:04'),
('G5eCiuj0ky', 'G', 'G', 'https://drive.google.com/uc?id=1CFMjf4ujlw3QDjuFz4aVk_MGbEqHV4h3&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 10:56:54', '2021-11-01 09:39:51'),
('GBojb7ESDZ', 'SUSU', 'MILK', 'https://drive.google.com/uc?id=1pElp99wEl9aSaSGK0ypznOKBeqAfehjU&export=media', NULL, 'UXogDXaamX', 1, '2021-11-02 01:40:09', '2021-11-02 01:40:09'),
('giDLx5cbbv', 'RADIO', 'RADIO', 'https://drive.google.com/uc?id=1nlu9W2P2WNW5WaLj2aVqdO3EcNVktqrK&export=media', NULL, '4ZMJBI87Ii', 1, '2021-11-04 02:31:59', '2021-11-04 02:31:59'),
('GIqVaEp7df', 'O', 'O', 'https://drive.google.com/uc?id=1kQfYZhklI7aT7nAagLyeVqOfLAdnmXcq&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 10:58:50', '2021-11-01 09:29:30'),
('GtetMDoTcP', 'JERAPAH', 'GIRAFFE', 'https://drive.google.com/uc?id=1bWp7mMdqT4aiwkKAJl4Xnl_qhktG3UeR&export=media', NULL, 'ygubUyqQoN', 1, '2021-11-02 21:57:27', '2021-11-02 21:57:27'),
('gU3AtZjNls', 'DOMBA', 'SHEEP', 'https://drive.google.com/uc?id=1jAQxCMIDMPJrLFugP4BWdptxd58JNY69&export=media', NULL, 'Kx3nrVcSeN', 1, '2021-11-02 22:52:45', '2021-11-02 22:52:45'),
('GYOz1ewV8y', 'MOBIL', 'CAR', 'https://drive.google.com/uc?id=1IZQShuPHwUNmqK3KxMJ0tbjDJlnSy_kH&export=media', NULL, 'xsF19TMhoZ', 1, '2021-11-04 02:12:37', '2021-11-04 02:12:37'),
('GZb2lFmpR6', 'N', 'N', 'https://drive.google.com/uc?id=1dMsg7WYIPbMJ2kiGQJvCwkeQrwebQ8xE&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 11:03:39', '2021-11-01 09:06:13'),
('Hb6oNjLt96', 'JENDELA', 'WINDOW', 'https://drive.google.com/uc?id=1FpoMUSuxL22f8u0WgQU5o38eAM3YSjfz&export=media', NULL, 'xRADaFn1It', 1, '2021-11-01 21:21:25', '2021-11-01 21:21:25'),
('HfOPEiC6Hu', 'NYAMUK', 'MOSQUITO', 'https://drive.google.com/uc?id=1uRPvQE2Y-zpkCAma6cH4-zKcDdE6Dikt&export=media', NULL, 'uMq6cenpUS', 1, '2021-11-04 01:42:05', '2021-11-04 01:42:05'),
('HtszrGWpx8', 'ORANYE', 'ORANGE', 'https://drive.google.com/uc?id=1DjK-7hPRdGU4GH_2hAxDBVblELKZyclB&export=media', NULL, 'lIlykI7yix', 1, '2021-10-27 11:11:36', '2021-11-01 09:58:15'),
('HyKiRjtmo0', 'MATA', 'EYES', 'https://drive.google.com/uc?id=10EiX2qbss3v2mVlgfL2BNBCckgVFJ2Ho&export=media', NULL, 'kd4oos26tl', 1, '2021-10-27 10:49:23', '2021-10-28 07:44:51'),
('hZQMKXNk3K', 'HARIMAU', 'TIGER', 'https://drive.google.com/uc?id=1DheK_lvaw1kRK4OxIwsnu6JHe96edB1l&export=media', NULL, 'ygubUyqQoN', 1, '2021-11-02 22:05:50', '2021-11-02 22:05:50'),
('I6mUwCHRps', 'IKAN', 'FISH', 'https://drive.google.com/uc?id=1qN0ja5QdPu75aOKuTQP1Lzk841kEPnm-&export=media', NULL, 'Kx3nrVcSeN', 1, '2021-11-04 01:30:55', '2021-11-04 01:30:55'),
('Ie0EQOtZYT', 'KAMAR MANDI', 'BATHROOM', 'https://drive.google.com/uc?id=1tCb8Bagk6AB4HBZ8rFQ_3M6OqRoz4teJ&export=media', NULL, 'xRADaFn1It', 1, '2021-11-01 21:40:18', '2021-11-02 21:12:58'),
('iEZzqOvtay', 'KAOS', 'T-SHIRT', 'https://drive.google.com/uc?id=1ustIpjeFSBHdtgouwwadnEZ85KhSmOEL&export=media', NULL, 'UlSaRWh3E1', 1, '2021-11-02 01:27:13', '2021-11-02 01:27:13'),
('IF42alobVf', 'MANGGA', 'MANGO', 'https://drive.google.com/uc?id=17jJ6LkC11kN5Zke8Jzk3HoURda4wSZ0G&export=media', NULL, 'mqGYngDtGa', 1, '2021-11-04 01:57:21', '2021-11-04 01:57:21'),
('iFIo3cZTyg', 'BATANG', 'STEAM', 'https://drive.google.com/uc?id=1f28TzyOMkZ53cewShpIWLMPTDoO4p92a&export=media', NULL, 'LkcMVU9fBL', 1, '2021-11-04 01:47:48', '2021-11-04 01:47:48'),
('ilPthBoLyd', 'ANGIN PUTING BELIUNG', 'TORNADO', 'https://drive.google.com/uc?id=1sLij7Of_b66tgI3xBzMniMgt7DJx9_cH&export=media', NULL, 'ZR8Oom877B', 1, '2021-11-04 09:06:05', '2021-11-04 09:06:05'),
('Ipb0CC5QC1', 'TIKUS', 'MOUSE', 'https://drive.google.com/uc?id=1iW9gVaO2Dy6YYMaxh4XuFkITCVoDKUch&export=media', NULL, 'Kx3nrVcSeN', 1, '2021-11-04 01:28:40', '2021-11-04 01:28:40'),
('iSmyhCOTV1', 'PESAWAT', 'PLANE', 'https://drive.google.com/uc?id=1SPVLbMBXQiEwA4UlCPGWwEoC_gM-c00n&export=media', NULL, 'xsF19TMhoZ', 1, '2021-11-04 02:16:38', '2021-11-04 02:16:38'),
('IVa0pNLHmQ', 'GURU', 'TEACHER', 'https://drive.google.com/uc?id=1D5TlaFOsTzQtUnZmxapqGyGf_A81mU_t&export=media', NULL, '9PMo2pGpX6', 1, '2021-11-04 02:20:22', '2021-11-04 02:20:22'),
('izoA0sIDW7', 'E', 'E', 'https://drive.google.com/uc?id=1QJfKCVHq7A8pzbsPg14p1_LwfWn37rFv&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 10:56:00', '2021-11-01 09:37:48'),
('jhmisOpZIs', 'TANAH LONGSOR', 'LANDSLIDE', 'https://drive.google.com/uc?id=14_b6aZrsF6xoF0sTlkSgyt-wk_9dsMZe&export=media', NULL, 'ZR8Oom877B', 1, '2021-11-04 09:02:12', '2021-11-04 09:02:12'),
('jkz8MB7Kgi', 'BURUNG', 'BIRD', 'https://drive.google.com/uc?id=1yWqxzOrrOpSgJL6nX1rJ4NGi91t4kkfG&export=media', NULL, 'Kx3nrVcSeN', 1, '2021-11-04 01:26:09', '2021-11-04 01:26:09'),
('jLMHJuFuoH', 'AYAH', 'FATHER', 'https://drive.google.com/uc?id=1SSmVAXb0kBM54H5heDbzJpW6-_4dqiLH&export=media', NULL, 'iQrnJmYOoG', 1, '2021-11-01 21:45:05', '2021-11-02 21:24:19'),
('jLmXwZ48kY', 'I', 'I', 'https://drive.google.com/uc?id=1JXRPlwCOoghDV1dk7cRKj_0q7QcHJB1l&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 10:57:22', '2021-11-01 09:41:39'),
('JLxoCi1RqN', 'D', 'D', 'https://drive.google.com/uc?id=1IkCWsHigN-XfE2tGrNf1KLng-6vERKyM&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 10:55:04', '2021-11-01 09:35:51'),
('JwwsNMmAQX', 'PISANG', 'BANANA', 'https://drive.google.com/uc?id=1CKLeRc7OVrxCBJhzRwWZMzDsde7vNRpL&export=media', NULL, 'mqGYngDtGa', 1, '2021-11-04 01:55:47', '2021-11-04 01:55:47'),
('KbmVv2aztb', 'KAKI', 'LEG', 'https://drive.google.com/uc?id=12CMd_rhDQf1PgHG4DVIOQtW6-XGguU9p&export=media', NULL, 'kd4oos26tl', 1, '2021-10-27 10:52:19', '2021-11-01 06:46:18'),
('kDaPosa3aG', 'C', 'C', 'https://drive.google.com/uc?id=1ktbsRlbrLJJCYYP_lJ1N4UU8d7AIUhHJ&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 10:54:42', '2021-11-01 09:34:48'),
('KidJqbI7VG', 'KOLAM RENANG', 'SWIMMING POOL', 'https://drive.google.com/uc?id=1MZmriczQKc96IpcnviI6Xrzqc1A__8sU&export=media', NULL, 'jsDsCkdOPZ', 1, '2021-11-04 02:05:26', '2021-11-04 02:05:26'),
('kmFILFXtBd', 'SERAGAM', 'UNIFORM', 'https://drive.google.com/uc?id=1jfR4fwSTSSa0FTewwS_e-EQ1LpHXwgwT&export=media', NULL, 'e4iJNgm6Ca', 1, '2021-11-01 10:28:29', '2021-11-01 10:28:29'),
('KOyq4MKvff', 'MATAHARI', 'SUN', 'https://drive.google.com/uc?id=1Lo7AUgYjA6QzQJBRKyzAYP55aW6nayG_&export=media', NULL, 'kvI4kxbK8U', 1, '2021-11-04 02:44:28', '2021-11-04 02:44:28'),
('KX4ciRSUyg', 'KANTOR POLISI', 'POLICE STATION', 'https://drive.google.com/uc?id=19LaVkMohH7JbLfW7aC0ZUtv5f4GAsD6g&export=media', NULL, 'Uv1CjrXSOF', 1, '2021-11-04 08:57:40', '2021-11-04 08:57:40'),
('KZIP44LDvu', 'P', 'P', 'https://drive.google.com/uc?id=1THQxOeAjA4zQWsNg_9qVtiP0EBFaoKwo&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 10:59:00', '2021-11-01 09:27:42'),
('l0FMWapKNx', 'TELEVISI', 'TELEVISION', 'https://drive.google.com/uc?id=1HOdi70mKFOWApLbBo2nEpYvW77gyr38j&export=media', NULL, '4ZMJBI87Ii', 1, '2021-11-04 02:30:50', '2021-11-04 02:30:50'),
('l1nzFHuWCP', 'LONCENG', 'BELL', 'https://drive.google.com/uc?id=1B6DkyS83i926TXLmJjN9OXowwSaKDoAo&export=media', NULL, 'd6HV0jwtEZ', 1, '2021-11-04 09:08:24', '2021-11-04 09:08:24'),
('L4geeLjkhh', 'PABRIK', 'FACTORY', 'https://drive.google.com/uc?id=1TRBNnFYO6OiV4e0NDyKOn0DYhekFQ8LI&export=media', NULL, 'Uv1CjrXSOF', 1, '2021-11-04 08:58:53', '2021-11-04 08:58:53'),
('lhtxttAvUk', 'NEPTUNUS', 'NEPTUNUS', 'https://drive.google.com/uc?id=1b39ZclS1AOqO7AZxxwTyhR9g0eO3vIzd&export=media', NULL, 'G4bbWyjO99', 1, '2021-11-04 02:57:51', '2021-11-04 02:57:51'),
('lI3hkjMxPo', 'BINTANG', 'STAR', 'https://drive.google.com/uc?id=1JZ1X75Dmtbk_P0jT1_amzQHFPN4ziFTx&export=media', NULL, 'kvI4kxbK8U', 1, '2021-11-04 02:45:34', '2021-11-04 02:45:34'),
('lkmsiEgcmu', 'H', 'H', 'https://drive.google.com/uc?id=1HS831FLR3bz-OsJPRUUbdeTqCctFQXqb&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 10:57:08', '2021-11-01 09:40:47'),
('lpAHPOA8vT', 'TELEPON', 'TELEPHONE', 'https://drive.google.com/uc?id=1hITNxoQNBv24BuGjEUxo_PXfKrsp5sOC&export=media', NULL, '4ZMJBI87Ii', 1, '2021-11-04 02:35:30', '2021-11-04 02:35:30'),
('LPAyi5cbMG', 'W', 'W', 'https://drive.google.com/uc?id=1FzvKytq7LIpHjMOvWmIQFNhS2e12YOKx&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 11:04:35', '2021-11-01 07:20:58'),
('LpTrgWykm9', 'LANTAI', 'FLOOR', 'https://drive.google.com/uc?id=1YiuKudzuRkbofq2sH-Z9eMemQB6crMGA&export=media', NULL, 'xRADaFn1It', 1, '2021-11-01 21:26:48', '2021-11-02 20:56:16'),
('LVK67g6Vww', 'TOPI', 'HAT', 'https://drive.google.com/uc?id=1yBbtAeXFCqKrQKMImRV7LvWNjTvYcclX&export=media', NULL, 'e4iJNgm6Ca', 1, '2021-11-01 10:33:31', '2021-11-01 10:33:31'),
('Lzu0EhGWoM', 'AKAR', 'ROOT', 'https://drive.google.com/uc?id=1PuL59Gan0RGeJHS-s67vWme5j3qq6vvE&export=media', NULL, 'LkcMVU9fBL', 1, '2021-11-04 01:46:42', '2021-11-04 01:46:42'),
('m7htJ3l8YJ', 'A', 'A', 'https://drive.google.com/uc?id=1gEARu4qt1QZEZ4PZzTxNLBbwOOWw2xVW&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 10:53:57', '2021-11-01 09:31:29'),
('mCOBQO5X6d', 'SEPULUH', 'TEN', 'https://drive.google.com/uc?id=1iFnxwTzGB0lc2S4Kmfcev6S7eFdqUA6B&export=media', NULL, 'lQfg1njp9J', 1, '2021-10-27 11:17:29', '2021-11-01 10:25:42'),
('mfFVW6ouzl', 'LALAT', 'FLY', 'https://drive.google.com/uc?id=1HXM14syqiS2kGHrEHrzPO55XenVWs4Gi&export=media', NULL, 'uMq6cenpUS', 1, '2021-11-04 01:45:03', '2021-11-04 01:45:03'),
('mLEOwgmCNc', 'AYAM GORENG', 'FRIED CHICKEN', 'https://drive.google.com/uc?id=1DQkT9Y7LpN_Zfxm05dScP0vj6tHF0uJM&export=media', NULL, 'UXogDXaamX', 1, '2021-11-02 01:46:42', '2021-11-02 01:46:42'),
('mLzr7wGdbT', 'ANGGUR', 'GRAPE', 'https://drive.google.com/uc?id=1LfhTXdZuqKm3h9os4SWC-S4SmRjIOgsC&export=media', NULL, 'mqGYngDtGa', 1, '2021-11-04 01:58:45', '2021-11-04 01:58:45'),
('MS4BebuGmO', 'BULAN', 'MOON', 'https://drive.google.com/uc?id=1BYgNMtdmCUT8Y3G_MZhp-UYC7d8YyRGS&export=media', NULL, 'kvI4kxbK8U', 1, '2021-11-04 02:46:24', '2021-11-04 02:46:24'),
('mTc0FZkdau', 'KERBAU', 'BUFFALO', 'https://drive.google.com/uc?id=1ypqCijbKZmOHrluRggZS8gTDWegBT1fv&export=media', NULL, 'Kx3nrVcSeN', 1, '2021-11-04 01:21:56', '2021-11-04 01:21:56'),
('MXqtiFXoZ3', 'EMPAT', 'FOUR', 'https://drive.google.com/uc?id=1GOg-7B0Zh8gsg1blwGZ561G8LKSYYDfA&export=media', NULL, 'lQfg1njp9J', 1, '2021-10-27 11:15:41', '2021-11-01 10:14:09'),
('mZePjJkHaU', 'BUAH', 'FRUIT', 'https://drive.google.com/uc?id=15AHBBjm9a9nBG5fWkm6pq5SwybRKbUvw&export=media', NULL, 'LkcMVU9fBL', 1, '2021-11-04 01:51:51', '2021-11-04 01:51:51'),
('nFuMb7jplG', 'MACAN TUTUL', 'LEOPARD', 'https://drive.google.com/uc?id=1M0raqjr_QxtEkEs1zqWkQS74c4KYTrwt&export=media', NULL, 'ygubUyqQoN', 1, '2021-11-02 01:55:28', '2021-11-02 01:55:28'),
('NOmW4yTlcu', 'TENTARA', 'SOLDIER', 'https://drive.google.com/uc?id=1kuBrmCEd-7eOjcr9mA-_sssWDcxqfKUL&export=media', NULL, '9PMo2pGpX6', 1, '2021-11-04 02:21:35', '2021-11-04 02:21:35'),
('NRSL4GUPCl', 'SEPEDA', 'BICYCLE', 'https://drive.google.com/uc?id=19wpOuFwhKQQCA_dUNjfw0x2rd7rnRaV2&export=media', NULL, 'xsF19TMhoZ', 1, '2021-11-04 02:14:09', '2021-11-04 02:14:09'),
('NuNCiByICl', 'ANJING', 'DOG', 'https://drive.google.com/uc?id=1AQyP4cM4d8Xaexn5MZ9OtNRIGKJJGysQ&export=media', NULL, 'Kx3nrVcSeN', 1, '2021-11-04 01:33:40', '2021-11-04 01:33:40'),
('O9bRrjU8oS', 'KAMAR TIDUR', 'BEDROOM', 'https://drive.google.com/uc?id=15lgJiT-gCcTYPYan08u_e-sOmL-ideLP&export=media', NULL, 'xRADaFn1It', 1, '2021-11-01 21:36:02', '2021-11-02 21:08:37'),
('oDhlez4jIS', 'UNTA', 'CAMEL', 'https://drive.google.com/uc?id=1amK4YaKrmrgkbNK1aE_sZkM8xDHxGxfw&export=media', NULL, 'ygubUyqQoN', 1, '2021-11-02 22:03:48', '2021-11-02 22:03:48'),
('ofncSdSQze', 'PANTAI', 'BEACH', 'https://drive.google.com/uc?id=1frYllz55l6MmHmr18JG8TnAx9pnBf60g&export=media', NULL, 'jsDsCkdOPZ', 1, '2021-11-04 02:08:35', '2021-11-04 02:08:35'),
('oHI28qPslG', 'L', 'L', 'https://drive.google.com/uc?id=1Ni91kvh6Y_8_nphsDzokx5Y69h29uKQY&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 11:03:07', '2021-11-01 09:09:20'),
('oiPgOf4pgI', 'DESA', 'VILLAGE', 'https://drive.google.com/uc?id=10RI0EHHLzbs6JKfLJjig9rRYxnnrc7eN&export=media', NULL, 'xaUv9NLBUB', 1, '2021-11-04 02:41:04', '2021-11-04 02:41:04'),
('OU8IKppf74', 'RUANG KELUARGA', 'LIVING ROOM', 'https://drive.google.com/uc?id=1K9N4iuFf93Momj9CGAyDAdi77DXoY0fB&export=media', NULL, 'xRADaFn1It', 1, '2021-11-01 21:34:14', '2021-11-02 21:01:29'),
('OY4ZbyyH5r', 'NASI GORENG', 'FRIED RICE', 'https://drive.google.com/uc?id=1tvY2OUog2frj6AaMYS8SUEkzYY6Lo2tP&export=media', NULL, 'UXogDXaamX', 1, '2021-11-02 01:44:56', '2021-11-02 01:44:56'),
('P32Lww6dtJ', 'TSUNAMI', 'TSUNAMI', 'https://drive.google.com/uc?id=1_VZhrep0aNwSNDzcR1n_hDadpJAVxbW4&export=media', NULL, 'ZR8Oom877B', 1, '2021-11-04 09:03:38', '2021-11-04 09:03:38'),
('P90JBJTvO5', 'RAMBUT', 'HAIR', 'https://drive.google.com/uc?id=1wkRWM5IgcCpBJzj6Lh0Qw1aLq1CXWO8a&export=media', NULL, 'kd4oos26tl', 1, '2021-10-27 10:51:40', '2021-11-01 06:48:53'),
('pCk3a12RpC', 'T', 'T', 'https://drive.google.com/uc?id=1Tr2juLjUwhRSkbz0kKsMNFlenPEipewn&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 10:59:50', '2021-11-01 09:23:33'),
('pkDMHMhV47', 'KERETA API', 'TRAIN', 'https://drive.google.com/uc?id=12LBOg2saX9zyk0OkKpiud14nhdy20Gy8&export=media', NULL, 'xsF19TMhoZ', 1, '2021-11-04 02:15:22', '2021-11-04 02:15:22'),
('pqsDWNmqf0', 'B', 'B', 'https://drive.google.com/uc?id=1rPWl2GwFpSjHIfXaE4MKr24hpmQhQh1P&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 10:54:25', '2021-11-01 09:32:35'),
('pwFkPECIt2', 'DUA', 'TWO', 'https://drive.google.com/uc?id=1sisij66iLrzavK7PW9GEsJTbW4ZnM6np&export=media', NULL, 'lQfg1njp9J', 1, '2021-10-27 11:15:07', '2021-11-01 10:08:54'),
('pYhF9I1CNt', 'KELAPA', 'COCONUT', 'https://drive.google.com/uc?id=1CmFbcPaVuuutrMrBPkxnuAf-1txhqLkl&export=media', NULL, 'mqGYngDtGa', 1, '2021-11-04 02:03:17', '2021-11-04 02:03:17'),
('pYoRAvuWdD', 'ATAP', 'ROOF', 'https://drive.google.com/uc?id=1CPRS-A8Pv2Ov7UNmdvXds8xFsvdGBTyB&export=media', NULL, 'xRADaFn1It', 1, '2021-11-01 21:32:24', '2021-11-02 20:59:31'),
('q2u9K0RrCz', 'UDARA', 'AIR', 'https://drive.google.com/uc?id=16zgZ6_BVkZ20CScRogH1ipNQ_snum2jP&export=media', NULL, '5tqy8Q0anH', 1, '2021-11-04 02:26:53', '2021-11-04 02:26:53'),
('QAmiUgutOK', 'BUKU', 'BOOK', 'https://drive.google.com/uc?id=1m_AZO0Os7rDlSZt1Ko_36g9dQwWUjKOs&export=media', NULL, 'e4iJNgm6Ca', 1, '2021-11-01 10:35:29', '2021-11-01 10:35:29'),
('Qcb8uziFlx', 'BUMI', 'EARTH', 'https://drive.google.com/uc?id=1W-D6unfrvvTtaHHNHojFqTIFjVrOoFVK&export=media', NULL, 'G4bbWyjO99', 1, '2021-11-04 02:52:46', '2021-11-04 02:52:46'),
('QqnmIxA9V1', 'BEDUG', 'DRUM', 'https://drive.google.com/uc?id=1bCsOP3sWtk_Po2vIPn6BQ7jOJXfwgPxx&export=media', NULL, 'd6HV0jwtEZ', 1, '2021-11-04 09:10:29', '2021-11-04 09:10:29'),
('QZpFM1eho3', 'MONYET', 'MONKEY', 'https://drive.google.com/uc?id=1oDKPVBuPGeM_7c7l2giZb4AwCpoo6l4V&export=media', NULL, 'ygubUyqQoN', 1, '2021-11-02 01:54:12', '2021-11-02 01:54:12'),
('r9CRODzuJm', 'KUDA', 'HORSE', 'https://drive.google.com/uc?id=1LPCqY4jGTC55T9xcpyB1UBjRhupy9bO1&export=media', NULL, 'Kx3nrVcSeN', 1, '2021-11-04 01:22:56', '2021-11-04 01:22:56'),
('rCRoZ4UiCQ', 'SEKOLAH', 'SCHOOL', 'https://drive.google.com/uc?id=1OWohpe-3_fA4MfyJpmx0yfDDm4tQX7sd&export=media', NULL, 'Uv1CjrXSOF', 1, '2021-11-04 08:54:51', '2021-11-04 08:54:51'),
('rPZrSJM0ff', 'AYAM', 'CHICKEN', 'https://drive.google.com/uc?id=1H11xBJRtZY8YEfZyW4tt1-oc5eIR2mLx&export=media', NULL, 'Kx3nrVcSeN', 1, '2021-11-04 01:24:05', '2021-11-04 01:24:05'),
('rtVXXryMpt', 'PELANGI', 'RAINBOW', 'https://drive.google.com/uc?id=1iNHzNcvzpyh68zC12KGtovusWwTqr1Ny&export=media', NULL, 'kvI4kxbK8U', 1, '2021-11-04 02:47:37', '2021-11-04 02:47:37'),
('SAZNIeFQxG', 'SURAT', 'LETTER', 'https://drive.google.com/uc?id=1BEQt1Djlr04CCdLcigY4WPLCEAql-Soe&export=media', NULL, 'd6HV0jwtEZ', 1, '2021-11-04 09:07:10', '2021-11-04 09:07:10'),
('Sj5JraL5ip', 'IKAT PINGGANG', 'BELT', 'https://drive.google.com/uc?id=18sj3AxpbHKbFrcRxkD5eytWVTBbTZUTP&export=media', NULL, 'e4iJNgm6Ca', 1, '2021-11-01 10:34:41', '2021-11-01 10:34:41'),
('SYaJ6eQ0QW', 'PENGGARIS', 'RULER', 'https://drive.google.com/uc?id=1aYxuLXtU5QgaO75R9J2_7iY-qsWAxnlo&export=media', NULL, 'e4iJNgm6Ca', 1, '2021-11-01 10:37:35', '2021-11-01 10:37:35'),
('t6J4IyvLBn', 'NENEK', 'GRANDMOTHER', 'https://drive.google.com/uc?id=1nouYC1oOPr_L83wIpcu2_CzBBacy3Xib&export=media', NULL, 'iQrnJmYOoG', 1, '2021-11-01 21:50:50', '2021-11-02 21:43:59'),
('T9BZQxMPUv', 'F', 'F', 'https://drive.google.com/uc?id=1mY4szkYbX9xh8_v1xIQ7JKx5VnNJCcFW&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 10:56:18', '2021-11-01 09:39:00'),
('TAXF5bBXnh', 'NEGARA', 'COUNTRY', 'https://drive.google.com/uc?id=1Qr8BAuiRI2AuHsNhXLsW5vAq3dCcUQZb&export=media', NULL, 'xaUv9NLBUB', 1, '2021-11-04 02:37:36', '2021-11-04 02:37:36'),
('TkhP2wMwSj', 'KRAYON', 'CRAYON', 'https://drive.google.com/uc?id=136HIt0NE2ER2Xmf-UTbG_wpBsEDUwNyT&export=media', NULL, 'e4iJNgm6Ca', 1, '2021-11-01 10:40:32', '2021-11-01 10:40:32'),
('uRmNUT3TCC', 'BAKSO', 'MEATBALL', 'https://drive.google.com/uc?id=1JCFOTEEv6cDjWaVttrk5MWdewgDmUob_&export=media', NULL, 'UXogDXaamX', 1, '2021-11-02 01:50:08', '2021-11-02 01:50:08'),
('uW2JOlBHAe', 'Z', 'Z', 'https://drive.google.com/uc?id=1zdZ1Xil1HF0MtgeujEu3-76_zwhvo-Vq&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 11:05:12', '2021-11-01 06:59:20'),
('V81rpqGviK', 'KUCING', 'CAT', 'https://drive.google.com/uc?id=15WMLgTEvhDxfsUkvP3M1cI-T6WidJ9WX&export=media', NULL, 'Kx3nrVcSeN', 1, '2021-11-04 01:32:39', '2021-11-04 01:32:39'),
('Vdhs5csvm8', 'BENDERA', 'FLAG', 'https://drive.google.com/uc?id=1ivqxO4eXAPnXk2qD-Es2vgd9QoWC2nYd&export=media', NULL, 'xaUv9NLBUB', 1, '2021-11-04 02:43:11', '2021-11-04 02:43:11'),
('vofIxz3zWc', 'BUMI', 'EARTH', 'https://drive.google.com/uc?id=1QjSGdMuQb006vkc2sXUZMhqd1FWnX8yW&export=media', NULL, 'kvI4kxbK8U', 1, '2021-11-04 02:49:33', '2021-11-04 02:49:33'),
('VOxlbP7QNq', 'KEPALA', 'HEAD', 'https://drive.google.com/uc?id=1WCZHmarbeYcBHn7OPKHQ9uNhli59kaWq&export=media', NULL, 'kd4oos26tl', 1, '2021-10-27 10:51:11', '2021-11-01 06:49:43'),
('Vq9Twug6o7', 'APEL', 'APPLE', 'https://drive.google.com/uc?id=1PUTMh8w2jQGLOvy56KDjo6ilFl2iLVb6&export=media', NULL, 'mqGYngDtGa', 1, '2021-11-04 01:53:07', '2021-11-04 01:53:07'),
('VSLqnLutTK', 'JERUK', 'ORANGE', 'https://drive.google.com/uc?id=1v90Gre1f8yq6FqXvKMQQpBnfh06GkVdK&export=media', NULL, 'mqGYngDtGa', 1, '2021-11-04 01:54:26', '2021-11-04 01:54:26'),
('vt9zfmTtB5', 'RUMAH SAKIT', 'HOSPITAL', 'https://drive.google.com/uc?id=11tUxeClENPkWEq5nbyCQuvfzcCZ89iK_&export=media', NULL, 'Uv1CjrXSOF', 1, '2021-11-04 08:55:54', '2021-11-04 08:55:54'),
('wdWbGl6Yql', 'KAOS KAKI', 'SHOCK', 'https://drive.google.com/uc?id=1W6g5FdE5ocWNS7QPz02lzwPBhdpk90MV&export=media', NULL, 'e4iJNgm6Ca', 1, '2021-11-01 10:32:37', '2021-11-01 10:32:37'),
('WjoTKcy55E', 'SEMUT', 'ANT', 'https://drive.google.com/uc?id=1bQvv9xstHqX0XRPoXjlM4NGhJBzTbF4_&export=media', NULL, 'uMq6cenpUS', 1, '2021-11-04 01:35:45', '2021-11-04 01:35:45'),
('WkYDfsgTdh', 'MIE', 'NOODLE', 'https://drive.google.com/uc?id=1lWYox9NJ-MdL5jbujHV3OVNsiFIEOPFC&export=media', NULL, 'UXogDXaamX', 1, '2021-11-02 01:52:26', '2021-11-02 01:52:26'),
('x4cT6NUkuI', 'BABI', 'PIG', 'https://drive.google.com/uc?id=1ORrGjl60FIxbm5eVSG11HRr0jvopDgL9&export=media', NULL, 'Kx3nrVcSeN', 1, '2021-11-04 01:19:35', '2021-11-04 01:19:35'),
('xcYWfJV84E', 'LABA LABA', 'SPIDER', 'https://drive.google.com/uc?id=1gWJlkZLRqpbhTHW2xH1sGfqzU8Lps97i&export=media', NULL, 'uMq6cenpUS', 1, '2021-11-04 01:44:04', '2021-11-04 01:44:04'),
('xF6Xnna8SN', 'PULAU', 'ISLAND', 'https://drive.google.com/uc?id=1R5RwLdDm6ky0hvKqevr4W13-NmApAg7k&export=media', NULL, 'xaUv9NLBUB', 1, '2021-11-04 02:42:09', '2021-11-04 02:42:09'),
('xGHI66dbxz', 'LEBAH', 'BEE', 'https://drive.google.com/uc?id=15mZRB80q7XWCZoY_GvCiu2imL728PzAL&export=media', NULL, 'uMq6cenpUS', 1, '2021-11-04 01:38:35', '2021-11-04 01:40:51'),
('xjPOwlXKW4', 'TAMAN BERMAIN', 'PLAY GROUND', 'https://drive.google.com/uc?id=1m51kBniEPqReTzYYNOjccAsKQSx7kIWi&export=media', NULL, 'jsDsCkdOPZ', 1, '2021-11-04 02:06:51', '2021-11-04 02:06:51'),
('xkV8hOBEmh', 'POLISI', 'POLICE', 'https://drive.google.com/uc?id=10XvzhlZ1m1tanhPCjJrKQDhm3gB6J-h1&export=media', NULL, '9PMo2pGpX6', 1, '2021-11-04 02:22:36', '2021-11-04 02:22:36'),
('xmxTvgXwHB', 'MARS', 'MARS', 'https://drive.google.com/uc?id=18UtgIKvzMPmYCqhiWf0MMTLdndHWvFmK&export=media', NULL, 'G4bbWyjO99', 1, '2021-11-04 02:53:51', '2021-11-04 02:53:51'),
('xZirPMl0qJ', 'JAKET', 'JACKET', 'https://drive.google.com/uc?id=1UjWLe7BBLG3UtNEtZ9KSFjpS8aGnOZps&export=media', NULL, 'UlSaRWh3E1', 1, '2021-11-02 01:32:56', '2021-11-02 01:32:56'),
('Y665EOaM6w', 'SEMBILAN', 'NINE', 'https://drive.google.com/uc?id=1hURiWGZv9SfclZfbvus3Ic3TPcaBi9AS&export=media', NULL, 'lQfg1njp9J', 1, '2021-10-27 11:17:11', '2021-11-01 10:22:47'),
('yCXTQZRutn', 'KOTA', 'CITY', 'https://drive.google.com/uc?id=1gmoxZETDWONKEp9mQc3vrqC-cxUzVGA_&export=media', NULL, 'xaUv9NLBUB', 1, '2021-11-04 02:40:04', '2021-11-04 02:40:04'),
('YEdbzllOYp', 'PENGHAPUS', 'ERASER', 'https://drive.google.com/uc?id=1pCPALsd3xDqXAYL5zrxombP1st4waqsi&export=media', NULL, 'e4iJNgm6Ca', 1, '2021-11-01 10:39:36', '2021-11-01 10:39:36'),
('Yey0gSigTs', 'BANJIR', 'FLOOD', 'https://drive.google.com/uc?id=1QwGBBSM0KDcUguwog3xCCPpYC667mdPh&export=media', NULL, 'ZR8Oom877B', 1, '2021-11-04 08:59:55', '2021-11-04 08:59:55'),
('YfVUqPVBKM', 'KELINCI', 'RABBIT', 'https://drive.google.com/uc?id=1bp21fBMccPLvUHQkgy-Rjh8EVRLSIi1y&export=media', NULL, 'Kx3nrVcSeN', 1, '2021-11-04 01:29:41', '2021-11-04 01:29:41'),
('yocXwUvfWR', 'M', 'M', 'https://drive.google.com/uc?id=1L1xv_pt7Dcju8cB4pICViOZiIQJPNIyI&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 11:03:24', '2021-11-01 09:07:58'),
('yPMjQK5ADr', 'AYAM JAGO', 'ROOSTER', 'https://drive.google.com/uc?id=1hJwauEa8Dtq3IyFCvG6pcT9MobDUWzA-&export=media', NULL, 'Kx3nrVcSeN', 1, '2021-11-04 01:27:11', '2021-11-04 01:27:11'),
('yWpeIj2A4o', 'PETANI', 'FARMER', 'https://drive.google.com/uc?id=11aOaMC8XZRQF6OEFPQApoLQ4aeBl9CDN&export=media', NULL, '9PMo2pGpX6', 1, '2021-11-04 02:23:34', '2021-11-04 02:23:34'),
('yXvcDjTqzI', 'DOKTER', 'DOCTOR', 'https://drive.google.com/uc?id=11T-trxtbAV9x_Cuue91Ylm7F3sQTLd2T&export=media', NULL, '9PMo2pGpX6', 1, '2021-11-04 02:19:14', '2021-11-04 02:19:14'),
('zH7JUKSnMe', 'KOPI', 'COFFEE', 'https://drive.google.com/uc?id=1_de22ucKAd_bz2A39i3mPoPkbRlvYXui&export=media', NULL, 'UXogDXaamX', 1, '2021-11-02 01:39:07', '2021-11-02 01:39:07'),
('Zq6ndJVWV2', 'KUPU KUPU', 'BUTTERFLY', 'https://drive.google.com/uc?id=1FPbIYIYdT8suaYFmT23dJEk-w2nf1G8i&export=media', NULL, 'uMq6cenpUS', 1, '2021-11-04 01:43:09', '2021-11-04 01:43:09');

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
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `name`, `point`, `created_at`, `updated_at`) VALUES
('1PkJ0wp22f', 'Emperor', 100, '2022-04-05 09:26:05', '2022-04-05 09:26:05'),
('1PkJ2SfK62', 'Knight', 15, '2021-08-16 21:08:22', '2021-08-16 21:08:22'),
('22FVBb1pje', 'King', 75, '2022-04-05 09:25:42', '2022-04-05 09:25:42'),
('70SFBb1pje', 'Citizen', 0, '2022-04-05 09:19:08', '2022-04-05 09:19:08'),
('asdaFFwr2S', 'Duke', 45, '2022-03-29 05:49:25', '2021-08-16 21:08:22'),
('nr9cSfxK8L', 'Prince', 30, '2022-04-06 09:22:51', '2022-04-06 09:22:51');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_10_13_008342_create_categories_table', 1),
(7, '2021_10_13_008445_create_sub_categories_table', 1),
(8, '2021_10_13_084855_create_courses_table', 1),
(9, '2021_10_13_085659_create_user_courses_table', 1),
(10, '2021_10_13_085717_create_user_details_table', 1),
(11, '2021_10_27_042637_create_sessions_table', 1),
(12, '2021_12_08_064542_create_scores_table', 1),
(13, '2022_03_16_115952_create_user_tutorials_table', 1),
(14, '2022_03_16_142352_create_complete_categories_table', 2),
(16, '2022_04_05_083246_create_levels_table', 3),
(17, '2022_04_05_084826_create_user_levels_table', 4),
(18, '2022_04_11_095726_create_user_session_table', 5);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 3, 'auth_token', '6e53bbd63da196fe816bf578774c29b8f8596f52d9b49e86f7b2beb9249447c0', '[\"*\"]', '2022-03-16 07:08:26', '2022-03-16 06:11:35', '2022-03-16 07:08:26'),
(2, 'App\\Models\\User', 3, 'auth_token', '2820072dcd1bfc865ac55631e555ea80a0dfe131cd1e77dd989eb6f21c9236b3', '[\"*\"]', '2022-03-19 06:05:09', '2022-03-16 07:18:47', '2022-03-19 06:05:09'),
(3, 'App\\Models\\User', 3, 'auth_token', '5d86f38535c14beba0223b55ac59859d3556097b19c77209a520b69c7c4ca2c0', '[\"*\"]', '2022-03-16 07:43:34', '2022-03-16 07:42:55', '2022-03-16 07:43:34'),
(4, 'App\\Models\\User', 3, 'auth_token', '45711c08ade7854b85d13688f1bd916552fa51ef57bf1f479fabc6e4bd589003', '[\"*\"]', '2022-03-19 23:51:35', '2022-03-19 05:20:02', '2022-03-19 23:51:35'),
(5, 'App\\Models\\User', 3, 'auth_token', '389d8f3e87621b8d19ed64b496afad822d0962ff08b1dffdfde6d1f4439ee714', '[\"*\"]', '2022-03-20 01:39:23', '2022-03-19 23:53:23', '2022-03-20 01:39:23'),
(6, 'App\\Models\\User', 3, '585053919c602d1b', '065613437b29a43a095b3128e8b4c2e345299861174512042cfa5ace23a26f27', '[\"*\"]', '2022-04-21 00:24:12', '2022-03-20 03:29:51', '2022-04-21 00:24:12'),
(7, 'App\\Models\\User', 3, 'auth_token', '03200caff05aa2b75cfdd06d41d06ccd1cb187f8aed3309eb7a74e0d3bdbc9a7', '[\"*\"]', '2022-03-20 04:04:34', '2022-03-20 03:58:43', '2022-03-20 04:04:34'),
(8, 'App\\Models\\User', 3, 'auth_token', '80bcc067d43ae6f7f562cd614a10580151a815dd1b8e8945614e01ba856e5072', '[\"*\"]', '2022-03-29 06:48:18', '2022-03-29 05:20:35', '2022-03-29 06:48:18'),
(9, 'App\\Models\\User', 3, 'auth_token', '55ee6c978f8ca476ae34b1176f98de23f28ac9eb640caea31951851cc15ee3d1', '[\"*\"]', '2022-04-03 05:33:39', '2022-04-03 00:37:52', '2022-04-03 05:33:39'),
(10, 'App\\Models\\User', 3, 'auth_token', '4cb7fe4a096cf5cf80dde265f78528cfd2ed92ca1b7fa42a3a4b0d55af51c5b7', '[\"*\"]', NULL, '2022-04-04 01:51:37', '2022-04-04 01:51:37'),
(11, 'App\\Models\\User', 3, 'auth_token', '155f4ab9eb611f8e7d9f2a131bd232669dc736976b4cb807d6a21b96b0db6974', '[\"*\"]', '2022-04-05 03:10:41', '2022-04-05 02:29:52', '2022-04-05 03:10:41'),
(12, 'App\\Models\\User', 3, 'auth_token', 'c48e300a3d42bb12a3309aa380540e4d0da24e7bfd1668327e7be3d2754e370a', '[\"*\"]', NULL, '2022-04-21 23:19:23', '2022-04-21 23:19:23'),
(13, 'App\\Models\\User', 3, 'auth_token', '14db6b1317b4b282c6d992307845f39798f1834497cd82669b1f0a9dd7633f6a', '[\"*\"]', '2022-04-21 23:40:51', '2022-04-21 23:20:20', '2022-04-21 23:40:51');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('86uIeIhAEVHMGnKFZjpizCn1J9wFUg8cq5NBCnmS', 1, '192.168.1.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiUEdIMlZ5N29YVWg4b2Y5R1pDV1I2U3c1MlA2UjhQbWhySWNtM3JydCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjEuMTUxOjgwMDAvYWRtaW4vbWF0ZXJpIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDR2Qy5zbTI0RGFNU1piTy9tR3NnSS5Qd2diL0l0VXhPanVtSzUwOXpBdXgwdkw3QVg5Q1EuIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCQ0dkMuc20yNERhTVNaYk8vbUdzZ0kuUHdnYi9JdFV4T2p1bUs1MDl6QXV4MHZMN0FYOUNRLiI7fQ==', 1650513135),
('mzvkqYoQmXScumSxoHRqhGlE6VSZD0wFCzJHmoIG', 1, '192.168.1.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiY2xKWDhqa0FSam9kMU1ESE01R2lKTHRuNXNKR0FOQlRvc2dXcjQ3ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xOTIuMTY4LjEuMTM6ODAwMC9hZG1pbi9tYXRlcmkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkNHZDLnNtMjREYU1TWmJPL21Hc2dJLlB3Z2IvSXRVeE9qdW1LNTA5ekF1eDB2TDdBWDlDUS4iO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJDR2Qy5zbTI0RGFNU1piTy9tR3NnSS5Qd2diL0l0VXhPanVtSzUwOXpBdXgwdkw3QVg5Q1EuIjt9', 1650457406),
('UhzqdXIvRaaVVnpDaQUpdbPJn3dTwZNN3cpuoEnU', 1, '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiNHhFSTdGYWlqOUZVS25PY01yZTVIaWVWcHlWdDF3SmdORFhOQ2JlWSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vMTkyLjE2OC4xLjEwNjo4MDAwL2FkbWluL21hdGVyaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCQ0dkMuc20yNERhTVNaYk8vbUdzZ0kuUHdnYi9JdFV4T2p1bUs1MDl6QXV4MHZMN0FYOUNRLiI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkNHZDLnNtMjREYU1TWmJPL21Hc2dJLlB3Z2IvSXRVeE9qdW1LNTA5ekF1eDB2TDdBWDlDUS4iO30=', 1650459663),
('VUL8SdXlsmtVdvSW88fkVr9pBOCxcGqLxKFLPHGa', 1, '192.168.1.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiODZIU1I5aURXbWxva3JreVR5RU1BRWVNSVF1eGJiaTFreXlZb09YdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjEuMTUxOjgwMDAvYWRtaW4vbWF0ZXJpIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDR2Qy5zbTI0RGFNU1piTy9tR3NnSS5Qd2diL0l0VXhPanVtSzUwOXpBdXgwdkw3QVg5Q1EuIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCQ0dkMuc20yNERhTVNaYk8vbUdzZ0kuUHdnYi9JdFV4T2p1bUs1MDl6QXV4MHZMN0FYOUNRLiI7fQ==', 1650526090);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
('4ZMJBI87Ii', 'MODERN COMMUNICATION TOOL', 'https://drive.google.com/uc?id=1h79DGw5PZSG-psNWd_WUbd5Doit8alcn&export=media', 'NDztn6Aec1', '2021-10-27 10:15:35', '2021-11-04 08:44:26'),
('5tqy8Q0anH', 'AIR WATER FIRE', 'https://drive.google.com/uc?id=1Fiw-28jGhtHPcteE9JUexOXeEj9ZQ2n0&export=media', 'uOxGSRQRZF', '2021-10-27 10:15:19', '2021-10-29 06:25:39'),
('9PMo2pGpX6', 'PROFESSION', 'https://drive.google.com/uc?id=1TvTTWvPHD-UQvC1lhMI6CO5oUx5cC_-5&export=media', 'dVpFFDlkVs', '2021-10-27 10:15:02', '2021-10-29 06:24:10'),
('d6HV0jwtEZ', 'TRADITIONAL COMMUNICATION TOOL', 'https://drive.google.com/uc?id=1MS1AvoDNV5S-9w8gGtLlDaYaOSq6U3OV&export=media', 'NDztn6Aec1', '2021-11-04 08:42:55', '2021-11-04 08:42:55'),
('e4iJNgm6Ca', 'SCHOOL', 'https://drive.google.com/uc?id=19jaraqfuwwse86lI5jjPjJLQkSy64ELd&export=media', 'gwZXhPEkNQ', '2021-10-27 09:48:58', '2021-10-29 05:42:42'),
('G4bbWyjO99', 'PLANET', 'https://drive.google.com/uc?id=1iO-Di_2-DOCRzcjpwNEdcCX0FIFk-EEO&export=media', 'EnPbsNYv30', '2021-10-27 10:16:21', '2021-10-29 06:31:12'),
('iQrnJmYOoG', 'FAMILY', 'https://drive.google.com/uc?id=1kia0qDk-2rIWHxUSquHsk2ms0-morqGv&export=media', 'gwZXhPEkNQ', '2021-10-27 09:49:38', '2021-10-29 05:46:41'),
('jsDsCkdOPZ', 'RECREATION', 'https://drive.google.com/uc?id=1nknVRDHgCAp8DcCTcEPFDMe6shtrZxAL&export=media', 'l8qS5IT1Q9', '2021-10-27 10:13:22', '2021-10-29 06:21:33'),
('kd4oos26tl', 'PART OF MY BODY', 'https://drive.google.com/uc?id=1aMWOet3V4OAOnowvJ63El_ZHRmF6DVO4&export=media', 'iTDaqkOaIf', '2021-10-27 09:47:33', '2021-10-28 22:46:51'),
('kvI4kxbK8U', 'UNIVERSE', 'https://drive.google.com/uc?id=1KFTcBQBZuOcwgM357EqNrr3J2KaVSAi4&export=media', 'EnPbsNYv30', '2021-10-27 10:16:06', '2021-10-29 06:29:56'),
('Kx3nrVcSeN', 'PET', 'https://drive.google.com/uc?id=1m-_IRHFQZu8XEsyleVMyvZoAA2V5ZzYq&export=media', '8plSIjT7Jq', '2021-10-27 09:52:18', '2021-11-04 02:59:36'),
('lIlykI7yix', 'COLOR', 'https://drive.google.com/uc?id=1RB8e60QXHfXJ09LZSr2LIt5LQ575Davc&export=media', 'iTDaqkOaIf', '2021-10-27 09:48:25', '2021-10-29 05:41:32'),
('LkcMVU9fBL', 'TREE & FLOWER', 'https://drive.google.com/uc?id=1fZDXokjfoWkN1tmOp3_iMge8Kp1hAZiC&export=media', 'QC4B3q0XGj', '2021-10-27 10:12:38', '2021-10-29 05:56:22'),
('lQfg1njp9J', 'NUMBER', 'https://drive.google.com/uc?id=1jsNfjudtuDajADRlCNrLVSY0XrhEBzYf&export=media', 'iTDaqkOaIf', '2021-10-27 09:48:14', '2021-10-29 05:29:10'),
('mqGYngDtGa', 'FRUIT', 'https://drive.google.com/uc?id=1PO1e0tf6Ioz1MjU4xps-U1VXOcKvsjPH&export=media', 'QC4B3q0XGj', '2021-10-27 10:12:56', '2021-10-29 05:59:36'),
('nAA9EvuWY1', 'ALPHABET', 'https://drive.google.com/uc?id=1yVmbNGhjlU_-lP_lyPZk7Ztr_M5OZNp4&export=media', 'iTDaqkOaIf', '2021-10-27 09:48:02', '2021-10-28 23:18:19'),
('UlSaRWh3E1', 'CLOTHES', 'https://drive.google.com/uc?id=1rbbAVKveqLq44XJo3GuPYTKIFcqxBFPV&export=media', 'agkha0rF1Z', '2021-10-27 09:50:01', '2021-10-29 05:47:52'),
('uMq6cenpUS', 'COMMON INSECTS', 'https://drive.google.com/uc?id=1i-K_S6n8ly2b_TROaVFr8x82-CbwUNdO&export=media', '8plSIjT7Jq', '2021-10-27 09:55:35', '2021-10-29 05:54:29'),
('Uv1CjrXSOF', 'WORKPLACE', 'https://drive.google.com/uc?id=1aFrewxZnXU-fqcqQMJko1pbYuFqPv2nH&export=media', 'dVpFFDlkVs', '2021-11-04 08:37:37', '2021-11-04 08:37:37'),
('UXogDXaamX', 'FOODS & DRINKS', 'https://drive.google.com/uc?id=11LsdvKr_Pgfev6cPSLhXcDBlcsPgCCWd&export=media', 'agkha0rF1Z', '2021-10-27 09:50:23', '2021-10-29 05:49:52'),
('xaUv9NLBUB', 'NATIVE LAND', 'https://drive.google.com/uc?id=1xkMTXNJULLrGpcUJaResiHOTi3F4KB35&export=media', 'rlddYB56KX', '2021-10-27 10:15:49', '2021-10-29 06:28:05'),
('xRADaFn1It', 'HOUSE', 'https://drive.google.com/uc?id=1SNB0nTzHZ_vX9_gnPMs1Kpd7oErDMATo&export=media', 'gwZXhPEkNQ', '2021-10-27 09:49:12', '2021-10-29 05:45:02'),
('xsF19TMhoZ', 'VEHICLE', 'https://drive.google.com/uc?id=1rR-P9JiqermEjyivNrGuZYa-Mbho0Yzt&export=media', 'l8qS5IT1Q9', '2021-10-27 10:14:24', '2021-10-29 06:22:36'),
('ygubUyqQoN', 'WILD ANIMAL', 'https://drive.google.com/uc?id=1LtP-RW3ryPteCmjuO-nKIQ_QkOsX64VQ&export=media', '8plSIjT7Jq', '2021-10-27 09:50:50', '2021-10-29 05:51:37'),
('ZR8Oom877B', 'INCIDENT', 'https://drive.google.com/uc?id=104QnGZDylZQdV8obRSoGZg_pNb39pN1a&export=media', 'uOxGSRQRZF', '2021-11-04 08:38:33', '2021-11-04 08:38:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','student') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'student',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `role`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(0, 'Roel Hermiston', 'ubaldo.baumbach@example.org', '2022-04-21 22:59:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'student', 'opovkeju7M', NULL, NULL, '2022-04-21 22:59:27', '2022-04-21 22:59:27'),
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$4vC.sm24DaMSZbO/mGsgI.Pwgb/ItUxOjumK509zAux0vL7AX9CQ.', NULL, NULL, 'admin', NULL, NULL, NULL, '2021-10-26 22:12:51', '2021-10-26 22:12:51'),
(3, 'Murid Kesayangan', 'murid@gmail.com', NULL, '$2y$10$XpQYoSpM2WamUP8x6.is/.EiyiLdYAQ.Fz3ZavTLs3QabxFH3nKlS', NULL, NULL, 'student', NULL, NULL, 'assets/images/avatar-5.jpg', '2021-11-17 06:27:18', '2022-04-11 03:26:48'),
(5, 'Yoga Meleniawan Pamungkas', 'yogameleniawan@gmail.com', NULL, '$2y$10$tZbikFRYh7.mSILMotw9AON4D0u8ugQcInBjavzsMkYsaIRRQ8oLW', NULL, NULL, 'student', NULL, NULL, NULL, '2022-04-10 02:22:18', '2022-04-10 02:22:18'),
(6, 'Natalia Gleichner', 'adams.newton@example.net', '2022-04-21 23:01:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'student', 'AhXInF6bOf', NULL, NULL, '2022-04-21 23:01:50', '2022-04-21 23:01:50'),
(7, 'Otilia Bruen', 'padberg.jazlyn@example.com', '2022-04-21 23:03:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'student', '5haVgDeY0R', NULL, NULL, '2022-04-21 23:03:03', '2022-04-21 23:03:03'),
(17, 'Avery Bergnaum', 'moses26@example.com', '2022-04-21 23:04:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'student', 'zQqOeGgYCN', NULL, NULL, '2022-04-21 23:04:43', '2022-04-21 23:04:43'),
(19, 'Larue Jast', 'pacocha.marley@example.com', '2022-04-21 23:04:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'student', 'WB9PSOx4Dg', NULL, NULL, '2022-04-21 23:04:55', '2022-04-21 23:04:55'),
(20, 'Sabina Dietrich', 'waelchi.mia@example.com', '2022-04-21 23:04:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'student', 'I5UvrRAvLz', NULL, NULL, '2022-04-21 23:04:43', '2022-04-21 23:04:43'),
(22, 'Ivah Corkery', 'jedidiah10@example.net', '2022-04-21 23:04:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'student', 'NxpHhVaokJ', NULL, NULL, '2022-04-21 23:04:43', '2022-04-21 23:04:43'),
(23, 'Kenya Treutel', 'marilyne.glover@example.net', '2022-04-21 23:04:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'student', 'pAX3YZW4Hh', NULL, NULL, '2022-04-21 23:04:55', '2022-04-21 23:04:55'),
(24, 'Prof. Dock Schamberger PhD', 'toy.alexandro@example.org', '2022-04-21 23:04:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'student', 'ZDEeBj29Xr', NULL, NULL, '2022-04-21 23:04:43', '2022-04-21 23:04:43'),
(29, 'Henriette Schneider', 'ivory27@example.net', '2022-04-21 23:04:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'student', 'YtcI0iwg7k', NULL, NULL, '2022-04-21 23:04:35', '2022-04-21 23:04:35'),
(48, 'Maureen Spinka', 'kali.herman@example.com', '2022-04-21 23:04:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'student', 'Y3Yk1MinON', NULL, NULL, '2022-04-21 23:04:35', '2022-04-21 23:04:35'),
(50, 'Mr. Candelario Paucek', 'ortiz.vincent@example.com', '2022-04-21 23:04:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'student', 'sU8aF0xtNw', NULL, NULL, '2022-04-21 23:04:55', '2022-04-21 23:04:55'),
(56, 'Murl Rolfson', 'timmy.strosin@example.org', '2022-04-21 23:04:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'student', 'JWuqW2TMlU', NULL, NULL, '2022-04-21 23:04:35', '2022-04-21 23:04:35'),
(62, 'Mrs. Katarina Powlowski', 'tromp.moises@example.com', '2022-04-21 23:04:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'student', 'RJeVCZPamB', NULL, NULL, '2022-04-21 23:04:35', '2022-04-21 23:04:35'),
(70, 'Joe Harvey', 'delfina.nienow@example.com', '2022-04-21 23:04:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'student', '6G2w2nQQdy', NULL, NULL, '2022-04-21 23:04:35', '2022-04-21 23:04:35'),
(75, 'Berniece Witting', 'ibaumbach@example.org', '2022-04-21 23:04:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'student', 'kovAStbSBh', NULL, NULL, '2022-04-21 23:04:35', '2022-04-21 23:04:35'),
(77, 'Shayna Romaguera', 'ckerluke@example.org', '2022-04-21 23:04:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'student', 'zslYJsLl1C', NULL, NULL, '2022-04-21 23:04:55', '2022-04-21 23:04:55'),
(82, 'Eldon Koepp IV', 'zaria94@example.com', '2022-04-21 23:04:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'student', '07ej9LW2NN', NULL, NULL, '2022-04-21 23:04:55', '2022-04-21 23:04:55'),
(92, 'Irma O\'Keefe', 'adriel11@example.org', '2022-04-21 23:04:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'student', '9aPfUnVGMz', NULL, NULL, '2022-04-21 23:04:43', '2022-04-21 23:04:43'),
(94, 'Teresa Tillman', 'dhickle@example.org', '2022-04-21 23:04:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'student', 'Zxp6jPXKoL', NULL, NULL, '2022-04-21 23:04:43', '2022-04-21 23:04:43'),
(97, 'Katrina Strosin', 'meaghan56@example.org', '2022-04-21 23:04:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'student', 'qC53uZKLg2', NULL, NULL, '2022-04-21 23:04:43', '2022-04-21 23:04:43');

-- --------------------------------------------------------

--
-- Table structure for table `user_courses`
--

CREATE TABLE `user_courses` (
  `id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT 0,
  `is_true` tinyint(1) NOT NULL DEFAULT 0,
  `course_id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_courses`
--

INSERT INTO `user_courses` (`id`, `answer`, `checked`, `is_true`, `course_id`, `sub_category_id`, `user_id`, `created_at`, `updated_at`) VALUES
('03EUH8PYbl', 'Eaque et et itaque earum dolores.', 1, 1, 'fYyaE7aLNn', 'd6HV0jwtEZ', 82, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('0bZeKL2xec', 'Repellat dolorum nemo tenetur aut delectus et ea.', 1, 1, 'Yey0gSigTs', 'xsF19TMhoZ', 20, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('0CS2yZpxSL', 'Dignissimos dolore sed aut ut.', 0, 0, 'pqsDWNmqf0', 'xRADaFn1It', 56, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('0HjvBl6Tky', 'Omnis perferendis quo at ut repellat atque.', 0, 0, 'yWpeIj2A4o', 'iQrnJmYOoG', 20, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('0rSxpfYqWc', '', 1, 1, 'Y665EOaM6w', 'lQfg1njp9J', 3, '2022-04-17 05:29:41', '2022-04-17 05:29:41'),
('0SHAXxbja9', 'Ut dolorum eligendi et et voluptate quas.', 0, 0, 'bqvENscSWs', 'lIlykI7yix', 7, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('0SmUJRdqzH', '', 1, 0, 'pCk3a12RpC', 'nAA9EvuWY1', 3, '2022-04-17 05:30:07', '2022-04-17 05:30:07'),
('119QGfGvnS', 'Sit saepe pariatur unde magnam sit.', 0, 0, 'xZirPMl0qJ', 'Uv1CjrXSOF', 50, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('1fMDXjCRI9', '', 0, 0, 'BdB6vZmiGm', 'UlSaRWh3E1', 3, '2022-04-21 00:18:48', '2022-04-21 00:18:48'),
('1NpvX4jkpI', '', 1, 1, 'pwFkPECIt2', 'lQfg1njp9J', 3, '2022-04-17 05:29:41', '2022-04-17 05:29:41'),
('1pD4SSg55v', 'Quia et qui sint quis praesentium in.', 1, 0, '8n5GEXqASn', 'UXogDXaamX', 24, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('1RFl9hYDQq', '', 1, 0, 'kDaPosa3aG', 'nAA9EvuWY1', 3, '2022-04-17 05:30:07', '2022-04-17 05:30:07'),
('1tCsoUu04S', 'Facere accusamus aut aut expedita pariatur.', 0, 0, 'QZpFM1eho3', 'mqGYngDtGa', 3, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('1XJ9G8iBKr', 'Dolore at omnis ullam quia eum.', 1, 1, 'jhmisOpZIs', 'xRADaFn1It', 0, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('1ZQ39nevF7', 'Sunt molestiae est aut.', 0, 1, 'GYOz1ewV8y', 'xRADaFn1It', 70, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('206vq2QKYN', 'Provident vel provident occaecati.', 1, 1, 'YfVUqPVBKM', 'ZR8Oom877B', 20, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('2ApDSE7vcg', 'Sit et repellendus doloribus.', 1, 1, 'es7u1MUhD9', 'xaUv9NLBUB', 77, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('2E79ZuP7np', 'Perspiciatis dignissimos quas provident voluptas.', 0, 1, 'jLmXwZ48kY', 'iQrnJmYOoG', 75, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('2IJxMqjUwp', 'Commodi quo animi eum nihil et unde.', 0, 1, 'xkV8hOBEmh', 'iQrnJmYOoG', 24, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('2WCPaOeBRI', 'Deserunt debitis sunt facilis delectus.', 0, 0, 'pYhF9I1CNt', 'lQfg1njp9J', 92, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('36XyF3fiwk', '', 1, 1, 'cIVagB3Zzv', 'lIlykI7yix', 3, '2022-04-17 06:32:07', '2022-04-17 06:32:07'),
('3GppHwRtAr', 'Officia fugiat qui necessitatibus modi quasi.', 1, 0, 'uRmNUT3TCC', 'ZR8Oom877B', 19, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('3GvXdP20iP', 'Et accusantium ratione omnis porro eum delectus.', 0, 1, 'm7htJ3l8YJ', 'G4bbWyjO99', 7, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('3huEOIJ6Ng', 'Qui sit dolore hic autem.', 0, 1, 'vofIxz3zWc', 'e4iJNgm6Ca', 3, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('3LBda2m5mr', 'Magni nobis eveniet enim soluta est.', 0, 0, 'mZePjJkHaU', '5tqy8Q0anH', 19, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('3nOdKuz9hh', 'Ipsa perspiciatis explicabo magni et voluptatem.', 0, 0, 'C3hp7MAHv5', 'ygubUyqQoN', 23, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('3pUWUo7ZZc', 'Dicta praesentium voluptate sint voluptas.', 0, 0, 'KOyq4MKvff', '4ZMJBI87Ii', 62, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('3Rb1UGjAZr', 'Aliquam enim veniam occaecati repudiandae.', 1, 1, 'F0P7mdu2HI', 'G4bbWyjO99', 48, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('4Eu9TsX3Jq', 'Modi nam ut minima tempore minus.', 1, 1, 'es7u1MUhD9', 'lIlykI7yix', 70, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('4RRWjLkIYe', '', 0, 0, 'EDw1TZH41O', 'UXogDXaamX', 3, '2022-04-21 00:18:48', '2022-04-21 00:18:48'),
('4uqVb3lP7G', '', 1, 0, '9BHzyskTvL', 'lIlykI7yix', 3, '2022-04-17 06:32:07', '2022-04-21 00:18:08'),
('4wJwl97oGr', 'Eius omnis saepe modi est veniam aut.', 0, 0, 'hZQMKXNk3K', 'mqGYngDtGa', 23, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('53X4uUrhti', 'Labore est animi possimus.', 1, 1, 'YfVUqPVBKM', 'G4bbWyjO99', 6, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('5DFODTuEmb', 'Quibusdam alias quis ab ab.', 0, 0, 'QZpFM1eho3', 'ygubUyqQoN', 24, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('5dQ1rzLU0H', 'Hic libero non maiores aut.', 1, 0, 'SAZNIeFQxG', 'xRADaFn1It', 19, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('5HM8RNRihh', '', 0, 0, 'mLEOwgmCNc', 'UXogDXaamX', 3, '2022-04-21 00:18:48', '2022-04-21 00:18:48'),
('5HyrcEqDFV', 'Blanditiis dolores autem ab officiis.', 1, 1, '9zIpFCxZoI', '9PMo2pGpX6', 77, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('5ncC5r0RP6', 'Quia et amet aut itaque dignissimos.', 0, 1, 'C3hp7MAHv5', 'iQrnJmYOoG', 23, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('5noZTeSQiv', 'Illum cupiditate doloremque consectetur qui vel.', 1, 1, 'AAN8SqU79D', 'kd4oos26tl', 62, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('5RPuhbWGQZ', 'Nihil velit enim excepturi eos non quia.', 0, 0, '1cAstesWzI', '5tqy8Q0anH', 92, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('60SCQhO818', '', 0, 0, 'xZirPMl0qJ', 'UlSaRWh3E1', 3, '2022-04-21 00:18:48', '2022-04-21 00:18:48'),
('69POJ6n8Nj', 'Id ut omnis rem qui pariatur.', 1, 0, 'jLMHJuFuoH', 'Uv1CjrXSOF', 62, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('6NYUpjhfxw', 'Beatae adipisci blanditiis in debitis.', 1, 0, '6LShPoNxwp', 'jsDsCkdOPZ', 29, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('6saX8obekT', 'Asperiores dolor et reiciendis illum sequi fuga.', 1, 1, 'vofIxz3zWc', 'xsF19TMhoZ', 24, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('75tIl2r7wi', 'Sequi error totam quasi ex.', 0, 0, 'yocXwUvfWR', 'lQfg1njp9J', 50, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('7D99DjSKrJ', 'Illo qui minima nemo quia eveniet nobis quis.', 1, 0, 'P90JBJTvO5', '9PMo2pGpX6', 94, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('7feydxUCM0', 'Est eligendi non beatae est omnis ab.', 1, 1, 'aeoescB7Xu', 'lIlykI7yix', 77, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('7GQ5u57QAu', 'Rem a suscipit dolor sint esse et ullam.', 1, 1, 'Qcb8uziFlx', 'kd4oos26tl', 48, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('7Hx0Zx3BNE', 'Iure cupiditate sed commodi hic blanditiis.', 1, 1, 'BX3FMd6M20', 'ZR8Oom877B', 24, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('7j6jNI8eqU', 'Optio laborum et est distinctio.', 0, 1, 'QZpFM1eho3', 'xaUv9NLBUB', 97, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('7sZX44A6TW', 'Est tenetur sit libero eaque.', 1, 1, 'mTc0FZkdau', 'LkcMVU9fBL', 7, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('7UxRzz6kEN', 'Dolore eligendi hic blanditiis maiores aut.', 0, 0, 'SYaJ6eQ0QW', '4ZMJBI87Ii', 70, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('7w4sr9mqh5', '', 1, 1, '8SOuxj4IVL', 'lQfg1njp9J', 3, '2022-04-17 05:29:41', '2022-04-17 05:29:41'),
('7xWE3J6unl', 'Corrupti minus eligendi quia in.', 1, 1, '9Z7ptRkZ5g', 'ygubUyqQoN', 92, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('7yWc2WmDAS', 'Dignissimos fuga quia sunt.', 0, 0, 'yPMjQK5ADr', 'lIlykI7yix', 24, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('7zU2XrC0AD', 'Ipsa tenetur et consectetur eum.', 1, 1, 'lhtxttAvUk', 'jsDsCkdOPZ', 48, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('8DRbm1DX66', 'Sint atque iusto qui ea eum occaecati.', 1, 1, 'Sj5JraL5ip', '4ZMJBI87Ii', 75, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('8iPxRFOk01', 'Sit rerum dolor voluptas ut eaque nemo.', 1, 1, 'eEe41H3qkW', 'ZR8Oom877B', 24, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('8JIfbY8WBS', 'Id et aut soluta animi doloribus omnis.', 1, 0, 'gU3AtZjNls', 'UXogDXaamX', 3, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('8Qsxa9Vcqp', 'Soluta ab eius aut neque alias distinctio.', 0, 1, 'KX4ciRSUyg', 'UlSaRWh3E1', 6, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('8W53ch5UTG', 'Aliquam est sed temporibus aliquam quis.', 1, 0, '47AX1WRn3G', '4ZMJBI87Ii', 94, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('99jsqWB90S', 'Id architecto in voluptatibus nihil.', 0, 1, 'cgMxRnxtpR', 'Kx3nrVcSeN', 19, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('9qmSaPeLMt', 'Inventore in praesentium et dolores et.', 1, 0, '34bIDiBClG', 'nAA9EvuWY1', 29, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('9rzAWz6zt2', '', 0, 0, '2otGyf0qoe', 'UXogDXaamX', 3, '2022-04-21 00:18:48', '2022-04-21 00:18:48'),
('a0oR8BaW8n', 'Doloribus sit sunt aut maxime ut.', 1, 1, 'jLMHJuFuoH', 'xaUv9NLBUB', 92, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('a4BK1jnuBT', 'In nobis odit perferendis voluptates provident.', 0, 1, 'BNA1o6Illo', 'e4iJNgm6Ca', 48, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('a5zwX5LTXg', 'Autem ut libero aut nostrum ut.', 0, 1, 'pqsDWNmqf0', 'ygubUyqQoN', 48, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('ahAfXtEbrA', 'Fuga quam corporis modi commodi ducimus qui.', 0, 0, 'T9BZQxMPUv', 'd6HV0jwtEZ', 94, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('AKUNYdbhR8', 'Pariatur ut sed quaerat quos totam velit quo.', 1, 1, 'pYhF9I1CNt', 'mqGYngDtGa', 56, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('alE4vzMo7F', 'Nihil aut repudiandae voluptatem dolorem.', 0, 1, 'KX4ciRSUyg', 'iQrnJmYOoG', 82, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('aLIwpNuEHD', 'Ad rerum sunt dolorem. Ea dolor eos excepturi.', 0, 0, 'hZQMKXNk3K', 'jsDsCkdOPZ', 50, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('aLT2xQqQwf', 'Sed nostrum voluptate similique.', 0, 1, '81ipxaUaRF', 'nAA9EvuWY1', 48, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('amtHLKMCLH', 'Veritatis placeat quia ex quia.', 0, 1, 'MS4BebuGmO', 'UlSaRWh3E1', 62, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('aPHCKWmItK', 'Assumenda id perferendis excepturi.', 1, 1, 'F0P7mdu2HI', 'iQrnJmYOoG', 17, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('apSTAdT3jF', 'Aliquid sunt ipsum in.', 1, 0, '6CO55MClMB', '4ZMJBI87Ii', 1, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('asSwREIxVc', 'Molestiae velit vel provident facilis.', 1, 0, 'Vdhs5csvm8', 'Kx3nrVcSeN', 92, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('bAGDWwp8cm', '', 0, 0, 'uRmNUT3TCC', 'UXogDXaamX', 3, '2022-04-21 00:18:48', '2022-04-21 00:18:48'),
('bB6wtGTMfP', '', 0, 0, '8sVdGgTweV', 'UlSaRWh3E1', 3, '2022-04-21 00:18:48', '2022-04-21 00:18:48'),
('Bc3rAhyTr5', 'Tenetur magni laboriosam repudiandae velit culpa.', 1, 1, 'TkhP2wMwSj', 'xaUv9NLBUB', 19, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('bE6qrQymlz', '', 1, 0, 'jLmXwZ48kY', 'nAA9EvuWY1', 3, '2022-04-17 05:30:07', '2022-04-17 05:30:07'),
('Bkkj80qZVb', 'Autem neque et nemo asperiores soluta quia quo.', 1, 1, 'aS1zsXNvrW', 'kd4oos26tl', 19, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('blB9XOZfEb', 'Tempore error repellat eum ipsa quas ipsum vel.', 1, 1, '0raI0RHnqx', 'xaUv9NLBUB', 97, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('Bm08ce6LP8', 'Rerum quasi harum eum.', 0, 1, 'KZIP44LDvu', 'Uv1CjrXSOF', 0, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('BmLGW8tGQm', 'Nesciunt aut repellendus quasi cum et vel.', 1, 1, 'jhmisOpZIs', 'xRADaFn1It', 3, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('BSFUDKGGKn', 'Molestiae iure iusto sit rerum laboriosam sint.', 1, 1, 'FgH3XDUTvn', 'xRADaFn1It', 0, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('bvfjWhK0AK', 'Suscipit iusto similique voluptas ratione et.', 0, 1, 'aS1zsXNvrW', 'ygubUyqQoN', 56, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('bXzV7FY3Fy', 'Quidem quia quibusdam sit aspernatur.', 1, 1, 'MS4BebuGmO', 'Kx3nrVcSeN', 1, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('bypOLw2CFR', '', 0, 0, 'GBojb7ESDZ', 'UXogDXaamX', 3, '2022-04-21 00:18:48', '2022-04-21 00:18:48'),
('c1Meio0qSb', 'Nisi dicta animi magni odit.', 0, 1, 'OY4ZbyyH5r', '9PMo2pGpX6', 23, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('cGKuhGqJCq', 'Vitae commodi libero quo tempore laborum.', 1, 1, 'iSmyhCOTV1', 'nAA9EvuWY1', 23, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('Cn9T2e3s8H', 'Modi eaque laborum eaque nesciunt libero ea est.', 0, 0, 'F0P7mdu2HI', 'd6HV0jwtEZ', 82, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('cnons9mwzz', 'Porro veniam impedit dolorem beatae et.', 0, 1, 'Vq9Twug6o7', 'd6HV0jwtEZ', 0, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('CoxGiod8BY', 'Itaque cupiditate repudiandae quas ullam sunt ea.', 0, 0, 'GtetMDoTcP', '4ZMJBI87Ii', 75, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('CrhId8OtCU', 'Voluptatibus rerum ut et est minima cumque.', 1, 0, '81ipxaUaRF', '5tqy8Q0anH', 94, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('CykFuuLFez', 'Ea voluptate natus accusantium aut sit libero.', 1, 0, 'YfVUqPVBKM', 'ZR8Oom877B', 6, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('CZt6WHfAj4', 'Placeat aliquam repellendus similique in ut.', 1, 0, 'nFuMb7jplG', 'nAA9EvuWY1', 20, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('D43rHR0wuS', 'Et saepe doloribus omnis perspiciatis quis.', 1, 0, 'cjLqJv5K8S', 'ygubUyqQoN', 17, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('D5ujhj6SKT', '', 0, 0, 'cjLqJv5K8S', 'UlSaRWh3E1', 3, '2022-04-21 00:18:48', '2022-04-21 00:18:48'),
('d8sP8al5ks', 'In consectetur laboriosam alias ea.', 1, 1, 'BWoCSuZLq1', 'iQrnJmYOoG', 6, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('D8wCWAW5Mm', 'Voluptates repellat quia praesentium.', 0, 0, 'yXvcDjTqzI', 'kd4oos26tl', 29, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('dCUlBrFduf', 'Eum rerum ipsam aut vero.', 1, 0, 'Yey0gSigTs', 'xsF19TMhoZ', 3, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('DK1kCOmPTB', 'Ut iure commodi et similique.', 1, 1, '8SOuxj4IVL', 'e4iJNgm6Ca', 97, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('DSSbT9BIbm', 'Non iusto pariatur pariatur neque quibusdam eos.', 0, 0, 'yWpeIj2A4o', 'ygubUyqQoN', 70, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('DUSnuEVQaU', 'Quis nisi qui ipsum sit ea.', 1, 1, 'uW2JOlBHAe', 'mqGYngDtGa', 97, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('dUwv3gdN7h', 'Cum delectus et illum.', 1, 1, '8YkDz24v7k', 'UXogDXaamX', 3, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('dyjCIinlGG', '', 1, 0, 'D85SQQmRuH', 'nAA9EvuWY1', 3, '2022-04-17 05:30:07', '2022-04-17 05:30:07'),
('E1EgTfy0Lt', 'Tenetur vero et et est.', 1, 0, 'oDhlez4jIS', 'UXogDXaamX', 70, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('ea0GMPk7qt', 'Dolorum minus nulla ipsum eaque.', 0, 1, 'mZePjJkHaU', '9PMo2pGpX6', 22, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('ebWBMqqjqY', 'Eaque ut id incidunt optio natus rem sunt.', 0, 1, 'dBPcXKEyVP', 'Kx3nrVcSeN', 70, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('EeyNka1tMx', 'Qui impedit ut voluptas est et ea.', 1, 1, 'GBojb7ESDZ', 'UlSaRWh3E1', 48, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('EihnCLZWEl', 'Et et qui ab sint aut explicabo.', 1, 1, 'iFIo3cZTyg', 'e4iJNgm6Ca', 19, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('eKFvAZFpDi', '____________', 1, 0, 'P90JBJTvO5', 'kd4oos26tl', 3, '2022-04-20 05:20:48', '2022-04-21 00:16:36'),
('Ektp4nwXSU', 'Accusamus qui aut debitis adipisci sit at est.', 1, 1, 'xGHI66dbxz', 'mqGYngDtGa', 17, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('ENk5sLe7F2', 'Est rerum ab ut.', 0, 0, 'jLMHJuFuoH', 'mqGYngDtGa', 6, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('EOGszHmjJd', 'Minus suscipit velit nobis voluptas dolor.', 1, 0, 'NuNCiByICl', 'Kx3nrVcSeN', 0, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('EpZOfAtksG', 'Adipisci dolor harum aut saepe minus beatae.', 1, 0, 'QqnmIxA9V1', 'LkcMVU9fBL', 94, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('EqZJYy51Wj', '', 1, 0, 'izoA0sIDW7', 'nAA9EvuWY1', 3, '2022-04-17 05:30:07', '2022-04-17 05:30:07'),
('eRCIq1gXOB', 'Deleniti repellat voluptate labore aut et natus.', 1, 0, 'x4cT6NUkuI', 'xsF19TMhoZ', 77, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('ERStQQRBxG', 'Omnis consequatur sapiente est porro rem.', 0, 1, 'KX4ciRSUyg', '5tqy8Q0anH', 56, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('EUhpCmN2BV', 'Nemo doloremque magni cumque vitae consequuntur.', 0, 0, 'BdB6vZmiGm', 'ygubUyqQoN', 70, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('evvICLRd8b', 'Atque sit ipsam culpa aut.', 0, 1, '9PngcKu3jV', 'lIlykI7yix', 62, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('EXg442Ns21', 'Sed provident veritatis vel id voluptatem.', 1, 1, 'SAZNIeFQxG', 'kd4oos26tl', 77, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('eXs74otPPW', 'Beatae voluptatem non ducimus cupiditate odit.', 0, 1, 'HfOPEiC6Hu', 'uMq6cenpUS', 17, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('EZy76sYBqH', 'Quidem ratione sunt repudiandae.', 0, 1, 'lpAHPOA8vT', 'iQrnJmYOoG', 24, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('F2sthSvXG2', 'Consequatur possimus iste et eius ipsa.', 0, 1, '5kvk6W2rDf', '5tqy8Q0anH', 6, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('f3ZO3ZX96x', 'Ea quas dolor officia in error cumque.', 1, 1, 'GYOz1ewV8y', 'ZR8Oom877B', 23, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('f9SzcvhAD4', 'Omnis totam blanditiis eligendi et repellendus.', 1, 1, 'zH7JUKSnMe', 'nAA9EvuWY1', 77, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('FICWV5PS7c', 'Facere quae tenetur quidem praesentium.', 1, 0, 'I6mUwCHRps', 'UlSaRWh3E1', 75, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('fJCVJxyKCD', 'Sit illum aspernatur et ut.', 1, 0, 'F0P7mdu2HI', 'xRADaFn1It', 6, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('fjkmIbdSFd', 'Laudantium odio error nihil veniam totam id.', 0, 0, 'KbmVv2aztb', 'kvI4kxbK8U', 29, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('FsRD6p3yDL', 'Et a accusamus perferendis error magnam.', 1, 1, 'V81rpqGviK', 'e4iJNgm6Ca', 23, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('fsV26adkJB', 'In totam quidem corporis aut veritatis maxime a.', 1, 0, 'gU3AtZjNls', 'ygubUyqQoN', 97, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('FukUjb3YFp', 'Eligendi ad distinctio quidem et amet ullam.', 0, 1, 'Zq6ndJVWV2', '5tqy8Q0anH', 23, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('fUZHpyDbeo', 'Veritatis et qui iste sit adipisci.', 1, 1, 'yXvcDjTqzI', 'e4iJNgm6Ca', 24, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('G4bhP9RUzZ', 'Aut quam alias veniam rerum est.', 0, 1, 'cjLqJv5K8S', 'kvI4kxbK8U', 23, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('G5UZcIAFHB', 'Illum aut fugit occaecati.', 0, 1, '96wUddudBO', 'uMq6cenpUS', 0, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('G8VKRzTtaF', 'Eum aut et fuga et sit ad.', 0, 1, 'YEdbzllOYp', 'xsF19TMhoZ', 48, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('gBj1I6b6Tf', 'Amet nihil in ducimus qui non.', 0, 1, 'a1GDHKhhOt', 'ZR8Oom877B', 97, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('GcmZDHxyKP', 'Quos officiis aut natus sapiente possimus sed.', 0, 1, 'jLmXwZ48kY', 'lIlykI7yix', 6, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('gEBszr8M5o', 'Labore et non in aut et.', 1, 1, 'LVK67g6Vww', 'Kx3nrVcSeN', 17, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('ggnXVqHeg7', 'Inventore iste alias modi iure id.', 0, 1, 't6J4IyvLBn', 'd6HV0jwtEZ', 50, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('GjQklBZyFh', 'Ipsum et ut consequuntur aliquid.', 1, 1, 'dSmyHyVHAe', 'xsF19TMhoZ', 0, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('GK0NgX2sIY', 'Repellat ex ut molestiae aut accusamus eum rerum.', 0, 0, '6CO55MClMB', 'xsF19TMhoZ', 7, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('gOc4amTJrC', 'Est dolorem earum nulla qui eius doloremque.', 0, 1, 'xcYWfJV84E', 'Uv1CjrXSOF', 22, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('Gsf5xoLa14', 'Odit explicabo placeat vel odio.', 1, 1, 'oDhlez4jIS', '9PMo2pGpX6', 82, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('gTWH6Ea60F', 'EAR', 1, 1, '1cAstesWzI', 'kd4oos26tl', 3, '2022-04-20 05:20:48', '2022-04-21 00:16:52'),
('GvrkMrK8EU', 'Voluptates accusantium qui consectetur.', 0, 1, 'yocXwUvfWR', 'e4iJNgm6Ca', 7, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('gxMGdB3FNt', 'Sed sit autem eos quae odit.', 1, 0, 'rPZrSJM0ff', 'ygubUyqQoN', 22, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('GxRfPz5OOH', 'Possimus quibusdam amet ut tempora deleniti sit.', 0, 0, 'MS4BebuGmO', 'LkcMVU9fBL', 7, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('GY9FiyHodg', 'Iste delectus fugiat veniam veniam enim.', 0, 1, 'G5eCiuj0ky', 'lIlykI7yix', 62, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('H4rT7nasQF', 'Dolor voluptas at ipsa qui facere rerum eum.', 1, 0, 'D85SQQmRuH', 'uMq6cenpUS', 7, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('h5M22mNuse', 'Sed minus deserunt id aut.', 1, 0, 'mCOBQO5X6d', 'iQrnJmYOoG', 7, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('H7gO2nZKrd', 'Praesentium atque velit sed excepturi omnis.', 1, 0, 'bly0hAKbTQ', 'UXogDXaamX', 62, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('h7JhGRjiTu', 'Voluptas numquam odit deleniti cum.', 0, 0, 'bisjhvxfx7', 'lIlykI7yix', 97, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('hbMVEMIpEt', 'Nam rem cupiditate amet mollitia.', 0, 1, 'F9pqUoU5op', 'UlSaRWh3E1', 94, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('HD0qUcYhPJ', 'Maxime aperiam eveniet odio nostrum qui voluptas.', 1, 0, 'rCRoZ4UiCQ', 'mqGYngDtGa', 1, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('HDMeK5msZL', 'Sed provident voluptas quaerat facere a adipisci.', 1, 0, 'kmFILFXtBd', 'kvI4kxbK8U', 17, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('hoC8eORQkh', 'Odio est et sed.', 1, 1, 'L4geeLjkhh', 'kd4oos26tl', 22, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('HPvwb48SXl', 'Consequuntur libero esse rerum ut.', 1, 1, 'nFuMb7jplG', 'jsDsCkdOPZ', 6, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('hslQu5lgiU', 'Placeat autem numquam nam non porro.', 1, 1, '6ZKGSoQqsq', 'G4bbWyjO99', 29, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('I09g4vEu5q', 'Fuga quas enim nulla excepturi expedita vel id.', 0, 0, 'mLEOwgmCNc', 'jsDsCkdOPZ', 5, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('i1gTgxNwHe', 'Ut ut id repellat facilis iure suscipit est.', 0, 1, 'Ipb0CC5QC1', 'G4bbWyjO99', 5, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('i1xHEo8br1', 'MOUTH', 1, 1, 'fYyaE7aLNn', 'kd4oos26tl', 3, '2022-04-20 05:20:48', '2022-04-21 00:16:46'),
('IKzDoyyu1d', '', 1, 1, 'HtszrGWpx8', 'lIlykI7yix', 3, '2022-04-17 06:32:07', '2022-04-17 06:32:07'),
('iLIVB1O3ms', 'Sapiente error ipsum esse eos.', 0, 1, 'WjoTKcy55E', 'Uv1CjrXSOF', 75, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('ilwE9gCV34', 'Sed beatae totam a.', 1, 1, 'iSmyhCOTV1', 'jsDsCkdOPZ', 62, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('IMyJGDZ2TN', 'At aut vitae sunt est voluptas id provident.', 0, 1, 'TkhP2wMwSj', 'kvI4kxbK8U', 62, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('iQrku7Yn0t', '', 1, 0, 'FgH3XDUTvn', 'lQfg1njp9J', 3, '2022-04-17 05:29:41', '2022-04-17 05:29:41'),
('ITpl9AdVYt', 'Cupiditate aperiam fugiat ab nam adipisci.', 1, 1, '1cAstesWzI', 'ZR8Oom877B', 62, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('IwbTfM8lff', 'Mollitia corporis similique minus iusto aut.', 1, 1, 'cjLqJv5K8S', 'xaUv9NLBUB', 56, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('IwNSA0NrRT', 'Recusandae alias quasi sint dignissimos.', 1, 1, 'efekszL6Um', 'G4bbWyjO99', 50, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('j1LlNNP6j7', 'Deserunt qui ducimus ad eaque.', 0, 0, '2otGyf0qoe', 'UXogDXaamX', 75, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('J4fND37Trt', 'Et voluptas veritatis ex.', 1, 1, 'KOyq4MKvff', 'LkcMVU9fBL', 97, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('JANArAFM42', 'Vero non animi dicta unde dolor.', 0, 0, '6PXkZ58QOz', 'Kx3nrVcSeN', 23, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('JIEzpeaxv3', 'Labore fugit quis officia in tenetur labore.', 0, 0, 'P90JBJTvO5', 'xRADaFn1It', 94, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('JL7gvwqhrY', 'Modi totam aliquid velit.', 0, 1, 'eEe41H3qkW', 'mqGYngDtGa', 17, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('JmWoQhFKQO', 'Laborum dolores est numquam magni.', 1, 0, '6PXkZ58QOz', 'Uv1CjrXSOF', 3, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('jnoRQzqzJD', 'Et aut tenetur cumque sit nostrum odit.', 1, 0, 'frPfztqi1F', 'lIlykI7yix', 20, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('JQFaaIsQ8T', 'Ipsa enim doloremque aut aspernatur.', 0, 1, '8SOuxj4IVL', 'UXogDXaamX', 97, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('JsG6ySM1Ia', 'Minus magnam in vitae omnis quos velit ea.', 0, 0, 'HtszrGWpx8', 'Kx3nrVcSeN', 23, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('jUFBCKMqYU', 'Enim ad accusantium in et.', 0, 0, 'vofIxz3zWc', 'e4iJNgm6Ca', 94, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('JUkedkYmXU', '', 1, 0, 'CqBONY3sTM', 'nAA9EvuWY1', 3, '2022-04-17 05:30:07', '2022-04-17 05:30:07'),
('jvh13jdv8X', 'Voluptates eum molestiae sed rerum.', 0, 0, 'nFuMb7jplG', 'lQfg1njp9J', 92, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('jw7Z6D91hd', 'Sint a molestias sit ad distinctio ut.', 0, 0, 'Y665EOaM6w', 'uMq6cenpUS', 70, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('jWZjl2UZof', 'Mollitia enim adipisci facere nobis nihil est.', 1, 0, 'xkV8hOBEmh', 'lIlykI7yix', 17, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('jx2JKVgzwI', 'Porro maiores quia aut aliquid alias.', 0, 0, 'NuNCiByICl', '5tqy8Q0anH', 70, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('Jy7f9lM3a5', 'Alias quo non maiores.', 0, 1, 'YfVUqPVBKM', 'e4iJNgm6Ca', 50, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('Jz7gg8uNTH', 'Est sit et dolor et molestiae.', 1, 1, 'gU3AtZjNls', 'mqGYngDtGa', 92, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('K2Yj36sCpq', 'Officia eius accusamus autem quo exercitationem.', 1, 1, 'yocXwUvfWR', 'uMq6cenpUS', 92, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('kNfCVBOwLG', 'Natus maiores et vel quidem rem dolor architecto.', 0, 0, 'Vq9Twug6o7', 'ZR8Oom877B', 50, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('kVvA5GLy8L', 'Similique dignissimos et a at qui.', 0, 1, 'Ie0EQOtZYT', 'ygubUyqQoN', 17, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('l02cRrzJYj', '', 0, 0, 'WkYDfsgTdh', 'UXogDXaamX', 3, '2022-04-21 00:18:48', '2022-04-21 00:18:48'),
('l345QgnJAM', 'Sed id unde ipsam accusamus provident enim.', 1, 1, 'CqBONY3sTM', 'uMq6cenpUS', 62, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('lCJ884gvHF', 'Eum harum quod velit iusto est ea vel.', 1, 0, 'dBPcXKEyVP', 'UXogDXaamX', 22, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('LD4JvJHOwj', 'Voluptatem dolorum laborum molestiae.', 0, 0, 'bisjhvxfx7', '4ZMJBI87Ii', 62, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('lhlk82hUOK', 'Odio tempora a vitae molestiae modi natus.', 0, 1, 'mCOBQO5X6d', 'uMq6cenpUS', 97, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('liledRJpos', 'Quia est nemo quis expedita.', 0, 0, 'OY4ZbyyH5r', 'Uv1CjrXSOF', 82, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('LIsAX3PQzO', 'Vel tempore aliquid quasi molestias qui.', 0, 1, '0raI0RHnqx', 'mqGYngDtGa', 62, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('m05v0T4Ymz', 'Quasi iste et nesciunt et omnis rerum debitis.', 1, 1, 'mLzr7wGdbT', 'xsF19TMhoZ', 94, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('m0NPSOJxWu', 'Qui mollitia error rerum vel harum.', 1, 0, 'lkmsiEgcmu', 'Kx3nrVcSeN', 56, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('M4cRfJXxgc', 'Illo numquam ut enim.', 1, 1, '1cAstesWzI', 'xaUv9NLBUB', 6, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('M53VKrUQxn', 'Ex corrupti odio veritatis.', 0, 0, 'pYoRAvuWdD', 'UXogDXaamX', 5, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('m5as4YnBr6', 'Ut est facere dignissimos est voluptas alias qui.', 1, 1, 'es7u1MUhD9', 'UlSaRWh3E1', 94, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('m5cWKywInh', 'Minima fuga accusamus neque fuga nisi.', 1, 0, 'izoA0sIDW7', 'lQfg1njp9J', 22, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('MEb7ZSIKkt', '', 1, 0, 'a7WqzS57Tv', 'lIlykI7yix', 3, '2022-04-17 06:32:07', '2022-04-17 06:32:07'),
('MgnBOzhGsX', 'Voluptas eligendi animi iusto.', 0, 0, 'MS4BebuGmO', 'kd4oos26tl', 77, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('mouphbqRev', 'Ut voluptas dolor tenetur qui sint.', 1, 1, 'QAmiUgutOK', '4ZMJBI87Ii', 20, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('MwPzyOEhR2', 'Et nam excepturi sint et.', 0, 1, 'q2u9K0RrCz', 'xaUv9NLBUB', 50, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('MyKRoiLAUw', 'Veritatis similique fuga accusantium voluptas.', 1, 0, '2otGyf0qoe', 'lQfg1njp9J', 70, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('n2JPnyMlBQ', 'Qui perspiciatis eligendi quae qui.', 0, 0, '8sVdGgTweV', 'lIlykI7yix', 24, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('NamOJ86MHA', 'Omnis blanditiis recusandae nam optio.', 1, 0, 'Yey0gSigTs', '4ZMJBI87Ii', 19, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('nD4wqjqt1h', 'Error ut at aspernatur perspiciatis esse.', 0, 1, 'Y665EOaM6w', '9PMo2pGpX6', 17, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('NdyA49YZZN', 'Est voluptatem enim perferendis et omnis ea.', 1, 0, 'L4geeLjkhh', 'd6HV0jwtEZ', 92, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('NEOWKK0NGj', '', 1, 0, 'GIqVaEp7df', 'nAA9EvuWY1', 3, '2022-04-17 05:30:07', '2022-04-17 05:30:07'),
('nfFmydehlu', 'Et optio qui accusamus est ut voluptatibus omnis.', 1, 1, 'l1nzFHuWCP', 'nAA9EvuWY1', 3, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('ngEWL0tUIU', 'Sit consequatur laborum est aut sit quis.', 0, 1, 'JwwsNMmAQX', 'e4iJNgm6Ca', 75, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('NGUIjSYxVA', '', 0, 0, 'cO0VJPbBlJ', 'UXogDXaamX', 3, '2022-04-21 00:18:48', '2022-04-21 00:18:48'),
('nI0zPp4ep7', 'Nam est dolor et inventore.', 1, 0, 'Fze5rbpe6i', 'UXogDXaamX', 0, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('nkag5pX4sQ', 'Consequuntur ea quos et mollitia.', 1, 0, 'bly0hAKbTQ', 'iQrnJmYOoG', 17, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('nLudIqzMcm', 'Omnis natus impedit ipsa deserunt qui.', 0, 0, 'OY4ZbyyH5r', 'nAA9EvuWY1', 0, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('nMkgF8CoTc', 'Deserunt voluptatum consectetur dolor autem.', 0, 1, '9BHzyskTvL', 'ZR8Oom877B', 82, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('nneorrLxIS', 'Sed quibusdam aut nisi sunt ipsam saepe.', 1, 1, 'a32L3ZqBre', 'xsF19TMhoZ', 19, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('nntqHtLhSm', 'Ullam illum ea reprehenderit.', 1, 0, 'QZpFM1eho3', 'UXogDXaamX', 20, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('nQ3CteAZuy', 'Et qui adipisci nihil quia.', 1, 1, 'vt9zfmTtB5', 'e4iJNgm6Ca', 97, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('nsi0w3Qx4U', 'Ea enim quae est rerum neque autem adipisci.', 1, 0, 'nFuMb7jplG', 'ygubUyqQoN', 94, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('nSweHuCJzg', 'Velit animi quasi expedita in.', 0, 0, 'vt9zfmTtB5', '9PMo2pGpX6', 48, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('NtdZpxgxti', 'Eligendi deserunt ea reprehenderit et.', 0, 0, 'GIqVaEp7df', 'jsDsCkdOPZ', 94, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('nu5cGqdvSo', 'Sed accusantium explicabo aut et ut voluptatem.', 0, 0, 'jkz8MB7Kgi', 'UXogDXaamX', 82, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('nYDEzC8SDL', '', 1, 0, '732d6aRHcP', 'nAA9EvuWY1', 3, '2022-04-17 05:30:07', '2022-04-17 05:30:07'),
('O2Hx0m5NnW', 'In sequi est voluptas omnis soluta quos.', 1, 1, 'cIVagB3Zzv', 'kvI4kxbK8U', 19, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('O5FNLSE7EW', 'Quia nihil libero alias facilis debitis.', 0, 0, 'kmFILFXtBd', 'uMq6cenpUS', 92, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('O9rMdyHp9i', 'Laboriosam neque id corrupti cupiditate.', 0, 0, 'kmFILFXtBd', 'xsF19TMhoZ', 82, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('OdlJbZt37L', 'Dicta magnam quis qui dolores iure.', 0, 0, 'l0FMWapKNx', 'G4bbWyjO99', 77, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('oDONdMhzKv', 'Quos est magni aut ex.', 1, 0, '2otGyf0qoe', '4ZMJBI87Ii', 48, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('oDZ9U9ZTz2', 'Maxime tempore et neque et.', 0, 0, 'hZQMKXNk3K', 'xsF19TMhoZ', 92, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('OEv61qvkWG', '____________', 1, 0, 'HyKiRjtmo0', 'kd4oos26tl', 3, '2022-04-20 05:20:48', '2022-04-21 00:16:48'),
('ofm2eTaHF8', 'Dolorem veniam et error impedit.', 1, 0, 'V81rpqGviK', 'Kx3nrVcSeN', 56, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('OIvJfAbE3r', 'Aut repellat alias dolore voluptate et beatae.', 1, 1, 'izoA0sIDW7', 'G4bbWyjO99', 97, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('OJ7z7ikgg7', 'Voluptas earum at nemo error.', 0, 0, 'lkmsiEgcmu', 'ZR8Oom877B', 62, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('okmGBDf3oy', '', 1, 0, '0raI0RHnqx', 'lQfg1njp9J', 3, '2022-04-17 05:29:41', '2022-04-17 05:29:41'),
('OlBcKKGV9E', 'Et voluptate delectus eum voluptatem ut dolorem.', 1, 0, '732d6aRHcP', 'd6HV0jwtEZ', 24, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('OTzkKlsZ3g', 'Aperiam qui totam et aliquid recusandae quae.', 1, 0, '34bIDiBClG', 'lIlykI7yix', 75, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('ovsdUGrnim', 'Ut saepe commodi quisquam est ipsa quo.', 1, 1, 'q2u9K0RrCz', 'mqGYngDtGa', 19, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('OyQfy1aMxb', '', 1, 0, 'LPAyi5cbMG', 'nAA9EvuWY1', 3, '2022-04-17 05:30:07', '2022-04-17 05:30:07'),
('P3BMy1N5mm', 'Ut est doloribus facilis autem itaque doloribus.', 1, 1, '4hMc2krnHT', 'ZR8Oom877B', 56, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('PCIP0G3Epu', 'Enim laboriosam tenetur dolor explicabo qui.', 0, 1, 'jhmisOpZIs', 'xsF19TMhoZ', 82, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('PhdH5Gq9EK', 'Cumque exercitationem modi nulla sequi.', 1, 1, 'JwwsNMmAQX', '4ZMJBI87Ii', 29, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('PN7woczepp', 'Alias culpa vel sed culpa minima quia.', 0, 1, 'QAmiUgutOK', 'kd4oos26tl', 23, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('pQvDxPRx11', 'Quam ut sed et ullam assumenda.', 0, 0, 'iFIo3cZTyg', 'mqGYngDtGa', 24, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('PuAnAfHFgR', 'Odit sit iure necessitatibus officia cumque.', 1, 0, 'OY4ZbyyH5r', 'mqGYngDtGa', 97, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('pv9gNiDtFu', 'Non aut accusamus consequatur.', 1, 0, '5kvk6W2rDf', 'xaUv9NLBUB', 48, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('q4y3Yt7bUb', 'Itaque in enim aut quos omnis ipsa voluptatem.', 1, 0, 'NOmW4yTlcu', 'xsF19TMhoZ', 50, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('Q9MrjrCL9N', 'Id ut voluptas deserunt.', 1, 1, 'BNA1o6Illo', 'LkcMVU9fBL', 82, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('qBZJgHimRg', 'Quibusdam est itaque reprehenderit.', 0, 1, 'cgMxRnxtpR', 'kvI4kxbK8U', 1, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('QdX9Xh2pfX', '____________', 1, 0, 'VOxlbP7QNq', 'kd4oos26tl', 3, '2022-04-20 05:20:48', '2022-04-21 00:15:47'),
('QFPXhGw4VC', 'CHIN', 1, 1, 'eBmbw188GS', 'kd4oos26tl', 3, '2022-04-20 05:20:48', '2022-04-21 00:15:51'),
('qHlX9bQXrA', 'Et aut aut commodi modi atque atque.', 1, 0, 'YfVUqPVBKM', '4ZMJBI87Ii', 19, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('qIpu79ykdU', 'Quasi libero facilis ut.', 1, 0, 'oHI28qPslG', 'UlSaRWh3E1', 82, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('QkWfLClQDt', 'Expedita sint est rerum debitis magnam.', 1, 1, 'bvLwcbT2sW', 'd6HV0jwtEZ', 20, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('qm3kVxY61p', 'Sunt reiciendis nostrum iusto repudiandae.', 1, 0, 'pkDMHMhV47', 'jsDsCkdOPZ', 0, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('QMN23ucqHk', 'Qui voluptates vero culpa et omnis.', 0, 1, 'x4cT6NUkuI', 'UlSaRWh3E1', 92, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('Qnmq5ng46e', 'Accusantium totam illum voluptas consequatur qui.', 1, 0, 'yCXTQZRutn', 'lQfg1njp9J', 17, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('qntBElmZVb', '', 1, 1, '6PXkZ58QOz', 'lIlykI7yix', 3, '2022-04-17 06:32:07', '2022-04-17 06:32:07'),
('r0Wb1HXcEX', 'Odio asperiores est cumque.', 0, 1, 'mfFVW6ouzl', 'jsDsCkdOPZ', 6, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('r2EzjJ36PQ', 'Et aut repellendus consequatur sed unde.', 1, 1, 'A3ouuriVfh', 'ygubUyqQoN', 29, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('R3JnwrDN01', '', 1, 0, 'KbmVv2aztb', 'kd4oos26tl', 3, '2022-04-20 05:20:48', '2022-04-21 00:15:38'),
('r99QPBramy', 'Qui libero culpa maxime iure illum.', 0, 0, 'AzhENXtEvP', 'LkcMVU9fBL', 48, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('rEv1BEgy0K', 'Velit ipsam tenetur natus nisi doloribus magnam.', 0, 0, 'MS4BebuGmO', 'lQfg1njp9J', 82, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('rGXeAgxkTc', 'Necessitatibus non omnis eum ut.', 1, 1, 'GIqVaEp7df', 'xsF19TMhoZ', 6, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('Rt2LUfCejs', 'Voluptate ipsam eos laboriosam id et facere.', 1, 1, 'AzhENXtEvP', 'ZR8Oom877B', 22, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('s0aqzvSzvF', 'Ex voluptate ipsam illo cumque facere.', 0, 0, '9PngcKu3jV', 'UXogDXaamX', 92, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('s6L25cuXtX', 'Aut nisi molestias et a voluptas odit ratione.', 0, 0, 'm7htJ3l8YJ', 'e4iJNgm6Ca', 5, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('s9KedgZDNl', 'Quo voluptas nihil repellendus ea nihil ipsa.', 0, 0, 'MS4BebuGmO', 'xsF19TMhoZ', 77, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('SB2uwAmHIo', '', 1, 1, '6ZKGSoQqsq', 'lQfg1njp9J', 3, '2022-04-17 05:29:41', '2022-04-17 05:29:41'),
('SbjVSnTQUY', 'Qui velit animi id ea.', 1, 1, 'pYhF9I1CNt', 'mqGYngDtGa', 29, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('sD57FlPQpr', 'Accusantium ullam dolorem rerum nobis ullam.', 0, 0, 'xF6Xnna8SN', 'xsF19TMhoZ', 3, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('seum4WrLJD', 'Ad vel nemo architecto accusantium esse.', 0, 1, 'AzhENXtEvP', 'xRADaFn1It', 92, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('sfabTqSKEG', 'Eum consequatur quae dolore eligendi repudiandae.', 1, 1, 'uW2JOlBHAe', 'd6HV0jwtEZ', 24, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('sgxB6L619i', 'HAND', 1, 1, '5kvk6W2rDf', 'kd4oos26tl', 3, '2022-04-20 05:20:48', '2022-04-21 00:16:43'),
('SmcIAX6ZWh', '', 1, 1, 'MXqtiFXoZ3', 'lQfg1njp9J', 3, '2022-04-17 05:29:41', '2022-04-17 05:29:41'),
('SpfgWvs3k6', 'Sed molestiae aut blanditiis sed.', 1, 1, '5kvk6W2rDf', 'xsF19TMhoZ', 48, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('srYiC1WHCt', 'Natus quisquam et cupiditate aut autem eum.', 0, 1, 'FgH3XDUTvn', 'Uv1CjrXSOF', 23, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('swkvcQgFju', 'Dolor adipisci fugit accusamus fuga quis.', 1, 0, 'aeoescB7Xu', 'mqGYngDtGa', 5, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('SYTidN069w', 'Qui voluptas voluptatem et quaerat.', 1, 1, 'xjPOwlXKW4', 'nAA9EvuWY1', 29, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('T0PiLvA8uk', 'Aperiam accusamus ea et fugit nulla in.', 0, 1, 'P32Lww6dtJ', 'lQfg1njp9J', 70, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('T1SHBwQ2mo', 'Est qui aliquam ut fugit qui omnis voluptas.', 1, 1, '675XYEHK4I', 'UXogDXaamX', 75, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('t5aOkHORAc', 'Saepe et quo itaque.', 0, 0, 'lkmsiEgcmu', 'lIlykI7yix', 0, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('tDSvQqpqdh', 'Soluta vero dolorem fuga doloremque.', 0, 1, 'xmxTvgXwHB', 'kd4oos26tl', 62, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('TGbaT28gzj', 'Minima magnam odit neque recusandae nihil amet.', 0, 0, '675XYEHK4I', 'd6HV0jwtEZ', 3, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('tp4qSwNc2n', 'Quis ab expedita quidem ut et adipisci ea aut.', 0, 0, 'jLMHJuFuoH', 'xaUv9NLBUB', 6, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('tQADjoogtk', 'NOSE', 1, 1, 'cRfkiLBPtW', 'kd4oos26tl', 3, '2022-04-20 05:20:48', '2022-04-21 00:15:45'),
('TSJ6jyDuV7', 'Unde at autem qui et et sed.', 1, 1, 'dBPcXKEyVP', '9PMo2pGpX6', 20, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('Tt3T7NtF6L', 'Quisquam voluptatibus atque doloremque ut.', 0, 1, 'IVa0pNLHmQ', 'Uv1CjrXSOF', 22, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('u34rYeCc91', 'Eos commodi sapiente debitis corporis dolor.', 0, 1, 'rPZrSJM0ff', 'UlSaRWh3E1', 3, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('Uf4GP15EH2', 'Eos quia aliquam expedita nemo.', 0, 1, 'aS1zsXNvrW', 'uMq6cenpUS', 22, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('uf5hcvbpiN', 'Corporis quod alias accusantium qui.', 1, 0, 'dBPcXKEyVP', '5tqy8Q0anH', 97, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('uiDHhe6mtR', 'Totam qui nostrum neque voluptas omnis cumque.', 0, 1, 'Lzu0EhGWoM', '4ZMJBI87Ii', 82, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('uiWAPN7lf5', '', 1, 0, '8n5GEXqASn', 'lQfg1njp9J', 3, '2022-04-17 05:29:41', '2022-04-17 05:29:41'),
('uKWVCATVHQ', '', 0, 0, 'bqvENscSWs', 'UXogDXaamX', 3, '2022-04-21 00:18:48', '2022-04-21 00:18:48'),
('UlEEG9hZOU', 'Aperiam libero perspiciatis commodi aut dolore.', 0, 0, '9eirKxxjtJ', 'xRADaFn1It', 17, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('uReFFWxm7F', 'Quis culpa dolor quas consequatur est eos.', 0, 0, 'jhmisOpZIs', 'ygubUyqQoN', 0, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('uT2n0YFGMh', 'Nesciunt nobis nostrum officiis unde.', 1, 1, 'bisjhvxfx7', '5tqy8Q0anH', 1, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('uveZcVgObe', 'Eum cumque quo vel. Unde amet in id aspernatur.', 0, 0, 'pqsDWNmqf0', 'xaUv9NLBUB', 82, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('uw0yVw9Ou8', 'Odio suscipit aut harum doloremque delectus.', 0, 1, 'BdB6vZmiGm', 'e4iJNgm6Ca', 77, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('ux4n5BPYkZ', 'Ex at delectus perferendis qui.', 0, 1, 'cO0VJPbBlJ', 'UlSaRWh3E1', 92, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('vaO9vEcMJa', 'Adipisci minus similique adipisci voluptatem non.', 0, 0, 'vt9zfmTtB5', 'UXogDXaamX', 7, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('vIpePszezh', 'Ut earum voluptas harum facere nemo omnis libero.', 1, 1, 'att2Lg5hHz', 'lQfg1njp9J', 1, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('VJTgExGEzH', 'Rerum ea fugit ut consectetur cum tenetur.', 1, 1, '2otGyf0qoe', 'jsDsCkdOPZ', 5, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('vKK5dWqj0r', 'Quo laboriosam cupiditate nobis sit.', 1, 1, 'Vq9Twug6o7', '5tqy8Q0anH', 77, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('VmKVvojKKx', 'Odio et at nihil nihil molestias quia et.', 1, 1, 'cgMxRnxtpR', 'xaUv9NLBUB', 17, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('VRETYaLYp1', 'Possimus omnis sint saepe laudantium tempora.', 1, 0, '2PfoLX2bYD', '9PMo2pGpX6', 48, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('VTobjRgWmX', 'Reiciendis quo est non maiores molestias iste ut.', 0, 1, '8YkDz24v7k', 'G4bbWyjO99', 97, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('vVhyKj7wjA', 'Est eum et sint voluptatem similique nihil.', 1, 1, 'xmxTvgXwHB', 'Uv1CjrXSOF', 5, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('VW6DRFgvE0', 'Sunt aut saepe explicabo voluptatem qui optio.', 0, 0, 'pwFkPECIt2', 'G4bbWyjO99', 5, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('Vy7nGfmzcg', 'Minus praesentium dolor quia vel ipsam delectus.', 0, 1, 'CqBONY3sTM', 'jsDsCkdOPZ', 50, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('VYYcgmngkl', 'Ut ipsam quia quia.', 0, 0, '6LShPoNxwp', '5tqy8Q0anH', 62, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('w1ETYdd2dY', 'Deserunt rem quas perferendis adipisci quasi.', 1, 1, 'l0FMWapKNx', 'lIlykI7yix', 0, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('wD11CXaigb', 'Quae occaecati vitae et.', 1, 0, '6jineGKQUi', 'lIlykI7yix', 48, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('WDpPyhRNSW', 'Dignissimos esse quisquam ut dolores.', 0, 0, '34bIDiBClG', 'ygubUyqQoN', 1, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('WLiskRnxIZ', 'Aut dolor minima qui omnis.', 1, 0, 'uW2JOlBHAe', 'lQfg1njp9J', 50, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('ws8MRsFGD5', 'Facere voluptatibus laborum sit et earum.', 1, 0, 'rPZrSJM0ff', 'ygubUyqQoN', 97, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('wsRGdSyuIc', '', 1, 0, '34bIDiBClG', 'lQfg1njp9J', 3, '2022-04-17 05:29:41', '2022-04-17 05:29:41'),
('wUswNFuz89', 'Consectetur dolor distinctio labore non eum aut.', 1, 0, 'yCXTQZRutn', '5tqy8Q0anH', 82, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('WZ8l23mZ1G', '', 1, 0, 'oHI28qPslG', 'nAA9EvuWY1', 3, '2022-04-17 05:30:07', '2022-04-17 05:30:07'),
('X2G5PaOsvr', 'Ut optio autem fugit omnis.', 1, 1, '5kvk6W2rDf', 'e4iJNgm6Ca', 17, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('X2TeW9gEus', 'Quibusdam deleniti deleniti accusamus quidem aut.', 1, 1, 'KOyq4MKvff', 'UXogDXaamX', 6, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('XAJgEXUCIi', 'Dolorum natus ullam quasi eum.', 1, 0, 'FgH3XDUTvn', 'UXogDXaamX', 20, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('xBVezayma7', 'Fuga ducimus ut doloribus fugiat quia.', 0, 0, 'dSmyHyVHAe', 'e4iJNgm6Ca', 22, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('xDukAwvafH', '', 0, 0, 'iEZzqOvtay', 'UlSaRWh3E1', 3, '2022-04-21 00:18:48', '2022-04-21 00:18:48'),
('xf2yK6nHM9', 'Consequuntur excepturi consectetur est quos sint.', 0, 1, 'WjoTKcy55E', 'e4iJNgm6Ca', 24, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('XjKsojmc9Z', 'Et cupiditate mollitia est.', 0, 0, 'rPZrSJM0ff', '4ZMJBI87Ii', 1, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('XkeSsqlb7B', 'Minus sed et ut.', 1, 0, 'uRmNUT3TCC', 'iQrnJmYOoG', 29, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('xlbP6TYmcW', '', 1, 0, 'BWoCSuZLq1', 'lQfg1njp9J', 3, '2022-04-17 05:29:41', '2022-04-17 05:29:41'),
('xpk0MnOEAa', 'Ducimus quos qui amet quo.', 0, 1, '0aFa0vTWLm', 'ZR8Oom877B', 82, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('XxLR8exzXN', 'Omnis pariatur soluta sunt omnis officiis.', 1, 0, 'Qcb8uziFlx', 'xRADaFn1It', 62, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('xzfFR6O9VD', 'Est ad et odit id.', 0, 1, 'dSmyHyVHAe', 'xsF19TMhoZ', 5, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('ybXms6ZKzx', 'Quas sunt eos in nesciunt eius.', 0, 1, 'ilPthBoLyd', 'UXogDXaamX', 19, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('yd0kf9w7CF', '', 1, 1, '6LShPoNxwp', 'lIlykI7yix', 3, '2022-04-17 06:32:07', '2022-04-17 06:32:07'),
('ydiPG4TLvr', '', 0, 0, 'OY4ZbyyH5r', 'UXogDXaamX', 3, '2022-04-21 00:18:48', '2022-04-21 00:18:48'),
('YgoUZwc5he', 'Accusantium pariatur est cupiditate quasi.', 1, 0, '9eirKxxjtJ', 'xaUv9NLBUB', 24, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('YHxKdlfjqu', 'Cumque molestiae impedit et neque accusamus ut.', 1, 1, 'LVK67g6Vww', 'kd4oos26tl', 0, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('YIxkuW3KN4', 'Cum porro qui soluta.', 0, 1, 'VOxlbP7QNq', 'ygubUyqQoN', 48, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('YlDZeE3Xpb', 'Qui vero aut nam et magnam.', 0, 0, 'vt9zfmTtB5', '5tqy8Q0anH', 75, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('ymV6woarZO', '', 0, 0, 'a32L3ZqBre', 'UXogDXaamX', 3, '2022-04-21 00:18:48', '2022-04-21 00:18:48'),
('ysj18dbLQW', 'Aut aspernatur cupiditate aut corporis libero.', 1, 1, 'L4geeLjkhh', '9PMo2pGpX6', 6, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('yT8Nj3EGNx', '', 1, 1, '4hMc2krnHT', 'lIlykI7yix', 3, '2022-04-17 06:32:07', '2022-04-17 06:32:07'),
('YZPdGZCHqL', 'Voluptatem maxime et vitae voluptate velit.', 1, 1, 'rCRoZ4UiCQ', 'jsDsCkdOPZ', 3, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('z1wkNbaVH0', 'Cumque modi a fugit minus eum.', 0, 0, '81ipxaUaRF', 'Kx3nrVcSeN', 82, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('zQjbeg98w8', 'Nesciunt voluptatibus et ipsum enim.', 1, 1, 'pYhF9I1CNt', 'UXogDXaamX', 77, '2022-04-21 23:07:24', '2022-04-21 23:07:24'),
('ztBBixstK1', 'Soluta laborum ipsum velit possimus maxime.', 1, 0, 'es7u1MUhD9', 'd6HV0jwtEZ', 97, '2022-04-21 23:06:08', '2022-04-21 23:06:08'),
('zu6sUklxap', 'Dolor et quae at error.', 1, 1, 'QqnmIxA9V1', 'ZR8Oom877B', 77, '2022-04-21 23:06:08', '2022-04-21 23:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `user_levels`
--

CREATE TABLE `user_levels` (
  `id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `level_id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_levels`
--

INSERT INTO `user_levels` (`id`, `user_id`, `level_id`, `created_at`, `updated_at`) VALUES
('222VBbsdd', 17, '1PkJ2SfK62', '2022-04-05 01:47:19', '2021-08-16 21:08:22'),
('2zeJ56xPUP', 48, '1PkJ0wp22f', '2022-04-21 23:07:22', '2022-04-21 23:07:22'),
('6gunEwGm8h', 94, '1PkJ2SfK62', '2022-04-21 23:06:05', '2022-04-21 23:06:05'),
('aIt0PqP3aI', 62, '70SFBb1pje', '2022-04-21 23:06:05', '2022-04-21 23:06:05'),
('dhtOU9em8c', 1, '1PkJ2SfK62', '2022-04-21 23:07:22', '2022-04-21 23:07:22'),
('EA4xp1T9DG', 20, '22FVBb1pje', '2022-04-21 23:06:05', '2022-04-21 23:06:05'),
('effQkKBIQA', 6, 'nr9cSfxK8L', '2022-04-21 23:07:22', '2022-04-21 23:07:22'),
('Es8t7DmGMb', 0, '1PkJ0wp22f', '2022-04-21 23:06:05', '2022-04-21 23:06:05'),
('ewkQvKsOw1', 97, '1PkJ2SfK62', '2022-04-21 23:06:05', '2022-04-21 23:06:05'),
('gpMJ3R19Lg', 29, '22FVBb1pje', '2022-04-21 23:07:22', '2022-04-21 23:07:22'),
('gw45vrFzUg', 70, 'nr9cSfxK8L', '2022-04-21 23:06:05', '2022-04-21 23:06:05'),
('hH7vulaAgE', 23, '70SFBb1pje', '2022-04-21 23:07:22', '2022-04-21 23:07:22'),
('hhhUu6oZjK', 5, '70SFBb1pje', '2022-04-21 23:07:22', '2022-04-21 23:07:22'),
('Kctb6dDySp', 24, 'nr9cSfxK8L', '2022-04-21 23:06:05', '2022-04-21 23:06:05'),
('KN66n6Gst7', 77, '22FVBb1pje', '2022-04-21 23:07:22', '2022-04-21 23:07:22'),
('M3p4t6bK9h', 92, 'asdaFFwr2S', '2022-04-21 23:07:22', '2022-04-21 23:07:22'),
('mqyQwy7XWp', 56, '70SFBb1pje', '2022-04-21 23:06:05', '2022-04-21 23:06:05'),
('qweqwe221', 19, '1PkJ2SfK62', '2022-04-05 01:47:19', '2021-08-16 21:08:22'),
('rrX6sErJHg', 3, '70SFBb1pje', '2022-04-21 23:19:23', '2022-04-21 23:19:23'),
('tqZe38PlKn', 50, '70SFBb1pje', '2022-04-21 23:07:22', '2022-04-21 23:07:22'),
('w8uRbiiei9', 75, 'asdaFFwr2S', '2022-04-21 23:07:22', '2022-04-21 23:07:22'),
('xG7B32R7vZ', 7, '1PkJ0wp22f', '2022-04-21 23:07:22', '2022-04-21 23:07:22'),
('yLaWl8JP5Y', 22, 'asdaFFwr2S', '2022-04-21 23:07:22', '2022-04-21 23:07:22'),
('zByXXoSoBp', 82, '22FVBb1pje', '2022-04-21 23:06:05', '2022-04-21 23:06:05');

-- --------------------------------------------------------

--
-- Table structure for table `user_sessions`
--

CREATE TABLE `user_sessions` (
  `id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_sessions`
--

INSERT INTO `user_sessions` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
('5qHjUrI4il', 3, '2022-04-17 05:23:55', '2022-04-17 05:23:55'),
('7IELze71TE', 3, '2022-04-19 05:11:40', '2022-04-19 05:11:40'),
('7p9r2gNCiT', 3, '2022-04-17 05:15:56', '2022-04-11 05:15:56'),
('8yf2DQn9wT', 3, '2022-04-20 05:52:20', '2022-04-20 05:52:20'),
('9UGqZz8rnj', 3, '2022-04-17 05:24:53', '2022-04-17 05:24:53'),
('bP3s65N7Iu', 3, '2022-04-20 20:54:51', '2022-04-20 20:54:51'),
('cK5A3CimmB', 3, '2022-04-20 05:11:55', '2022-04-20 05:11:55'),
('evPeadPVvm', 3, '2022-04-20 23:58:34', '2022-04-20 23:58:34'),
('FjYbe4oOdC', 3, '2022-04-19 05:02:32', '2022-04-19 05:02:32'),
('G7ZtkbI9Fq', 3, '2022-04-17 06:11:33', '2022-04-17 06:11:33'),
('gKe8hAzpeX', 3, '2022-04-19 05:04:26', '2022-04-19 05:04:26'),
('GlTqGZxgTm', 3, '2022-04-13 06:33:58', '2022-04-11 06:33:58'),
('GXpWwyt1jn', 3, '2022-04-19 05:02:54', '2022-04-19 05:02:54'),
('hu8zeBuqZa', 3, '2022-04-17 06:47:06', '2022-04-17 06:47:06'),
('iOC5nomPyT', 3, '2022-04-17 05:26:33', '2022-04-17 05:26:33'),
('jKcIWbMkbI', 3, '2022-04-14 06:34:27', '2022-04-11 06:34:27'),
('JLxuEUYT4a', 3, '2022-04-17 06:52:12', '2022-04-17 06:52:12'),
('lnZxjIfq1l', 3, '2022-04-12 06:34:13', '2022-04-11 06:34:13'),
('ngSEdLooc2', 3, '2022-04-21 00:12:42', '2022-04-21 00:12:42'),
('oj97TxOeSz', 3, '2022-04-11 06:39:35', '2022-04-11 06:39:35'),
('PafogJH8iS', 3, '2022-04-21 00:18:13', '2022-04-21 00:18:13'),
('R3gWQ3Z67v', 3, '2022-04-20 05:12:16', '2022-04-20 05:12:16'),
('s5dxZpVc6x', 3, '2022-04-17 06:51:01', '2022-04-17 06:51:01'),
('SL6IXNfqC3', 3, '2022-04-17 05:27:31', '2022-04-17 05:27:31'),
('SLl2QKduwe', 3, '2022-04-19 05:02:05', '2022-04-19 05:02:05'),
('sVOVTbeeWE', 3, '2022-04-11 07:49:40', '2022-04-11 07:49:40'),
('t6kiCQLmrj', 3, '2022-04-19 05:01:48', '2022-04-19 05:01:48'),
('TbpHhnNkqI', 3, '2022-04-21 00:17:34', '2022-04-21 00:17:34'),
('TMZkobIBkr', 3, '2022-04-12 22:42:45', '2022-04-12 22:42:45'),
('V8PpPZCpCq', 3, '2022-04-11 06:39:23', '2022-04-11 06:39:23'),
('W41xWdopre', 3, '2022-04-20 05:37:09', '2022-04-20 05:37:09'),
('wzxJS5sLja', 3, '2022-04-20 05:20:02', '2022-04-20 05:20:02'),
('xGH5gSxlk6', 3, '2022-04-20 05:14:03', '2022-04-20 05:14:03'),
('yAtsKusQ5F', 3, '2022-04-19 06:39:48', '2022-04-11 06:39:48'),
('zoFEa8ZjA9', 3, '2022-04-17 06:58:40', '2022-04-17 06:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `user_tutorials`
--

CREATE TABLE `user_tutorials` (
  `id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_done` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_tutorials`
--

INSERT INTO `user_tutorials` (`id`, `page`, `is_done`, `user_id`, `created_at`, `updated_at`) VALUES
('HflokGWWTS', 'chapter', '1', 3, '2022-04-21 00:13:02', '2022-04-21 00:13:02'),
('RuS7vV4vXR', 'courses-main', '1', 3, '2022-04-21 00:13:07', '2022-04-21 00:13:07'),
('rWRIWuB1kp', 'home-main', '1', 3, '2022-04-21 00:12:42', '2022-04-21 00:12:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complete_categories`
--
ALTER TABLE `complete_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complete_categories_user_id_foreign` (`user_id`),
  ADD KEY `complete_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_sub_category_id_foreign` (`sub_category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scores_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `scores_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_courses`
--
ALTER TABLE `user_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_courses_course_id_foreign` (`course_id`),
  ADD KEY `user_courses_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `user_courses_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_levels`
--
ALTER TABLE `user_levels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_levels_user_id_foreign` (`user_id`),
  ADD KEY `user_levels_level_id_foreign` (`level_id`);

--
-- Indexes for table `user_sessions`
--
ALTER TABLE `user_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_sessions_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_tutorials`
--
ALTER TABLE `user_tutorials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_tutorials_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `complete_categories`
--
ALTER TABLE `complete_categories`
  ADD CONSTRAINT `complete_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `complete_categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `scores_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `scores_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_courses`
--
ALTER TABLE `user_courses`
  ADD CONSTRAINT `user_courses_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_courses_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_courses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_levels`
--
ALTER TABLE `user_levels`
  ADD CONSTRAINT `user_levels_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_levels_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_sessions`
--
ALTER TABLE `user_sessions`
  ADD CONSTRAINT `user_sessions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_tutorials`
--
ALTER TABLE `user_tutorials`
  ADD CONSTRAINT `user_tutorials_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
