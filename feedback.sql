-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 27 2024 г., 18:52
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `guest_book_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `feedback` text NOT NULL,
  `user_ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`id`, `username`, `email`, `feedback`, `user_ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(9, 'johnDoe123', 'john.doe@example.com', 'Great service, very helpful staff.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 10:07:39', '2024-06-27 10:07:39'),
(10, 'emilySmith22', 'emily.smith@example.com', 'Fast response and excellent customer support.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 10:08:07', '2024-06-27 10:08:07'),
(11, 'davidBrown85', 'david.brown@example.com', 'Love the product, it works perfectly!', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 10:08:33', '2024-06-27 10:08:33'),
(12, 'sarahJackson94', 'sarah.jackson@example.com', 'Quick delivery and easy setup.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 10:09:00', '2024-06-27 10:09:00'),
(13, 'michaelWilson77', 'michael.wilson@example.com', 'Highly recommended, great value for money.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 10:09:27', '2024-06-27 10:09:27'),
(14, 'lisaRoberts28', 'lisa.roberts@example.com', 'Very user-friendly interface, intuitive design.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 10:09:50', '2024-06-27 10:09:50'),
(15, 'matthewYoung41', 'matthew.young@example.com', 'Excellent service, exceeded my expectations.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 10:10:16', '2024-06-27 10:10:16'),
(16, 'jessicaMoore57', 'jessica.moore@example.com', 'Efficient communication and fast shipping.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 10:10:42', '2024-06-27 10:10:42'),
(17, 'andrewTaylor63', 'andrew.taylor@example.com', 'Impressed with the quality, worth every penny.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 10:11:06', '2024-06-27 10:11:06'),
(18, 'oliviaThomas88', 'olivia.thomas@example.com', 'Great product selection, easy to find what I needed.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 10:11:31', '2024-06-27 10:11:31'),
(19, 'jamesClark36', 'james.clark@example.com', 'Responsive support team, they solved my issue quickly.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 10:51:54', '2024-06-27 10:51:54'),
(20, 'emmaWalker19', 'emma.walker@example.com', 'Smooth transaction, no problems encountered.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 10:52:21', '2024-06-27 10:52:21'),
(21, 'danielHarris72', 'daniel.harris@example.com', 'Product arrived on time and as described.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 10:52:42', '2024-06-27 10:52:42'),
(22, 'sophiaLewis25', 'sophia.lewis@example.com', 'Website is user-friendly, easy to navigate.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 10:53:04', '2024-06-27 10:53:04'),
(23, 'williamKing49', 'william.king@example.com', 'Great customer service, very professional.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 10:53:27', '2024-06-27 10:53:27'),
(24, 'miaGreen14', 'mia.green@example.com', 'Quality of the product is outstanding.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 10:53:49', '2024-06-27 10:53:49'),
(25, 'ethanCarter58', 'ethan.carter@example.com', 'Fast delivery, I\'m satisfied with my purchase.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 10:54:09', '2024-06-27 10:54:09'),
(26, 'avaHall83', 'ava.hall@example.com', 'Excellent experience, would buy again.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 10:54:36', '2024-06-27 10:54:36'),
(27, 'noahAdams95', 'noah.adams@example.com', 'User-friendly website, easy checkout process.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 10:54:58', '2024-06-27 10:54:58'),
(28, 'isabellaRivera21', 'isabella.rivera@example.com', 'Prompt response from customer support.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 10:55:20', '2024-06-27 10:55:20'),
(29, 'jacobMorris31', 'jacob.morris@example.com', 'Impressed with the product quality and service.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 10:55:50', '2024-06-27 10:55:50'),
(30, 'miaGonzalez44', 'mia.gonzalez@example.com', 'Fast shipping, good packaging.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 10:56:21', '2024-06-27 10:56:21'),
(31, 'loganHall52', 'logan.hall@example.com', 'Clear and informative product descriptions.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 10:56:52', '2024-06-27 10:56:52'),
(32, 'sophiaWright61', 'sophia.wright@example.com', 'Great value for the price, exceeded expectations.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 10:57:17', '2024-06-27 10:57:17'),
(33, 'ethanMartin73', 'ethan.martin@example.com', 'Efficient order processing and delivery.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 10:57:40', '2024-06-27 10:57:40'),
(34, 'johndoe', 'johndoe@example.com', 'This is a great website! I really appreciate the effort put into it.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 11:01:09', '2024-06-27 11:01:09'),
(35, 'janedoe', 'janedoe@example.com', 'I had a wonderful experience using this service. Highly recommend!', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 11:01:31', '2024-06-27 11:01:31'),
(36, 'bobsmith', 'bobsmith@example.com', 'Very user-friendly and efficient. Keep up the good work!', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 11:01:52', '2024-06-27 11:01:52'),
(37, 'alicejones', 'alicejones@example.com', 'The interface is very intuitive and easy to navigate.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 11:02:09', '2024-06-27 11:02:09'),
(38, 'charliebrown', 'charliebrown@example.com', 'I love the design and functionality of this site. Great job!', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 11:02:25', '2024-06-27 11:02:25'),
(39, 'emilydavis', 'emilydavis@example.com', 'This service has exceeded my expectations. Excellent!', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 11:02:41', '2024-06-27 11:02:41'),
(40, 'frankwhite', 'frankwhite@example.com', 'Smooth and hassle-free experience. Will use again!', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 11:02:57', '2024-06-27 11:02:57'),
(41, 'gracehopper', 'gracehopper@example.com', 'Very satisfied with the service provided. Highly efficient!', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 11:03:13', '2024-06-27 11:03:13'),
(42, 'henryford', 'henryford@example.com', 'A reliable and easy-to-use platform. Highly recommended!', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 11:03:27', '2024-06-27 11:03:27'),
(43, 'isabellaknight', 'isabellaknight@example.com', 'Great customer support and user experience. Keep it up!', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 11:03:45', '2024-06-27 11:03:45'),
(44, 'jacobmartin', 'jacobmartin@example.com', 'A very comprehensive and well-thought-out website.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 11:03:59', '2024-06-27 11:03:59'),
(45, 'kathleenyoung', 'kathleenyoung@example.com', 'Quick and efficient service. Very pleased!', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 11:04:14', '2024-06-27 11:04:14'),
(46, 'liamlee', 'liamlee@example.com', 'Easy to use and very helpful. Thank you!', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 11:04:34', '2024-06-27 11:04:34'),
(47, 'madisonclark', 'madisonclark@example.com', 'The best online service I\'ve used so far!', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 11:04:48', '2024-06-27 11:04:48'),
(48, 'nathanadams', 'nathanadams@example.com', 'Fantastic user interface and support. Highly recommend!', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 11:05:04', '2024-06-27 11:05:04'),
(49, 'olivertaylor', 'olivertaylor@example.com', 'Very impressed with the quality of service provided.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 11:05:20', '2024-06-27 11:05:20'),
(50, 'penelopewilson', 'penelopewilson@example.com', 'User-friendly and very reliable. Great job!', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 11:05:39', '2024-06-27 11:05:39'),
(51, 'quinnsullivan', 'quinnsullivan@example.com', 'A very pleasant experience using this service. Well done!', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 11:05:55', '2024-06-27 11:05:55'),
(52, 'rachelmoore', 'rachelmoore@example.com', 'Excellent customer service and support. Very happy!', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 11:06:13', '2024-06-27 11:06:13'),
(53, 'samueljohnson', 'samueljohnson@example.com', 'A top-notch service that I would recommend to anyone.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 11:06:28', '2024-06-27 11:06:28'),
(54, 'tatianabrown', 'tatianabrown@example.com', 'Very user-friendly and efficient. Will use again!', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 11:06:46', '2024-06-27 11:06:46'),
(55, 'ulysseskim', 'ulysseskim@example.com', 'An excellent platform with great features.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 11:07:03', '2024-06-27 11:07:03'),
(56, 'violetlee', 'violetlee@example.com', 'The service was very efficient and reliable.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 11:07:22', '2024-06-27 11:07:22'),
(57, 'williamjones', 'williamjones@example.com', 'I am very pleased with the service provided. Great job!', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 11:07:39', '2024-06-27 11:07:39'),
(58, 'xavierclark', 'xavierclark@example.com', 'The best user experience I have had in a long time!', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', '2024-06-27 11:07:56', '2024-06-27 11:07:56');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
