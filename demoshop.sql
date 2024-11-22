-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 22 2024 г., 13:40
-- Версия сервера: 10.8.4-MariaDB-log
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `demoshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_active_users`
--

CREATE TABLE `adkq_active_users` (
  `sid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `internalKey` int(11) NOT NULL DEFAULT 0,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lasthit` int(11) NOT NULL DEFAULT 0,
  `action` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `adkq_active_users`
--

INSERT INTO `adkq_active_users` (`sid`, `internalKey`, `username`, `lasthit`, `action`, `id`) VALUES
('mninggn5dgqpnvrajlero2firql5pih8', 1, 'admin', 1732271860, '112', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_active_user_locks`
--

CREATE TABLE `adkq_active_user_locks` (
  `id` int(11) NOT NULL,
  `sid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `internalKey` int(11) NOT NULL DEFAULT 0,
  `elementType` int(11) NOT NULL DEFAULT 0,
  `elementId` int(11) NOT NULL DEFAULT 0,
  `lasthit` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_active_user_sessions`
--

CREATE TABLE `adkq_active_user_sessions` (
  `sid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `internalKey` int(11) NOT NULL DEFAULT 0,
  `lasthit` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `adkq_active_user_sessions`
--

INSERT INTO `adkq_active_user_sessions` (`sid`, `internalKey`, `lasthit`, `ip`) VALUES
('mninggn5dgqpnvrajlero2firql5pih8', 1, 1732271860, '127.0.0.1');

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_categories`
--

CREATE TABLE `adkq_categories` (
  `id` int(11) NOT NULL,
  `category` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `adkq_categories`
--

INSERT INTO `adkq_categories` (`id`, `category`, `rank`) VALUES
(1, 'Manager and Admin', 5),
(2, 'Content', 2),
(3, 'Navigation', 6),
(4, 'SEO', 8),
(5, 'Commerce', 3),
(6, 'editDocs', 4),
(7, 'Шаблоны', 7),
(8, 'Контент', 1),
(9, 'Filter params', 0),
(10, 'Filters', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_commerce_currency`
--

CREATE TABLE `adkq_commerce_currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `code` varchar(8) NOT NULL,
  `value` float NOT NULL DEFAULT 1,
  `left` varchar(32) NOT NULL DEFAULT '',
  `right` varchar(32) NOT NULL DEFAULT '',
  `decimals` tinyint(3) UNSIGNED NOT NULL DEFAULT 2,
  `decsep` varchar(8) NOT NULL,
  `thsep` varchar(8) NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `default` tinyint(1) UNSIGNED NOT NULL,
  `lang` varchar(8) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `adkq_commerce_currency`
--

INSERT INTO `adkq_commerce_currency` (`id`, `title`, `code`, `value`, `left`, `right`, `decimals`, `decsep`, `thsep`, `active`, `default`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Рубль', 'RUB', 1, '', ' руб.', 2, ',', ' ', 1, 1, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_commerce_orders`
--

CREATE TABLE `adkq_commerce_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `amount` decimal(16,6) NOT NULL,
  `currency` varchar(8) NOT NULL,
  `lang` varchar(32) NOT NULL,
  `fields` text DEFAULT NULL,
  `status_id` tinyint(3) UNSIGNED NOT NULL,
  `hash` varchar(32) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `adkq_commerce_orders`
--

INSERT INTO `adkq_commerce_orders` (`id`, `customer_id`, `name`, `phone`, `email`, `amount`, `currency`, `lang`, `fields`, `status_id`, `hash`, `created_at`, `updated_at`) VALUES
(1, 0, 'tssttt', '213123123123', 'awfmlkwajdflk@fawjfawl.faf', '1859.000000', 'RUB', 'ru', '{\"formid\":\"order\"}', 1, 'f5b96c94a1ce0a34b1284c478b09dfa2', '2024-10-25 20:26:00', NULL),
(2, 0, 'tttt', '111111111111', 'dawd@adaw.rr', '10384.000000', 'RUB', 'ru', '{\"formid\":\"order\"}', 1, '3b686fa3a625a2e65a7d4d1c7a6fae90', '2024-11-01 15:45:12', NULL),
(3, 0, 'еуые', '12312312312', 'awdfafdD@fawda.rr', '4116.000000', 'RUB', 'ru', '{\"formid\":\"order\"}', 1, 'c2fd087ff2968129241097e2797529f1', '2024-11-02 18:37:11', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_commerce_order_history`
--

CREATE TABLE `adkq_commerce_order_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `notify` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `adkq_commerce_order_history`
--

INSERT INTO `adkq_commerce_order_history` (`id`, `order_id`, `status_id`, `comment`, `notify`, `user_id`, `created_at`) VALUES
(1, 1, 1, '', 0, 1, '2024-10-25 20:26:00'),
(2, 2, 1, '', 0, 1, '2024-11-01 15:45:12'),
(3, 3, 1, '', 0, 1, '2024-11-02 18:37:11');

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_commerce_order_payments`
--

CREATE TABLE `adkq_commerce_order_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(16,6) NOT NULL,
  `paid` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hash` varchar(128) NOT NULL,
  `payment_method` varchar(255) NOT NULL DEFAULT '',
  `original_order_id` varchar(255) NOT NULL DEFAULT '',
  `meta` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_commerce_order_products`
--

CREATE TABLE `adkq_commerce_order_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `price` decimal(16,6) NOT NULL,
  `count` float UNSIGNED NOT NULL DEFAULT 1,
  `options` text DEFAULT NULL,
  `meta` text DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `adkq_commerce_order_products`
--

INSERT INTO `adkq_commerce_order_products` (`id`, `order_id`, `product_id`, `title`, `price`, `count`, `options`, `meta`, `position`) VALUES
(1, 1, 49, 'Corporis tempora adipisci dolor.', '1859.000000', 1, '[]', '[]', 1),
(2, 2, 75, 'Sit ex numquam est omnis.', '1621.000000', 1, '{\"product_brand\":\"Brand two\",\"product_color\":\"Blue\"}', '[]', 1),
(3, 2, 98, 'Fugiat placeat sed voluptas.', '2390.000000', 1, '{\"product_brand\":\"Brand two\",\"product_color\":\"Blue\"}', '[]', 2),
(4, 2, 27, 'Expedita mollitia excepturi et.', '1694.000000', 1, '{\"product_brand\":\"Brand one\",\"product_color\":\"Blue\"}', '[]', 3),
(5, 2, 52, 'At sunt sit et quod nam sunt.', '2048.000000', 1, '{\"product_brand\":\"Brand two\",\"product_color\":\"Red\"}', '[]', 4),
(6, 2, 82, 'Delectus temporibus exercitationem tempore.', '2631.000000', 1, '{\"product_brand\":\"Brand two\",\"product_color\":\"Green\"}', '[]', 5),
(7, 3, 45, 'Magnam ut temporibus magni ullam et.', '1386.000000', 1, '{\"product_brand\":\"Brand one\",\"product_color\":\"Blue\"}', '[]', 1),
(8, 3, 23, 'Qui et voluptatum nisi et.', '2730.000000', 1, '{\"product_brand\":\"Brand three\",\"product_color\":\"Red\"}', '[]', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_commerce_order_statuses`
--

CREATE TABLE `adkq_commerce_order_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `color` varchar(6) NOT NULL DEFAULT '',
  `notify` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `default` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `canbepaid` tinyint(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `adkq_commerce_order_statuses`
--

INSERT INTO `adkq_commerce_order_statuses` (`id`, `title`, `alias`, `color`, `notify`, `default`, `canbepaid`) VALUES
(1, 'Новый', 'order.status.new', '000000', 0, 1, 1),
(2, 'В обработке', 'order.status.processing', '4CAF50', 0, 0, 1),
(3, 'Оплачен', 'order.status.paid', 'E91E63', 1, 0, 1),
(4, 'Доставлен', 'order.status.shipped', '673AB7', 0, 0, 1),
(5, 'Отменен', 'order.status.canceled', 'FF5722', 1, 0, 0),
(6, 'Завершен', 'order.status.complete', '2196F3', 0, 0, 0),
(7, 'Ожидание', 'order.status.pending', '9E9E9E', 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_documentgroup_names`
--

CREATE TABLE `adkq_documentgroup_names` (
  `id` int(11) NOT NULL,
  `name` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `private_memgroup` int(11) DEFAULT 0 COMMENT 'determine whether the document group is private to manager users',
  `private_webgroup` int(11) DEFAULT 0 COMMENT 'determines whether the document is private to web users'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_document_groups`
--

CREATE TABLE `adkq_document_groups` (
  `id` int(11) NOT NULL,
  `document_group` int(11) NOT NULL DEFAULT 0,
  `document` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_event_log`
--

CREATE TABLE `adkq_event_log` (
  `id` int(11) NOT NULL,
  `eventid` int(11) DEFAULT 0,
  `createdon` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '1- information, 2 - warning, 3- error',
  `user` int(11) NOT NULL DEFAULT 0 COMMENT 'link to user table',
  `usertype` int(11) NOT NULL DEFAULT 0 COMMENT '0 - manager, 1 - web',
  `source` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_list_catagory_table`
--

CREATE TABLE `adkq_list_catagory_table` (
  `id` int(11) NOT NULL,
  `sort` int(5) NOT NULL DEFAULT 0,
  `title` text NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `adkq_list_catagory_table`
--

INSERT INTO `adkq_list_catagory_table` (`id`, `sort`, `title`) VALUES
(1, 1, 'Brand'),
(2, 2, 'Color');

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_list_value_table`
--

CREATE TABLE `adkq_list_value_table` (
  `id` int(5) NOT NULL,
  `parent` int(5) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `sort` int(5) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `adkq_list_value_table`
--

INSERT INTO `adkq_list_value_table` (`id`, `parent`, `title`, `description`, `sort`) VALUES
(1, 1, 'Марка первая==1', 'Comment with brand one', 1),
(2, 1, 'Марка вторая==2', 'Brand two so good', 2),
(3, 2, 'Красный==1', '', 1),
(4, 2, 'Зеленый==2', '', 2),
(5, 2, 'Синий==3', '', 3),
(6, 1, 'Третья марка==3', 'Three or tree, idk', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_manager_log`
--

CREATE TABLE `adkq_manager_log` (
  `id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT 0,
  `internalKey` int(11) NOT NULL DEFAULT 0,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` int(11) NOT NULL DEFAULT 0,
  `itemid` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `itemname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `adkq_manager_log`
--

INSERT INTO `adkq_manager_log` (`id`, `timestamp`, `internalKey`, `username`, `action`, `itemid`, `itemname`, `message`, `ip`, `useragent`) VALUES
(1, 1731954358, 1, 'admin', 13, '', '-', 'Viewing logging', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(2, 1731954366, 1, 'admin', 27, '14', 'Commodi aliquid voluptates qui eos ex.', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(3, 1731954521, 1, 'admin', 112, '1', 'Extras', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(4, 1731954524, 1, 'admin', 112, '4', 'EditDocs', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(5, 1731954525, 1, 'admin', 112, '4', 'EditDocs', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(6, 1731954527, 1, 'admin', 112, '4', 'EditDocs', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(7, 1731954734, 1, 'admin', 93, '', '-', 'Backup Manager', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(8, 1731954736, 1, 'admin', 93, '', '-', 'Backup Manager', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(9, 1731954739, 1, 'admin', 112, '4', 'EditDocs', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(10, 1731954740, 1, 'admin', 112, '4', 'EditDocs', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(11, 1731954809, 1, 'admin', 112, '5', 'eLists', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(12, 1731954811, 1, 'admin', 112, '5', 'eLists', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(13, 1731954814, 1, 'admin', 112, '5', 'eLists', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(14, 1731954815, 1, 'admin', 112, '5', 'eLists', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(15, 1731954820, 1, 'admin', 112, '5', 'eLists', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(16, 1731955458, 1, 'admin', 112, '4', 'EditDocs', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(17, 1731955463, 1, 'admin', 112, '5', 'eLists', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(18, 1731955473, 1, 'admin', 76, '', '-', 'Element management', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(19, 1731955477, 1, 'admin', 301, '17', 'Brand', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(20, 1731955484, 1, 'admin', 302, '17', 'Бренд', 'Save Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(21, 1731955485, 1, 'admin', 301, '17', 'Бренд', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(22, 1731955489, 1, 'admin', 301, '18', 'Colors', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(23, 1731955494, 1, 'admin', 302, '18', 'Цвет', 'Save Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(24, 1731955494, 1, 'admin', 301, '18', 'Цвет', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(25, 1731955502, 1, 'admin', 27, '86', 'VIP пылесос для дома', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(26, 1731955519, 1, 'admin', 302, '18', 'Цвета', 'Save Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(27, 1731955519, 1, 'admin', 301, '18', 'Цвета', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(28, 1731955522, 1, 'admin', 27, '86', 'VIP пылесос для дома', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(29, 1731955536, 1, 'admin', 112, '5', 'eLists', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(30, 1731955539, 1, 'admin', 112, '5', 'eLists', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(31, 1731955540, 1, 'admin', 112, '5', 'eLists', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(32, 1731955545, 1, 'admin', 112, '5', 'eLists', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(33, 1731955546, 1, 'admin', 112, '5', 'eLists', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(34, 1731955548, 1, 'admin', 112, '5', 'eLists', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(35, 1731955554, 1, 'admin', 112, '5', 'eLists', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(36, 1731955555, 1, 'admin', 112, '5', 'eLists', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(37, 1731955557, 1, 'admin', 112, '5', 'eLists', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(38, 1731955560, 1, 'admin', 112, '5', 'eLists', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(39, 1731955562, 1, 'admin', 112, '5', 'eLists', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(40, 1731955565, 1, 'admin', 112, '5', 'eLists', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(41, 1731955567, 1, 'admin', 112, '5', 'eLists', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(42, 1731955569, 1, 'admin', 112, '5', 'eLists', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(43, 1731955580, 1, 'admin', 112, '5', 'eLists', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(44, 1731955583, 1, 'admin', 112, '5', 'eLists', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(45, 1731955585, 1, 'admin', 112, '5', 'eLists', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(46, 1731955592, 1, 'admin', 112, '5', 'eLists', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(47, 1731955593, 1, 'admin', 112, '5', 'eLists', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(48, 1731955595, 1, 'admin', 112, '5', 'eLists', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(49, 1731955600, 1, 'admin', 112, '5', 'eLists', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(50, 1731955602, 1, 'admin', 112, '5', 'eLists', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(51, 1731956155, 1, 'admin', 27, '4', 'Cat Section One', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(52, 1731956233, 1, 'admin', 27, '4', 'Cat Section One', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(53, 1731958481, 1, 'admin', 301, '17', 'Бренд', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(54, 1731958484, 1, 'admin', 27, '2', 'Каталог', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(55, 1731958492, 1, 'admin', 5, '2', 'Каталог', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(56, 1731958493, 1, 'admin', 27, '2', 'Каталог', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(57, 1731958501, 1, 'admin', 27, '4', 'Cat Section One', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(58, 1731958516, 1, 'admin', 120, '', '-', 'Idle (unknown)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(59, 1731958531, 1, 'admin', 301, '16', 'Main photo', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(60, 1731958534, 1, 'admin', 302, '16', 'Main photo', 'Save Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(61, 1731958535, 1, 'admin', 301, '16', 'Main photo', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(62, 1731958538, 1, 'admin', 27, '56', 'Стильный стол для работы', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(63, 1732263427, 1, 'admin', 58, '-', 'EVO', 'Logged in', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(64, 1732263434, 1, 'admin', 112, '1', 'Extras', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(65, 1732269728, 1, 'admin', 112, '1', 'Extras', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(66, 1732269779, 1, 'admin', 27, '56', 'Стильный стол для работы', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(67, 1732269788, 1, 'admin', 5, '56', 'Стильный стол для работы', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(68, 1732269788, 1, 'admin', 27, '56', 'Стильный стол для работы', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(69, 1732270044, 1, 'admin', 27, '56', 'Стильный стол для работы', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(70, 1732271605, 1, 'admin', 112, '4', 'EditDocs', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(71, 1732271608, 1, 'admin', 112, '4', 'EditDocs', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(72, 1732271609, 1, 'admin', 112, '4', 'EditDocs', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(73, 1732271853, 1, 'admin', 93, '', '-', 'Backup Manager', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(74, 1732271858, 1, 'admin', 93, '', '-', 'Backup Manager', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36'),
(75, 1732271861, 1, 'admin', 112, '4', 'EditDocs', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36');

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_membergroup_access`
--

CREATE TABLE `adkq_membergroup_access` (
  `id` int(11) NOT NULL,
  `membergroup` int(11) NOT NULL DEFAULT 0,
  `documentgroup` int(11) NOT NULL DEFAULT 0,
  `context` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_membergroup_names`
--

CREATE TABLE `adkq_membergroup_names` (
  `id` int(11) NOT NULL,
  `name` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_member_groups`
--

CREATE TABLE `adkq_member_groups` (
  `id` int(11) NOT NULL,
  `user_group` int(11) NOT NULL DEFAULT 0,
  `member` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_migrations_install`
--

CREATE TABLE `adkq_migrations_install` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `adkq_migrations_install`
--

INSERT INTO `adkq_migrations_install` (`id`, `migration`, `batch`) VALUES
(1, '2018_06_29_182342_create_active_user_locks_table', 1),
(2, '2018_06_29_182342_create_active_user_sessions_table', 1),
(3, '2018_06_29_182342_create_active_users_table', 1),
(4, '2018_06_29_182342_create_categories_table', 1),
(5, '2018_06_29_182342_create_document_groups_table', 1),
(6, '2018_06_29_182342_create_documentgroup_names_table', 1),
(7, '2018_06_29_182342_create_event_log_table', 1),
(8, '2018_06_29_182342_create_manager_log_table', 1),
(9, '2018_06_29_182342_create_manager_users_table', 1),
(10, '2018_06_29_182342_create_member_groups_table', 1),
(11, '2018_06_29_182342_create_membergroup_access_table', 1),
(12, '2018_06_29_182342_create_membergroup_names_table', 1),
(13, '2018_06_29_182342_create_permissions_groups_table', 1),
(14, '2018_06_29_182342_create_permissions_table', 1),
(15, '2018_06_29_182342_create_role_permissions_table', 1),
(16, '2018_06_29_182342_create_site_content_table', 1),
(17, '2018_06_29_182342_create_site_htmlsnippets_table', 1),
(18, '2018_06_29_182342_create_site_module_access_table', 1),
(19, '2018_06_29_182342_create_site_module_depobj_table', 1),
(20, '2018_06_29_182342_create_site_modules_table', 1),
(21, '2018_06_29_182342_create_site_plugin_events_table', 1),
(22, '2018_06_29_182342_create_site_plugins_table', 1),
(23, '2018_06_29_182342_create_site_snippets_table', 1),
(24, '2018_06_29_182342_create_site_templates_table', 1),
(25, '2018_06_29_182342_create_site_tmplvar_access_table', 1),
(26, '2018_06_29_182342_create_site_tmplvar_contentvalues_table', 1),
(27, '2018_06_29_182342_create_site_tmplvar_templates_table', 1),
(28, '2018_06_29_182342_create_site_tmplvars_table', 1),
(29, '2018_06_29_182342_create_system_eventnames_table', 1),
(30, '2018_06_29_182342_create_system_settings_table', 1),
(31, '2018_06_29_182342_create_user_attributes_table', 1),
(32, '2018_06_29_182342_create_user_roles_table', 1),
(33, '2018_06_29_182342_create_user_settings_table', 1),
(34, '2018_06_29_182342_create_web_groups_table', 1),
(35, '2018_06_29_182342_create_web_user_attributes_table', 1),
(36, '2018_06_29_182342_create_web_user_settings_table', 1),
(37, '2018_06_29_182342_create_web_users_table', 1),
(38, '2018_06_29_182342_create_webgroup_access_table', 1),
(39, '2018_06_29_182342_create_webgroup_names_table', 1),
(40, '2020_09_12_110820_create_site_content_closure', 1),
(41, '2020_09_16_110820_update_web_user_attributes_table', 1),
(42, '2020_10_05_124820_second_update_web_user_attributes_table', 1),
(43, '2020_10_05_154230_drop_manager_user_tables', 1),
(44, '2020_10_05_162325_rename_web_user_tables', 1),
(45, '2020_10_08_112342_remove_column_from_role_table', 1),
(46, '2020_10_12_065655_make_guid_nullable_in_modules', 1),
(47, '2020_10_12_065655_make_moduleguid_nullable_in_plugins', 1),
(48, '2020_10_28_154230_drop_webuser_group_tables', 1),
(49, '2020_10_30_065655_make_dob_nullable_in_userattributes', 1),
(50, '2020_11_02_100555_add_token_columns_to_user_table', 1),
(51, '2020_11_10_110555_add_verified_columns_to_user_table', 1),
(52, '2020_11_22_114803_create_user_role_vars', 1),
(53, '2020_11_22_114809_create_user_values', 1),
(54, '2020_12_23_065655_make_display_nullable_in_tmplvars', 1),
(55, '2021_02_05_121655_add_index_to_pubdate_column_content_table', 1),
(56, '2021_02_10_060454_add_properties_column_to_site_tmplvars', 1),
(57, '2021_02_17_102610_rename_donthit_column_in_site_content_table', 1),
(58, '2022_04_17_133922_add_context_column_to_membergroup_access', 1),
(59, '2022_09_07_130522_resize_ip_column_in_manager_log', 1),
(60, '2022_12_03_183200_add_unique_index_to_name_col_in_system_eventnames_table', 1),
(61, '2023_01_06_191600_add_indexes_to_fields_in_manager_log_table', 1),
(62, '2023_10_06_145300_modify_fullname_column_in_userattributes_table', 1),
(63, '2024_03_13_001412_add_templatecontroller_column_to_site_templates', 1),
(64, '2018_06_29_182342_create_permissions_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_permissions`
--

CREATE TABLE `adkq_permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(11) DEFAULT NULL,
  `disabled` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `adkq_permissions`
--

INSERT INTO `adkq_permissions` (`id`, `name`, `key`, `lang_key`, `group_id`, `disabled`, `created_at`, `updated_at`) VALUES
(1, 'Request manager frames', 'frames', 'role_frames', 1, 1, NULL, NULL),
(2, 'Request manager intro page', 'home', 'role_home', 1, 1, NULL, NULL),
(3, 'Log out of the manager', 'logout', 'role_logout', 1, 1, NULL, NULL),
(4, 'View help pages', 'help', 'role_help', 1, 0, NULL, NULL),
(5, 'View action completed screen', 'action_ok', 'role_actionok', 1, 1, NULL, NULL),
(6, 'View error dialog', 'error_dialog', 'role_errors', 1, 1, NULL, NULL),
(7, 'View the about page', 'about', 'role_about', 1, 1, NULL, NULL),
(8, 'View credits', 'credits', 'role_credits', 1, 1, NULL, NULL),
(9, 'Change password', 'change_password', 'role_change_password', 1, 0, NULL, NULL),
(10, 'Save password', 'save_password', 'role_save_password', 1, 0, NULL, NULL),
(11, 'View a Resource\'s data', 'view_document', 'role_view_docdata', 2, 1, NULL, NULL),
(12, 'Create new Resources', 'new_document', 'role_create_doc', 2, 0, NULL, NULL),
(13, 'Edit a Resource', 'edit_document', 'role_edit_doc', 2, 0, NULL, NULL),
(14, 'Change Resource-Type', 'change_resourcetype', 'role_change_resourcetype', 2, 0, NULL, NULL),
(15, 'Save Resources', 'save_document', 'role_save_doc', 2, 0, NULL, NULL),
(16, 'Publish Resources', 'publish_document', 'role_publish_doc', 2, 0, NULL, NULL),
(17, 'Delete Resources', 'delete_document', 'role_delete_doc', 2, 0, NULL, NULL),
(18, 'Permanently purge deleted Resources', 'empty_trash', 'role_empty_trash', 2, 0, NULL, NULL),
(19, 'Empty the site\'s cache', 'empty_cache', 'role_cache_refresh', 2, 0, NULL, NULL),
(20, 'View Unpublished Resources', 'view_unpublished', 'role_view_unpublished', 2, 0, NULL, NULL),
(21, 'Use the file manager (full root access)', 'file_manager', 'role_file_manager', 3, 0, NULL, NULL),
(22, 'Manage assets/files', 'assets_files', 'role_assets_files', 3, 0, NULL, NULL),
(23, 'Manage assets/images', 'assets_images', 'role_assets_images', 3, 0, NULL, NULL),
(24, 'Use the Category Manager', 'category_manager', 'role_category_manager', 4, 0, NULL, NULL),
(25, 'Create new Module', 'new_module', 'role_new_module', 5, 0, NULL, NULL),
(26, 'Edit Module', 'edit_module', 'role_edit_module', 5, 0, NULL, NULL),
(27, 'Save Module', 'save_module', 'role_save_module', 5, 0, NULL, NULL),
(28, 'Delete Module', 'delete_module', 'role_delete_module', 5, 0, NULL, NULL),
(29, 'Run Module', 'exec_module', 'role_run_module', 5, 0, NULL, NULL),
(30, 'List Module', 'list_module', 'role_list_module', 5, 0, NULL, NULL),
(31, 'Create new site Templates', 'new_template', 'role_create_template', 6, 0, NULL, NULL),
(32, 'Edit site Templates', 'edit_template', 'role_edit_template', 6, 0, NULL, NULL),
(33, 'Save Templates', 'save_template', 'role_save_template', 6, 0, NULL, NULL),
(34, 'Delete Templates', 'delete_template', 'role_delete_template', 6, 0, NULL, NULL),
(35, 'Create new Snippets', 'new_snippet', 'role_create_snippet', 7, 0, NULL, NULL),
(36, 'Edit Snippets', 'edit_snippet', 'role_edit_snippet', 7, 0, NULL, NULL),
(37, 'Save Snippets', 'save_snippet', 'role_save_snippet', 7, 0, NULL, NULL),
(38, 'Delete Snippets', 'delete_snippet', 'role_delete_snippet', 7, 0, NULL, NULL),
(39, 'Create new Chunks', 'new_chunk', 'role_create_chunk', 8, 0, NULL, NULL),
(40, 'Edit Chunks', 'edit_chunk', 'role_edit_chunk', 8, 0, NULL, NULL),
(41, 'Save Chunks', 'save_chunk', 'role_save_chunk', 8, 0, NULL, NULL),
(42, 'Delete Chunks', 'delete_chunk', 'role_delete_chunk', 8, 0, NULL, NULL),
(43, 'Create new Plugins', 'new_plugin', 'role_create_plugin', 9, 0, NULL, NULL),
(44, 'Edit Plugins', 'edit_plugin', 'role_edit_plugin', 9, 0, NULL, NULL),
(45, 'Save Plugins', 'save_plugin', 'role_save_plugin', 9, 0, NULL, NULL),
(46, 'Delete Plugins', 'delete_plugin', 'role_delete_plugin', 9, 0, NULL, NULL),
(47, 'Create new users', 'new_user', 'role_new_user', 10, 0, NULL, NULL),
(48, 'Edit users', 'edit_user', 'role_edit_user', 10, 0, NULL, NULL),
(49, 'Save users', 'save_user', 'role_save_user', 10, 0, NULL, NULL),
(50, 'Delete users', 'delete_user', 'role_delete_user', 10, 0, NULL, NULL),
(51, 'Manager access permissions', 'access_permissions', 'manager_access_permissions', 11, 0, NULL, NULL),
(52, 'Manage document and user groups', 'manage_groups', 'manage_groups', 11, 0, NULL, NULL),
(53, 'Manage document permissions', 'manage_document_permissions', 'manage_document_permissions', 11, 0, NULL, NULL),
(54, 'Manage module permissions', 'manage_module_permissions', 'manage_module_permissions', 11, 0, NULL, NULL),
(55, 'Manage TV permissions', 'manage_tv_permissions', 'manage_tv_permissions', 11, 0, NULL, NULL),
(56, 'Create new roles', 'new_role', 'role_new_role', 12, 0, NULL, NULL),
(57, 'Edit roles', 'edit_role', 'role_edit_role', 12, 0, NULL, NULL),
(58, 'Save roles', 'save_role', 'role_save_role', 12, 0, NULL, NULL),
(59, 'Delete roles', 'delete_role', 'role_delete_role', 12, 0, NULL, NULL),
(60, 'View event log', 'view_eventlog', 'role_view_eventlog', 13, 0, NULL, NULL),
(61, 'Delete event log', 'delete_eventlog', 'role_delete_eventlog', 13, 0, NULL, NULL),
(62, 'View system logs', 'logs', 'role_view_logs', 14, 0, NULL, NULL),
(63, 'Change site settings', 'settings', 'role_edit_settings', 14, 0, NULL, NULL),
(64, 'Use the Backup Manager', 'bk_manager', 'role_bk_manager', 14, 0, NULL, NULL),
(65, 'Remove Locks', 'remove_locks', 'role_remove_locks', 14, 0, NULL, NULL),
(66, 'Display Locks', 'display_locks', 'role_display_locks', 14, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_permissions_groups`
--

CREATE TABLE `adkq_permissions_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `adkq_permissions_groups`
--

INSERT INTO `adkq_permissions_groups` (`id`, `name`, `lang_key`, `created_at`, `updated_at`) VALUES
(1, 'General', 'page_data_general', NULL, NULL),
(2, 'Content Management', 'role_content_management', NULL, NULL),
(3, 'File Management', 'role_file_management', NULL, NULL),
(4, 'Category Management', 'category_management', NULL, NULL),
(5, 'Module Management', 'role_module_management', NULL, NULL),
(6, 'Template Management', 'role_template_management', NULL, NULL),
(7, 'Snippet Management', 'role_snippet_management', NULL, NULL),
(8, 'Chunk Management', 'role_chunk_management', NULL, NULL),
(9, 'Plugin Management', 'role_plugin_management', NULL, NULL),
(10, 'User Management', 'role_user_management', NULL, NULL),
(11, 'Permissions', 'role_udperms', NULL, NULL),
(12, 'Role Management', 'role_role_management', NULL, NULL),
(13, 'Events Log Management', 'role_eventlog_management', NULL, NULL),
(14, 'Config Management', 'role_config_management', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_role_permissions`
--

CREATE TABLE `adkq_role_permissions` (
  `id` int(11) NOT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `adkq_role_permissions`
--

INSERT INTO `adkq_role_permissions` (`id`, `permission`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'frames', 1, NULL, NULL),
(2, 'home', 1, NULL, NULL),
(3, 'logout', 1, NULL, NULL),
(4, 'help', 1, NULL, NULL),
(5, 'role_actionok', 1, NULL, NULL),
(6, 'error_dialog', 1, NULL, NULL),
(7, 'about', 1, NULL, NULL),
(8, 'credits', 1, NULL, NULL),
(9, 'change_password', 1, NULL, NULL),
(10, 'save_password', 1, NULL, NULL),
(11, 'view_document', 1, NULL, NULL),
(12, 'new_document', 1, NULL, NULL),
(13, 'edit_document', 1, NULL, NULL),
(14, 'change_resourcetype', 1, NULL, NULL),
(15, 'save_document', 1, NULL, NULL),
(16, 'publish_document', 1, NULL, NULL),
(17, 'delete_document', 1, NULL, NULL),
(18, 'empty_trash', 1, NULL, NULL),
(19, 'empty_cache', 1, NULL, NULL),
(20, 'view_unpublished', 1, NULL, NULL),
(21, 'file_manager', 1, NULL, NULL),
(22, 'assets_files', 1, NULL, NULL),
(23, 'assets_images', 1, NULL, NULL),
(24, 'category_manager', 1, NULL, NULL),
(25, 'new_module', 1, NULL, NULL),
(26, 'edit_module', 1, NULL, NULL),
(27, 'save_module', 1, NULL, NULL),
(28, 'delete_module', 1, NULL, NULL),
(29, 'exec_module', 1, NULL, NULL),
(30, 'list_module', 1, NULL, NULL),
(31, 'new_template', 1, NULL, NULL),
(32, 'edit_template', 1, NULL, NULL),
(33, 'save_template', 1, NULL, NULL),
(34, 'delete_template', 1, NULL, NULL),
(35, 'new_snippet', 1, NULL, NULL),
(36, 'edit_snippet', 1, NULL, NULL),
(37, 'save_snippet', 1, NULL, NULL),
(38, 'delete_snippet', 1, NULL, NULL),
(39, 'new_chunk', 1, NULL, NULL),
(40, 'edit_chunk', 1, NULL, NULL),
(41, 'save_chunk', 1, NULL, NULL),
(42, 'delete_chunk', 1, NULL, NULL),
(43, 'new_plugin', 1, NULL, NULL),
(44, 'edit_plugin', 1, NULL, NULL),
(45, 'save_plugin', 1, NULL, NULL),
(46, 'delete_plugin', 1, NULL, NULL),
(47, 'new_user', 1, NULL, NULL),
(48, 'edit_user', 1, NULL, NULL),
(49, 'save_user', 1, NULL, NULL),
(50, 'delete_user', 1, NULL, NULL),
(51, 'access_permissions', 1, NULL, NULL),
(52, 'manage_groups', 1, NULL, NULL),
(53, 'manage_document_permissions', 1, NULL, NULL),
(54, 'manage_module_permissions', 1, NULL, NULL),
(55, 'manage_tv_permissions', 1, NULL, NULL),
(56, 'new_role', 1, NULL, NULL),
(57, 'edit_role', 1, NULL, NULL),
(58, 'save_role', 1, NULL, NULL),
(59, 'delete_role', 1, NULL, NULL),
(60, 'view_eventlog', 1, NULL, NULL),
(61, 'delete_eventlog', 1, NULL, NULL),
(62, 'logs', 1, NULL, NULL),
(63, 'settings', 1, NULL, NULL),
(64, 'bk_manager', 1, NULL, NULL),
(65, 'remove_locks', 1, NULL, NULL),
(66, 'display_locks', 1, NULL, NULL),
(67, 'frames', 2, NULL, NULL),
(68, 'home', 2, NULL, NULL),
(69, 'logout', 2, NULL, NULL),
(70, 'help', 2, NULL, NULL),
(71, 'role_actionok', 2, NULL, NULL),
(72, 'error_dialog', 2, NULL, NULL),
(73, 'about', 2, NULL, NULL),
(74, 'credits', 2, NULL, NULL),
(75, 'change_password', 2, NULL, NULL),
(76, 'save_password', 2, NULL, NULL),
(77, 'view_document', 2, NULL, NULL),
(78, 'new_document', 2, NULL, NULL),
(79, 'edit_document', 2, NULL, NULL),
(80, 'change_resourcetype', 2, NULL, NULL),
(81, 'save_document', 2, NULL, NULL),
(82, 'publish_document', 2, NULL, NULL),
(83, 'delete_document', 2, NULL, NULL),
(84, 'empty_cache', 2, NULL, NULL),
(85, 'view_unpublished', 2, NULL, NULL),
(86, 'file_manager', 2, NULL, NULL),
(87, 'assets_files', 2, NULL, NULL),
(88, 'assets_images', 2, NULL, NULL),
(89, 'exec_module', 2, NULL, NULL),
(90, 'list_module', 2, NULL, NULL),
(91, 'edit_chunk', 2, NULL, NULL),
(92, 'save_chunk', 2, NULL, NULL),
(93, 'remove_locks', 2, NULL, NULL),
(94, 'display_locks', 2, NULL, NULL),
(95, 'access_permissions', 2, NULL, NULL),
(96, 'manage_document_permissions', 2, NULL, NULL),
(97, 'frames', 3, NULL, NULL),
(98, 'home', 3, NULL, NULL),
(99, 'logout', 3, NULL, NULL),
(100, 'help', 3, NULL, NULL),
(101, 'role_actionok', 3, NULL, NULL),
(102, 'error_dialog', 3, NULL, NULL),
(103, 'about', 3, NULL, NULL),
(104, 'credits', 3, NULL, NULL),
(105, 'change_password', 3, NULL, NULL),
(106, 'save_password', 3, NULL, NULL),
(107, 'view_document', 3, NULL, NULL),
(108, 'new_document', 3, NULL, NULL),
(109, 'edit_document', 3, NULL, NULL),
(110, 'change_resourcetype', 3, NULL, NULL),
(111, 'save_document', 3, NULL, NULL),
(112, 'publish_document', 3, NULL, NULL),
(113, 'delete_document', 3, NULL, NULL),
(114, 'empty_trash', 3, NULL, NULL),
(115, 'empty_cache', 3, NULL, NULL),
(116, 'view_unpublished', 3, NULL, NULL),
(117, 'file_manager', 3, NULL, NULL),
(118, 'assets_files', 3, NULL, NULL),
(119, 'assets_images', 3, NULL, NULL),
(120, 'exec_module', 3, NULL, NULL),
(121, 'list_module', 3, NULL, NULL),
(122, 'new_template', 3, NULL, NULL),
(123, 'edit_template', 3, NULL, NULL),
(124, 'save_template', 3, NULL, NULL),
(125, 'delete_template', 3, NULL, NULL),
(126, 'new_chunk', 3, NULL, NULL),
(127, 'edit_chunk', 3, NULL, NULL),
(128, 'save_chunk', 3, NULL, NULL),
(129, 'delete_chunk', 3, NULL, NULL),
(130, 'new_user', 3, NULL, NULL),
(131, 'edit_user', 3, NULL, NULL),
(132, 'save_user', 3, NULL, NULL),
(133, 'delete_user', 3, NULL, NULL),
(134, 'logs', 3, NULL, NULL),
(135, 'settings', 3, NULL, NULL),
(136, 'bk_manager', 3, NULL, NULL),
(137, 'remove_locks', 3, NULL, NULL),
(138, 'display_locks', 3, NULL, NULL),
(139, 'access_permissions', 3, NULL, NULL),
(140, 'manage_document_permissions', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_site_content`
--

CREATE TABLE `adkq_site_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'document',
  `contentType` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `longtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(245) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `link_attributes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Link attriubtes',
  `published` int(11) NOT NULL DEFAULT 0,
  `pub_date` int(11) NOT NULL DEFAULT 0,
  `unpub_date` int(11) NOT NULL DEFAULT 0,
  `parent` int(11) NOT NULL DEFAULT 0,
  `isfolder` int(11) NOT NULL DEFAULT 0,
  `introtext` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Used to provide quick summary of the document',
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `richtext` tinyint(1) NOT NULL DEFAULT 1,
  `template` int(11) NOT NULL DEFAULT 0,
  `menuindex` int(11) NOT NULL DEFAULT 0,
  `searchable` int(11) NOT NULL DEFAULT 1,
  `cacheable` int(11) NOT NULL DEFAULT 1,
  `createdby` int(11) NOT NULL DEFAULT 0,
  `createdon` int(11) NOT NULL DEFAULT 0,
  `editedby` int(11) NOT NULL DEFAULT 0,
  `editedon` int(11) NOT NULL DEFAULT 0,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `deletedon` int(11) NOT NULL DEFAULT 0,
  `deletedby` int(11) NOT NULL DEFAULT 0,
  `publishedon` int(11) NOT NULL DEFAULT 0 COMMENT 'Date the document was published',
  `publishedby` int(11) NOT NULL DEFAULT 0 COMMENT 'ID of user who published the document',
  `menutitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Menu title',
  `hide_from_tree` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Disable page hit count',
  `privateweb` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Private web document',
  `privatemgr` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Private manager document',
  `content_dispo` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-inline, 1-attachment',
  `hidemenu` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Hide document from menu',
  `alias_visible` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `adkq_site_content`
--

INSERT INTO `adkq_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `hide_from_tree`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `alias_visible`) VALUES
(1, 'document', 'text/html', 'Главная', '', '', 'glavnaya', '', 1, 0, 0, 0, 0, '', '', 1, 1, 0, 1, 1, 0, 1130304721, 1, 1729970255, 0, 0, 0, 1130304721, 1, '', 0, 0, 0, 0, 0, 1),
(2, 'document', 'text/html', 'Каталог', '', '', 'catalog', '', 1, 0, 0, 0, 1, '', '', 1, 2, 1, 1, 1, 1, 1728752833, 0, 1731953195, 0, 0, 0, 1728752833, 1, '', 0, 0, 0, 0, 0, 1),
(3, 'document', 'text/html', 'Корзина', '', '', 'cart', '', 1, 0, 0, 0, 0, '', '', 1, 4, 6, 1, 1, 1, 1728753000, 0, 1729970255, 0, 0, 0, 1728753000, 1, '', 0, 0, 0, 0, 1, 1),
(4, 'document', 'text/html', 'Cat Section One', '', '', 'cat-section-one', '', 1, 0, 0, 2, 1, '', '<p>Similique delectus voluptates sint quibusdam non nam. Dicta labore alias aut pariatur. Velit fugit est omnis qui velit quis. Voluptate magni quis dolorum in. Natus doloribus aut consequatur quas accusamus nemo commodi. Eaque quisquam culpa earum aut. Autem non maiores recusandae amet. Omnis consectetur exercitationem ut saepe maxime consequuntur. Dicta praesentium fuga doloribus perspiciatis. Maxime est est provident aut aliquam quod itaque ad. Dolor est enim est. Nihil eaque recusandae voluptates in officiis maiores dolore temporibus. Molestiae quos in est rerum exercitationem modi. In facere minima libero dolore porro illo. Sed dolorem ut modi tempore laboriosam et. Consequatur eum similique ullam rerum recusandae ab. Non veniam doloribus ratione voluptatem id recusandae quia molestiae. Pariatur consectetur voluptatum laborum qui distinctio eum sint qui. Eos rerum perferendis occaecati perspiciatis voluptatem qui delectus. At sint dolores repellendus quasi. Nihil non atque et.</p>', 1, 5, 0, 1, 1, 1, 1728756115, 1, 1731953191, 0, 0, 0, 1728756173, 0, '', 0, 0, 0, 0, 1, 1),
(5, 'document', 'text/html', 'Section tree', '', '', 'section-tree', '', 1, 0, 0, 2, 1, '', '<p>Voluptates nisi doloribus sed modi est nemo odit illum. Consequatur ea eum veritatis sint blanditiis eum nobis eos. Voluptatum corrupti nobis et odio ducimus. Rerum impedit cupiditate est suscipit ea sed odit. Soluta et cupiditate repudiandae repellendus minus mollitia voluptas. Magni quaerat voluptatum ut eos architecto. Hic facere aut ex et sapiente temporibus. Et soluta voluptatem consequatur pariatur omnis consequatur rerum accusantium. Nisi beatae et quia at dolores ipsum. Dolore aut rerum inventore voluptatum. Error atque aut tenetur eveniet. Illo porro quos saepe cumque corporis. Cupiditate dolores debitis ut omnis eum et. Ut molestiae quia quos hic maxime. Debitis dolores at et id est. Blanditiis maxime repudiandae magnam qui earum placeat quia est. Cum velit modi tempora qui ducimus. Earum voluptatem reprehenderit delectus eum optio. Maxime dolor fugit vel rerum. Fuga totam omnis voluptatibus. Quibusdam quae illum nemo et est sed deserunt.</p>', 1, 5, 1, 1, 1, 1, 1728756115, 1, 1731953191, 0, 0, 0, 1728756173, 0, '', 0, 0, 0, 0, 1, 1),
(6, 'document', 'text/html', 'Section two', '', '', 'section-two', '', 1, 0, 0, 2, 1, '', '<p>Doloribus ullam repellat blanditiis doloremque sed aut. Dolorum voluptas enim magnam atque. Non expedita molestias qui quasi aliquam. Praesentium repellat laborum voluptatem molestiae cupiditate. Quaerat corporis amet ab. Numquam iure est numquam numquam ad error vitae. Magnam rerum ex quod rem atque aspernatur. Consectetur optio blanditiis sunt. Voluptatem deserunt nemo id quaerat. Quo ea qui similique. Necessitatibus sit porro sed sed id aperiam inventore. Quas deleniti dolor eligendi. Distinctio quis occaecati fuga natus aut in. Reprehenderit nemo fugiat ipsam commodi veniam dolore. Maiores corrupti id doloremque laborum est ipsa animi. Architecto ipsa magni sunt nobis modi doloremque. Aliquid optio qui similique et. Aut ad autem minus similique. Dolorum similique debitis provident doloremque necessitatibus ut. Eius possimus facilis saepe culpa quidem consequuntur non. Amet officiis nihil minus veritatis aut hic praesentium.</p>', 1, 5, 2, 1, 1, 1, 1728756115, 1, 1731953195, 0, 0, 0, 1728756173, 0, '', 0, 0, 0, 0, 1, 1),
(7, 'document', 'text/html', 'Section Four', '', '', 'section-four', '', 1, 0, 0, 2, 1, '', '<p>Id voluptatum voluptate sit aliquam nesciunt nihil. Fuga amet asperiores voluptas nobis. Saepe aut dolores est voluptatibus illum. Non omnis amet delectus ex. Nostrum porro perferendis expedita. Quaerat excepturi aut ab nihil. Eum quam beatae non temporibus non qui a. In esse itaque libero quae eveniet molestiae. Magni nulla accusamus rerum et et error magni. Aut laudantium eos esse reprehenderit enim odio. Corrupti vitae voluptate sequi magni vitae. Et dolorem neque minima ratione rerum. Natus maiores nam natus velit. Ullam quas molestiae ut. Minus tempore et ad enim dolores dolorum. Illo dignissimos in ut eum temporibus. Quo eaque ea veniam facilis eos. Distinctio nihil sit maiores. Et perferendis consequatur et neque harum quibusdam eveniet repellendus. Reprehenderit reprehenderit quasi reiciendis. Consequatur omnis saepe maxime quia blanditiis et. Fugiat dolores distinctio ex doloribus autem sit. Enim animi at non nemo.</p>', 1, 5, 5, 1, 1, 1, 1728756115, 1, 1731953191, 0, 0, 0, 1728756173, 0, '', 0, 0, 0, 0, 1, 1),
(8, 'document', 'text/html', 'Section five', '', '', 'section-five', '', 1, 0, 0, 2, 1, '', '<p>Qui officiis explicabo ipsam est qui et. Pariatur molestiae debitis sed ad. Sunt sit aliquid sit. Porro rerum totam consequatur recusandae aut omnis officia molestiae. Pariatur quo et delectus placeat consequuntur quaerat deleniti. Molestiae omnis illo id et a quam dicta. Repellendus quis quaerat aut cupiditate omnis veritatis. Modi earum rerum sapiente similique. Et eveniet omnis alias suscipit fugit. Dignissimos illum corporis corrupti. Velit alias magnam autem optio. Sed autem quia nam modi rem dolorem maiores. Pariatur provident quos debitis quas. Voluptatem accusamus aut non et ea earum eaque. Distinctio facere aperiam maxime. Excepturi itaque omnis qui dicta quasi esse consectetur blanditiis. At reprehenderit repellat a quis impedit. Enim qui excepturi necessitatibus quam. Quo aut consequuntur est voluptas velit nisi error. Sed accusamus quidem est corrupti blanditiis non. Tempora a doloremque atque saepe repellendus quos error.</p>', 1, 5, 3, 1, 1, 1, 1728756115, 1, 1731953193, 0, 0, 0, 1728756173, 0, '', 0, 0, 0, 0, 1, 1),
(9, 'document', 'text/html', 'Обзоры', '', '', 'articles', '', 1, 0, 0, 0, 1, '', '<p>Officia et similique repudiandae aut delectus aut. Voluptatem assumenda modi ea qui saepe et. Omnis dolorem numquam cumque est. Nesciunt molestias facilis eum non. Dolor nam sed dicta quis accusantium deleniti. Nihil quia repudiandae quia fuga quis velit sint explicabo. Et necessitatibus enim quo perferendis. Voluptatem voluptatem ipsa esse vel tenetur in sint consectetur. Sequi laudantium ut voluptatibus nihil. Rem quo blanditiis et est. Nam non veritatis odio ipsum vero. Et sit aut aliquam reprehenderit possimus aliquid velit. Voluptas accusantium tempora quia. Soluta et maxime facilis et ea. Repudiandae in quas sapiente adipisci. Molestiae iste vel in temporibus qui. Non cum est ad rerum enim voluptatibus dicta. Dolorem ex nulla praesentium explicabo rerum vel. Nam ea ipsa molestiae aliquid quis. Possimus doloremque omnis fuga accusantium est. Eum pariatur sunt in dolorem eius non.</p>', 1, 6, 2, 1, 1, 1, 1728756115, 1, 1729970255, 0, 0, 0, 1728756173, 0, '', 0, 0, 0, 0, 0, 1),
(10, 'document', 'text/html', 'Оформление', '', '', 'send', '', 1, 0, 0, 0, 0, '', '<p>Occaecati et nihil odio. Sit praesentium quia iusto earum exercitationem aut voluptatum. Mollitia et velit voluptas explicabo error fugiat vel. Et ea qui qui dolore at enim. Dolorem est veniam facere ab. Nihil eligendi rerum nulla ducimus omnis nisi. Qui aut et reiciendis temporibus accusantium corporis. Illum voluptas magnam beatae aliquam nulla. Error veniam nihil rerum quidem. Ducimus quas et qui dolorum in numquam. Accusamus vel labore sit quia quia. Non ut sit ducimus cupiditate. Explicabo ea quo facilis eaque neque. Soluta porro adipisci distinctio non ex nulla laborum. Id fugiat et odit modi unde iure. Sunt eos et asperiores incidunt non vel. Non quia sed esse at beatae nobis. Iste vitae ab impedit natus dicta illum. Error occaecati dolor dicta. Ratione aut non earum aliquam totam est. Repudiandae commodi ea qui. Distinctio consequatur iure asperiores occaecati autem iure harum unde.</p>', 1, 3, 7, 1, 1, 1, 1728756115, 1, 1729970255, 0, 0, 0, 1728756173, 0, '', 0, 0, 0, 0, 1, 1),
(11, 'document', 'text/html', '404', '', '', '404', '', 1, 0, 0, 0, 0, '', '<p>Not found</p>\r\n<p>Expedita qui in omnis mollitia animi molestias. Qui dolores ratione quia maiores. Et laudantium doloremque fugit maxime veritatis iste non in. Accusamus cumque sit neque mollitia totam odio harum iure. Minima recusandae sunt optio odit voluptatem. Eum ut ipsa sit et aliquam. Rerum delectus sed quas neque omnis quia. Molestiae fuga consequuntur deserunt rem. Odit nisi possimus sequi. Ut aut veniam voluptatem numquam suscipit velit quo. Earum deleniti nihil eaque facere esse et in. Enim corporis quia fugiat vel odio. Nobis deserunt ullam qui nobis. Autem earum vitae tenetur quasi laudantium sit consequatur officiis. Non omnis enim repudiandae possimus debitis occaecati sed eos. Iure aut itaque suscipit voluptate harum. Error omnis doloribus aut deserunt et sint omnis sit. Est exercitationem hic aut quae cupiditate et deleniti. Voluptas tempora autem et fuga ea eos tenetur. Possimus illo mollitia magni est. Non quasi doloribus iure et. Illo dolorem et aliquid veritatis officiis labore.</p>', 1, 8, 8, 1, 1, 1, 1728756115, 1, 1729970255, 0, 0, 0, 1728756173, 0, '', 0, 0, 0, 0, 1, 1),
(12, 'document', 'text/html', 'О компании', '', '', 'about', '', 1, 0, 0, 0, 0, '', '<p>Veniam eum quaerat cupiditate et. Molestias deleniti accusamus deserunt veniam sapiente sit qui eligendi. Enim ducimus est aperiam omnis animi. Tenetur quisquam incidunt asperiores molestiae ut. Libero quaerat mollitia eum in eum quidem. Nisi et delectus repellat dolores quisquam. Sint eligendi totam ratione corrupti. Enim nemo voluptatem qui id omnis qui inventore quod. Dolorem eveniet qui dicta et delectus error. Et possimus explicabo ipsum rerum minus iste beatae. At ut impedit magnam odit ipsa deleniti. Nobis laboriosam voluptatibus dolor. Voluptas sunt id itaque recusandae sed similique dolor. Consequuntur eaque et libero impedit. Eum rerum libero illo in. Voluptas vitae amet quae et. Eos cupiditate deserunt ea molestias. Dolorum et officiis voluptatem. Laborum exercitationem sed corporis dicta consequatur. Est commodi adipisci placeat atque et nesciunt aliquam eos. Est a quis sed commodi autem quae iusto.</p>', 1, 9, 3, 1, 1, 1, 1728756115, 1, 1729970255, 0, 0, 0, 1728756173, 0, '', 0, 0, 0, 0, 0, 1),
(13, 'document', 'text/html', 'Контакты', '', '', 'contacts', '', 1, 0, 0, 0, 0, '', '', 0, 10, 4, 1, 1, 1, 1728756115, 1, 1729970255, 0, 0, 0, 1728756173, 0, '', 0, 0, 0, 0, 0, 1),
(14, 'document', 'text/html', 'Commodi aliquid voluptates qui eos ex.', '', '', 'commodi-aliquid-voluptates-qui-eos-ex', '', 1, 0, 0, 0, 0, '', 'Et animi eos nisi voluptas. Molestias et placeat velit a. Beatae consequatur ut voluptatibus assumenda. Quaerat ipsam asperiores et quo. Ratione ab aut dolores et vitae. Doloremque laboriosam non itaque cumque est aliquam nostrum incidunt. Molestiae quam tenetur quas reiciendis deserunt. Rerum in sed modi ut id qui similique. Expedita eum blanditiis at aut sunt dolorem dolor. Distinctio consequatur tempora in vero. Nihil et possimus illum facilis. Laboriosam voluptas commodi aspernatur doloribus et est omnis asperiores. Quibusdam aspernatur minus rem praesentium voluptatem sint. Velit sit aperiam facere impedit repellat dolor tempore. Et dolore quia suscipit nostrum aliquam minima doloribus. Ex sit nobis asperiores eius et laborum eligendi. Non deleniti et quia. Sint sit ut esse voluptas et et quisquam. Et et libero placeat explicabo at in. Error quis reiciendis totam facere porro excepturi vel autem. Esse non hic voluptatem odit.', 1, 3, 5, 1, 1, 1, 1728756115, 1, 1729970255, 0, 0, 0, 1728756173, 0, '', 0, 0, 0, 0, 1, 1),
(15, 'document', 'text/html', 'Современный музыкальный центр для повседневного использования', '', '', 'odit-neque-et-autem-numquam-aut-sunt', '', 1, 0, 0, 6, 0, '', '<p>Высококачественный товар, прост в сборке. Он экономит время, из натурального дерева. Этот продукт экономит время.</p><p>Прочный товар, легко очищается. Он долговечен и устойчив к повреждениям, из экологически чистых материалов. Этот продукт долговечен и устойчив к повреждениям.</p>', 1, 3, 2, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(16, 'document', 'text/html', 'Sed assumenda tempore nihil magni iure.', '', '', 'sed-assumenda-tempore-nihil-magni-iure', '', 1, 0, 0, 9, 0, '', '<p>Debitis qui consequatur voluptatem accusantium possimus sunt eum. Dolores deserunt ea tenetur dolorem qui repellendus rem quos. Sed labore soluta repellat aliquid nihil minima enim.</p>\r\n<p>Autem praesentium id et voluptatum sit ut numquam. Sint consequatur inventore voluptatem voluptatem aut aut eum. Itaque ea non sit accusamus omnis error. Ab et ab quae sequi. Vel id eligendi et fugit. Sed vitae voluptatibus cupiditate unde voluptate facere. Dicta qui odit rerum nobis. Qui fuga fuga repellat odit.</p>\r\n<p>Modi incidunt repudiandae perferendis cum architecto illum nihil. Vel iure iusto libero quis facere. Velit et vel ut eos voluptate qui fuga. Quibusdam similique ea vitae sapiente ipsam. Eligendi corporis excepturi quia dolore dolor sapiente maxime. Ut molestiae et voluptatum tempora non cum nam aliquam. Tenetur perferendis in natus enim veniam. Excepturi corrupti sed blanditiis id optio consequatur ut. Dolor ipsa quo omnis atque.</p>', 1, 7, 3, 1, 1, 1, 1728756115, 1, 1729886660, 0, 0, 0, 1728756173, 0, '', 0, 0, 0, 0, 1, 1),
(17, 'document', 'text/html', 'Et aut deserunt ut qui.', '', '', 'et-aut-deserunt-ut-qui', '', 1, 0, 0, 9, 0, '', '<p>Qui sed voluptates non suscipit. Iusto quidem aut reiciendis excepturi non repellendus. Repellat aliquam tenetur ad reiciendis quae vel rem assumenda. Sint aut maiores at voluptatum nihil maxime enim non. Sunt sint ratione sed. Animi dignissimos aut repudiandae eum quidem. Dolor sit voluptas nemo molestias est quam. Laboriosam ut error aut eos at totam. Corporis aut qui veniam est vero sed. Non et accusamus fugit cumque voluptatem assumenda voluptas. Aspernatur voluptas et quos molestiae. Dolores facere recusandae deserunt natus aliquam quasi. Sequi ea nihil corporis numquam neque voluptatem beatae. Omnis delectus dignissimos dolor quam quibusdam quas doloribus. Natus beatae ab aperiam. Quo sit repellat recusandae. Facilis cum quis accusantium dolore enim cum ut. Deleniti aut magnam placeat nihil ea sit. Earum illum laudantium nesciunt laudantium consequatur reprehenderit. Quo veniam quam laudantium velit iure eaque. Voluptas ex aliquam molestiae magni placeat.</p>', 1, 7, 1, 1, 1, 1, 1728756115, 1, 1729714778, 0, 0, 0, 1728756173, 0, '', 0, 0, 0, 0, 1, 1),
(18, 'document', 'text/html', 'Уникальный набор инструментов компактный', '', '', 'fugit-voluptas-illum-molestiae-rerum-dignissimos', '', 1, 0, 0, 5, 0, '', '<p>Надёжный товар, предназначен для активного использования. Он подарит вам удобство, из натурального дерева. Этот продукт подарит вам удобство.</p><p>Экологически чистый товар, легко очищается. Он обеспечивает комфорт и уют, из экологически чистых материалов. Этот продукт обеспечивает комфорт и уют.</p>', 1, 3, 16, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(19, 'document', 'text/html', 'Недорогой чайник для повседневного использования', '', '', 'officia-velit-illo-assumenda-laboriosam', '', 1, 0, 0, 8, 0, '', '<p>Высококачественный товар, компактен. Он сохраняет свою эффективность даже при активном использовании, с мягкими текстильными покрытиями. Этот продукт сохраняет свою эффективность даже при активном использовании.</p><p>Эргономичный товар, предназначен для активного использования. Он долговечен и устойчив к повреждениям, с мягкими текстильными покрытиями. Этот продукт долговечен и устойчив к повреждениям.</p>', 1, 3, 1, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(20, 'document', 'text/html', 'Magnam voluptate similique sed.', '', '', 'magnam-voluptate-similique-sed', '', 1, 0, 0, 9, 0, '', '<p>Culpa necessitatibus omnis eveniet reiciendis veritatis eligendi. Facilis dolorum et est. Consequatur molestiae quia ab harum et officiis. Dicta corporis eos expedita aut illum sapiente. Asperiores qui exercitationem ducimus odit voluptatem qui. Provident velit dolores eos assumenda. Necessitatibus culpa sequi voluptate alias. Soluta voluptatum fugit velit explicabo cum iusto et. Enim quo odio alias. Aperiam qui cumque iste temporibus sunt aperiam velit. Earum aut quia voluptatem est. Eligendi dignissimos excepturi ex impedit. Quia magni ut est debitis nobis maxime. Velit nobis nihil expedita in eum enim fuga. Odit eos deserunt voluptatem perspiciatis occaecati minus. Unde quos officia iure porro sint animi enim. Dolor similique fugiat laborum molestias vitae fugit ipsa. Sequi sed vel ut non rem voluptatem reprehenderit. Rem aut pariatur quos magnam perferendis maxime aliquid ratione. Et inventore consequatur soluta et.</p>', 1, 7, 2, 1, 1, 1, 1728756115, 1, 1729714783, 0, 0, 0, 1728756173, 0, '', 0, 0, 0, 0, 1, 1),
(21, 'document', 'text/html', 'Ut cum et aut ex qui ut.', '', '', 'ut-cum-et-aut-ex-qui-ut', '', 1, 0, 0, 9, 0, '', '<p>Blanditiis soluta ab dolorem possimus dolores. Non error molestiae a aut. Asperiores numquam commodi omnis laborum vel officiis. Hic qui eos ut aut alias quod vitae tempora. Recusandae ut non eos corrupti molestias quisquam. Distinctio qui qui sapiente dignissimos et veritatis est. Nobis earum eius architecto vel facere maiores ut. Corrupti voluptatem eum eligendi. Quo omnis nulla in voluptates sapiente. Suscipit et dolor labore quaerat. Unde quae nihil ut consequuntur non mollitia odit. Sapiente cum voluptas necessitatibus qui ipsam quos. Quia qui et error ratione deserunt error. Corporis possimus possimus quia culpa repellendus et. A autem harum et dolorem consectetur. Numquam est odit officiis aliquam. Distinctio dignissimos quis qui ea harum sint voluptate. Quaerat nihil ea provident ad. Quo blanditiis sit quos molestiae voluptatibus.</p>', 1, 7, 0, 1, 1, 1, 1728756115, 1, 1729714769, 0, 0, 0, 1728756173, 0, '', 0, 0, 0, 0, 1, 1),
(22, 'document', 'text/html', 'Элегантный стул для работы', '', '', 'qui-et-consequatur-dolore-sed-et', '', 1, 0, 0, 7, 0, '', '<p>Высококачественный товар, обеспечивает высокий комфорт. Он не теряет своих качеств с годами, с мягкими текстильными покрытиями. Этот продукт не теряет своих качеств с годами.</p><p>Высококачественный товар, обеспечивает высокий комфорт. Он обеспечивает комфорт и уют, с мягкими текстильными покрытиями. Этот продукт обеспечивает комфорт и уют.</p>', 1, 3, 10, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(23, 'document', 'text/html', 'Недорогой телевизор для офиса', '', '', 'qui-et-voluptatum-nisi-et', '', 1, 0, 0, 5, 0, '', '<p>Стильный товар, компактен. Он сохраняет свою эффективность даже при активном использовании, с мягкими текстильными покрытиями. Этот продукт сохраняет свою эффективность даже при активном использовании.</p><p>Экологически чистый товар, предназначен для активного использования. Он сохраняет свою эффективность даже при активном использовании, с использованием современных технологий. Этот продукт сохраняет свою эффективность даже при активном использовании.</p>', 1, 3, 31, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(24, 'document', 'text/html', 'Стильный набор инструментов компактный', '', '', 'non-et-deleniti-totam-saepe', '', 1, 0, 0, 8, 0, '', '<p>Долговечный товар, отлично подходит для дома. Он обеспечивает комфорт и уют, из натурального дерева. Этот продукт обеспечивает комфорт и уют.</p><p>Износостойкий товар, прост в сборке. Он обеспечивает комфорт и уют, с прочной металлической основой. Этот продукт обеспечивает комфорт и уют.</p>', 1, 3, 7, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(25, 'document', 'text/html', 'Прочный телевизор для работы', '', '', 'molestiae-accusantium-officiis-reiciendis-modi', '', 1, 0, 0, 6, 0, '', '<p>Износостойкий товар, прост в сборке. Он не теряет своих качеств с годами, из высококачественного пластика. Этот продукт не теряет своих качеств с годами.</p><p>Экологически чистый товар, удобен в использовании. Он обеспечивает комфорт и уют, с использованием современных технологий. Этот продукт обеспечивает комфорт и уют.</p>', 1, 3, 2, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(26, 'document', 'text/html', 'Классический музыкальный центр для офиса', '', '', 'quia-eos-est-necessitatibus-omnis-omnis', '', 1, 0, 0, 7, 0, '', '<p>Износостойкий товар, компактен. Он долговечен и устойчив к повреждениям, с прочной металлической основой. Этот продукт долговечен и устойчив к повреждениям.</p><p>Экологически чистый товар, обеспечивает высокий комфорт. Он подарит вам удобство, с использованием современных технологий. Этот продукт подарит вам удобство.</p>', 1, 3, 7, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(27, 'document', 'text/html', 'Элегантный пылесос для кухни', '', '', 'expedita-mollitia-excepturi-et', '', 1, 0, 0, 5, 0, '', '<p>Эргономичный товар, подходит для любого интерьера. Он повышает продуктивность, с прочной металлической основой. Этот продукт повышает продуктивность.</p><p>Устойчивый товар, прост в сборке. Он сохраняет свою эффективность даже при активном использовании, с мягкими текстильными покрытиями. Этот продукт сохраняет свою эффективность даже при активном использовании.</p>', 1, 3, 2, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(28, 'document', 'text/html', 'Многофункциональный массажёр для работы', '', '', 'necessitatibus-enim-architecto-et-ipsa-quia', '', 1, 0, 0, 5, 0, '', '<p>Эргономичный товар, не требует дополнительного ухода. Он обеспечивает комфорт и уют, из экологически чистых материалов. Этот продукт обеспечивает комфорт и уют.</p><p>Высококачественный товар, подходит для любого интерьера. Он не теряет своих качеств с годами, из экологически чистых материалов. Этот продукт не теряет своих качеств с годами.</p>', 1, 3, 15, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(29, 'document', 'text/html', 'Стильный блендер с расширенным функционалом', '', '', 'placeat-omnis-voluptas-quam-nihil-ea', '', 1, 0, 0, 4, 0, '', '<p>Эргономичный товар, обеспечивает высокий комфорт. Он повышает продуктивность, с мягкими текстильными покрытиями. Этот продукт повышает продуктивность.</p><p>Функциональный товар, отлично подходит для дома. Он сохраняет свою эффективность даже при активном использовании, из высококачественного пластика. Этот продукт сохраняет свою эффективность даже при активном использовании.</p>', 1, 3, 14, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(30, 'document', 'text/html', 'Стильный массажёр премиум-класса', '', '', 'et-esse-autem-quisquam', '', 1, 0, 0, 8, 0, '', '<p>Долговечный товар, отлично подходит для дома. Он повышает продуктивность, из натурального дерева. Этот продукт повышает продуктивность.</p><p>Стильный товар, компактен. Он обеспечивает комфорт и уют, с мягкими текстильными покрытиями. Этот продукт обеспечивает комфорт и уют.</p>', 1, 3, 7, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(31, 'document', 'text/html', 'Компактный диван для работы', '', '', 'non-est-fuga-labore-dolore-in-dicta', '', 1, 0, 0, 7, 0, '', '<p>Эргономичный товар, подходит для любого интерьера. Он экономит время, с использованием современных технологий. Этот продукт экономит время.</p><p>Надёжный товар, удобен в использовании. Он подарит вам удобство, с использованием современных технологий. Этот продукт подарит вам удобство.</p>', 1, 3, 8, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(32, 'document', 'text/html', 'VIP пылесос премиум-класса', '', '', 'nemo-ut-omnis-in-id', '', 1, 0, 0, 5, 0, '', '<p>Износостойкий товар, компактен. Он сохраняет свою эффективность даже при активном использовании, с использованием современных технологий. Этот продукт сохраняет свою эффективность даже при активном использовании.</p><p>Прочный товар, не требует дополнительного ухода. Он экономит время, из высококачественного пластика. Этот продукт экономит время.</p>', 1, 3, 11, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(33, 'document', 'text/html', 'Стильный чайник для повседневного использования', '', '', 'sunt-ea-sit-voluptas-dolor-enim', '', 1, 0, 0, 7, 0, '', '<p>Износостойкий товар, отлично подходит для дома. Он сохраняет свою эффективность даже при активном использовании, из натурального дерева. Этот продукт сохраняет свою эффективность даже при активном использовании.</p><p>Износостойкий товар, легко очищается. Он обеспечивает комфорт и уют, с прочной металлической основой. Этот продукт обеспечивает комфорт и уют.</p>', 1, 3, 9, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(34, 'document', 'text/html', 'Компактный чайник для кухни', '', '', 'ut-ut-quod-nemo-minima-iure', '', 1, 0, 0, 8, 0, '', '<p>Стильный товар, не требует дополнительного ухода. Он подарит вам удобство, из натурального дерева. Этот продукт подарит вам удобство.</p><p>Высококачественный товар, предназначен для активного использования. Он сохраняет свою эффективность даже при активном использовании, с мягкими текстильными покрытиями. Этот продукт сохраняет свою эффективность даже при активном использовании.</p>', 1, 3, 8, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(35, 'document', 'text/html', 'Недорогой телевизор для кухни', '', '', 'et-sed-a-ratione-dolor-voluptates-animi', '', 1, 0, 0, 5, 0, '', '<p>Экологически чистый товар, удобен в использовании. Он повышает продуктивность, с мягкими текстильными покрытиями. Этот продукт повышает продуктивность.</p><p>Экологически чистый товар, легко очищается. Он подарит вам удобство, из высококачественного пластика. Этот продукт подарит вам удобство.</p>', 1, 3, 1, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(36, 'document', 'text/html', 'Элегантный набор инструментов для повседневного использования', '', '', 'corporis-est-qui-debitis', '', 1, 0, 0, 7, 0, '', '<p>Высококачественный товар, компактен. Он не теряет своих качеств с годами, с прочной металлической основой. Этот продукт не теряет своих качеств с годами.</p><p>Высококачественный товар, прост в сборке. Он повышает продуктивность, из экологически чистых материалов. Этот продукт повышает продуктивность.</p>', 1, 3, 12, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(37, 'document', 'text/html', 'Современный музыкальный центр для повседневного использования', '', '', 'dolores-atque-rem-nulla-rerum-neque-minima', '', 1, 0, 0, 7, 0, '', '<p>Эргономичный товар, не требует дополнительного ухода. Он экономит время, из натурального дерева. Этот продукт экономит время.</p><p>Эргономичный товар, не требует дополнительного ухода. Он не теряет своих качеств с годами, из натурального дерева. Этот продукт не теряет своих качеств с годами.</p>', 1, 3, 25, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(38, 'document', 'text/html', 'Эргономичный музыкальный центр компактный', '', '', 'saepe-voluptas-illum-autem-maxime', '', 1, 0, 0, 7, 0, '', '<p>Высококачественный товар, прост в сборке. Он долговечен и устойчив к повреждениям, из высококачественного пластика. Этот продукт долговечен и устойчив к повреждениям.</p><p>Износостойкий товар, предназначен для активного использования. Он экономит время, из натурального дерева. Этот продукт экономит время.</p>', 1, 3, 11, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(39, 'document', 'text/html', 'Компактный пылесос для офиса', '', '', 'ut-vel-et-porro-et-quia', '', 1, 0, 0, 8, 0, '', '<p>Экологически чистый товар, отлично подходит для дома. Он подарит вам удобство, из натурального дерева. Этот продукт подарит вам удобство.</p><p>Устойчивый товар, легко очищается. Он повышает продуктивность, с мягкими текстильными покрытиями. Этот продукт повышает продуктивность.</p>', 1, 3, 14, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(40, 'document', 'text/html', 'Стильный пылесос для дома', '', '', 'harum-modi-beatae-quo', '', 1, 0, 0, 7, 0, '', '<p>Прочный товар, легко очищается. Он не теряет своих качеств с годами, с мягкими текстильными покрытиями. Этот продукт не теряет своих качеств с годами.</p><p>Функциональный товар, обеспечивает высокий комфорт. Он обеспечивает комфорт и уют, с мягкими текстильными покрытиями. Этот продукт обеспечивает комфорт и уют.</p>', 1, 3, 10, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(41, 'document', 'text/html', 'Недорогой чайник премиум-класса', '', '', 'ut-ut-sed-consequatur-excepturi', '', 1, 0, 0, 7, 0, '', '<p>Экологически чистый товар, не требует дополнительного ухода. Он не теряет своих качеств с годами, из натурального дерева. Этот продукт не теряет своих качеств с годами.</p><p>Надёжный товар, легко очищается. Он экономит время, из экологически чистых материалов. Этот продукт экономит время.</p>', 1, 3, 11, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(42, 'document', 'text/html', 'Многофункциональный стол премиум-класса', '', '', 'id-cupiditate-quod-officiis-sit-consequatur', '', 1, 0, 0, 8, 0, '', '<p>Износостойкий товар, удобен в использовании. Он обеспечивает комфорт и уют, из натурального дерева. Этот продукт обеспечивает комфорт и уют.</p><p>Функциональный товар, компактен. Он экономит время, из экологически чистых материалов. Этот продукт экономит время.</p>', 1, 3, 2, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(43, 'document', 'text/html', 'Многофункциональный массажёр с расширенным функционалом', '', '', 'error-sit-harum-neque', '', 1, 0, 0, 4, 0, '', '<p>Экологически чистый товар, обеспечивает высокий комфорт. Он сохраняет свою эффективность даже при активном использовании, с прочной металлической основой. Этот продукт сохраняет свою эффективность даже при активном использовании.</p><p>Устойчивый товар, предназначен для активного использования. Он не теряет своих качеств с годами, с прочной металлической основой. Этот продукт не теряет своих качеств с годами.</p>', 1, 3, 29, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(44, 'document', 'text/html', 'Надёжный стол для офиса', '', '', 'illo-aut-quis-totam', '', 1, 0, 0, 7, 0, '', '<p>Экологически чистый товар, не требует дополнительного ухода. Он подарит вам удобство, с прочной металлической основой. Этот продукт подарит вам удобство.</p><p>Стильный товар, обеспечивает высокий комфорт. Он обеспечивает комфорт и уют, с мягкими текстильными покрытиями. Этот продукт обеспечивает комфорт и уют.</p>', 1, 3, 4, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(45, 'document', 'text/html', 'Прочный набор инструментов для дома', '', '', 'magnam-ut-temporibus-magni-ullam-et', '', 1, 0, 0, 4, 0, '', '<p>Функциональный товар, компактен. Он не теряет своих качеств с годами, из экологически чистых материалов. Этот продукт не теряет своих качеств с годами.</p><p>Устойчивый товар, отлично подходит для дома. Он подарит вам удобство, из натурального дерева. Этот продукт подарит вам удобство.</p>', 1, 3, 3, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(46, 'document', 'text/html', 'Компактный массажёр для работы', '', '', 'est-dolorem-pariatur-ut-voluptatum', '', 1, 0, 0, 8, 0, '', '<p>Долговечный товар, компактен. Он не теряет своих качеств с годами, из высококачественного пластика. Этот продукт не теряет своих качеств с годами.</p><p>Долговечный товар, не требует дополнительного ухода. Он подарит вам удобство, с мягкими текстильными покрытиями. Этот продукт подарит вам удобство.</p>', 1, 3, 15, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(47, 'document', 'text/html', 'Недорогой стол для повседневного использования', '', '', 'nobis-quis-debitis-inventore', '', 1, 0, 0, 8, 0, '', '<p>Функциональный товар, отлично подходит для дома. Он не теряет своих качеств с годами, с использованием современных технологий. Этот продукт не теряет своих качеств с годами.</p><p>Прочный товар, легко очищается. Он обеспечивает комфорт и уют, из натурального дерева. Этот продукт обеспечивает комфорт и уют.</p>', 1, 3, 13, 1, 1, 1, 1728756115, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(48, 'document', 'text/html', 'Стильный чайник для дома', '', '', 'placeat-rerum-autem-aspernatur', '', 1, 0, 0, 8, 0, '', '<p>Устойчивый товар, удобен в использовании. Он подарит вам удобство, с мягкими текстильными покрытиями. Этот продукт подарит вам удобство.</p><p>Износостойкий товар, удобен в использовании. Он экономит время, с прочной металлической основой. Этот продукт экономит время.</p>', 1, 3, 15, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(49, 'document', 'text/html', 'Эргономичный диван для повседневного использования', '', '', 'corporis-tempora-adipisci-dolor', '', 1, 0, 0, 8, 0, '', '<p>Прочный товар, подходит для любого интерьера. Он экономит время, с использованием современных технологий. Этот продукт экономит время.</p><p>Эргономичный товар, подходит для любого интерьера. Он не теряет своих качеств с годами, из высококачественного пластика. Этот продукт не теряет своих качеств с годами.</p>', 1, 3, 9, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(50, 'document', 'text/html', 'Эргономичный телевизор для кухни', '', '', 'ut-et-eligendi-nesciunt-nihil', '', 1, 0, 0, 6, 0, '', '<p>Функциональный товар, не требует дополнительного ухода. Он не теряет своих качеств с годами, с мягкими текстильными покрытиями. Этот продукт не теряет своих качеств с годами.</p><p>Эргономичный товар, отлично подходит для дома. Он повышает продуктивность, из экологически чистых материалов. Этот продукт повышает продуктивность.</p>', 1, 3, 33, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(51, 'document', 'text/html', 'Эргономичный диван для кухни', '', '', 'distinctio-asperiores-voluptas-nobis-quasi', '', 1, 0, 0, 6, 0, '', '<p>Эргономичный товар, компактен. Он не теряет своих качеств с годами, из экологически чистых материалов. Этот продукт не теряет своих качеств с годами.</p><p>Износостойкий товар, подходит для любого интерьера. Он обеспечивает комфорт и уют, с использованием современных технологий. Этот продукт обеспечивает комфорт и уют.</p>', 1, 3, 6, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(52, 'document', 'text/html', 'VIP пылесос с расширенным функционалом', '', '', 'at-sunt-sit-et-quod-nam-sunt', '', 1, 0, 0, 4, 0, '', '<p>Устойчивый товар, легко очищается. Он долговечен и устойчив к повреждениям, с использованием современных технологий. Этот продукт долговечен и устойчив к повреждениям.</p><p>Износостойкий товар, не требует дополнительного ухода. Он обеспечивает комфорт и уют, с использованием современных технологий. Этот продукт обеспечивает комфорт и уют.</p>', 1, 3, 6, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(53, 'document', 'text/html', 'Надёжный пылесос для работы', '', '', 'quam-quo-consequatur-vel-reprehenderit-et', '', 1, 0, 0, 7, 0, '', '<p>Эргономичный товар, обеспечивает высокий комфорт. Он экономит время, из экологически чистых материалов. Этот продукт экономит время.</p><p>Эргономичный товар, обеспечивает высокий комфорт. Он повышает продуктивность, с прочной металлической основой. Этот продукт повышает продуктивность.</p>', 1, 3, 13, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(54, 'document', 'text/html', 'Уникальный диван для дома', '', '', 'quam-qui-et-nobis', '', 1, 0, 0, 6, 0, '', '<p>Функциональный товар, обеспечивает высокий комфорт. Он подарит вам удобство, из натурального дерева. Этот продукт подарит вам удобство.</p><p>Высококачественный товар, удобен в использовании. Он долговечен и устойчив к повреждениям, с прочной металлической основой. Этот продукт долговечен и устойчив к повреждениям.</p>', 1, 3, 17, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(55, 'document', 'text/html', 'Уникальный музыкальный центр для кухни', '', '', 'qui-dolore-ipsum-officiis-eum-commodi-eveniet', '', 1, 0, 0, 6, 0, '', '<p>Экологически чистый товар, не требует дополнительного ухода. Он экономит время, из высококачественного пластика. Этот продукт экономит время.</p><p>Экологически чистый товар, прост в сборке. Он экономит время, из высококачественного пластика. Этот продукт экономит время.</p>', 1, 3, 18, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(56, 'document', 'text/html', 'Стильный стол для работы', '', '', 'sapiente-inventore-reprehenderit-et-officia', '', 1, 0, 0, 4, 0, '', '<p>Устойчивый товар, компактен. Он подарит вам удобство, с прочной металлической основой. Этот продукт подарит вам удобство.</p>\r\n<p>Функциональный товар, легко очищается. Он не теряет своих качеств с годами, с прочной металлической основой. Этот продукт не теряет своих качеств с годами.</p>', 1, 3, 1, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(57, 'document', 'text/html', 'Современный набор инструментов с расширенным функционалом', '', '', 'minima-saepe-ipsum-reiciendis-aperiam-omnis', '', 1, 0, 0, 8, 0, '', '<p>Функциональный товар, предназначен для активного использования. Он не теряет своих качеств с годами, из высококачественного пластика. Этот продукт не теряет своих качеств с годами.</p><p>Долговечный товар, компактен. Он повышает продуктивность, из натурального дерева. Этот продукт повышает продуктивность.</p>', 1, 3, 9, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(58, 'document', 'text/html', 'Современный стул для кухни', '', '', 'et-et-at-doloremque-quod', '', 1, 0, 0, 6, 0, '', '<p>Долговечный товар, легко очищается. Он повышает продуктивность, с использованием современных технологий. Этот продукт повышает продуктивность.</p><p>Экологически чистый товар, подходит для любого интерьера. Он подарит вам удобство, с прочной металлической основой. Этот продукт подарит вам удобство.</p>', 1, 3, 21, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(59, 'document', 'text/html', 'Надёжный музыкальный центр компактный', '', '', 'ut-dolorem-enim-voluptatem-sit-voluptatem-consequatur', '', 1, 0, 0, 7, 0, '', '<p>Прочный товар, отлично подходит для дома. Он сохраняет свою эффективность даже при активном использовании, из экологически чистых материалов. Этот продукт сохраняет свою эффективность даже при активном использовании.</p><p>Надёжный товар, отлично подходит для дома. Он не теряет своих качеств с годами, с использованием современных технологий. Этот продукт не теряет своих качеств с годами.</p>', 1, 3, 24, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(60, 'document', 'text/html', 'Эргономичный диван для повседневного использования', '', '', 'expedita-ipsa-provident-ea-voluptatem-sint-nemo-voluptas', '', 1, 0, 0, 5, 0, '', '<p>Надёжный товар, предназначен для активного использования. Он обеспечивает комфорт и уют, из натурального дерева. Этот продукт обеспечивает комфорт и уют.</p><p>Устойчивый товар, предназначен для активного использования. Он долговечен и устойчив к повреждениям, из высококачественного пластика. Этот продукт долговечен и устойчив к повреждениям.</p>', 1, 3, 8, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(61, 'document', 'text/html', 'Стильный стул для дома', '', '', 'ab-voluptatum-necessitatibus-et', '', 1, 0, 0, 7, 0, '', '<p>Эргономичный товар, компактен. Он повышает продуктивность, с мягкими текстильными покрытиями. Этот продукт повышает продуктивность.</p><p>Эргономичный товар, удобен в использовании. Он подарит вам удобство, с мягкими текстильными покрытиями. Этот продукт подарит вам удобство.</p>', 1, 3, 11, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(62, 'document', 'text/html', 'Прочный пылесос для дома', '', '', 'aut-provident-sequi-architecto-cum', '', 1, 0, 0, 8, 0, '', '<p>Устойчивый товар, компактен. Он подарит вам удобство, из высококачественного пластика. Этот продукт подарит вам удобство.</p><p>Высококачественный товар, подходит для любого интерьера. Он повышает продуктивность, из натурального дерева. Этот продукт повышает продуктивность.</p>', 1, 3, 10, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(63, 'document', 'text/html', 'Классический диван для офиса', '', '', 'occaecati-nesciunt-nesciunt-quas-eum', '', 1, 0, 0, 7, 0, '', '<p>Надёжный товар, легко очищается. Он обеспечивает комфорт и уют, из высококачественного пластика. Этот продукт обеспечивает комфорт и уют.</p><p>Функциональный товар, компактен. Он обеспечивает комфорт и уют, с мягкими текстильными покрытиями. Этот продукт обеспечивает комфорт и уют.</p>', 1, 3, 6, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(64, 'document', 'text/html', 'Прочный ковёр для дома', '', '', 'sunt-et-perspiciatis-doloremque', '', 1, 0, 0, 8, 0, '', '<p>Высококачественный товар, компактен. Он подарит вам удобство, из высококачественного пластика. Этот продукт подарит вам удобство.</p><p>Экологически чистый товар, удобен в использовании. Он подарит вам удобство, из натурального дерева. Этот продукт подарит вам удобство.</p>', 1, 3, 0, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(65, 'document', 'text/html', 'Недорогой ковёр для дома', '', '', 'sapiente-repellat-sint-esse-ut', '', 1, 0, 0, 5, 0, '', '<p>Устойчивый товар, компактен. Он повышает продуктивность, из натурального дерева. Этот продукт повышает продуктивность.</p><p>Функциональный товар, подходит для любого интерьера. Он повышает продуктивность, из высококачественного пластика. Этот продукт повышает продуктивность.</p>', 1, 3, 26, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(66, 'document', 'text/html', 'Классический набор инструментов для повседневного использования', '', '', 'omnis-quasi-est-eos-iste-aspernatur', '', 1, 0, 0, 5, 0, '', '<p>Эргономичный товар, обеспечивает высокий комфорт. Он обеспечивает комфорт и уют, с прочной металлической основой. Этот продукт обеспечивает комфорт и уют.</p><p>Надёжный товар, обеспечивает высокий комфорт. Он повышает продуктивность, из высококачественного пластика. Этот продукт повышает продуктивность.</p>', 1, 3, 9, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(67, 'document', 'text/html', 'Классический стол с расширенным функционалом', '', '', 'qui-voluptatem-odio-non-impedit', '', 1, 0, 0, 4, 0, '', '<p>Устойчивый товар, не требует дополнительного ухода. Он подарит вам удобство, с использованием современных технологий. Этот продукт подарит вам удобство.</p><p>Износостойкий товар, прост в сборке. Он подарит вам удобство, с мягкими текстильными покрытиями. Этот продукт подарит вам удобство.</p>', 1, 3, 12, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(68, 'document', 'text/html', 'Многофункциональный блендер премиум-класса', '', '', 'tempora-eos-debitis-impedit-adipisci-est', '', 1, 0, 0, 8, 0, '', '<p>Устойчивый товар, компактен. Он экономит время, с мягкими текстильными покрытиями. Этот продукт экономит время.</p><p>Износостойкий товар, легко очищается. Он обеспечивает комфорт и уют, из натурального дерева. Этот продукт обеспечивает комфорт и уют.</p>', 1, 3, 4, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(69, 'document', 'text/html', 'Элегантный блендер компактный', '', '', 'hic-nihil-provident-alias', '', 1, 0, 0, 6, 0, '', '<p>Прочный товар, удобен в использовании. Он не теряет своих качеств с годами, с использованием современных технологий. Этот продукт не теряет своих качеств с годами.</p><p>Экологически чистый товар, отлично подходит для дома. Он повышает продуктивность, из натурального дерева. Этот продукт повышает продуктивность.</p>', 1, 3, 1, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(70, 'document', 'text/html', 'VIP диван с расширенным функционалом', '', '', 'consequatur-laboriosam-et-aut', '', 1, 0, 0, 8, 0, '', '<p>Функциональный товар, не требует дополнительного ухода. Он сохраняет свою эффективность даже при активном использовании, из экологически чистых материалов. Этот продукт сохраняет свою эффективность даже при активном использовании.</p><p>Функциональный товар, обеспечивает высокий комфорт. Он сохраняет свою эффективность даже при активном использовании, с использованием современных технологий. Этот продукт сохраняет свою эффективность даже при активном использовании.</p>', 1, 3, 11, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(71, 'document', 'text/html', 'Элегантный блендер премиум-класса', '', '', 'est-esse-optio-id', '', 1, 0, 0, 4, 0, '', '<p>Экологически чистый товар, легко очищается. Он повышает продуктивность, с мягкими текстильными покрытиями. Этот продукт повышает продуктивность.</p><p>Износостойкий товар, обеспечивает высокий комфорт. Он не теряет своих качеств с годами, с мягкими текстильными покрытиями. Этот продукт не теряет своих качеств с годами.</p>', 1, 3, 13, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(72, 'document', 'text/html', 'VIP пылесос для работы', '', '', 'ut-fugiat-nam-officiis', '', 1, 0, 0, 5, 0, '', '<p>Стильный товар, не требует дополнительного ухода. Он экономит время, с мягкими текстильными покрытиями. Этот продукт экономит время.</p><p>Функциональный товар, предназначен для активного использования. Он повышает продуктивность, с использованием современных технологий. Этот продукт повышает продуктивность.</p>', 1, 3, 30, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(73, 'document', 'text/html', 'Многофункциональный диван с расширенным функционалом', '', '', 'enim-aut-qui-unde-sunt-asperiores-cum', '', 1, 0, 0, 5, 0, '', '<p>Прочный товар, не требует дополнительного ухода. Он повышает продуктивность, с мягкими текстильными покрытиями. Этот продукт повышает продуктивность.</p><p>Износостойкий товар, подходит для любого интерьера. Он экономит время, с использованием современных технологий. Этот продукт экономит время.</p>', 1, 3, 32, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(74, 'document', 'text/html', 'Недорогой пылесос для офиса', '', '', 'molestiae-aut-eveniet-quo-facere-non', '', 1, 0, 0, 6, 0, '', '<p>Функциональный товар, удобен в использовании. Он подарит вам удобство, с мягкими текстильными покрытиями. Этот продукт подарит вам удобство.</p><p>Стильный товар, компактен. Он экономит время, с прочной металлической основой. Этот продукт экономит время.</p>', 1, 3, 6, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(75, 'document', 'text/html', 'Стильный музыкальный центр премиум-класса', '', '', 'sit-ex-numquam-est-omnis', '', 1, 0, 0, 8, 0, '', '<p>Функциональный товар, прост в сборке. Он долговечен и устойчив к повреждениям, с использованием современных технологий. Этот продукт долговечен и устойчив к повреждениям.</p><p>Устойчивый товар, компактен. Он долговечен и устойчив к повреждениям, с прочной металлической основой. Этот продукт долговечен и устойчив к повреждениям.</p>', 1, 3, 16, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(76, 'document', 'text/html', 'Многофункциональный ковёр для дома', '', '', 'eos-illo-quas-quo-dolor-iste', '', 1, 0, 0, 8, 0, '', '<p>Устойчивый товар, не требует дополнительного ухода. Он не теряет своих качеств с годами, с прочной металлической основой. Этот продукт не теряет своих качеств с годами.</p><p>Надёжный товар, не требует дополнительного ухода. Он экономит время, с прочной металлической основой. Этот продукт экономит время.</p>', 1, 3, 14, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(77, 'document', 'text/html', 'Эргономичный диван для работы', '', '', 'eius-architecto-suscipit-reprehenderit-quo-ex-eaque', '', 1, 0, 0, 6, 0, '', '<p>Износостойкий товар, легко очищается. Он сохраняет свою эффективность даже при активном использовании, из натурального дерева. Этот продукт сохраняет свою эффективность даже при активном использовании.</p><p>Функциональный товар, прост в сборке. Он экономит время, с мягкими текстильными покрытиями. Этот продукт экономит время.</p>', 1, 3, 16, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1);
INSERT INTO `adkq_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `hide_from_tree`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `alias_visible`) VALUES
(78, 'document', 'text/html', 'Прочный пылесос для кухни', '', '', 'qui-error-autem-beatae-libero-id-quo', '', 1, 0, 0, 7, 0, '', '<p>Долговечный товар, отлично подходит для дома. Он не теряет своих качеств с годами, с использованием современных технологий. Этот продукт не теряет своих качеств с годами.</p><p>Износостойкий товар, обеспечивает высокий комфорт. Он повышает продуктивность, из натурального дерева. Этот продукт повышает продуктивность.</p>', 1, 3, 10, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(79, 'document', 'text/html', 'Компактный стул для работы', '', '', 'similique-nihil-dolores-eaque-quia-non-itaque', '', 1, 0, 0, 6, 0, '', '<p>Износостойкий товар, легко очищается. Он сохраняет свою эффективность даже при активном использовании, с прочной металлической основой. Этот продукт сохраняет свою эффективность даже при активном использовании.</p><p>Стильный товар, отлично подходит для дома. Он повышает продуктивность, из высококачественного пластика. Этот продукт повышает продуктивность.</p>', 1, 3, 3, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(80, 'document', 'text/html', 'Надёжный стол для работы', '', '', 'facere-culpa-distinctio-consequuntur', '', 1, 0, 0, 8, 0, '', '<p>Надёжный товар, компактен. Он не теряет своих качеств с годами, с мягкими текстильными покрытиями. Этот продукт не теряет своих качеств с годами.</p><p>Эргономичный товар, обеспечивает высокий комфорт. Он повышает продуктивность, с мягкими текстильными покрытиями. Этот продукт повышает продуктивность.</p>', 1, 3, 8, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(81, 'document', 'text/html', 'Классический пылесос для кухни', '', '', 'quam-ad-eos-sit', '', 1, 0, 0, 5, 0, '', '<p>Стильный товар, прост в сборке. Он подарит вам удобство, с прочной металлической основой. Этот продукт подарит вам удобство.</p><p>Долговечный товар, удобен в использовании. Он сохраняет свою эффективность даже при активном использовании, с прочной металлической основой. Этот продукт сохраняет свою эффективность даже при активном использовании.</p>', 1, 3, 10, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(82, 'document', 'text/html', 'Надёжный набор инструментов для дома', '', '', 'delectus-temporibus-exercitationem-tempore', '', 1, 0, 0, 4, 0, '', '<p>Износостойкий товар, компактен. Он подарит вам удобство, из высококачественного пластика. Этот продукт подарит вам удобство.</p><p>Экологически чистый товар, подходит для любого интерьера. Он обеспечивает комфорт и уют, из натурального дерева. Этот продукт обеспечивает комфорт и уют.</p>', 1, 3, 17, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(83, 'document', 'text/html', 'Многофункциональный массажёр с расширенным функционалом', '', '', 'eum-voluptatem-ea-illum', '', 1, 0, 0, 6, 0, '', '<p>Функциональный товар, подходит для любого интерьера. Он долговечен и устойчив к повреждениям, из высококачественного пластика. Этот продукт долговечен и устойчив к повреждениям.</p><p>Экологически чистый товар, прост в сборке. Он экономит время, с использованием современных технологий. Этот продукт экономит время.</p>', 1, 3, 6, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(84, 'document', 'text/html', 'Уникальный пылесос для офиса', '', '', 'quia-quia-cumque-quia-architecto-est-vero', '', 1, 0, 0, 6, 0, '', '<p>Прочный товар, подходит для любого интерьера. Он подарит вам удобство, из высококачественного пластика. Этот продукт подарит вам удобство.</p><p>Надёжный товар, отлично подходит для дома. Он обеспечивает комфорт и уют, из экологически чистых материалов. Этот продукт обеспечивает комфорт и уют.</p>', 1, 3, 19, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(85, 'document', 'text/html', 'Надёжный чайник премиум-класса', '', '', 'illo-nobis-nostrum-similique-ipsum-maxime', '', 1, 0, 0, 6, 0, '', '<p>Прочный товар, подходит для любого интерьера. Он экономит время, из экологически чистых материалов. Этот продукт экономит время.</p><p>Надёжный товар, удобен в использовании. Он не теряет своих качеств с годами, из высококачественного пластика. Этот продукт не теряет своих качеств с годами.</p>', 1, 3, 20, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(86, 'document', 'text/html', 'VIP пылесос для дома', '', '', 'qui-quia-aut-est-est', '', 1, 0, 0, 4, 0, '', '<p>Функциональный товар, обеспечивает высокий комфорт. Он экономит время, с мягкими текстильными покрытиями. Этот продукт экономит время.</p><p>Устойчивый товар, предназначен для активного использования. Он обеспечивает комфорт и уют, с использованием современных технологий. Этот продукт обеспечивает комфорт и уют.</p>', 1, 3, 1, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(87, 'document', 'text/html', 'Уникальный набор инструментов для кухни', '', '', 'praesentium-doloremque-debitis-sit-eum-nemo-provident', '', 1, 0, 0, 4, 0, '', '<p>Функциональный товар, легко очищается. Он экономит время, из экологически чистых материалов. Этот продукт экономит время.</p><p>Эргономичный товар, подходит для любого интерьера. Он повышает продуктивность, с использованием современных технологий. Этот продукт повышает продуктивность.</p>', 1, 3, 2, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(88, 'document', 'text/html', 'Компактный телевизор для офиса', '', '', 'nulla-expedita-cumque-commodi', '', 1, 0, 0, 7, 0, '', '<p>Эргономичный товар, подходит для любого интерьера. Он повышает продуктивность, с мягкими текстильными покрытиями. Этот продукт повышает продуктивность.</p><p>Износостойкий товар, легко очищается. Он не теряет своих качеств с годами, с использованием современных технологий. Этот продукт не теряет своих качеств с годами.</p>', 1, 3, 23, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(89, 'document', 'text/html', 'Надёжный стул для дома', '', '', 'totam-laudantium-impedit-ad-soluta-fugit', '', 1, 0, 0, 6, 0, '', '<p>Износостойкий товар, обеспечивает высокий комфорт. Он обеспечивает комфорт и уют, из высококачественного пластика. Этот продукт обеспечивает комфорт и уют.</p><p>Прочный товар, легко очищается. Он не теряет своих качеств с годами, из экологически чистых материалов. Этот продукт не теряет своих качеств с годами.</p>', 1, 3, 22, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(90, 'document', 'text/html', 'VIP диван премиум-класса', '', '', 'vel-corporis-sequi-consectetur-et-aut', '', 1, 0, 0, 5, 0, '', '<p>Экологически чистый товар, предназначен для активного использования. Он подарит вам удобство, с мягкими текстильными покрытиями. Этот продукт подарит вам удобство.</p><p>Экологически чистый товар, легко очищается. Он обеспечивает комфорт и уют, из экологически чистых материалов. Этот продукт обеспечивает комфорт и уют.</p>', 1, 3, 12, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(91, 'document', 'text/html', 'Стильный блендер для офиса', '', '', 'qui-occaecati-ipsum-illo-nihil', '', 1, 0, 0, 4, 0, '', '<p>Надёжный товар, подходит для любого интерьера. Он долговечен и устойчив к повреждениям, из высококачественного пластика. Этот продукт долговечен и устойчив к повреждениям.</p><p>Устойчивый товар, компактен. Он подарит вам удобство, с прочной металлической основой. Этот продукт подарит вам удобство.</p>', 1, 3, 7, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(92, 'document', 'text/html', 'VIP диван компактный', '', '', 'in-aut-quo-quibusdam-molestiae', '', 1, 0, 0, 7, 0, '', '<p>Долговечный товар, удобен в использовании. Он долговечен и устойчив к повреждениям, с мягкими текстильными покрытиями. Этот продукт долговечен и устойчив к повреждениям.</p><p>Экологически чистый товар, прост в сборке. Он подарит вам удобство, из высококачественного пластика. Этот продукт подарит вам удобство.</p>', 1, 3, 12, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(93, 'document', 'text/html', 'Недорогой диван с расширенным функционалом', '', '', 'deleniti-sint-repudiandae-occaecati-eius-aliquam', '', 1, 0, 0, 5, 0, '', '<p>Прочный товар, удобен в использовании. Он обеспечивает комфорт и уют, из высококачественного пластика. Этот продукт обеспечивает комфорт и уют.</p><p>Прочный товар, компактен. Он обеспечивает комфорт и уют, с прочной металлической основой. Этот продукт обеспечивает комфорт и уют.</p>', 1, 3, 0, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(94, 'document', 'text/html', 'Современный телевизор для повседневного использования', '', '', 'aut-et-voluptatum-at', '', 1, 0, 0, 7, 0, '', '<p>Высококачественный товар, компактен. Он экономит время, из натурального дерева. Этот продукт экономит время.</p><p>Высококачественный товар, удобен в использовании. Он подарит вам удобство, с использованием современных технологий. Этот продукт подарит вам удобство.</p>', 1, 3, 9, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(95, 'document', 'text/html', 'Современный стул компактный', '', '', 'ducimus-quis-at-soluta-distinctio', '', 1, 0, 0, 4, 0, '', '<p>Износостойкий товар, легко очищается. Он не теряет своих качеств с годами, с прочной металлической основой. Этот продукт не теряет своих качеств с годами.</p><p>Устойчивый товар, отлично подходит для дома. Он экономит время, с прочной металлической основой. Этот продукт экономит время.</p>', 1, 3, 27, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(96, 'document', 'text/html', 'Уникальный стул премиум-класса', '', '', 'explicabo-et-beatae-voluptas-doloremque-est-ea', '', 1, 0, 0, 4, 0, '', '<p>Экологически чистый товар, предназначен для активного использования. Он долговечен и устойчив к повреждениям, из высококачественного пластика. Этот продукт долговечен и устойчив к повреждениям.</p><p>Долговечный товар, прост в сборке. Он повышает продуктивность, с мягкими текстильными покрытиями. Этот продукт повышает продуктивность.</p>', 1, 3, 28, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(97, 'document', 'text/html', 'Многофункциональный телевизор для дома', '', '', 'dolores-cupiditate-error-alias-qui-natus', '', 1, 0, 0, 6, 0, '', '<p>Долговечный товар, отлично подходит для дома. Он экономит время, с мягкими текстильными покрытиями. Этот продукт экономит время.</p><p>Высококачественный товар, обеспечивает высокий комфорт. Он подарит вам удобство, из натурального дерева. Этот продукт подарит вам удобство.</p>', 1, 3, 18, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(98, 'document', 'text/html', 'Классический стол для дома', '', '', 'fugiat-placeat-sed-voluptas', '', 1, 0, 0, 4, 0, '', '<p>Прочный товар, компактен. Он экономит время, из экологически чистых материалов. Этот продукт экономит время.</p><p>Прочный товар, обеспечивает высокий комфорт. Он экономит время, из высококачественного пластика. Этот продукт экономит время.</p>', 1, 3, 18, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(99, 'document', 'text/html', 'Прочный набор инструментов премиум-класса', '', '', 'eum-quo-a-odio-ut-maiores', '', 1, 0, 0, 8, 0, '', '<p>Высококачественный товар, предназначен для активного использования. Он долговечен и устойчив к повреждениям, из натурального дерева. Этот продукт долговечен и устойчив к повреждениям.</p><p>Прочный товар, компактен. Он повышает продуктивность, из высококачественного пластика. Этот продукт повышает продуктивность.</p>', 1, 3, 12, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(100, 'document', 'text/html', 'Современный стул с расширенным функционалом', '', '', 'voluptates-amet-dolorem-aut-nam-quos', '', 1, 0, 0, 6, 0, '', '<p>Экологически чистый товар, предназначен для активного использования. Он сохраняет свою эффективность даже при активном использовании, из натурального дерева. Этот продукт сохраняет свою эффективность даже при активном использовании.</p><p>Прочный товар, компактен. Он не теряет своих качеств с годами, из натурального дерева. Этот продукт не теряет своих качеств с годами.</p>', 1, 3, 0, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(101, 'document', 'text/html', 'Стильный блендер для кухни', '', '', 'rerum-ipsa-ex-corporis', '', 1, 0, 0, 5, 0, '', '<p>Экологически чистый товар, удобен в использовании. Он сохраняет свою эффективность даже при активном использовании, с прочной металлической основой. Этот продукт сохраняет свою эффективность даже при активном использовании.</p><p>Экологически чистый товар, подходит для любого интерьера. Он сохраняет свою эффективность даже при активном использовании, из высококачественного пластика. Этот продукт сохраняет свою эффективность даже при активном использовании.</p>', 1, 3, 17, 1, 1, 1, 1728756116, 1, 1732271877, 0, 0, 0, 1732271877, 0, '', 0, 0, 0, 0, 1, 1),
(104, 'document', 'text/xml', 'sitemap.xml', '', 'sitemap.xml', 'sitemap.xml', '', 1, 0, 0, 0, 0, '', '', 1, 11, 9, 1, 0, 1, 1730402039, 1, 1730402049, 0, 0, 0, 1730402039, 1, '', 0, 0, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_site_content_categories`
--

CREATE TABLE `adkq_site_content_categories` (
  `doc` int(10) NOT NULL,
  `category` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_site_content_closure`
--

CREATE TABLE `adkq_site_content_closure` (
  `closure_id` int(10) UNSIGNED NOT NULL,
  `ancestor` int(10) UNSIGNED NOT NULL,
  `descendant` int(10) UNSIGNED NOT NULL,
  `depth` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `adkq_site_content_closure`
--

INSERT INTO `adkq_site_content_closure` (`closure_id`, `ancestor`, `descendant`, `depth`) VALUES
(1, 1, 1, 0),
(2, 2, 2, 0),
(3, 3, 3, 0),
(4, 2, 102, 1),
(5, 102, 102, 0),
(6, 2, 103, 1),
(7, 103, 103, 0),
(8, 104, 104, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_site_htmlsnippets`
--

CREATE TABLE `adkq_site_htmlsnippets` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT 0 COMMENT '0-plain text,1-rich text,2-code editor',
  `editor_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `category` int(11) NOT NULL DEFAULT 0 COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Cache option',
  `snippet` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `createdon` int(11) NOT NULL DEFAULT 0,
  `editedon` int(11) NOT NULL DEFAULT 0,
  `disabled` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Disables the snippet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_site_modules`
--

CREATE TABLE `adkq_site_modules` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `editor_type` int(11) NOT NULL DEFAULT 0 COMMENT '0-plain text,1-rich text,2-code editor',
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0 COMMENT 'category id',
  `wrap` tinyint(1) NOT NULL DEFAULT 0,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'url to module icon',
  `enable_resource` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'enables the resource file feature',
  `resourcefile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'a physical link to a resource file',
  `createdon` int(11) NOT NULL DEFAULT 0,
  `editedon` int(11) NOT NULL DEFAULT 0,
  `guid` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'globally unique identifier',
  `enable_sharedparams` tinyint(1) NOT NULL DEFAULT 0,
  `properties` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modulecode` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'module boot up code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `adkq_site_modules`
--

INSERT INTO `adkq_site_modules` (`id`, `name`, `description`, `editor_type`, `disabled`, `category`, `wrap`, `locked`, `icon`, `enable_resource`, `resourcefile`, `createdon`, `editedon`, `guid`, `enable_sharedparams`, `properties`, `modulecode`) VALUES
(1, 'Extras', '<strong>0.1.3</strong> first repository for Evolution CMS', 0, 0, 1, 0, 0, '', 0, '', 1728745019, 1728745019, 'store435243542tf542t5t', 1, '', ' \n/**\n * Extras\n * \n * first repository for Evolution CMS\n * \n * @category	module\n * @version 	0.1.3\n * @internal	@properties\n * @internal	@guid store435243542tf542t5t	\n * @internal	@shareparams 1\n * @internal	@dependencies requires files located at /assets/modules/store/\n * @internal	@modx_category Manager and Admin\n * @internal    @installset base, sample\n * @lastupdate  25/11/2016\n */\n\n//AUTHORS: Bumkaka & Dmi3yy \ninclude_once(\'../assets/modules/store/core.php\');'),
(2, 'ClientSettings', '<strong>2.2.1</strong> Customizable set of fields for user settings', 0, 0, 1, 0, 0, '', 0, '', 1728745615, 1728751134, 'clsee234523g354f542t5t', 1, '{\"prefix\":[{\"label\":\"Prefix for settings\",\"type\":\"text\",\"value\":\"client_\",\"default\":\"client_\",\"desc\":\"\"}],\"config_path\":[{\"label\":\"Path to configuration files\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}]}', '\n\nrequire_once MODX_BASE_PATH . \'assets/modules/clientsettings/core/src/ClientSettings.php\';\n\nif (!$modx->hasPermission(\'exec_module\')) {\n    $modx->sendRedirect(\'index.php?a=106\');\n}\n\nif (!is_array($modx->event->params)) {\n    $modx->event->params = [];\n}\n\nif (!function_exists(\'renderFormElement\')) {\n    include_once MODX_MANAGER_PATH . \'includes/tmplvars.commands.inc.php\';\n    include_once MODX_MANAGER_PATH . \'includes/tmplvars.inc.php\';\n}\n\nif (isset($_REQUEST[\'stay\'])) {\n    $_SESSION[\'stay\'] = $_REQUEST[\'stay\'];\n} else if (isset($_SESSION[\'stay\'])) {\n    $_REQUEST[\'stay\'] = $_SESSION[\'stay\'];\n}\n\n(new ClientSettings($params))->processRequest();\n'),
(3, 'Commerce', '<strong>0.7.0</strong> Commerce solution', 0, 0, 5, 0, 0, '', 0, '', 1728751154, 1728759352, '', 0, '', 'if (!$modx->hasPermission(\'exec_module\')) {\n    $modx->sendRedirect(\'index.php?a=106\');\n}\n\nif (!is_array($modx->event->params)) {\n    $modx->event->params = [];\n}\n\nif (!isset($_COOKIE[\'MODX_themeMode\'])) {\n    $_COOKIE[\'MODX_themeMode\'] = \'\';\n}\n\n$manager = new Commerce\\Module\\Manager($modx, array_merge($modx->event->params, [\n    \'module_url\' => \'index.php?a=112&id=\' . $_GET[\'id\'],\n    \'stay\' => \'\',\n]));\n\n$route = filter_input(INPUT_GET, \'type\', FILTER_VALIDATE_REGEXP, [\'options\' => [\n    \'regexp\'  => \'/^[a-z]+(:?\\/[a-z-]+)*$/\',\n    \'default\' => \'\',\n]]);\n\nreturn $manager->processRoute($route);\n'),
(4, 'EditDocs', '<strong>2.2.10</strong> Ajax powered modules for edit fields DB & TV, update, import, export, mass movement of documents;', 0, 0, 1, 0, 0, '', 0, '', 1728752177, 1732269747, '', 0, '{\"include_fields\":[{\"label\":\"Include fields\",\"type\":\"string\",\"value\":\"id,pagetitle,longtitle,description,alias,published,parent,introtext,content,template,menuindex,deleted,menutitle,hidemenu,createdon\",\"default\":\"id,pagetitle,longtitle,description,alias,published,parent,introtext,content,template,menuindex,deleted,menutitle,hidemenu,createdon\",\"desc\":\"a list with a choice of main fields separated by a comma of the document for editing and export \"}],\"include_tvs\":[{\"label\":\"Include TV\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"TV list separated by commas for editing or export (if empty = all TVs)\"}],\"include_tmpls\":[{\"label\":\"IDs of available templates\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"list of id of available templates (if empty = all templates) \"}],\"step\":[{\"label\":\"Step\",\"type\":\"string\",\"value\":\"100\",\"default\":\"100\",\"desc\":\"The number of iterations per ajax request. Be careful with this parameter. Better not to change.\"}],\"e\":[{\"label\":\"Quote Escaping Fields\",\"type\":\"string\",\"value\":\"pagetitle\",\"default\":\"pagetitle\",\"desc\":\"comma-separated list of fields to escape \"}],\"win1251\":[{\"label\":\"Enable Win-1251 encoding on export by default\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"columns\":[{\"label\":\"Default table columns against which we check during IMPORT\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"FROM_BASE==FROM_EXCEL\"}],\"max_rows\":[{\"label\":\"The number of table rows displayed in the browser during import\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"Leave blank for no limit\"}],\"event_plugins\":[{\"label\":\"Events «OnBeforeDocFormSave» and «OnDocFormSave» for plugins when saving documents\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"Don`t change this config, if you don`t know what you do\"}]}', 'include_once(MODX_BASE_PATH.\'assets/modules/editdocs/editdocs.module.php\');\n\n'),
(5, 'eLists', '<strong>0.1</strong> manage product params lists', 0, 0, 10, 0, 0, '', 0, '', 1730404150, 1731949342, 'eFilters', 1, '{\"param_tv_id\":[{\"label\":\"ID TV параметров товара tovarparams\",\"type\":\"string\",\"value\":\"19\",\"default\":\"\",\"desc\":\"\"}],\"product_templates_id\":[{\"label\":\"ID шаблонов товара\",\"type\":\"string\",\"value\":\"3\",\"default\":\"\",\"desc\":\"\"}],\"param_cat_id\":[{\"label\":\"ID категории параметров\",\"type\":\"string\",\"value\":\"9\",\"default\":\"\",\"desc\":\"\"}],\"param_cat_id_common\":[{\"label\":\"ID категории общих параметров\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"exclude_tvs_from_list\":[{\"label\":\"Не включать ТВ в параметры при выводе\",\"type\":\"string\",\"value\":\"9\",\"default\":\"\",\"desc\":\"\"}],\"tovarChunkName\":[{\"label\":\"Имя чанка вывода товара\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"pattern_folder\":[{\"label\":\"Папка паттернов\",\"type\":\"string\",\"value\":\"assets\\/images\\/pattern\\/\",\"default\":\"assets\\/images\\/pattern\\/\",\"desc\":\"\"}],\"tv_category_tag\":[{\"label\":\"ID TV, используемого для связки товар-категории через tagSaver\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}]}', '/*\n модуль для управления списками параметров и их значениями, которые можно использовать\n затем для заполнения параметров продуктов и последующей фильтрации\n необходимо включить общие параметры и настроить зависимости для общие: \n\n  Plugins\ntovarParams\n\n  Snippets\neFilter\neFilterResult\nmultiParams\ntovarParams\n\n//аналогично в указанных плагинах и сниппетах импортировать параметры из модуля eLists\n\n */\n\nrequire_once MODX_BASE_PATH . \"assets/modules/eLists/module.eLists.php\";\n');

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_site_module_access`
--

CREATE TABLE `adkq_site_module_access` (
  `id` int(10) UNSIGNED NOT NULL,
  `module` int(11) NOT NULL DEFAULT 0,
  `usergroup` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_site_module_depobj`
--

CREATE TABLE `adkq_site_module_depobj` (
  `id` int(11) NOT NULL,
  `module` int(11) NOT NULL DEFAULT 0,
  `resource` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '10-chunks, 20-docs, 30-plugins, 40-snips, 50-tpls, 60-tvs'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `adkq_site_module_depobj`
--

INSERT INTO `adkq_site_module_depobj` (`id`, `module`, `resource`, `type`) VALUES
(1, 2, 7, 30),
(2, 5, 26, 40),
(3, 5, 27, 40),
(4, 5, 29, 40),
(5, 5, 30, 40),
(6, 5, 14, 30);

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_site_plugins`
--

CREATE TABLE `adkq_site_plugins` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Plugin',
  `editor_type` int(11) NOT NULL DEFAULT 0 COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT 0 COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Cache option',
  `plugincode` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `properties` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Default Properties',
  `disabled` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Disables the plugin',
  `moduleguid` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'GUID of module from which to import shared parameters',
  `createdon` int(11) NOT NULL DEFAULT 0,
  `editedon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `adkq_site_plugins`
--

INSERT INTO `adkq_site_plugins` (`id`, `name`, `description`, `editor_type`, `category`, `cache_type`, `plugincode`, `locked`, `properties`, `disabled`, `moduleguid`, `createdon`, `editedon`) VALUES
(1, 'AboutEvoWidget', '<strong>1.1.0</strong> displays useful links at the dashboardn', 0, 1, 0, 'require MODX_BASE_PATH.\'assets/plugins/aboutevo/plugin.aboutevo.php\';\n', 0, '{\"col_lg\":[{\"label\":\"Widget width\",\"type\":\"list\",\"value\":\"6\",\"options\":\"1,2,3,4,5,6,7,8,9,10,11,12\",\"default\":\"6\",\"desc\":\"\"}],\"menu_index\":[{\"label\":\"Output position\",\"type\":\"text\",\"value\":\"11\",\"default\":\"11\",\"desc\":\"\"}],\"hide_menu\":[{\"label\":\"Hide\",\"type\":\"list\",\"value\":\"0\",\"options\":\"0,1\",\"default\":\"0\",\"desc\":\"\"}]}', 0, '', 1728745019, 1728745019),
(2, 'CodeMirror', '<strong>1.7</strong> JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 5.33 (released on 21-12-2017)', 0, 1, 0, '\n/**\n * CodeMirror\n *\n * JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 5.33 (released on 21-12-2017)\n *\n * @category    plugin\n * @version     1.7\n * @license     http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @package     evo\n * @internal    @events OnDocFormRender,OnChunkFormRender,OnModFormRender,OnPluginFormRender,OnSnipFormRender,OnTempFormRender,OnRichTextEditorInit,OnTVFormRender\n * @internal    @modx_category Manager and Admin\n * @internal    @properties &theme=Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light;default &darktheme=Dark Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light;one-dark &fontSize=Font-size;list;10,11,12,13,14,15,16,17,18;14 &lineHeight=Line-height;list;1,1.1,1.2,1.3,1.4,1.5;1.3 &indentUnit=Indent unit;int;4 &tabSize=The width of a tab character;int;4 &lineWrapping=lineWrapping;list;true,false;true &matchBrackets=matchBrackets;list;true,false;true &activeLine=activeLine;list;true,false;false &emmet=emmet;list;true,false;true &search=search;list;true,false;true &indentWithTabs=indentWithTabs;list;true,false;true &undoDepth=undoDepth;int;200 &historyEventDelay=historyEventDelay;int;1250\n * @internal    @installset base\n * @reportissues https://github.com/evolution-cms/evolution/issues/\n * @documentation Official docs https://codemirror.net/doc/manual.html\n * @author      hansek from http://www.modxcms.cz\n * @author      update Mihanik71\n * @author      update Deesen\n * @author      update 64j\n * @lastupdate  08-01-2018\n */\n\n$_CM_BASE = \'assets/plugins/codemirror/\';\n\n$_CM_URL = MODX_SITE_URL . $_CM_BASE;\n\nrequire(MODX_BASE_PATH. $_CM_BASE .\'codemirror.plugin.php\');\n', 0, '{\"theme\":[{\"label\":\"Theme\",\"type\":\"list\",\"value\":\"default\",\"options\":\"default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light\",\"default\":\"default\",\"desc\":\"\"}],\"darktheme\":[{\"label\":\"Dark Theme\",\"type\":\"list\",\"value\":\"one-dark\",\"options\":\"default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light\",\"default\":\"one-dark\",\"desc\":\"\"}],\"fontSize\":[{\"label\":\"Font-size\",\"type\":\"list\",\"value\":\"14\",\"options\":\"10,11,12,13,14,15,16,17,18\",\"default\":\"14\",\"desc\":\"\"}],\"lineHeight\":[{\"label\":\"Line-height\",\"type\":\"list\",\"value\":\"1.3\",\"options\":\"1,1.1,1.2,1.3,1.4,1.5\",\"default\":\"1.3\",\"desc\":\"\"}],\"indentUnit\":[{\"label\":\"Indent unit\",\"type\":\"int\",\"value\":\"4\",\"default\":\"4\",\"desc\":\"\"}],\"tabSize\":[{\"label\":\"The width of a tab character\",\"type\":\"int\",\"value\":\"4\",\"default\":\"4\",\"desc\":\"\"}],\"lineWrapping\":[{\"label\":\"lineWrapping\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"matchBrackets\":[{\"label\":\"matchBrackets\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"activeLine\":[{\"label\":\"activeLine\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"emmet\":[{\"label\":\"emmet\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"search\":[{\"label\":\"search\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"indentWithTabs\":[{\"label\":\"indentWithTabs\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"undoDepth\":[{\"label\":\"undoDepth\",\"type\":\"int\",\"value\":\"200\",\"default\":\"200\",\"desc\":\"\"}],\"historyEventDelay\":[{\"label\":\"historyEventDelay\",\"type\":\"int\",\"value\":\"1250\",\"default\":\"1250\",\"desc\":\"\"}]}', 0, '', 1728745019, 1728745019),
(3, 'OutdatedExtrasCheck', '<strong>1.4.6</strong> Check for Outdated critical extras not compatible with EVO 1.4.6', 0, 1, 0, '/**\n * OutdatedExtrasCheck\n *\n * Check for Outdated critical extras not compatible with EVO 1.4.6\n *\n * @category	plugin\n * @version     1.4.6\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @package     evo\n * @author      Author: Nicola Lambathakis\n * @internal    @events OnManagerWelcomeHome\n * @internal    @properties &wdgVisibility=Show widget for:;menu;All,AdminOnly,AdminExcluded,ThisRoleOnly,ThisUserOnly;AdminOnly &ThisRole=Run only for this role:;string;;;(role id) &ThisUser=Run only for this user:;string;;;(username)\n * @internal    @modx_category Manager and Admin\n * @internal    @installset base\n * @internal    @disabled 0\n */\n\nrequire MODX_BASE_PATH . \'assets/plugins/extrascheck/OutdatedExtrasCheck.plugin.php\';\n', 0, '{\"wdgVisibility\":[{\"label\":\"Show widget for:\",\"type\":\"menu\",\"value\":\"AdminOnly\",\"options\":\"All,AdminOnly,AdminExcluded,ThisRoleOnly,ThisUserOnly\",\"default\":\"AdminOnly\",\"desc\":\"\"}],\"ThisRole\":[{\"label\":\"Run only for this role:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ThisUser\":[{\"label\":\"Run only for this user:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}]}', 0, '', 1728745019, 1728745019),
(4, 'TransAlias', '<strong>1.0.4</strong> Human readible URL translation supporting multiple languages and overrides', 0, 1, 0, 'require MODX_BASE_PATH.\'assets/plugins/transalias/plugin.transalias.php\';', 0, '{\"table_name\":[{\"label\":\"Trans table\",\"type\":\"list\",\"value\":\"russian\",\"options\":\"common,russian,dutch,german,czech,utf8,utf8lowercase\",\"default\":\"russian\",\"desc\":\"\"}],\"char_restrict\":[{\"label\":\"Restrict alias to\",\"type\":\"list\",\"value\":\"lowercase alphanumeric\",\"options\":\"lowercase alphanumeric,alphanumeric,legal characters\",\"default\":\"lowercase alphanumeric\",\"desc\":\"\"}],\"remove_periods\":[{\"label\":\"Remove Periods\",\"type\":\"list\",\"value\":\"No\",\"options\":\"Yes,No\",\"default\":\"No\",\"desc\":\"\"}],\"word_separator\":[{\"label\":\"Word Separator\",\"type\":\"list\",\"value\":\"dash\",\"options\":\"dash,underscore,none\",\"default\":\"dash\",\"desc\":\"\"}],\"override_tv\":[{\"label\":\"Override TV name\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}]}', 0, '', 1728745019, 1728745019),
(5, 'Updater', '<strong>0.9.2</strong> show message about outdated CMS version', 0, 1, 0, 'require MODX_BASE_PATH.\'assets/plugins/updater/plugin.updater.php\';\n', 0, '{\"wdgVisibility\":[{\"label\":\"Show widget for:\",\"type\":\"menu\",\"value\":\"All\",\"options\":\"All,AdminOnly,AdminExcluded,ThisRoleOnly,ThisUserOnly\",\"default\":\"All\",\"desc\":\"\"}],\"ThisRole\":[{\"label\":\"Show only to this role id:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ThisUser\":[{\"label\":\"Show only to this username:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"showButton\":[{\"label\":\"Show Update Button:\",\"type\":\"menu\",\"value\":\"AdminOnly\",\"options\":\"show,hide,AdminOnly\",\"default\":\"AdminOnly\",\"desc\":\"\"}]}', 0, '', 1728745019, 1728745019),
(6, 'userHelper', '<strong>1.21.1</strong> addition to FormLister', 0, 2, 0, 'require MODX_BASE_PATH.\'assets/snippets/FormLister/plugin.userHelper.php\';\n', 0, '{\"model\":[{\"label\":\"Model\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"logoutKey\":[{\"label\":\"Request key\",\"type\":\"text\",\"value\":\"logout\",\"default\":\"logout\",\"desc\":\"\"}],\"cookieName\":[{\"label\":\"Cookie Name\",\"type\":\"text\",\"value\":\"WebLoginPE\",\"default\":\"WebLoginPE\",\"desc\":\"\"}],\"cookieLifetime\":[{\"label\":\"Cookie Lifetime, seconds\",\"type\":\"text\",\"value\":\"157680000\",\"default\":\"157680000\",\"desc\":\"\"}],\"maxFails\":[{\"label\":\"Max failed logins\",\"type\":\"text\",\"value\":\"3\",\"default\":\"3\",\"desc\":\"\"}],\"blockTime\":[{\"label\":\"Block for, seconds\",\"type\":\"text\",\"value\":\"3600\",\"default\":\"3600\",\"desc\":\"\"}],\"trackWebUserActivity\":[{\"label\":\"Track web user activity\",\"type\":\"list\",\"value\":\"No\",\"options\":\"No,Yes\",\"default\":\"No\",\"desc\":\"\"}]}', 1, '', 1728745605, 1728745605),
(7, 'ClientSettings', '<strong>2.2.1</strong> Creates menu item for user module ClientSettings', 0, 1, 0, '\n\nif ($modx->event->name == \'OnManagerMenuPrerender\') {\n    require_once MODX_BASE_PATH . \'assets/modules/clientsettings/core/src/ClientSettings.php\';\n\n    $cs   = new ClientSettings($params);\n    $mid  = $cs->getModuleId();\n    $lang = $cs->loadLang();\n    $tabs = $cs->loadStructure();\n\n    if (!empty($tabs)) {\n        $menuparams = [\'client_settings\', \'main\', \'<i class=\"fa fa-cog\"></i>\' . $lang[\'cs.module_title\'], \'index.php?a=112&id=\' . $mid . \'&type=default\', $lang[\'cs.module_title\'], \'\', \'\', \'main\', 0, 100, \'\'];\n\n        if (count($tabs) > 1) {\n            $menuparams[3] = \'javscript:;\';\n            $menuparams[5] = \'return false;\';\n            $sort = 0;\n\n            $params[\'menu\'][\'client_settings_main\'] = [\'client_settings_main\', \'client_settings\', \'<i class=\"fa fa-cog\"></i>\' . $lang[\'cs.module_title\'], \'index.php?a=112&id=\' . $mid . \'&type=default\', $lang[\'cs.module_title\'], \'\', \'\', \'main\', 0, $sort, \'\'];\n\n            foreach ($tabs as $alias => $item) {\n                if ($alias != \'default\') {\n                    $params[\'menu\'][\'client_settings_\' . $alias] = [\'client_settings_\' . $alias, \'client_settings\', \'<i class=\"fa \' . (isset($item[\'menu\'][\'icon\']) ? $item[\'menu\'][\'icon\'] : \'fa-cog\') . \'\"></i>\' . $item[\'menu\'][\'caption\'], \'index.php?a=112&id=\' . $mid . \'&type=\' . $alias, $item[\'menu\'][\'caption\'], \'\', \'\', \'main\', 0, $sort += 10, \'\'];\n                }\n            }\n        }\n\n        $params[\'menu\'][\'client_settings\'] = $menuparams;\n        $modx->event->output(serialize($params[\'menu\']));\n    }\n\n    return;\n}\n\n', 0, '', 0, 'clsee234523g354f542t5t', 1728745615, 1728751134),
(10, 'Commerce', '<strong>0.13.2</strong> Commerce solution', 0, 5, 0, 'if (!class_exists(\'Commerce\\\\Commerce\')) {\r\n    require_once MODX_BASE_PATH . \'assets/plugins/commerce/autoload.php\';\r\n\r\n    $ci = ci();\r\n\r\n    $ci->set(\'modx\', function($ci) use ($modx) {\r\n        return $modx;\r\n    });\r\n\r\n    $ci->set(\'commerce\', function($ci) use ($modx, $params) {\r\n        return new Commerce\\Commerce($modx, $params);\r\n    });\r\n\r\n    $ci->set(\'currency\', function($ci) {\r\n        return $ci->commerce->currency;\r\n    });\r\n\r\n    $ci->set(\'cache\', function($ci) use ($modx) {\r\n        return Commerce\\Cache::getInstance();\r\n    });\r\n\r\n    $ci->set(\'carts\', function($ci) use ($modx) {\r\n        return Commerce\\CartsManager::getManager($modx);\r\n    });\r\n\r\n    $ci->set(\'db\', function($ci) {\r\n        return $ci->modx->db;\r\n    });\r\n\r\n    $ci->set(\'tpl\', function($ci) use ($modx) {\r\n        require_once MODX_BASE_PATH . \'assets/snippets/DocLister/lib/DLTemplate.class.php\';\r\n        return DLTemplate::getInstance($modx);\r\n    });\r\n\r\n    $ci->set(\'flash\', function($ci) {\r\n        return new Commerce\\Module\\FlashMessages;\r\n    });\r\n\r\n    $ci->set(\'statuses\', function($ci) use ($modx) {\r\n        return new Commerce\\Statuses($modx);\r\n    });\r\n}\r\n\r\nif ($modx instanceof \\Illuminate\\Container\\Container) {\r\n    if (!$modx->offsetExists(\'commerce\')) {\r\n        $modx->instance(\'commerce\', ci()->commerce);\r\n        $modx->commerce->initializeCommerce();\r\n    }\r\n} else if (!isset($modx->commerce) || isset($modx->commerce) && !($modx->commerce instanceof \\Commerce\\Commerce)) {\r\n    $modx->commerce = ci()->commerce;\r\n    $modx->commerce->initializeCommerce();\r\n}\r\n\r\nswitch ($modx->event->name) {\r\n    case \'OnWebPageInit\': {\r\n        $order_id = ci()->flash->get(\'last_order_id\');\r\n\r\n        if (!empty($order_id) && is_numeric($order_id)) {\r\n            $modx->commerce->loadProcessor()->populateOrderPlaceholders($order_id);\r\n        }\r\n\r\n        $payment_id = ci()->flash->get(\'last_payment_id\');\r\n\r\n        if (!empty($payment_id) && is_numeric($payment_id)) {\r\n            $modx->commerce->loadProcessor()->populatePaymentPlaceholders($payment_id);\r\n        }\r\n\r\n        break;\r\n    }\r\n\r\n    case \'OnLoadWebDocument\': {\r\n        if (!empty($params[\'product_templates\'])) {\r\n            $templates = array_map(\'trim\', explode(\',\', $params[\'product_templates\']));\r\n\r\n            if (in_array($modx->documentObject[\'template\'], $templates)) {\r\n                $modx->commerce->populateProductPagePlaceholders();\r\n            }\r\n        }\r\n\r\n        break;\r\n    }\r\n\r\n    case \'OnWebPagePrerender\': {\r\n        $modx->documentOutput = str_replace(\'</body>\', $modx->commerce->populateClientScripts() . \'</body>\', $modx->documentOutput);\r\n        return;\r\n    }\r\n\r\n    case \'OnManagerMenuPrerender\': {\r\n        if(!isset($params[\'module_id\'])) {\r\n            $moduleid = $modx->db->getValue($modx->db->select(\'id\', $modx->getFullTablename(\'site_modules\'), \"name = \'Commerce\'\"));\r\n        } else {\r\n            $moduleid = $params[\'module_id\'];\r\n        }\r\n        $url = \'index.php?a=112&id=\' . $moduleid;\r\n        $lang = $modx->commerce->getUserLanguage(\'menu\');\r\n\r\n        $params[\'menu\'] = array_merge($params[\'menu\'], [\r\n            \'commerce\' => [\'commerce\', \'main\', \'<i class=\"fa fa-shopping-cart\"></i>\' . $lang[\'menu.commerce\'], \'javascript:;\', $lang[\'menu.commerce\'], \'return false;\', \'exec_module\', \'main\', 0, 90, \'\'],\r\n            \'orders\'   => [\'orders\', \'commerce\', \'<i class=\"fa fa-list\"></i>\' . $lang[\'menu.orders\'], $url . \'&type=orders\', $lang[\'menu.orders\'], \'\', \'exec_module\', \'main\', 0, 10, \'\'],\r\n            \'statuses\' => [\'statuses\', \'commerce\', \'<i class=\"fa fa-play-circle\"></i>\' . $lang[\'menu.statuses\'], $url . \'&type=statuses\', $lang[\'menu.statuses\'], \'\', \'exec_module\', \'main\', 0, 20, \'\'],\r\n            \'currency\' => [\'currency\', \'commerce\', \'<i class=\"fa fa-usd\"></i>\' . $lang[\'menu.currency\'], $url . \'&type=currency\', $lang[\'menu.currency\'], \'\', \'exec_module\', \'main\', 0, 30, \'\'],\r\n        ]);\r\n\r\n        $modx->event->output(serialize($params[\'menu\']));\r\n        break;\r\n    }\r\n\r\n    case \'OnPageNotFound\': {\r\n        if (!empty($_GET[\'q\']) && is_scalar($_GET[\'q\']) && strpos($_GET[\'q\'], \'commerce\') === 0) {\r\n            $modx->commerce->processRoute($_GET[\'q\']);\r\n        }\r\n        break;\r\n    }\r\n\r\n    case \'OnSiteRefresh\': {\r\n        ci()->cache->clean();\r\n        break;\r\n    }\r\n}\r\n', 0, '{\r\n  \"payment_success_page_id\": [\r\n    {\r\n      \"label\": \"Page ID for redirect after successfull payment\",\r\n      \"type\": \"text\",\r\n      \"value\": \"\",\r\n      \"default\": \"\",\r\n      \"desc\": \"\"\r\n    }\r\n  ],\r\n  \"payment_failed_page_id\": [\r\n    {\r\n      \"label\": \"Page ID for redirect after payment error\",\r\n      \"type\": \"text\",\r\n      \"value\": \"\",\r\n      \"default\": \"\",\r\n      \"desc\": \"\"\r\n    }\r\n  ],\r\n  \"cart_page_id\": [\r\n    {\r\n      \"label\": \"Cart page ID\",\r\n      \"type\": \"text\",\r\n      \"value\": \"3\",\r\n      \"default\": \"\",\r\n      \"desc\": \"\"\r\n    }\r\n  ],\r\n  \"order_page_id\": [\r\n    {\r\n      \"label\": \"Order page ID\",\r\n      \"type\": \"text\",\r\n      \"value\": \"10\",\r\n      \"default\": \"\",\r\n      \"desc\": \"\"\r\n    }\r\n  ],\r\n  \"status_id_after_payment\": [\r\n    {\r\n      \"label\": \"Status ID after payment\",\r\n      \"type\": \"text\",\r\n      \"value\": \"\",\r\n      \"default\": \"\",\r\n      \"desc\": \"\"\r\n    }\r\n  ],\r\n  \"product_templates\": [\r\n    {\r\n      \"label\": \"Product templates IDs\",\r\n      \"type\": \"text\",\r\n      \"value\": \"3\",\r\n      \"default\": \"\",\r\n      \"desc\": \"\"\r\n    }\r\n  ],\r\n  \"title_field\": [\r\n    {\r\n      \"label\": \"Product title field name\",\r\n      \"type\": \"text\",\r\n      \"value\": \"pagetitle\",\r\n      \"default\": \"pagetitle\",\r\n      \"desc\": \"\"\r\n    }\r\n  ],\r\n  \"price_field\": [\r\n    {\r\n      \"label\": \"Product price field name\",\r\n      \"type\": \"text\",\r\n      \"value\": \"price\",\r\n      \"default\": \"price\",\r\n      \"desc\": \"\"\r\n    }\r\n  ],\r\n  \"status_notification\": [\r\n    {\r\n      \"label\": \"Chunk name for status change notification\",\r\n      \"type\": \"text\",\r\n      \"value\": \"\",\r\n      \"default\": \"\",\r\n      \"desc\": \"\"\r\n    }\r\n  ],\r\n  \"order_paid\": [\r\n    {\r\n      \"label\": \"Chunk name for order paid notification\",\r\n      \"type\": \"text\",\r\n      \"value\": \"\",\r\n      \"default\": \"\",\r\n      \"desc\": \"\"\r\n    }\r\n  ],\r\n  \"order_changed\": [\r\n    {\r\n      \"label\": \"Chunk name for order changed notification\",\r\n      \"type\": \"text\",\r\n      \"value\": \"\",\r\n      \"default\": \"\",\r\n      \"desc\": \"\"\r\n    }\r\n  ],\r\n  \"templates_path\": [\r\n    {\r\n      \"label\": \"Path to custom templates\",\r\n      \"type\": \"text\",\r\n      \"value\": \"\",\r\n      \"default\": \"\",\r\n      \"desc\": \"\"\r\n    }\r\n  ],\r\n  \"email\": [\r\n    {\r\n      \"label\": \"Email notifications recipient\",\r\n      \"type\": \"text\",\r\n      \"value\": \"\",\r\n      \"default\": \"\",\r\n      \"desc\": \"\"\r\n    }\r\n  ],\r\n  \"default_payment\": [\r\n    {\r\n      \"label\": \"Default payment code\",\r\n      \"type\": \"text\",\r\n      \"value\": \"\",\r\n      \"default\": \"\",\r\n      \"desc\": \"\"\r\n    }\r\n  ],\r\n  \"default_delivery\": [\r\n    {\r\n      \"label\": \"Default delivery code\",\r\n      \"type\": \"text\",\r\n      \"value\": \"\",\r\n      \"default\": \"\",\r\n      \"desc\": \"\"\r\n    }\r\n  ],\r\n  \"instant_redirect_to_payment\": [\r\n    {\r\n      \"label\": \"Redirect to payment after order process\",\r\n      \"type\": \"list\",\r\n      \"value\": \"1\",\r\n      \"options\": \"Instant==1||Show prepare text==0\",\r\n      \"default\": \"1\",\r\n      \"desc\": \"\"\r\n    }\r\n  ],\r\n  \"redirect_to_payment_tpl\": [\r\n    {\r\n      \"label\": \"Chunk name for redirect prepare text\",\r\n      \"type\": \"text\",\r\n      \"value\": \"\",\r\n      \"default\": \"\",\r\n      \"desc\": \"\"\r\n    }\r\n  ],\r\n  \"payment_wait_time\": [\r\n    {\r\n      \"label\": \"Waiting time for order payment, days\",\r\n      \"type\": \"text\",\r\n      \"value\": \"3\",\r\n      \"default\": \"3\",\r\n      \"desc\": \"\"\r\n    }\r\n  ],\r\n  \"cart_controller\": [\r\n    {\r\n      \"label\": \"Class to use as a cart controller\",\r\n      \"type\": \"text\",\r\n      \"value\": \"CartDocLister\",\r\n      \"default\": \"CartDocLister\",\r\n      \"desc\": \"\"\r\n    }\r\n  ],\r\n  \"orders_display\": [\r\n    {\r\n      \"label\": \"The number of orders per page\",\r\n      \"type\": \"text\",\r\n      \"value\": \"10\",\r\n      \"default\": \"10\",\r\n      \"desc\": \"\"\r\n    }\r\n  ],\r\n  \"module_id\": [\r\n    {\r\n      \"label\": \"Commerce module ID (if renamed)\",\r\n      \"type\": \"text\",\r\n      \"value\": \"\",\r\n      \"default\": \"\",\r\n      \"desc\": \"\"\r\n    }\r\n  ]\r\n}', 0, '', 1728751154, 1729714299),
(12, 'TinyMCE4', '<strong>4.9.11</strong> Javascript rich text editor', 0, 1, 0, 'if (!defined(\'MODX_BASE_PATH\')) { die(\'What are you doing? Get out of here!\'); }\n\nrequire(MODX_BASE_PATH.\"assets/plugins/tinymce4/plugin.tinymce.inc.php\");', 0, '{\"styleFormats\":[{\"label\":\"Custom Style Formats <b>RAW<\\/b><br\\/><br\\/><ul><li>leave empty to use below block\\/inline formats<\\/li><li>allows simple-format: <i>Title,cssClass|Title2,cssClass2<\\/i><\\/li><li>Also accepts full JSON-config as per TinyMCE4 docs \\/ configure \\/ content-formating \\/ style_formats<\\/li><\\/ul>\",\"type\":\"textarea\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"styleFormats_inline\":[{\"label\":\"Custom Style Formats <b>INLINE<\\/b><br\\/><br\\/><ul><li>will wrap selected text with span-tag + css-class<\\/li><li>simple-format only<\\/li><\\/ul>\",\"type\":\"textarea\",\"value\":\"InlineTitle,cssClass1|InlineTitle2,cssClass2\",\"default\":\"InlineTitle,cssClass1|InlineTitle2,cssClass2\",\"desc\":\"\"}],\"styleFormats_block\":[{\"label\":\"Custom Style Formats <b>BLOCK<\\/b><br\\/><br\\/><ul><li>will add css-class to selected block-element<\\/li><li>simple-format only<\\/li><\\/ul>\",\"type\":\"textarea\",\"value\":\"BlockTitle,cssClass3|BlockTitle2,cssClass4\",\"default\":\"BlockTitle,cssClass3|BlockTitle2,cssClass4\",\"desc\":\"\"}],\"customParams\":[{\"label\":\"Custom Parameters<br\\/><b>(Be careful or leave empty!)<\\/b>\",\"type\":\"textarea\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"entityEncoding\":[{\"label\":\"Entity Encoding\",\"type\":\"list\",\"value\":\"named\",\"options\":\"named,numeric,raw\",\"default\":\"named\",\"desc\":\"\"}],\"entities\":[{\"label\":\"Entities\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"pathOptions\":[{\"label\":\"Path Options\",\"type\":\"list\",\"value\":\"Site config\",\"options\":\"Site config,Absolute path,Root relative,URL,No convert\",\"default\":\"Site config\",\"desc\":\"\"}],\"resizing\":[{\"label\":\"Advanced Resizing\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"disabledButtons\":[{\"label\":\"Disabled Buttons\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webTheme\":[{\"label\":\"Web Theme\",\"type\":\"test\",\"value\":\"webuser\",\"default\":\"webuser\",\"desc\":\"\"}],\"webPlugins\":[{\"label\":\"Web Plugins\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webButtons1\":[{\"label\":\"Web Buttons 1\",\"type\":\"text\",\"value\":\"bold italic underline strikethrough removeformat alignleft aligncenter alignright\",\"default\":\"bold italic underline strikethrough removeformat alignleft aligncenter alignright\",\"desc\":\"\"}],\"webButtons2\":[{\"label\":\"Web Buttons 2\",\"type\":\"text\",\"value\":\"link unlink image undo redo\",\"default\":\"link unlink image undo redo\",\"desc\":\"\"}],\"webButtons3\":[{\"label\":\"Web Buttons 3\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webButtons4\":[{\"label\":\"Web Buttons 4\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webAlign\":[{\"label\":\"Web Toolbar Alignment\",\"type\":\"list\",\"value\":\"ltr\",\"options\":\"ltr,rtl\",\"default\":\"ltr\",\"desc\":\"\"}],\"width\":[{\"label\":\"Width\",\"type\":\"text\",\"value\":\"100%\",\"default\":\"100%\",\"desc\":\"\"}],\"height\":[{\"label\":\"Height\",\"type\":\"text\",\"value\":\"400px\",\"default\":\"400px\",\"desc\":\"\"}],\"introtextRte\":[{\"label\":\"<b>Introtext RTE<\\/b><br\\/>add richtext-features to \\\"introtext\\\"\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}],\"inlineMode\":[{\"label\":\"<b>Inline-Mode<\\/b>\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}],\"inlineTheme\":[{\"label\":\"<b>Inline-Mode<\\/b><br\\/>Theme\",\"type\":\"text\",\"value\":\"inline\",\"default\":\"inline\",\"desc\":\"\"}],\"browser_spellcheck\":[{\"label\":\"<b>Browser Spellcheck<\\/b><br\\/>At least one dictionary must be installed inside your browser\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}],\"paste_as_text\":[{\"label\":\"<b>Force Paste as Text<\\/b>\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}]}', 0, '', 1728753254, 1728753254),
(14, 'eFilterHelper', '<strong>0.1</strong> plugin for convinient work with eFilter', 0, 10, 0, '/*использует общие параметры модуля eLists - не забудьте их подключить в модуле и плагине */\n /*\n предназначен для скрытия/показа только нужных tv из заданных категорий \"параметры товара\" в зависимости\n от настроек родительской категории по фильтрам и используемым параметрам товара\n  а также для установки нужных направлений сортировки на событии onWebPageInit\n */\n\nif(!defined(\'MODX_BASE_PATH\')) die(\'What are you doing? Get out of here!\');\n\n\n$output = \'\';\n//массив разрешеннных ТВ (id)\n$allowedParams = array();\n//массив запрещенных ТВ (id) - будем их скрывать\n$disallowedParams = array();\n//массив всех ТВ из категорий \"параметры для товара\" - $param_cat_id\n$tv_list = array();\n\nif($modx->event->name == \'OnDocFormRender\') {\n    global $content;\n    global $tvsArray;\n    $product_template_array = explode(\',\', $product_templates_id);\n    if ((isset($content[\'template\']) && in_array($content[\'template\'], $product_template_array)) || !empty($tvsArray[\'tovarparams\'])) {\n        \n        include_once(MODX_BASE_PATH . \'assets/snippets/eFilter/eFilter.class.php\');\n        $eFltr = new eFilter($modx, $params);\n\n        //получаем все возможные ТВ\n        $sql = \"SELECT `id`,`name`,`caption` FROM \" . $modx->getFullTableName(\'site_tmplvars\') . \" WHERE `category` IN (\" . $param_cat_id . \") ORDER BY `rank` ASC, `caption` ASC\";\n        $q = $modx->db->query($sql);\n        while($row = $modx->db->getRow($q)){\n            $tv_list[$row[\'id\']]= $row[\'name\'];\n        }\n        \n        //узнаем родителя, чтобы грузить конфиг tovarparams\n        //приоритет у прямых родителей товара, по ним сначала и пройдемся\n        $pid = \'\';\n        $allowedParams = array();\n        if (isset($_GET[\'pid\'])) {\n             $pid = $_GET[\'pid\'];\n        }\n        if (isset($content[\'parent\'])) {\n            $pid = $content[\'parent\'];\n        }\n        if (isset($_POST[\'pid\'])) {\n            $pid = $_POST[\'pid\'];\n        }\n        if ($pid == \'\') {$pid = \'1\';}\n        if (!empty($tvsArray[\'tovarparams\']) && !empty($content[\'id\'])) {\n            $pid = $content[\'id\'];\n        }\n        $eFltr->docid = $pid;\n        //разрешенные для данного типа товара параметры\n        $allowedTmp = $eFltr->getFilterParam ($eFltr->param_tv_name);\n        \n        //если параметров не обнаружено, пройдемся по первой тегованной категории\n        //возможно, они есть там\n        if (empty($allowedTmp) && isset($_GET[\'id\']) && (int)$_GET[\'id\'] != \'0\' && isset($tv_category_tag) && $tv_category_tag != \'\') {\n            //определяем родителя по первой прикрепленной категории\n            $category = $modx->db->getValue(\"SELECT value FROM\" . $modx->getFullTableName(\'site_tmplvar_contentvalues\') . \" WHERE tmplvarid={$tv_category_tag} AND contentid=\" . (int)$_GET[\'id\'] . \" LIMIT 0,1\");\n            if ($category) {//категория есть\n                $tmp = explode(\',\', $category);\n                $pid = $tmp[0];\n                if ($pid) {\n                    $eFltr->docid = $pid;\n                    //разрешенные для данного типа товара параметры\n                    $allowedTmp = $eFltr->getFilterParam ($eFltr->param_tv_name);\n                }\n            }\n        }\n        \n        //строим итоговый массив разрешенных для данного вида товара параметров\n        if (isset($allowedTmp[\'fieldValue\'])) {\n            foreach ($allowedTmp[\'fieldValue\'] as $k => $v) {\n                $allowedParams[$v[\'param_id\']] = \'1\';\n            }\n        }\n\n        //строим массив запрещенных ТВ (на основе перечня всех ТВ и списка разрешенных)\n        foreach ($tv_list as $k => $v){\n            if (!isset($allowedParams[$k])) {\n                $disallowedParams[$k] = \'1\';\n            }\n        }\n        \n        //скрипт скрытия всех \"запрещенных ТВ\"\n        //т.к. managermanager почти у всех и он уже подключил jquery, то обращаемся смело к нему\n        if (!empty($disallowedParams)) {\n            $output .= \'<script type=\"text/javascript\">jQuery(document).ready(function(){\';\n            foreach ($disallowedParams as $k => $v) {\n                $output .= \'jQuery(\".sectionBody\").find(\"#tv\' . $k . \'\").parents(\"tr\").addClass(\"hide_next\");\';\n                //select\n                $output .= \'jQuery(\".sectionBody\").find(\"select[name=\\\'tv\' . $k . \'\\\']\").parents(\"tr\").addClass(\"hide_next\");\';\n                //multiselect\n                $output .= \'jQuery(\".sectionBody\").find(\"select[name=\\\'tv\' . $k . \'[]\\\']\").parents(\"tr\").addClass(\"hide_next\");\';\n                //фикс чекбоксов\n                $output .= \'jQuery(\".sectionBody\").find(\"input[name=\\\'tv\' . $k . \'[]\\\']\").parents(\"tr\").addClass(\"hide_next\");\';\n                //фикс радио\n                $output .= \'jQuery(\".sectionBody\").find(\"input[name=\\\'tv\' . $k . \'\\\']\").parents(\"tr\").addClass(\"hide_next\");\';\n\n                //фикс templatesEdit3\n                $output .= \'jQuery(\".sectionBody\").find(\"input[name=\\\'tv\' . $k . \'\\\']\").closest(\".row.form-row\").hide();\';\n                //select\n                $output .= \'jQuery(\".sectionBody\").find(\"select[name=\\\'tv\' . $k . \'\\\']\").closest(\".row.form-row\").hide();\';\n                //checkbox\n                $output .= \'jQuery(\".sectionBody\").find(\"input[name=\\\'tv\' . $k . \'[]\\\']\").closest(\".row.form-row\").hide();\';\n                //multiselect\n                $output .= \'jQuery(\".sectionBody\").find(\"select[name=\\\'tv\' . $k . \'[]\\\']\").closest(\".row.form-row\").hide();\';\n            }\n            $output .= \'})</script>\';\n            $output .= \'<style>tr.hide_next,tr.hide_next + tr{display:none;}</style>\' . \"\\n\";\n        }\n    }\n    $isTovarParams = $modx->db->getValue(\"SELECT COUNT(*) FROM \" . $modx->getFullTableName(\"site_tmplvar_templates\") . \" WHERE tmplvarid={$param_tv_id} AND templateid={$template}\");\n    if (!empty($isTovarParams)) {\n        //есть tv tovarparams - будем его стилизовать\n        $style = file_get_contents(MODX_BASE_PATH . \'assets/snippets/eFilter/html/tovarparams_style.tpl\');\n        $output .= $modx->parseText($style, array(\'param_tv_id\' => $param_tv_id));\n    }\n    $modx->event->output($output);\n}\n\nif ($modx->event->name == \'OnWebPageInit\') {\n    $docid = $modx->documentIdentifier;    \n    if (isset($_POST[\'action\'])) {\n        $action = $modx->db->escape($_POST[\'action\']);\n        switch ($action) {\n            case \'changesortBy\':\n                //ставим в сессию параметры сортировки и вывода\n                $sortBy = ($_POST[\'sortBy\'] && !empty($_POST[\'sortBy\'])) ? $modx->db->escape($_POST[\'sortBy\']) : \'\';\n                $sortOrder = ($_POST[\'sortOrder\'] && !empty($_POST[\'sortOrder\'])) ? $modx->db->escape($_POST[\'sortOrder\']) : \'\';\n                $sortDisplay = ($_POST[\'sortDisplay\'] && !empty($_POST[\'sortDisplay\'])) ? $modx->db->escape($_POST[\'sortDisplay\']) : \'\';\n                if (!empty($sortBy)) {\n                    $_SESSION[\'sortBy\'] = $sortBy;\n                }\n                if (!empty($sortOrder)) {\n                    $_SESSION[\'sortOrder\'] = $sortOrder;\n                }\n                if (!empty($sortDisplay)) {\n                    $_SESSION[\'sortDisplay\'] = $sortDisplay;\n                }\n                $_SESSION[\'sortDocument\'] = $docid;\n                break;\n\n            default:\n                break;\n            \n        }\n    }\n    //срасываем установки сортировки при уходе на другую страницу\n    if (isset($_SESSION[\'sortDocument\']) && $_SESSION[\'sortDocument\'] != $docid) {\n        unset($_SESSION[\'sortDocument\']);\n        unset($_SESSION[\'sortOrder\']);\n        unset($_SESSION[\'sortBy\']);\n        unset($_SESSION[\'sortDisplay\']);\n    }\n    \n}\n', 0, '', 0, 'eFilters', 1730404150, 1731949342);

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_site_plugin_events`
--

CREATE TABLE `adkq_site_plugin_events` (
  `pluginid` int(11) NOT NULL,
  `evtid` int(11) NOT NULL DEFAULT 0,
  `priority` int(11) NOT NULL DEFAULT 0 COMMENT 'determines plugin run order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `adkq_site_plugin_events`
--

INSERT INTO `adkq_site_plugin_events` (`pluginid`, `evtid`, `priority`) VALUES
(1, 83, 0),
(2, 39, 0),
(2, 45, 0),
(2, 89, 0),
(2, 97, 0),
(2, 99, 0),
(2, 106, 0),
(2, 111, 0),
(2, 115, 0),
(3, 83, 1),
(4, 108, 0),
(5, 83, 2),
(5, 91, 0),
(5, 102, 0),
(6, 91, 1),
(6, 117, 0),
(6, 123, 0),
(6, 125, 0),
(6, 128, 0),
(7, 74, 0),
(10, 64, 0),
(10, 74, 1),
(10, 77, 0),
(10, 91, 2),
(10, 102, 1),
(10, 128, 1),
(10, 129, 0),
(12, 61, 0),
(12, 64, 1),
(12, 65, 0),
(12, 93, 0),
(12, 99, 1),
(12, 100, 0),
(12, 129, 1),
(14, 45, 1),
(14, 128, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_site_snippets`
--

CREATE TABLE `adkq_site_snippets` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Snippet',
  `editor_type` int(11) NOT NULL DEFAULT 0 COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT 0 COMMENT 'category id',
  `cache_type` int(11) NOT NULL DEFAULT 0 COMMENT 'Cache option',
  `snippet` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `properties` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Default Properties',
  `moduleguid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters',
  `createdon` int(11) NOT NULL DEFAULT 0,
  `editedon` int(11) NOT NULL DEFAULT 0,
  `disabled` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Disables the snippet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `adkq_site_snippets`
--

INSERT INTO `adkq_site_snippets` (`id`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `createdon`, `editedon`, `disabled`) VALUES
(1, 'DDocInfo', '<strong>1</strong> DDocInfo', 0, 2, 0, '$id = isset($id) ? (int)$id : $modx->documentObject[\'id\'];\n$field = isset($field) ? (string)$field : \'id\';\nif($field == \'id\'){\n    $out = $id;\n}else{\n    if($modx->documentObject[\'id\'] == $id){\n        $out = isset($modx->documentObject[$field]) ? $modx->documentObject[$field] : \'\';\n        if(is_array($out)){\n           $out = isset($out[1]) ? $out[1] : \'\';\n        }\n    }else{\n        $out = $modx->doc->edit($id)->get($field);\n    }\n}\nreturn (string)$out;', 0, '', '', 0, 0, 0),
(2, 'DLBeforeAfter', '<strong>1</strong> Navigation between post and upcoming events relative to the current date.', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLBeforeAfter.php\';', 0, '', '', 0, 0, 0),
(3, 'DLCrumbs', '<strong>1.2</strong> DLCrumbs', 0, 3, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLCrumbs.php\';\n', 0, '', '', 0, 0, 0),
(4, 'DLGlossary', '<strong>0.1</strong> Filtering documents by the first character', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLGlossary.php\';', 0, '', '', 0, 0, 0),
(5, 'DLMenu', '<strong>1.4.2</strong> Snippet to build menu with DocLister', 0, 3, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLMenu.php\';\n', 0, '', '', 0, 0, 0),
(6, 'DLPrevNext', '<strong>1.2</strong> DLPrevNext', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLPrevNext.php\';\n', 0, '', '', 0, 0, 0),
(7, 'DLReflect', '<strong>2</strong> Building a list of dates to filter documents', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLReflect.php\';', 0, '', '', 0, 0, 0),
(8, 'DLReflectFilter', '<strong>2</strong> Filtering documents by dates provided by DLReflect snippet', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLReflectFilter.php\';', 0, '', '', 0, 0, 0),
(9, 'DLSitemap', '<strong>1.0.2</strong> Snippet to build XML sitemap', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLSitemap.php\';\n', 0, '', '', 0, 0, 0),
(10, 'DLTemplate', '<strong>1</strong> DLTemplate', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLTemplate.php\';', 0, '', '', 0, 0, 0),
(11, 'DLValuelist', '<strong>1.1</strong> DLValuelist', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLValuelist.php\';', 0, '', '', 0, 0, 0),
(12, 'DocLister', '<strong>2.7.8</strong> Snippet to display the information of the tables by the description rules. The main goal - replacing Ditto and CatalogView', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DocLister.php\';\n', 0, '', '', 0, 0, 0),
(13, 'summary', '<strong>2.0.2</strong> Truncates the string to the specified length', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/summary/snippet.summary.php\';', 0, '', '', 0, 0, 0),
(14, 'FormLister', '<strong>1.21.1</strong> Form processor', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/FormLister/snippet.FormLister.php\';\n', 0, '', '', 0, 0, 0),
(15, 'Cart', '<strong>0.13.1</strong> Cart contents, DocLister based', 0, 5, 0, '\r\nif (defined(\'COMMERCE_INITIALIZED\')) {\r\n    $instance = isset($instance) ? $instance : \'products\';\r\n    $theme    = !empty($theme) ? $theme : \'\';\r\n     $cart     = ci()->carts->getCart($instance);\r\n    if (!is_null($cart)) {\r\n        return $modx->runSnippet(\'DocLister\', array_merge([\r\n            \'controller\'        => $modx->commerce->getSetting(\'cart_controller\'),\r\n            \'tpl\'               => \'@FILE:\' . $theme . \'cart_row\',\r\n            \'optionsTpl\'        => \'@FILE:\' . $theme . \'cart_row_options_row\',\r\n            \'ownerTPL\'          => \'@FILE:\' . $theme . \'cart_wrap\',\r\n            \'subtotalsRowTpl\'   => \'@FILE:\' . $theme . \'cart_subtotals_row\',\r\n            \'subtotalsTpl\'      => \'@FILE:\' . $theme . \'cart_subtotals\',\r\n            \'noneTPL\'           => \'@FILE:\' . $theme . \'cart_empty\',\r\n            \'langDir\'           => \'assets/plugins/commerce/lang/\',\r\n            \'customLang\'        => \'cart\',\r\n            \'noneWrapOuter\'     => 0,\r\n        ], $params, [\r\n            \'idType\'     => \'documents\',\r\n            \'documents\'  => array_column($cart->getItems(), \'id\'),\r\n            \'instance\'   => $instance,\r\n            \'hash\'       => ci()->commerce->storeParams($params),\r\n            \'cart\'       => $cart,\r\n            \'tree\'       => 0,\r\n        ]));\r\n    }\r\n}', 0, '', '', 0, 1728805872, 0),
(16, 'Comparison', '<strong>0.13.1</strong> Comparison snippet, DocLister based', 0, 5, 0, '/**\n * [!Comparison\n *      &showCategories=`1`\n *      &tvCategory=`10`\n *      &excludeTV=`category`\n *      &includeTV=`best`\n *      &checkBoundingList=`0`\n *      &categoryItemClass=`btn-secondary`\n *      &categoryActiveClass=`btn-primary`\n * !]\n */\n\nif (!defined(\'COMMERCE_INITIALIZED\')) {\n    return;\n}\n\nif (isset($ids)) {\n    if (!is_array($ids)) {\n        $ids = array_map(\'trim\', explode(\',\', $ids));\n    }\n    $items = $ids;\n} else {\n    $items = array_map(function($item) {\n        return $item[\'id\'];\n    }, ci()->carts->getCart(\'comparison\')->getItems());\n}\n\n$showCategories = isset($params[\'showCategories\']) ? $params[\'showCategories\'] : 1;\n$categories = \'\';\n\nif (!empty($items) && $showCategories) {\n    $table   = $modx->getFullTablename(\'site_content\');\n    $parents = $modx->db->getColumn(\'parent\', $modx->db->select(\'parent\', $table, \"`id` IN (\" . implode(\',\', $items) . \")\"));\n    $parents = array_unique($parents);\n\n    $categoryParams = [];\n\n    foreach ($params as $key => $value) {\n        if (strpos($key, \'category\') === 0) {\n            unset($params[$key]);\n            $key = preg_replace(\'/^category/\', \'\', $key);\n            $key = lcfirst($key);\n            $categoryParams[$key] = $value;\n        }\n    }\n\n    if (isset($_GET[\'category\']) && is_scalar($_GET[\'category\']) && in_array($_GET[\'category\'], $parents)) {\n        $currentCategory = $_GET[\'category\'];\n    }\n\n    if (empty($currentCategory)) {\n        $currentCategory = reset($parents);\n    }\n\n    if (count($parents) > 1) {\n        $categoryParams = array_merge([\n            \'tpl\'               => \'@FILE:comparison_category\',\n            \'ownerTPL\'          => \'@FILE:comparison_categories\',\n            \'itemClass\'         => \'btn-secondary\',\n            \'activeClass\'       => \'btn-primary\',\n            \'prepare\'           => function($data, $modx, $DL, $eDL) {\n                $data[\'class\'] = $DL->getCFGDef(\'currentId\') == $data[\'id\'] ? $DL->getCFGDef(\'activeClass\') : $DL->getCFGDef(\'itemClass\');\n                return $data;\n            },\n        ], $categoryParams, [\n            \'controller\' => \'CustomLang\',\n            \'dir\'        => \'assets/plugins/commerce/src/Controllers/\',\n            \'currentId\'  => $currentCategory,\n            \'idType\'     => \'documents\',\n            \'documents\'  => $parents,\n            \'sortType\'   => \'doclist\',\n        ]);\n\n        $categories = $modx->runSnippet(\'DocLister\', $categoryParams);\n    }\n\n    $ids = $modx->db->getColumn(\'id\', $modx->db->select(\'id\', $table, \"`parent` = \'$currentCategory\' AND `id` IN (\'\" . implode(\"\',\'\", array_unique($items)) . \"\')\"));\n} else {\n    $ids = array_values(array_unique($items));\n    $currentCategory = 0;\n}\n\n$params = array_merge([\n    \'ownerTPL\'          => \'@FILE:comparison_table\',\n    \'headerTpl\'         => \'@FILE:comparison_table_header_cell\',\n    \'footerTpl\'         => \'@FILE:comparison_table_footer_cell\',\n    \'keyTpl\'            => \'@FILE:comparison_table_key_cell\',\n    \'valueTpl\'          => \'@FILE:comparison_table_value_cell\',\n    \'rowTpl\'            => \'@FILE:comparison_table_row\',\n    \'customLang\'        => \'common,cart\',\n], $params, [\n    \'controller\' => \'Comparison\',\n    \'dir\'        => \'assets/plugins/commerce/src/Controllers/\',\n    \'idType\'     => \'documents\',\n    \'sortType\'   => \'doclist\',\n    \'documents\'  => $ids,\n    \'category\'   => $currentCategory,\n    \'rows\'       => array_flip($items),\n]);\n\n$docs = $modx->runSnippet(\'DocLister\', $params);\nreturn $categories . $docs;\n', 0, '', '', 0, 1728759352, 0),
(17, 'CurrencySelect', '<strong>0.13.1</strong> Shows currency select', 0, 5, 0, 'if (defined(\'COMMERCE_INITIALIZED\')) {\n    $tpl = ci()->tpl;\n\n    $params = array_merge([\n        \'templatePath\'      => \'assets/plugins/commerce/templates/front/\',\n        \'templateExtension\' => \'tpl\',\n        \'tpl\'               => \'@FILE:currency_select_row\',\n        \'activeTpl\'         => \'@FILE:currency_select_active_row\',\n        \'outerTpl\'          => \'@FILE:currency_select_wrap\',\n    ], $params);\n\n    $currency = ci()->currency;\n    $rows     = $currency->getCurrencies();\n    $active   = $currency->getCurrencyCode();\n\n    $out = \'\';\n\n    $tpl->setTemplatePath($params[\'templatePath\']);\n    $tpl->setTemplateExtension($params[\'templateExtension\']);\n\n    foreach ($rows as $row) {\n        $chunk = $row[\'code\'] == $active ? $params[\'activeTpl\'] : $params[\'tpl\'];\n        $out  .= $tpl->parseChunk($chunk, $row);\n    }\n\n    return $tpl->parseChunk($params[\'outerTpl\'], [\'wrap\' => $out]);\n}\n', 0, '', '', 0, 1728759352, 0),
(18, 'Order', '<strong>0.13.1</strong> Order form, FormLister based', 0, 5, 0, 'if (defined(\'COMMERCE_INITIALIZED\')) {\n    $commerce    = ci()->commerce;\n    $userLang    = $commerce->getUserLanguage(\'order\');\n    $adminLang   = $commerce->getUserLanguage(\'order\', true);\n    $theme       = !empty($theme) ? $theme : \'\';\n    $storeParams = !empty($storeParams) ? $storeParams : 1;\n\n    $params = array_merge([\n        \'controller\'            => \'Order\',\n        \'dir\'                   => \'assets/plugins/commerce/src/Controllers/\',\n        \'formid\'                => \'order\',\n        \'parseDocumentSource\'   => 1,\n        \'langDir\'               => \'assets/plugins/commerce/lang/\',\n        \'lexicon\'               => \'common,delivery,payments,order\',\n        \'formTpl\'               => \'@FILE:\' . $theme . \'order_form\',\n        \'deliveryTpl\'           => \'@FILE:\' . $theme . \'order_form_delivery\',\n        \'deliveryRowTpl\'        => \'@FILE:\' . $theme . \'order_form_delivery_row\',\n        \'paymentsTpl\'           => \'@FILE:\' . $theme . \'order_form_payments\',\n        \'paymentsRowTpl\'        => \'@FILE:\' . $theme . \'order_form_payments_row\',\n        \'reportTpl\'             => $commerce->getUserLanguageTemplate(\'order_report\', true),\n        \'to\'                    => $commerce->getSetting(\'email\', $modx->getConfig(\'emailsender\')),\n        \'ccSender\'              => \'1\',\n        \'ccSenderField\'         => \'email\',\n        \'ccSenderTpl\'           => $commerce->getUserLanguageTemplate(\'order_reportback\'),\n        \'subjectTpl\'            => $adminLang[\'order.subject\'],\n        \'ccSubjectTpl\'          => $adminLang[\'order.subject\'],\n        \'successTpl\'            => $userLang[\'order.success\'],\n        \'rules\'                 => [\n            \'name\' => [\n                \'required\' => $userLang[\'order.error.name_required\'],\n            ],\n            \'email\' => [\n                \'required\' => $userLang[\'order.error.email_required\'],\n                \'email\'    => $userLang[\'order.error.email_incorrect\'],\n            ],\n            \'phone\' => [\n                \'required\' => $userLang[\'order.error.phone_required\'],\n            ],\n        ],\n    ], $params);\n\n    $params[\'form_hash\'] = $storeParams ? $commerce->storeParams($params) : \'\';\n\n    return $modx->runSnippet(\'FormLister\', $params);\n}\n', 0, '', '', 0, 1728759352, 0),
(19, 'PriceConvert', '<strong>0.13.1</strong> Convert price using predefined settings', 0, 5, 0, 'if (empty($modx->commerce) && !defined(\'COMMERCE_INITIALIZED\')) {\n    return $params[\'price\'];\n}\n\n$currency = ci()->currency;\nreturn $currency->convertFromDefault($params[\'price\'], !empty($params[\'currency\']) ? $params[\'currency\'] : null);\n', 0, '', '', 0, 1728759352, 0),
(20, 'PriceFormat', '<strong>0.13.1</strong> Format price using predefined settings', 0, 5, 0, 'if (defined(\'COMMERCE_INITIALIZED\')) {\n    $currency = ci()->currency;\n\n    $params = array_merge([\n        \'price\'   => 0,\n        \'convert\' => 1,\n    ], $params);\n\n    if ($params[\'convert\']) {\n        $params[\'price\'] = $currency->convertToActive($params[\'price\']);\n    }\n\n    return $currency->format($params[\'price\']);\n}\n\nreturn array_shift($params);\n', 0, '', '', 0, 1728759352, 0),
(21, 'Wishlist', '<strong>0.13.1</strong> Wishlist contents, DocLister based', 0, 5, 0, 'if (defined(\'COMMERCE_INITIALIZED\')) {\n    return $modx->runSnippet(\'Cart\', array_merge([\n        \'controller\'        => \'Wishlist\',\n        \'instance\'          => \'wishlist\',\n        \'tpl\'               => \'@FILE:wishlist_row\',\n        \'ownerTPL\'          => \'@FILE:wishlist_wrap\',\n        \'customLang\'        => \'common,cart\',\n    ], $params));\n}\n', 0, '', '', 0, 1728759352, 0),
(23, 'editDocsPrepareExample', '<strong>0.1</strong> Пример-заготовка Prepare-сниппета для модуля editDocs', 0, 6, 0, '//Не используйте данный сниппет как боевой, скопируйте как новый и пропишите его в настройках, иначе при обновление данный сниппет перезапишется на дефолтный example! \n\n$process = isset($process) ? $process : \'\';\n$mode = isset($mode) ? $mode : \'\';\n$total = $_SESSION[\'import_total\']-2; //последняя итерация\n\nswitch ($process) {\n    case \'import\':\n        //обработчик импорта\n\n        //первая итерация\n		//if ($iteration == 1) { }\n\n		//последняя итерация\n		//if ($iteration == $total) { }\n\n        switch ($mode) {\n            case \'upd\':\n                //обновляем ресурс\n                //$data[\'pagetitle\'] = \'import upd \' .  $data[\'pagetitle\'];\n                break;\n            case \'new\':\n                //добавляем новый ресурс\n                //$data[\'pagetitle\'] = \'import new \' .  $data[\'pagetitle\'];\n                break;\n            default:\n                break;\n        }\n        break;\n    case \'export\':\n        //обработчик экспорта\n        //$data[\'pagetitle\'] = \'export \' .  $data[\'pagetitle\'];\n        break;\n    default:\n        break;\n}\nreturn $data;', 0, '', '', 0, 1732269747, 0),
(24, 'phpthumb', '<strong>1.4.5</strong> PHPThumb creates thumbnails and altered images on the fly and caches them', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/phpthumb/snippet.phpthumb.php\';\n', 0, '', '', 0, 0, 0),
(25, 'multiTV', '<strong>2.0.16</strong> Custom Template Variabe containing a sortable multi item list or a datatable', 0, 2, 0, 'return require MODX_BASE_PATH . \'assets/tvs/multitv/multitv.snippet.php\';\n', 0, '', '', 0, 0, 0),
(26, 'eFilter', '<strong>0.1</strong> Вывод фильтра', 0, 10, 0, '//импортировать общие параметры из модуля eLists\n \n //устанавливает нужные плейсхолдеры для вывода формы и результатов поиска\n //вызов [!eFilter!]\n //в результате формируется плейсхолдер [+eFilter_form+] для показа формы поиска\n //а также [+eFilter_ids+] - список подходящих id для вставки в DocLister и ряд других\n //\n // дополнительные параметры вызова\n // &removeDisabled=`1` - удалять варианты с нулевым результатом из списка возможных (по умолчанию - 0 - варианты в списке остаются с атрибутом disabled)\n // &ajax=`1` - режим ajax - подгрузка формы и результатов поиска после сабмита формы поиска без перезагрузки страницы (по умолчанию - отключен)\n //\n //это центральный сниппет для фильтрации\n //работает совместно с DocLister, multiTV и DocInfo - они должны быть установлены\n\nrequire MODX_BASE_PATH . \'assets/snippets/eFilter/snippet.eFilter.php\';\n', 0, '', 'eFilters', 0, 1731949342, 0),
(27, 'eFilterResult', '<strong>0.1</strong> Вывод отфильтрованных товаров', 0, 10, 0, '//импортировать общие параметры из модуля eLists\n //использует для работы сниппет DocLister и выводит список товаров, при этом заменяя плейсхолдер [+params+] на список параметров товара, отмеченных для вывода в список\n //использует общие параметры из модуля eLists, также параметры $paramRow и $paramOuter для вывода параметров товара\n //доп.информация черпается из плейсхолдеров, установленных сниппетом [!eFilter!] который должен вызываться раньше\n //пример вызова [!eFilterResult? &tpl=`tovarDL` &addWhereList=`c.template=9` &parents=`[*id*]` &depth=`3` &paginate=`pages` &display=`15` &tvList=`image,price`!] [+pages+]\n //все параметры аналогичны параметрам вызова DocLister + доп.параметры $paramRow и $paramOuter для вывода параметров товара\n\n \n//получаем из плейсхолдера список документов для documents\n$ids = $modx->getPlaceholder(\'eFilter_ids\');\n\n//фиксим DocLister - при пустом списке documents и пустом фильтре - отдавать все\n//при пустом списке documents и НЕ пустом фильтре - ничего не отдавать\nif(empty($ids) && (isset($_GET))) {\n    $ids = $modx->config[\'site_start\'];\n    $f = $_GET;\n    foreach($f as $k => $val){\n        if (preg_match(\"/^f(\\d+)/i\", $k, $matches)) {\n            if ($val != \'0\' && $val != \'\') {$ids = \'4294967295\';}\n        }\n    }\n    if ($ids == $modx->config[\'site_start\']) {$ids = \'\';}    \n}\nif(empty($ids) && (isset($_GET[\'f\']))) {\n    $ids = $modx->config[\'site_start\'];\n    $f = $_GET[\'f\'];\n    foreach($f as $k=>$v){\n        foreach ($v as $val) {\n            if ($val != \'0\' && $val != \'\') {$ids = \'4294967295\';}\n        }\n    }\n    if ($ids == $modx->config[\'site_start\']) {$ids = \'\';}    \n}\n\n//получаем из плейсхолдера список ТВ для вывода в список\n$tv_list = $modx->getPlaceholder(\'eFilter_tv_list\') ?: [];\n//..и их имена из кэпшн\n$tv_names = $modx->getPlaceholder(\'eFilter_tv_names\') ?: [];\n\n// удаляеи из списка общие исключенные ТВ (в настройках модуля) -\n// (например цена и т.п., которая выводится отдельно и есть у всех\nif (isset($exclude_tvs_from_list) && $exclude_tvs_from_list != \'\') {\n    $exclude_tvs = explode(\',\', $exclude_tvs_from_list);\n    foreach($exclude_tvs as $k => $v){\n        if (isset($tv_names[$v])) {\n            unset($tv_names[$v]);\n        }\n        if (isset($tv_list[$v])) {\n            unset($tv_list[$v]);\n        }\n    }\n}\n///////\n\n\n\n//заменяем плейсхолдер [+params+] в чанке вывода товаров \n//на нужный вывод параметров товаров\n//шаблоны вывода параметра в списке по умолчанию\n$paramRow = isset($paramRow) ? $paramRow : \'<div class=\"eFilter_list_param eFilter_list_param[+param_id+]\"><span class=\"eFilter_list_title\">[+param_title+]: </span><span class=\"eFilter_list_value eFilter_list_value[+param_id+]\">[+param_value+]</span></div>\';\n$paramOuter = isset($paramOuter) ? $paramOuter : \'<div class=\"eFilter_list_params\">[+wrapper+]</div>\';\n\n\n$tovar_params_tpl = \'\';\nforeach($tv_names as $tv_id=>$tv_name) {\n    $param_value = \'[+tv.\' . $tv_list[$tv_id] . \'+]\';\n    $tovar_params_tpl .= str_replace(\n        array(\'[+param_title+]\', \'[+param_value+]\', \'[+param_id+]\'),\n        array($tv_name, $param_value, $tv_id),\n        $paramRow\n    );\n}\n\n$tovar_params_wrapper = str_replace(\n    array(\'[+wrapper+]\'),\n    array($tovar_params_tpl),\n    $paramOuter\n);\n\n$tovarChunkName = $params[\'tpl\'] ?? ($tovarChunkName ?? \'\');\nif(!empty($tovarChunkName)) {\n	$tovarChunk = $modx->getChunk($tovarChunkName);\n	$tovarChunk = \'@CODE:\' . str_replace(\'[+params+]\', $tovar_params_wrapper, $tovarChunk);\n} else {\n	$tovarChunk = \'@CODE:[+pagetitle+]\';\n}\n$params[\'tpl\'] = $tovarChunk;\n///////конец замены чанка вывода товаров\n\n\n$out = \'\';\n$pid = isset($pid) ? $pid : $modx->documentIdentifier;\n$params[\'ownerTPL\'] = isset($ownerTPL) ? $ownerTPL :\'@CODE: <div id=\"eFiltr_results_wrapper\"><div class=\"eFiltr_loader\"></div><div id=\"eFiltr_results\">[+dl.wrap+][+pages+]</div></div>\';\n\n//параметры сортировки и вывода из сессии\n$docid = isset($docid) ? (int)$docid : $modx->documentIdentifier;\n$display = isset($_SESSION[\'sortDisplay\']) ? $modx->db->escape($_SESSION[\'sortDisplay\']) : ($params[\'display\'] ?? 12);\n$sortBy = isset($_SESSION[\'sortBy\']) ? $modx->db->escape($_SESSION[\'sortBy\']) : ($params[\'sortBy\'] ?? \'menuindex\');\n$sortOrder = isset($_SESSION[\'sortOrder\']) ? $modx->db->escape($_SESSION[\'sortOrder\']) : ($params[\'sortOrder\'] ?? \'DESC\');\n$params[\'orderBy\'] = (!empty($params[\'orderByBefore\']) ? $params[\'orderByBefore\'] : \'\') . $sortBy . \' \' . $sortOrder . (!empty($params[\'orderByAfter\']) ? $params[\'orderByAfter\'] : \'\');\nunset($params[\'sortBy\']);\nunset($params[\'sortOrder\']);\n$params[\'display\'] = $display;\nif ($display == \'all\') unset($params[\'display\']);\n\nif (!empty($ids)) {\n    $params[\'documents\'] = $ids;\n    unset($params[\'parents\']);\n    unset($params[\'depth\']);\n} else {\n    $params[\'parents\'] = $pid;\n}\n$params[\'addWhereList\'] = \'c.template IN(\' . $product_templates_id . \')\';\nif (!empty($tv_list)) {\n    $params[\'tvList\'] = $params[\'tvList\'] == \'\' ? implode(\',\', $tv_list) : $params[\'tvList\'] . \',\' . implode(\',\', $tv_list);\n	if(!empty($params[\'renderTV\'])) {\n		$params[\'renderTV\'] .= \',\' . implode(\',\', $tv_list);\n	} else {\n		$params[\'renderTV\'] = implode(\',\', $tv_list);\n	}\n}\n$params[\'tvSortType\'] = !empty($params[\'tvSortType\']) ? $params[\'tvSortType\'] : \'UNSIGNED\';\nif (!empty($params)) {\n    $out .= $modx->runSnippet(\"DocLister\", $params);\n}\n//Найдено [+count+], показано с [+eFRes_from+] по [+eFRes_to+]\n$DL_id = isset($params[\'id\']) && !empty($params[\'id\']) ? $params[\'id\'] . \'.\' : \'\';\nif (!isset($count) || $count == \'0\') { \n    $from = $to = 0;\n} else {\n    $display = $modx->getPlaceholder($DL_id . \'display\');\n    $current = $modx->getPlaceholder($DL_id . \'current\');\n    $from = ($current - 1) * $params[\'display\'] + 1;\n    $to = $from - 1 + $display;\n}\n$modx->setPlaceholder(\"eFRes_from\", $from);\n$modx->setPlaceholder(\"eFRes_to\", $to);\n\nreturn $out;', 0, '', 'eFilters', 0, 1731949342, 0),
(28, 'getSortBlock', '<strong>0.1</strong> Формируем блок сортировки в каталог', 0, 10, 0, '// вызываем в нужном месте getSortBlock\n // требует подключенного к странице jquery версии не ниже 1.9\n // дополнительные параметры (опционально)\n // &sortBy - по умолчанию menuindex (может быть как поле из site_content, так и любое ТВ, которое выводится в списке через DocLister и, соответветственно указано в его параметре tvList\n // &sortOrder - ASC | DESC (по умолчанию DESC)\n // &config_sort - конфиг параметров сортировки (первая часть до || - заголовок, остальные - варианты. Может быть как поле site_content , так и приемлемый для DocLister TV). По умолчанию - Сортировать по:||pagetitle==Названию||price==Цене (по названию и цене)\n // &config_display - настройка селекта \"показывать по\". По умолчанию - Показывать по:||==--не выбрано--||10||20||30||40||all\n // &sortRow\n // &sortOuter\n // &displayRow\n // &displayOuter\n // &classActiveName\n // &classUpName\n // &classDownName\n // &classSelectedName\n \n$param = $modx->event->params;\n \n$sortBy = isset($_SESSION[\'sortBy\']) ? $_SESSION[\'sortBy\'] : (isset($param[\'sortBy\']) ? $param[\'sortBy\'] : \'menuindex\');\n$sortOrder = isset($_SESSION[\'sortOrder\']) ? $_SESSION[\'sortOrder\'] : (isset($param[\'sortOrder\']) ? $param[\'sortOrder\'] : \'DESC\');\n$sortDisplay = isset($_SESSION[\'sortDisplay\']) ? $_SESSION[\'sortDisplay\'] : (isset($param[\'display\']) ? $param[\'display\'] : \'12\');\n$config_sort = isset($param[\'config_sort\']) ? $param[\'config_sort\'] : \'Сортировать по:||pagetitle==Названию||price==Цене\';\n$config_display = isset($param[\'config_display\']) ? $param[\'config_display\'] : \'Показывать по:||==--не выбрано--||10||20||30||40||all==все\';\n$sortRow = isset($param[\'sortRow\']) ? $param[\'sortRow\'] : \'<a href=\"#\" class=\"sorter sort_vid sort_pic [+classActive+] [+classUpDown+]\" data-sort-by=\"[+sortBy+]\" data-sort-order=\"[+sortOrder+]\">[+title+]</a>\';\n$sortOuter = isset($param[\'sortOuter\']) ? $param[\'sortOuter\'] : \'<div class=\"eFilter_sort_block\"><span class=\"eFilter_sort_title\">[+title+]</span><span class=\"eFilter_sort_options\">[+rows+]</span></div>\';\n$displayRow = isset($param[\'displayRow\']) ? $param[\'displayRow\'] : \'<option value=\"[+value+]\" [+selected+]>[+title+]</option>\';\n$displayOuter = isset($param[\'displayOuter\']) ? $param[\'displayOuter\'] : \'\n    <div class=\"eFilter_display_block\">\n        <span class=\"eFilter_display_title\">[+title+]</span>\n        <span class=\"eFilter_display_options\"><select name=\"sortDisplay\" class=\"eFilter_display_select\">[+rows+]</select></span>\n    </div>\';\n$classActiveName = isset($param[\'classActiveName\']) ? $param[\'classActiveName\'] : \'active\';\n$classUpName = isset($param[\'classUpName\']) ? $param[\'classUpName\'] : \'up\';\n$classDownName = isset($param[\'classDownName\']) ? $param[\'classDownName\'] : \'down\';\n$classSelectedName = isset($param[\'classSelectedName\']) ? $param[\'classSelectedName\'] : \'selected\';\n$action_uri = $_SERVER[\'REQUEST_URI\'];\n$jsFileName = isset($jsFileName) && !empty($jsFileName) ? $jsFileName : \'eFSortBlock\';\n\n//разбираем конфиг\n$cfg = array();\n$tmp = explode(\"||\", $config_sort);\nforeach ($tmp as $k => $v) {\n    if ($k == \'0\') {\n        $cfg[\'sort\'][\'title\'] = $v;\n    } else {\n        $_tmp = explode(\"==\", $v);\n        $cfg[\'sort\'][\'values\'][$_tmp[0]] = (isset($_tmp[1]) && !empty($_tmp[1])) ? $_tmp[1] : $_tmp[0];\n    }\n}\n$tmp = explode(\"||\", $config_display);\nforeach ($tmp as $k => $v) {\n    if ($k == \'0\') {\n        $cfg[\'display\'][\'title\'] = $v;\n    } else {\n        $_tmp = explode(\"==\", $v);\n        $cfg[\'display\'][\'values\'][$_tmp[0]] = (isset($_tmp[1]) && !empty($_tmp[1])) ? $_tmp[1] : $_tmp[0];\n    }\n}\n\n\n$out = \'\';\n\n//блок сортировки\n$sortBlock = \'\';\n$sortRows = \'\';\nforeach ($cfg[\'sort\'][\'values\'] as $k => $v) {\n    $classActive = $sortBy == $k ? \' \' . $classActiveName . \' \' : \'\';\n    $classUpDown = !empty($classActive) ? (($sortOrder == \'ASC\' ? \' \' . $classUpName. \' \' : \' \' . $classDownName. \' \')) : \'\';\n    $sortOrderDirection = $sortOrder == \'ASC\' ? \'DESC\' : \'ASC\';\n    $sortRows .= str_replace(\n        array(\'[+classActive+]\', \'[+classUpDown+]\', \'[+sortBy+]\', \'[+sortOrder+]\', \'[+title+]\'),\n        array($classActive, $classUpDown, $k, $sortOrderDirection, $v),\n        $sortRow\n    );\n}\n$sortBlock .= str_replace(\n    array(\'[+title+]\', \'[+rows+]\'),\n    array($cfg[\'sort\'][\'title\'], $sortRows),\n    $sortOuter\n);\n\n//блок \"показать по\"\n$displayBlock = \'\';\n$displayRows = \'\';\nforeach ($cfg[\'display\'][\'values\'] as $k => $v) {\n    $selected = $sortDisplay == $k ? \' \' . $classSelectedName : \'\';\n    $displayRows .= str_replace(\n        array(\'[+value+]\', \'[+selected+]\', \'[+title+]\'),\n        array($k, $selected, $v),\n        $displayRow\n    );\n}\n$displayBlock .= str_replace(\n    array(\'[+title+]\', \'[+rows+]\'),\n    array($cfg[\'display\'][\'title\'], $displayRows),\n    $displayOuter\n);\n\n\n//итоговая форма\n$out .= <<<HTML\n<div id=\"eFilter_sort_block\">\n    <form action=\"{$action_uri}\" method=\"post\" id=\"changesortBy\">\n        {$sortBlock}\n        {$displayBlock}\n        <input type=\"hidden\" name=\"action\" value=\"changesortBy\">\n        <input type=\"hidden\" name=\"sortBy\" value=\"{$sortBy}\">\n        <input type=\"hidden\" name=\"sortOrder\" value=\"{$sortOrder}\">\n    </form>\n</div>\nHTML;\n$modx->regClientScript(\"assets/snippets/eFilter/html/js/\" . $jsFileName . \".js\");\nreturn $out;\n', 0, '', '', 0, 1731949342, 0),
(29, 'multiParams', '<strong>0.1</strong> Параметры товара для категории', 0, 10, 0, '//импортировать общие параметры из модуля eLists\n \n //служебный сниппет для формирования возможных значений из списков из модуля, дерева либо нужных категорий TV\n\n // использование\n // если вы храните списки возможных значений в модуле eLists, то просто скопируйте соответствующую строку в поле \"возможные значения\" нужного TV \n // (тип выставляете который требуется - селект, чекбоксы, радио и т.п.)\n // @EVAL return $modx->runSnippet(\"multiParams\", array(\"parent\"=>\"2\")); - выглядит это примерно так в модуле\n // где 2 - это id родителя нужного списка в отдельной таблице (он формируется автоматом)\n // \n // если вам не нужно первое пустое значение в tv (например, у вас тип ввода - чекбокс- вызывайте multiParams с дополнительным параметром \"firstEmpty\" => \"0\"\n //\n // если же вы предпочитаете хранить списки возможных значений TV в дереве, то добавляйте к вызову в поле \"возможные значения\" дополнительный параметр \'action\'=>\'getParamsFromTree\'\n // т.е. итоговый вызов в поле \"возможные значения\" для TV будет выглядеть так\n // @EVAL return $modx->runSnippet(\"multiParams\", array(\"parent\"=>\"25\", \"action\"=>\"getParamsFromTree\"));\n // где 25 - это id ресурса-родителя нужного списка в дереве, его подставляем самостоятельно\n // \n // @EVAL return $modx->runSnippet(\"multiParams\", array(\"field\"=>\"template\", \"value\"=>\"15\", \"action\"=>\"getParamsFromTree\"));\n // позволяет в выпадающий список вывести все ресурсы с template=15 (для фильтрации можно использовать любое поле из таблицы site_content\n //\n // @EVAL return $modx->runSnippet(\"multiParams\", array(\"field\"=>\"description\",\"value\"=>\"58\", \"action\"=>\"getParamsFromTree\", \"order\" => \"menuindex ASC\", \"firstEmpty\" => \"0\"));\n // выбираем в выпадающий список все ресурсы у которых в поле description значение 58, сортируем по menuindex с возрастанием, первый пустой не показываем (важно для вывода в виде чекбоксов)\n // сортировка по умолчанию - сначала по pagetitle по возрастанию, потом по menuindex по возрастанию\n //\n \n$out = \'\';\n$firstEmpty = isset($firstEmpty) && (int)$firstEmpty == 0 ? false : true;\n$order = $order ?? \"pagetitle ASC, menuindex ASC\";\nif ($firstEmpty) {\n    $out .= \'||\';\n}\nswitch ($action ?? \'\'){\n    case \'getParamsToMultiTV\' :\n        $tmp = array_merge(array_map(\'trim\', explode(\',\', $param_cat_id)), array_map(\'trim\', explode(\',\', $param_cat_id_common)));\n        $tmp = array_diff($tmp, array(\'\'));\n        $sql = \"SELECT `id`,`caption` FROM \" . $modx->getFullTableName(\'site_tmplvars\') . \" WHERE `category` IN (\" . implode(\',\', $tmp) . \") ORDER BY `rank` ASC, `caption` ASC\";\n        $q = $modx->db->query($sql);\n        while($row = $modx->db->getRow($q)){\n            $out .= $row[\'caption\'] . \'==\' . $row[\'id\'] . \'||\';\n        }\n        break;\n    \n    case \'getParamsFromTree\' :\n        if (isset($field) && isset($value)) {\n            $sql = \"SELECT pagetitle, id FROM \" . $modx->getFullTableName(\'site_content\') . \" WHERE `\" . $field . \"`=\'\" . $value . \"\' ORDER BY \" . $order;\n        } else {\n            $sql = \"SELECT pagetitle, id FROM \" . $modx->getFullTableName(\'site_content\') . \" WHERE parent IN(\" . $parent . \") ORDER BY \" . $order;\n        }\n        $q = $modx->db->query($sql);\n        while ($row = $modx->db->getRow($q)) {\n            //в выпадающем списке админки показываем вместе с id ресурса\n            $out .= $row[\'pagetitle\'] . (strpos($_SERVER[\'REQUEST_URI\'], MGR_DIR) !== FALSE ? \' (\' . $row[\'id\'] . \')\' : \'\') . \'==\' . $row[\'id\'] . \'||\';\n        }\n        break;\n\n    case \'showParamsFromTree\':\n        $ids = $params[\'ids\'] ?? \'\';\n        $no_href = isset($nohref) ? true : false;\n        $arr = [];\n        if ($ids != \'\') {\n            $ids = str_replace(\'||\', \',\', $ids);\n            $q = $modx->db->query(\"SELECT id,pagetitle FROM \" . $modx->getFullTableName(\"site_content\") . \" WHERE id IN (\" . $ids . \") AND published=1 AND deleted=0\");\n            while ($row = $modx->db->getRow($q)) {\n                if (!$no_href) {\n                    $arr[] = \'<a href=\"\' . $modx->makeUrl($row[\'id\']) . \'\">\' . $row[\'pagetitle\'] . \'</a>\';\n                } else {\n                    $arr[] = $row[\'pagetitle\'];\n                }\n            }\n        }\n        $out = implode(\', \', $arr) . \'  \';\n        break;\n    \n    default:\n        $sql = \"SELECT title, id FROM \" . $modx->getFullTableName(\'list_value_table\') . \" WHERE parent={$parent} ORDER BY sort ASC, title ASC\";\n        $q = $modx->db->query($sql);\n        while ($row = $modx->db->getRow($q)) {\n            $out .= $row[\'title\'] . \'||\';\n        }\n        break;\n}\n$out = substr($out, 0, -2);\nreturn $out;\n', 0, '', 'eFilters', 0, 1731949342, 0),
(30, 'tovarParams', '<strong>0.1</strong> Параметры товара в шаблон товара', 0, 10, 0, '// импортировать общие параметры из модуля eLists\n// предназначен для вывода параметров товара в нужном месте шаблона товара\n// пример вызова [[tovarParams]] - в нужном месте шаблона \"Товар\"\n// доп.параметры - большинство импортируется из модуля, для вывода списка параметров $paramRow и $paramOuter\n\n\n//массив id тв, разрешенных для данного типа товаров в конфиге родителя\n$allowedParams = array();\n\n//заменяем плейсхолдер [+params+] в чанке вывода товаров \n//на нужный вывод параметров товаров\n//шаблоны вывода параметра в списке по умолчанию\n$paramRow = isset($paramRow) ? $paramRow : \'<div class=\"eFilter_list_param eFilter_list_param[+param_id+]\"><span class=\"eFilter_list_title\">[+param_title+]: </span><span class=\"eFilter_list_value eFilter_list_value[+param_id+]\">[+param_value+]</span></div>\';\n$paramOuter = isset($paramOuter) ? $paramOuter : \'<div class=\"eFilter_item_params\">[+wrapper+]</div>\';\n\n$out = \'\';\n$tovar_params_tpl = \'\';\n\ninclude_once(MODX_BASE_PATH . \'assets/snippets/eFilter/eFilter.class.php\');\n$eFltr = new eFilter($modx, $params);\n$eFltr->docid = $modx->documentObject[\'parent\'];\n\n\n//получаем общий список тв-параметров из категорий \"параметры для товара\" - $param_cat_id\n$tv_list = array();\n$sql = \"SELECT a.`id`,a.`name`,a.`caption`,a.`elements` FROM \" . $modx->getFullTableName(\'site_tmplvars\') . \" as a, \" . $modx->getFullTableName(\'site_tmplvar_templates\') . \" as b WHERE a.`category` IN (\" . $param_cat_id . \") AND `a`.`id` = `b`.`tmplvarid` AND `b`.`templateid` IN(\" . $params[\'product_templates_id\'] . \")  ORDER BY b.`rank` ASC, a.`caption` ASC\";\n\n$q = $modx->db->query($sql);\nwhile($row = $modx->db->getRow($q)){\n    if (!isset($tv_list[$row[\'id\']])) {\n        $tv_list[$row[\'id\']][\'name\'] = $row[\'name\'];\n        $tv_list[$row[\'id\']][\'caption\'] = $row[\'caption\'];\n        $tv_list[$row[\'id\']][\'elements\'] = $row[\'elements\'];\n    }\n}\n\n//находим разрешенные для данного товара параметры\n//сначала ищем в родителе\n$allowedParams = array();\n$doc = $modx->documentIdentifier;\n$allowedTmp = $eFltr->getFilterParam ($eFltr->param_tv_name);\n\n//если тут пусто, проверим первую тегованную категорию из параметра tv_category_tag\nif (isset($tv_category_tag) && $tv_category_tag != \'\' && empty($allowedTmp)) {\n    $q = $modx->db->getValue(\"SELECT value FROM \" . $modx->getFullTableName(\'site_tmplvar_contentvalues\') . \" WHERE tmplvarid={$tv_category_tag} AND contentid=\" . $modx->documentIdentifier);\n    if ($q) {\n        $cats = explode(\',\', $q);\n        if (isset($cats[0]) && (int)$cats[0] > 0) {\n            $allowedTmp = $eFltr->getFilterParam ( $eFltr->param_tv_name, (int)$cats[0]);\n        }\n    }\n}\n\n//итоговый массив разрешенных для данного товара параметров\nif (isset($allowedTmp[\'fieldValue\'])) {\n    foreach ($allowedTmp[\'fieldValue\'] as $k=>$v) {\n        $allowedParams[$v[\'param_id\']] = \'1\';\n    }\n}\n\n\n//оставляем только разрешенные для данного товара параметры в списке\nforeach ($tv_list as $k => $v) {\n    if (!isset($allowedParams[$k])) {\n        unset($tv_list[$k]);\n    }\n}\n\n// удаляем из списка общие исключенные ТВ (в настройках модуля) -\n// (например цена и т.п., которая выводится отдельно и есть у всех\nif (isset($exclude_tvs_from_list) && $exclude_tvs_from_list != \'\') {\n    $exclude_tvs = explode(\',\', $exclude_tvs_from_list);\n    foreach($exclude_tvs as $k=>$v){\n        if (isset($tv_list[$v])) {\n            unset($tv_list[$v]);\n        }\n    }\n}\n///////\n\n\nforeach($tv_list as $tv_id=>$v) {\n    $param_title = $v[\'caption\'];\n    $param_value = \'[*\' . $v[\'name\'] . \'*]\';\n    $param_value = stristr($v[\'elements\'], \'getParamsFromTree\') === FALSE ? \'[*\' . $v[\'name\'] . \'*]\' : \'[[if? &is=`[*\' . $v[\'name\'] . \'*]:!empty` &then=`[[multiParams? &action=`showParamsFromTree` &ids=`[*\' . $v[\'name\'] . \'*]`]]`]]\';\n\n    $tovar_params_tpl .= $eFltr->parseTpl(\n        array(\'[+param_title+]\', \'[+param_value+]\', \'[+param_id+]\'),\n        array($param_title, $param_value, $tv_id),\n        $paramRow\n    );\n}\n\n$out = $eFltr->parseTpl(\n    array(\'[+wrapper+]\'),\n    array($tovar_params_tpl),\n    $paramOuter\n);\n\nreturn $out;\n', 0, '', 'eFilters', 0, 1731949342, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_site_templates`
--

CREATE TABLE `adkq_site_templates` (
  `id` int(11) NOT NULL,
  `templatename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `templatealias` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `templatecontroller` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT 0 COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT 0 COMMENT 'category id',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'url to icon file',
  `template_type` int(11) NOT NULL DEFAULT 0 COMMENT '0-page,1-content',
  `content` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `selectable` tinyint(1) NOT NULL DEFAULT 1,
  `createdon` int(11) NOT NULL DEFAULT 0,
  `editedon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `adkq_site_templates`
--

INSERT INTO `adkq_site_templates` (`id`, `templatename`, `templatealias`, `templatecontroller`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `selectable`, `createdon`, `editedon`) VALUES
(1, 'Главная', 'pages.main', 'Pages\\Main', '', 0, 7, '', 0, '', 0, 1, 0, 1728752741),
(2, 'Catalog', 'pages.catalog', 'Pages\\Catalog', '', 0, 7, '', 0, '', 0, 1, 1728752751, 1728752775),
(3, 'Product', 'pages.product', 'Pages\\Product', '', 0, 7, '', 0, '', 0, 1, 1728752778, 1728752797),
(4, 'Cart', 'pages.cart', 'Shop\\Cart', '', 0, 7, '', 0, '', 0, 1, 1728752982, 1728752982),
(5, 'CatalogSection', 'pages.catalog_section', 'Pages\\CatalogSection', '', 0, 0, '', 0, '', 0, 1, 1729711763, 1729711763),
(6, 'Articles', 'pages.articles', 'Pages\\Articles', '', 0, 7, '', 0, '', 0, 1, 1729713947, 1729713988),
(7, 'Article', 'pages.article', 'Pages\\Article', '', 0, 7, '', 0, '', 0, 1, 1729714651, 1729714665),
(8, '404', 'pages.404', 'Pages\\Text', '', 0, 7, '', 0, '', 0, 1, 1729885626, 1729885858),
(9, 'Text', 'pages.text', 'Pages\\Text', '', 0, 7, '', 0, '', 0, 1, 1729885899, 1729885918),
(10, 'Contacts', 'pages.contacts', 'Pages\\Text', '', 0, 7, '', 0, '', 0, 1, 1729889114, 1729889217),
(11, 'Sitemap', 'pages.sitemap', 'Seo\\Sitemap', '', 0, 7, '', 0, '', 0, 1, 1730402002, 1730402024);

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_site_tmplvars`
--

CREATE TABLE `adkq_site_tmplvars` (
  `id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `caption` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT 0 COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT 0 COMMENT 'category id',
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `elements` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` int(11) NOT NULL DEFAULT 0,
  `display` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Display Control',
  `display_params` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display Control Properties',
  `default_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdon` int(11) NOT NULL DEFAULT 0,
  `editedon` int(11) NOT NULL DEFAULT 0,
  `properties` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `adkq_site_tmplvars`
--

INSERT INTO `adkq_site_tmplvars` (`id`, `type`, `name`, `caption`, `description`, `editor_type`, `category`, `locked`, `elements`, `rank`, `display`, `display_params`, `default_text`, `createdon`, `editedon`, `properties`) VALUES
(1, 'textareamini', 'metadescription', 'Meta description', 'Описание для поисковых машин', 0, 4, 0, '', 0, '', '', '', 1728749440, 1728751396, NULL),
(2, 'text', 'metatitle', 'Содержимое в теге title', 'Тег title', 0, 4, 0, '', 0, '', '', '', 1728749440, 1728751396, NULL),
(3, 'checkbox', 'noIndex', 'Индексировать страницу?', 'Если выбрать, добавит noindex, nofollow в секцию head', 0, 4, 0, 'Нет, не индексировать==1', 0, '', '', '0', 1728749440, 1728751396, NULL),
(4, 'image', 'ogImage', 'Изображение для соцсетей', 'Рекомендуется фото 1200:630', 0, 4, 0, '', 0, '', '', 'assets/images/ogdefault.png', 1728749440, 1730402726, '[]'),
(5, 'dropdown', 'ogType', 'Тип страницы', 'Og:type', 0, 4, 0, 'статья, публикация==article||товар, услуга==product||обычная страница==website||видео==video.movie||профайл==profile||сингл-песня==music.song||альбом==music.album||плейлист==music.playlist||радиостанция==music.radio_station||эпизод из видео==video.episode||ТВ-шоу==video.tv_show||другая категория видеоматериала==video.other||книга==book', 0, '', '', 'website', 1728749440, 1728751396, NULL),
(6, 'dropdown', 'sitemap_changefreq', 'Период обновления', 'Для карты сайта', 0, 4, 0, 'always||hourly||daily||weekly||monthly||yearly||never', 0, '', '', 'weekly', 1728749440, 1728751396, NULL),
(7, 'checkbox', 'sitemap_exclude', 'Отображение в sitemap', 'Для карты сайта', 0, 4, 0, 'Скрыть==1', 0, '', '', '0', 1728749440, 1728751396, NULL),
(8, 'dropdown', 'sitemap_priority', 'Приоритет страницы', 'Для карты сайта', 0, 4, 0, '0.1||0.2||0.3||0.4||0.5||0.6||0.7||0.8||0.9||1', 0, '', '', '0.9', 1728749440, 1728751396, NULL),
(9, 'text', 'price', 'Цена товара', 'Сумма, например 998.30', 0, 9, 0, '', 0, '', '', '', 1728751299, 1730408215, '[]'),
(14, 'image', 'product_photo', 'Главное фото товара', '', 0, 8, 0, '', 0, '', '', '', 1728754900, 1728754900, '[]'),
(15, 'checkbox', 'in_stock', 'Наличие товара', 'Если товара нет, ставь галочку', 0, 9, 0, 'Нет в наличии==0', 0, '', '', '1', 1728754940, 1731948267, '[]'),
(16, 'image', 'article_photo', 'Main photo', '', 0, 2, 0, '', 0, '', '', '', 1729751382, 1729751402, '[]'),
(17, 'option', 'product_brand', 'Бренд', '', 0, 9, 0, '@EVAL return $modx->runSnippet(\"multiParams\", array(\"parent\"=>\"1\",\"firstEmpty\" => \"0\"));	', 0, '', '', '', 1730403828, 1731955484, '[]'),
(18, 'checkbox', 'product_color', 'Цвета', 'Выберите нужные цвета', 0, 9, 0, '@EVAL return $modx->runSnippet(\"multiParams\", array(\"parent\"=>\"2\",\"firstEmpty\" => \"0\"));	', 0, '', '', '', 1730403841, 1731955519, '[]'),
(19, 'custom_tv', 'tovarparams', 'Настройка фильтра', 'tovarparams', 0, 10, 1, '@INCLUDE assets/tvs/multitv/multitv.customtv.php', 0, '', '', '', 1730404150, 1730404187, '[]'),
(20, 'dropdown', 'product_size', 'Размер', '', 0, 9, 0, 'X||XL||XS||XXL', 0, '', '', 'X', 1731952299, 1731952404, '[]');

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_site_tmplvar_access`
--

CREATE TABLE `adkq_site_tmplvar_access` (
  `id` int(11) NOT NULL,
  `tmplvarid` int(11) NOT NULL DEFAULT 0,
  `documentgroup` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_site_tmplvar_contentvalues`
--

CREATE TABLE `adkq_site_tmplvar_contentvalues` (
  `id` int(11) NOT NULL,
  `tmplvarid` int(11) NOT NULL DEFAULT 0 COMMENT 'Template Variable id',
  `contentid` int(11) NOT NULL DEFAULT 0 COMMENT 'Site Content Id',
  `value` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `adkq_site_tmplvar_contentvalues`
--

INSERT INTO `adkq_site_tmplvar_contentvalues` (`id`, `tmplvarid`, `contentid`, `value`) VALUES
(1, 3, 1, NULL),
(2, 7, 1, NULL),
(3, 3, 2, NULL),
(4, 7, 2, NULL),
(5, 3, 3, NULL),
(6, 7, 3, NULL),
(7, 9, 4, '2211'),
(8, 9, 5, '2002'),
(9, 9, 6, '3300'),
(10, 9, 7, '1000.52'),
(11, 9, 8, '2369'),
(12, 15, 8, '0'),
(13, 9, 9, '2650'),
(14, 9, 10, '3061'),
(15, 9, 11, '3311'),
(16, 9, 12, '3307'),
(17, 9, 13, '2935'),
(18, 9, 14, '3063'),
(19, 9, 15, '2987'),
(20, 9, 16, '2338'),
(21, 9, 17, '3047'),
(22, 9, 18, '1940'),
(23, 15, 18, '0'),
(24, 9, 19, '1875'),
(25, 9, 20, '2035'),
(26, 9, 21, '2768'),
(27, 9, 22, '1310'),
(28, 9, 23, '2730'),
(29, 9, 24, '2972'),
(30, 9, 25, '2626'),
(31, 9, 26, '1660'),
(32, 9, 27, '1694'),
(33, 9, 28, '2435'),
(34, 9, 29, '2395'),
(35, 9, 30, '1689'),
(36, 9, 31, '1682'),
(37, 9, 32, '1298'),
(38, 9, 33, '1492'),
(39, 9, 34, '2426'),
(40, 9, 35, '2619'),
(41, 9, 36, '3193'),
(42, 9, 37, '1849'),
(43, 9, 38, '1373'),
(44, 9, 39, '1298'),
(45, 15, 39, '0'),
(46, 9, 40, '2422'),
(47, 9, 41, '3007'),
(48, 9, 42, '2964'),
(49, 9, 43, '2543'),
(50, 9, 44, '2685'),
(51, 9, 45, '1386'),
(52, 9, 46, '2555'),
(53, 9, 47, '2467'),
(54, 9, 48, '2251'),
(55, 9, 49, '1859'),
(56, 9, 50, '1849'),
(57, 9, 51, '1845'),
(58, 9, 52, '2048'),
(59, 9, 53, '2201'),
(60, 9, 54, '3211'),
(61, 9, 55, '2563'),
(62, 9, 56, '2541'),
(63, 9, 57, '3153'),
(64, 9, 58, '2689'),
(65, 9, 59, '3244'),
(66, 9, 60, '1542'),
(67, 9, 61, '1950'),
(68, 9, 62, '2434'),
(69, 9, 63, '2443'),
(70, 15, 63, '0'),
(71, 9, 64, '2092'),
(72, 9, 65, '3225'),
(73, 9, 66, '2494'),
(74, 9, 67, '2307'),
(75, 9, 68, '2807'),
(76, 9, 69, '1602'),
(77, 9, 70, '2386'),
(78, 9, 71, '2988'),
(79, 9, 72, '1629'),
(80, 9, 73, '2876'),
(81, 9, 74, '1696'),
(82, 9, 75, '1621'),
(83, 9, 76, '3182'),
(84, 9, 77, '1479'),
(85, 9, 78, '1540'),
(86, 9, 79, '2865'),
(87, 9, 80, '3087'),
(88, 9, 81, '2224'),
(89, 9, 82, '2631'),
(90, 9, 83, '1998'),
(91, 9, 84, '2416'),
(92, 9, 85, '3055'),
(93, 9, 86, '1556'),
(94, 9, 87, '3133'),
(95, 9, 88, '1670'),
(96, 9, 89, '2278'),
(97, 9, 90, '3181'),
(98, 9, 91, '1559'),
(99, 9, 92, '1432'),
(100, 9, 93, '2836'),
(101, 15, 93, '0'),
(102, 9, 94, '1686'),
(103, 9, 95, '1857'),
(104, 9, 96, '2554'),
(105, 9, 97, '1992'),
(106, 9, 98, '2390'),
(107, 9, 99, '1779'),
(108, 9, 100, '2921'),
(109, 9, 101, '3034'),
(110, 14, 4, 'assets/images/fc7fcd4769e1a2314b2abd94bebba4e5.png'),
(111, 14, 5, 'assets/images/8bfd5e86f70a280abfa16d813b9dbedf.png'),
(112, 14, 6, 'assets/images/c7878fca83750e094795197fec15a24c.png'),
(113, 14, 7, 'assets/images/cd2b8fedae4eda6777dca9e7b43e2e57.png'),
(114, 14, 8, 'assets/images/c6a337b3ff9bf4811f92bda6963dffa2.png'),
(115, 14, 9, 'assets/images/c72de98ebb9aeb1b1a8e0bf36f0ec370.png'),
(116, 14, 10, 'assets/images/9b00988a694dbcbffa56ea17a6f6cd51.png'),
(117, 14, 11, 'assets/images/8e906b364f81d014409f50ecd92e119c.png'),
(118, 14, 12, 'assets/images/c56615453b7185875cb9d2dfea37b0c8.png'),
(119, 14, 13, 'assets/images/5cb2cfd9f08cffa8c59f795f67673f7d.png'),
(120, 14, 14, 'assets/images/d3e3bd46f35aa9967aec15d65abccca6.png'),
(121, 14, 15, 'assets/images/6d28d83e8cfb91e6973a23d44e0e6f9e.png'),
(122, 14, 16, 'assets/images/59ed030597b2e4532cf5c2d07ef04f6f.png'),
(123, 14, 17, 'assets/images/fa55c1ee6b5aa6f09726142a2323ab79.png'),
(124, 14, 18, 'assets/images/7bd596d5f07a4722da9e91a042bedf3b.png'),
(125, 14, 19, 'assets/images/c952572503259aea8bff8f18d7c33a70.png'),
(126, 14, 20, 'assets/images/10ae2f1d18312bbc4c7c288ceb276d33.png'),
(127, 14, 21, 'assets/images/cc0ce483b39060419a6eb16312e9b9cc.png'),
(128, 14, 22, 'assets/images/9a2fc0579ddb4ba425eb519d8aca31b3.png'),
(129, 14, 23, 'assets/images/eda1123b54625ecd88604d3ac4ef773a.png'),
(130, 14, 24, 'assets/images/0356b42c5695017555f8c16a30be6aa2.png'),
(131, 14, 25, 'assets/images/9664a2f3a285d1dbacb7f8ed4f80a10d.png'),
(132, 14, 26, 'assets/images/6f8a2816669aab3df09a23855c7663ea.png'),
(133, 14, 27, 'assets/images/da5e7403fb9fbb616f89d17a5e77ced5.png'),
(134, 14, 28, 'assets/images/dfdc4077b51dd561ae1a234db93ab0d3.png'),
(135, 14, 29, 'assets/images/ed64bd8630ee24af4b586d20f47eff33.png'),
(136, 14, 30, 'assets/images/58e957c177a3ebfac397e5d97826242a.png'),
(137, 14, 31, 'assets/images/004611ec530d2bb92768e3984113633d.png'),
(138, 14, 32, 'assets/images/ba45f525021ae9110853caa2b713d451.png'),
(139, 14, 33, 'assets/images/a6468e21d36d554f5035e501f05d725e.png'),
(140, 14, 34, 'assets/images/7512696dad8304d493df7f4ac6f566a4.png'),
(141, 14, 35, 'assets/images/ee81980671c6d326b10e5cf317d405a9.png'),
(142, 14, 36, 'assets/images/0d96a8aa8c19cd0323f1bd3852199e54.png'),
(143, 14, 37, 'assets/images/2ecd54bd6d73c858d2ff06852c5a07cd.png'),
(144, 14, 38, 'assets/images/166ef20df739a51fc0dd01b67bd50abf.png'),
(145, 14, 39, 'assets/images/c23f0e9e9ec8a50eb9db0674c6898bc1.png'),
(146, 14, 40, 'assets/images/95c5252eb29ff79b11031f87de1d2583.png'),
(147, 14, 41, 'assets/images/b17e36bb1a81cd0ec9bf50ad41614297.png'),
(148, 14, 42, 'assets/images/13da3ec925cb587c9292a09af5fe152d.png'),
(149, 14, 43, 'assets/images/d49b6de95c9d2a608e0fdc95317a276f.png'),
(150, 14, 44, 'assets/images/57cf48487d7c0c139be79289cc943685.png'),
(151, 14, 45, 'assets/images/fd46fa3811aa0fd45601f01552755387.png'),
(152, 14, 46, 'assets/images/3158a72591eca19bd85b06e1bc2b0436.png'),
(153, 14, 47, 'assets/images/b5616a9b34e8948316d82ee37f5d0ef9.png'),
(154, 14, 48, 'assets/images/f49773aa89bb53258117ca59fec88f73.png'),
(155, 14, 49, 'assets/images/c2522369f9edc93a1a14d5d832d6ff12.png'),
(156, 14, 50, 'assets/images/44960d8ebb7be0db26ccea28fa1df2d4.png'),
(157, 14, 51, 'assets/images/7d70c390c23ee6213802eab3cc4f15cb.png'),
(158, 14, 52, 'assets/images/b1a0041926d8df108364f3ee053badb8.png'),
(159, 14, 53, 'assets/images/03df78c702cbd5240396070bd32a74d2.png'),
(160, 14, 54, 'assets/images/8b78e769bb454857ed411dcff6f42448.png'),
(161, 14, 55, 'assets/images/83f2a122f0f97465bcfc9107063d1b9f.png'),
(162, 14, 56, 'assets/images/fe5068a22070806c9e55796d549842f5.png'),
(163, 14, 57, 'assets/images/b6c77326c854e7817503dde0a4cae718.png'),
(164, 14, 58, 'assets/images/aa8bb5ab53375187000ca53ca642688d.png'),
(165, 14, 59, 'assets/images/460965ad60f71b48347d406ef292c417.png'),
(166, 14, 60, 'assets/images/8aefc747e1b9f8419495ad539f1ff08e.png'),
(167, 14, 61, 'assets/images/e49670f0f949ade9ddc9570de1e965fd.png'),
(168, 14, 62, 'assets/images/0be3c6bb81630aacee34a8ea4bf6a91f.png'),
(169, 14, 63, 'assets/images/578d9f7c3cc1dee431aa6037a065f8af.png'),
(170, 14, 64, 'assets/images/e2365877ef7394c4cb82906ad480ff0a.png'),
(171, 14, 65, 'assets/images/14d6867815bc0ad7b19365ef4abe3305.png'),
(172, 14, 66, 'assets/images/3a2595437432cd9506bcc734f5845552.png'),
(173, 14, 67, 'assets/images/427a1a08964a0f39f6eed6dfde9c5771.png'),
(174, 14, 68, 'assets/images/ba1eedb7e5a683f5220ad49d111e545d.png'),
(175, 14, 69, 'assets/images/3ad1bc1c10fc7b80ed578c1e96bfb455.png'),
(176, 14, 70, 'assets/images/19a92c97206b3705ed6989eca930b2fe.png'),
(177, 14, 71, 'assets/images/e79ac780efe25b3548f9a0475ceb7579.png'),
(178, 14, 72, 'assets/images/793c7d9cd0e2ea17804668b4785a29ac.png'),
(179, 14, 73, 'assets/images/ad48fe30acff115fe4b32ef082547537.png'),
(180, 14, 74, 'assets/images/6abb182d2ab2c3421684dadc08fd860a.png'),
(181, 14, 75, 'assets/images/ab95ccc843838142932d5c89ff16a25e.png'),
(182, 14, 76, 'assets/images/e39f1f7c8a4fbb176cbba9729d4a69fa.png'),
(183, 14, 77, 'assets/images/38dea2fbff3e31f1e9346e66e57a3e77.png'),
(184, 14, 78, 'assets/images/4619f35b9dfb636147cd1fd73a0229dc.png'),
(185, 14, 79, 'assets/images/3831d69c0e4f60926544059c1fe6d957.png'),
(186, 14, 80, 'assets/images/8458d6ecd7756d7fa5e529deefc71a96.png'),
(187, 14, 81, 'assets/images/271704de30c057efdc112f6af0fa1af1.png'),
(188, 14, 82, 'assets/images/86ce4e55828c58096a93294df2479fb3.png'),
(189, 14, 83, 'assets/images/feacb0d4ebe56725d13d2f69ecccc5a2.png'),
(190, 14, 84, 'assets/images/b76cb0492c8aec32b791326f97c8e282.png'),
(191, 14, 85, 'assets/images/28862808ef0b4154e39d0a959cfaedb2.png'),
(192, 14, 86, 'assets/images/3c2aec1d9c06b190a37756eee4f4e21f.png'),
(193, 14, 87, 'assets/images/60786496a5d4d36fe609787282a03020.png'),
(194, 14, 88, 'assets/images/c7623bbd8cdb6a9a90c8cb7cf30a85e3.png'),
(195, 14, 89, 'assets/images/d6c85d2acdadb94873bedca1db53fcba.png'),
(196, 14, 90, 'assets/images/de08f369a4e2c9482e9c220c1be3fd51.png'),
(197, 14, 91, 'assets/images/649d0ec1efb893a0c77d6a482b09ab41.png'),
(198, 14, 92, 'assets/images/abdde5e221ec775d7beaea4bed4f52e8.png'),
(199, 14, 93, 'assets/images/4833a0611cdcb4f1af35c011a54a02d8.png'),
(200, 14, 94, 'assets/images/dfe322eed42d28c33614f4c6929456f8.png'),
(201, 14, 95, 'assets/images/176ed9c884016de1404130513d9bfcd4.png'),
(202, 14, 96, 'assets/images/888bac1600b148dc90eab12faacea55b.png'),
(203, 14, 97, 'assets/images/fb90406134500aadfe4690f09e8a41fb.png'),
(204, 14, 98, 'assets/images/d971fd51684c11652a276a8789631089.png'),
(205, 14, 99, 'assets/images/38d5838493e011268a0b169335cebb75.png'),
(206, 14, 100, 'assets/images/c34014d0f95fe073f30f7d0323269c18.png'),
(207, 14, 101, 'assets/images/b63088b70f1c661366f40165998bb23f.png'),
(212, 3, 4, NULL),
(213, 7, 4, NULL),
(214, 3, 6, NULL),
(215, 7, 6, NULL),
(216, 3, 5, NULL),
(217, 7, 5, NULL),
(218, 3, 7, NULL),
(219, 7, 7, NULL),
(220, 3, 8, NULL),
(221, 7, 8, NULL),
(222, 3, 9, NULL),
(223, 7, 9, NULL),
(224, 15, 9, NULL),
(225, 3, 10, NULL),
(226, 7, 10, NULL),
(227, 15, 10, NULL),
(228, 3, 21, NULL),
(229, 7, 21, NULL),
(230, 3, 17, NULL),
(231, 7, 17, NULL),
(232, 3, 20, NULL),
(233, 7, 20, NULL),
(234, 3, 16, NULL),
(235, 7, 16, NULL),
(236, 3, 11, '1'),
(237, 7, 11, '1'),
(238, 15, 11, NULL),
(239, 6, 11, 'never'),
(240, 8, 11, '0.1'),
(241, 3, 12, NULL),
(242, 7, 12, NULL),
(243, 16, 21, 'assets/images/2024-10-31_21-25-15.png'),
(244, 16, 17, 'assets/images/2024-10-31_21-25-15.png'),
(245, 16, 20, 'assets/images/2024-10-31_21-25-15.png'),
(246, 16, 16, 'assets/images/2024-10-31_21-25-15.png'),
(247, 3, 13, NULL),
(248, 7, 13, NULL),
(249, 15, 13, NULL),
(250, 3, 104, '1'),
(251, 7, 104, '1'),
(252, 19, 2, '{\"fieldValue\":[{\"param_id\":\"9\",\"cat_name\":\"\",\"list_yes\":\"\",\"fltr_yes\":\"1\",\"fltr_type\":\"6\",\"fltr_name\":\"Цена\",\"fltr_many\":\"\",\"fltr_href\":\"\"},{\"param_id\":\"17\",\"cat_name\":\"\",\"list_yes\":\"1\",\"fltr_yes\":\"1\",\"fltr_type\":\"4\",\"fltr_name\":\"Бренд\",\"fltr_many\":\"\",\"fltr_href\":\"\"},{\"param_id\":\"18\",\"cat_name\":\"\",\"list_yes\":\"1\",\"fltr_yes\":\"1\",\"fltr_type\":\"1\",\"fltr_name\":\"Цвет\",\"fltr_many\":\"1\",\"fltr_href\":\"\"},{\"param_id\":\"20\",\"cat_name\":\"\",\"list_yes\":\"1\",\"fltr_yes\":\"1\",\"fltr_type\":\"2\",\"fltr_name\":\"Размер\",\"fltr_many\":\"\",\"fltr_href\":\"\"}],\"fieldSettings\":{\"autoincrement\":1}}'),
(256, 17, 27, '1'),
(257, 18, 27, '3'),
(258, 18, 15, '2'),
(259, 17, 15, '1'),
(260, 18, 18, '1||3'),
(261, 17, 18, '3'),
(262, 18, 19, '1||2||3'),
(263, 17, 19, '3'),
(264, 18, 22, '3'),
(265, 17, 22, '2'),
(266, 18, 23, '2||3'),
(267, 17, 23, '3'),
(268, 18, 24, '2'),
(269, 17, 24, '2'),
(270, 18, 25, '2'),
(271, 17, 25, '1'),
(272, 18, 26, '1||3'),
(273, 17, 26, '1'),
(276, 18, 28, '2'),
(277, 17, 28, '3'),
(278, 18, 29, '1||2||3'),
(279, 17, 29, '2'),
(280, 18, 30, '3'),
(281, 17, 30, '1'),
(282, 18, 31, '1||3'),
(283, 17, 31, '1'),
(284, 18, 32, '3'),
(285, 17, 32, '1'),
(286, 18, 33, '2'),
(287, 17, 33, '2'),
(288, 18, 34, '2||3'),
(289, 17, 34, '2'),
(290, 18, 35, '3'),
(291, 17, 35, '3'),
(292, 18, 36, '3'),
(293, 17, 36, '3'),
(294, 18, 37, '3'),
(295, 17, 37, '2'),
(296, 18, 38, '1||3'),
(297, 17, 38, '2'),
(298, 18, 39, '2'),
(299, 17, 39, '2'),
(300, 18, 40, '3'),
(301, 17, 40, '3'),
(302, 18, 41, '1||2||3'),
(303, 17, 41, '1'),
(304, 18, 42, '3'),
(305, 17, 42, '3'),
(306, 18, 43, '2'),
(307, 17, 43, '3'),
(308, 18, 44, '3'),
(309, 17, 44, '1'),
(310, 18, 45, '1||2||3'),
(311, 17, 45, '1'),
(312, 18, 46, '1||2'),
(313, 17, 46, '1'),
(314, 18, 47, '3'),
(315, 17, 47, '2'),
(316, 18, 48, '1||2'),
(317, 17, 48, '1'),
(318, 18, 49, '3'),
(319, 17, 49, '1'),
(320, 18, 50, '2||3'),
(321, 17, 50, '3'),
(322, 18, 51, '2'),
(323, 17, 51, '3'),
(324, 18, 52, '1'),
(325, 17, 52, '2'),
(326, 18, 53, '1||2||3'),
(327, 17, 53, '1'),
(328, 18, 54, '2'),
(329, 17, 54, '3'),
(330, 18, 55, '1'),
(331, 17, 55, '3'),
(332, 18, 56, '1||2'),
(333, 17, 56, '1'),
(334, 18, 57, '2'),
(335, 17, 57, '3'),
(336, 18, 58, '1||3'),
(337, 17, 58, '2'),
(338, 18, 59, '3'),
(339, 17, 59, '1'),
(340, 18, 60, '3'),
(341, 17, 60, '2'),
(342, 18, 61, '3'),
(343, 17, 61, '3'),
(344, 18, 62, '1||2||3'),
(345, 17, 62, '2'),
(346, 18, 63, '1||2'),
(347, 17, 63, '1'),
(348, 18, 64, '1'),
(349, 17, 64, '3'),
(350, 18, 65, '1||3'),
(351, 17, 65, '2'),
(352, 18, 66, '3'),
(353, 17, 66, '2'),
(354, 18, 67, '3'),
(355, 17, 67, '1'),
(356, 18, 68, '1||2||3'),
(357, 17, 68, '1'),
(358, 18, 69, '1'),
(359, 17, 69, '3'),
(360, 18, 70, '1'),
(361, 17, 70, '1'),
(362, 18, 71, '1||2'),
(363, 17, 71, '2'),
(364, 18, 72, '2'),
(365, 17, 72, '3'),
(366, 18, 73, '2||3'),
(367, 17, 73, '3'),
(368, 18, 74, '2'),
(369, 17, 74, '2'),
(370, 18, 75, '3'),
(371, 17, 75, '2'),
(372, 18, 76, '1||3'),
(373, 17, 76, '3'),
(374, 18, 77, '1'),
(375, 17, 77, '1'),
(376, 18, 78, '1||2||3'),
(377, 17, 78, '3'),
(378, 18, 79, '3'),
(379, 17, 79, '3'),
(380, 18, 80, '1'),
(381, 17, 80, '3'),
(382, 18, 81, '1||2||3'),
(383, 17, 81, '2'),
(384, 18, 82, '2'),
(385, 17, 82, '2'),
(386, 18, 83, '2'),
(387, 17, 83, '1'),
(388, 18, 84, '1||2'),
(389, 17, 84, '3'),
(390, 18, 85, '3'),
(391, 17, 85, '1'),
(392, 18, 86, '1'),
(393, 17, 86, '1'),
(394, 18, 87, '2||3'),
(395, 17, 87, '2'),
(396, 18, 88, '1'),
(397, 17, 88, '2'),
(398, 18, 89, '1||3'),
(399, 17, 89, '3'),
(400, 18, 90, '2'),
(401, 17, 90, '2'),
(402, 18, 91, '2||3'),
(403, 17, 91, '1'),
(404, 18, 92, '2'),
(405, 17, 92, '2'),
(406, 18, 93, '3'),
(407, 17, 93, '3'),
(408, 18, 94, '1||2||3'),
(409, 17, 94, '1'),
(410, 18, 95, '1||2||3'),
(411, 17, 95, '2'),
(412, 18, 96, '1||3'),
(413, 17, 96, '1'),
(414, 18, 97, '2'),
(415, 17, 97, '1'),
(416, 18, 98, '3'),
(417, 17, 98, '2'),
(418, 18, 99, '2||3'),
(419, 17, 99, '3'),
(420, 18, 100, '3'),
(421, 17, 100, '3'),
(422, 18, 101, '1||3'),
(423, 17, 101, '2'),
(430, 20, 87, 'XL'),
(431, 20, 15, 'XL'),
(432, 20, 24, 'XL'),
(433, 20, 29, 'XXL'),
(434, 20, 37, 'XXL'),
(435, 20, 40, 'XS'),
(436, 20, 42, 'XL'),
(437, 20, 45, 'XS'),
(438, 20, 48, 'XXL'),
(439, 20, 54, 'XXL'),
(440, 20, 56, 'XXL'),
(441, 20, 60, 'XL'),
(442, 20, 68, 'XS'),
(443, 20, 74, 'XL'),
(444, 20, 78, 'XS'),
(445, 20, 83, 'XS'),
(446, 20, 84, 'XL'),
(447, 20, 93, 'XS'),
(448, 20, 99, 'XL');

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_site_tmplvar_templates`
--

CREATE TABLE `adkq_site_tmplvar_templates` (
  `tmplvarid` int(11) NOT NULL DEFAULT 0 COMMENT 'Template Variable id',
  `templateid` int(11) NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `adkq_site_tmplvar_templates`
--

INSERT INTO `adkq_site_tmplvar_templates` (`tmplvarid`, `templateid`, `rank`) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 3, 5),
(1, 4, 1),
(1, 5, 1),
(1, 6, 1),
(1, 7, 1),
(1, 8, 1),
(1, 9, 1),
(1, 10, 1),
(1, 11, 1),
(2, 1, 0),
(2, 2, 0),
(2, 3, 4),
(2, 4, 2),
(2, 5, 2),
(2, 6, 0),
(2, 7, 2),
(2, 8, 2),
(2, 9, 2),
(2, 10, 2),
(2, 11, 2),
(3, 1, 2),
(3, 2, 2),
(3, 3, 3),
(3, 4, 3),
(3, 5, 3),
(3, 6, 2),
(3, 7, 3),
(3, 8, 3),
(3, 9, 3),
(3, 10, 3),
(3, 11, 3),
(4, 1, 3),
(4, 2, 3),
(4, 3, 6),
(4, 4, 4),
(4, 5, 4),
(4, 6, 3),
(4, 7, 4),
(4, 8, 4),
(4, 9, 4),
(4, 10, 4),
(4, 11, 4),
(5, 1, 4),
(5, 2, 4),
(5, 3, 7),
(5, 4, 5),
(5, 5, 5),
(5, 6, 4),
(5, 7, 5),
(5, 8, 5),
(5, 9, 5),
(5, 10, 5),
(5, 11, 5),
(6, 1, 5),
(6, 2, 5),
(6, 3, 9),
(6, 4, 6),
(6, 5, 6),
(6, 6, 5),
(6, 7, 6),
(6, 8, 6),
(6, 9, 6),
(6, 10, 6),
(6, 11, 6),
(7, 1, 6),
(7, 2, 6),
(7, 3, 8),
(7, 4, 7),
(7, 5, 7),
(7, 6, 6),
(7, 7, 7),
(7, 8, 7),
(7, 9, 7),
(7, 10, 7),
(7, 11, 7),
(8, 1, 7),
(8, 2, 7),
(8, 3, 10),
(8, 4, 8),
(8, 5, 8),
(8, 6, 7),
(8, 7, 8),
(8, 8, 8),
(8, 9, 8),
(8, 10, 8),
(8, 11, 8),
(9, 3, 1),
(14, 3, 0),
(15, 3, 2),
(16, 7, 0),
(17, 3, 0),
(18, 3, 0),
(19, 2, 0),
(19, 5, 0),
(20, 3, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_system_eventnames`
--

CREATE TABLE `adkq_system_eventnames` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `service` int(11) NOT NULL DEFAULT 0 COMMENT 'System Service number',
  `groupname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `adkq_system_eventnames`
--

INSERT INTO `adkq_system_eventnames` (`id`, `name`, `service`, `groupname`) VALUES
(1, 'OnAfterLoadDocumentObject', 5, ''),
(2, 'OnAfterMoveDocument', 1, 'Documents'),
(3, 'OnBeforeCacheUpdate', 4, ''),
(4, 'OnBeforeChunkFormDelete', 1, 'Chunks'),
(5, 'OnBeforeChunkFormSave', 1, 'Chunks'),
(6, 'OnBeforeDocDuplicate', 1, 'Documents'),
(7, 'OnBeforeDocFormDelete', 1, 'Documents'),
(8, 'OnBeforeDocFormSave', 1, 'Documents'),
(9, 'OnBeforeEmptyTrash', 1, 'Documents'),
(10, 'OnBeforeFileBrowserCopy', 1, 'File Browser Events'),
(11, 'OnBeforeFileBrowserDelete', 1, 'File Browser Events'),
(12, 'OnBeforeFileBrowserMove', 1, 'File Browser Events'),
(13, 'OnBeforeFileBrowserRename', 1, 'File Browser Events'),
(14, 'OnBeforeFileBrowserUpload', 1, 'File Browser Events'),
(15, 'OnBeforeLoadDocumentObject', 5, ''),
(16, 'OnBeforeLoadExtension', 5, ''),
(17, 'OnBeforeManagerPageInit', 2, ''),
(18, 'OnBeforeMinifyCss', 1, ''),
(19, 'OnBeforeModFormDelete', 1, 'Modules'),
(20, 'OnBeforeModFormSave', 1, 'Modules'),
(21, 'OnBeforeMoveDocument', 1, 'Documents'),
(22, 'OnBeforeParseParams', 5, ''),
(23, 'OnBeforePluginFormDelete', 1, 'Plugins'),
(24, 'OnBeforePluginFormSave', 1, 'Plugins'),
(25, 'OnBeforeSaveWebPageCache', 4, ''),
(26, 'OnBeforeSnipFormDelete', 1, 'Snippets'),
(27, 'OnBeforeSnipFormSave', 1, 'Snippets'),
(28, 'OnBeforeTempFormDelete', 1, 'Templates'),
(29, 'OnBeforeTempFormSave', 1, 'Templates'),
(30, 'OnBeforeTVFormDelete', 1, 'Template Variables'),
(31, 'OnBeforeTVFormSave', 1, 'Template Variables'),
(32, 'OnBeforeUserDelete', 1, 'Users'),
(33, 'OnBeforeUserLogin', 1, 'Users'),
(34, 'OnBeforeUserLogout', 1, 'Users'),
(35, 'OnBeforeUserSave', 1, 'Users'),
(36, 'OnCacheUpdate', 4, ''),
(37, 'OnChunkFormDelete', 1, 'Chunks'),
(38, 'OnChunkFormPrerender', 1, 'Chunks'),
(39, 'OnChunkFormRender', 1, 'Chunks'),
(40, 'OnChunkFormSave', 1, 'Chunks'),
(41, 'OnCreateDocGroup', 1, 'Documents'),
(42, 'OnDocDuplicate', 1, 'Documents'),
(43, 'OnDocFormDelete', 1, 'Documents'),
(44, 'OnDocFormPrerender', 1, 'Documents'),
(45, 'OnDocFormRender', 1, 'Documents'),
(46, 'OnDocFormSave', 1, 'Documents'),
(47, 'OnDocFormTemplateRender', 1, 'Documents'),
(48, 'OnDocFormUnDelete', 1, 'Documents'),
(49, 'OnDocPublished', 5, ''),
(50, 'OnDocUnPublished', 5, ''),
(51, 'OnEmptyTrash', 1, 'Documents'),
(52, 'OnFileBrowserCopy', 1, 'File Browser Events'),
(53, 'OnFileBrowserDelete', 1, 'File Browser Events'),
(54, 'OnFileBrowserInit', 1, 'File Browser Events'),
(55, 'OnFileBrowserMove', 1, 'File Browser Events'),
(56, 'OnFileBrowserRename', 1, 'File Browser Events'),
(57, 'OnFileBrowserUpload', 1, 'File Browser Events'),
(58, 'OnFileManagerSettingsRender', 1, 'System Settings'),
(59, 'OnFileManagerUpload', 1, ''),
(60, 'OnFriendlyURLSettingsRender', 1, 'System Settings'),
(61, 'OnInterfaceSettingsRender', 1, 'System Settings'),
(62, 'OnLoadDocumentObject', 5, ''),
(63, 'OnLoadSettings', 1, 'System Settings'),
(64, 'OnLoadWebDocument', 5, ''),
(65, 'OnLoadWebPageCache', 4, ''),
(66, 'OnLogEvent', 1, 'Log Event'),
(67, 'OnLogPageHit', 5, ''),
(68, 'OnMakeDocUrl', 5, ''),
(69, 'OnMakePageCacheKey', 4, ''),
(70, 'OnManagerFrameLoader', 2, ''),
(71, 'OnManagerLoginFormPrerender', 2, ''),
(72, 'OnManagerLoginFormRender', 2, ''),
(73, 'OnManagerMainFrameHeaderHTMLBlock', 2, ''),
(74, 'OnManagerMenuPrerender', 2, ''),
(75, 'OnManagerNodePrerender', 2, ''),
(76, 'OnManagerNodeRender', 2, ''),
(77, 'OnManagerPageInit', 2, ''),
(78, 'OnManagerPreFrameLoader', 2, ''),
(79, 'OnManagerTopPrerender', 2, ''),
(80, 'OnManagerTreeInit', 2, ''),
(81, 'OnManagerTreePrerender', 2, ''),
(82, 'OnManagerTreeRender', 2, ''),
(83, 'OnManagerWelcomeHome', 2, ''),
(84, 'OnManagerWelcomePrerender', 2, ''),
(85, 'OnManagerWelcomeRender', 2, ''),
(86, 'OnMiscSettingsRender', 1, 'System Settings'),
(87, 'OnModFormDelete', 1, 'Modules'),
(88, 'OnModFormPrerender', 1, 'Modules'),
(89, 'OnModFormRender', 1, 'Modules'),
(90, 'OnModFormSave', 1, 'Modules'),
(91, 'OnPageNotFound', 1, ''),
(92, 'OnPageUnauthorized', 1, ''),
(93, 'OnParseDocument', 5, ''),
(94, 'OnParseProperties', 5, ''),
(95, 'OnPluginFormDelete', 1, 'Plugins'),
(96, 'OnPluginFormPrerender', 1, 'Plugins'),
(97, 'OnPluginFormRender', 1, 'Plugins'),
(98, 'OnPluginFormSave', 1, 'Plugins'),
(99, 'OnRichTextEditorInit', 1, 'RichText Editor'),
(100, 'OnRichTextEditorRegister', 1, 'RichText Editor'),
(101, 'OnSecuritySettingsRender', 1, 'System Settings'),
(102, 'OnSiteRefresh', 1, ''),
(103, 'OnSiteSettingsRender', 1, 'System Settings'),
(104, 'OnSnipFormDelete', 1, 'Snippets'),
(105, 'OnSnipFormPrerender', 1, 'Snippets'),
(106, 'OnSnipFormRender', 1, 'Snippets'),
(107, 'OnSnipFormSave', 1, 'Snippets'),
(108, 'OnStripAlias', 1, 'Documents'),
(109, 'OnTempFormDelete', 1, 'Templates'),
(110, 'OnTempFormPrerender', 1, 'Templates'),
(111, 'OnTempFormRender', 1, 'Templates'),
(112, 'OnTempFormSave', 1, 'Templates'),
(113, 'OnTVFormDelete', 1, 'Template Variables'),
(114, 'OnTVFormPrerender', 1, 'Template Variables'),
(115, 'OnTVFormRender', 1, 'Template Variables'),
(116, 'OnTVFormSave', 1, 'Template Variables'),
(117, 'OnUserAuthentication', 1, 'Users'),
(118, 'OnUserChangePassword', 1, 'Users'),
(119, 'OnUserCreateGroup', 1, 'Users'),
(120, 'OnUserDelete', 1, 'Users'),
(121, 'OnUserFormPrerender', 1, 'Users'),
(122, 'OnUserFormRender', 1, 'Users'),
(123, 'OnUserLogin', 1, 'Users'),
(124, 'OnUserLogout', 1, 'Users'),
(125, 'OnUserSave', 1, 'Users'),
(126, 'OnUserSettingsRender', 1, 'System Settings'),
(127, 'OnWebPageComplete', 5, ''),
(128, 'OnWebPageInit', 5, ''),
(129, 'OnWebPagePrerender', 5, ''),
(130, 'OnBeforeMailSend', 1, ''),
(131, 'OnBeforeClientSettingsSave', 6, 'ClientSettings'),
(132, 'OnClientSettingsSave', 6, 'ClientSettings'),
(133, 'OnInitializeCommerce', 6, 'Commerce'),
(134, 'OnCommerceInitialized', 6, 'Commerce'),
(135, 'OnInitializeOrderProcessor', 6, 'Commerce'),
(136, 'OnInitializeOrderForm', 6, 'Commerce'),
(137, 'OnCollectSubtotals', 6, 'Commerce'),
(138, 'OnRegisterDelivery', 6, 'Commerce'),
(139, 'OnRegisterPayments', 6, 'Commerce'),
(140, 'OnBeforeOrderAddonsRender', 6, 'Commerce'),
(141, 'OnBeforeCartItemAdding', 6, 'Commerce'),
(142, 'OnBeforeCartItemUpdating', 6, 'Commerce'),
(143, 'OnBeforeCartItemRemoving', 6, 'Commerce'),
(144, 'OnBeforeCartCleaning', 6, 'Commerce'),
(145, 'OnCartChanged', 6, 'Commerce'),
(146, 'OnOrderRawDataChanged', 6, 'Commerce'),
(147, 'OnBeforeOrderProcessing', 6, 'Commerce'),
(148, 'OnBeforePaymentProcess', 6, 'Commerce'),
(149, 'OnBeforePaymentCreate', 6, 'Commerce'),
(150, 'OnBeforeOrderSaving', 6, 'Commerce'),
(151, 'OnBeforeOrderDeleting', 6, 'Commerce'),
(152, 'OnBeforeOrderSending', 6, 'Commerce'),
(153, 'OnOrderSaved', 6, 'Commerce'),
(154, 'OnOrderDeleted', 6, 'Commerce'),
(155, 'OnOrderPaid', 6, 'Commerce'),
(156, 'OnOrderProcessed', 6, 'Commerce'),
(157, 'OnBeforeOrderHistoryUpdate', 6, 'Commerce'),
(158, 'OnBeforeCustomerNotifySending', 6, 'Commerce'),
(159, 'OnManagerBeforeOrdersListRender', 6, 'Commerce'),
(160, 'OnManagerOrdersListRender', 6, 'Commerce'),
(161, 'OnManagerBeforeOrderRender', 6, 'Commerce'),
(162, 'OnManagerOrderRender', 6, 'Commerce'),
(163, 'OnManagerBeforeOrderEditRender', 6, 'Commerce'),
(164, 'OnManagerOrderEditRender', 6, 'Commerce'),
(165, 'OnManagerBeforeOrderValidating', 6, 'Commerce'),
(166, 'OnManagerOrderValidated', 6, 'Commerce'),
(167, 'OnManagerStatusesListRender', 6, 'Commerce'),
(168, 'OnManagerStatusRender', 6, 'Commerce'),
(169, 'OnManagerCurrencyListRender', 6, 'Commerce'),
(170, 'OnManagerCurrencyRender', 6, 'Commerce'),
(171, 'OnManagerBeforeDefaultCurrencyChange', 6, 'Commerce'),
(172, 'OnManagerRegisterCommerceController', 6, 'Commerce'),
(173, 'OnBeforeCurrencyChange', 6, 'Commerce'),
(174, 'OnCommerceAjaxResponse', 6, 'Commerce'),
(175, 'OnOrderPlaceholdersPopulated', 6, 'Commerce');

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_system_settings`
--

CREATE TABLE `adkq_system_settings` (
  `setting_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `setting_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `adkq_system_settings`
--

INSERT INTO `adkq_system_settings` (`setting_name`, `setting_value`) VALUES
('_token', 'VmblZGTvsLWmVMfE4J1YqpWnhwsfYavMRf2yQ9hz'),
('a', '30'),
('alias_listing', '2'),
('allow_duplicate_alias', '0'),
('allow_eval', 'with_scan'),
('allow_multiple_emails', '0'),
('auto_menuindex', '1'),
('auto_template_logic', 'sibling'),
('automatic_alias', '1'),
('blocked_minutes', '60'),
('cache_default', '0'),
('cache_type', '2'),
('captcha_words', 'EVO,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote'),
('captcha_words_default', 'EVO,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote'),
('check_files_onlogin', 'index.php\r\n.htaccess\r\nmanager/index.php\r\n/core/config/database/connections/default.php'),
('chunk_processor', 'DLTemplate'),
('clean_uploaded_filename', '1'),
('client_company_address', 'ул. Добрых Строителей, 29'),
('client_company_city', 'Магадан'),
('client_company_email', 'example@example.com'),
('client_company_name', 'Наш магазинчик'),
('client_company_phone', '+7987-654-32-10'),
('client_company_zip', '16000'),
('client_footer_codes', '<!-- ex: Jivosite -->'),
('client_header_codes', '<!-- ex.: ya metrica -->'),
('client_site_logo', 'assets/images/logo.svg'),
('clientResize', '0'),
('ControllerNamespace', ''),
('custom_contenttype', 'application/rss+xml,application/pdf,application/vnd.ms-word,application/vnd.ms-excel,text/html,text/css,text/xml,text/javascript,text/plain,application/json'),
('datepicker_offset', '-10'),
('datetime_format', 'dd-mm-YYYY'),
('default_template', '1'),
('denyExtensionRename', '0'),
('denyZipDownload', '0'),
('disable_chunk_cache', '0'),
('disable_plugins_cache', '0'),
('disable_snippet_cache', '0'),
('editor_css_path', ''),
('editor_css_selectors', ''),
('email_method', 'mail'),
('email_sender_method', '1'),
('emailsender', 'admin@local.local'),
('emailsubject', 'Данные для авторизации'),
('emailsubject_default', 'Данные для авторизации'),
('enable_bindings', '1'),
('enable_cache', '1'),
('error_page', '1'),
('error_reporting', '1'),
('failed_login_attempts', '3'),
('fck_editor_autolang', '0'),
('fck_editor_toolbar', 'standard'),
('fe_editor_lang', 'ru'),
('filemanager_path', 'D:/OSPanel/domains/demoshop.localhost/'),
('friendly_alias_urls', '1'),
('friendly_url_prefix', ''),
('friendly_url_suffix', '.html'),
('friendly_urls', '1'),
('global_tabs', '1'),
('group_tvs', '1'),
('jpegQuality', '90'),
('lang_code', 'ru'),
('login_bg', ''),
('login_form_position', 'left'),
('login_form_style', 'dark'),
('login_logo', ''),
('make_folders', '0'),
('manager_direction', 'ltr'),
('manager_language', 'ru'),
('manager_layout', '4'),
('manager_menu_position', 'top'),
('manager_theme', 'default'),
('manager_theme_mode', '3'),
('maxImageHeight', '2200'),
('maxImageWidth', '2600'),
('minifyphp_incache', '0'),
('modx_charset', 'UTF-8'),
('new_file_permissions', '0644'),
('new_folder_permissions', '0755'),
('noThumbnailsRecreation', '0'),
('number_of_logs', '100'),
('number_of_results', '30'),
('old_template', '1'),
('publish_default', '1'),
('rb_base_dir', 'D:/OSPanel/domains/demoshop.localhost/assets/'),
('rb_base_url', 'assets/'),
('rb_webuser', '0'),
('reload_captcha_words', ''),
('reload_emailsubject', ''),
('reload_site_unavailable', ''),
('reload_system_email_webreminder_message', ''),
('reload_websignupemail_message', ''),
('remember_last_tab', '1'),
('resource_tree_node_name', 'pagetitle'),
('rss_url_news', 'https://github.com/evocms-community/evolution/releases.atom'),
('rss_url_security', 'https://github.com/extras-evolution/security-fix/releases.atom'),
('safe_functions_at_eval', 'time,date,strtotime,strftime'),
('search_default', '1'),
('send_errormail', '0'),
('seostrict', '1'),
('server_offset_time', '0'),
('server_protocol', 'http'),
('session_timeout', '15'),
('session.cookie.lifetime', '604800'),
('settings_version', '3.1.29'),
('show_fullscreen_btn', '0'),
('show_newresource_btn', '0'),
('show_picker', '0'),
('showHiddenFiles', '0'),
('site_id', '670a8e3b371b8'),
('site_name', 'DemoShop'),
('site_start', '1'),
('site_status', '1'),
('site_unavailable_message', 'В настоящее время сайт недоступен.'),
('site_unavailable_page', ''),
('siteunavailable_message_default', 'ru'),
('smtp_auth', '0'),
('smtp_autotls', '0'),
('smtp_host', 'smtp.example.com'),
('smtp_port', '25'),
('smtp_secure', 'none'),
('smtp_username', 'emailsender'),
('strip_image_paths', '1'),
('sys_files_checksum', 'a:4:{s:47:\"D:/OSPanel/domains/demoshop.localhost/index.php\";s:32:\"599511a98673763d066ea76b9e50fbb0\";s:47:\"D:/OSPanel/domains/demoshop.localhost/.htaccess\";s:32:\"4d525766cb6232034562a1732ec06a9c\";s:55:\"D:/OSPanel/domains/demoshop.localhost/manager/index.php\";s:32:\"19c60de055d5efeb3fdd9debde124cb7\";s:83:\"D:/OSPanel/domains/demoshop.localhost//core/config/database/connections/default.php\";s:32:\"2a1d4462d1d3ac6fc9a08388011510fa\";}'),
('system_email_webreminder_default', 'Здравствуйте, [+uid+]!\r\n\r\nЧтобы активировать ваш новый пароль, перейдите по следующей ссылке:\r\n\r\n[+surl+]\r\n\r\nПозже вы сможете использовать следующий пароль для авторизации: [+pwd+]\r\n\r\nЕсли это письмо пришло к вам по ошибке, пожалуйста, проигнорируйте его.\r\n\r\nС уважением, Администрация'),
('system_email_websignup_default', 'Здравствуйте, [+uid+]!\r\n\r\nВаши данные для авторизации на [+sname+]:\r\n\r\nИмя пользователя: [+uid+]\r\nПароль: [+pwd+]\r\n\r\nПосле успешной авторизации на [+sname+] ([+surl+]), вы сможете изменить свой пароль.\r\n\r\nС уважением, Администрация'),
('theme_refresher', ''),
('thumbHeight', '150'),
('thumbsDir', '.thumbs'),
('thumbWidth', '150'),
('tinymce4_blockFormats', 'Paragraph=p;Header 1=h1;Header 2=h2;Header 3=h3'),
('tinymce4_custom_buttons1', 'undo redo | cut copy paste | searchreplace | bold italic underline strikethrough | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent blockquote | styleselect'),
('tinymce4_custom_buttons2', 'link unlink anchor image media codesample table | hr removeformat | subscript superscript charmap | nonbreaking | visualchars visualblocks print preview fullscreen code formatselect'),
('tinymce4_custom_buttons3', ''),
('tinymce4_custom_buttons4', ''),
('tinymce4_custom_plugins', 'advlist autolink lists link image charmap print preview hr anchor pagebreak searchreplace wordcount visualblocks visualchars code fullscreen spellchecker insertdatetime media nonbreaking save table contextmenu directionality emoticons template paste textcolor codesample colorpicker textpattern imagetools paste modxlink youtube'),
('tinymce4_element_format', 'xhtml'),
('tinymce4_entermode', 'p'),
('tinymce4_schema', 'html5'),
('tinymce4_skin', 'lightgray'),
('tinymce4_skintheme', 'inlite'),
('tinymce4_template_chunks', ''),
('tinymce4_template_docs', ''),
('tinymce4_theme', 'custom'),
('track_visitors', '0'),
('tree_page_click', '27'),
('tree_show_protected', '0'),
('udperms_allowroot', '0'),
('unauthorized_page', '1'),
('UpgradeRepository', ''),
('upload_files', 'bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff,fla,flv,swf,aac,au,avi,css,cache,doc,docx,gz,gzip,htaccess,htm,html,js,mp3,mp4,mpeg,mpg,ods,odp,odt,pdf,ppt,pptx,rar,tar,tgz,txt,wav,wmv,xls,xlsx,xml,z,zip,JPG,JPEG,PNG,GIF,svg,webp,tpl'),
('upload_images', 'bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff,svg,webp'),
('upload_maxsize', '10485760'),
('upload_media', 'au,avi,mp3,mp4,mpeg,mpg,wav,wmv'),
('use_alias_path', '1'),
('use_breadcrumbs', '0'),
('use_browser', '1'),
('use_captcha', '0'),
('use_editor', '1'),
('use_udperms', '1'),
('validate_referer', '1'),
('warning_visibility', '0'),
('webpwdreminder_message', 'Здравствуйте, [+uid+]!\r\n\r\nЧтобы активировать ваш новый пароль, перейдите по следующей ссылке:\r\n\r\n[+surl+]\r\n\r\nПозже вы сможете использовать следующий пароль для авторизации: [+pwd+]\r\n\r\nЕсли это письмо пришло к вам по ошибке, пожалуйста, проигнорируйте его.\r\n\r\nС уважением, Администрация'),
('websignupemail_message', 'Здравствуйте, [+uid+]!\r\n\r\nВаши данные для авторизации на [+sname+]:\r\n\r\nИмя пользователя: [+uid+]\r\nПароль: [+pwd+]\r\n\r\nПосле успешной авторизации на [+sname+] ([+surl+]), вы сможете изменить свой пароль.\r\n\r\nС уважением, Администрация'),
('which_browser', 'mcpuk'),
('which_editor', 'none'),
('xhtml_urls', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_users`
--

CREATE TABLE `adkq_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cachepwd` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Store new unconfirmed password',
  `refresh_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid_to` timestamp NULL DEFAULT NULL,
  `verified_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `adkq_users`
--

INSERT INTO `adkq_users` (`id`, `username`, `password`, `cachepwd`, `refresh_token`, `access_token`, `valid_to`, `verified_key`) VALUES
(1, 'admin', '$P$BhxwuOxPF0Hm1XIl7uHldIOLU4eyGu0', '', 'd88f64d8e755f9469bf618d7c91f017bca73846fc38b4d96e596100c7657f9d3', '062bdd4a920c9681c6c297674e6c9e7945be56b6e1ff3862193df6a45cde0937', '2024-11-22 19:17:07', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_user_attributes`
--

CREATE TABLE `adkq_user_attributes` (
  `id` int(11) NOT NULL,
  `internalKey` int(11) NOT NULL DEFAULT 0,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobilephone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `blocked` int(11) NOT NULL DEFAULT 0,
  `blockeduntil` int(11) NOT NULL DEFAULT 0,
  `blockedafter` int(11) NOT NULL DEFAULT 0,
  `logincount` int(11) NOT NULL DEFAULT 0,
  `lastlogin` int(11) NOT NULL DEFAULT 0,
  `thislogin` int(11) NOT NULL DEFAULT 0,
  `failedlogincount` int(11) NOT NULL DEFAULT 0,
  `sessionid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dob` int(11) DEFAULT 0,
  `gender` int(11) NOT NULL DEFAULT 0 COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdon` int(11) NOT NULL DEFAULT 0,
  `editedon` int(11) NOT NULL DEFAULT 0,
  `verified` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `adkq_user_attributes`
--

INSERT INTO `adkq_user_attributes` (`id`, `internalKey`, `fullname`, `first_name`, `last_name`, `middle_name`, `role`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `country`, `street`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `createdon`, `editedon`, `verified`) VALUES
(1, 1, '', NULL, NULL, NULL, 1, 'admin@local.local', '', '', 0, 0, 0, 7, 1732263427, 1732263427, 0, '1', 0, 0, '', '', '', '', '', '', '', NULL, 1728745019, 1732263427, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_user_roles`
--

CREATE TABLE `adkq_user_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `adkq_user_roles`
--

INSERT INTO `adkq_user_roles` (`id`, `name`, `description`) VALUES
(1, 'Administrator', 'Site administrators have full access to all functions'),
(2, 'Editor', 'Limited to managing content'),
(3, 'Publisher', 'Editor with expanded permissions including manage users, update Elements and site settings');

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_user_role_vars`
--

CREATE TABLE `adkq_user_role_vars` (
  `tmplvarid` int(11) NOT NULL DEFAULT 0,
  `roleid` int(11) NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_user_settings`
--

CREATE TABLE `adkq_user_settings` (
  `user` int(11) NOT NULL,
  `setting_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `setting_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `adkq_user_values`
--

CREATE TABLE `adkq_user_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tmplvarid` int(11) NOT NULL DEFAULT 0,
  `userid` int(11) NOT NULL DEFAULT 0,
  `value` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `adkq_active_users`
--
ALTER TABLE `adkq_active_users`
  ADD PRIMARY KEY (`sid`);

--
-- Индексы таблицы `adkq_active_user_locks`
--
ALTER TABLE `adkq_active_user_locks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_element_id` (`elementType`,`elementId`,`sid`);

--
-- Индексы таблицы `adkq_active_user_sessions`
--
ALTER TABLE `adkq_active_user_sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Индексы таблицы `adkq_categories`
--
ALTER TABLE `adkq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `adkq_commerce_currency`
--
ALTER TABLE `adkq_commerce_currency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Индексы таблицы `adkq_commerce_orders`
--
ALTER TABLE `adkq_commerce_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Индексы таблицы `adkq_commerce_order_history`
--
ALTER TABLE `adkq_commerce_order_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`,`status_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `adkq_commerce_order_payments`
--
ALTER TABLE `adkq_commerce_order_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `hash` (`hash`),
  ADD KEY `original_order_id` (`original_order_id`),
  ADD KEY `original_order_id_2` (`original_order_id`);

--
-- Индексы таблицы `adkq_commerce_order_products`
--
ALTER TABLE `adkq_commerce_order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`,`product_id`);

--
-- Индексы таблицы `adkq_commerce_order_statuses`
--
ALTER TABLE `adkq_commerce_order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `adkq_documentgroup_names`
--
ALTER TABLE `adkq_documentgroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `adkq_document_groups`
--
ALTER TABLE `adkq_document_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_dg_id` (`document_group`,`document`),
  ADD KEY `document_group` (`document_group`),
  ADD KEY `document` (`document`);

--
-- Индексы таблицы `adkq_event_log`
--
ALTER TABLE `adkq_event_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_log_user_index` (`user`);

--
-- Индексы таблицы `adkq_list_catagory_table`
--
ALTER TABLE `adkq_list_catagory_table`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `adkq_list_value_table`
--
ALTER TABLE `adkq_list_value_table`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `adkq_manager_log`
--
ALTER TABLE `adkq_manager_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manager_log_internalkey_index` (`internalKey`),
  ADD KEY `manager_log_action_index` (`action`),
  ADD KEY `manager_log_itemid_index` (`itemid`),
  ADD KEY `manager_log_itemname_index` (`itemname`),
  ADD KEY `manager_log_message_index` (`message`),
  ADD KEY `manager_log_timestamp_index` (`timestamp`);

--
-- Индексы таблицы `adkq_membergroup_access`
--
ALTER TABLE `adkq_membergroup_access`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `adkq_membergroup_names`
--
ALTER TABLE `adkq_membergroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `membergroup_names_name_unique` (`name`);

--
-- Индексы таблицы `adkq_member_groups`
--
ALTER TABLE `adkq_member_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_group_member` (`user_group`,`member`);

--
-- Индексы таблицы `adkq_migrations_install`
--
ALTER TABLE `adkq_migrations_install`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `adkq_permissions`
--
ALTER TABLE `adkq_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `adkq_permissions_groups`
--
ALTER TABLE `adkq_permissions_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `adkq_role_permissions`
--
ALTER TABLE `adkq_role_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `adkq_site_content`
--
ALTER TABLE `adkq_site_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `typeidx` (`type`),
  ADD KEY `aliasidx` (`alias`),
  ADD KEY `parent` (`parent`),
  ADD KEY `pub_unpub_published` (`pub_date`,`unpub_date`,`published`),
  ADD KEY `pub_unpub` (`pub_date`,`unpub_date`),
  ADD KEY `unpub` (`unpub_date`),
  ADD KEY `pub` (`pub_date`);
ALTER TABLE `adkq_site_content` ADD FULLTEXT KEY `content_ft_idx` (`pagetitle`,`description`,`content`);

--
-- Индексы таблицы `adkq_site_content_categories`
--
ALTER TABLE `adkq_site_content_categories`
  ADD UNIQUE KEY `link` (`doc`,`category`) USING BTREE,
  ADD KEY `doc` (`doc`),
  ADD KEY `category` (`category`);

--
-- Индексы таблицы `adkq_site_content_closure`
--
ALTER TABLE `adkq_site_content_closure`
  ADD PRIMARY KEY (`closure_id`);

--
-- Индексы таблицы `adkq_site_htmlsnippets`
--
ALTER TABLE `adkq_site_htmlsnippets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `adkq_site_modules`
--
ALTER TABLE `adkq_site_modules`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `adkq_site_module_access`
--
ALTER TABLE `adkq_site_module_access`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `adkq_site_module_depobj`
--
ALTER TABLE `adkq_site_module_depobj`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `adkq_site_plugins`
--
ALTER TABLE `adkq_site_plugins`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `adkq_site_plugin_events`
--
ALTER TABLE `adkq_site_plugin_events`
  ADD PRIMARY KEY (`pluginid`,`evtid`);

--
-- Индексы таблицы `adkq_site_snippets`
--
ALTER TABLE `adkq_site_snippets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `adkq_site_templates`
--
ALTER TABLE `adkq_site_templates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `adkq_site_tmplvars`
--
ALTER TABLE `adkq_site_tmplvars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indx_rank` (`rank`);

--
-- Индексы таблицы `adkq_site_tmplvar_access`
--
ALTER TABLE `adkq_site_tmplvar_access`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `adkq_site_tmplvar_contentvalues`
--
ALTER TABLE `adkq_site_tmplvar_contentvalues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_tvid_contentid` (`tmplvarid`,`contentid`),
  ADD KEY `idx_tmplvarid` (`tmplvarid`),
  ADD KEY `idx_id` (`contentid`);
ALTER TABLE `adkq_site_tmplvar_contentvalues` ADD FULLTEXT KEY `content_ft_idx` (`value`);

--
-- Индексы таблицы `adkq_site_tmplvar_templates`
--
ALTER TABLE `adkq_site_tmplvar_templates`
  ADD PRIMARY KEY (`tmplvarid`,`templateid`);

--
-- Индексы таблицы `adkq_system_eventnames`
--
ALTER TABLE `adkq_system_eventnames`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `system_eventnames_name_unique` (`name`);

--
-- Индексы таблицы `adkq_system_settings`
--
ALTER TABLE `adkq_system_settings`
  ADD PRIMARY KEY (`setting_name`);

--
-- Индексы таблицы `adkq_users`
--
ALTER TABLE `adkq_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_users_username_unique` (`username`);

--
-- Индексы таблицы `adkq_user_attributes`
--
ALTER TABLE `adkq_user_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `web_user_attributes_internalkey_index` (`internalKey`);

--
-- Индексы таблицы `adkq_user_roles`
--
ALTER TABLE `adkq_user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `adkq_user_role_vars`
--
ALTER TABLE `adkq_user_role_vars`
  ADD PRIMARY KEY (`tmplvarid`,`roleid`);

--
-- Индексы таблицы `adkq_user_settings`
--
ALTER TABLE `adkq_user_settings`
  ADD PRIMARY KEY (`user`,`setting_name`),
  ADD KEY `user_settings_user_index` (`user`),
  ADD KEY `setting_name` (`setting_name`);

--
-- Индексы таблицы `adkq_user_values`
--
ALTER TABLE `adkq_user_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_values_tmplvarid_userid_unique` (`tmplvarid`,`userid`),
  ADD KEY `user_values_tmplvarid_index` (`tmplvarid`),
  ADD KEY `user_values_userid_index` (`userid`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `adkq_active_user_locks`
--
ALTER TABLE `adkq_active_user_locks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `adkq_categories`
--
ALTER TABLE `adkq_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `adkq_commerce_currency`
--
ALTER TABLE `adkq_commerce_currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `adkq_commerce_orders`
--
ALTER TABLE `adkq_commerce_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `adkq_commerce_order_history`
--
ALTER TABLE `adkq_commerce_order_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `adkq_commerce_order_payments`
--
ALTER TABLE `adkq_commerce_order_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `adkq_commerce_order_products`
--
ALTER TABLE `adkq_commerce_order_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `adkq_commerce_order_statuses`
--
ALTER TABLE `adkq_commerce_order_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `adkq_documentgroup_names`
--
ALTER TABLE `adkq_documentgroup_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `adkq_document_groups`
--
ALTER TABLE `adkq_document_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `adkq_event_log`
--
ALTER TABLE `adkq_event_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT для таблицы `adkq_list_catagory_table`
--
ALTER TABLE `adkq_list_catagory_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `adkq_list_value_table`
--
ALTER TABLE `adkq_list_value_table`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `adkq_manager_log`
--
ALTER TABLE `adkq_manager_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT для таблицы `adkq_membergroup_access`
--
ALTER TABLE `adkq_membergroup_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `adkq_membergroup_names`
--
ALTER TABLE `adkq_membergroup_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `adkq_member_groups`
--
ALTER TABLE `adkq_member_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `adkq_migrations_install`
--
ALTER TABLE `adkq_migrations_install`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT для таблицы `adkq_permissions`
--
ALTER TABLE `adkq_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT для таблицы `adkq_permissions_groups`
--
ALTER TABLE `adkq_permissions_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `adkq_role_permissions`
--
ALTER TABLE `adkq_role_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT для таблицы `adkq_site_content`
--
ALTER TABLE `adkq_site_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT для таблицы `adkq_site_content_closure`
--
ALTER TABLE `adkq_site_content_closure`
  MODIFY `closure_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `adkq_site_htmlsnippets`
--
ALTER TABLE `adkq_site_htmlsnippets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `adkq_site_modules`
--
ALTER TABLE `adkq_site_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `adkq_site_module_access`
--
ALTER TABLE `adkq_site_module_access`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `adkq_site_module_depobj`
--
ALTER TABLE `adkq_site_module_depobj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `adkq_site_plugins`
--
ALTER TABLE `adkq_site_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `adkq_site_snippets`
--
ALTER TABLE `adkq_site_snippets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `adkq_site_templates`
--
ALTER TABLE `adkq_site_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `adkq_site_tmplvars`
--
ALTER TABLE `adkq_site_tmplvars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `adkq_site_tmplvar_access`
--
ALTER TABLE `adkq_site_tmplvar_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `adkq_site_tmplvar_contentvalues`
--
ALTER TABLE `adkq_site_tmplvar_contentvalues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=484;

--
-- AUTO_INCREMENT для таблицы `adkq_system_eventnames`
--
ALTER TABLE `adkq_system_eventnames`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT для таблицы `adkq_users`
--
ALTER TABLE `adkq_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `adkq_user_attributes`
--
ALTER TABLE `adkq_user_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `adkq_user_roles`
--
ALTER TABLE `adkq_user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `adkq_user_values`
--
ALTER TABLE `adkq_user_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `adkq_commerce_order_history`
--
ALTER TABLE `adkq_commerce_order_history`
  ADD CONSTRAINT `commerce_order_history_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `adkq_commerce_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `adkq_commerce_order_payments`
--
ALTER TABLE `adkq_commerce_order_payments`
  ADD CONSTRAINT `commerce_order_payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `adkq_commerce_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `adkq_commerce_order_products`
--
ALTER TABLE `adkq_commerce_order_products`
  ADD CONSTRAINT `commerce_order_products_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `adkq_commerce_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
