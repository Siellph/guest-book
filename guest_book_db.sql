-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 27 2024 г., 23:29
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
-- Структура таблицы `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('captcha_0021952e506b401ff46c62c8262eb86c', 'a:4:{i:0;s:1:\"q\";i:1;s:1:\"q\";i:2;s:1:\"b\";i:3;s:1:\"e\";}', 1719497765),
('captcha_007246e12b8faed0cc89c7663b09fc1a', 'a:4:{i:0;s:1:\"f\";i:1;s:1:\"p\";i:2;s:1:\"u\";i:3;s:1:\"c\";}', 1719492547),
('captcha_01dc0a9b95126962bd00eef7129d8096', 'a:4:{i:0;s:1:\"g\";i:1;s:1:\"g\";i:2;s:1:\"p\";i:3;s:1:\"m\";}', 1719491942),
('captcha_02002f57de2c375ccf1196696f9aa324', 'a:4:{i:0;s:1:\"e\";i:1;s:1:\"q\";i:2;s:1:\"9\";i:3;s:1:\"y\";}', 1719492029),
('captcha_02959eeef41ecb6834904877f8cd01d0', 'a:4:{i:0;s:1:\"r\";i:1;s:1:\"u\";i:2;s:1:\"q\";i:3;s:1:\"p\";}', 1719506205),
('captcha_033abc8ca1da37079defe7ae7c8f5aae', 'a:4:{i:0;s:1:\"y\";i:1;s:1:\"e\";i:2;s:1:\"p\";i:3;s:1:\"z\";}', 1719506819),
('captcha_03c4ac90b3835129e6a0a5de969f2d4c', 'a:5:{i:0;s:1:\"c\";i:1;s:1:\"h\";i:2;s:1:\"a\";i:3;s:1:\"h\";i:4;s:1:\"y\";}', 1719489431),
('captcha_0743f464374f7eec376caf8792181422', 'a:5:{i:0;s:1:\"x\";i:1;s:1:\"r\";i:2;s:1:\"h\";i:3;s:1:\"4\";i:4;s:1:\"3\";}', 1719489563),
('captcha_0a4f857d8740f7f0f8a6eb40eaa0f089', 'a:6:{i:0;s:1:\"f\";i:1;s:1:\"e\";i:2;s:1:\"n\";i:3;s:1:\"p\";i:4;s:1:\"b\";i:5;s:1:\"a\";}', 1719490027),
('captcha_0adf763019a19a6d3de63d81ae194ada', 'a:5:{i:0;s:1:\"b\";i:1;s:1:\"r\";i:2;s:1:\"q\";i:3;s:1:\"b\";i:4;s:1:\"m\";}', 1719488746),
('captcha_0bc5ecef9ebc836b8b434e69599e4fa0', 'a:4:{i:0;s:1:\"3\";i:1;s:1:\"a\";i:2;s:1:\"p\";i:3;s:1:\"j\";}', 1719503922),
('captcha_0f976e0ba1211cd3e09d7266d4f1a027', 'a:4:{i:0;s:1:\"9\";i:1;s:1:\"z\";i:2;s:1:\"7\";i:3;s:1:\"m\";}', 1719505048),
('captcha_0fa731891320cd1bd43197129b389130', 'a:4:{i:0;s:1:\"p\";i:1;s:1:\"b\";i:2;s:1:\"8\";i:3;s:1:\"4\";}', 1719492606),
('captcha_102f695015249d8bcc2dff76f7edb62e', 'a:4:{i:0;s:1:\"6\";i:1;s:1:\"f\";i:2;s:1:\"e\";i:3;s:1:\"r\";}', 1719493303),
('captcha_1156bb0f6c11c3f95032855359be668f', 'a:4:{i:0;s:1:\"q\";i:1;s:1:\"q\";i:2;s:1:\"m\";i:3;s:1:\"e\";}', 1719492374),
('captcha_11d60494d3865ff9571a3f5cc34f313f', 'a:4:{i:0;s:1:\"d\";i:1;s:1:\"9\";i:2;s:1:\"u\";i:3;s:1:\"2\";}', 1719493301),
('captcha_11e2a2410fedc40ee535ac9ab6c7fc44', 'a:4:{i:0;s:1:\"q\";i:1;s:1:\"x\";i:2;s:1:\"h\";i:3;s:1:\"x\";}', 1719495360),
('captcha_122e6c2d8084bec693629b32738e9dfa', 'a:5:{i:0;s:1:\"q\";i:1;s:1:\"t\";i:2;s:1:\"z\";i:3;s:1:\"n\";i:4;s:1:\"t\";}', 1719489908),
('captcha_13f8d6955d0dc0d29f5769e9dac423c6', 'a:4:{i:0;s:1:\"r\";i:1;s:1:\"r\";i:2;s:1:\"y\";i:3;s:1:\"y\";}', 1719492632),
('captcha_14493574f0f6d1dfe635c8cff4985df5', 'a:4:{i:0;s:1:\"c\";i:1;s:1:\"f\";i:2;s:1:\"m\";i:3;s:1:\"a\";}', 1719505057),
('captcha_14750e59d6f903d27aeaff6ce090cb42', 'a:5:{i:0;s:1:\"p\";i:1;s:1:\"g\";i:2;s:1:\"y\";i:3;s:1:\"n\";i:4;s:1:\"a\";}', 1719489852),
('captcha_159d3bc9aa008e9ab63a0ef15ebab656', 'a:5:{i:0;s:1:\"b\";i:1;s:1:\"6\";i:2;s:1:\"m\";i:3;s:1:\"d\";i:4;s:1:\"t\";}', 1719487481),
('captcha_163198184ad2d708101604450b236d02', 'a:6:{i:0;s:1:\"h\";i:1;s:1:\"q\";i:2;s:1:\"f\";i:3;s:1:\"z\";i:4;s:1:\"e\";i:5;s:1:\"n\";}', 1719489976),
('captcha_184b3d6feaaca5b0371df77e60cf4285', 'a:4:{i:0;s:1:\"b\";i:1;s:1:\"3\";i:2;s:1:\"f\";i:3;s:1:\"y\";}', 1719492281),
('captcha_1a9fc94c7ef9e0076a405b2ce93b2910', 'a:4:{i:0;s:1:\"x\";i:1;s:1:\"j\";i:2;s:1:\"c\";i:3;s:1:\"q\";}', 1719506140),
('captcha_1df21d6cf707144258fbd818e22c931a', 'a:4:{i:0;s:1:\"c\";i:1;s:1:\"y\";i:2;s:1:\"z\";i:3;s:1:\"j\";}', 1719503727),
('captcha_1ebc337e6d618ee9ae50e95dcc88c7e6', 'a:4:{i:0;s:1:\"2\";i:1;s:1:\"8\";i:2;s:1:\"p\";i:3;s:1:\"e\";}', 1719493086),
('captcha_1f69649cfab015f327030830cca73769', 'a:4:{i:0;s:1:\"j\";i:1;s:1:\"c\";i:2;s:1:\"m\";i:3;s:1:\"b\";}', 1719500400),
('captcha_1fd15fe9ffc9eb4d564ca5f0cc595654', 'a:5:{i:0;s:1:\"9\";i:1;s:1:\"y\";i:2;s:1:\"8\";i:3;s:1:\"8\";i:4;s:1:\"t\";}', 1719489127),
('captcha_20b238f7f14a0d3f340ee270699b4539', 'a:5:{i:0;s:1:\"n\";i:1;s:1:\"z\";i:2;s:1:\"z\";i:3;s:1:\"t\";i:4;s:1:\"j\";}', 1719486398),
('captcha_225c1263b5310605a99616a0999ce63a', 'a:4:{i:0;s:1:\"c\";i:1;s:1:\"9\";i:2;s:1:\"b\";i:3;s:1:\"4\";}', 1719492648),
('captcha_241432cd9976e800bf06f58b3f155522', 'a:4:{i:0;s:1:\"g\";i:1;s:1:\"u\";i:2;s:1:\"e\";i:3;s:1:\"9\";}', 1719492902),
('captcha_251f9f17719bb0484ddd44fcec127751', 'a:4:{i:0;s:1:\"z\";i:1;s:1:\"j\";i:2;s:1:\"n\";i:3;s:1:\"y\";}', 1719492307),
('captcha_25fd335d5cbee9df955223e96f6f4d0f', 'a:4:{i:0;s:1:\"r\";i:1;s:1:\"d\";i:2;s:1:\"3\";i:3;s:1:\"u\";}', 1719505061),
('captcha_26c839888965b1fbbe88651f91c1f5e0', 'a:3:{i:0;s:1:\"b\";i:1;s:1:\"u\";i:2;s:1:\"r\";}', 1719492921),
('captcha_290ac526bd1ed3df848e266809f54a1f', 'a:5:{i:0;s:1:\"h\";i:1;s:1:\"m\";i:2;s:1:\"x\";i:3;s:1:\"x\";i:4;s:1:\"t\";}', 1719489243),
('captcha_2cf2c19dbbcf4075516d515cafe2cb5c', 'a:4:{i:0;s:1:\"y\";i:1;s:1:\"z\";i:2;s:1:\"g\";i:3;s:1:\"4\";}', 1719492486),
('captcha_2d7ef1bdf21c7998921edc8e88725ae6', 'a:4:{i:0;s:1:\"c\";i:1;s:1:\"2\";i:2;s:1:\"p\";i:3;s:1:\"p\";}', 1719492600),
('captcha_2dc73dd8e68b8100cec9daa020a204f6', 'a:4:{i:0;s:1:\"j\";i:1;s:1:\"t\";i:2;s:1:\"b\";i:3;s:1:\"p\";}', 1719500716),
('captcha_31d3e5989b90f057a56917077f6c3fea', 'a:5:{i:0;s:1:\"p\";i:1;s:1:\"y\";i:2;s:1:\"j\";i:3;s:1:\"2\";i:4;s:1:\"r\";}', 1719489129),
('captcha_329b98e5fbbfb58d24871a9b834a44da', 'a:4:{i:0;s:1:\"c\";i:1;s:1:\"a\";i:2;s:1:\"2\";i:3;s:1:\"n\";}', 1719491954),
('captcha_33fc2c9a0fe303ace8b57ba225690496', 'a:4:{i:0;s:1:\"c\";i:1;s:1:\"p\";i:2;s:1:\"7\";i:3;s:1:\"j\";}', 1719491432),
('captcha_35ac4726eeec9ad0eb94c6b25b94d610', 'a:4:{i:0;s:1:\"j\";i:1;s:1:\"n\";i:2;s:1:\"q\";i:3;s:1:\"8\";}', 1719493293),
('captcha_360bb5ff42e3bb0ff262216b8c276249', 'a:4:{i:0;s:1:\"d\";i:1;s:1:\"6\";i:2;s:1:\"2\";i:3;s:1:\"c\";}', 1719495321),
('captcha_373342c26416d37da7166349e63ba501', 'a:5:{i:0;s:1:\"y\";i:1;s:1:\"y\";i:2;s:1:\"c\";i:3;s:1:\"a\";i:4;s:1:\"a\";}', 1719487462),
('captcha_37375d122c0d5ca6b58d0cfa734bcca5', 'a:4:{i:0;s:1:\"h\";i:1;s:1:\"d\";i:2;s:1:\"7\";i:3;s:1:\"u\";}', 1719505395),
('captcha_375ef29aa5d5f41535488a40aa62746d', 'a:4:{i:0;s:1:\"b\";i:1;s:1:\"r\";i:2;s:1:\"8\";i:3;s:1:\"r\";}', 1719506620),
('captcha_37e4332e981d66b9a91c41081b4df5bd', 'a:5:{i:0;s:1:\"g\";i:1;s:1:\"y\";i:2;s:1:\"z\";i:3;s:1:\"m\";i:4;s:1:\"h\";}', 1719487879),
('captcha_383fce63c95dc55ff3bbd8a7058ec9f8', 'a:5:{i:0;s:1:\"u\";i:1;s:1:\"b\";i:2;s:1:\"q\";i:3;s:1:\"m\";i:4;s:1:\"b\";}', 1719489146),
('captcha_39646f15586d7da818504381edbdadfb', 's:9:\"25 + 8 = \";', 1719493121),
('captcha_3a16bfd507ccc0ac344b4898a5901b51', 'a:4:{i:0;s:1:\"d\";i:1;s:1:\"z\";i:2;s:1:\"g\";i:3;s:1:\"x\";}', 1719504598),
('captcha_3c08827556a60c28334a6ad654796549', 'a:4:{i:0;s:1:\"b\";i:1;s:1:\"z\";i:2;s:1:\"r\";i:3;s:1:\"t\";}', 1719490163),
('captcha_3c468c93375428f2534f76edd980266f', 'a:4:{i:0;s:1:\"n\";i:1;s:1:\"t\";i:2;s:1:\"4\";i:3;s:1:\"g\";}', 1719491201),
('captcha_41aecbc02ce91b195e5ca23896535f54', 'a:4:{i:0;s:1:\"6\";i:1;s:1:\"8\";i:2;s:1:\"8\";i:3;s:1:\"x\";}', 1719492287),
('captcha_4228ab6f4fbaf0ef288e02ff0ec1f08c', 'a:4:{i:0;s:1:\"4\";i:1;s:1:\"t\";i:2;s:1:\"j\";i:3;s:1:\"y\";}', 1719499798),
('captcha_42dfb231b57dccb4866b792bf4e1d801', 'a:4:{i:0;s:1:\"n\";i:1;s:1:\"9\";i:2;s:1:\"b\";i:3;s:1:\"j\";}', 1719498476),
('captcha_45c933159a2d9b14e4b14fdfa862f12c', 'a:4:{i:0;s:1:\"g\";i:1;s:1:\"z\";i:2;s:1:\"g\";i:3;s:1:\"b\";}', 1719507005),
('captcha_45d206021271963f867c550d723e4440', 'a:4:{i:0;s:1:\"3\";i:1;s:1:\"u\";i:2;s:1:\"3\";i:3;s:1:\"t\";}', 1719492635),
('captcha_469c0261f55b4934b1ed943dc1b48cf5', 'a:5:{i:0;s:1:\"u\";i:1;s:1:\"c\";i:2;s:1:\"r\";i:3;s:1:\"3\";i:4;s:1:\"j\";}', 1719487917),
('captcha_48513da3ad700b729ef4b117aab7c8ff', 'a:4:{i:0;s:1:\"8\";i:1;s:1:\"c\";i:2;s:1:\"f\";i:3;s:1:\"4\";}', 1719504545),
('captcha_48efd5af89fcb99f661facd14f0a8045', 'a:4:{i:0;s:1:\"z\";i:1;s:1:\"h\";i:2;s:1:\"n\";i:3;s:1:\"u\";}', 1719494131),
('captcha_4f2f9800a587628dae06a0c597acfe0b', 'a:4:{i:0;s:1:\"b\";i:1;s:1:\"t\";i:2;s:1:\"j\";i:3;s:1:\"x\";}', 1719493018),
('captcha_4f420191a3a6ea6ae1543e65acf1c11c', 'a:5:{i:0;s:1:\"g\";i:1;s:1:\"y\";i:2;s:1:\"j\";i:3;s:1:\"f\";i:4;s:1:\"j\";}', 1719488728),
('captcha_5003e124cc5b63873fae52d7af43240f', 'a:4:{i:0;s:1:\"u\";i:1;s:1:\"j\";i:2;s:1:\"e\";i:3;s:1:\"h\";}', 1719492283),
('captcha_51986964992d0b7074e1870a1ffe1250', 'a:4:{i:0;s:1:\"d\";i:1;s:1:\"r\";i:2;s:1:\"n\";i:3;s:1:\"m\";}', 1719498664),
('captcha_51fec7d19471f38878fc6b46ec6488ad', 'a:5:{i:0;s:1:\"3\";i:1;s:1:\"n\";i:2;s:1:\"e\";i:3;s:1:\"m\";i:4;s:1:\"y\";}', 1719489905),
('captcha_52cda44e2e8b68c2a0d2620b1840c185', 'a:4:{i:0;s:1:\"e\";i:1;s:1:\"c\";i:2;s:1:\"u\";i:3;s:1:\"x\";}', 1719492511),
('captcha_54a404ff0cf2d9b5c2e0043c7c87224c', 'a:4:{i:0;s:1:\"u\";i:1;s:1:\"2\";i:2;s:1:\"t\";i:3;s:1:\"j\";}', 1719492651),
('captcha_57d42e2c229e4246634ff3ce6075c61c', 'a:4:{i:0;s:1:\"t\";i:1;s:1:\"a\";i:2;s:1:\"p\";i:3;s:1:\"x\";}', 1719493502),
('captcha_581628869315fa073838c8005ebdc8bb', 'a:6:{i:0;s:1:\"p\";i:1;s:1:\"q\";i:2;s:1:\"3\";i:3;s:1:\"y\";i:4;s:1:\"c\";i:5;s:1:\"m\";}', 1719490066),
('captcha_587bbca6dbea3d161396bc522cef1533', 'a:4:{i:0;s:1:\"6\";i:1;s:1:\"m\";i:2;s:1:\"a\";i:3;s:1:\"u\";}', 1719492906),
('captcha_58c45db23c74338ee5d962dc07e608d9', 'a:4:{i:0;s:1:\"q\";i:1;s:1:\"a\";i:2;s:1:\"b\";i:3;s:1:\"a\";}', 1719492310),
('captcha_59e15152799529f9c987510ecc7e461d', 'a:4:{i:0;s:1:\"b\";i:1;s:1:\"f\";i:2;s:1:\"j\";i:3;s:1:\"f\";}', 1719490151),
('captcha_5c08d4e880bc36ebac2b6550516754f5', 'a:4:{i:0;s:1:\"m\";i:1;s:1:\"r\";i:2;s:1:\"p\";i:3;s:1:\"u\";}', 1719497828),
('captcha_5d8c046ac2dba5b0b7cc958debbe4abb', 'a:4:{i:0;s:1:\"x\";i:1;s:1:\"t\";i:2;s:1:\"e\";i:3;s:1:\"t\";}', 1719492878),
('captcha_5fc25a6693b08e1b947f4d09576210db', 'a:6:{i:0;s:1:\"z\";i:1;s:1:\"q\";i:2;s:1:\"b\";i:3;s:1:\"m\";i:4;s:1:\"f\";i:5;s:1:\"y\";}', 1719489983),
('captcha_6044ba3652d13e6c105676d41575886c', 'a:4:{i:0;s:1:\"u\";i:1;s:1:\"x\";i:2;s:1:\"8\";i:3;s:1:\"a\";}', 1719497983),
('captcha_61215f1f4b1c27d6ec2e4f93645185eb', 'a:4:{i:0;s:1:\"4\";i:1;s:1:\"z\";i:2;s:1:\"c\";i:3;s:1:\"4\";}', 1719492312),
('captcha_6189c7287d8544b7a7a1f5637cbe17ae', 'a:5:{i:0;s:1:\"j\";i:1;s:1:\"r\";i:2;s:1:\"e\";i:3;s:1:\"n\";i:4;s:1:\"9\";}', 1719488961),
('captcha_6246e58913c3078286c6348efb5e14fc', 'a:4:{i:0;s:1:\"9\";i:1;s:1:\"q\";i:2;s:1:\"e\";i:3;s:1:\"c\";}', 1719504538),
('captcha_64204af8a2fab2b8ed185be769cf6909', 'a:4:{i:0;s:1:\"6\";i:1;s:1:\"u\";i:2;s:1:\"h\";i:3;s:1:\"c\";}', 1719492369),
('captcha_67eac0b02f0fe7217c6ef8481c45074f', 'a:4:{i:0;s:1:\"t\";i:1;s:1:\"7\";i:2;s:1:\"q\";i:3;s:1:\"d\";}', 1719503515),
('captcha_67f2097fa270fded6faa9d06b0f72880', 'a:4:{i:0;s:1:\"j\";i:1;s:1:\"8\";i:2;s:1:\"7\";i:3;s:1:\"b\";}', 1719503526),
('captcha_697f64c91bd2c998879ccbc4c03230d4', 'a:4:{i:0;s:1:\"h\";i:1;s:1:\"j\";i:2;s:1:\"z\";i:3;s:1:\"6\";}', 1719506817),
('captcha_6a6138a82dc060503bcf5cae795e88d0', 'a:4:{i:0;s:1:\"8\";i:1;s:1:\"p\";i:2;s:1:\"q\";i:3;s:1:\"2\";}', 1719493130),
('captcha_6a78c92fac64e2a5d16b53ced10e2e03', 'a:4:{i:0;s:1:\"d\";i:1;s:1:\"y\";i:2;s:1:\"2\";i:3;s:1:\"y\";}', 1719492924),
('captcha_6b864a852918ce2d49e465b60f7dfb7e', 'a:6:{i:0;s:1:\"g\";i:1;s:1:\"6\";i:2;s:1:\"y\";i:3;s:1:\"b\";i:4;s:1:\"d\";i:5;s:1:\"p\";}', 1719490006),
('captcha_6c1f59ba022789c95dc0e7945db3ac68', 'a:5:{i:0;s:1:\"q\";i:1;s:1:\"r\";i:2;s:1:\"3\";i:3;s:1:\"2\";i:4;s:1:\"y\";}', 1719489903),
('captcha_6ca7a7a6320f63b86da1eee1365e2321', 'a:4:{i:0;s:1:\"q\";i:1;s:1:\"f\";i:2;s:1:\"t\";i:3;s:1:\"4\";}', 1719506063),
('captcha_6d47469a71a23ccef62e0c43b2a2c226', 'a:5:{i:0;s:1:\"9\";i:1;s:1:\"z\";i:2;s:1:\"q\";i:3;s:1:\"8\";i:4;s:1:\"g\";}', 1719489411),
('captcha_6d6dd9e16a05f0a3c436c61f93d2cc20', 'a:4:{i:0;s:1:\"g\";i:1;s:1:\"u\";i:2;s:1:\"d\";i:3;s:1:\"y\";}', 1719490558),
('captcha_6da3a671134d5f73f12b7e88e9f2bbd4', 'a:4:{i:0;s:1:\"8\";i:1;s:1:\"j\";i:2;s:1:\"d\";i:3;s:1:\"z\";}', 1719491728),
('captcha_6ddfa94c524a96591bacd7bd6e6f25eb', 'a:6:{i:0;s:1:\"c\";i:1;s:1:\"j\";i:2;s:1:\"x\";i:3;s:1:\"y\";i:4;s:1:\"y\";i:5;s:1:\"x\";}', 1719490072),
('captcha_6e5fd1815b4bad26100769260bf146c1', 'a:4:{i:0;s:1:\"7\";i:1;s:1:\"j\";i:2;s:1:\"b\";i:3;s:1:\"7\";}', 1719509491),
('captcha_6fac08a14b9ed49806a014fecab59fea', 'a:4:{i:0;s:1:\"h\";i:1;s:1:\"f\";i:2;s:1:\"6\";i:3;s:1:\"b\";}', 1719492509),
('captcha_70582f360003ac6e00a352dfcd1244e5', 'a:4:{i:0;s:1:\"2\";i:1;s:1:\"j\";i:2;s:1:\"d\";i:3;s:1:\"c\";}', 1719509013),
('captcha_71da7309195a15b518780be378793887', 'a:5:{i:0;s:1:\"6\";i:1;s:1:\"u\";i:2;s:1:\"c\";i:3;s:1:\"b\";i:4;s:1:\"t\";}', 1719489143),
('captcha_72535230bde138bf381f39916c5f8e95', 'a:4:{i:0;s:1:\"7\";i:1;s:1:\"m\";i:2;s:1:\"f\";i:3;s:1:\"x\";}', 1719498661),
('captcha_72b64c3f4f614ff742229a167dc0d8f4', 'a:4:{i:0;s:1:\"b\";i:1;s:1:\"q\";i:2;s:1:\"g\";i:3;s:1:\"f\";}', 1719491168),
('captcha_73af732163526b1f35ca3cf71b785dc5', 'a:4:{i:0;s:1:\"q\";i:1;s:1:\"y\";i:2;s:1:\"u\";i:3;s:1:\"q\";}', 1719500503),
('captcha_74be6c9eddf1dd437ea9a2935d9af797', 'a:4:{i:0;s:1:\"q\";i:1;s:1:\"n\";i:2;s:1:\"u\";i:3;s:1:\"y\";}', 1719505107),
('captcha_74ca155a8230e39cdc75f81db1b3f7c1', 'a:4:{i:0;s:1:\"n\";i:1;s:1:\"c\";i:2;s:1:\"m\";i:3;s:1:\"9\";}', 1719505836),
('captcha_75844474e4e25c6ec4ef6691726a04da', 'a:4:{i:0;s:1:\"f\";i:1;s:1:\"f\";i:2;s:1:\"m\";i:3;s:1:\"6\";}', 1719505815),
('captcha_758b0739e7ebdedeb74a4b4355ca5851', 'a:4:{i:0;s:1:\"p\";i:1;s:1:\"t\";i:2;s:1:\"d\";i:3;s:1:\"x\";}', 1719498683),
('captcha_75b98dde80f5ab077dbfc7bda077b40f', 'a:4:{i:0;s:1:\"p\";i:1;s:1:\"m\";i:2;s:1:\"x\";i:3;s:1:\"p\";}', 1719504880),
('captcha_75ebf9f7c42842826b02976553bf0a4b', 'a:5:{i:0;s:1:\"h\";i:1;s:1:\"y\";i:2;s:1:\"b\";i:3;s:1:\"m\";i:4;s:1:\"n\";}', 1719489121),
('captcha_75f6aebfcd3bb24a3095e2279e8a6314', 'a:4:{i:0;s:1:\"e\";i:1;s:1:\"m\";i:2;s:1:\"j\";i:3;s:1:\"u\";}', 1719492314),
('captcha_7749a5accf9057e5296a89f877a67337', 'a:4:{i:0;s:1:\"n\";i:1;s:1:\"h\";i:2;s:1:\"x\";i:3;s:1:\"8\";}', 1719491774),
('captcha_781c0f9acfae92d5284852f20c7b28be', 'a:4:{i:0;s:1:\"r\";i:1;s:1:\"z\";i:2;s:1:\"p\";i:3;s:1:\"f\";}', 1719492503),
('captcha_78cac7e07045f49d92b235a8ce9b5b12', 'a:6:{i:0;s:1:\"t\";i:1;s:1:\"m\";i:2;s:1:\"p\";i:3;s:1:\"p\";i:4;s:1:\"f\";i:5;s:1:\"q\";}', 1719490075),
('captcha_79860b341994979891b6ea1bc869e31e', 'a:6:{i:0;s:1:\"p\";i:1;s:1:\"e\";i:2;s:1:\"n\";i:3;s:1:\"y\";i:4;s:1:\"x\";i:5;s:1:\"r\";}', 1719490077),
('captcha_79871d734787b7bab37dd472f4d04fc2', 'a:4:{i:0;s:1:\"e\";i:1;s:1:\"4\";i:2;s:1:\"u\";i:3;s:1:\"e\";}', 1719500682),
('captcha_7c34d3a455fc6054e14898586de70978', 'a:5:{i:0;s:1:\"d\";i:1;s:1:\"y\";i:2;s:1:\"n\";i:3;s:1:\"t\";i:4;s:1:\"b\";}', 1719489848),
('captcha_7e0d52e207b0a83653ae0092ff2382e7', 'a:4:{i:0;s:1:\"8\";i:1;s:1:\"x\";i:2;s:1:\"b\";i:3;s:1:\"b\";}', 1719494209),
('captcha_8076087f0e630b1ab14cac2cbdf7d090', 'a:4:{i:0;s:1:\"r\";i:1;s:1:\"r\";i:2;s:1:\"6\";i:3;s:1:\"c\";}', 1719504076),
('captcha_84ec5f9669b0880b233b84cb1854754f', 'a:4:{i:0;s:1:\"x\";i:1;s:1:\"d\";i:2;s:1:\"n\";i:3;s:1:\"p\";}', 1719506054),
('captcha_8504a3b719541239568a4c0ad58c33af', 'a:4:{i:0;s:1:\"z\";i:1;s:1:\"4\";i:2;s:1:\"9\";i:3;s:1:\"d\";}', 1719493020),
('captcha_87d0d576a1d9bc65714a0dac5019dc84', 's:9:\"21 + 6 = \";', 1719493082),
('captcha_896001d01b4892df5406327617afe77c', 'a:4:{i:0;s:1:\"q\";i:1;s:1:\"x\";i:2;s:1:\"6\";i:3;s:1:\"t\";}', 1719499910),
('captcha_899b6369de10aff2f3abebabe23d7fb9', 'a:4:{i:0;s:1:\"9\";i:1;s:1:\"u\";i:2;s:1:\"u\";i:3;s:1:\"m\";}', 1719497990),
('captcha_8b41f256cd172e83ded2da9683240944', 'a:6:{i:0;s:1:\"q\";i:1;s:1:\"x\";i:2;s:1:\"b\";i:3;s:1:\"h\";i:4;s:1:\"n\";i:5;s:1:\"8\";}', 1719490008),
('captcha_8c9600f79398a7930e105163a226debe', 'a:4:{i:0;s:1:\"m\";i:1;s:1:\"g\";i:2;s:1:\"e\";i:3;s:1:\"d\";}', 1719492285),
('captcha_8ed45af90d4fec8f7e89725bd78b463e', 'a:4:{i:0;s:1:\"x\";i:1;s:1:\"y\";i:2;s:1:\"3\";i:3;s:1:\"r\";}', 1719492831),
('captcha_90802c786fdef90756199aaf6ce37066', 'a:4:{i:0;s:1:\"x\";i:1;s:1:\"b\";i:2;s:1:\"n\";i:3;s:1:\"y\";}', 1719492825),
('captcha_91896f6be46762b66b6d8c5ad208ce53', 'a:4:{i:0;s:1:\"3\";i:1;s:1:\"p\";i:2;s:1:\"b\";i:3;s:1:\"r\";}', 1719493299),
('captcha_957e269d8955500a28e407a3625490aa', 'a:4:{i:0;s:1:\"f\";i:1;s:1:\"g\";i:2;s:1:\"x\";i:3;s:1:\"r\";}', 1719499227),
('captcha_961000d4503c46f9cc87bb96c2367459', 'a:4:{i:0;s:1:\"f\";i:1;s:1:\"j\";i:2;s:1:\"6\";i:3;s:1:\"d\";}', 1719492904),
('captcha_96a498b3bccaf43f855728002063da18', 's:9:\"19 + 2 = \";', 1719492957),
('captcha_96c2885642f09f2b615a086dfe343887', 'a:4:{i:0;s:1:\"t\";i:1;s:1:\"7\";i:2;s:1:\"a\";i:3;s:1:\"u\";}', 1719506213),
('captcha_9b4c5cc56929036ec7763d5c173bac66', 'a:4:{i:0;s:1:\"y\";i:1;s:1:\"f\";i:2;s:1:\"b\";i:3;s:1:\"p\";}', 1719492343),
('captcha_9b9f575e1db6d8f993faa2c0aee86fbc', 's:9:\"18 + 3 = \";', 1719493010),
('captcha_9f945552155c2d53e28c858a0a865005', 'a:4:{i:0;s:1:\"9\";i:1;s:1:\"4\";i:2;s:1:\"t\";i:3;s:1:\"h\";}', 1719492900),
('captcha_a115f7653d85706e2dca5698cf125e57', 'a:4:{i:0;s:1:\"h\";i:1;s:1:\"r\";i:2;s:1:\"n\";i:3;s:1:\"q\";}', 1719491938),
('captcha_a1e7622aeaebe8eb0a281205eb45d74c', 'a:4:{i:0;s:1:\"7\";i:1;s:1:\"2\";i:2;s:1:\"e\";i:3;s:1:\"2\";}', 1719491008),
('captcha_a311084a8dbe8500a51e2dd33e891c8b', 'a:4:{i:0;s:1:\"t\";i:1;s:1:\"g\";i:2;s:1:\"9\";i:3;s:1:\"d\";}', 1719492650),
('captcha_a3a93aa26e42a79ad84f350288534630', 'a:6:{i:0;s:1:\"b\";i:1;s:1:\"y\";i:2;s:1:\"n\";i:3;s:1:\"p\";i:4;s:1:\"z\";i:5;s:1:\"9\";}', 1719489980),
('captcha_a3f36b1ec47f5b193dece6896ee42d0b', 'a:4:{i:0;s:1:\"m\";i:1;s:1:\"6\";i:2;s:1:\"m\";i:3;s:1:\"a\";}', 1719492543),
('captcha_a4941f5ff29890042ee3ca4f7b5df9fc', 'a:4:{i:0;s:1:\"f\";i:1;s:1:\"d\";i:2;s:1:\"q\";i:3;s:1:\"z\";}', 1719492304),
('captcha_a4cc280b8b19af52ca166aeac6fac82b', 'a:4:{i:0;s:1:\"h\";i:1;s:1:\"e\";i:2;s:1:\"m\";i:3;s:1:\"9\";}', 1719498928),
('captcha_a929fc4afd08e5bd7aef17d66c7be8d1', 'a:5:{i:0;s:1:\"a\";i:1;s:1:\"a\";i:2;s:1:\"r\";i:3;s:1:\"r\";i:4;s:1:\"e\";}', 1719489850),
('captcha_a978a4a0e1796d0072fba14948a953a1', 'a:5:{i:0;s:1:\"2\";i:1;s:1:\"m\";i:2;s:1:\"b\";i:3;s:1:\"b\";i:4;s:1:\"z\";}', 1719489125),
('captcha_aa4d50fcb9e7986e7506de06d64f8546', 'a:4:{i:0;s:1:\"4\";i:1;s:1:\"j\";i:2;s:1:\"6\";i:3;s:1:\"t\";}', 1719498092),
('captcha_acb9a2fc5c416aad98628773d9411b8a', 'a:4:{i:0;s:1:\"r\";i:1;s:1:\"2\";i:2;s:1:\"p\";i:3;s:1:\"d\";}', 1719500525),
('captcha_ae8f1889e4ab3b627f28831308e30d66', 'a:4:{i:0;s:1:\"g\";i:1;s:1:\"e\";i:2;s:1:\"j\";i:3;s:1:\"j\";}', 1719503710),
('captcha_b2163efc2ce0dbed0167dd9ad48414e9', 'a:4:{i:0;s:1:\"4\";i:1;s:1:\"t\";i:2;s:1:\"7\";i:3;s:1:\"r\";}', 1719492604),
('captcha_b341bee2d086e08560038dfd126b4311', 'a:4:{i:0;s:1:\"t\";i:1;s:1:\"c\";i:2;s:1:\"9\";i:3;s:1:\"b\";}', 1719491945),
('captcha_b7251fdee1edc6b35d217c95dea3a1cb', 'a:4:{i:0;s:1:\"b\";i:1;s:1:\"q\";i:2;s:1:\"j\";i:3;s:1:\"8\";}', 1719492278),
('captcha_b770d942786eaf684102d40a43d6cf6d', 'a:4:{i:0;s:1:\"a\";i:1;s:1:\"3\";i:2;s:1:\"c\";i:3;s:1:\"p\";}', 1719490167),
('captcha_b8ffd369ad6e00f463ad57f5c49201e8', 'a:4:{i:0;s:1:\"2\";i:1;s:1:\"h\";i:2;s:1:\"h\";i:3;s:1:\"f\";}', 1719506403),
('captcha_b94d52013299c1f305552858dbc0685e', 'a:4:{i:0;s:1:\"r\";i:1;s:1:\"f\";i:2;s:1:\"b\";i:3;s:1:\"p\";}', 1719499171),
('captcha_b9bf3656e927a909251a21f0cfca5758', 's:9:\"17 + 8 = \";', 1719492944),
('captcha_bcc83a03f71573c714f88cd548b843c2', 'a:4:{i:0;s:1:\"h\";i:1;s:1:\"y\";i:2;s:1:\"d\";i:3;s:1:\"e\";}', 1719498320),
('captcha_bd5dce91c6e1cbeaf8d5760fc9b00bdc', 'a:4:{i:0;s:1:\"f\";i:1;s:1:\"a\";i:2;s:1:\"u\";i:3;s:1:\"h\";}', 1719495328),
('captcha_bdb0531b775b06da4421197e51e271b5', 's:9:\"13 + 2 = \";', 1719492952),
('captcha_be9ec4bffe71c8fa742658d03261256d', 'a:4:{i:0;s:1:\"c\";i:1;s:1:\"f\";i:2;s:1:\"j\";i:3;s:1:\"7\";}', 1719492653),
('captcha_bf3540677f0f40f75d46a67236f5635d', 'a:4:{i:0;s:1:\"j\";i:1;s:1:\"e\";i:2;s:1:\"2\";i:3;s:1:\"y\";}', 1719506997),
('captcha_c24ab85127c3386fcb6ef6da7cc13597', 'a:4:{i:0;s:1:\"7\";i:1;s:1:\"6\";i:2;s:1:\"a\";i:3;s:1:\"m\";}', 1719492835),
('captcha_c3e3a24989f08684d484b2382e40ca78', 'a:4:{i:0;s:1:\"q\";i:1;s:1:\"y\";i:2;s:1:\"z\";i:3;s:1:\"z\";}', 1719499905),
('captcha_c5438e55c181019b0e98fb1fc983a060', 'a:3:{i:0;s:1:\"u\";i:1;s:1:\"h\";i:2;s:1:\"r\";}', 1719492931),
('captcha_c5ab12f8fd3841d7ebe5d44e2a748f99', 'a:4:{i:0;s:1:\"a\";i:1;s:1:\"a\";i:2;s:1:\"m\";i:3;s:1:\"z\";}', 1719492341),
('captcha_c6b50ca7962dfc8a7802d2aae8a64f28', 'a:4:{i:0;s:1:\"2\";i:1;s:1:\"y\";i:2;s:1:\"m\";i:3;s:1:\"r\";}', 1719493125),
('captcha_c9501fffd62ae85fbe65be8b43afd75b', 'a:4:{i:0;s:1:\"n\";i:1;s:1:\"a\";i:2;s:1:\"y\";i:3;s:1:\"9\";}', 1719495180),
('captcha_ca39167639a78a7e0696acb8a3f5478e', 'a:4:{i:0;s:1:\"m\";i:1;s:1:\"g\";i:2;s:1:\"n\";i:3;s:1:\"9\";}', 1719492493),
('captcha_cb840a7b43832e5a4116b9b454b58eb2', 'a:4:{i:0;s:1:\"b\";i:1;s:1:\"8\";i:2;s:1:\"j\";i:3;s:1:\"m\";}', 1719492645),
('captcha_ccd02c0e871e9adc839754f9b8bd7f5e', 'a:6:{i:0;s:1:\"b\";i:1;s:1:\"3\";i:2;s:1:\"c\";i:3;s:1:\"p\";i:4;s:1:\"n\";i:5;s:1:\"f\";}', 1719489985),
('captcha_cd25bf85331556f760fe5c266adcaafd', 'a:6:{i:0;s:1:\"h\";i:1;s:1:\"n\";i:2;s:1:\"a\";i:3;s:1:\"d\";i:4;s:1:\"q\";i:5;s:1:\"2\";}', 1719490078),
('captcha_cd33e718b21585801c3a8898de39923c', 'a:4:{i:0;s:1:\"c\";i:1;s:1:\"h\";i:2;s:1:\"r\";i:3;s:1:\"g\";}', 1719500255),
('captcha_cd6a3d29e891636aca36064eb790943e', 'a:4:{i:0;s:1:\"b\";i:1;s:1:\"t\";i:2;s:1:\"r\";i:3;s:1:\"b\";}', 1719506571),
('captcha_cf86a0efd841a99a43f9d681827a407f', 'a:6:{i:0;s:1:\"z\";i:1;s:1:\"r\";i:2;s:1:\"2\";i:3;s:1:\"h\";i:4;s:1:\"c\";i:5;s:1:\"7\";}', 1719490030),
('captcha_d047e56bb4a447cd774e566688d9f0ae', 'a:4:{i:0;s:1:\"x\";i:1;s:1:\"m\";i:2;s:1:\"m\";i:3;s:1:\"p\";}', 1719490155),
('captcha_d1894e054e780818b507890835a6aa7c', 'a:4:{i:0;s:1:\"b\";i:1;s:1:\"m\";i:2;s:1:\"b\";i:3;s:1:\"q\";}', 1719490158),
('captcha_d1c82a7700ce2ae5a446150aa5cd2e3b', 'a:5:{i:0;s:1:\"r\";i:1;s:1:\"b\";i:2;s:1:\"t\";i:3;s:1:\"3\";i:4;s:1:\"u\";}', 1719489245),
('captcha_d200202e1f6913dbaa2101eb1775ec3e', 'a:5:{i:0;s:1:\"e\";i:1;s:1:\"a\";i:2;s:1:\"z\";i:3;s:1:\"c\";i:4;s:1:\"m\";}', 1719489246),
('captcha_d51d01aaaa4e349438ebf498163a1a34', 'a:4:{i:0;s:1:\"3\";i:1;s:1:\"b\";i:2;s:1:\"j\";i:3;s:1:\"p\";}', 1719491410),
('captcha_d5c5bc152b47bff3b465596e413c4b82', 'a:4:{i:0;s:1:\"u\";i:1;s:1:\"b\";i:2;s:1:\"m\";i:3;s:1:\"p\";}', 1719492292),
('captcha_d5d026368fa4745e10d2c8328c64a8e5', 'a:5:{i:0;s:1:\"g\";i:1;s:1:\"u\";i:2;s:1:\"h\";i:3;s:1:\"x\";i:4;s:1:\"c\";}', 1719489560),
('captcha_d640a24ed2b51ef6baab9fe90753fa6e', 'a:5:{i:0;s:1:\"u\";i:1;s:1:\"h\";i:2;s:1:\"h\";i:3;s:1:\"n\";i:4;s:1:\"z\";}', 1719489900),
('captcha_d9b8fbd90c78387450f6c15bd09c59ec', 'a:4:{i:0;s:1:\"u\";i:1;s:1:\"c\";i:2;s:1:\"y\";i:3;s:1:\"d\";}', 1719490665),
('captcha_da0d29315fec03ea8e1c8cc8a033cb5b', 'a:4:{i:0;s:1:\"y\";i:1;s:1:\"x\";i:2;s:1:\"9\";i:3;s:1:\"4\";}', 1719492927),
('captcha_db157c6d97e38900013a296a94b012e9', 'a:5:{i:0;s:1:\"a\";i:1;s:1:\"a\";i:2;s:1:\"g\";i:3;s:1:\"c\";i:4;s:1:\"m\";}', 1719489878),
('captcha_db9cd9d1bd68f5a58050fb0167bde894', 'a:4:{i:0;s:1:\"7\";i:1;s:1:\"m\";i:2;s:1:\"t\";i:3;s:1:\"m\";}', 1719492290),
('captcha_dc7601eb5259362ce9c2bd1d46452bdc', 'a:4:{i:0;s:1:\"y\";i:1;s:1:\"2\";i:2;s:1:\"y\";i:3;s:1:\"6\";}', 1719509489),
('captcha_dcaf50cba00b2e90963db26802dcfdb5', 'a:4:{i:0;s:1:\"j\";i:1;s:1:\"m\";i:2;s:1:\"d\";i:3;s:1:\"8\";}', 1719492507),
('captcha_dd4de5b123a7935738ea0f95dd6ef641', 'a:4:{i:0;s:1:\"m\";i:1;s:1:\"e\";i:2;s:1:\"t\";i:3;s:1:\"c\";}', 1719505202),
('captcha_dd80a8a3537b3bebcc899eff7266c130', 'a:5:{i:0;s:1:\"2\";i:1;s:1:\"n\";i:2;s:1:\"b\";i:3;s:1:\"a\";i:4;s:1:\"6\";}', 1719489239),
('captcha_ddbfca1fe86d3703a06dd5745919e0e0', 'a:4:{i:0;s:1:\"u\";i:1;s:1:\"4\";i:2;s:1:\"g\";i:3;s:1:\"j\";}', 1719493297),
('captcha_de428f7b973775245188b9aa74f39b43', 'a:4:{i:0;s:1:\"t\";i:1;s:1:\"3\";i:2;s:1:\"g\";i:3;s:1:\"n\";}', 1719506980),
('captcha_dec923564c62785482ac06d339a4a157', 'a:5:{i:0;s:1:\"h\";i:1;s:1:\"x\";i:2;s:1:\"q\";i:3;s:1:\"f\";i:4;s:1:\"7\";}', 1719488732),
('captcha_df095478170b35fe5c336b5a53c7db7b', 's:9:\"27 + 9 = \";', 1719493015),
('captcha_dffb5c84a1d5a530cbd52dd844a23f94', 'a:4:{i:0;s:1:\"7\";i:1;s:1:\"n\";i:2;s:1:\"e\";i:3;s:1:\"j\";}', 1719492491),
('captcha_e07c6c854da4c975551002abb9470a55', 'a:4:{i:0;s:1:\"h\";i:1;s:1:\"6\";i:2;s:1:\"x\";i:3;s:1:\"8\";}', 1719492372),
('captcha_e25b4595fac8276236c379b1cc24673a', 'a:4:{i:0;s:1:\"d\";i:1;s:1:\"p\";i:2;s:1:\"h\";i:3;s:1:\"2\";}', 1719492833),
('captcha_e812e337cc22577fca8e15a97486f6ec', 'a:4:{i:0;s:1:\"4\";i:1;s:1:\"t\";i:2;s:1:\"p\";i:3;s:1:\"j\";}', 1719492897),
('captcha_e8d6a03d64c07a6f6ff50401ae79ec9c', 'a:4:{i:0;s:1:\"7\";i:1;s:1:\"e\";i:2;s:1:\"f\";i:3;s:1:\"u\";}', 1719492870),
('captcha_ea9a61d418bac12831844bb2dc5e1564', 'a:5:{i:0;s:1:\"f\";i:1;s:1:\"g\";i:2;s:1:\"t\";i:3;s:1:\"c\";i:4;s:1:\"8\";}', 1719489565),
('captcha_ee41598df6d9d6a77302e7b03bd3c195', 'a:4:{i:0;s:1:\"r\";i:1;s:1:\"x\";i:2;s:1:\"u\";i:3;s:1:\"p\";}', 1719493131),
('captcha_ee7429334a9eb0f5465cded0f34bd0bc', 'a:4:{i:0;s:1:\"f\";i:1;s:1:\"a\";i:2;s:1:\"y\";i:3;s:1:\"m\";}', 1719492346),
('captcha_ee83e989c07093c8e503a2885ab58b02', 'a:4:{i:0;s:1:\"m\";i:1;s:1:\"d\";i:2;s:1:\"p\";i:3;s:1:\"u\";}', 1719505844),
('captcha_f1ebd0570ae7345cff72e5c8bcd2b9cb', 'a:4:{i:0;s:1:\"t\";i:1;s:1:\"j\";i:2;s:1:\"y\";i:3;s:1:\"g\";}', 1719492873),
('captcha_f470e9235f1166fe03e798df49aac46b', 'a:4:{i:0;s:1:\"n\";i:1;s:1:\"h\";i:2;s:1:\"g\";i:3;s:1:\"u\";}', 1719492549),
('captcha_f524d24edb1614ad40ad456ab84fb368', 'a:4:{i:0;s:1:\"6\";i:1;s:1:\"d\";i:2;s:1:\"9\";i:3;s:1:\"e\";}', 1719492629),
('captcha_f743d43f0634b6e22597c778705836b9', 'a:4:{i:0;s:1:\"b\";i:1;s:1:\"r\";i:2;s:1:\"9\";i:3;s:1:\"r\";}', 1719501153),
('captcha_f7fbf2eb9ddb4b925280ce9f7f1e0097', 'a:4:{i:0;s:1:\"p\";i:1;s:1:\"z\";i:2;s:1:\"g\";i:3;s:1:\"d\";}', 1719500734),
('captcha_f8ae87b8f7793bcd6b580aa5aff3dd6d', 'a:4:{i:0;s:1:\"d\";i:1;s:1:\"t\";i:2;s:1:\"j\";i:3;s:1:\"m\";}', 1719492294),
('captcha_f8b9e1c2df6f9d987f1e8cb8a52147d6', 'a:4:{i:0;s:1:\"g\";i:1;s:1:\"j\";i:2;s:1:\"r\";i:3;s:1:\"b\";}', 1719510901),
('captcha_fcf7f7e55c655cafaa8df5a608e98660', 'a:4:{i:0;s:1:\"x\";i:1;s:1:\"r\";i:2;s:1:\"y\";i:3;s:1:\"9\";}', 1719509474),
('captcha_fdd6a822443ccf51550efc67cd78f9f2', 'a:5:{i:0;s:1:\"6\";i:1;s:1:\"a\";i:2;s:1:\"f\";i:3;s:1:\"z\";i:4;s:1:\"y\";}', 1719489137),
('captcha_febb3e47de8805222fab3c29ef3e8132', 'a:4:{i:0;s:1:\"z\";i:1;s:1:\"4\";i:2;s:1:\"7\";i:3;s:1:\"x\";}', 1719491396);

-- --------------------------------------------------------

--
-- Структура таблицы `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_06_27_104654_create_feedback_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('9zqCQV8ONvKCJBMDLJO7WWu7mc8U4sBXzLAcZjdE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMGZhWGoxVkhLeDNPZkdldzZDMFBpWmlXSldlYnVoMFlWa1RuakpMUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXB0Y2hhL2ZsYXQ/ZUE1bWxOd0g9Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo3OiJjYXB0Y2hhIjthOjM6e3M6OToic2Vuc2l0aXZlIjtiOjA7czozOiJrZXkiO3M6MzEyOiJleUpwZGlJNklqUjNUa050UlU5bFMzWktiU3RGUzBWWk5GcFNja0U5UFNJc0luWmhiSFZsSWpvaWN6ZDJaR014ZEVoRFpHTXpjR1JKTldwQk5XaGhaVTFrZDJKYVRHVnpWazlwUXpoNUx6SnVhVmxoYUVsMWRYRlNlblp0Ym14dVdFWlJWbmM1U2xjNFRYaGxlV0pNZWxsTFVFTlNjbEJQVGxKUE9YSTNiRGRSYjJKdVowdFdZbmhhU3pGUVV6aFdTbkEwTTNNOUlpd2liV0ZqSWpvaU5tVTNaV05pTVRJeU4yRmtZbVF6T1dJNE1XRTBZekZtWkRjeVlqazRaR1ZoT0dSaE1UQmhaamxpTnpOaU5HTmlOakEyWW1ZeFlUVmtOVFpsTmpjd01pSXNJblJoWnlJNklpSjkiO3M6NzoiZW5jcnlwdCI7YjoxO319', 1719510842),
('sqIZCoUKeholiuSa7WB87igBNcf5OBnaQTTcxB5k', NULL, '127.0.0.1', 'Symfony', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGMxMklIdkRJSThkS2RYd3p5TnN6c0JkZkVIUXlpNW5kM0VGOHFweSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly9sb2NhbGhvc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1719510967);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
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
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2024-06-27 12:53:37', '$2y$12$hD.z4HEtfLsm.RGS.rbM6.cUYRtn7cZo/5DZVeQYLWDkng2gZ9eRK', 'egsJXj4j0V', '2024-06-27 12:53:38', '2024-06-27 12:53:38');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Индексы таблицы `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
