-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2022 at 01:54 PM
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
('6jbMe3TEt7', 'agkha0rF1Z', 3, 0, '2022-05-19 03:24:07', '2022-05-19 03:24:07'),
('7pDVm3MwOb', 'l8qS5IT1Q9', 3, 0, '2022-05-19 03:24:07', '2022-05-19 03:24:07'),
('eeTO7MK0ed', 'uOxGSRQRZF', 3, 0, '2022-05-19 03:24:07', '2022-05-19 03:24:07'),
('etC2RrWBfW', 'NDztn6Aec1', 3, 0, '2022-05-19 03:24:07', '2022-05-19 03:24:07'),
('PWaLXZCzWX', 'dVpFFDlkVs', 3, 0, '2022-05-19 03:24:07', '2022-05-19 03:24:07'),
('QD1mTe6rNu', 'gwZXhPEkNQ', 3, 0, '2022-05-19 03:24:07', '2022-05-19 03:24:07'),
('qGZpe6Du95', 'iTDaqkOaIf', 3, 0, '2022-05-19 03:24:06', '2022-05-19 03:24:06'),
('RUN3B1b6Zo', 'EnPbsNYv30', 3, 0, '2022-05-19 03:24:07', '2022-05-19 03:24:07'),
('Tpx2naDeQK', '8plSIjT7Jq', 3, 0, '2022-05-19 03:24:07', '2022-05-19 03:24:07'),
('WiJwWR8I79', 'rlddYB56KX', 3, 0, '2022-05-19 03:24:07', '2022-05-19 03:24:07'),
('Z99a9TbMoF', 'QC4B3q0XGj', 3, 0, '2022-05-19 03:24:07', '2022-05-19 03:24:07');

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
('D6aAoKQYMd', 'ANJING 2', 'DOG 2', 'https://drive.google.com/uc?id=1fuYCltcjffFwDRxF06ojepEEx04gy1h1&export=media', 'https://drive.google.com/uc?id=1fuYCltcjffFwDRxF06ojepEEx04gy1h1&export=media', 'Kx3nrVcSeN', 1, '2022-05-10 23:10:35', '2022-05-10 23:10:35'),
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
('t3zTaubEnN', 'IKAN 2', 'FISH 2', 'https://drive.google.com/uc?id=1fuYCltcjffFwDRxF06ojepEEx04gy1h1&export=media', 'https://drive.google.com/uc?id=1fuYCltcjffFwDRxF06ojepEEx04gy1h1&export=media', 'Kx3nrVcSeN', 0, '2022-05-10 23:10:35', '2022-05-10 23:10:35'),
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
(13, 'App\\Models\\User', 3, 'auth_token', '14db6b1317b4b282c6d992307845f39798f1834497cd82669b1f0a9dd7633f6a', '[\"*\"]', '2022-04-21 23:40:51', '2022-04-21 23:20:20', '2022-04-21 23:40:51'),
(14, 'App\\Models\\User', 3, '585053919c602d1b', 'cd2de1db0d191433644002b2d131565085da7f3a4d6d7155067064d92d6e6919', '[\"*\"]', '2022-05-19 04:54:25', '2022-05-19 03:14:50', '2022-05-19 04:54:25');

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
('NKPYSWjAOe8GiCQsgdDBScFooMntjNZu7LE2Db1O', 1, '192.168.1.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZ0Rrc3VRc29TR2tuaTBHNnpDQkdtOHpBUkJDbzFYenBKMm0xU21INyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xOTIuMTY4LjEuNTo4MDAwL2Rhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCQ0dkMuc20yNERhTVNaYk8vbUdzZ0kuUHdnYi9JdFV4T2p1bUs1MDl6QXV4MHZMN0FYOUNRLiI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkNHZDLnNtMjREYU1TWmJPL21Hc2dJLlB3Z2IvSXRVeE9qdW1LNTA5ekF1eDB2TDdBWDlDUS4iO30=', 1652957468),
('UsoIYQcyqoU5NXfRpPlDQwaWT109RNSNi6pqktST', NULL, '192.168.1.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT1BPSWlDTENzUkxuNTZ3SE16QTdMbjRndWZ4c0lRTHZCYTVZRGxLVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xOTIuMTY4LjEuMjA3OjgwMDAvdGVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1652960653);

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
('2Vaop5aIqH', '____________', 1, 0, 'VOxlbP7QNq', 'kd4oos26tl', 3, '2022-05-19 03:30:24', '2022-05-19 03:41:55'),
('5awWMO5M8R', '', 1, 1, '6ZKGSoQqsq', 'lQfg1njp9J', 3, '2022-05-19 03:30:24', '2022-05-19 03:30:24'),
('6St3AJs9GH', '', 0, 0, 'jLmXwZ48kY', 'nAA9EvuWY1', 3, '2022-05-19 03:30:25', '2022-05-19 03:30:25'),
('8n2MulSCY2', '', 1, 1, '6PXkZ58QOz', 'lIlykI7yix', 3, '2022-05-19 03:30:24', '2022-05-19 03:30:24'),
('9sfvCKQg4s', '', 0, 0, '732d6aRHcP', 'nAA9EvuWY1', 3, '2022-05-19 03:30:25', '2022-05-19 03:30:25'),
('aLRFBUYSvx', '', 1, 1, 'BWoCSuZLq1', 'lQfg1njp9J', 3, '2022-05-19 03:30:24', '2022-05-19 03:30:24'),
('AnKVEEIFf5', '', 0, 0, 'CqBONY3sTM', 'nAA9EvuWY1', 3, '2022-05-19 03:30:24', '2022-05-19 03:30:24'),
('Atwbl0OJ8D', '', 1, 1, 'pwFkPECIt2', 'lQfg1njp9J', 3, '2022-05-19 03:30:24', '2022-05-19 03:30:24'),
('bCs3U6ZZvh', '', 0, 0, 'mCOBQO5X6d', 'lQfg1njp9J', 3, '2022-05-19 03:30:24', '2022-05-19 03:30:24'),
('boOOAUJ9ow', '', 0, 0, 'GZb2lFmpR6', 'nAA9EvuWY1', 3, '2022-05-19 03:30:24', '2022-05-19 03:30:24'),
('cocGm5TUXU', '', 0, 0, 'GIqVaEp7df', 'nAA9EvuWY1', 3, '2022-05-19 03:30:24', '2022-05-19 03:30:24'),
('dtNz38vn11', '', 0, 0, 'HtszrGWpx8', 'lIlykI7yix', 3, '2022-05-19 03:30:24', '2022-05-19 03:30:24'),
('EqMI4zWw7z', '____________', 1, 0, 'HyKiRjtmo0', 'kd4oos26tl', 3, '2022-05-19 03:30:24', '2022-05-19 03:42:00'),
('GnlIw819aH', '', 1, 1, '4hMc2krnHT', 'lIlykI7yix', 3, '2022-05-19 03:30:24', '2022-05-19 03:30:24'),
('H3hTIYE7F5', 'HAND', 1, 1, '5kvk6W2rDf', 'kd4oos26tl', 3, '2022-05-19 03:30:24', '2022-05-19 03:36:49'),
('hTBrUbRQQH', '', 0, 0, 'Y665EOaM6w', 'lQfg1njp9J', 3, '2022-05-19 03:30:24', '2022-05-19 03:30:24'),
('kC4bR5Zyx3', 'hey', 1, 0, 'P90JBJTvO5', 'kd4oos26tl', 3, '2022-05-19 03:30:24', '2022-05-19 03:41:51'),
('LaCh3OV4iq', '', 1, 1, 'cIVagB3Zzv', 'lIlykI7yix', 3, '2022-05-19 03:30:24', '2022-05-19 03:30:24'),
('lShUppmt09', '____________', 1, 0, 'KbmVv2aztb', 'kd4oos26tl', 3, '2022-05-19 03:30:24', '2022-05-19 03:42:01'),
('LXJTjsZtsX', '', 1, 1, 'a7WqzS57Tv', 'lIlykI7yix', 3, '2022-05-19 03:30:24', '2022-05-19 03:30:24'),
('n1FisZaA7i', 'MOUTH', 1, 1, 'fYyaE7aLNn', 'kd4oos26tl', 3, '2022-05-19 03:30:24', '2022-05-19 03:36:47'),
('Okdx2CO3E3', 'CHIN', 1, 1, 'eBmbw188GS', 'kd4oos26tl', 3, '2022-05-19 03:30:24', '2022-05-19 03:41:59'),
('pG01zD434V', '', 0, 0, '34bIDiBClG', 'lQfg1njp9J', 3, '2022-05-19 03:30:24', '2022-05-19 03:30:24'),
('rT0GulOnSC', 'EAR', 1, 1, '1cAstesWzI', 'kd4oos26tl', 3, '2022-05-19 03:30:24', '2022-05-19 03:41:54'),
('sSZnFLPC0P', '', 0, 0, 'oHI28qPslG', 'nAA9EvuWY1', 3, '2022-05-19 03:30:24', '2022-05-19 03:30:24'),
('TqlBvheXQ4', '', 0, 0, 'eEe41H3qkW', 'nAA9EvuWY1', 3, '2022-05-19 03:30:25', '2022-05-19 03:30:25'),
('ufGVxeqY9G', '', 0, 0, '9zIpFCxZoI', 'nAA9EvuWY1', 3, '2022-05-19 03:30:25', '2022-05-19 03:30:25'),
('UmaHoVWqTl', '____________', 1, 0, 'cRfkiLBPtW', 'kd4oos26tl', 3, '2022-05-19 03:30:24', '2022-05-19 03:41:56'),
('VqL2NmXeJu', '', 1, 1, '8n5GEXqASn', 'lQfg1njp9J', 3, '2022-05-19 03:30:24', '2022-05-19 03:30:24'),
('wmYVTbNNh7', '', 0, 0, 'MXqtiFXoZ3', 'lQfg1njp9J', 3, '2022-05-19 03:30:24', '2022-05-19 03:30:24'),
('ww4F27zOeA', '', 0, 0, 'LPAyi5cbMG', 'nAA9EvuWY1', 3, '2022-05-19 03:30:25', '2022-05-19 03:30:25'),
('XCX10W33nK', '', 1, 1, '6LShPoNxwp', 'lIlykI7yix', 3, '2022-05-19 03:30:24', '2022-05-19 03:30:24'),
('XIgPSY14AK', '', 1, 1, '8SOuxj4IVL', 'lQfg1njp9J', 3, '2022-05-19 03:30:24', '2022-05-19 03:30:24'),
('YG188aOPT4', '', 1, 1, '0raI0RHnqx', 'lQfg1njp9J', 3, '2022-05-19 03:30:24', '2022-05-19 03:30:24'),
('YL8Gej4djC', '', 0, 0, '47AX1WRn3G', 'nAA9EvuWY1', 3, '2022-05-19 03:30:24', '2022-05-19 03:30:24'),
('ZLJ7TcyZg2', '', 1, 1, '9BHzyskTvL', 'lIlykI7yix', 3, '2022-05-19 03:30:24', '2022-05-19 03:30:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_levels`
--

CREATE TABLE `user_levels` (
  `id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `level_id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_point` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_levels`
--

INSERT INTO `user_levels` (`id`, `user_id`, `level_id`, `user_point`, `created_at`, `updated_at`) VALUES
('222VBbsdd', 17, '1PkJ2SfK62', 0, '2022-04-05 01:47:19', '2021-08-16 21:08:22'),
('2zeJ56xPUP', 48, '1PkJ0wp22f', 0, '2022-04-21 23:07:22', '2022-04-21 23:07:22'),
('6gunEwGm8h', 94, '1PkJ2SfK62', 0, '2022-04-21 23:06:05', '2022-04-21 23:06:05'),
('aIt0PqP3aI', 62, '70SFBb1pje', 0, '2022-04-21 23:06:05', '2022-04-21 23:06:05'),
('dhtOU9em8c', 1, '1PkJ2SfK62', 0, '2022-04-21 23:07:22', '2022-04-21 23:07:22'),
('EA4xp1T9DG', 20, '22FVBb1pje', 0, '2022-04-21 23:06:05', '2022-04-21 23:06:05'),
('effQkKBIQA', 6, 'nr9cSfxK8L', 0, '2022-04-21 23:07:22', '2022-04-21 23:07:22'),
('Es8t7DmGMb', 0, '1PkJ0wp22f', 0, '2022-04-21 23:06:05', '2022-04-21 23:06:05'),
('ewkQvKsOw1', 97, '1PkJ2SfK62', 0, '2022-04-21 23:06:05', '2022-04-21 23:06:05'),
('gpMJ3R19Lg', 29, '22FVBb1pje', 0, '2022-04-21 23:07:22', '2022-04-21 23:07:22'),
('gw45vrFzUg', 70, 'nr9cSfxK8L', 0, '2022-04-21 23:06:05', '2022-04-21 23:06:05'),
('hH7vulaAgE', 23, '70SFBb1pje', 0, '2022-04-21 23:07:22', '2022-04-21 23:07:22'),
('hhhUu6oZjK', 5, '70SFBb1pje', 0, '2022-04-21 23:07:22', '2022-04-21 23:07:22'),
('Kctb6dDySp', 24, 'nr9cSfxK8L', 0, '2022-04-21 23:06:05', '2022-04-21 23:06:05'),
('KN66n6Gst7', 77, '22FVBb1pje', 0, '2022-04-21 23:07:22', '2022-04-21 23:07:22'),
('M3p4t6bK9h', 92, 'asdaFFwr2S', 0, '2022-04-21 23:07:22', '2022-04-21 23:07:22'),
('mqyQwy7XWp', 56, '70SFBb1pje', 0, '2022-04-21 23:06:05', '2022-04-21 23:06:05'),
('qweqwe221', 19, '1PkJ2SfK62', 0, '2022-04-05 01:47:19', '2021-08-16 21:08:22'),
('rrX6sErJHg', 3, '1PkJ0wp22f', 15, '2022-04-21 23:19:23', '2022-04-21 23:19:23'),
('tqZe38PlKn', 50, '70SFBb1pje', 0, '2022-04-21 23:07:22', '2022-04-21 23:07:22'),
('w8uRbiiei9', 75, 'asdaFFwr2S', 0, '2022-04-21 23:07:22', '2022-04-21 23:07:22'),
('xG7B32R7vZ', 7, '1PkJ0wp22f', 0, '2022-04-21 23:07:22', '2022-04-21 23:07:22'),
('yLaWl8JP5Y', 22, 'asdaFFwr2S', 0, '2022-04-21 23:07:22', '2022-04-21 23:07:22'),
('zByXXoSoBp', 82, '22FVBb1pje', 0, '2022-04-21 23:06:05', '2022-04-21 23:06:05');

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
('i3Xe0fxqA7', 3, '2022-05-19 03:22:38', '2022-05-19 03:22:38'),
('iOC5nomPyT', 3, '2022-04-17 05:26:33', '2022-04-17 05:26:33'),
('jKcIWbMkbI', 3, '2022-04-14 06:34:27', '2022-04-11 06:34:27'),
('JLxuEUYT4a', 3, '2022-04-17 06:52:12', '2022-04-17 06:52:12'),
('LHoyI52KDB', 3, '2022-05-19 03:23:54', '2022-05-19 03:23:54'),
('lnZxjIfq1l', 3, '2022-04-12 06:34:13', '2022-04-11 06:34:13'),
('ngSEdLooc2', 3, '2022-04-21 00:12:42', '2022-04-21 00:12:42'),
('oj97TxOeSz', 3, '2022-04-11 06:39:35', '2022-04-11 06:39:35'),
('PafogJH8iS', 3, '2022-04-21 00:18:13', '2022-04-21 00:18:13'),
('pEQ1Rlx7HZ', 3, '2022-05-19 03:42:07', '2022-05-19 03:42:07'),
('qXcBjcW0zb', 3, '2022-05-19 04:16:31', '2022-05-19 04:16:31'),
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
('Z8UoQnKcNQ', 3, '2022-05-19 03:14:57', '2022-05-19 03:14:57'),
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
