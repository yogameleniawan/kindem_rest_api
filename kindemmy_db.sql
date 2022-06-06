-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 06, 2022 at 09:33 PM
-- Server version: 10.3.34-MariaDB-log-cll-lve
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kindemmy_db`
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
('8plSIjT7Jq', 'BARRACKS', 'https://drive.google.com/uc?id=1aSWy1xZLTVuCr94JuJLcbS5PFgdEBLXp&export=media', 3, '2021-10-27 09:44:53', '2021-10-28 07:19:50'),
('agkha0rF1Z', 'TWO TOWERS', 'https://drive.google.com/uc?id=1tOP9Tcz89Ny_E3uRx1xMSIxbEGnOiyMh&export=media', 2, '2021-10-27 09:44:29', '2021-10-28 07:16:32'),
('dVpFFDlkVs', 'KINDEM CASTLE', 'https://drive.google.com/uc?id=1oqEyl4Dldc8n2EALyEQlJpuZxUXkqSK_&export=media', 6, '2021-10-27 09:45:47', '2021-10-28 07:25:11'),
('iTDaqkOaIf', 'TOWER', 'https://drive.google.com/uc?id=1tvF3ppsyOJT8dvgP9UVh7uFvN7CWQIL8&export=media', 1, '2021-10-27 09:39:41', '2021-11-03 06:52:46'),
('l8qS5IT1Q9', 'CAPITAL', 'https://drive.google.com/uc?id=1ShoEIp5sWcFCUGaLAYqK6KiuNpxaWspA&export=media', 5, '2021-10-27 09:45:35', '2021-10-28 07:24:19'),
('QC4B3q0XGj', 'FACTORY', 'https://drive.google.com/uc?id=1z697mwdxHDoNLGBUjOcP3A3p33msdy3J&export=media', 4, '2021-10-27 09:45:09', '2021-10-28 07:23:23');

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
('4dlapymOMy', 'QC4B3q0XGj', 3, 0, '2022-06-05 14:01:20', '2022-06-05 14:01:20'),
('bRJFPP7k6w', 'agkha0rF1Z', 74, 0, '2022-06-05 17:04:23', '2022-06-05 17:04:23'),
('DCnvgSxtJQ', 'dVpFFDlkVs', 74, 0, '2022-06-05 17:04:23', '2022-06-05 17:04:23'),
('EInKEXb6Ym', 'agkha0rF1Z', 3, 0, '2022-06-05 14:01:20', '2022-06-05 14:01:20'),
('LNnu3PLQhL', '8plSIjT7Jq', 3, 0, '2022-06-05 14:01:20', '2022-06-05 14:01:20'),
('mzlS1oKA40', 'l8qS5IT1Q9', 74, 0, '2022-06-05 17:04:23', '2022-06-05 17:04:23'),
('QAyOMmgLxL', 'iTDaqkOaIf', 3, 1, '2022-06-05 14:01:20', '2022-06-05 23:24:08'),
('SdqeLoGMLO', 'l8qS5IT1Q9', 3, 0, '2022-06-05 14:01:20', '2022-06-05 14:01:20'),
('StxdQl7STE', 'dVpFFDlkVs', 3, 0, '2022-06-05 14:01:20', '2022-06-05 14:01:20'),
('tMZpyO4XZG', 'QC4B3q0XGj', 74, 0, '2022-06-05 17:04:23', '2022-06-05 17:04:23'),
('uM0FSOlLU8', 'iTDaqkOaIf', 74, 1, '2022-06-05 17:04:23', '2022-06-05 23:31:14'),
('vL3PqFGfxA', '8plSIjT7Jq', 74, 0, '2022-06-05 17:04:23', '2022-06-05 17:04:23');

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
('02vKTRE8Bf', 'EMBER', 'PAIL', 'https://drive.google.com/uc?id=1n6HQf1Tx9rQodjdIeoFN0DA8NZ_D8UZ1&export=media', 'https://drive.google.com/uc?id=1n6HQf1Tx9rQodjdIeoFN0DA8NZ_D8UZ1&export=media', 'rFh7WiWh1U', 0, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('03QDJCvKsn', 'CELANA JEANS', 'JEANS', 'https://drive.google.com/uc?id=1nrykMDTsxUr_Ugtf0uvYlS0aCiT-I42-&export=media', 'https://drive.google.com/uc?id=1nrykMDTsxUr_Ugtf0uvYlS0aCiT-I42-&export=media', 'UlSaRWh3E1', 1, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('0gHlEkFqUr', 'BERONDONG JAGUNG', 'POPCORN', 'https://drive.google.com/uc?id=1mPVexy2pmp29yNd3MJig9aiX-pmuIopq&export=media', 'https://drive.google.com/uc?id=1mPVexy2pmp29yNd3MJig9aiX-pmuIopq&export=media', 'UXogDXaamX', 1, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('0qqGjADmOe', 'SABUK', 'BELT', 'https://drive.google.com/uc?id=1jXJVILFmcNICSUeUKQB833YBFfPpmW_l&export=media', 'https://drive.google.com/uc?id=1jXJVILFmcNICSUeUKQB833YBFfPpmW_l&export=media', 'UlSaRWh3E1', 1, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('0V21d2IctB', 'SELAI', 'JAM', 'https://drive.google.com/uc?id=1eW4pV0HG1HJwa1z6pFAsd7auwNHjkEvm&export=media', 'https://drive.google.com/uc?id=1eW4pV0HG1HJwa1z6pFAsd7auwNHjkEvm&export=media', 'UXogDXaamX', 0, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('19Rt3cwX8s', 'SINGA', 'LION', 'https://drive.google.com/uc?id=1eT3nPoGEwAnZqGZHmCeDaIssl4pevMdU&export=media', 'https://drive.google.com/uc?id=1eT3nPoGEwAnZqGZHmCeDaIssl4pevMdU&export=media', 'PJIVUyKKsx', 1, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('1cAstesWzI', 'TELINGA', 'EAR', 'https://drive.google.com/uc?id=1vXD6DHpvDfm5O3Cb_3ggeYrcMa3nlbZU&export=media', 'https://drive.google.com/uc?id=1UmQbmplG4INxz8WMJKxbX6VvM0lFOFr1&export=media', 'kd4oos26tl', 0, '2021-10-27 10:50:52', '2022-06-05 09:13:57'),
('1jOF9VLkCq', 'KORAN', 'NEWSPAPER', 'https://drive.google.com/uc?id=1l35wAhAnWAswU-B-Nnc36E4d5vK6k9NL&export=media', 'https://drive.google.com/uc?id=1FKtbnjKM3zkFLhoXjMDZ0JO_63IbaTEv&export=media', '4ZMJBI87Ii', 1, '2021-11-04 02:34:22', '2022-06-06 13:43:38'),
('1KpEyHMMAS', 'KURA-KURA', 'TURTLE', 'https://drive.google.com/uc?id=1-ONC4h1fHBqjMH8KM7nYDduBMaBvMUqH&export=media', 'https://drive.google.com/uc?id=1-ONC4h1fHBqjMH8KM7nYDduBMaBvMUqH&export=media', 'PJIVUyKKsx', 1, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('1L4Jv42L69', 'MEMASAK', 'COOKING', 'https://drive.google.com/uc?id=1Hds11zNvTNIGh5xYj6dR2qou1nNCHiBp&export=media', 'https://drive.google.com/uc?id=1Hds11zNvTNIGh5xYj6dR2qou1nNCHiBp&export=media', 'SdGMT5fJGF', 0, '2022-06-05 12:22:48', '2022-06-05 12:22:48'),
('1lHtwIU8Cw', 'KECOA', 'COCKROACH', 'https://drive.google.com/uc?id=1thPf2tJeC6zu3hJw6OPseTaYd7smWU0Z&export=media', 'https://drive.google.com/uc?id=1jztITGL0_q7DmlqL8Nt6Ixwc7QTabs40&export=media', 'uMq6cenpUS', 0, '2022-06-06 14:11:46', '2022-06-06 14:11:46'),
('2EynHWXrnK', 'CACING', 'WORM', 'https://drive.google.com/uc?id=1xnQT6AiasnGQd1F-0v_4IiUnTkMdhGV6&export=media', 'https://drive.google.com/uc?id=1f0zwjUG-sh8eUIk4f26zYCVhEvvqZqKR&export=media', 'uMq6cenpUS', 0, '2022-06-06 14:13:47', '2022-06-06 14:13:47'),
('2nNu3eNwR3', 'BANTAL', 'PILLOW', 'https://drive.google.com/uc?id=1rEovm_7PbUUTrkkpYYCvjXEvy04FXOWb&export=media', 'https://drive.google.com/uc?id=1rEovm_7PbUUTrkkpYYCvjXEvy04FXOWb&export=media', 'rFh7WiWh1U', 0, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('2otGyf0qoe', 'TEH', 'TEA', 'https://drive.google.com/uc?id=11KjbzKntP6FTrAkm8UQTZwHFSuynvWkR&export=media', NULL, 'ZAhwOpkkWh', 1, '2021-11-02 01:41:32', '2022-06-06 09:44:48'),
('2PfoLX2bYD', 'SATURNUS', 'SATURN', 'https://drive.google.com/uc?id=14q29mP0pTiNp8JZLOUu3mVDYNnEtNZnx&export=media', NULL, 'G4bbWyjO99', 1, '2021-11-04 02:55:49', '2021-11-04 02:55:49'),
('2PvCUz9WHt', 'BERUANG', 'BEAR', 'https://drive.google.com/uc?id=1cR8eCrtafYr2Q8X48SmKZWg8dcIge0MF&export=media', 'https://drive.google.com/uc?id=1cR8eCrtafYr2Q8X48SmKZWg8dcIge0MF&export=media', 'PJIVUyKKsx', 0, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('2zRXUMB38y', 'KELINCI', 'RABBIT', 'https://drive.google.com/uc?id=1Q3-URCYHKl_yyexLBvUCyYKn_CzPtdXm&export=media', 'https://drive.google.com/uc?id=1Q3-URCYHKl_yyexLBvUCyYKn_CzPtdXm&export=media', 'PJIVUyKKsx', 1, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('35SFZKSMmq', 'WALKIE TALKIE', 'WALKIE TALKIE', 'https://drive.google.com/uc?id=1b5koaFl0mmwLbWyznHKPgGsImsVmisyM&export=media', 'https://drive.google.com/uc?id=1r2zFeHVuLAIh7zDq5xCAtaHssu9CHBO-&export=media', '4ZMJBI87Ii', 0, '2022-06-06 13:47:55', '2022-06-06 13:47:55'),
('37HQYTxR0c', 'THE', 'TEA', 'https://drive.google.com/uc?id=1qyxYNiLR-MAQxDyIaFg4rkiR-zHEpX0U&export=media', 'https://drive.google.com/uc?id=1qyxYNiLR-MAQxDyIaFg4rkiR-zHEpX0U&export=media', 'ZAhwOpkkWh', 0, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('4hMc2krnHT', 'UNGU', 'PURPLE', 'https://drive.google.com/uc?id=1NEmxzPjA9CMRZFsxChZ0cRa1-OKO4hWj&export=media', 'https://drive.google.com/uc?id=1_TsRgWuDeq_FHyFayc4VQ8bHE6K0BJJ4&export=media', 'lIlykI7yix', 1, '2021-10-27 11:10:30', '2022-06-05 23:19:23'),
('4O44echdAz', 'MEJA LAMPU', 'TABLE LAMP', 'https://drive.google.com/uc?id=1gP_YUNNctdDVKZeiWwVk40Mgx-OPjo-r&export=media', 'https://drive.google.com/uc?id=1gP_YUNNctdDVKZeiWwVk40Mgx-OPjo-r&export=media', 'rFh7WiWh1U', 0, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('4w7D1CuPBn', 'GULING', 'BOLSTER', 'https://drive.google.com/uc?id=15pq5TCmC2n8x7y2Q_4VwHwhQ4cwsm2VB&export=media', 'https://drive.google.com/uc?id=15pq5TCmC2n8x7y2Q_4VwHwhQ4cwsm2VB&export=media', 'rFh7WiWh1U', 0, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('4XnJkeskig', 'BABI', 'PIG', 'https://drive.google.com/uc?id=1Z_MWmFHlmsdPCeezlvWpGF_0MMc7Z_1g&export=media', 'https://drive.google.com/uc?id=1Z_MWmFHlmsdPCeezlvWpGF_0MMc7Z_1g&export=media', 'PJIVUyKKsx', 0, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('51ZNWG86bl', 'COKLAT', 'BROWN', 'https://drive.google.com/uc?id=11yLbWTs60phcMHfAZdHZCHYTyp2FGpoK&export=media', 'https://drive.google.com/uc?id=1_ZwpVUMheKvG7InwrW3sje6TPRmAyJJR&export=media', 'lIlykI7yix', 0, '2022-06-05 23:21:46', '2022-06-05 23:21:46'),
('59wPUs84bg', 'BERMAIN GITAR', 'PLAYING GUITAR', 'https://drive.google.com/uc?id=1ypVEJoLhuG-hywAnzbPfE0Wuz_jHK85E&export=media', 'https://drive.google.com/uc?id=1ypVEJoLhuG-hywAnzbPfE0Wuz_jHK85E&export=media', 'SdGMT5fJGF', 1, '2022-06-05 12:22:48', '2022-06-05 12:22:48'),
('5co70HqWwe', 'ULAR', 'SNAKE', 'https://drive.google.com/uc?id=1cX0vGYwn0luge5SEmK73JcK3eH0vhrkf&export=media', 'https://drive.google.com/uc?id=1cX0vGYwn0luge5SEmK73JcK3eH0vhrkf&export=media', 'PJIVUyKKsx', 0, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('5kvk6W2rDf', 'TANGAN', 'HAND', 'https://drive.google.com/uc?id=1StdTYQ_xzg9YkIUIHWNzqQ7Gs30ZI-kM&export=media', 'https://drive.google.com/uc?id=15lsRYg6OBhdtA_bZV2xrOHXjl6hGFy71&export=media', 'kd4oos26tl', 0, '2021-10-27 10:52:01', '2022-06-05 09:14:37'),
('5vB3Ui4mb5', 'SEPATU', 'SHOES', 'https://drive.google.com/uc?id=1BM1tAnQqnyzj1ANvAbmeoRZI0YdKU60C&export=media', 'https://drive.google.com/uc?id=1BM1tAnQqnyzj1ANvAbmeoRZI0YdKU60C&export=media', 'UlSaRWh3E1', 1, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('675XYEHK4I', 'URANUS', 'URANUS', 'https://drive.google.com/uc?id=1DqntkTJ3pA03_Uv928NZnaH-mQTTdIXP&export=media', NULL, 'G4bbWyjO99', 1, '2021-11-04 02:56:40', '2021-11-04 02:56:40'),
('6eij8whT9i', 'ROTI ISI', 'SANDWICH', 'https://drive.google.com/uc?id=18ETkxu23IoZoGbs7enGmB0QWDkhFBiSr&export=media', 'https://drive.google.com/uc?id=18ETkxu23IoZoGbs7enGmB0QWDkhFBiSr&export=media', 'UXogDXaamX', 0, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('6GSB5nzhyo', 'TAS', 'BAG', 'https://drive.google.com/uc?id=189rYLB0G4pp0FtBqtHN-qAWkPCyOHdzd&export=media', NULL, 'e4iJNgm6Ca', 1, '2021-11-01 10:38:30', '2021-11-01 10:38:30'),
('6jineGKQUi', 'GUNUNG', 'MOUNTAIN', 'https://drive.google.com/uc?id=1ajlOuZ0_wbjYewqP3sMLW0C5dc6AHkCC&export=media', NULL, 'jsDsCkdOPZ', 1, '2021-11-04 02:10:26', '2021-11-04 02:10:26'),
('6LShPoNxwp', 'KUNING', 'YELLOW', 'https://drive.google.com/uc?id=1CSYmowrJLO8d5LdKLl7SCpsjdITDNd3E&export=media', 'https://drive.google.com/uc?id=17taWbUqAQCOotAAGnwDD76S0wSm4vC2L&export=media', 'lIlykI7yix', 1, '2021-10-27 11:11:19', '2022-06-05 23:19:45'),
('6PXkZ58QOz', 'BIRU', 'BLUE', 'https://drive.google.com/uc?id=1RnFz9K9TKkplTn1CQYjKRasYTE6vnz6D&export=media', 'https://drive.google.com/uc?id=1_shp5qkwjn6TG0R-r3mPYSfKKDeQQywG&export=media', 'lIlykI7yix', 0, '2021-10-27 11:10:45', '2022-06-05 23:20:02'),
('6Rx4Z1V1Ge', 'SERAGAM', 'UNIFORM', 'https://drive.google.com/uc?id=17XF0Au5g-vQ-WxI1FIDDkgFhAkkU2LPx&export=media', 'https://drive.google.com/uc?id=17XF0Au5g-vQ-WxI1FIDDkgFhAkkU2LPx&export=media', 'UlSaRWh3E1', 1, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('7A2ufXpK7q', 'BIR', 'BEER', 'https://drive.google.com/uc?id=1Wds8uqHW5ZS-T1sJ4E7Eid3i94wy58b_&export=media', 'https://drive.google.com/uc?id=1Wds8uqHW5ZS-T1sJ4E7Eid3i94wy58b_&export=media', 'ZAhwOpkkWh', 0, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('7hcJj4W4bo', 'BERMAIN BASKET', 'PLAYING BASKET', 'https://drive.google.com/uc?id=16FpW-mOFjmXqyARdAyuOov21il-jBOeT&export=media', 'https://drive.google.com/uc?id=16FpW-mOFjmXqyARdAyuOov21il-jBOeT&export=media', 'SdGMT5fJGF', 1, '2022-06-05 12:22:48', '2022-06-05 12:22:48'),
('7JN7EFPHeN', 'ABU ABU', 'GREY', 'https://drive.google.com/uc?id=1Qg2gS87q_9jUZHpqegij5m7tLwY-CPj8&export=media', 'https://drive.google.com/uc?id=1pu5UJn92ZIb4gBh-w_V1XaFL6PbZ3xuI&export=media', 'lIlykI7yix', 0, '2022-06-05 23:23:05', '2022-06-05 23:23:05'),
('7NNctw3k74', 'BURGER', 'BURGER', 'https://drive.google.com/uc?id=1MDX0QF-4mzv3TUyZz-SGZHQ6xgyto19p&export=media', 'https://drive.google.com/uc?id=1MDX0QF-4mzv3TUyZz-SGZHQ6xgyto19p&export=media', 'UXogDXaamX', 1, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('81ipxaUaRF', 'JUPITER', 'JUPITER', 'https://drive.google.com/uc?id=1nHRQacePEMq0lCnJSXlELt9raj4bu2Kn&export=media', NULL, 'G4bbWyjO99', 1, '2021-11-04 02:54:43', '2021-11-04 02:54:43'),
('8ckWF6i0er', 'SINGA', 'LION', 'https://drive.google.com/uc?id=1uw7kBE1UDZaoJroNSKcf5rKRso8gJjKR&export=media', 'https://drive.google.com/uc?id=1mEhBhUj4YIa1-fH7g8l7lwFnygpWruxM&export=media', 'ygubUyqQoN', 0, '2021-11-02 22:07:00', '2022-06-05 12:28:58'),
('96IL2cnCL1', 'KUCING', 'CAT', 'https://drive.google.com/uc?id=1ROUiaXZ05Lc9_JhyDyE3L_btqQyq1XEN&export=media', 'https://drive.google.com/uc?id=1ROUiaXZ05Lc9_JhyDyE3L_btqQyq1XEN&export=media', 'PJIVUyKKsx', 1, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('96wUddudBO', 'KAPAL', 'SHIP', 'https://drive.google.com/uc?id=1VcTG4vgu4J3wjNjMiadBRd_JVQ46mrXT&export=media', NULL, 'xsF19TMhoZ', 1, '2021-11-04 02:17:51', '2021-11-04 02:17:51'),
('97SMNSZosg', 'KOPI', 'COFFEE', 'https://drive.google.com/uc?id=1Ct2S_YmBD28Tnmxz4zs7Y42cnNrqYb_G&export=media', 'https://drive.google.com/uc?id=1Ct2S_YmBD28Tnmxz4zs7Y42cnNrqYb_G&export=media', 'ZAhwOpkkWh', 1, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('9BHzyskTvL', 'MERAH MUDA', 'PINK', 'https://drive.google.com/uc?id=1Zh2f-jjuE-MJ_jG2PUdhRAwHS15uZZlr&export=media', 'https://drive.google.com/uc?id=1jPv8LtLDEn4ZzssZxhN1UOWVJnLtWbZk&export=media', 'lIlykI7yix', 1, '2021-10-27 11:10:10', '2022-06-05 23:20:23'),
('9I1ltDpZwe', 'KENING', 'FOREHEAD', 'https://drive.google.com/uc?id=1YOTbuUXwK9Nf6w8AMsMq-wcWd-3QecLS&export=media', 'https://drive.google.com/uc?id=1483R43hWzb1hQY-PIRtS1wYbGrB_TCHM&export=media', 'kd4oos26tl', 1, '2022-06-05 09:21:41', '2022-06-05 09:21:41'),
('9N7ApsxPBD', 'DASI', 'TIE', 'https://drive.google.com/uc?id=1zlVcEkO8vR0bckGq6aPjgVQYVt-y8evp&export=media', 'https://drive.google.com/uc?id=1zlVcEkO8vR0bckGq6aPjgVQYVt-y8evp&export=media', 'UlSaRWh3E1', 0, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('9PngcKu3jV', 'SEPATU', 'SHOES', 'https://drive.google.com/uc?id=1ZK2T-4j2t1zq_BvD0OrAbxeXmn3ww9Jm&export=media', NULL, 'e4iJNgm6Ca', 1, '2021-11-01 10:31:39', '2021-11-01 10:31:39'),
('9Wa0my7LYn', 'KUE MUFFIN', 'MUFFIN', 'https://drive.google.com/uc?id=1UL9hTwBS2dksHCbnITR2OT9SI8rfZmrY&export=media', 'https://drive.google.com/uc?id=1UL9hTwBS2dksHCbnITR2OT9SI8rfZmrY&export=media', 'UXogDXaamX', 0, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('9Z7ptRkZ5g', 'GAJAH', 'ELEPHANT', 'https://drive.google.com/uc?id=1AHm73uLvT_J5xKftpORJ8KhgrMNNGJJ0&export=media', 'https://drive.google.com/uc?id=1r0UjBj3mrrvJwkjEv_6C4GpwRL9w2Hmt&export=media', 'ygubUyqQoN', 0, '2021-11-02 22:00:32', '2022-06-05 12:29:35'),
('a1GDHKhhOt', 'SAPI', 'COW', 'https://drive.google.com/uc?id=1mC_Hh9SrR1GTT28cueBm3MlzU0GWChS8&export=media', 'https://drive.google.com/uc?id=1TV5LTBDp5Y8rYJEA58AMYIqrHRUCw1SQ&export=media', 'Kx3nrVcSeN', 1, '2021-11-04 01:20:48', '2022-06-06 09:55:46'),
('a32L3ZqBre', 'DAGING', 'MEAT', 'https://drive.google.com/uc?id=1GX7nf8vSR-Xt0IB9YDDI6erJfpDhb3QH&export=media', 'https://drive.google.com/uc?id=1_-1exzORYbl2_QnjcEHJlZbvuP5Yf_IU&export=media', 'UXogDXaamX', 0, '2021-11-02 01:47:55', '2022-06-06 13:31:42'),
('A3ouuriVfh', 'KEBAKARAN HUTAN', 'FOREST FIRES', 'https://drive.google.com/uc?id=1tC_grZW6EuC4vEY1GHc4r6uOZr2MuWqS&export=media', 'https://drive.google.com/uc?id=1ceokUi22Qr7vaUUqW0grFe2TPivKjr8s&export=media', 'ZR8Oom877B', 0, '2021-11-04 09:04:58', '2022-06-06 14:27:09'),
('a5FlzWc4YO', 'KELAPA MUDA', 'YOUNG COCONUT', 'https://drive.google.com/uc?id=1touEXOcWLEpa-jAYp4u0nYr99GQR2zEB&export=media', 'https://drive.google.com/uc?id=1touEXOcWLEpa-jAYp4u0nYr99GQR2zEB&export=media', 'ZAhwOpkkWh', 0, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('A6ADLP6BHL', 'BURUNG MERPATI', 'DOVE', 'https://drive.google.com/uc?id=1GJo1JmJZ0l-DeGR7Z4I1nKaxavSJUFq3&export=media', 'https://drive.google.com/uc?id=1GJo1JmJZ0l-DeGR7Z4I1nKaxavSJUFq3&export=media', 'PJIVUyKKsx', 0, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('a7WqzS57Tv', 'MERAH', 'RED', 'https://drive.google.com/uc?id=1GvN90vIVvfM5oCck8MJW0sJSE5kf76zg&export=media', 'https://drive.google.com/uc?id=1tri1EhfUaXolATe73vWYqodpJOumSZ99&export=media', 'lIlykI7yix', 1, '2021-10-27 11:09:54', '2022-06-05 23:20:40'),
('AAN8SqU79D', 'KUDA ZEBRA', 'ZEBRA', 'https://drive.google.com/uc?id=1NdJOdsG6q0eH2en2WDaGVrxVht_4Ssjh&export=media', 'https://drive.google.com/uc?id=1qXH-k4gWUiElQhRpUs1wGkQr075Tw1FQ&export=media', 'ygubUyqQoN', 1, '2021-11-02 21:56:21', '2022-06-05 12:30:09'),
('AbYLGPHBIV', 'TEMPAT TIDUR', 'BED', 'https://drive.google.com/uc?id=1yPxU1DntbZK18wiXN8RRJ2WeFRTEhHjy&export=media', 'https://drive.google.com/uc?id=1yPxU1DntbZK18wiXN8RRJ2WeFRTEhHjy&export=media', 'rFh7WiWh1U', 0, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('aCrqLO6XmF', 'KELUARGA', 'FAMILY', 'https://drive.google.com/uc?id=1RBasIp9InEBoJnfSJXyGaQ6Q-lSgrwrU&export=media', 'https://drive.google.com/uc?id=1RBasIp9InEBoJnfSJXyGaQ6Q-lSgrwrU&export=media', '904nkyIb9r', 1, '2022-06-05 12:22:48', '2022-06-05 12:22:48'),
('aE0XfZyEJf', 'TEKO', 'TEAPOT', 'https://drive.google.com/uc?id=1z94QNjrUzpSX_Z2S5239ICt5QZx421Cg&export=media', 'https://drive.google.com/uc?id=1z94QNjrUzpSX_Z2S5239ICt5QZx421Cg&export=media', 'rFh7WiWh1U', 0, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('AjOv6RNLJt', 'GARASI', 'GARAGE', 'https://drive.google.com/uc?id=1uJPAn6yH-1jWoDHp9P_wgx8Cls8YpaDE&export=media', 'https://drive.google.com/uc?id=1uJPAn6yH-1jWoDHp9P_wgx8Cls8YpaDE&export=media', 'rFh7WiWh1U', 0, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('all9w7eCwJ', 'BURUNG KENARI', 'CANARY', 'https://drive.google.com/uc?id=17jwnLiB3T-L3sNodbi9Hj-H_Wl8_HuKp&export=media', 'https://drive.google.com/uc?id=17jwnLiB3T-L3sNodbi9Hj-H_Wl8_HuKp&export=media', 'PJIVUyKKsx', 0, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('aS1zsXNvrW', 'PENSIL', 'PENCIL', 'https://drive.google.com/uc?id=1IRhpMWtg0MVx-NkPrZM6TX9YVJkNT1Eo&export=media', NULL, 'e4iJNgm6Ca', 1, '2021-11-01 10:36:27', '2021-11-01 10:36:27'),
('ASmIlthPot', 'MENARI', 'DANCING', 'https://drive.google.com/uc?id=15Z6iEWEeK3lngcYT8JA-Y2WNRA9gnhks&export=media', 'https://drive.google.com/uc?id=15Z6iEWEeK3lngcYT8JA-Y2WNRA9gnhks&export=media', 'SdGMT5fJGF', 1, '2022-06-05 12:22:48', '2022-06-05 12:22:48'),
('att2Lg5hHz', 'GUNUNG MELETUS', 'VOLCANO ERUPTION', 'https://drive.google.com/uc?id=1ZSgUz7zc-VDQa6zBI6Ili0CqX7af0zDy&export=media', 'https://drive.google.com/uc?id=1jil60GmGOOxyKSObG4qq64HYrTrofMw4&export=media', 'ZR8Oom877B', 0, '2021-11-04 09:01:19', '2022-06-06 14:27:33'),
('AzhENXtEvP', 'DAUN', 'LEAF', 'https://drive.google.com/uc?id=167FouiKZmi3Qb56SjoYRLXNxPzzy7dXk&export=media', NULL, 'LkcMVU9fBL', 1, '2021-11-04 01:49:13', '2021-11-04 01:49:13'),
('AZt1trsK1u', 'KAMAR TIDUR', 'BED ROOM', 'https://drive.google.com/uc?id=1FujZnU13VR0NDKgh-D9q-DV2WhqVxry6&export=media', 'https://drive.google.com/uc?id=1FujZnU13VR0NDKgh-D9q-DV2WhqVxry6&export=media', 'rFh7WiWh1U', 0, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('b9zEyYN0lh', 'BAJU TIDUR', 'PAJAMAS', 'https://drive.google.com/uc?id=1p599XQ-JqegwAzBlBuJO8xJk2Z9ZjPAK&export=media', 'https://drive.google.com/uc?id=1p599XQ-JqegwAzBlBuJO8xJk2Z9ZjPAK&export=media', 'UlSaRWh3E1', 1, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('BBMIDiTNvZ', 'HANDUK', 'TOWEL', 'https://drive.google.com/uc?id=1Dpf4D0eq_ndTD5vuqjyklKJDlG6AxOAV&export=media', 'https://drive.google.com/uc?id=1Dpf4D0eq_ndTD5vuqjyklKJDlG6AxOAV&export=media', 'rFh7WiWh1U', 1, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('bboFGJEozi', 'MERKURIUS', 'MERCURY', 'https://drive.google.com/uc?id=1jn0VSSK8eVeIiokc-IZ0rPYoiFUPJ83w&export=media', NULL, 'G4bbWyjO99', 1, '2021-11-04 02:50:53', '2021-11-04 02:50:53'),
('bisjhvxfx7', 'BUNGA', 'FLOWER', 'https://drive.google.com/uc?id=1guySZ4g0V7lsYvhucjhnmEHaNRBtZNI7&export=media', NULL, 'LkcMVU9fBL', 1, '2021-11-04 01:50:27', '2021-11-04 01:50:27'),
('bly0hAKbTQ', 'DAPUR', 'KITCHEN', 'https://drive.google.com/uc?id=1_bcOxO68mKqVS541yMHCyDTzv-0YdI0i&export=media', NULL, 'xRADaFn1It', 1, '2021-11-01 21:43:50', '2021-11-02 21:15:34'),
('BnxSfcnLaN', 'KOMPOR', 'STOVE', 'https://drive.google.com/uc?id=18huWk39Xuzro5DMpKP9K6g7bU8mrdTwP&export=media', 'https://drive.google.com/uc?id=18huWk39Xuzro5DMpKP9K6g7bU8mrdTwP&export=media', 'rFh7WiWh1U', 1, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('BpvFT8zzrw', 'RUANG MAKAN', 'DINING ROOM', 'https://drive.google.com/uc?id=1S3AEcFlM-dNOi4FZk2yMI3i270NfpK9l&export=media', 'https://drive.google.com/uc?id=1S3AEcFlM-dNOi4FZk2yMI3i270NfpK9l&export=media', 'rFh7WiWh1U', 1, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('bvLwcbT2sW', 'KENTONGAN', 'CLAPPER', 'https://drive.google.com/uc?id=10elNCNWX2C5I7hglsoBBNBZNv0emg_Kl&export=media', 'https://drive.google.com/uc?id=1RgOX8-q25VCGBGLhSEyx0wLGJN3B10BP&export=media', '4ZMJBI87Ii', 0, '2021-11-04 09:09:22', '2022-06-06 13:44:27'),
('BX3FMd6M20', 'AIR TERJUN', 'WATERFALL', 'https://drive.google.com/uc?id=1hnRTGuBcHcigYREnFbXqcOAWsNsRYVXK&export=media', NULL, 'jsDsCkdOPZ', 1, '2021-11-04 02:11:32', '2021-11-04 02:11:32'),
('C3hp7MAHv5', 'DINDING', 'WALL', 'https://drive.google.com/uc?id=16FaQV5ydjwqx05cJ5PnflGV4ol_yFir0&export=media', NULL, 'xRADaFn1It', 1, '2021-11-01 21:31:12', '2021-11-02 20:57:46'),
('cb4I7KufCQ', 'HITAM', 'BLACK', 'https://drive.google.com/uc?id=1NIkxv7y5CnPC1b7xL03bsE7w4NFsd318&export=media', 'https://drive.google.com/uc?id=189UeohAd5LDtVwZ50HHqKO-QCG2104oU&export=media', 'lIlykI7yix', 1, '2022-06-05 23:22:34', '2022-06-05 23:22:34'),
('cIVagB3Zzv', 'HIJAU', 'GREEN', 'https://drive.google.com/uc?id=1mfQI9vQ5YKvh7bZR6B27quQxEUGixyUL&export=media', 'https://drive.google.com/uc?id=1kEy7AAPnNmbpRtj0MIcSWpFK2t8fRwWH&export=media', 'lIlykI7yix', 1, '2021-10-27 11:11:00', '2022-06-05 23:21:00'),
('cRfkiLBPtW', 'HIDUNG', 'NOSE', 'https://drive.google.com/uc?id=1BJiLrfYurWUthqtPbTD34Fa-WHL91RCD&export=media', 'https://drive.google.com/uc?id=1cI-MCEt9OA8ZWqTBJOjNRvXO9Jna4mHb&export=media', 'kd4oos26tl', 1, '2021-10-27 10:49:42', '2022-06-05 09:15:38'),
('CVcHAiLt2v', 'SAMPO', 'SHAMPOO', 'https://drive.google.com/uc?id=19HzqInrdmRJO293IruKNWd-cRkjARncC&export=media', 'https://drive.google.com/uc?id=19HzqInrdmRJO293IruKNWd-cRkjARncC&export=media', 'rFh7WiWh1U', 1, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('D4N3qU9WTO', 'PINTU', 'DOOR', 'https://drive.google.com/uc?id=19bgO2AvD8lnpZ7Fx2TkPlAniUMjdYRDh&export=media', 'https://drive.google.com/uc?id=19bgO2AvD8lnpZ7Fx2TkPlAniUMjdYRDh&export=media', 'rFh7WiWh1U', 0, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('dBPcXKEyVP', 'BERUANG', 'BEAR', 'https://drive.google.com/uc?id=1KX7KWED8h6SFSaj-UIGbm-xrnQmmNIhy&export=media', 'https://drive.google.com/uc?id=1sPkIQ5G3BvsGB2hzBKKX0KDu_2DCSCoN&export=media', 'ygubUyqQoN', 1, '2021-11-02 22:02:14', '2022-06-05 12:30:33'),
('DcSsLk4rwz', 'KUE PAI', 'PIE', 'https://drive.google.com/uc?id=1NzxGiej0BHnFx_HnOmcgOI5wSrqT2Es4&export=media', 'https://drive.google.com/uc?id=1NzxGiej0BHnFx_HnOmcgOI5wSrqT2Es4&export=media', 'UXogDXaamX', 0, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('dSmyHyVHAe', 'TELEPON PINTAR', 'SMARTPHONE', 'https://drive.google.com/uc?id=1A0UsWNhcyk4GWosm0e040eLEuqFODR-p&export=media', 'https://drive.google.com/uc?id=1_vRo5lsu6lAKW7BGt4xAa6HIK6zg0x9U&export=media', '4ZMJBI87Ii', 1, '2021-11-04 02:33:14', '2022-06-06 13:44:58'),
('DxQOqNMAmS', 'KULKAS', 'REFRIGERATOR', 'https://drive.google.com/uc?id=1gpDnGWY0PfA-bQC0GAE5PpQUy_wUORIV&export=media', 'https://drive.google.com/uc?id=1gpDnGWY0PfA-bQC0GAE5PpQUy_wUORIV&export=media', 'rFh7WiWh1U', 1, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('eBmbw188GS', 'DAGU', 'CHIN', 'https://drive.google.com/uc?id=1Ft0gc1jb_CSq7lHbkjaaWHxFP3jsiImO&export=media', 'https://drive.google.com/uc?id=1mrzL2AVZoksDRUNO9HXqpNn4w5uzv1R3&export=media', 'kd4oos26tl', 0, '2021-10-27 10:53:06', '2022-06-05 09:15:33'),
('edEbhyClqe', 'BINGKAI FOTO', 'FRAME', 'https://drive.google.com/uc?id=1S2flIrjA7Sy5XaJfMzqWKYZF0glwhyi-&export=media', 'https://drive.google.com/uc?id=1S2flIrjA7Sy5XaJfMzqWKYZF0glwhyi-&export=media', 'rFh7WiWh1U', 1, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('eDjxmOIQRj', 'SUSU', 'MILK', 'https://drive.google.com/uc?id=1CUtIhIKe0RCYFFTOHmoAspv18hV8kgOc&export=media', 'https://drive.google.com/uc?id=1CUtIhIKe0RCYFFTOHmoAspv18hV8kgOc&export=media', 'ZAhwOpkkWh', 1, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('EDw1TZH41O', 'JUS', 'JUICE', 'https://drive.google.com/uc?id=1s3ZIM-u5402eKF-lxd3reWNAVjL_8-_D&export=media', NULL, 'ZAhwOpkkWh', 1, '2021-11-02 01:51:26', '2022-06-06 09:44:59'),
('EE0U1Y8nA3', 'FOTOGRAFI', 'PHOTOGRAPHY', 'https://drive.google.com/uc?id=1a7VlwegfXMgNbt6hhKOqsGt9Lry5A_rQ&export=media', 'https://drive.google.com/uc?id=1a7VlwegfXMgNbt6hhKOqsGt9Lry5A_rQ&export=media', 'SdGMT5fJGF', 0, '2022-06-05 12:22:48', '2022-06-05 12:22:48'),
('efekszL6Um', 'VENUS', 'VENUS', 'https://drive.google.com/uc?id=1lY-eMewKw_W439g6N9LUMYKZ4CiVMkaG&export=media', NULL, 'G4bbWyjO99', 1, '2021-11-04 02:51:41', '2021-11-04 02:51:41'),
('ek22qRrWvj', 'SOFA', 'SOFA', 'https://drive.google.com/uc?id=199skNHT87RxVNbrjsVENg9Uex4paCgCc&export=media', 'https://drive.google.com/uc?id=199skNHT87RxVNbrjsVENg9Uex4paCgCc&export=media', 'rFh7WiWh1U', 1, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('eOTP2S7Tkp', 'ANAK PEREMPUAN', 'GIRL', 'https://drive.google.com/uc?id=1Kex9KHTnOsatAhjHJoptFzuRuOy7ocqt&export=media', 'https://drive.google.com/uc?id=1Kex9KHTnOsatAhjHJoptFzuRuOy7ocqt&export=media', '904nkyIb9r', 0, '2022-06-05 12:22:48', '2022-06-05 12:22:48'),
('ePKOCTPdec', 'SWITER', 'SWEATER', 'https://drive.google.com/uc?id=1YM2J2vuKnQwW3PP18e2SlGjIPBDTS24y&export=media', 'https://drive.google.com/uc?id=1YM2J2vuKnQwW3PP18e2SlGjIPBDTS24y&export=media', 'UlSaRWh3E1', 1, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('erUqEkehG1', 'AIR', 'WATER', 'https://drive.google.com/uc?id=1TYoam2N60eopnfTyBiERC3Sia4YH9VuJ&export=media', 'https://drive.google.com/uc?id=1TYoam2N60eopnfTyBiERC3Sia4YH9VuJ&export=media', 'ZAhwOpkkWh', 1, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('es7u1MUhD9', 'KAMBING', 'GOAT', 'https://drive.google.com/uc?id=1vMyWUdvj2thwt-0SCnnWYDLOvKdvtc_Z&export=media', 'https://drive.google.com/uc?id=16_UBhRgdLCckjm2p0UipL-03MujvXmqf&export=media', 'Kx3nrVcSeN', 1, '2021-11-04 01:25:06', '2022-06-06 09:58:35'),
('ex1YfLx8TO', 'SELIMUT', 'BLANKET', 'https://drive.google.com/uc?id=1DLhcJFmQQA2kfsjIFGxNdEHwRKCNgGsd&export=media', 'https://drive.google.com/uc?id=1DLhcJFmQQA2kfsjIFGxNdEHwRKCNgGsd&export=media', 'rFh7WiWh1U', 0, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('F9pqUoU5op', 'PINTU', 'DOOR', 'https://drive.google.com/uc?id=1HBPJLzruvy1obLYRzfDsvPex7G324i2D&export=media', NULL, 'xRADaFn1It', 1, '2021-11-01 21:25:05', '2021-11-01 21:25:05'),
('FFDvQwGIE2', 'SAPI', 'COW', 'https://drive.google.com/uc?id=1Dt5O48Cs2np-5xa9JP3igi7Ur3rHQd0o&export=media', 'https://drive.google.com/uc?id=1Dt5O48Cs2np-5xa9JP3igi7Ur3rHQd0o&export=media', 'PJIVUyKKsx', 0, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('ffs5z30bSh', 'SODA KALENG', 'CANNED SODA', 'https://drive.google.com/uc?id=19kQ1TKPzTx0CZv8C9Onz0ZrpOD9HP_FM&export=media', 'https://drive.google.com/uc?id=19kQ1TKPzTx0CZv8C9Onz0ZrpOD9HP_FM&export=media', 'ZAhwOpkkWh', 0, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('FLO88NBFUl', 'JAKET', 'JACKET', 'https://drive.google.com/uc?id=1QKY1el3CGQW90RS74nKaPBRTKQW5A_gO&export=media', 'https://drive.google.com/uc?id=1QKY1el3CGQW90RS74nKaPBRTKQW5A_gO&export=media', 'UlSaRWh3E1', 1, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('frjS2dHa5b', 'KAMBING', 'GOAT', 'https://drive.google.com/uc?id=1_rY6U0PQEDP60V4eAA9nAaEdMt1Aov0z&export=media', 'https://drive.google.com/uc?id=1_rY6U0PQEDP60V4eAA9nAaEdMt1Aov0z&export=media', 'PJIVUyKKsx', 1, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('frPfztqi1F', 'KANTOR', 'OFFICE', 'https://drive.google.com/uc?id=1bvTM4YW5CGcP6TCvCCxKyMzDbpCgN_du&export=media', NULL, 'Uv1CjrXSOF', 1, '2021-11-04 08:53:21', '2021-11-04 08:53:21'),
('FT58UPRsy0', 'PIZZA', 'PIZZA', 'https://drive.google.com/uc?id=17NtAU8WUAbG4LLq2KU-5DJvmXavBYsP3&export=media', 'https://drive.google.com/uc?id=17NtAU8WUAbG4LLq2KU-5DJvmXavBYsP3&export=media', 'UXogDXaamX', 1, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('FUBw0vXLqs', 'ANGSA', 'GOOSE', 'https://drive.google.com/uc?id=1HKh1gwmS5SuYYt9lpDrtuChOFXzYfvtM&export=media', 'https://drive.google.com/uc?id=1HKh1gwmS5SuYYt9lpDrtuChOFXzYfvtM&export=media', 'PJIVUyKKsx', 0, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('fYyaE7aLNn', 'MULUT', 'MOUTH', 'https://drive.google.com/uc?id=1tuCK7Bh0uHrUiPn51NIQolajhqCIbCjF&export=media', 'https://drive.google.com/uc?id=1u7I9m9OjcO12k4bqkwpMnAyI8i1XOa8K&export=media', 'kd4oos26tl', 0, '2021-10-27 10:50:35', '2022-06-05 09:15:58'),
('Fze5rbpe6i', 'GORILA', 'GORILLA', 'https://drive.google.com/uc?id=1F0W71CKRu8wkvVTA1_CKq4XBYsXrz77a&export=media', 'https://drive.google.com/uc?id=1PrD6ODTwkDQEue4SLCLn_fS3C1K2kMTy&export=media', 'ygubUyqQoN', 1, '2021-11-02 21:52:04', '2022-06-05 12:31:19'),
('G6by1raM3T', 'TOPI', 'HAT', 'https://drive.google.com/uc?id=15hKcZP9KhgvpwvEFPVK_ErXrcVPy0I24&export=media', 'https://drive.google.com/uc?id=15hKcZP9KhgvpwvEFPVK_ErXrcVPy0I24&export=media', 'UlSaRWh3E1', 0, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('GBojb7ESDZ', 'SUSU', 'MILK', 'https://drive.google.com/uc?id=1pElp99wEl9aSaSGK0ypznOKBeqAfehjU&export=media', NULL, 'ZAhwOpkkWh', 1, '2021-11-02 01:40:09', '2022-06-06 09:45:09'),
('gc7SJmeCjq', 'PANEKUK', 'PANCAKE', 'https://drive.google.com/uc?id=1C9p06QAZxitznLL4UdBT3gJh6V9yh1a4&export=media', 'https://drive.google.com/uc?id=1C9p06QAZxitznLL4UdBT3gJh6V9yh1a4&export=media', 'UXogDXaamX', 1, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('giDLx5cbbv', 'RADIO', 'RADIO', 'https://drive.google.com/uc?id=1Ur96zy1Ykz6MRGYBNA89XaPGucsypQpA&export=media', 'https://drive.google.com/uc?id=1gYrLmjBM7q-dFljd8NKDZq5L4_zZ7GgI&export=media', '4ZMJBI87Ii', 1, '2021-11-04 02:31:59', '2022-06-06 13:45:25'),
('GtetMDoTcP', 'JERAPAH', 'GIRAFFE', 'https://drive.google.com/uc?id=1pjTbrG_8SCwoNskXGdf5v1LpA6-R-EVz&export=media', 'https://drive.google.com/uc?id=18sbQL2_rwgvK8oeCfiiRJyEZYiSw_fPh&export=media', 'ygubUyqQoN', 0, '2021-11-02 21:57:27', '2022-06-05 12:31:50'),
('gU3AtZjNls', 'DOMBA', 'SHEEP', 'https://drive.google.com/uc?id=1z6CkE8cAR27I3zVXHAl2Rzxbe88DxBhE&export=media', 'https://drive.google.com/uc?id=1sfcdU3k5nMFGFlxzCi2wG2feBefNUQBe&export=media', 'Kx3nrVcSeN', 0, '2021-11-02 22:52:45', '2022-06-06 09:58:45'),
('gxA2q90fsy', 'JAM DINDING', 'CLOCK', 'https://drive.google.com/uc?id=1GxpM3p54adackwTYemK5f5FD5C_9Isi6&export=media', 'https://drive.google.com/uc?id=1GxpM3p54adackwTYemK5f5FD5C_9Isi6&export=media', 'rFh7WiWh1U', 1, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('GYOz1ewV8y', 'MOBIL', 'CAR', 'https://drive.google.com/uc?id=1IZQShuPHwUNmqK3KxMJ0tbjDJlnSy_kH&export=media', NULL, 'xsF19TMhoZ', 1, '2021-11-04 02:12:37', '2021-11-04 02:12:37'),
('H3Wr1JvodA', 'UNTA', 'CAMEL', 'https://drive.google.com/uc?id=1_zysTVuoVE82ilEydtYy6RreRx7NkENf&export=media', 'https://drive.google.com/uc?id=1_zysTVuoVE82ilEydtYy6RreRx7NkENf&export=media', 'PJIVUyKKsx', 1, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('h8sxl1jndX', 'DOMBA', 'SHEEP', 'https://drive.google.com/uc?id=1I5Ki83nv0_yFRUqHwuZPhrRLHka9JQV2&export=media', 'https://drive.google.com/uc?id=1I5Ki83nv0_yFRUqHwuZPhrRLHka9JQV2&export=media', 'PJIVUyKKsx', 1, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('Hb6oNjLt96', 'JENDELA', 'WINDOW', 'https://drive.google.com/uc?id=1FpoMUSuxL22f8u0WgQU5o38eAM3YSjfz&export=media', NULL, 'xRADaFn1It', 1, '2021-11-01 21:21:25', '2021-11-01 21:21:25'),
('hBoDkbghe8', 'KUE', 'CAKE', 'https://drive.google.com/uc?id=1iUSfC0YBOwWjC9JWDV6Yh0XpPEqZzT0h&export=media', 'https://drive.google.com/uc?id=1iUSfC0YBOwWjC9JWDV6Yh0XpPEqZzT0h&export=media', 'UXogDXaamX', 1, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('hdRi8qn5fL', 'BUAYA', 'CROCODILE', 'https://drive.google.com/uc?id=1UfA9TDYBNSfLPWruebbgcWFK7-HJhL1f&export=media', 'https://drive.google.com/uc?id=1UfA9TDYBNSfLPWruebbgcWFK7-HJhL1f&export=media', 'PJIVUyKKsx', 1, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('HfOPEiC6Hu', 'NYAMUK', 'MOSQUITO', 'https://drive.google.com/uc?id=1iMfuWwPoSdro9MXxArd-30nz4_zr2rID&export=media', 'https://drive.google.com/uc?id=1VdkxsOMXRiCN-24gn_tUmcbZI2kbRdpP&export=media', 'uMq6cenpUS', 1, '2021-11-04 01:42:05', '2022-06-06 14:09:04'),
('Hq3e7lETe7', 'MENULIS', 'WRITING', 'https://drive.google.com/uc?id=1r7Vbz8_IIo3JIrDiXaW8GZJUostMcd_v&export=media', 'https://drive.google.com/uc?id=1r7Vbz8_IIo3JIrDiXaW8GZJUostMcd_v&export=media', 'SdGMT5fJGF', 0, '2022-06-05 12:22:48', '2022-06-05 12:22:48'),
('hTFM8kt2eM', 'KURSI', 'CHAIR', 'https://drive.google.com/uc?id=1YhkkavSul0f5Zqgpp9lmhJQLCGFAQx0V&export=media', 'https://drive.google.com/uc?id=1YhkkavSul0f5Zqgpp9lmhJQLCGFAQx0V&export=media', 'rFh7WiWh1U', 1, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('HtszrGWpx8', 'ORANYE', 'ORANGE', 'https://drive.google.com/uc?id=1kZzhzUMXWed-RUp7Ih0wQrkgDYHuY8AO&export=media', 'https://drive.google.com/uc?id=16qA1L8AMOiGibXupaGQVtddlne8RtW3k&export=media', 'lIlykI7yix', 0, '2021-10-27 11:11:36', '2022-06-05 23:21:20'),
('HyKiRjtmo0', 'MATA', 'EYES', 'https://drive.google.com/uc?id=1XNbNbk6-DqFvfoHnMx54Ca4QOhY26zfj&export=media', 'https://drive.google.com/uc?id=1UaKNT1SmmZ6E6mNfoiQ46E4QIXcWPnxx&export=media', 'kd4oos26tl', 0, '2021-10-27 10:49:23', '2022-06-05 09:16:17'),
('hZQMKXNk3K', 'HARIMAU', 'TIGER', 'https://drive.google.com/uc?id=1ae-Q1Zd1tYajUqT3pVkU_75cF6BohK1f&export=media', 'https://drive.google.com/uc?id=1NnKjwsCYtjZNYC3PnpqylkTKiv15VdWp&export=media', 'ygubUyqQoN', 1, '2021-11-02 22:05:50', '2022-06-05 12:32:19'),
('I6mUwCHRps', 'IKAN', 'FISH', 'https://drive.google.com/uc?id=1a_5RU-9O9C2ZS3CZEYuLmaIbeWvvhRts&export=media', 'https://drive.google.com/uc?id=1iunsffmt0FzxqL8-IcJJfE9pcw4SJtid&export=media', 'Kx3nrVcSeN', 1, '2021-11-04 01:30:55', '2022-06-06 09:58:28'),
('IctUbRXpVF', 'NASI GORENG', 'FRIED RICE', 'https://drive.google.com/uc?id=1mqdmIwVhxpEp_klQnZnd3KO752ACiX0j&export=media', 'https://drive.google.com/uc?id=1mqdmIwVhxpEp_klQnZnd3KO752ACiX0j&export=media', 'UXogDXaamX', 1, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('Ie0EQOtZYT', 'KAMAR MANDI', 'BATHROOM', 'https://drive.google.com/uc?id=1tCb8Bagk6AB4HBZ8rFQ_3M6OqRoz4teJ&export=media', NULL, 'xRADaFn1It', 1, '2021-11-01 21:40:18', '2021-11-02 21:12:58'),
('IecP24JGU5', 'HANGER', 'HANGER', 'https://drive.google.com/uc?id=1FYiMNi0vzIKgIBkslZDld1vkkEvCeXfP&export=media', 'https://drive.google.com/uc?id=1FYiMNi0vzIKgIBkslZDld1vkkEvCeXfP&export=media', 'rFh7WiWh1U', 0, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('IF42alobVf', 'MANGGA', 'MANGO', 'https://drive.google.com/uc?id=17jJ6LkC11kN5Zke8Jzk3HoURda4wSZ0G&export=media', NULL, 'mqGYngDtGa', 1, '2021-11-04 01:57:21', '2021-11-04 01:57:21'),
('iFIo3cZTyg', 'BATANG', 'STEAM', 'https://drive.google.com/uc?id=1f28TzyOMkZ53cewShpIWLMPTDoO4p92a&export=media', NULL, 'LkcMVU9fBL', 1, '2021-11-04 01:47:48', '2021-11-04 01:47:48'),
('ilPthBoLyd', 'ANGIN PUTING BELIUNG', 'TORNADO', 'https://drive.google.com/uc?id=1B03sCdwZiocnSTfQShW20vu22kPYvRxB&export=media', 'https://drive.google.com/uc?id=195CZGQ6jjmOh0Diq6rFs8-4f3VbDk3Uc&export=media', 'ZR8Oom877B', 1, '2021-11-04 09:06:05', '2022-06-06 14:27:57'),
('Ipb0CC5QC1', 'TIKUS', 'MOUSE', 'https://drive.google.com/uc?id=12BJFfgp0-sqYXg6R6kBVPwGzw9I8llb0&export=media', 'https://drive.google.com/uc?id=12GMWyc7EO4J0CShfQ59EaUwQb9D_V61a&export=media', 'ygubUyqQoN', 1, '2021-11-04 01:28:40', '2022-06-06 09:59:21'),
('iSmyhCOTV1', 'PESAWAT', 'PLANE', 'https://drive.google.com/uc?id=1SPVLbMBXQiEwA4UlCPGWwEoC_gM-c00n&export=media', NULL, 'xsF19TMhoZ', 1, '2021-11-04 02:16:38', '2021-11-04 02:16:38'),
('IVa0pNLHmQ', 'GURU', 'TEACHER', 'https://drive.google.com/uc?id=1D5TlaFOsTzQtUnZmxapqGyGf_A81mU_t&export=media', NULL, '9PMo2pGpX6', 1, '2021-11-04 02:20:22', '2021-11-04 02:20:22'),
('jHectIlG2z', 'BERSEPEDA', 'CYCLING', 'https://drive.google.com/uc?id=1PgnUYWpdHdto2z3gfs4tsgyGDfkgl9Rb&export=media', 'https://drive.google.com/uc?id=1PgnUYWpdHdto2z3gfs4tsgyGDfkgl9Rb&export=media', 'SdGMT5fJGF', 0, '2022-06-05 12:22:48', '2022-06-05 12:22:48'),
('jhmisOpZIs', 'TANAH LONGSOR', 'LANDSLIDE', 'https://drive.google.com/uc?id=15LfcQ860t_eUU7o_eG4xyoZvjh22E4tW&export=media', 'https://drive.google.com/uc?id=1ltA5O9vniYtuXJPvlJCu9ckPYYqQRSb9&export=media', 'ZR8Oom877B', 0, '2021-11-04 09:02:12', '2022-06-06 14:28:23'),
('jkz8MB7Kgi', 'BURUNG', 'BIRD', 'https://drive.google.com/uc?id=1sM8MBg-UZx4DSns_DYBZ_MZ2_y5odk5V&export=media', 'https://drive.google.com/uc?id=17sVqhhJXvY1trn6hYm3etrwe0WaaPL7-&export=media', 'Kx3nrVcSeN', 1, '2021-11-04 01:26:09', '2022-06-06 10:01:03'),
('JPklU3S95L', 'AYAH', 'FATHER', 'https://drive.google.com/uc?id=1uJhgANhm8gnbQgVKZgiLFgwtCf9CFakx&export=media', 'https://drive.google.com/uc?id=1uJhgANhm8gnbQgVKZgiLFgwtCf9CFakx&export=media', '904nkyIb9r', 1, '2022-06-05 12:22:48', '2022-06-05 12:22:48'),
('jsk1P9HG8z', 'RAYAP', 'TERMITE', 'https://drive.google.com/uc?id=1wODsXRZMBirEtHuM_ZGpcpi2158ZmJdC&export=media', 'https://drive.google.com/uc?id=13sY2WEkxQbue6w7vZlbzIY6blyaIb7gp&export=media', 'uMq6cenpUS', 0, '2022-06-06 14:13:24', '2022-06-06 14:13:24'),
('JwwsNMmAQX', 'PISANG', 'BANANA', 'https://drive.google.com/uc?id=1CKLeRc7OVrxCBJhzRwWZMzDsde7vNRpL&export=media', NULL, 'mqGYngDtGa', 1, '2021-11-04 01:55:47', '2021-11-04 01:55:47'),
('JYCM1SJFmY', 'PASTA GIGI', 'TOOTH PASTE', 'https://drive.google.com/uc?id=1G0R3InSsSrA1JU2fsLtpK_etPqdQg9D3&export=media', 'https://drive.google.com/uc?id=1G0R3InSsSrA1JU2fsLtpK_etPqdQg9D3&export=media', 'rFh7WiWh1U', 0, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('k1udeU3uKq', 'TOPI', 'CAP', 'https://drive.google.com/uc?id=1Ujtz4c09EuVoFsS5C0PqsM_bOPjB5CMC&export=media', 'https://drive.google.com/uc?id=1Ujtz4c09EuVoFsS5C0PqsM_bOPjB5CMC&export=media', 'UlSaRWh3E1', 0, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('KbmVv2aztb', 'KAKI', 'LEG', 'https://drive.google.com/uc?id=15VPl2arCex_RhD4UtO7IPIS0jQQyiSom&export=media', 'https://drive.google.com/uc?id=18HgMuF22ZavH8HHWicNDgzFkmD9az6-b&export=media', 'kd4oos26tl', 0, '2021-10-27 10:52:19', '2022-06-05 09:16:37'),
('KDUdxc9hCu', 'MELUKIS', 'PAINTING', 'https://drive.google.com/uc?id=12xPARrrAeyP84dKL5zEO0PXoUm-3ZtHN&export=media', 'https://drive.google.com/uc?id=12xPARrrAeyP84dKL5zEO0PXoUm-3ZtHN&export=media', 'SdGMT5fJGF', 1, '2022-06-05 12:22:48', '2022-06-05 12:22:48'),
('KidJqbI7VG', 'KOLAM RENANG', 'SWIMMING POOL', 'https://drive.google.com/uc?id=1MZmriczQKc96IpcnviI6Xrzqc1A__8sU&export=media', NULL, 'jsDsCkdOPZ', 1, '2021-11-04 02:05:26', '2021-11-04 02:05:26'),
('kmFILFXtBd', 'SERAGAM', 'UNIFORM', 'https://drive.google.com/uc?id=1jfR4fwSTSSa0FTewwS_e-EQ1LpHXwgwT&export=media', NULL, 'e4iJNgm6Ca', 1, '2021-11-01 10:28:29', '2021-11-01 10:28:29'),
('KOyq4MKvff', 'MATAHARI', 'SUN', 'https://drive.google.com/uc?id=1Lo7AUgYjA6QzQJBRKyzAYP55aW6nayG_&export=media', NULL, 'kvI4kxbK8U', 1, '2021-11-04 02:44:28', '2021-11-04 02:44:28'),
('KX4ciRSUyg', 'KANTOR POLISI', 'POLICE STATION', 'https://drive.google.com/uc?id=19LaVkMohH7JbLfW7aC0ZUtv5f4GAsD6g&export=media', NULL, 'Uv1CjrXSOF', 1, '2021-11-04 08:57:40', '2021-11-04 08:57:40'),
('KZIP44LDvu', 'P', 'P', 'https://drive.google.com/uc?id=1THQxOeAjA4zQWsNg_9qVtiP0EBFaoKwo&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 10:59:00', '2021-11-01 09:27:42'),
('l0FMWapKNx', 'TELEVISI', 'TELEVISION', 'https://drive.google.com/uc?id=1rc6hUrxde4jgppTXNelHRwaieo6hYz3k&export=media', 'https://drive.google.com/uc?id=1XJKIGPimT58SMqGbWHM2SnOL9JDzm5Am&export=media', '4ZMJBI87Ii', 1, '2021-11-04 02:30:50', '2022-06-06 13:45:51'),
('l1nzFHuWCP', 'LONCENG', 'BELL', 'https://drive.google.com/uc?id=1_alvlu1LsCcHly-SWF6fVfUhavTz6j4j&export=media', 'https://drive.google.com/uc?id=1YiaRZNLUSM7XkeNSmrlOAyQnjSBQ2rEV&export=media', '4ZMJBI87Ii', 0, '2021-11-04 09:08:24', '2022-06-06 13:46:24'),
('L4geeLjkhh', 'PABRIK', 'FACTORY', 'https://drive.google.com/uc?id=1TRBNnFYO6OiV4e0NDyKOn0DYhekFQ8LI&export=media', NULL, 'Uv1CjrXSOF', 1, '2021-11-04 08:58:53', '2021-11-04 08:58:53'),
('L7h1UEmT8K', 'OVEN', 'OVEN', 'https://drive.google.com/uc?id=1ydi-JCa-NcIW4Yf6rXTAtpWWMnzc_S-d&export=media', 'https://drive.google.com/uc?id=1ydi-JCa-NcIW4Yf6rXTAtpWWMnzc_S-d&export=media', 'rFh7WiWh1U', 1, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('lhtxttAvUk', 'NEPTUNUS', 'NEPTUNUS', 'https://drive.google.com/uc?id=1b39ZclS1AOqO7AZxxwTyhR9g0eO3vIzd&export=media', NULL, 'G4bbWyjO99', 1, '2021-11-04 02:57:51', '2021-11-04 02:57:51'),
('lI3hkjMxPo', 'BINTANG', 'STAR', 'https://drive.google.com/uc?id=1JZ1X75Dmtbk_P0jT1_amzQHFPN4ziFTx&export=media', NULL, 'kvI4kxbK8U', 1, '2021-11-04 02:45:34', '2021-11-04 02:45:34'),
('lkmsiEgcmu', 'H', 'H', 'https://drive.google.com/uc?id=1HS831FLR3bz-OsJPRUUbdeTqCctFQXqb&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 10:57:08', '2021-11-01 09:40:47'),
('lpAHPOA8vT', 'TELEPON', 'TELEPHONE', 'https://drive.google.com/uc?id=1lGbbwuO6z2z9CcIZxcjWLse3fNN8FoMP&export=media', 'https://drive.google.com/uc?id=1X3XsD0ofaCOmkwhjE9uGYpAePrW7kVhM&export=media', '4ZMJBI87Ii', 1, '2021-11-04 02:35:30', '2022-06-06 13:46:47'),
('LPAyi5cbMG', 'W', 'W', 'https://drive.google.com/uc?id=1FzvKytq7LIpHjMOvWmIQFNhS2e12YOKx&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 11:04:35', '2021-11-01 07:20:58'),
('LpTrgWykm9', 'LANTAI', 'FLOOR', 'https://drive.google.com/uc?id=1YiuKudzuRkbofq2sH-Z9eMemQB6crMGA&export=media', NULL, 'xRADaFn1It', 1, '2021-11-01 21:26:48', '2021-11-02 20:56:16'),
('LVK67g6Vww', 'TOPI', 'HAT', 'https://drive.google.com/uc?id=1yBbtAeXFCqKrQKMImRV7LvWNjTvYcclX&export=media', NULL, 'e4iJNgm6Ca', 1, '2021-11-01 10:33:31', '2021-11-01 10:33:31'),
('Lzu0EhGWoM', 'AKAR', 'ROOT', 'https://drive.google.com/uc?id=1PuL59Gan0RGeJHS-s67vWme5j3qq6vvE&export=media', NULL, 'LkcMVU9fBL', 1, '2021-11-04 01:46:42', '2021-11-04 01:46:42'),
('m5eSsbcYR8', 'PISAU', 'KNIFE', 'https://drive.google.com/uc?id=1c9vLz9GlRkWOHk3QPgeKvO0vBeLmHzZF&export=media', 'https://drive.google.com/uc?id=1c9vLz9GlRkWOHk3QPgeKvO0vBeLmHzZF&export=media', 'rFh7WiWh1U', 1, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('m7htJ3l8YJ', 'A', 'A', 'https://drive.google.com/uc?id=1gEARu4qt1QZEZ4PZzTxNLBbwOOWw2xVW&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 10:53:57', '2021-11-01 09:31:29'),
('mCOBQO5X6d', 'SEPULUH', 'TEN', 'https://drive.google.com/uc?id=1iFnxwTzGB0lc2S4Kmfcev6S7eFdqUA6B&export=media', NULL, 'lQfg1njp9J', 1, '2021-10-27 11:17:29', '2021-11-01 10:25:42'),
('mfFVW6ouzl', 'LALAT', 'FLY', 'https://drive.google.com/uc?id=1NOA0_w6R9Sv4qRoLzpetDOeuMx0xBFLO&export=media', 'https://drive.google.com/uc?id=1PAz-5n-sKw1vYtkketU1m6kG03tBdPfX&export=media', 'uMq6cenpUS', 1, '2021-11-04 01:45:03', '2022-06-06 14:09:33'),
('MFwfxfJcVK', 'JAGUAR', 'JAGUAR', 'https://drive.google.com/uc?id=1qw1C4bGisx5dwd0N4nUrT24GtCscQXoC&export=media', 'https://drive.google.com/uc?id=1qw1C4bGisx5dwd0N4nUrT24GtCscQXoC&export=media', 'PJIVUyKKsx', 1, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('mH3aEp4IBQ', 'ORANG TUA', 'PARENT', 'https://drive.google.com/uc?id=1KMfbFilf3sFnIQDW6n1qxs7_nhvzEM-O&export=media', 'https://drive.google.com/uc?id=1KMfbFilf3sFnIQDW6n1qxs7_nhvzEM-O&export=media', '904nkyIb9r', 0, '2022-06-05 12:22:48', '2022-06-05 12:22:48'),
('mJCkv2fhTN', 'GIGI', 'TOOTH', 'https://drive.google.com/uc?id=1qx8ZLIEPTOuiju2Y4_yqkQhXtdnWivw5&export=media', 'https://drive.google.com/uc?id=13_SSjdiBTFZ_24b30kp9n0o5oJ90xndv&export=media', 'kd4oos26tl', 0, '2022-06-05 09:20:24', '2022-06-05 09:20:24'),
('mLEOwgmCNc', 'AYAM GORENG', 'FRIED CHICKEN', 'https://drive.google.com/uc?id=1oE53TWc5dEiFX8T9R7E6sXsq1BQFZ1NN&export=media', 'https://drive.google.com/uc?id=1vWH4AuDzqnH99u3IMlXkEDSVbX8jPA9U&export=media', 'UXogDXaamX', 1, '2021-11-02 01:46:42', '2022-06-06 13:33:07'),
('mLzr7wGdbT', 'ANGGUR', 'GRAPE', 'https://drive.google.com/uc?id=1LfhTXdZuqKm3h9os4SWC-S4SmRjIOgsC&export=media', NULL, 'mqGYngDtGa', 1, '2021-11-04 01:58:45', '2021-11-04 01:58:45'),
('MoDLjV5m44', 'NASI', 'RICE', 'https://drive.google.com/uc?id=1Nfn8jToQdS1K-RpyEbmpXlh_qw7JbPqU&export=media', 'https://drive.google.com/uc?id=1Nfn8jToQdS1K-RpyEbmpXlh_qw7JbPqU&export=media', 'UXogDXaamX', 1, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('MS4BebuGmO', 'BULAN', 'MOON', 'https://drive.google.com/uc?id=1BYgNMtdmCUT8Y3G_MZhp-UYC7d8YyRGS&export=media', NULL, 'kvI4kxbK8U', 1, '2021-11-04 02:46:24', '2021-11-04 02:46:24'),
('mTc0FZkdau', 'KERBAU', 'BUFFALO', 'https://drive.google.com/uc?id=1rRTifrFKv_Q6vypbOgsHt35U1qj9PnTH&export=media', 'https://drive.google.com/uc?id=1NNrcatS-hVtZLzpYvZiT-08W1XIhQdE1&export=media', 'ygubUyqQoN', 1, '2021-11-04 01:21:56', '2022-06-06 10:02:25'),
('MXqtiFXoZ3', 'EMPAT', 'FOUR', 'https://drive.google.com/uc?id=1GOg-7B0Zh8gsg1blwGZ561G8LKSYYDfA&export=media', NULL, 'lQfg1njp9J', 1, '2021-10-27 11:15:41', '2021-11-01 10:14:09'),
('mZePjJkHaU', 'BUAH', 'FRUIT', 'https://drive.google.com/uc?id=15AHBBjm9a9nBG5fWkm6pq5SwybRKbUvw&export=media', NULL, 'LkcMVU9fBL', 1, '2021-11-04 01:51:51', '2021-11-04 01:51:51'),
('nFuMb7jplG', 'MACAN TUTUL', 'LEOPARD', 'https://drive.google.com/uc?id=1iY04jc6-DCY1vY_UZ85Mpbc1fgPouqp0&export=media', 'https://drive.google.com/uc?id=18c0dG5QumchyLoQJ61-sB6h7rh94Pa8f&export=media', 'ygubUyqQoN', 1, '2021-11-02 01:55:28', '2022-06-06 09:52:42'),
('NOmW4yTlcu', 'TENTARA', 'SOLDIER', 'https://drive.google.com/uc?id=1kuBrmCEd-7eOjcr9mA-_sssWDcxqfKUL&export=media', NULL, '9PMo2pGpX6', 1, '2021-11-04 02:21:35', '2021-11-04 02:21:35'),
('NRSL4GUPCl', 'SEPEDA', 'BICYCLE', 'https://drive.google.com/uc?id=19wpOuFwhKQQCA_dUNjfw0x2rd7rnRaV2&export=media', NULL, 'xsF19TMhoZ', 1, '2021-11-04 02:14:09', '2021-11-04 02:14:09'),
('NuNCiByICl', 'ANJING', 'DOG', 'https://drive.google.com/uc?id=1_Q-R4ir3_1xWrFT_UMH324jDNtTw6gnb&export=media', 'https://drive.google.com/uc?id=1KLYhJIdgsIs4FcnHjWOrHKUNzmM_dG9b&export=media', 'Kx3nrVcSeN', 0, '2021-11-04 01:33:40', '2022-06-06 10:02:52'),
('O9bRrjU8oS', 'KAMAR TIDUR', 'BEDROOM', 'https://drive.google.com/uc?id=15lgJiT-gCcTYPYan08u_e-sOmL-ideLP&export=media', NULL, 'xRADaFn1It', 1, '2021-11-01 21:36:02', '2021-11-02 21:08:37'),
('oDhlez4jIS', 'UNTA', 'CAMEL', 'https://drive.google.com/uc?id=1PXzMhaVirI0Jysy8Bfiohn3Nr3T4FiIK&export=media', 'https://drive.google.com/uc?id=1E9gE-ZzVkPBAZR1Z3LIXxgHnURAThjs1&export=media', 'ygubUyqQoN', 1, '2021-11-02 22:03:48', '2022-06-06 09:51:20'),
('oEr5fITowZ', 'ANAK LAKI LAKI', 'BOY', 'https://drive.google.com/uc?id=1XySWfuNNzjAs1k4BKi8eVenANhQvuqUg&export=media', 'https://drive.google.com/uc?id=1XySWfuNNzjAs1k4BKi8eVenANhQvuqUg&export=media', '904nkyIb9r', 1, '2022-06-05 12:22:48', '2022-06-05 12:22:48'),
('ofncSdSQze', 'PANTAI', 'BEACH', 'https://drive.google.com/uc?id=1frYllz55l6MmHmr18JG8TnAx9pnBf60g&export=media', NULL, 'jsDsCkdOPZ', 1, '2021-11-04 02:08:35', '2021-11-04 02:08:35'),
('oHI28qPslG', 'L', 'L', 'https://drive.google.com/uc?id=1Ni91kvh6Y_8_nphsDzokx5Y69h29uKQY&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 11:03:07', '2021-11-01 09:09:20'),
('OIcDtdb9ha', 'HAMSTER', 'HAMSTER', 'https://drive.google.com/uc?id=1eCfvIF6pp2H9kO6J_mPeKtCmxaVDbh6D&export=media', 'https://drive.google.com/uc?id=1eCfvIF6pp2H9kO6J_mPeKtCmxaVDbh6D&export=media', 'PJIVUyKKsx', 1, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('oiPgOf4pgI', 'DESA', 'VILLAGE', 'https://drive.google.com/uc?id=10RI0EHHLzbs6JKfLJjig9rRYxnnrc7eN&export=media', NULL, 'xaUv9NLBUB', 1, '2021-11-04 02:41:04', '2021-11-04 02:41:04'),
('OsRRP31KSL', 'KALAJENGKING', 'SCORPION', 'https://drive.google.com/uc?id=1qVSX694QT3pJ-csutTT1TPh0TLES59Cs&export=media', 'https://drive.google.com/uc?id=1qVSX694QT3pJ-csutTT1TPh0TLES59Cs&export=media', 'PJIVUyKKsx', 1, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('OU8IKppf74', 'RUANG KELUARGA', 'LIVING ROOM', 'https://drive.google.com/uc?id=1K9N4iuFf93Momj9CGAyDAdi77DXoY0fB&export=media', NULL, 'xRADaFn1It', 1, '2021-11-01 21:34:14', '2021-11-02 21:01:29'),
('OWaeROg4ck', 'SARUNG TANGAN', 'GLOVES', 'https://drive.google.com/uc?id=1w0st_PfcY94g29lVDCXDE0Q7a4eMc5am&export=media', 'https://drive.google.com/uc?id=1w0st_PfcY94g29lVDCXDE0Q7a4eMc5am&export=media', 'UlSaRWh3E1', 1, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('OY7mxSenfk', 'TELUR DADAR', 'OMELETTE', 'https://drive.google.com/uc?id=1dCbnLGILacUdKunVYNfyzxz094DVpLc2&export=media', 'https://drive.google.com/uc?id=1dCbnLGILacUdKunVYNfyzxz094DVpLc2&export=media', 'UXogDXaamX', 1, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('P32Lww6dtJ', 'TSUNAMI', 'TSUNAMI', 'https://drive.google.com/uc?id=1nFvFAEDR-FFgv4bxNdl3H1e7Y2khgLQX&export=media', 'https://drive.google.com/uc?id=12MwPHqyPwdw2jjcr7s9co42VTL2HgrEH&export=media', 'ZR8Oom877B', 1, '2021-11-04 09:03:38', '2022-06-06 14:28:47'),
('P6z6xOwFSx', 'ANAK ANAK', 'CHILDREN', 'https://drive.google.com/uc?id=1JCtAuF_1bq9M8-xvnWvGX6eU7sXLaJzf&export=media', 'https://drive.google.com/uc?id=1JCtAuF_1bq9M8-xvnWvGX6eU7sXLaJzf&export=media', '904nkyIb9r', 1, '2022-06-05 12:22:48', '2022-06-05 12:22:48'),
('P90JBJTvO5', 'RAMBUT', 'HAIR', 'https://drive.google.com/uc?id=1m7vuqLCILbwXBfBPVndARt7SL7GigQ8k&export=media', 'https://drive.google.com/uc?id=1u1I7dBWnAb-HVMdKIHVbxILVrnTSX15L&export=media', 'kd4oos26tl', 1, '2021-10-27 10:51:40', '2022-06-05 09:16:58'),
('pCk3a12RpC', 'T', 'T', 'https://drive.google.com/uc?id=1Tr2juLjUwhRSkbz0kKsMNFlenPEipewn&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 10:59:50', '2021-11-01 09:23:33'),
('PgFiASeATt', 'RUBAH', 'FOX', 'https://drive.google.com/uc?id=1wZmG4jRO4CDPa0SLgkhKs5NpRiqopSsJ&export=media', 'https://drive.google.com/uc?id=1wZmG4jRO4CDPa0SLgkhKs5NpRiqopSsJ&export=media', 'PJIVUyKKsx', 1, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('pkDMHMhV47', 'KERETA API', 'TRAIN', 'https://drive.google.com/uc?id=12LBOg2saX9zyk0OkKpiud14nhdy20Gy8&export=media', NULL, 'xsF19TMhoZ', 1, '2021-11-04 02:15:22', '2021-11-04 02:15:22'),
('plkXtpAfgA', 'KELEDAI', 'DONKEY', 'https://drive.google.com/uc?id=19Tp69_ADMgnqGbWgfPMTbtb5fkVs4YdO&export=media', 'https://drive.google.com/uc?id=19Tp69_ADMgnqGbWgfPMTbtb5fkVs4YdO&export=media', 'PJIVUyKKsx', 0, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('pqsDWNmqf0', 'B', 'B', 'https://drive.google.com/uc?id=1rPWl2GwFpSjHIfXaE4MKr24hpmQhQh1P&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 10:54:25', '2021-11-01 09:32:35'),
('pwFkPECIt2', 'DUA', 'TWO', 'https://drive.google.com/uc?id=1sisij66iLrzavK7PW9GEsJTbW4ZnM6np&export=media', NULL, 'lQfg1njp9J', 1, '2021-10-27 11:15:07', '2021-11-01 10:08:54'),
('pYhF9I1CNt', 'KELAPA', 'COCONUT', 'https://drive.google.com/uc?id=1CmFbcPaVuuutrMrBPkxnuAf-1txhqLkl&export=media', NULL, 'mqGYngDtGa', 1, '2021-11-04 02:03:17', '2021-11-04 02:03:17'),
('pYoRAvuWdD', 'ATAP', 'ROOF', 'https://drive.google.com/uc?id=1CPRS-A8Pv2Ov7UNmdvXds8xFsvdGBTyB&export=media', NULL, 'xRADaFn1It', 1, '2021-11-01 21:32:24', '2021-11-02 20:59:31'),
('q5tbcaHT9d', 'ROK', 'SKIRT', 'https://drive.google.com/uc?id=1YAxFukvmYT_hqXIXkRjo7JdfEbGItw8w&export=media', 'https://drive.google.com/uc?id=1YAxFukvmYT_hqXIXkRjo7JdfEbGItw8w&export=media', 'UlSaRWh3E1', 0, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('qaeFH8z2qT', 'SYAL', 'SCRAF', 'https://drive.google.com/uc?id=1kkYlZYsYyG6rldZAPUF7amAN_zaE9d9y&export=media', 'https://drive.google.com/uc?id=1kkYlZYsYyG6rldZAPUF7amAN_zaE9d9y&export=media', 'UlSaRWh3E1', 1, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('QAmiUgutOK', 'BUKU', 'BOOK', 'https://drive.google.com/uc?id=1m_AZO0Os7rDlSZt1Ko_36g9dQwWUjKOs&export=media', NULL, 'e4iJNgm6Ca', 1, '2021-11-01 10:35:29', '2021-11-01 10:35:29'),
('Qb8Iu8HoLZ', 'BERMAIN SKATEBOARD', 'SKATEBOARDING', 'https://drive.google.com/uc?id=1bUZDd3PVYcqtDu1yXSARV_myTmKNLI5L&export=media', 'https://drive.google.com/uc?id=1bUZDd3PVYcqtDu1yXSARV_myTmKNLI5L&export=media', 'SdGMT5fJGF', 0, '2022-06-05 12:22:48', '2022-06-05 12:22:48'),
('Qcb8uziFlx', 'BUMI', 'EARTH', 'https://drive.google.com/uc?id=1W-D6unfrvvTtaHHNHojFqTIFjVrOoFVK&export=media', NULL, 'G4bbWyjO99', 1, '2021-11-04 02:52:46', '2021-11-04 02:52:46');
INSERT INTO `courses` (`id`, `indonesia_text`, `english_text`, `image`, `image_course`, `sub_category_id`, `is_voice`, `created_at`, `updated_at`) VALUES
('QIPsAy9pea', 'GEMPA BUMI', 'EARTHQUAKE', 'https://drive.google.com/uc?id=1spvkcscKg26D7FxLB-yp72bEWqoSTWVy&export=media', 'https://drive.google.com/uc?id=1amSQ6losYWlwK2bTnukTTHxkkVpYWtE2&export=media', 'ZR8Oom877B', 0, '2022-06-06 14:32:02', '2022-06-06 14:32:02'),
('qKuCGjqaa1', 'BADAI', 'STORM', 'https://drive.google.com/uc?id=1o24oqSyrcFSangJUuC6ty4rDMkr3u5eI&export=media', 'https://drive.google.com/uc?id=1qktfk0cnqwg6INt1OnxE7xGiaoWGKVlr&export=media', 'ZR8Oom877B', 0, '2022-06-06 14:31:23', '2022-06-06 14:31:23'),
('qLwLkg3CKu', 'AYAM', 'CHICKEN', 'https://drive.google.com/uc?id=1glOLxm3pqsxr1dvCL3MyKfRvn-9nNxg_&export=media', 'https://drive.google.com/uc?id=1glOLxm3pqsxr1dvCL3MyKfRvn-9nNxg_&export=media', 'PJIVUyKKsx', 1, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('QqnmIxA9V1', 'BEDUG', 'DRUM', 'https://drive.google.com/uc?id=19Bz0MzKnFS-uSnp4-EW432jDmACndeC6&export=media', 'https://drive.google.com/uc?id=1MSpqoRI8OQbyHpdMXDUOBFJZvRJ_eQDu&export=media', '4ZMJBI87Ii', 0, '2021-11-04 09:10:29', '2022-06-06 13:47:10'),
('qwMucZVCbB', 'GORILA', 'GORILLA', 'https://drive.google.com/uc?id=1Dht_VbrNXWCpnDDL-r8cKou7zqpqQdGB&export=media', 'https://drive.google.com/uc?id=1Dht_VbrNXWCpnDDL-r8cKou7zqpqQdGB&export=media', 'PJIVUyKKsx', 1, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('QZpFM1eho3', 'MONYET', 'MONKEY', 'https://drive.google.com/uc?id=1khGhUhnFEWR45CDz3qHYiAKQ94zddZGR&export=media', 'https://drive.google.com/uc?id=16wargxXwsL52hYykos69xACVVgEo48eW&export=media', 'ygubUyqQoN', 1, '2021-11-02 01:54:12', '2022-06-06 09:53:27'),
('r9CRODzuJm', 'KUDA', 'HORSE', 'https://drive.google.com/uc?id=17sZmtXiSglFFrF3fnjmhVROM20143YPM&export=media', 'https://drive.google.com/uc?id=17KXPLfnuXg8wc45wctLMxkSt8i3eB2iQ&export=media', 'Kx3nrVcSeN', 1, '2021-11-04 01:22:56', '2022-06-06 10:04:04'),
('ral1OmVDf8', 'MEMBACA', 'READING', 'https://drive.google.com/uc?id=1OzHwAKoUl8IyP2zEbnvQDuEH1NSc-ktX&export=media', 'https://drive.google.com/uc?id=1OzHwAKoUl8IyP2zEbnvQDuEH1NSc-ktX&export=media', 'SdGMT5fJGF', 0, '2022-06-05 12:22:48', '2022-06-05 12:22:48'),
('RbRPlp5PT3', 'ROTI', 'BREAD', 'https://drive.google.com/uc?id=1s5W5kQLIhinl656bWB4at1ZQZqq9x8d3&export=media', 'https://drive.google.com/uc?id=1s5W5kQLIhinl656bWB4at1ZQZqq9x8d3&export=media', 'UXogDXaamX', 0, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('rCRoZ4UiCQ', 'SEKOLAH', 'SCHOOL', 'https://drive.google.com/uc?id=1OWohpe-3_fA4MfyJpmx0yfDDm4tQX7sd&export=media', NULL, 'Uv1CjrXSOF', 1, '2021-11-04 08:54:51', '2021-11-04 08:54:51'),
('RlUcCkRRXU', 'BERENANG', 'SWIMMING', 'https://drive.google.com/uc?id=1pLIIcjNhUa1qRE9Q_-JhSYwz7hOeYQ5Q&export=media', 'https://drive.google.com/uc?id=1pLIIcjNhUa1qRE9Q_-JhSYwz7hOeYQ5Q&export=media', 'SdGMT5fJGF', 1, '2022-06-05 12:22:48', '2022-06-05 12:22:48'),
('rPZrSJM0ff', 'AYAM', 'CHICKEN', 'https://drive.google.com/uc?id=1XYsCOpL53pnGDb6fs12jToMfpOR6d7S3&export=media', 'https://drive.google.com/uc?id=1xjELuDfBYbGP-E4bTpOh6DjuDtgXr7Pn&export=media', 'Kx3nrVcSeN', 1, '2021-11-04 01:24:05', '2022-06-06 10:04:37'),
('rtVXXryMpt', 'PELANGI', 'RAINBOW', 'https://drive.google.com/uc?id=1iNHzNcvzpyh68zC12KGtovusWwTqr1Ny&export=media', NULL, 'kvI4kxbK8U', 1, '2021-11-04 02:47:37', '2021-11-04 02:47:37'),
('s4aZ5tjb2i', 'KAOS', 'SHIRT', 'https://drive.google.com/uc?id=1qEJ1V64cBRqnBXU4DPYvpPy-Crn4oiES&export=media', 'https://drive.google.com/uc?id=1qEJ1V64cBRqnBXU4DPYvpPy-Crn4oiES&export=media', 'UlSaRWh3E1', 0, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('SAZNIeFQxG', 'SURAT', 'LETTER', 'https://drive.google.com/uc?id=1fxiG9n9Fm8TRMw8l16Il2qwRzwdEO2X7&export=media', 'https://drive.google.com/uc?id=1dEtooip7y8D7Y8ZEJphkVJBktgRmpk2A&export=media', '4ZMJBI87Ii', 1, '2021-11-04 09:07:10', '2022-06-06 13:47:32'),
('Sb6oswoHIW', 'LUKISAN', 'PICTURE', 'https://drive.google.com/uc?id=1OQJRjdfhdaLMJJlqBiZrD8bQ9HR2VQwm&export=media', 'https://drive.google.com/uc?id=1OQJRjdfhdaLMJJlqBiZrD8bQ9HR2VQwm&export=media', 'rFh7WiWh1U', 1, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('sHtSyovQ62', 'HUJAN METEOR', 'METEOR RAIN', 'https://drive.google.com/uc?id=1zPGYR7hDwbrYDpErNucjZ5mp83sPITME&export=media', 'https://drive.google.com/uc?id=1LwYAMNXIDCoJeYVlJX9sSN7FSBfXBgzN&export=media', 'ZR8Oom877B', 0, '2022-06-06 14:30:15', '2022-06-06 14:30:15'),
('Sj5JraL5ip', 'IKAT PINGGANG', 'BELT', 'https://drive.google.com/uc?id=18sj3AxpbHKbFrcRxkD5eytWVTBbTZUTP&export=media', NULL, 'e4iJNgm6Ca', 1, '2021-11-01 10:34:41', '2021-11-01 10:34:41'),
('SM5oLGzJBC', 'SEPAK BOLA', 'FOOTBALL', 'https://drive.google.com/uc?id=1LoqcKbHw42yy1KQ5YkfYIg9iVhVs0rhh&export=media', 'https://drive.google.com/uc?id=1LoqcKbHw42yy1KQ5YkfYIg9iVhVs0rhh&export=media', 'SdGMT5fJGF', 1, '2022-06-05 12:22:48', '2022-06-05 12:22:48'),
('SN5LYRQ2po', 'SENDAL JEPIT', 'SLIPPERS', 'https://drive.google.com/uc?id=1AB9D93UdGPYi37yMnUWaUzkZa3Dqw3Ez&export=media', 'https://drive.google.com/uc?id=1AB9D93UdGPYi37yMnUWaUzkZa3Dqw3Ez&export=media', 'UlSaRWh3E1', 1, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('sSdPzUqy66', 'BAYI', 'BABY', 'https://drive.google.com/uc?id=171kggozUt-M7xoZUX3f7t_jdKNnUbJVA&export=media', 'https://drive.google.com/uc?id=171kggozUt-M7xoZUX3f7t_jdKNnUbJVA&export=media', '904nkyIb9r', 1, '2022-06-05 12:22:48', '2022-06-05 12:22:48'),
('sT1rMgjijL', 'BEBEK', 'DUCK', 'https://drive.google.com/uc?id=16ZmZGkaEbqjyBMChyydSabNKHwbpuQHK&export=media', 'https://drive.google.com/uc?id=16ZmZGkaEbqjyBMChyydSabNKHwbpuQHK&export=media', 'PJIVUyKKsx', 0, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('sVP6eQCncX', 'PENANAK NASI', 'RICE COOKER', 'https://drive.google.com/uc?id=1QKNT7tsfd-R_GZr-i0WCEk0spoRMhYcX&export=media', 'https://drive.google.com/uc?id=1QKNT7tsfd-R_GZr-i0WCEk0spoRMhYcX&export=media', 'rFh7WiWh1U', 1, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('SxHi1yrOpz', 'BERNYANYI', 'SINGING', 'https://drive.google.com/uc?id=1n6f1MV6pF-PgK7GNtUnSBCK9DSU6bMst&export=media', 'https://drive.google.com/uc?id=1n6f1MV6pF-PgK7GNtUnSBCK9DSU6bMst&export=media', 'SdGMT5fJGF', 1, '2022-06-05 12:22:48', '2022-06-05 12:22:48'),
('SXJUATKlK0', 'ALMARI', 'CUPBOARD', 'https://drive.google.com/uc?id=1YuVYi3uZHB2XM85j0CpA6_qtM1Iabr50&export=media', 'https://drive.google.com/uc?id=1YuVYi3uZHB2XM85j0CpA6_qtM1Iabr50&export=media', 'rFh7WiWh1U', 0, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('SYaJ6eQ0QW', 'PENGGARIS', 'RULER', 'https://drive.google.com/uc?id=1aYxuLXtU5QgaO75R9J2_7iY-qsWAxnlo&export=media', NULL, 'e4iJNgm6Ca', 1, '2021-11-01 10:37:35', '2021-11-01 10:37:35'),
('T9BZQxMPUv', 'F', 'F', 'https://drive.google.com/uc?id=1mY4szkYbX9xh8_v1xIQ7JKx5VnNJCcFW&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 10:56:18', '2021-11-01 09:39:00'),
('tAMPjMEkjQ', 'MEJA', 'TABLE', 'https://drive.google.com/uc?id=1IT9W_gZKJM8RCBf-DK1e29bjBfGEjpra&export=media', 'https://drive.google.com/uc?id=1IT9W_gZKJM8RCBf-DK1e29bjBfGEjpra&export=media', 'rFh7WiWh1U', 1, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('TAXF5bBXnh', 'NEGARA', 'COUNTRY', 'https://drive.google.com/uc?id=1Qr8BAuiRI2AuHsNhXLsW5vAq3dCcUQZb&export=media', NULL, 'xaUv9NLBUB', 1, '2021-11-04 02:37:36', '2021-11-04 02:37:36'),
('TByWZQucKq', 'DAPUR', 'KITCHEN', 'https://drive.google.com/uc?id=1DTgASEiBY-YErz16j8isTLFUwhyEl2Sd&export=media', 'https://drive.google.com/uc?id=1DTgASEiBY-YErz16j8isTLFUwhyEl2Sd&export=media', 'rFh7WiWh1U', 1, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('TkhP2wMwSj', 'KRAYON', 'CRAYON', 'https://drive.google.com/uc?id=136HIt0NE2ER2Xmf-UTbG_wpBsEDUwNyT&export=media', NULL, 'e4iJNgm6Ca', 1, '2021-11-01 10:40:32', '2021-11-01 10:40:32'),
('TrzVPUfx6N', 'KAMAR MANDI', 'BATH ROOM', 'https://drive.google.com/uc?id=1FcJ2cTktM_dqB5J4TOLPu-EkGtXgksfJ&export=media', 'https://drive.google.com/uc?id=1FcJ2cTktM_dqB5J4TOLPu-EkGtXgksfJ&export=media', 'rFh7WiWh1U', 0, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('TwnsGwRz6l', 'MENJAHIT', 'SEWING', 'https://drive.google.com/uc?id=1jZ3YhnrZyGxO1F-GXoZkdM9Bg6FSUSbv&export=media', 'https://drive.google.com/uc?id=1jZ3YhnrZyGxO1F-GXoZkdM9Bg6FSUSbv&export=media', 'SdGMT5fJGF', 0, '2022-06-05 12:22:48', '2022-06-05 12:22:48'),
('U0Zo4eChAb', 'NENEK', 'GRAND MOTHER', 'https://drive.google.com/uc?id=1gMtEPUxUcQSLXUoDZTVmmh6Ml8GzIWpz&export=media', 'https://drive.google.com/uc?id=1gMtEPUxUcQSLXUoDZTVmmh6Ml8GzIWpz&export=media', '904nkyIb9r', 1, '2022-06-05 12:22:48', '2022-06-05 12:22:48'),
('u4nMqUaJCh', 'MEMANCING', 'FISHING', 'https://drive.google.com/uc?id=1ZZJw-zRH8M9779vlJzX9an8iIFE-22T9&export=media', 'https://drive.google.com/uc?id=1ZZJw-zRH8M9779vlJzX9an8iIFE-22T9&export=media', 'SdGMT5fJGF', 1, '2022-06-05 12:22:48', '2022-06-05 12:22:48'),
('Uk5ENWl9qx', 'SEPATU BOOT', 'BOOTS', 'https://drive.google.com/uc?id=1L3Pt5ljnuYxQlGRMqZe0aA_RIXJgNMdf&export=media', 'https://drive.google.com/uc?id=1L3Pt5ljnuYxQlGRMqZe0aA_RIXJgNMdf&export=media', 'UlSaRWh3E1', 0, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('uMmdCXZ4Dh', 'BADAI SALJU', 'SNOWSTORM', 'https://drive.google.com/uc?id=169AgLYaXQQ6eMmhngzvxHQaRSZ6RyFMa&export=media', 'https://drive.google.com/uc?id=11kwFDCZqYIqJwm2hxuOSzbuqo1M2ldbU&export=media', 'ZR8Oom877B', 0, '2022-06-06 14:30:57', '2022-06-06 14:30:57'),
('uRmNUT3TCC', 'BAKSO', 'MEATBALL', 'https://drive.google.com/uc?id=1Nin4BEXC4e1aHDQqTzb9dgfZ0lhjMJBG&export=media', 'https://drive.google.com/uc?id=1xwl5fWaqsAdqSSrOqtLw73Vt0T1UuN2R&export=media', 'UXogDXaamX', 1, '2021-11-02 01:50:08', '2022-06-06 13:33:55'),
('uvEvebxZx1', 'MANTEL HUJAN', 'RAINCOAT', 'https://drive.google.com/uc?id=1QQwWJtyVVQyc7NyhpZAE7YD1WGVpZlDk&export=media', 'https://drive.google.com/uc?id=1QQwWJtyVVQyc7NyhpZAE7YD1WGVpZlDk&export=media', 'UlSaRWh3E1', 1, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('uW2JOlBHAe', 'Z', 'Z', 'https://drive.google.com/uc?id=1zdZ1Xil1HF0MtgeujEu3-76_zwhvo-Vq&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 11:05:12', '2021-11-01 06:59:20'),
('uWP2ANwBBx', 'JUS JERUK', 'ORANGE JUICE', 'https://drive.google.com/uc?id=1pv_6J5lgXZZY3LUCLDuL12GWP5ermFe5&export=media', 'https://drive.google.com/uc?id=1pv_6J5lgXZZY3LUCLDuL12GWP5ermFe5&export=media', 'ZAhwOpkkWh', 1, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('V81rpqGviK', 'KUCING', 'CAT', 'https://drive.google.com/uc?id=11Jt8KkZyCDb47obHMi2aG7Co_9izDUgf&export=media', 'https://drive.google.com/uc?id=1-BFngMC3VSZbtj8_1pp-oKC7IKa5r4Oh&export=media', 'Kx3nrVcSeN', 0, '2021-11-04 01:32:39', '2022-06-06 10:05:10'),
('Vdhs5csvm8', 'BENDERA', 'FLAG', 'https://drive.google.com/uc?id=1ivqxO4eXAPnXk2qD-Es2vgd9QoWC2nYd&export=media', NULL, 'xaUv9NLBUB', 1, '2021-11-04 02:43:11', '2021-11-04 02:43:11'),
('vfVN6DgsLK', 'MACAN', 'TIGER', 'https://drive.google.com/uc?id=1E27awPW3vNK9vYojbhMOK7cyxkOhEs5_&export=media', 'https://drive.google.com/uc?id=1E27awPW3vNK9vYojbhMOK7cyxkOhEs5_&export=media', 'PJIVUyKKsx', 1, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('vkYY8kQHKc', 'PERMEN', 'CANDY', 'https://drive.google.com/uc?id=18nTLcKOlIE5vCIEATlYz4UXPKERBnoZy&export=media', 'https://drive.google.com/uc?id=18nTLcKOlIE5vCIEATlYz4UXPKERBnoZy&export=media', 'UXogDXaamX', 1, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('vofIxz3zWc', 'BUMI', 'EARTH', 'https://drive.google.com/uc?id=1QjSGdMuQb006vkc2sXUZMhqd1FWnX8yW&export=media', NULL, 'kvI4kxbK8U', 1, '2021-11-04 02:49:33', '2021-11-04 02:49:33'),
('voq4BOGri1', 'SAPU', 'BROOM', 'https://drive.google.com/uc?id=1NiJn_HOD56oQLTBwz_hb4a2CP_f6_ZYR&export=media', 'https://drive.google.com/uc?id=1NiJn_HOD56oQLTBwz_hb4a2CP_f6_ZYR&export=media', 'rFh7WiWh1U', 0, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('VOxlbP7QNq', 'KEPALA', 'HEAD', 'https://drive.google.com/uc?id=1vWwyE9ASOidBGPyaGL0TNvK2X-Vcl-dc&export=media', 'https://drive.google.com/uc?id=1Wqsj4KMC56JvY8Vla3Q2AVRt3600cI-U&export=media', 'kd4oos26tl', 0, '2021-10-27 10:51:11', '2022-06-05 09:17:27'),
('Vq9Twug6o7', 'APEL', 'APPLE', 'https://drive.google.com/uc?id=1PUTMh8w2jQGLOvy56KDjo6ilFl2iLVb6&export=media', NULL, 'mqGYngDtGa', 1, '2021-11-04 01:53:07', '2021-11-04 01:53:07'),
('VSLqnLutTK', 'JERUK', 'ORANGE', 'https://drive.google.com/uc?id=1v90Gre1f8yq6FqXvKMQQpBnfh06GkVdK&export=media', NULL, 'mqGYngDtGa', 1, '2021-11-04 01:54:26', '2021-11-04 01:54:26'),
('vsmLakoHW3', 'SIKAT GIGI', 'TOOTH BRUSH', 'https://drive.google.com/uc?id=1YLxdYahw_Xj3breSkN7AuJ-jyqvmk3j6&export=media', 'https://drive.google.com/uc?id=1YLxdYahw_Xj3breSkN7AuJ-jyqvmk3j6&export=media', 'rFh7WiWh1U', 0, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('vt9zfmTtB5', 'RUMAH SAKIT', 'HOSPITAL', 'https://drive.google.com/uc?id=11tUxeClENPkWEq5nbyCQuvfzcCZ89iK_&export=media', NULL, 'Uv1CjrXSOF', 1, '2021-11-04 08:55:54', '2021-11-04 08:55:54'),
('VVuWIzepmW', 'ES KRIM', 'ICE CREAM', 'https://drive.google.com/uc?id=1W63sTPvIaxhuJ2l5zDpAgjqrFCEft2UC&export=media', 'https://drive.google.com/uc?id=1W63sTPvIaxhuJ2l5zDpAgjqrFCEft2UC&export=media', 'ZAhwOpkkWh', 1, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('VYLjdFCr9h', 'JERAPAH', 'GIRAFFE', 'https://drive.google.com/uc?id=1dTIBnZYkCYqdyMfWfeX_EwYnjvCyFV0M&export=media', 'https://drive.google.com/uc?id=1dTIBnZYkCYqdyMfWfeX_EwYnjvCyFV0M&export=media', 'PJIVUyKKsx', 1, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('w45LirqUDc', 'TELUR', 'EGG', 'https://drive.google.com/uc?id=1JPl63TZDGCD991Y_OG4LDsQpL3zMWMd6&export=media', 'https://drive.google.com/uc?id=1JPl63TZDGCD991Y_OG4LDsQpL3zMWMd6&export=media', 'UXogDXaamX', 0, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('WAQaMl0NjA', 'KAKEK', 'GRAND FATHER', 'https://drive.google.com/uc?id=1hn5q8XK8Qk4xywPC8CrqYHiSWiSS0TSP&export=media', 'https://drive.google.com/uc?id=1hn5q8XK8Qk4xywPC8CrqYHiSWiSS0TSP&export=media', '904nkyIb9r', 0, '2022-06-05 12:22:48', '2022-06-05 12:22:48'),
('wdWbGl6Yql', 'KAOS KAKI', 'SHOCK', 'https://drive.google.com/uc?id=1W6g5FdE5ocWNS7QPz02lzwPBhdpk90MV&export=media', NULL, 'e4iJNgm6Ca', 1, '2021-11-01 10:32:37', '2021-11-01 10:32:37'),
('WhO73zidGJ', 'ANJING', 'DOG', 'https://drive.google.com/uc?id=1JbxoZwJ24DheFWgaxERUcTnIlM32UxEQ&export=media', 'https://drive.google.com/uc?id=1JbxoZwJ24DheFWgaxERUcTnIlM32UxEQ&export=media', 'PJIVUyKKsx', 1, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('WjoTKcy55E', 'SEMUT', 'ANT', 'https://drive.google.com/uc?id=1otpoaOFEIaJrlbNb1QQml69hWvfswPyy&export=media', 'https://drive.google.com/uc?id=1slUrgGtY-FJdpPRX9E75mds7ag-g6LHp&export=media', 'uMq6cenpUS', 0, '2021-11-04 01:35:45', '2022-06-06 14:09:53'),
('WkYDfsgTdh', 'MIE', 'NOODLE', 'https://drive.google.com/uc?id=1vJZIRSbBjxIeDT9XIl65f2_dseRZEQCr&export=media', 'https://drive.google.com/uc?id=12pWaxSINiEC8dxaZWnaedxu0DguF7DbU&export=media', 'UXogDXaamX', 1, '2021-11-02 01:52:26', '2022-06-06 13:35:19'),
('Wso4WhHJAV', 'PANDA', 'PANDA', 'https://drive.google.com/uc?id=1XHUynCRsrc8AlftiasfM7M3Az5zr-As_&export=media', 'https://drive.google.com/uc?id=1XHUynCRsrc8AlftiasfM7M3Az5zr-As_&export=media', 'PJIVUyKKsx', 1, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('wVFCAYvu1t', 'VAS BUNGA', 'VASE', 'https://drive.google.com/uc?id=1kQtFcFz5UFQKlFHXgfAr9xBbNbQQ8wsA&export=media', 'https://drive.google.com/uc?id=1kQtFcFz5UFQKlFHXgfAr9xBbNbQQ8wsA&export=media', 'rFh7WiWh1U', 0, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('WYojyaU9V0', 'JUS STROBERI', 'STRAWBERRY JUICE ', 'https://drive.google.com/uc?id=1iTuSz-t5BgqoJfXKjj_mCp7zABKHtvUz&export=media', 'https://drive.google.com/uc?id=1iTuSz-t5BgqoJfXKjj_mCp7zABKHtvUz&export=media', 'ZAhwOpkkWh', 0, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('x3QtS9uzZj', 'CAPUNG', 'DRAGONFLY', 'https://drive.google.com/uc?id=1b3r4VVKF3f0SLb1DsFlwhwLAfHJDif5f&export=media', 'https://drive.google.com/uc?id=1cUi3qUWiM2YDN9fpyedP-acbH1jLOUIS&export=media', 'uMq6cenpUS', 1, '2022-06-06 14:12:21', '2022-06-06 14:12:21'),
('x4cT6NUkuI', 'BABI', 'PIG', 'https://drive.google.com/uc?id=1CZd2ASg6U7IacovsMlOS2lXKqSAu7rhW&export=media', 'https://drive.google.com/uc?id=1CxO_4hBIT_qNxn6BzluKcdFQNQlYyX3l&export=media', 'Kx3nrVcSeN', 0, '2021-11-04 01:19:35', '2022-06-06 10:05:33'),
('xcYWfJV84E', 'LABA LABA', 'SPIDER', 'https://drive.google.com/uc?id=1-Dytw7DkjUF8fP8CJD_eEMrJnqjnPbXh&export=media', 'https://drive.google.com/uc?id=1knSeqlCKbjvoqcS-BhHDvxtnWJxZcIv3&export=media', 'uMq6cenpUS', 1, '2021-11-04 01:44:04', '2022-06-06 14:10:17'),
('xF6Xnna8SN', 'PULAU', 'ISLAND', 'https://drive.google.com/uc?id=1R5RwLdDm6ky0hvKqevr4W13-NmApAg7k&export=media', NULL, 'xaUv9NLBUB', 1, '2021-11-04 02:42:09', '2021-11-04 02:42:09'),
('xGHI66dbxz', 'LEBAH', 'BEE', 'https://drive.google.com/uc?id=1_lFlzn0BSeSBY2QoaxQ95eqEmT_iyVT9&export=media', 'https://drive.google.com/uc?id=1zS8HlQK_gkucvgvQ67mWQnUrgVZXpeYL&export=media', 'uMq6cenpUS', 0, '2021-11-04 01:38:35', '2022-06-06 14:10:40'),
('xjPOwlXKW4', 'TAMAN BERMAIN', 'PLAY GROUND', 'https://drive.google.com/uc?id=1m51kBniEPqReTzYYNOjccAsKQSx7kIWi&export=media', NULL, 'jsDsCkdOPZ', 1, '2021-11-04 02:06:51', '2021-11-04 02:06:51'),
('xkV8hOBEmh', 'POLISI', 'POLICE', 'https://drive.google.com/uc?id=10XvzhlZ1m1tanhPCjJrKQDhm3gB6J-h1&export=media', NULL, '9PMo2pGpX6', 1, '2021-11-04 02:22:36', '2021-11-04 02:22:36'),
('xmxTvgXwHB', 'MARS', 'MARS', 'https://drive.google.com/uc?id=18UtgIKvzMPmYCqhiWf0MMTLdndHWvFmK&export=media', NULL, 'G4bbWyjO99', 1, '2021-11-04 02:53:51', '2021-11-04 02:53:51'),
('xsuB70vtRM', 'BERKEBUN', 'GARDENING', 'https://drive.google.com/uc?id=1T7ZGfN0wFnYf-5iSsA2pedzZKzOoOgSK&export=media', 'https://drive.google.com/uc?id=1T7ZGfN0wFnYf-5iSsA2pedzZKzOoOgSK&export=media', 'SdGMT5fJGF', 1, '2022-06-05 12:22:48', '2022-06-05 12:22:48'),
('xU6P2Qw3QV', 'LEHER', 'NECK', 'https://drive.google.com/uc?id=1TreLb9_20vlDyH3oZ0PKaf1uIvLVED72&export=media', 'https://drive.google.com/uc?id=1rOetvusWNNoC7ai_Kxh4V6HZznHy2ntN&export=media', 'kd4oos26tl', 1, '2022-06-05 09:19:14', '2022-06-05 09:19:14'),
('xzhO1clUBz', 'KUE KERING', 'COOKIE', 'https://drive.google.com/uc?id=1U5wyVIQ-fh_SjUbXO5OV7bJm7Ry43pUU&export=media', 'https://drive.google.com/uc?id=1U5wyVIQ-fh_SjUbXO5OV7bJm7Ry43pUU&export=media', 'UXogDXaamX', 1, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('Y665EOaM6w', 'SEMBILAN', 'NINE', 'https://drive.google.com/uc?id=1hURiWGZv9SfclZfbvus3Ic3TPcaBi9AS&export=media', NULL, 'lQfg1njp9J', 1, '2021-10-27 11:17:11', '2021-11-01 10:22:47'),
('Y7sC3JerTT', 'TELEVISI', 'TELEVISION', 'https://drive.google.com/uc?id=1Xvgm-ZYH94mLJ0nXCoNNqr2K_UjGAW-W&export=media', 'https://drive.google.com/uc?id=1Xvgm-ZYH94mLJ0nXCoNNqr2K_UjGAW-W&export=media', 'rFh7WiWh1U', 1, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('yBW2jRUAV6', 'ZEBRA', 'ZEBRA', 'https://drive.google.com/uc?id=1iCOzDayh172E71LPJhSnKI4fQub8LVbX&export=media', 'https://drive.google.com/uc?id=1iCOzDayh172E71LPJhSnKI4fQub8LVbX&export=media', 'PJIVUyKKsx', 1, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('YCGTHZkrZp', 'PUTIH', 'WHITE', 'https://drive.google.com/uc?id=1VCP-lMtwvWKw3fOqeYIR_JpI_YXiLJa4&export=media', 'https://drive.google.com/uc?id=1Vdnpl3lTTNQkBpmfyG3aSBje89O7uk4i&export=media', 'lIlykI7yix', 0, '2022-06-05 23:22:06', '2022-06-05 23:22:06'),
('yCXTQZRutn', 'KOTA', 'CITY', 'https://drive.google.com/uc?id=1gmoxZETDWONKEp9mQc3vrqC-cxUzVGA_&export=media', NULL, 'xaUv9NLBUB', 1, '2021-11-04 02:40:04', '2021-11-04 02:40:04'),
('ydAHEC6uh7', 'SUP', 'SOUP', 'https://drive.google.com/uc?id=1ozUijfr2Z30EoRLN-S82APA3X4qMu0Ab&export=media', 'https://drive.google.com/uc?id=1ozUijfr2Z30EoRLN-S82APA3X4qMu0Ab&export=media', 'UXogDXaamX', 0, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('YEdbzllOYp', 'PENGHAPUS', 'ERASER', 'https://drive.google.com/uc?id=1pCPALsd3xDqXAYL5zrxombP1st4waqsi&export=media', NULL, 'e4iJNgm6Ca', 1, '2021-11-01 10:39:36', '2021-11-01 10:39:36'),
('Yey0gSigTs', 'BANJIR', 'FLOOD', 'https://drive.google.com/uc?id=11phv3za_wb1M3Q8xLzuR0g_ySRL6rJJ1&export=media', 'https://drive.google.com/uc?id=1stvY5GmZf4oUIBkDSaExBzC0hfW_PMXG&export=media', 'ZR8Oom877B', 0, '2021-11-04 08:59:55', '2022-06-06 14:29:10'),
('YFNEO6ZHPc', 'IBU', 'MOTHER', 'https://drive.google.com/uc?id=12rM-Ec0py3rpaf91p0V70FvcGMgqCVDe&export=media', 'https://drive.google.com/uc?id=12rM-Ec0py3rpaf91p0V70FvcGMgqCVDe&export=media', '904nkyIb9r', 0, '2022-06-05 12:22:48', '2022-06-05 12:22:48'),
('YfVUqPVBKM', 'KELINCI', 'RABBIT', 'https://drive.google.com/uc?id=1GkgInKfagfzvN6GIr10gtpC79kV6z69U&export=media', 'https://drive.google.com/uc?id=1Em148PtqLhVHHscyvOUYG81r054rUwdM&export=media', 'Kx3nrVcSeN', 1, '2021-11-04 01:29:41', '2022-06-06 10:06:03'),
('yIhhbTMc0p', 'KEMBAR', 'TWINS', 'https://drive.google.com/uc?id=1lGuzQ5PXwR8eRKZV9ufSS2XVt32Owxsv&export=media', 'https://drive.google.com/uc?id=1lGuzQ5PXwR8eRKZV9ufSS2XVt32Owxsv&export=media', '904nkyIb9r', 0, '2022-06-05 12:22:48', '2022-06-05 12:22:48'),
('YLuLNV15Sk', 'SABUN', 'SOAP', 'https://drive.google.com/uc?id=1JX0wCYiB8DCKH1ceyHDn8HxgoPuaKt9j&export=media', 'https://drive.google.com/uc?id=1JX0wCYiB8DCKH1ceyHDn8HxgoPuaKt9j&export=media', 'rFh7WiWh1U', 0, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('YnAYeq17Ti', 'KAOS KAKI', 'SOCKS', 'https://drive.google.com/uc?id=1YJ8VQD_zgTo5lXXWcaoLEYJfsfRZoJMb&export=media', 'https://drive.google.com/uc?id=1YJ8VQD_zgTo5lXXWcaoLEYJfsfRZoJMb&export=media', 'UlSaRWh3E1', 0, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('yocXwUvfWR', 'M', 'M', 'https://drive.google.com/uc?id=1L1xv_pt7Dcju8cB4pICViOZiIQJPNIyI&export=media', NULL, 'nAA9EvuWY1', 1, '2021-10-27 11:03:24', '2021-11-01 09:07:58'),
('yPMjQK5ADr', 'AYAM JAGO', 'ROOSTER', 'https://drive.google.com/uc?id=1etdmgUZDExv21Lg_utn0OAFuaUHTAtN1&export=media', 'https://drive.google.com/uc?id=1I8VsMzU09fKxvuuBfg6OSdA9j3DCGkRy&export=media', 'Kx3nrVcSeN', 1, '2021-11-04 01:27:11', '2022-06-06 10:07:33'),
('yWpeIj2A4o', 'PETANI', 'FARMER', 'https://drive.google.com/uc?id=11aOaMC8XZRQF6OEFPQApoLQ4aeBl9CDN&export=media', NULL, '9PMo2pGpX6', 1, '2021-11-04 02:23:34', '2021-11-04 02:23:34'),
('yXvcDjTqzI', 'DOKTER', 'DOCTOR', 'https://drive.google.com/uc?id=11T-trxtbAV9x_Cuue91Ylm7F3sQTLd2T&export=media', NULL, '9PMo2pGpX6', 1, '2021-11-04 02:19:14', '2021-11-04 02:19:14'),
('Z27kbytSeW', 'KUDA', 'HORSE', 'https://drive.google.com/uc?id=194gjOFMD_ie3C8CFV7xJ6dqzPpViGCSE&export=media', 'https://drive.google.com/uc?id=194gjOFMD_ie3C8CFV7xJ6dqzPpViGCSE&export=media', 'PJIVUyKKsx', 1, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('Z5P68kF7sw', 'KEKERINGAN', 'DROUGHT', 'https://drive.google.com/uc?id=17jqeRxnAHdXeLUyOEWVUkbcemOAAydKQ&export=media', 'https://drive.google.com/uc?id=1PA6HHMTnHmRXH-JOhpZM1FacomXwASar&export=media', 'ZR8Oom877B', 0, '2022-06-06 14:29:39', '2022-06-06 14:29:39'),
('Z79os6YCFa', 'RUANG TAMU', 'LIVING ROOM', 'https://drive.google.com/uc?id=1kbQUijMNAr4MYyT1LtaNP_jMbSzLVp2f&export=media', 'https://drive.google.com/uc?id=1kbQUijMNAr4MYyT1LtaNP_jMbSzLVp2f&export=media', 'rFh7WiWh1U', 1, '2022-06-05 10:04:01', '2022-06-05 10:04:01'),
('ZehakMGG1R', 'COKLAT PANAS', 'HOT CHOCOLATE', 'https://drive.google.com/uc?id=15BiOJ7hIn62yHxbClkOUn2c0bD0OmWgU&export=media', 'https://drive.google.com/uc?id=15BiOJ7hIn62yHxbClkOUn2c0bD0OmWgU&export=media', 'ZAhwOpkkWh', 0, '2022-06-06 13:26:14', '2022-06-06 13:26:14'),
('zH7JUKSnMe', 'KOPI', 'COFFEE', 'https://drive.google.com/uc?id=1_de22ucKAd_bz2A39i3mPoPkbRlvYXui&export=media', NULL, 'ZAhwOpkkWh', 1, '2021-11-02 01:39:07', '2022-06-06 09:45:18'),
('ZIb9IZteEq', 'GAJAH', 'ELEPHANT', 'https://drive.google.com/uc?id=1YjkET6lSDMsVPZJVKeoOGkKrnd_u9w51&export=media', 'https://drive.google.com/uc?id=1YjkET6lSDMsVPZJVKeoOGkKrnd_u9w51&export=media', 'PJIVUyKKsx', 0, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('Zl6qNeLqR1', 'KOMODO', 'KOMODO', 'https://drive.google.com/uc?id=1oEmVmiLgqijE6-1LG70qw8CbKwWtf3SE&export=media', 'https://drive.google.com/uc?id=1oEmVmiLgqijE6-1LG70qw8CbKwWtf3SE&export=media', 'PJIVUyKKsx', 1, '2022-05-31 03:07:03', '2022-05-31 03:07:03'),
('ZMWzM8aBOk', 'BELALANG', 'GRASSHOPPER', 'https://drive.google.com/uc?id=1IOKGBetg1_qERqOhLZE3LxWvr1MshiDK&export=media', 'https://drive.google.com/uc?id=1S5Q3Q-ZjSlSP4ZYr10PNQlA2PV2GAQln&export=media', 'uMq6cenpUS', 1, '2022-06-06 14:12:53', '2022-06-06 14:12:53'),
('Zq6ndJVWV2', 'KUPU KUPU', 'BUTTERFLY', 'https://drive.google.com/uc?id=19El4CWR2x0_C1B625-oItrA5ZZPu7gdb&export=media', 'https://drive.google.com/uc?id=1ROp-oPB9ycgQa4feGyYQaydd5LUTLDwo&export=media', 'uMq6cenpUS', 1, '2021-11-04 01:43:09', '2022-06-06 14:11:06');

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
(14, 'App\\Models\\User', 3, '585053919c602d1b', 'cd2de1db0d191433644002b2d131565085da7f3a4d6d7155067064d92d6e6919', '[\"*\"]', '2022-05-19 04:54:25', '2022-05-19 03:14:50', '2022-05-19 04:54:25'),
(15, 'App\\Models\\User', 3, '585053919c602d1b', 'f5469dc3dd3c6164c92cb38d2d24c808c3e2ca9cfaa3d41eaafdcf59b9e49f46', '[\"*\"]', '2022-05-31 06:15:09', '2022-05-31 03:09:20', '2022-05-31 06:15:09'),
(16, 'App\\Models\\User', 3, '585053919c602d1b', '969e5d51aece7b9af4ae2b469f080983d81984b172b3ff54f34865ba84606049', '[\"*\"]', '2022-05-31 06:16:35', '2022-05-31 06:15:28', '2022-05-31 06:16:35'),
(17, 'App\\Models\\User', 3, '585053919c602d1b', '4fd81e2735a15b42fb89c789541c8174f4f4d0cad7bbfb2d64c022ba1b426db5', '[\"*\"]', '2022-05-31 06:17:32', '2022-05-31 06:16:56', '2022-05-31 06:17:32'),
(18, 'App\\Models\\User', 74, '585053919c602d1b', '47102fa2a6f6d679c002f9c8f509de3f4331d2d27fabf7d964e2d8489824980a', '[\"*\"]', '2022-05-31 06:19:11', '2022-05-31 06:18:35', '2022-05-31 06:19:11'),
(19, 'App\\Models\\User', 74, '585053919c602d1b', '2a3c713442eaf3d8c2efb8e57fcf1abd084d41b3d340640e00f65bccb82157d2', '[\"*\"]', '2022-05-31 09:03:36', '2022-05-31 06:19:39', '2022-05-31 09:03:36'),
(20, 'App\\Models\\User', 74, '585053919c602d1b', '6fee125b525747d47a6954272fbb48a45fc14efa9ccbda0c49faa624fa03410a', '[\"*\"]', '2022-06-02 23:53:35', '2022-06-01 01:10:38', '2022-06-02 23:53:35'),
(21, 'App\\Models\\User', 74, '585053919c602d1b', 'bb1467c36343adce4cf744255cb874e4e9e2c49a9f201e4ce8fd6397f5bea104', '[\"*\"]', '2022-06-02 23:54:20', '2022-06-02 23:54:19', '2022-06-02 23:54:20'),
(22, 'App\\Models\\User', 74, '585053919c602d1b', '9c6455611385de26e000e3d96fa40b4dc15a239795b7156729afff9b682a4089', '[\"*\"]', '2022-06-03 00:11:35', '2022-06-03 00:01:25', '2022-06-03 00:11:35'),
(23, 'App\\Models\\User', 3, 'auth_token', '6d1d0ac72c8bf7f7aeabb88068e6c2b94d8d4b0bfc4d1caa432bad12a531e6b4', '[\"*\"]', '2022-06-03 00:03:08', '2022-06-03 00:02:55', '2022-06-03 00:03:08'),
(24, 'App\\Models\\User', 3, 'auth_token', '9b73fc402f56d80b1c31551e901063800006b849303bd3ced9ea72e9bf979da5', '[\"*\"]', '2022-06-03 00:26:24', '2022-06-03 00:26:01', '2022-06-03 00:26:24'),
(25, 'App\\Models\\User', 3, 'auth_token', 'a40a4102b247425958a18e6743728de95758b1b7f0d6a356a3d69506685a23fc', '[\"*\"]', '2022-06-03 01:11:25', '2022-06-03 00:38:30', '2022-06-03 01:11:25'),
(26, 'App\\Models\\User', 74, '585053919c602d1b', 'c3a33faa30ddd68f19ec2cf89c0a639e56ee1ba9b96520820c911cb5cfdc8bc5', '[\"*\"]', '2022-06-03 02:24:43', '2022-06-03 00:41:38', '2022-06-03 02:24:43'),
(27, 'App\\Models\\User', 3, 'auth_token', '5fab59adf1d9474c5b06f308d3251afd7e5660ed857b0a1f87d568f842d49e6a', '[\"*\"]', NULL, '2022-06-03 00:55:43', '2022-06-03 00:55:43'),
(28, 'App\\Models\\User', 3, 'auth_token', '037021f65e5f5f7121ade785c5f688dadc28f05ff1bc21f38fdfabf8c26759d0', '[\"*\"]', NULL, '2022-06-03 00:56:09', '2022-06-03 00:56:09'),
(29, 'App\\Models\\User', 3, 'auth_token', 'b1ffb17cfccb7b57be7719c7aba366f6f8c65991d343911ec5248d69514cbdd2', '[\"*\"]', NULL, '2022-06-03 00:57:25', '2022-06-03 00:57:25'),
(30, 'App\\Models\\User', 7, 'auth_token', 'fe5e598636bd5d4b3fab8e99f8615e152229004a68f684707ff3fa0fe0eb59a2', '[\"*\"]', NULL, '2022-06-03 00:58:54', '2022-06-03 00:58:54'),
(31, 'App\\Models\\User', 3, 'auth_token', 'f89ca76f0fa0e01b8e22cf6615410c3ea9394106671e2c0116c4af9086d5759c', '[\"*\"]', NULL, '2022-06-03 01:02:51', '2022-06-03 01:02:51'),
(32, 'App\\Models\\User', 3, 'auth_token', '1831bdd87717bfce7f9ec0e6b0670897ecef7768f89e126ab5e572533c82fd32', '[\"*\"]', NULL, '2022-06-03 01:04:48', '2022-06-03 01:04:48'),
(33, 'App\\Models\\User', 74, '585053919c602d1b', '69a9924a49b9437fc2da17439ed523d2acf753d78b4e40d6e7160d872ba19fc0', '[\"*\"]', '2022-06-03 12:18:40', '2022-06-03 02:43:29', '2022-06-03 12:18:40'),
(34, 'App\\Models\\User', 3, 'bd994cc85142d6d1', '737db5c0a6705eb4af5fa33c2664fc0455ba98d0570c874fc0cb118be54b0734', '[\"*\"]', '2022-06-03 10:14:04', '2022-06-03 02:50:50', '2022-06-03 10:14:04'),
(35, 'App\\Models\\User', 3, 'auth_token', '4d5e3cad1bfd927923a4e484210334eb9f62a06b085c6cc81a65832a95577d27', '[\"*\"]', NULL, '2022-06-03 10:20:23', '2022-06-03 10:20:23'),
(36, 'App\\Models\\User', 3, '716f34c1fc713903', '0e1fdd54f40d2e32eec1a620d5a53a5b16e2605940df7dfb1e8c1e19cf53f365', '[\"*\"]', NULL, '2022-06-03 11:49:57', '2022-06-03 11:49:57'),
(37, 'App\\Models\\User', 3, '716f34c1fc713903', '4847e557dcaa84c2509700649096dc6a1a0c3a571ead7c3d8c228ea7cf023e49', '[\"*\"]', NULL, '2022-06-03 11:55:30', '2022-06-03 11:55:30'),
(38, 'App\\Models\\User', 3, '716f34c1fc713903', 'e1718019435ddb02be162ec38032fd40575d39572877221aeaf4a0015f41df65', '[\"*\"]', '2022-06-03 12:12:49', '2022-06-03 12:10:05', '2022-06-03 12:12:49'),
(39, 'App\\Models\\User', 3, '716f34c1fc713903', '13f2921cf916955c35921fa2786d399c43fcf7fb1496cbf1576fd62db1d9a4a9', '[\"*\"]', NULL, '2022-06-03 12:16:21', '2022-06-03 12:16:21'),
(40, 'App\\Models\\User', 3, 'f99c5fe3127951f6', '21228c6fe64e752cd361653f11a87176378e3e8b2fc1c69a527f4a0a0d72e5fc', '[\"*\"]', NULL, '2022-06-03 12:22:47', '2022-06-03 12:22:47'),
(41, 'App\\Models\\User', 3, 'f99c5fe3127951f6', 'd977dcbd72f4dfcf5bf9ecc9d02721fd5c734c70d483e27cec1931592055a1fb', '[\"*\"]', NULL, '2022-06-03 12:27:54', '2022-06-03 12:27:54'),
(42, 'App\\Models\\User', 74, '585053919c602d1b', 'e8c136051322d015f1ffe0c82ebba885572582edb40fa2c05f5fabe5b5f72a7e', '[\"*\"]', '2022-06-03 12:55:15', '2022-06-03 12:29:22', '2022-06-03 12:55:15'),
(43, 'App\\Models\\User', 74, '585053919c602d1b', 'c2c577361721a8465b8417c8b80dde205192bbc5b66c54fce760cb0fed705d4d', '[\"*\"]', '2022-06-03 15:46:02', '2022-06-03 12:59:09', '2022-06-03 15:46:02'),
(44, 'App\\Models\\User', 3, '585053919c602d1b', 'd16f299a6c2a85bb668770c322a97b1ba0e2f62befcbfbc5e06f71d630c2b101', '[\"*\"]', '2022-06-04 04:24:37', '2022-06-03 15:46:14', '2022-06-04 04:24:37'),
(45, 'App\\Models\\User', 74, '585053919c602d1b', '09de6d345eef0e2b68b0c1b8eac5c23f11d9032d4a031e785a2aa4ab4966c9bd', '[\"*\"]', '2022-06-04 05:17:29', '2022-06-04 04:24:56', '2022-06-04 05:17:29'),
(46, 'App\\Models\\User', 3, '585053919c602d1b', 'b394b2a7028491729643d44ce2b41a636ad4d06063d3cb0db0f5ab7423fe3c24', '[\"*\"]', '2022-06-04 05:53:36', '2022-06-04 05:18:41', '2022-06-04 05:53:36'),
(47, 'App\\Models\\User', 74, '585053919c602d1b', 'b786aada213982115e1b205b015f3153214e3f8ab0af4c6d31f13651b01c81dc', '[\"*\"]', '2022-06-04 06:01:34', '2022-06-04 05:56:10', '2022-06-04 06:01:34'),
(48, 'App\\Models\\User', 3, '585053919c602d1b', 'e8b1bd9471ebc78b42152d91709ac5e5706191ab49f0bfd96b52c3b1ec73ce0e', '[\"*\"]', '2022-06-05 15:09:40', '2022-06-04 06:01:57', '2022-06-05 15:09:40'),
(49, 'App\\Models\\User', 3, '716f34c1fc713903', '524a43ccb2dfe947e39972b7b045e45f42714b82ee128f851ace1a5d3bfdeab8', '[\"*\"]', '2022-06-05 15:53:58', '2022-06-05 15:09:17', '2022-06-05 15:53:58'),
(50, 'App\\Models\\User', 74, '585053919c602d1b', 'f7487dc3fb85da0fd898558923c4f3c14a1e23323a30a6ab39ca204c5c20dd86', '[\"*\"]', '2022-06-05 15:51:17', '2022-06-05 15:15:21', '2022-06-05 15:51:17'),
(51, 'App\\Models\\User', 74, '585053919c602d1b', '758501ec1d94bc5770db65a9b2d2e7f39b176ed708c6bb620f6bdb9181135116', '[\"*\"]', '2022-06-05 17:13:58', '2022-06-05 16:02:56', '2022-06-05 17:13:58'),
(52, 'App\\Models\\User', 3, 'f99c5fe3127951f6', 'f658d081025498e94b253779629376741abd04530a87468f8be30301601280de', '[\"*\"]', '2022-06-05 16:54:41', '2022-06-05 16:48:44', '2022-06-05 16:54:41'),
(53, 'App\\Models\\User', 3, 'f99c5fe3127951f6', '755d34ae4d0138b124855c8c542962106c92a67e3737d3dcaceb9905839d8b90', '[\"*\"]', '2022-06-05 17:20:30', '2022-06-05 17:13:18', '2022-06-05 17:20:30'),
(54, 'App\\Models\\User', 3, '585053919c602d1b', 'ce7ef88d75164046c4661e8482f08745ecb9a259d26d9ced444267635e26f30f', '[\"*\"]', '2022-06-05 22:50:55', '2022-06-05 17:14:10', '2022-06-05 22:50:55'),
(55, 'App\\Models\\User', 3, 'f99c5fe3127951f6', 'a98088f225607e851d5bbd759d5cc1bde7d53821015fe9785d9d88cb27cac436', '[\"*\"]', '2022-06-06 13:09:35', '2022-06-05 17:21:52', '2022-06-06 13:09:35'),
(56, 'App\\Models\\User', 74, '585053919c602d1b', '7fecdb34ef9ef1d0a2cb834d8bf4030fdf9d2fb565e99e7cc5cda6354cab0c54', '[\"*\"]', '2022-06-05 23:16:52', '2022-06-05 22:51:14', '2022-06-05 23:16:52'),
(57, 'App\\Models\\User', 3, '585053919c602d1b', '9bfe294651fe9f2ae3aba08cb51de32e6311fda3ba585bc891bf51ba474f8a54', '[\"*\"]', '2022-06-05 23:26:31', '2022-06-05 23:17:11', '2022-06-05 23:26:31'),
(58, 'App\\Models\\User', 74, '585053919c602d1b', '72f0d6326e5db9171df00ddcc1b1fdd7fafa6b3e808e2fd1ed53695b14ce6c89', '[\"*\"]', '2022-06-06 11:08:51', '2022-06-05 23:26:52', '2022-06-06 11:08:51');

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
('37B0AvZOfXoqNV6X2jYrLBcyXIuRRyMh1DrORxWR', NULL, '180.248.10.229', 'WhatsApp/2.22.11.82 A', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUFNYTGFvcHJkYTFjdExld016SzJYckE5cDYwdk16SEJuRjkzbW44YSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHBzOi8va2luZGVtLm15LmlkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1654519759),
('3kTYzfQUdBczCy9Fw0iYJS43fTuuWPnTf9fzo35c', NULL, '180.248.10.229', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A225F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicjdzSlFTQ0N3SnFKMkE1OGJFVFZjbm92cGNmY0tFeHpBNHlMdVE3ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHBzOi8va2luZGVtLm15LmlkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1654523463),
('EWV8oAeaVBsSHDOT5tMQHAVtN8jqd2NjW4RQM1Ib', NULL, '114.79.23.164', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU3lVNDRQOGZEUUhRZzg1eUxJV3c4bkhUMnZ4ZFh3TnhPU0lsSWR0bSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHBzOi8va2luZGVtLm15LmlkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1654522362),
('qiiEUipU75BIXVdShhxnlJ8SU9kZ2iuTurpRlkKy', NULL, '180.248.10.229', 'WhatsApp/2.22.11.82 A', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmYwcWpRMG9DNm1sRm9EamNnbkxWc3JDSXhLRWo5ODU3N2ViVnRWQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHBzOi8va2luZGVtLm15LmlkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1654519749),
('rkhTpGIIArd0SyTRN30J9Dko4JpF7IUcKjVNA9v2', NULL, '180.248.10.229', 'WhatsApp/2.22.11.82 A', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWHhjRDdzYlNBcHZybEFpbzNFQktDRVE5NlFydkRwRTczZFh2ZFR6QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHBzOi8va2luZGVtLm15LmlkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1654519704),
('RR7TAn9MLOfhqoA7RlgxZejH7XmKtxgjQzl1tw5R', NULL, '180.248.10.229', 'WhatsApp/2.22.11.82 A', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS3BRZEpIUHhqZGNod0F0Nk13NlhSeU5vZFFGbzFYN0tXRzZLZDdjSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHBzOi8va2luZGVtLm15LmlkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1654519706),
('ryA4N65d9mL4QJd6EAtVBy4Vc1vthF1pnTp0ISDI', NULL, '180.248.10.229', 'WhatsApp/2.22.11.82 A', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUTViSEY1SVNBRnRwcGgwVFNKOEVpbkhnMllTVWlRM3VkclRNOUZEYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHBzOi8va2luZGVtLm15LmlkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1654519974),
('sGNBMkkZpvqKdfxABeoZFngiUdsvg6HN1ID5D25F', 1, '180.248.10.229', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiSmhZUm16WkVtNWhwQ0JMaXdXeTNBRXFFVkhOUHhRUFlvanl2SWJwWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8va2luZGVtLm15LmlkL2FkbWluL21hdGVyaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCQzcDMuQU9nMUFabkNWb3lGc2NhY1h1bU11eFJDLzB1WG5tTVlUS0g0YkpHL2h1Zk4vS3RuUyI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkM3AzLkFPZzFBWm5DVm95RnNjYWNYdW1NdXhSQy8wdVhubU1ZVEtINGJKRy9odWZOL0t0blMiO30=', 1654525991),
('sTyPrPMTS9VRUtYuUVVrMGPUVu7JqnJC31D4Pu5u', NULL, '180.248.10.229', 'WhatsApp/2.22.11.82 A', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibmNRSnRoSjFpTk5BTURrMWpycTNHUVJjVmp4VzVMY21VZGpJQmYyaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHBzOi8va2luZGVtLm15LmlkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1654520205),
('Zb99Dk3InBldxBHzkG7ubCMUzmhZgJ8Me87zr83V', NULL, '180.248.10.229', 'WhatsApp/2.22.11.82 A', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieXpVdUpHUnlqWEExYmlZekNueVZvVU10a0EwUkJMdXM5ejI4NkR2VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHBzOi8va2luZGVtLm15LmlkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1654520156);

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
('4ZMJBI87Ii', 'COMMUNICATION TOOL', 'https://drive.google.com/uc?id=1h79DGw5PZSG-psNWd_WUbd5Doit8alcn&export=media', 'agkha0rF1Z', '2021-10-27 10:15:35', '2022-06-06 14:32:54'),
('904nkyIb9r', 'MY FAMILY', NULL, 'agkha0rF1Z', '2022-06-05 12:22:30', '2022-06-05 12:22:30'),
('9PMo2pGpX6', 'PROFESSION', 'https://drive.google.com/uc?id=1TvTTWvPHD-UQvC1lhMI6CO5oUx5cC_-5&export=media', 'dVpFFDlkVs', '2021-10-27 10:15:02', '2021-10-29 06:24:10'),
('e4iJNgm6Ca', 'SCHOOL', 'https://drive.google.com/uc?id=19jaraqfuwwse86lI5jjPjJLQkSy64ELd&export=media', 'dVpFFDlkVs', '2021-10-27 09:48:58', '2022-05-29 05:08:55'),
('G4bbWyjO99', 'PLANET', 'https://drive.google.com/uc?id=1iO-Di_2-DOCRzcjpwNEdcCX0FIFk-EEO&export=media', 'l8qS5IT1Q9', '2021-10-27 10:16:21', '2022-05-29 05:08:36'),
('jsDsCkdOPZ', 'RECREATION', 'https://drive.google.com/uc?id=1nknVRDHgCAp8DcCTcEPFDMe6shtrZxAL&export=media', 'l8qS5IT1Q9', '2021-10-27 10:13:22', '2021-10-29 06:21:33'),
('kd4oos26tl', 'PART OF MY BODY', 'https://drive.google.com/uc?id=1aMWOet3V4OAOnowvJ63El_ZHRmF6DVO4&export=media', 'iTDaqkOaIf', '2021-10-27 09:47:33', '2021-10-28 22:46:51'),
('kvI4kxbK8U', 'UNIVERSE', 'https://drive.google.com/uc?id=1KFTcBQBZuOcwgM357EqNrr3J2KaVSAi4&export=media', 'l8qS5IT1Q9', '2021-10-27 10:16:06', '2022-05-29 05:08:45'),
('Kx3nrVcSeN', 'PET', 'https://drive.google.com/uc?id=1m-_IRHFQZu8XEsyleVMyvZoAA2V5ZzYq&export=media', '8plSIjT7Jq', '2021-10-27 09:52:18', '2021-11-04 02:59:36'),
('lIlykI7yix', 'COLOR', 'https://drive.google.com/uc?id=1RB8e60QXHfXJ09LZSr2LIt5LQ575Davc&export=media', 'iTDaqkOaIf', '2021-10-27 09:48:25', '2021-10-29 05:41:32'),
('LkcMVU9fBL', 'TREE & FLOWER', 'https://drive.google.com/uc?id=1fZDXokjfoWkN1tmOp3_iMge8Kp1hAZiC&export=media', 'QC4B3q0XGj', '2021-10-27 10:12:38', '2021-10-29 05:56:22'),
('mqGYngDtGa', 'FRUIT', 'https://drive.google.com/uc?id=1PO1e0tf6Ioz1MjU4xps-U1VXOcKvsjPH&export=media', 'QC4B3q0XGj', '2021-10-27 10:12:56', '2021-10-29 05:59:36'),
('PJIVUyKKsx', 'ANIMALS', NULL, 'iTDaqkOaIf', '2022-05-31 03:06:43', '2022-05-31 03:06:43'),
('rFh7WiWh1U', 'MY HOME', NULL, 'agkha0rF1Z', '2022-06-05 10:03:45', '2022-06-05 10:03:45'),
('SdGMT5fJGF', 'HOBBY', NULL, 'agkha0rF1Z', '2022-06-05 12:22:36', '2022-06-05 12:22:36'),
('UlSaRWh3E1', 'CLOTHES', 'https://drive.google.com/uc?id=1rbbAVKveqLq44XJo3GuPYTKIFcqxBFPV&export=media', '8plSIjT7Jq', '2021-10-27 09:50:01', '2022-06-05 12:26:57'),
('uMq6cenpUS', 'COMMON INSECTS', 'https://drive.google.com/uc?id=1i-K_S6n8ly2b_TROaVFr8x82-CbwUNdO&export=media', 'iTDaqkOaIf', '2021-10-27 09:55:35', '2022-06-06 10:10:17'),
('Uv1CjrXSOF', 'WORKPLACE', 'https://drive.google.com/uc?id=1aFrewxZnXU-fqcqQMJko1pbYuFqPv2nH&export=media', 'dVpFFDlkVs', '2021-11-04 08:37:37', '2021-11-04 08:37:37'),
('UXogDXaamX', 'FOOD', 'https://drive.google.com/uc?id=11LsdvKr_Pgfev6cPSLhXcDBlcsPgCCWd&export=media', '8plSIjT7Jq', '2021-10-27 09:50:23', '2022-06-06 09:44:11'),
('xaUv9NLBUB', 'NATIVE LAND', 'https://drive.google.com/uc?id=1xkMTXNJULLrGpcUJaResiHOTi3F4KB35&export=media', 'QC4B3q0XGj', '2021-10-27 10:15:49', '2022-05-29 05:08:23'),
('xRADaFn1It', 'HOUSE', 'https://drive.google.com/uc?id=1SNB0nTzHZ_vX9_gnPMs1Kpd7oErDMATo&export=media', 'dVpFFDlkVs', '2021-10-27 09:49:12', '2022-05-29 05:09:06'),
('xsF19TMhoZ', 'VEHICLE', 'https://drive.google.com/uc?id=1rR-P9JiqermEjyivNrGuZYa-Mbho0Yzt&export=media', 'l8qS5IT1Q9', '2021-10-27 10:14:24', '2021-10-29 06:22:36'),
('ygubUyqQoN', 'WILD ANIMAL', 'https://drive.google.com/uc?id=1LtP-RW3ryPteCmjuO-nKIQ_QkOsX64VQ&export=media', '8plSIjT7Jq', '2021-10-27 09:50:50', '2021-10-29 05:51:37'),
('ZAhwOpkkWh', 'DRINK', NULL, '8plSIjT7Jq', '2022-06-06 09:43:33', '2022-06-06 09:43:33'),
('ZR8Oom877B', 'INCIDENT', 'https://drive.google.com/uc?id=104QnGZDylZQdV8obRSoGZg_pNb39pN1a&export=media', 'agkha0rF1Z', '2021-11-04 08:38:33', '2022-05-29 05:07:58');

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
  `last_seen` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `role`, `remember_token`, `current_team_id`, `profile_photo_path`, `last_seen`, `created_at`, `updated_at`) VALUES
(1, 'Admin Kindem', 'admin@kindem.my.id', NULL, '$2y$10$3p3.AOg1AZnCVoyFscacXumMuxRC/0uXnmMYTKH4bJG/hufN/KtnS', NULL, NULL, 'admin', NULL, NULL, NULL, '2022-06-06 14:33:11', '2021-10-26 22:12:51', '2022-06-06 14:33:11'),
(3, 'Murid Kesayangan', 'murid@gmail.com', NULL, '$2y$10$XpQYoSpM2WamUP8x6.is/.EiyiLdYAQ.Fz3ZavTLs3QabxFH3nKlS', NULL, NULL, 'student', NULL, NULL, 'assets/images/avatar-3.jpg', '2022-06-06 13:09:35', '2021-11-17 06:27:18', '2022-06-06 13:09:35'),
(6, 'NAFIZA NADIM AL AMOEDY', 'nafizanadim@kindem.my.id', NULL, '$2y$10$OK4lG./Q4U8gIn0gG1oMsuMaGDJ0RdGp1KVhjHJEMtWxf9SkJ3mkm', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:42:12', '2022-05-29 05:42:12'),
(7, 'NAURA NADIM AL AMOEDY', 'nauranadim@kindem.my.id', NULL, '$2y$10$fOFpZ0cZlAyxPjh1kFfUAeYzUfmjDQiKjfehc0dDLQ9HaJfKSBTmO', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:43:17', '2022-05-29 05:43:17'),
(8, 'MUHAMMAD IHSANUDDIN Z.P', 'muhammadihsanuddin@kindem.my.id', NULL, '$2y$10$VvQtsvcAT/mbUF6dPK4a2.SY8QsySMivVrxqi06DvL.0jkSGdMDpq', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:45:33', '2022-05-29 05:45:33'),
(9, 'SYAKILLA BILQIS AULIA', 'syakillabilqis@kindem.my.id', NULL, '$2y$10$9B7s02/YB.mJaGG3GNLXi.LvfjX/qfHIOZ1wvOz92Zcs0vt0lGjYW', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:46:09', '2022-05-29 05:46:09'),
(10, 'KALYA YURI PRASETYA', 'kaylayuri@kindem.my.id', NULL, '$2y$10$1UpaAh3KuNTkq/0gepTDyeqRU7oeCVLVRh8eaH9c7Eyl/NM3erREa', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:46:27', '2022-05-29 05:46:27'),
(11, 'AYUNDA DEWI HUMAIROH', 'ayundadewi@kindem.my.id', NULL, '$2y$10$H/dlgJHYMl.a6t8MYC4qeOehIpEAHL.MaH47C/bhkzye/G4FtM.4a', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:46:53', '2022-05-29 05:46:53'),
(12, 'BAGUS KURNIAWAN F.', 'baguskurniawan@kindem.my.id', NULL, '$2y$10$3sgao9suVrxbcj/PZ/Wia.5uFStfWILJO4gWJwTtSl4u0tkGC7tzm', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:47:20', '2022-05-31 03:12:16'),
(13, 'NADYA FIRLIGA', 'nadyafirliga@kindem.my.id', NULL, '$2y$10$ErbA5xq383xEkbl4ihA5.utC1fDrbkfQLFxZRl91h1FjDSSR5Oqdu', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:47:42', '2022-05-29 05:47:42'),
(14, 'CAHAYA ADELIA WAHYU P', 'cahayaadelia@kindem.my.id', NULL, '$2y$10$GdCPcTA8gJcDpRRSV4/eX.zHBB/hGwjqD4WH3uZlCXj0COkid/piC', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:48:09', '2022-05-31 03:12:29'),
(15, 'ALARIC SAVA HILMI ALVARO', 'alaricsava@kindem.my.id', NULL, '$2y$10$keY/fSgbM2ZgwMCR.KWI8eCD0PCfX7sLH1Qmz1Kd227bOs7uznfsa', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:48:32', '2022-05-29 05:48:32'),
(16, 'AHMAD IRAWAN', 'ahmadirawan@kindem.my.id', NULL, '$2y$10$8MILKHYiT2LqJmsdCQ/Zg.kRIeu.l5C93JFhmhWmvOSHAStFgxVQi', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:48:58', '2022-05-29 05:48:58'),
(17, 'AFIFA FITRIA ZAHRA', 'afifafitria@kindem.my.id', NULL, '$2y$10$weQ3pbp2PBGWLUI4Bzjlz.OQprjAyz7aGGl3f00SnKKmr5RoXuAue', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:49:16', '2022-05-29 05:49:16'),
(18, 'ARIMBI SEKARWANGI A.', 'arimbisekarwangi@kindem.my.id', NULL, '$2y$10$qblQk6P7QUGxLYzdGC8nCeFJwMDUe5J/juC17s6R1iCT0Xd/Fp.GW', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:49:39', '2022-05-29 05:49:39'),
(19, 'KELVIN OKTA RADITYA', 'kelvinokta@kindem.my.id', NULL, '$2y$10$onsE9Uc7I8C.2thdigwokerl9Bli.QYV6KE9i.WFmvU8NkDbBOqla', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:50:05', '2022-05-29 05:50:05'),
(20, 'NAYLA VIDYASYIFA', 'naylavidyasyifa@kindem.my.id', NULL, '$2y$10$798uV5BVQmsSJoii/cm8WuopDo3o5CpJ1EOzbGtGNoEVCWegV7epe', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:50:30', '2022-05-29 05:50:30'),
(21, 'SITI AISYAH', 'sitiaisyah@kindem.my.id', NULL, '$2y$10$bvbgu08gl47DsJMYill4ou5bOhrSmX.I9OGqVuzIY6Rpvfif5sCwu', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:50:57', '2022-05-29 05:50:57'),
(22, 'SHINTA RADYA ALLUNA', 'shintaradya@kindem.my.id', NULL, '$2y$10$LdNAia/dBD3XlN.8Cu9dHuwIj4Z6nmrNVbirz/6H7nyz.M3zECxti', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:51:16', '2022-05-29 05:51:16'),
(23, 'AVORISMA CETTA NISMARA', 'avorismacetta@kindem.my.id', NULL, '$2y$10$8fUfTu3LFUAI.2GlevZJPuY5jfmL62EHgNPmyor7LxgCla9iW2cHO', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:52:39', '2022-05-29 05:52:39'),
(24, 'ATHIFAH LAILA FITRI R', 'athifahlaila@kindem.my.id', NULL, '$2y$10$6toVPNXduUxi1y9BAFzcHOx7McQQWJ4jCXBKD19DBVhD9gCyNjQxW', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:53:04', '2022-05-31 03:12:43'),
(25, 'ALMEERA VIOLA DELISHA Z', 'almeeraviola@kindem.my.id', NULL, '$2y$10$lm/jiup6Wrqicfyk7H/tteH1bCIaILexLFbhK5SgnS4DeZto8K1lq', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:53:30', '2022-05-31 03:11:22'),
(26, 'FARZAN SAKHA ARGANI', 'farzansakha@kindem.my.id', NULL, '$2y$10$3Z1ea6MSxNLQ7iReUAQDIe4nci1ooSU.Jif9UL2sZTvNSfc5a0SfS', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:53:46', '2022-05-29 05:53:46'),
(27, 'INTAN JANEETA FIRYA', 'intanjaneeta@kindem.my.id', NULL, '$2y$10$YaNMC1Ma2GBk.zrqa0tNOegW.RJrHUYxl2AlawYWPZKZ9ZDTQN9oi', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:54:04', '2022-05-29 05:54:04'),
(28, 'MUCHAMMAD WAHYUDI', 'muchammadwahyudi@kindem.my.id', NULL, '$2y$10$oCa4pJ0nbS06o9b/jNI3meTkLIz2r9dFxca7jj/0X.iJQQhJXMP0O', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:54:23', '2022-05-29 05:54:23'),
(29, 'MUHAMMAD IRSAD D.S', 'muhammadirsad@kindem.my.id', NULL, '$2y$10$taxu1QnUjrQIxLWpS3/EY.VPJ53b7eUcaKi3MwQ8HOM4MT7raZwTK', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:54:52', '2022-05-29 05:54:52'),
(30, 'MUHAMMAD FARID A. R', 'muhammadfarid@kindem.my.id', NULL, '$2y$10$ie7uP/APUSuLf9ZjaO/0Fuk9WvUE0nfDFsKNmKJb4hm.MrUKjtKKK', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:55:11', '2022-05-29 05:55:11'),
(31, 'RAISYAH KURNIA PUTRI', 'raisyahkurnia@kindem.my.id', NULL, '$2y$10$GWPjEcg3DY.K.n8jk8HZP.lpjuOzPIOn9KmiG45mULj3V0jdsaG72', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:55:40', '2022-05-29 05:55:40'),
(32, 'RINO PRATAMA', 'rinopratama@kindem.my.id', NULL, '$2y$10$N5nfg/pOSDXVHPEARI89.e5c7/782IgTyQZiMSMS/9nr9RiWqHUPa', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:55:52', '2022-05-29 05:55:52'),
(33, 'MUHAMMAD VASRIL AKBAR', 'muhammadvasril@kindem.my.id', NULL, '$2y$10$3Re2z6VoulwMnicKgxTp1uKSki8smZRMphsoa2M4Uh2R1R/kVR2EC', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:56:10', '2022-05-29 05:56:10'),
(34, 'ALIA ADILLA NIKEISHA W', 'aliaadilla@kindem.my.id', NULL, '$2y$10$GUKHKbK42NzhEZz/aW.a.OSMF6HQ5135Orh2Qsx8zAa/mRcaWIcTq', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:56:34', '2022-05-29 05:56:34'),
(35, 'JULYAMI', 'julyami@kindem.my.id', NULL, '$2y$10$volu8EXp7iMMnHCb.DmY0u.f6TvkEhvGnd6g6E4bIF4mQ1GJqIG1u', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:56:57', '2022-05-29 05:56:57'),
(36, 'HIMA ZUHROTUS S.', 'himazuhrotus@kindem.my.id', NULL, '$2y$10$JbsSW0g6rvyceSGYQcgMCedb46ae6tNfOp0SeWg63E4zQ1GzgGgV2', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:57:25', '2022-05-31 03:13:07'),
(37, 'FARIZA AYU FEBRIYANTI', 'farizaayu@kindem.my.id', NULL, '$2y$10$DICUa5rZWl4gh6uu0xI4keqXWjvyrIZlS2FD7OmFX1JFv5.ipb9VK', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:57:42', '2022-05-29 05:57:42'),
(38, 'MOCHAMMAD SYAM A. K', 'mochammadsyam@kindem.my.id', NULL, '$2y$10$GnWdDlXlnN1B0unh6IQ30.5qrMU/Us3X6rj22EwBG6naCzw.NA40K', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:58:08', '2022-05-29 05:58:08'),
(39, 'AGATHA FILLAFIL LATIEF', 'agathafillafil@kindem.my.id', NULL, '$2y$10$FeLycWcuyp2WCJLx9AoBNuAVpDhjavPza3gyMjfQKuA4A3u7fEwKy', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:58:30', '2022-05-29 05:58:30'),
(40, 'AZZA APRILIA ARIFAH', 'azzaaprilia@kindem.my.id', NULL, '$2y$10$Qr69UREBhki3ZgQL788qxuy0bSCHo7poadLaA66GHrN5XO9k37LIe', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:58:47', '2022-05-29 05:58:47'),
(41, 'RAKA ACHMAD FIRDAUS', 'rakaachmad@kindem.my.id', NULL, '$2y$10$L7Fd2FWUUIvz9PHKNX4bhe2KyiSNz0DTueRF3isIMMHSJnTRupcJm', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:59:05', '2022-05-29 05:59:05'),
(42, 'MOCHAMMAD MAHFUD', 'mochammadmahfud@kindem.my.id', NULL, '$2y$10$SMlSvBOyjVTZ26HMfGIEMeHzRrnbFoulm6a2xIn7WUnCno8zyRHZO', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:59:22', '2022-05-29 05:59:22'),
(43, 'AISA KUSUMA HATI', 'aisakusuma@kindem.my.id', NULL, '$2y$10$KAao40YReU7fOCDspoLjuuAeWi/HRRwIexJe5ixAiyKzQv7mZ5P2i', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:59:39', '2022-05-29 05:59:39'),
(44, 'TSAMARA VIONANDA', 'tsamaravionanda@kindem.my.id', NULL, '$2y$10$.JQ1PlDXIJSzZ1FmO3fb7ekfKPZu1zJyBr2RlkgCc/7ui/KeZHHEK', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 05:59:57', '2022-05-29 05:59:57'),
(45, 'RADEN SYAHRAFI A. P', 'radensyahrafi@kindem.my.id', NULL, '$2y$10$ntIkTtpy5CZvwoM0G5eYmOREU3Q/Z./PvTw7j/uLhmWlJ8hsdFdMa', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 06:00:17', '2022-05-29 06:00:17'),
(46, 'DIO FIRNANDA RAMADHANI', 'diofirnanda@kindem.my.id', NULL, '$2y$10$m1d/f2p0JIscAhT.F2HaROBGKpOLjKaBEnmXC2gbY2ChDstVxlYci', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 06:00:35', '2022-05-29 06:00:35'),
(47, 'MUHAMMAD ANAM', 'muhammadanam@kindem.my.id', NULL, '$2y$10$mBmrINJtyE.UFEbg6pPEAeaIcEHJgfJ4Tc5is24hMdk..ysZJOMr2', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 06:00:53', '2022-05-29 06:00:53'),
(48, 'MAYYUKI KIREINA M', 'mayyukikireina@kindem.my.id', NULL, '$2y$10$cg0chLjVYaDo/Sjtv8RMqerdm1ONOAqpcln/orB70vQNuvfFDqNUu', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 06:01:14', '2022-05-31 03:13:28'),
(49, 'ANANDA RADIT S.,', 'anandaradit@kindem.my.id', NULL, '$2y$10$R6hDMP374h8EPKGqV.HgqORkBDoh1feH2uIF2L7z7R/HjgED33Ki2', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 06:01:33', '2022-05-29 19:14:36'),
(50, 'ADAM ALMUNAJAT', 'adamalmunajat@kindem.my.id', NULL, '$2y$10$wz1oAqm54527q2rvgjNATO/cw3Dy3hKOstQWIj0Np1v5Ev1hdeNfK', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 06:01:53', '2022-05-29 06:01:53'),
(51, 'ADITYA PRATAMA', 'adityapratama@kindem.my.id', NULL, '$2y$10$kHuypZuxVTBOxCuixzqLiedC8wmScOzskitXQ.ALhj/UV1b9Jt5Ae', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 06:02:08', '2022-05-29 06:02:08'),
(52, 'AKBAR PUTRA PRATAMA', 'akbarputra@kindem.my.id', NULL, '$2y$10$cww8TIHmOMLrRElN4YqGa.L8k.De.tnDmkuGK5G636ArXk0pE0m4G', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 06:02:26', '2022-05-29 06:02:26'),
(53, 'AISYAH ISAHABILAH', 'aisyahisahabilah@kindem.my.id', NULL, '$2y$10$1Ft5fepM0kzZmyejzD4Zfe9AMwR2t42V8WvylApBZDuIOWmchH1JK', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 06:02:45', '2022-05-29 06:02:45'),
(54, 'DELVIAN PUTRA MIRANDO', 'delvianputra@kindem.my.id', NULL, '$2y$10$jSIIZzFtCoKGHsMzuvRnBOOpd5n88d50JKmOJCgLIG7N52Oir5fpO', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 06:03:05', '2022-05-29 06:03:05'),
(55, 'DHIMAS RISQY YASA S.', 'dhimasrisqy@kindem.my.id', NULL, '$2y$10$4ZnSdBQqHnbKa0bC4KSFTer18ilJPKGH2wDT3cskhUtMNUtbmY6FW', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 06:03:29', '2022-05-29 06:03:29'),
(56, 'KARINA SETIA NUR ANDYNI', 'karinasetia@kindem.my.id', NULL, '$2y$10$RxTyFPngBA36zqJoo6wooeSdTZFc0hal2mqZNmXrdMhaHhk/DUxUu', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 06:03:50', '2022-05-29 06:03:50'),
(57, 'KAILA RAHMAH', 'kailarahmah@kindem.my.id', NULL, '$2y$10$tHHfAWOK04apDhpEr934perWadkiZgRhiJ32DrYKfA5qMp8wMkZvC', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 06:04:12', '2022-05-29 06:04:12'),
(58, 'MUHAMMAD ISYA D. R', 'muhammadisya@kindem.my.id', NULL, '$2y$10$Xk3erPO1HuA/Bx2YIZjq5e7zLHDQtOCm8O.cassN8WK78sGE81Mr.', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 06:04:34', '2022-05-29 06:04:34'),
(59, 'R. ERICH TRYSTAN JAVANA', 'erichtrystan@kindem.my.id', NULL, '$2y$10$GM1Ik5b1uMBceVFTi/Hrr.YSGa9RIt2zaFBHYChLSzfMp.F2E3EHK', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 06:04:57', '2022-05-29 06:04:57'),
(60, 'SHENDY AMELLIA PUTRI N', 'shendyamellia@kindem.my.id', NULL, '$2y$10$MN50cjQA5kN2JnVr8nHcm.Os3247KFIWClc3bvch8kM1gTmMVi/ou', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 06:05:18', '2022-05-31 03:13:44'),
(61, 'AIKO JUNIOR KOERNIAWAN', 'aikojunior@kindem.my.id', NULL, '$2y$10$jgezCYTiHpwNSjl7e5eNFOOf8UqS3GNH5cFTVmopCzYR9qBECtEFG', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 06:05:33', '2022-05-29 06:05:33'),
(62, 'AHMAD DEWANDRA F.', 'ahmaddewandra@kindem.my.id', NULL, '$2y$10$bi5UsC3TuPO6y67XCD1DNuRMRoUllLux0XJs.Tvw47.rmx4UB7WOa', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 06:05:58', '2022-05-29 06:05:58'),
(63, 'MUHAMMAD DANISH F. W', 'muhammaddanish@kindem.my.id', NULL, '$2y$10$AAW.P9Z4EePyn/xcWMtw5Of5GUa8XOUagBrbnAZ7YxYZjBzWWmaSO', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 06:06:23', '2022-05-29 06:06:23'),
(64, 'ARIFAH BILQIS NUR R.', 'arifahbilqis@kindem.my.id', NULL, '$2y$10$Nv95V.1xBR.PpglOLYjWMetnkyqtT.kXIGpAxedrmxBJyWbN5QCbm', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 19:15:13', '2022-05-29 19:15:13'),
(65, 'MUHAMMAD REZA A. R', 'muhammadreza@kindem.my.id', NULL, '$2y$10$dVeOoSNBMHJd1kJv.u7jVurlTgsGbr0uw16Qmfpdzr/vGbRjOLi6G', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 19:15:32', '2022-05-29 19:15:32'),
(66, 'NURUN NISA K. F', 'nurunnisa@kindem.my.id', NULL, '$2y$10$96OTGElPdpQTqSHWf81DruIzfarmIWdYV1U/PUm7ayN4kedgE5VRS', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 19:15:51', '2022-05-29 19:15:51'),
(67, 'SALSABILA FITRI A.', 'salsabilafitri@kindem.my.id', NULL, '$2y$10$qfSy1lS8ymj..ku4y5qck.yNr4iSnKi4RDkJpNTXM9vxeI3l0WYiC', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 19:16:11', '2022-05-29 19:16:11'),
(68, 'WILLA MADHUSYA T', 'willamadhusya@kindem.my.id', NULL, '$2y$10$e5BjTCrtgInW19I0A.wFFezLEydLa//WGnrqj2H1867OqgrmFdh.e', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 19:17:06', '2022-05-29 19:17:06'),
(69, 'ADITYA PRADANA', 'adityapradana@kindem.my.id', NULL, '$2y$10$bzAcSD.crmme.3USZ7im9e712ih2doB0MqAzKHu8VOJ89RKYyUSrG', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 19:17:26', '2022-05-29 19:17:26'),
(70, 'MOCHAMMAD HAMZAH', 'mochammadhamzah@kindem.my.id', NULL, '$2y$10$.MiQ7OybmR3FOYJHYDadne8KU/z8f5DXBBlj4hhVU5SlNpWsMHxOO', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 19:17:42', '2022-05-29 19:17:42'),
(71, 'ALMIRA GHALIYA R', 'almiraghaliya@kindem.my.id', NULL, '$2y$10$RpPfbV08w4sMJ8bzTZZ3zepMZ1pmCuO94zpUYPVQzOJmIq8vKm4NG', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 19:18:07', '2022-05-29 19:18:07'),
(72, 'FAREL ACHMAD J', 'farelachmad@kindem.my.id', NULL, '$2y$10$36.jUIEEMQgtx7yBXJQNauHfW2.j7LX7d/Dr3DfeQZ9716cZYPPk6', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 19:18:27', '2022-05-29 19:18:27'),
(73, 'KEVIN CESA D', 'kevincesa@kindem.my.id', NULL, '$2y$10$x.paoRUMb.I5t8NZbZCg7OpUIyIG9f0hE.HxmQHHTZeuuhUyTlxM2', NULL, NULL, 'student', NULL, NULL, NULL, NULL, '2022-05-29 19:18:49', '2022-05-29 19:18:49'),
(74, 'Yoga Meleniawan Pamungkas', 'yogameleniawan@gmail.com', NULL, '$2y$10$ht8AttEp8mwBHXJerjWQE.fhqtOS1ptn862lFZz6.JWyxejOspB22', NULL, NULL, 'student', NULL, NULL, 'assets/images/avatar-3.jpg', '2022-06-06 11:08:52', '2022-05-31 06:17:30', '2022-06-06 11:08:52');

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
('0j1LPZCHOX', '', 1, 0, 'cRfkiLBPtW', 'kd4oos26tl', 3, '2022-06-05 14:01:23', '2022-06-05 23:17:36'),
('0NZwtj7OhE', '', 0, 0, 'JPklU3S95L', '904nkyIb9r', 3, '2022-06-05 17:14:32', '2022-06-05 17:14:32'),
('0V42nZumal', 'CHIN', 1, 1, 'eBmbw188GS', 'kd4oos26tl', 74, '2022-06-05 17:05:22', '2022-06-05 17:06:16'),
('28MMlVOvMS', '', 0, 0, '59wPUs84bg', 'SdGMT5fJGF', 3, '2022-06-05 17:14:33', '2022-06-05 17:14:33'),
('2IQDJBJ2Af', '____________', 1, 0, 'Zl6qNeLqR1', 'PJIVUyKKsx', 3, '2022-06-05 14:01:24', '2022-06-05 23:24:08'),
('2NCwf73UaW', '', 0, 0, 'AjOv6RNLJt', 'rFh7WiWh1U', 3, '2022-06-05 17:14:33', '2022-06-05 17:14:33'),
('3FYeus73JV', '', 0, 0, 'oEr5fITowZ', '904nkyIb9r', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('45lhXcCeZy', '', 0, 0, 'BpvFT8zzrw', 'rFh7WiWh1U', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('5XFeRLWnDp', '', 0, 0, 'ex1YfLx8TO', 'rFh7WiWh1U', 3, '2022-06-05 17:14:33', '2022-06-05 17:14:33'),
('66wOQ3b2DG', 'BROWN', 1, 1, '51ZNWG86bl', 'lIlykI7yix', 74, '2022-06-05 23:27:16', '2022-06-05 23:27:43'),
('6FJorwoaB7', '', 0, 0, 'Qb8Iu8HoLZ', 'SdGMT5fJGF', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('6ju300c0Ot', 'HEAD', 1, 1, 'VOxlbP7QNq', 'kd4oos26tl', 74, '2022-06-05 17:05:22', '2022-06-05 17:07:00'),
('6ycq0H5Wa6', '', 0, 0, 'A3ouuriVfh', 'ZR8Oom877B', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('7JQo3umLTH', '____________', 1, 0, 'a7WqzS57Tv', 'lIlykI7yix', 74, '2022-06-05 23:27:16', '2022-06-05 23:27:41'),
('7SLXAw1k2s', '', 0, 0, 'sSdPzUqy66', '904nkyIb9r', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('8qcfNeYJJ7', '', 0, 0, 'aE0XfZyEJf', 'rFh7WiWh1U', 3, '2022-06-05 17:14:33', '2022-06-05 17:14:33'),
('8ZBWmrKIf4', '____________', 1, 0, '4hMc2krnHT', 'lIlykI7yix', 3, '2022-06-05 23:23:06', '2022-06-05 23:23:31'),
('99tF6tARmM', '', 0, 0, 'xsuB70vtRM', 'SdGMT5fJGF', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('9i4qKrbZW6', '', 0, 0, 'Yey0gSigTs', 'ZR8Oom877B', 3, '2022-06-05 17:14:33', '2022-06-05 17:14:33'),
('9yX3PTJOXX', '', 0, 0, 'ek22qRrWvj', 'rFh7WiWh1U', 3, '2022-06-05 17:14:33', '2022-06-05 17:14:33'),
('A6wYwxDOlH', '', 0, 0, '1L4Jv42L69', 'SdGMT5fJGF', 3, '2022-06-05 17:14:33', '2022-06-05 17:14:33'),
('ANvwXTTTaS', '', 0, 0, 'yIhhbTMc0p', '904nkyIb9r', 3, '2022-06-05 17:14:32', '2022-06-05 17:14:32'),
('AulbXPWbNL', '', 0, 0, 'YFNEO6ZHPc', '904nkyIb9r', 3, '2022-06-05 17:14:32', '2022-06-05 17:14:32'),
('azfJtlK10H', '____________', 1, 0, '9BHzyskTvL', 'lIlykI7yix', 3, '2022-06-05 23:23:06', '2022-06-05 23:23:31'),
('B8TnQOXpCI', '', 0, 0, 'aCrqLO6XmF', '904nkyIb9r', 3, '2022-06-05 17:14:32', '2022-06-05 17:14:32'),
('bgNgHV9HNo', '', 0, 0, 'CVcHAiLt2v', 'rFh7WiWh1U', 3, '2022-06-05 17:14:33', '2022-06-05 17:14:33'),
('bsic8B9Txv', '', 0, 0, '4O44echdAz', 'rFh7WiWh1U', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('C0I3jMI7x3', 'GREY', 1, 1, '7JN7EFPHeN', 'lIlykI7yix', 74, '2022-06-05 23:27:16', '2022-06-05 23:31:12'),
('CD3ibLEbiW', '____________', 1, 0, '9I1ltDpZwe', 'kd4oos26tl', 3, '2022-06-05 14:01:23', '2022-06-05 23:17:55'),
('CibhkurkPe', '', 0, 0, 'jhmisOpZIs', 'ZR8Oom877B', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('CPri3Tgh10', '____________', 1, 0, '4hMc2krnHT', 'lIlykI7yix', 74, '2022-06-05 23:27:16', '2022-06-05 23:27:40'),
('cskxmy2dO2', 'EYES', 1, 1, 'HyKiRjtmo0', 'kd4oos26tl', 74, '2022-06-05 17:05:22', '2022-06-05 17:07:11'),
('culpCTgZm2', '', 0, 0, 'TwnsGwRz6l', 'SdGMT5fJGF', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('d28uDIPacs', '', 0, 0, 'jHectIlG2z', 'SdGMT5fJGF', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('DbxysqXAJA', 'BLUE', 1, 1, '6PXkZ58QOz', 'lIlykI7yix', 3, '2022-06-05 23:23:06', '2022-06-05 23:23:30'),
('DEMq0MnsFe', '', 0, 0, 'P6z6xOwFSx', '904nkyIb9r', 3, '2022-06-05 17:14:32', '2022-06-05 17:14:32'),
('Dg0Vp4eGl6', 'BROWN', 1, 1, '51ZNWG86bl', 'lIlykI7yix', 3, '2022-06-05 23:23:06', '2022-06-05 23:23:25'),
('DGJvFUlqbs', '', 0, 0, 'JPklU3S95L', '904nkyIb9r', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('DITs1nm12P', '', 0, 0, 'YLuLNV15Sk', 'rFh7WiWh1U', 3, '2022-06-05 17:14:33', '2022-06-05 17:14:33'),
('dJiJldlhg5', '____________', 1, 0, 'OsRRP31KSL', 'PJIVUyKKsx', 3, '2022-06-05 14:01:24', '2022-06-05 23:23:59'),
('Dl7cRqG3NO', '____________', 1, 0, 'frjS2dHa5b', 'PJIVUyKKsx', 74, '2022-06-05 22:52:01', '2022-06-05 22:52:47'),
('dQ46JrJaq9', 'TOOTH', 1, 1, 'mJCkv2fhTN', 'kd4oos26tl', 74, '2022-06-05 17:05:22', '2022-06-05 17:07:05'),
('DqmjQpoJ14', '', 0, 0, 'BpvFT8zzrw', 'rFh7WiWh1U', 3, '2022-06-05 17:14:33', '2022-06-05 17:14:33'),
('EpYwpi8V3P', 'EYES', 1, 1, 'HyKiRjtmo0', 'kd4oos26tl', 3, '2022-06-05 14:01:23', '2022-06-05 23:17:42'),
('eQt52iKefs', '____________', 1, 0, 'MFwfxfJcVK', 'PJIVUyKKsx', 3, '2022-06-05 14:01:24', '2022-06-05 23:24:03'),
('ESksf1TWUX', '', 0, 0, 'EE0U1Y8nA3', 'SdGMT5fJGF', 3, '2022-06-05 17:14:33', '2022-06-05 17:14:33'),
('eydWO44P4N', '', 0, 0, 'xsuB70vtRM', 'SdGMT5fJGF', 3, '2022-06-05 17:14:33', '2022-06-05 17:14:33'),
('Ez3WHDJyg1', 'LEG', 1, 1, 'KbmVv2aztb', 'kd4oos26tl', 3, '2022-06-05 14:01:23', '2022-06-05 23:17:45'),
('FfBopyg7By', '____________', 1, 0, '9BHzyskTvL', 'lIlykI7yix', 74, '2022-06-05 23:27:16', '2022-06-05 23:27:44'),
('fM3bAS0lc9', '____________', 1, 0, 'OsRRP31KSL', 'PJIVUyKKsx', 74, '2022-06-05 22:52:01', '2022-06-05 22:52:44'),
('fsKZrMWvUo', '', 0, 0, 'ral1OmVDf8', 'SdGMT5fJGF', 3, '2022-06-05 17:14:33', '2022-06-05 17:14:33'),
('FX4y4ujFGM', '', 1, 0, 'xU6P2Qw3QV', 'kd4oos26tl', 74, '2022-06-05 17:05:22', '2022-06-05 17:08:10'),
('G8YqRK7mR8', '', 0, 0, 'aCrqLO6XmF', '904nkyIb9r', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('gHMnt7hq9p', 'HAND', 1, 1, '5kvk6W2rDf', 'kd4oos26tl', 74, '2022-06-05 17:05:22', '2022-06-05 17:07:03'),
('gmAxs4Y8wn', '', 0, 0, 'Hq3e7lETe7', 'SdGMT5fJGF', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('GmQZcEtHhn', '____________', 1, 0, 'vfVN6DgsLK', 'PJIVUyKKsx', 3, '2022-06-05 14:01:24', '2022-06-05 23:23:58'),
('gNgX8ujVX4', '', 0, 0, 'AZt1trsK1u', 'rFh7WiWh1U', 3, '2022-06-05 17:14:33', '2022-06-05 17:14:33'),
('GpoJsx47AN', '', 0, 0, '59wPUs84bg', 'SdGMT5fJGF', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('gqtUS0TuF1', '', 0, 0, 'YFNEO6ZHPc', '904nkyIb9r', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('GtXuA26o2z', 'PIG', 1, 1, '4XnJkeskig', 'PJIVUyKKsx', 74, '2022-06-05 22:52:00', '2022-06-05 22:52:37'),
('haQ3Hckxar', '', 0, 0, 'xcYWfJV84E', 'uMq6cenpUS', 74, '2022-06-06 11:06:29', '2022-06-06 11:06:29'),
('HKnXWZ0BjH', 'ORANGE', 1, 1, 'HtszrGWpx8', 'lIlykI7yix', 74, '2022-06-05 23:27:16', '2022-06-05 23:27:36'),
('hwhwdShiBx', 'ORANGE', 1, 1, 'HtszrGWpx8', 'lIlykI7yix', 3, '2022-06-05 23:23:06', '2022-06-05 23:23:22'),
('HwygOyNuYS', '', 0, 0, 'HfOPEiC6Hu', 'uMq6cenpUS', 74, '2022-06-06 11:06:29', '2022-06-06 11:06:29'),
('i5fzQ1Shqr', '', 0, 0, 'ilPthBoLyd', 'ZR8Oom877B', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('IbR0jS6uTw', '', 0, 0, 'u4nMqUaJCh', 'SdGMT5fJGF', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('IdDVl1XaPY', '', 0, 0, 'ex1YfLx8TO', 'rFh7WiWh1U', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('IMrC9BYVBE', '', 0, 0, '2nNu3eNwR3', 'rFh7WiWh1U', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('iONUoB360q', '', 0, 0, 'L7h1UEmT8K', 'rFh7WiWh1U', 3, '2022-06-05 17:14:33', '2022-06-05 17:14:33'),
('j4wiybguao', '', 0, 0, '7hcJj4W4bo', 'SdGMT5fJGF', 3, '2022-06-05 17:14:33', '2022-06-05 17:14:33'),
('J76A6F4pXZ', 'nose', 1, 1, 'cRfkiLBPtW', 'kd4oos26tl', 74, '2022-06-05 17:05:22', '2022-06-05 17:07:26'),
('jMBoL8SHCR', '____________', 1, 0, 'P90JBJTvO5', 'kd4oos26tl', 3, '2022-06-05 14:01:23', '2022-06-05 23:17:39'),
('jNme6U0Ghb', '', 0, 0, 'L7h1UEmT8K', 'rFh7WiWh1U', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('k1M0ttSNRw', '____________', 1, 0, 'Z27kbytSeW', 'PJIVUyKKsx', 3, '2022-06-05 14:01:24', '2022-06-05 23:24:03'),
('kPtB2Fqwrh', 'HAND', 1, 1, '5kvk6W2rDf', 'kd4oos26tl', 3, '2022-06-05 14:01:23', '2022-06-05 23:17:53'),
('KyhQZWNVjn', '____________', 1, 0, '6LShPoNxwp', 'lIlykI7yix', 3, '2022-06-05 23:23:06', '2022-06-05 23:23:27'),
('lkuVzOMzgZ', '', 0, 0, 'sSdPzUqy66', '904nkyIb9r', 3, '2022-06-05 17:14:32', '2022-06-05 17:14:32'),
('lvIL9aPfRu', '____________', 1, 0, 'cIVagB3Zzv', 'lIlykI7yix', 74, '2022-06-05 23:27:16', '2022-06-05 23:27:34'),
('mHFFqXQ45o', '____________', 1, 0, 'xU6P2Qw3QV', 'kd4oos26tl', 3, '2022-06-05 14:01:23', '2022-06-05 23:17:46'),
('Mi5gAMYVrh', '', 0, 0, 'att2Lg5hHz', 'ZR8Oom877B', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('mRvkxcCPfL', '', 0, 0, 'xGHI66dbxz', 'uMq6cenpUS', 74, '2022-06-06 11:06:29', '2022-06-06 11:06:29'),
('mV6g9Dpsqg', '', 0, 0, 'AbYLGPHBIV', 'rFh7WiWh1U', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('n3iUwlRdqu', '', 0, 0, 'Zq6ndJVWV2', 'uMq6cenpUS', 74, '2022-06-06 11:06:29', '2022-06-06 11:06:29'),
('N4oWcMhbs4', '', 0, 0, 'att2Lg5hHz', 'ZR8Oom877B', 3, '2022-06-05 17:14:33', '2022-06-05 17:14:33'),
('nGos6pbxBA', 'DONKEY', 1, 1, 'plkXtpAfgA', 'PJIVUyKKsx', 3, '2022-06-05 14:01:24', '2022-06-05 23:24:07'),
('NqtYxHdPzx', '', 0, 0, 'TByWZQucKq', 'rFh7WiWh1U', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('nv0LveDS5Z', '', 0, 0, 'eOTP2S7Tkp', '904nkyIb9r', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('o061F91mV0', '____________', 1, 0, 'cIVagB3Zzv', 'lIlykI7yix', 3, '2022-06-05 23:23:06', '2022-06-05 23:23:38'),
('O2LlNDtQ50', '', 0, 0, 'A3ouuriVfh', 'ZR8Oom877B', 3, '2022-06-05 17:14:33', '2022-06-05 17:14:33'),
('obYhHFtGus', '', 0, 0, 'hTFM8kt2eM', 'rFh7WiWh1U', 3, '2022-06-05 17:14:33', '2022-06-05 17:14:33'),
('oJKb4pHgNn', 'DUCK', 1, 1, 'sT1rMgjijL', 'PJIVUyKKsx', 74, '2022-06-05 22:52:00', '2022-06-05 22:52:42'),
('OJZJQJNL19', 'GREY', 1, 1, '7JN7EFPHeN', 'lIlykI7yix', 3, '2022-06-05 23:23:06', '2022-06-05 23:23:37'),
('pe3MvW1lYr', '', 0, 0, 'EE0U1Y8nA3', 'SdGMT5fJGF', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('peZvLFQqdq', '', 0, 0, 'Qb8Iu8HoLZ', 'SdGMT5fJGF', 3, '2022-06-05 17:14:33', '2022-06-05 17:14:33'),
('PjZdxrUfyX', '', 0, 0, 'SM5oLGzJBC', 'SdGMT5fJGF', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('PK10O2MBn1', '', 0, 0, 'jhmisOpZIs', 'ZR8Oom877B', 3, '2022-06-05 17:14:33', '2022-06-05 17:14:33'),
('PZVZBCNGNd', 'EAR', 1, 1, '1cAstesWzI', 'kd4oos26tl', 74, '2022-06-05 17:05:22', '2022-06-05 17:07:07'),
('qyIhlsvT4z', '', 0, 0, 'Yey0gSigTs', 'ZR8Oom877B', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('Rf88cNHztF', '', 0, 0, 'P6z6xOwFSx', '904nkyIb9r', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('RkJW1ZP1vH', '____________', 1, 0, 'hdRi8qn5fL', 'PJIVUyKKsx', 74, '2022-06-05 22:52:00', '2022-06-05 22:52:39'),
('RLPlvYHGTQ', '', 0, 0, 'ASmIlthPot', 'SdGMT5fJGF', 3, '2022-06-05 17:14:33', '2022-06-05 17:14:33'),
('shzzurxPSI', '', 0, 0, 'eOTP2S7Tkp', '904nkyIb9r', 3, '2022-06-05 17:14:32', '2022-06-05 17:14:32'),
('SIKNUMnQjY', 'WHITE', 1, 1, 'YCGTHZkrZp', 'lIlykI7yix', 3, '2022-06-05 23:23:06', '2022-06-05 23:23:34'),
('SqZGSNuNwA', '', 0, 0, 'D4N3qU9WTO', 'rFh7WiWh1U', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('SYc8cBnrh7', '____________', 1, 0, '6LShPoNxwp', 'lIlykI7yix', 74, '2022-06-05 23:27:16', '2022-06-05 23:27:39'),
('syIG72qFSr', '', 0, 0, 'P32Lww6dtJ', 'ZR8Oom877B', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('T33BmU4ed2', '', 0, 0, 'SM5oLGzJBC', 'SdGMT5fJGF', 3, '2022-06-05 17:14:33', '2022-06-05 17:14:33'),
('tGMjNR87fK', '', 0, 0, 'mfFVW6ouzl', 'uMq6cenpUS', 74, '2022-06-06 11:06:29', '2022-06-06 11:06:29'),
('U6jDVcd0Qw', '', 0, 0, 'gxA2q90fsy', 'rFh7WiWh1U', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('uDPyTBCP3M', 'SNAKE', 1, 1, '5co70HqWwe', 'PJIVUyKKsx', 74, '2022-06-05 22:52:00', '2022-06-05 22:52:46'),
('ue6ONClVzx', '', 0, 0, 'P32Lww6dtJ', 'ZR8Oom877B', 3, '2022-06-05 17:14:33', '2022-06-05 17:14:33'),
('uiBChaD23b', 'HEAD', 1, 1, 'VOxlbP7QNq', 'kd4oos26tl', 3, '2022-06-05 14:01:23', '2022-06-05 23:17:51'),
('uO7OB63MoL', 'CHIN', 1, 1, 'eBmbw188GS', 'kd4oos26tl', 3, '2022-06-05 14:01:23', '2022-06-05 23:17:48'),
('VqQ1hSVq65', '____________', 1, 0, 'cb4I7KufCQ', 'lIlykI7yix', 3, '2022-06-05 23:23:06', '2022-06-05 23:23:27'),
('vt1VZ8hZAG', '', 0, 0, 'WAQaMl0NjA', '904nkyIb9r', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('wdL9BRMx6u', 'PARENT', 1, 1, 'mH3aEp4IBQ', '904nkyIb9r', 3, '2022-06-05 17:14:33', '2022-06-06 11:25:53'),
('WH4JEz8NWa', 'BLUE', 1, 1, '6PXkZ58QOz', 'lIlykI7yix', 74, '2022-06-05 23:27:16', '2022-06-05 23:31:14'),
('WhryBfrxsi', '____________', 1, 0, 'WhO73zidGJ', 'PJIVUyKKsx', 74, '2022-06-05 22:52:00', '2022-06-05 22:52:43'),
('WnvWOitv5a', '', 0, 0, 'WjoTKcy55E', 'uMq6cenpUS', 74, '2022-06-06 11:06:29', '2022-06-06 11:06:29'),
('WOSCGZBv4P', '', 0, 0, 'ilPthBoLyd', 'ZR8Oom877B', 3, '2022-06-05 17:14:33', '2022-06-05 17:14:33'),
('wWj7hEuByt', '', 0, 0, 'oEr5fITowZ', '904nkyIb9r', 3, '2022-06-05 17:14:33', '2022-06-05 17:14:33'),
('xBPq8dr63m', '____________', 1, 0, '1KpEyHMMAS', 'PJIVUyKKsx', 3, '2022-06-05 14:01:24', '2022-06-05 23:23:57'),
('XcdTLSQAOv', '____________', 1, 0, '1KpEyHMMAS', 'PJIVUyKKsx', 74, '2022-06-05 22:52:00', '2022-06-05 22:52:40'),
('XHew3YKu0U', '', 0, 0, 'ASmIlthPot', 'SdGMT5fJGF', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('xIBhQVgE5V', 'MOUTH', 1, 1, 'fYyaE7aLNn', 'kd4oos26tl', 74, '2022-06-05 17:05:22', '2022-06-05 17:07:09'),
('xM36BIeUp8', '____________', 1, 0, 'OIcDtdb9ha', 'PJIVUyKKsx', 74, '2022-06-05 22:52:01', '2022-06-05 22:52:48'),
('XmAdVGQBxX', 'EAR', 1, 1, '1cAstesWzI', 'kd4oos26tl', 3, '2022-06-05 14:01:23', '2022-06-05 23:17:39'),
('XVJDtDQDye', '____________', 1, 0, 'cb4I7KufCQ', 'lIlykI7yix', 74, '2022-06-05 23:27:16', '2022-06-05 23:27:38'),
('Xy0uCi0H0Z', 'LEG', 1, 1, 'KbmVv2aztb', 'kd4oos26tl', 74, '2022-06-05 17:05:22', '2022-06-05 17:06:13'),
('y4LIBFdpvE', '____________', 1, 0, 'Wso4WhHJAV', 'PJIVUyKKsx', 3, '2022-06-05 14:01:24', '2022-06-05 23:24:01'),
('yCTxcWgEQ9', '', 0, 0, 'U0Zo4eChAb', '904nkyIb9r', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('YgQ7iSVEFQ', '____________', 1, 0, 'MFwfxfJcVK', 'PJIVUyKKsx', 74, '2022-06-05 22:52:01', '2022-06-05 22:52:50'),
('YlCvonXwQQ', '', 0, 0, 'U0Zo4eChAb', '904nkyIb9r', 3, '2022-06-05 17:14:33', '2022-06-05 17:14:33'),
('Z1jBqvGUZy', '', 0, 0, 'yIhhbTMc0p', '904nkyIb9r', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('Z3sNvGzmWu', '', 1, 0, 'PgFiASeATt', 'PJIVUyKKsx', 3, '2022-06-05 14:01:24', '2022-06-05 23:23:56'),
('zisuED90Ey', '', 0, 0, 'aE0XfZyEJf', 'rFh7WiWh1U', 74, '2022-06-05 23:16:28', '2022-06-05 23:16:28'),
('ZO6lI6rvIy', '____________', 1, 0, 'qLwLkg3CKu', 'PJIVUyKKsx', 3, '2022-06-05 14:01:24', '2022-06-05 23:24:00'),
('zuInOGGeAT', '', 0, 0, 'TwnsGwRz6l', 'SdGMT5fJGF', 3, '2022-06-05 17:14:33', '2022-06-05 17:14:33');

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
('1bwk7nRnVi', 69, '70SFBb1pje', 0, '2022-05-29 19:17:26', '2022-05-29 19:17:26'),
('2CQfzeTdqg', 59, '70SFBb1pje', 0, '2022-05-29 06:04:57', '2022-05-29 06:04:57'),
('2iKcC9p3AM', 17, '70SFBb1pje', 0, '2022-05-29 05:49:16', '2022-05-29 05:49:16'),
('2naWkHUs6C', 58, '70SFBb1pje', 0, '2022-05-29 06:04:34', '2022-05-29 06:04:34'),
('2vRq6eylul', 6, '70SFBb1pje', 0, '2022-05-29 05:42:12', '2022-05-29 05:42:12'),
('2VzHqk6RxQ', 20, '70SFBb1pje', 0, '2022-05-29 05:50:30', '2022-05-29 05:50:30'),
('31goOTYpx8', 65, '70SFBb1pje', 0, '2022-05-29 19:15:32', '2022-05-29 19:15:32'),
('3LHkN63n1m', 51, '70SFBb1pje', 0, '2022-05-29 06:02:08', '2022-05-29 06:02:08'),
('4rrKOvzlkz', 40, '70SFBb1pje', 0, '2022-05-29 05:58:47', '2022-05-29 05:58:47'),
('55QxJ0OwZO', 54, '70SFBb1pje', 0, '2022-05-29 06:03:05', '2022-05-29 06:03:05'),
('5Rl3SvZHFu', 11, '70SFBb1pje', 0, '2022-05-29 05:46:53', '2022-05-29 05:46:53'),
('7GfyQp4HdQ', 66, '70SFBb1pje', 0, '2022-05-29 19:15:51', '2022-05-29 19:15:51'),
('7Z4ppA3S34', 31, '70SFBb1pje', 0, '2022-05-29 05:55:40', '2022-05-29 05:55:40'),
('be2v59EiRu', 19, '70SFBb1pje', 0, '2022-05-29 05:50:05', '2022-05-29 05:50:05'),
('bzjuKBu8aS', 62, '70SFBb1pje', 0, '2022-05-29 06:05:58', '2022-05-29 06:05:58'),
('cM4ZyUDXQt', 7, '70SFBb1pje', 0, '2022-05-29 05:43:17', '2022-05-29 05:43:17'),
('cX2UCrAPxK', 9, '70SFBb1pje', 0, '2022-05-29 05:46:09', '2022-05-29 05:46:09'),
('D9N1rwhlFC', 61, '70SFBb1pje', 0, '2022-05-29 06:05:33', '2022-05-29 06:05:33'),
('DB1qAUC7S1', 37, '70SFBb1pje', 0, '2022-05-29 05:57:42', '2022-05-29 05:57:42'),
('EumVXOWhHk', 28, '70SFBb1pje', 0, '2022-05-29 05:54:23', '2022-05-29 05:54:23'),
('EYkmZlUiyi', 70, '70SFBb1pje', 0, '2022-05-29 19:17:42', '2022-05-29 19:17:42'),
('FK3ROMxjeF', 74, '1PkJ2SfK62', 16, '2022-05-31 06:17:30', '2022-06-05 23:31:14'),
('GEGT6WN8AZ', 27, '70SFBb1pje', 0, '2022-05-29 05:54:04', '2022-05-29 05:54:04'),
('gfPJhYMSVu', 35, '70SFBb1pje', 0, '2022-05-29 05:56:57', '2022-05-29 05:56:57'),
('GTUY0SFrtJ', 26, '70SFBb1pje', 0, '2022-05-29 05:53:46', '2022-05-29 05:53:46'),
('h1Q9COuVIB', 3, '70SFBb1pje', 12, '2022-06-03 10:20:23', '2022-06-05 23:24:08'),
('hrDz9MBaOL', 45, '70SFBb1pje', 0, '2022-05-29 06:00:17', '2022-05-29 06:00:17'),
('hSG4BwU7aM', 53, '70SFBb1pje', 0, '2022-05-29 06:02:45', '2022-05-29 06:02:45'),
('iEfYf0QbSo', 73, '70SFBb1pje', 0, '2022-05-29 19:18:49', '2022-05-29 19:18:49'),
('IOzC5sp7vE', 14, '70SFBb1pje', 0, '2022-05-29 05:48:09', '2022-05-29 05:48:09'),
('IYfww6hGDh', 25, '70SFBb1pje', 0, '2022-05-29 05:53:30', '2022-05-29 05:53:30'),
('jO0VLewUBE', 71, '70SFBb1pje', 0, '2022-05-29 19:18:07', '2022-05-29 19:18:07'),
('jy6beyOQrQ', 15, '70SFBb1pje', 0, '2022-05-29 05:48:32', '2022-05-29 05:48:32'),
('k4xLMsWsGi', 60, '70SFBb1pje', 0, '2022-05-29 06:05:18', '2022-05-29 06:05:18'),
('kz4nnH8uci', 34, '70SFBb1pje', 0, '2022-05-29 05:56:34', '2022-05-29 05:56:34'),
('lbdnhAkLpd', 67, '70SFBb1pje', 0, '2022-05-29 19:16:11', '2022-05-29 19:16:11'),
('LrXEtB26v7', 48, '70SFBb1pje', 0, '2022-05-29 06:01:14', '2022-05-29 06:01:14'),
('Myvzyog5gN', 21, '70SFBb1pje', 0, '2022-05-29 05:50:57', '2022-05-29 05:50:57'),
('ngSF99wEFN', 38, '70SFBb1pje', 0, '2022-05-29 05:58:08', '2022-05-29 05:58:08'),
('Nyejp9P5Ky', 57, '70SFBb1pje', 0, '2022-05-29 06:04:12', '2022-05-29 06:04:12'),
('o0EZZ5qjwK', 16, '70SFBb1pje', 0, '2022-05-29 05:48:58', '2022-05-29 05:48:58'),
('oDON1MZ3zq', 56, '70SFBb1pje', 0, '2022-05-29 06:03:50', '2022-05-29 06:03:50'),
('odXGUvllgC', 49, '70SFBb1pje', 0, '2022-05-29 06:01:33', '2022-05-29 06:01:33'),
('p2bC2voCkH', 33, '70SFBb1pje', 0, '2022-05-29 05:56:10', '2022-05-29 05:56:10'),
('Pd6Rikt3kL', 52, '70SFBb1pje', 0, '2022-05-29 06:02:26', '2022-05-29 06:02:26'),
('pVCMx1MKxD', 68, '70SFBb1pje', 0, '2022-05-29 19:17:06', '2022-05-29 19:17:06'),
('quCOB7m51C', 32, '70SFBb1pje', 0, '2022-05-29 05:55:52', '2022-05-29 05:55:52'),
('S6ZZnXc3h7', 22, '70SFBb1pje', 0, '2022-05-29 05:51:16', '2022-05-29 05:51:16'),
('Sj5LwCsU72', 64, '70SFBb1pje', 0, '2022-05-29 19:15:13', '2022-05-29 19:15:13'),
('skwE3kABaj', 46, '70SFBb1pje', 0, '2022-05-29 06:00:35', '2022-05-29 06:00:35'),
('SnYFJrRaTm', 63, '70SFBb1pje', 0, '2022-05-29 06:06:23', '2022-05-29 06:06:23'),
('sQr9rKpBeN', 42, '70SFBb1pje', 0, '2022-05-29 05:59:22', '2022-05-29 05:59:22'),
('SSprfsdWlC', 36, '70SFBb1pje', 0, '2022-05-29 05:57:25', '2022-05-29 05:57:25'),
('tlIRqWAf4N', 44, '70SFBb1pje', 0, '2022-05-29 05:59:57', '2022-05-29 05:59:57'),
('TOBAcMjg1L', 72, '70SFBb1pje', 0, '2022-05-29 19:18:27', '2022-05-29 19:18:27'),
('TV3Xqr6VSI', 8, '70SFBb1pje', 0, '2022-05-29 05:45:33', '2022-05-29 05:45:33'),
('uaDa45bwha', 39, '70SFBb1pje', 0, '2022-05-29 05:58:30', '2022-05-29 05:58:30'),
('Ug6t5fcj2c', 47, '70SFBb1pje', 0, '2022-05-29 06:00:53', '2022-05-29 06:00:53'),
('wlKUFFFdwZ', 24, '70SFBb1pje', 0, '2022-05-29 05:53:04', '2022-05-29 05:53:04'),
('WM36v3Zv2M', 30, '70SFBb1pje', 0, '2022-05-29 05:55:11', '2022-05-29 05:55:11'),
('wnkQRbyCQb', 23, '70SFBb1pje', 0, '2022-05-29 05:52:39', '2022-05-29 05:52:39'),
('x5nJAOwXky', 43, '70SFBb1pje', 0, '2022-05-29 05:59:39', '2022-05-29 05:59:39'),
('XdJzfdNe7n', 55, '70SFBb1pje', 0, '2022-05-29 06:03:29', '2022-05-29 06:03:29'),
('YvOp8VqC32', 18, '70SFBb1pje', 0, '2022-05-29 05:49:39', '2022-05-29 05:49:39'),
('yxQTvD1svu', 50, '70SFBb1pje', 0, '2022-05-29 06:01:53', '2022-05-29 06:01:53'),
('z2JtO1tOq1', 13, '70SFBb1pje', 0, '2022-05-29 05:47:42', '2022-05-29 05:47:42'),
('Z4px9xrrRk', 41, '70SFBb1pje', 0, '2022-05-29 05:59:05', '2022-05-29 05:59:05'),
('zacgCnOIZF', 29, '70SFBb1pje', 0, '2022-05-29 05:54:52', '2022-05-29 05:54:52'),
('zd21HyFME0', 10, '70SFBb1pje', 0, '2022-05-29 05:46:27', '2022-05-29 05:46:27'),
('ZjoUU2NuOs', 12, '70SFBb1pje', 0, '2022-05-29 05:47:20', '2022-05-29 05:47:20');

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
('1IaTMbOhUX', 74, '2022-06-05 17:13:36', '2022-06-05 17:13:36'),
('5aBwC0GyAJ', 3, '2022-06-05 17:22:06', '2022-06-05 17:22:06'),
('5huOxmpC7y', 74, '2022-06-05 17:04:21', '2022-06-05 17:04:21'),
('8j58TsGXqT', 74, '2022-06-05 23:31:17', '2022-06-05 23:31:17'),
('8WPUXHEeq3', 3, '2022-06-06 11:23:09', '2022-06-06 11:23:09'),
('Aee729GYyr', 3, '2022-06-05 23:23:40', '2022-06-05 23:23:40'),
('b8y033UYrL', 74, '2022-06-05 17:13:10', '2022-06-05 17:13:10'),
('bo6VuDA0T0', 74, '2022-06-05 17:08:02', '2022-06-05 17:08:02'),
('BxNLED9IKc', 3, '2022-06-06 13:09:35', '2022-06-06 13:09:35'),
('CJJRm8ECjo', 74, '2022-06-06 11:07:08', '2022-06-06 11:07:08'),
('comTDoAirC', 74, '2022-06-05 17:11:41', '2022-06-05 17:11:41'),
('eHtvXR2rN3', 3, '2022-06-05 22:50:50', '2022-06-05 22:50:50'),
('epqgkoaIt6', 74, '2022-06-05 15:17:27', '2022-06-05 15:17:27'),
('EsvRSPdfNm', 74, '2022-06-05 17:08:25', '2022-06-05 17:08:25'),
('fP9tnTc6b7', 74, '2022-06-05 16:02:56', '2022-06-05 16:02:56'),
('G5vSytfVLC', 3, '2022-06-05 13:59:32', '2022-06-05 13:59:32'),
('hmp1fmoUse', 3, '2022-06-05 15:09:17', '2022-06-05 15:09:17'),
('i4OCHOlrs7', 3, '2022-06-05 16:54:41', '2022-06-05 16:54:41'),
('J9Kp9rHrg4', 3, '2022-06-05 23:17:56', '2022-06-05 23:17:56'),
('lMcTGa45p3', 74, '2022-06-05 15:43:48', '2022-06-05 15:43:48'),
('nBh4Qgwftc', 74, '2022-06-05 15:26:34', '2022-06-05 15:26:34'),
('NEgAKPl2xZ', 74, '2022-06-05 17:08:12', '2022-06-05 17:08:12'),
('p0oAFGtlEm', 74, '2022-06-05 22:52:52', '2022-06-05 22:52:52'),
('qsnwiANrDS', 74, '2022-06-05 16:40:43', '2022-06-05 16:40:43'),
('rIkqptQHD6', 74, '2022-06-05 23:27:51', '2022-06-05 23:27:51'),
('RkE1uZ9LBy', 3, '2022-06-05 15:09:39', '2022-06-05 15:09:39'),
('rTRNW8oHdi', 3, '2022-06-05 23:17:12', '2022-06-05 23:17:12'),
('SbnZKNm3Rz', 3, '2022-06-05 15:01:59', '2022-06-05 15:01:59'),
('SWwUVol6GK', 74, '2022-06-05 22:51:15', '2022-06-05 22:51:15'),
('tK1mQAD2pF', 74, '2022-06-05 23:16:51', '2022-06-05 23:16:51'),
('tMLW2awosr', 3, '2022-06-05 17:21:52', '2022-06-05 17:21:52'),
('vdo0LlVE8n', 74, '2022-06-05 15:15:22', '2022-06-05 15:15:22'),
('vPxSSWpucS', 74, '2022-06-06 04:16:44', '2022-06-06 04:16:44'),
('VqFQ62XMuw', 3, '2022-06-05 23:24:10', '2022-06-05 23:24:10'),
('wBHxQZBYaB', 3, '2022-06-05 17:13:19', '2022-06-05 17:13:19'),
('WMaWdh19ap', 3, '2022-06-05 16:48:45', '2022-06-05 16:48:45'),
('wWsBXarIXI', 74, '2022-06-06 04:17:00', '2022-06-06 04:17:00'),
('wYNy8bDIx3', 3, '2022-06-05 17:14:19', '2022-06-05 17:14:19'),
('X1jHyXhl2D', 3, '2022-06-05 16:54:19', '2022-06-05 16:54:19'),
('XwnK024nKF', 3, '2022-06-05 17:14:09', '2022-06-05 17:14:09'),
('YMPoLXNH9d', 74, '2022-06-06 11:06:15', '2022-06-06 11:06:15'),
('YSJn3y39ju', 74, '2022-06-05 16:11:55', '2022-06-05 16:11:55'),
('YuT9iRQRSM', 3, '2022-06-05 17:15:45', '2022-06-05 17:15:45'),
('ZG0Ha2VYKG', 74, '2022-06-05 23:26:52', '2022-06-05 23:26:52'),
('ZtGRDHdIyZ', 3, '2022-06-05 17:20:13', '2022-06-05 17:20:13'),
('ZYybk8l7A7', 74, '2022-06-05 23:16:23', '2022-06-05 23:16:23');

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
('2fjf3DBwVL', 'courses-main', '1', 3, '2022-06-05 23:17:18', '2022-06-05 23:17:18'),
('Dl2PJ9ZrUn', 'chapter', '1', 74, '2022-06-05 17:05:22', '2022-06-05 17:05:22'),
('fUe6e3dVZi', 'courses-main', '1', 74, '2022-06-05 17:05:27', '2022-06-05 17:05:27'),
('gmXnPOXYbl', 'home-main', '1', 3, '2022-06-05 13:59:33', '2022-06-05 13:59:33'),
('lFg8CfHZPP', 'home-main', '1', 74, '2022-06-05 15:15:22', '2022-06-05 15:15:22'),
('lrWwDU2Es4', 'chapter', '1', 3, '2022-06-05 14:01:25', '2022-06-05 14:01:25');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

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
