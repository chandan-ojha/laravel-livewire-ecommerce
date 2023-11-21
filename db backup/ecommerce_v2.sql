-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 21, 2023 at 04:21 AM
-- Server version: 5.7.33
-- PHP Version: 8.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Aarong', 'aarong', '2023-07-04 00:18:32', '2023-11-18 00:49:47'),
(2, 'Cats Eye', 'cats-eye', '2023-07-04 00:18:32', '2023-11-18 00:50:03'),
(3, 'Richman', 'richman', '2023-07-04 00:18:32', '2023-11-18 00:50:16'),
(4, 'Yellow', 'yellow', '2023-07-04 00:18:32', '2023-11-18 00:50:30'),
(5, 'Ecstasy', 'ecstasy', '2023-07-04 00:18:32', '2023-11-18 00:50:43'),
(8, 'Freeland', 'freeland', '2023-11-18 00:50:57', '2023-11-18 00:50:57'),
(9, 'Dorjibari', 'dorjibari', '2023-11-18 00:51:09', '2023-11-18 00:51:09'),
(10, 'Le Reve', 'le-reve', '2023-11-18 00:51:22', '2023-11-18 00:51:22');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiry_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '1,2,3,5,8,9,10', 5, NULL, '2023-11-18 01:01:43');

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_02_15_123315_create_sessions_table', 1),
(7, '2021_02_20_143757_create_categories_table', 1),
(8, '2021_02_20_144024_create_products_table', 1),
(9, '2021_03_17_132110_create_home_sliders_table', 1),
(10, '2021_03_18_083027_create_home_categories_table', 1),
(11, '2021_03_19_041313_create_sales_table', 1),
(12, '2021_04_01_062849_create_coupons_table', 1),
(13, '2021_04_05_032832_add_expiry_date_to_coupons_table', 1),
(14, '2021_04_09_111339_create_orders_table', 1),
(15, '2021_04_09_111722_create_order_items_table', 1),
(16, '2021_04_09_111828_create_shippings_table', 1),
(17, '2021_04_09_112108_create_transactions_table', 1),
(18, '2021_07_12_032530_add_delivered_canceled_date_to_orders_table', 1),
(19, '2021_07_12_130015_create_reviews_table', 1),
(20, '2021_07_12_133608_add_rstatus_to_order_items_table', 1),
(21, '2021_07_14_024758_create_contacts_table', 1),
(22, '2021_07_14_104340_create_settings_table', 1),
(23, '2021_08_08_125039_create_shoppingcart_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','delivered','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `status`, `is_shipping_different`, `created_at`, `updated_at`, `delivered_date`, `canceled_date`) VALUES
(1, 1, 630.00, 0.00, 132.30, 762.30, 'jyt', 'gj', '111111111111111111111111', 'chandan@gmail.com', 'trh', 'hf', 'ghg', 'ghhg', 'hgfh', '1213', 'ordered', 0, '2023-07-04 08:01:45', '2023-07-04 08:01:45', NULL, NULL),
(2, 1, 240.00, 0.00, 50.40, 290.40, 'chandan', 'ojha', '01797348221', 'test@gmail.com', 'mirpur-1', 'mirpur-1', 'dhaka', 'Dhaka', 'Bangladesh', '1216', 'ordered', 0, '2023-07-04 08:04:41', '2023-07-04 08:04:41', NULL, NULL),
(3, 1, 240.00, 0.00, 50.40, 290.40, 'chandan', 'ojha', '0123456789', 'chandan@gmail.com', 'mirpur-1', 'mirpur-1', 'dhaka', 'Dhaka', 'Bangladesh', '1216', 'ordered', 0, '2023-07-04 08:23:51', '2023-07-04 08:23:51', NULL, NULL),
(4, 2, 830.00, 0.00, 174.30, 1004.30, 'Chandan', 'Ojha', '123456789', 'chandan@gmail.com', 'mirpur-1', 'mirpur-1', 'dhaka', 'Dhaka', 'Bangladesh', '1216', 'ordered', 0, '2023-07-04 08:42:30', '2023-07-04 08:42:30', NULL, NULL),
(5, 2, 350.00, 0.00, 73.50, 423.50, 'chandan', 'ojha', '123456789', 'chandanojha917@gmail.com', 'mirpur-1', 'mirpur-1', 'dhaka', 'Dhaka', 'Bangladesh', '1216', 'ordered', 0, '2023-07-04 08:44:36', '2023-07-04 08:44:36', NULL, NULL),
(6, 2, 350.00, 0.00, 73.50, 423.50, 'chandan', 'ojha', '123456789023456', 'chandanojha917@gmail.com', 'mirpur-1', 'mirpur-1', 'dhaka', 'Dhaka', 'Bangladesh', '1216', 'ordered', 0, '2023-07-04 08:57:21', '2023-07-04 08:57:21', NULL, NULL),
(7, 2, 590.00, 0.00, 123.90, 713.90, 'chandan', 'ojha', '1234567888888', 'chandanojha917@gmail.com', 'mirpur-1', 'mirpur-1', 'dhaka', 'Dhaka', 'Bangladesh', '1216', 'ordered', 0, '2023-07-04 20:55:35', '2023-07-04 20:55:35', NULL, NULL),
(8, 3, 460.00, 0.00, 96.60, 556.60, 'test', 'test', '123456782', 'test@gmail.com', 'mirpur-1', 'mirpur-1', 'dhaka', 'Dhaka', 'Bangladesh', '1216', 'ordered', 0, '2023-07-04 21:57:22', '2023-07-04 21:57:22', NULL, NULL),
(9, 3, 240.00, 0.00, 50.40, 290.40, 'chandan', 'ojha', '123456789', 'chandanojha917@gmail.com', 'mirpur-1', 'mirpur-1', 'dhaka', 'Dhaka', 'Bangladesh', '1216', 'ordered', 0, '2023-07-04 22:34:48', '2023-07-04 22:34:48', NULL, NULL),
(10, 3, 240.00, 0.00, 50.40, 290.40, 'chandan', 'ojha', '123456789', 'chandanojha917@gmail.com', 'mirpur-1', 'mirpur-1', 'dhaka', 'Dhaka', 'Bangladesh', '1216', 'ordered', 0, '2023-07-04 22:35:06', '2023-07-04 22:35:06', NULL, NULL),
(11, 3, 240.00, 0.00, 50.40, 290.40, 'chandan', 'ojha', '1234567890', 'chandanojha917@gmail.com', 'mirpur-1', 'mirpur-1', 'dhaka', 'Dhaka', 'Bangladesh', '1216', 'ordered', 0, '2023-07-04 22:36:38', '2023-07-04 22:36:38', NULL, NULL),
(12, 3, 240.00, 0.00, 50.40, 290.40, 'chandan', 'ojha', '1234567890', 'chandanojha917@gmail.com', 'mirpur-1', 'mirpur-1', 'dhaka', 'Dhaka', 'Bangladesh', '1216', 'ordered', 0, '2023-07-04 22:39:23', '2023-07-04 22:39:23', NULL, NULL),
(13, 3, 240.00, 0.00, 50.40, 290.40, 'chandan', 'ojha', '1234567890', 'chandan@gmail.com', 'mirpur-1', 'mirpur-1', 'dhaka', 'Dhaka', 'Bangladesh', '1216', 'ordered', 0, '2023-07-04 22:40:08', '2023-07-04 22:40:08', NULL, NULL),
(14, 2, 1019.00, 0.00, 213.99, 1232.99, 'chandan', 'ojha', '123456789', 'chandanojha917@gmail.com', 'mirpur-1', 'mirpur-1', 'dhaka', 'Dhaka', 'Bangladesh', '1216', 'ordered', 0, '2023-07-04 23:01:42', '2023-07-04 23:01:42', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`, `rstatus`) VALUES
(1, 20, 1, 130.00, 3, '2023-07-04 08:01:45', '2023-07-04 08:01:45', 0),
(2, 1, 1, 240.00, 1, '2023-07-04 08:01:45', '2023-07-04 08:01:45', 0),
(3, 1, 2, 240.00, 1, '2023-07-04 08:04:41', '2023-07-04 08:04:41', 0),
(4, 1, 3, 240.00, 1, '2023-07-04 08:23:52', '2023-07-04 08:23:52', 0),
(5, 1, 4, 240.00, 2, '2023-07-04 08:42:30', '2023-07-04 08:42:30', 0),
(6, 2, 4, 350.00, 1, '2023-07-04 08:42:30', '2023-07-04 08:42:30', 0),
(7, 2, 5, 350.00, 1, '2023-07-04 08:44:36', '2023-07-04 08:44:36', 0),
(8, 2, 6, 350.00, 1, '2023-07-04 08:57:21', '2023-07-04 08:57:21', 0),
(9, 2, 7, 350.00, 1, '2023-07-04 20:55:35', '2023-07-04 20:55:35', 0),
(10, 1, 7, 240.00, 1, '2023-07-04 20:55:35', '2023-07-04 20:55:35', 0),
(11, 15, 8, 460.00, 1, '2023-07-04 21:57:22', '2023-07-04 21:57:22', 0),
(12, 1, 9, 240.00, 1, '2023-07-04 22:34:48', '2023-07-04 22:34:48', 0),
(13, 1, 10, 240.00, 1, '2023-07-04 22:35:06', '2023-07-04 22:35:06', 0),
(14, 1, 11, 240.00, 1, '2023-07-04 22:36:38', '2023-07-04 22:36:38', 0),
(15, 1, 12, 240.00, 1, '2023-07-04 22:39:23', '2023-07-04 22:39:23', 0),
(16, 1, 13, 240.00, 1, '2023-07-04 22:40:08', '2023-07-04 22:40:08', 0),
(17, 2, 14, 350.00, 1, '2023-07-04 23:01:42', '2023-07-04 23:01:42', 0),
(18, 1, 14, 240.00, 1, '2023-07-04 23:01:42', '2023-07-04 23:01:42', 0),
(19, 8, 14, 429.00, 1, '2023-07-04 23:01:42', '2023-07-04 23:01:42', 0);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'quisquam itaque', 'quisquam-itaque', 'Sint excepturi aperiam porro id sed assumenda quia. Ea ullam quod totam nihil recusandae. Ad accusantium perferendis fugiat qui.', 'Rem et dignissimos sequi voluptas modi. Et quia corrupti sed animi. Eius earum saepe id et. Adipisci itaque ipsum dolorem similique alias qui doloribus. Soluta ea expedita fugit est. Quas qui soluta incidunt illo numquam veritatis aut et. Veritatis similique animi et at aut nobis recusandae sit. Id doloribus repellat quis in. Occaecati ullam quaerat tempore amet. Rerum laudantium delectus eum ex. Dolores sunt nesciunt rem laboriosam.', 240.00, NULL, 'DIGI249', 'instock', 0, 176, 'digital_13.jpg', NULL, 2, '2023-07-04 00:18:32', '2023-07-04 00:18:32'),
(2, 'distinctio consequuntur', 'distinctio-consequuntur', 'Qui nulla commodi mollitia provident. Est voluptatum harum aliquam dicta. Non ab minus culpa omnis illo nam expedita.', 'Et vel cupiditate ut quis quos. Cum dolorum veritatis dolores quia numquam reiciendis. Tempora ut est unde quasi nisi veritatis. Animi qui quibusdam enim repellendus deleniti. Ducimus incidunt sunt eveniet enim voluptate fugiat numquam autem. Officiis provident autem mollitia ratione quia. Autem atque voluptatum nostrum quisquam quisquam. Error ut sed voluptatum. Possimus quod ullam sapiente numquam sint repellendus non voluptas. Voluptatibus ab et praesentium tenetur est natus.', 350.00, NULL, 'DIGI299', 'instock', 0, 190, 'digital_20.jpg', NULL, 1, '2023-07-04 00:18:32', '2023-07-04 00:18:32'),
(3, 'incidunt labore', 'incidunt-labore', 'Distinctio deserunt et harum ipsam aut velit. Officiis adipisci nihil exercitationem quia. Dolor harum ut hic at iste maiores. Possimus dolorum magnam vero at commodi sed.', 'Natus ut repellendus itaque porro rerum voluptatem impedit nisi. Architecto incidunt quia sequi inventore porro sit et. Blanditiis suscipit fuga et velit. Et quas ratione eos voluptas debitis ullam. Eos iusto esse reiciendis ut ipsum aliquid. Sed consectetur harum eos adipisci repudiandae dolorem. Et explicabo est porro. Totam rerum dolor nihil. Aut placeat et voluptatum qui. Dolores natus est esse earum. Aut officia minus quia necessitatibus eius.', 444.00, NULL, 'DIGI407', 'instock', 0, 167, 'digital_12.jpg', NULL, 4, '2023-07-04 00:18:32', '2023-07-04 00:18:32'),
(4, 'exercitationem sapiente', 'exercitationem-sapiente', 'Atque amet aspernatur laboriosam quo dolores distinctio. In aliquam odit illo quisquam et eum. Sint est eligendi a itaque at reiciendis. Quam dolores necessitatibus qui assumenda et ipsam vel.', 'Rerum inventore sunt fuga odio est odio. Et quia aut sed. Similique voluptatem dolores sint sit vitae dolor. Numquam commodi in ut occaecati molestiae optio. Illum molestias ullam tempore minus suscipit. Dolorem omnis qui excepturi veritatis. Praesentium magni occaecati nisi tenetur eius. Aut dolores voluptatum rerum facilis at. Facere ex laudantium non assumenda aut sunt.', 253.00, NULL, 'DIGI223', 'instock', 0, 110, 'digital_18.jpg', NULL, 3, '2023-07-04 00:18:32', '2023-07-04 00:18:32'),
(5, 'numquam ut', 'numquam-ut', 'Ipsum in unde numquam libero nihil similique. Explicabo non laborum in voluptatem accusamus aut et. Ea eius velit iusto. Sequi nisi nulla cum mollitia dolor ut.', 'Fuga voluptas eum fugiat temporibus quia quia. Doloribus error cupiditate cum sit aliquam qui. Illum aut et occaecati provident alias voluptates. Explicabo tempore qui itaque eius optio. Perferendis earum et fugiat enim eum cum dignissimos. Ut at illum iure eos sequi qui laborum. Accusantium et voluptas esse id aliquid aut. Consequatur laudantium voluptatem et labore accusantium at omnis. Est velit aliquid autem voluptas quam nihil. Deserunt vitae adipisci enim.', 480.00, NULL, 'DIGI190', 'instock', 0, 102, 'digital_22.jpg', NULL, 5, '2023-07-04 00:18:32', '2023-07-04 00:18:32'),
(6, 'minus iste', 'minus-iste', 'Ducimus quia ut et. Repellendus dolorem harum accusamus officiis accusantium. Nesciunt officia provident perferendis iure nemo qui provident dicta. Sit laboriosam tempore laborum id temporibus odio.', 'Omnis aut ullam provident quisquam autem. Qui odio ullam ipsum dolorum nam. Id hic cupiditate et aut dignissimos vel quos. Eius voluptas asperiores suscipit aut inventore sed. Ducimus odio natus qui quae sapiente. Pariatur non nesciunt incidunt ad. Odio porro quasi dolorem voluptatem sint assumenda. Iste optio qui voluptatibus est temporibus voluptatibus quasi. Explicabo non illum excepturi rerum sit. Id sapiente adipisci hic sed omnis qui autem.', 275.00, NULL, 'DIGI139', 'instock', 0, 138, 'digital_2.jpg', NULL, 3, '2023-07-04 00:18:32', '2023-07-04 00:18:32'),
(7, 'dolorem dolorum', 'dolorem-dolorum', 'Itaque dignissimos odio veritatis corporis adipisci nisi quia et. Est eveniet sed eos ipsa soluta quia. Sint quia totam atque est reiciendis omnis. Quis earum fugit et.', 'Sunt eum non aperiam et repellat aperiam. Et animi neque est fuga quis consequuntur atque repellendus. Velit hic laboriosam aut voluptatem voluptatem culpa praesentium. Voluptatem velit autem molestiae. Laboriosam et ad quia quisquam aut. Est labore voluptatem cum placeat. Ducimus quod reprehenderit eum autem. Repellat non dolore ut. Odio quae quasi voluptatem repellendus dignissimos. Laudantium sapiente sint architecto adipisci. Et nisi architecto nulla deserunt quia hic odit molestiae.', 259.00, NULL, 'DIGI335', 'instock', 0, 188, 'digital_1.jpg', NULL, 5, '2023-07-04 00:18:32', '2023-07-04 00:18:32'),
(8, 'alias delectus', 'alias-delectus', 'Ex minima saepe inventore officia soluta earum et. Ea error voluptatibus ipsum omnis.', 'Porro quia eos qui qui molestias omnis. Fuga quasi quaerat quisquam eos dolore distinctio eos. Dolores excepturi minima aut qui eligendi excepturi facilis. Blanditiis illo voluptates est. Cumque nemo temporibus accusamus earum. Eveniet in nulla rerum animi nihil qui eum. Velit sint ut similique corrupti tempora sunt. Dolores vero et cupiditate molestiae animi. Aut nostrum consequatur officia ipsa reiciendis assumenda et fugit.', 429.00, NULL, 'DIGI343', 'instock', 0, 117, 'digital_16.jpg', NULL, 1, '2023-07-04 00:18:32', '2023-07-04 00:18:32'),
(9, 'sed iure', 'sed-iure', 'Culpa fugit eum facere. Molestiae consequatur omnis non in. Accusamus omnis ut quia soluta enim non.', 'Voluptate sapiente qui dolorem nobis laboriosam. Est quasi voluptate repudiandae architecto. Autem odio ut quidem nihil recusandae quo. Repellat autem amet labore voluptatibus. Autem illum enim voluptatem velit iusto voluptatem. Placeat reiciendis voluptate assumenda quasi. Enim laudantium tempore autem inventore. Maiores reiciendis qui ea et. Iste enim veritatis nihil quod sed. Qui saepe ex ut quia facere consequatur ipsum. Rerum vel iste in voluptates debitis corrupti libero.', 236.00, NULL, 'DIGI317', 'instock', 0, 186, 'digital_21.jpg', NULL, 2, '2023-07-04 00:18:32', '2023-07-04 00:18:32'),
(10, 'possimus nihil', 'possimus-nihil', 'Quia at ut veritatis voluptate id maxime. Deleniti fugiat ex non voluptas repellat. Dolores omnis quae exercitationem debitis aut. Quis aut nemo id eum omnis.', 'Beatae iusto deserunt sed nobis ea. A aut accusamus accusantium odio autem dolores voluptatem. Fugiat blanditiis nostrum est pariatur. Expedita quia odit qui ut est ad. Recusandae maxime enim corrupti rerum. Optio consequuntur et officia corrupti nisi dolore neque. Adipisci praesentium non ut odio. Atque et repudiandae quia omnis. Nisi minus explicabo hic quia temporibus alias qui. Tempore ut nemo ut ut illum quidem.', 232.00, NULL, 'DIGI364', 'instock', 0, 141, 'digital_8.jpg', NULL, 2, '2023-07-04 00:18:32', '2023-07-04 00:18:32'),
(11, 'omnis voluptates', 'omnis-voluptates', 'Consequatur qui corrupti quis fugiat nobis dolorum ullam. Incidunt illum ipsam delectus vero.', 'Laboriosam distinctio explicabo sunt dolorem a. Fuga hic aut pariatur sit quia quas. Nostrum esse vel quisquam quibusdam alias repudiandae veritatis. Et sit corporis rerum corporis facilis. Quo cum consequatur in vel cumque. Libero et voluptate commodi. Et a aut odit sunt.', 151.00, NULL, 'DIGI184', 'instock', 0, 129, 'digital_7.jpg', NULL, 3, '2023-07-04 00:18:32', '2023-07-04 00:18:32'),
(12, 'magnam illo', 'magnam-illo', 'Quaerat esse neque magni voluptate reiciendis delectus similique. Dolorem soluta distinctio numquam provident eveniet occaecati vitae. Velit id officia expedita ipsa. Vel enim at sit.', 'Corporis fugiat vero nesciunt sed esse modi quia. Architecto mollitia excepturi ut sint. Quo ab et illum. Adipisci officia molestiae vel voluptas natus sint. Placeat ea rerum facere voluptate laborum sed totam. Commodi fugiat dignissimos ad ut quibusdam voluptas quas. Minima inventore id rerum illo eaque quibusdam beatae. Et sed aut velit. Optio autem numquam quisquam pariatur est. Dolorum quod eos provident est.', 187.00, NULL, 'DIGI316', 'instock', 0, 188, 'digital_3.jpg', NULL, 5, '2023-07-04 00:18:32', '2023-07-04 00:18:32'),
(13, 'facilis reprehenderit', 'facilis-reprehenderit', 'Aut aut deleniti cumque ullam dolores quidem. Natus nulla facere eaque vero cumque quo.', 'Eum mollitia officia rem sapiente at eaque eligendi. Quis corrupti animi perferendis perspiciatis itaque sed. Quo voluptatem sapiente totam autem in. Atque consectetur non aut quis non recusandae. Et minima illum cumque similique. Ad dolorem facilis laboriosam velit aperiam. Earum totam quasi placeat magni nobis.', 338.00, NULL, 'DIGI266', 'instock', 0, 177, 'digital_9.jpg', NULL, 1, '2023-07-04 00:18:32', '2023-07-04 00:18:32'),
(14, 'dignissimos et', 'dignissimos-et', 'Nulla aliquid est ducimus hic et. Ex debitis praesentium totam ut veniam. Quia illum omnis consequatur ut. Eos alias et iste dolorum dolore.', 'Est ut dolorum voluptatem autem consequatur. Provident hic incidunt sapiente iure unde error voluptatum. Voluptatem accusamus blanditiis rerum autem explicabo. Tempore laborum molestiae assumenda et nihil eum. Et facere perferendis sint qui illo quae reiciendis. Sit deleniti officiis minus. Asperiores quis eveniet provident repudiandae. Occaecati sit harum reiciendis ut nam. Sed illo explicabo voluptatibus voluptatem sit. Quia et delectus recusandae quam laborum non iure.', 275.00, NULL, 'DIGI455', 'instock', 0, 122, 'digital_19.jpg', NULL, 5, '2023-07-04 00:18:33', '2023-07-04 00:18:33'),
(15, 'dolores iste', 'dolores-iste', 'Consequuntur porro sapiente sunt enim. Facere itaque qui eaque commodi fuga et possimus alias.', 'Sapiente et similique magni sunt possimus magni. Officia rem illo quis deleniti. Dignissimos non error modi. Rerum veniam quidem et tempora qui placeat qui. Sapiente magnam iure ut sit explicabo eum qui. Aut sed et aut et voluptate nobis consectetur quod. Totam aut quibusdam ducimus. Voluptatem debitis ut voluptatum provident ullam facere omnis. Architecto ut placeat tempore delectus recusandae et molestiae.', 460.00, NULL, 'DIGI444', 'instock', 0, 184, 'digital_10.jpg', NULL, 1, '2023-07-04 00:18:33', '2023-07-04 00:18:33'),
(16, 'distinctio quasi', 'distinctio-quasi', 'Itaque fugiat molestiae reprehenderit perspiciatis. Omnis ut quos voluptas accusamus. Est quas debitis sed eum in eaque harum. Eius unde quos dolor est maiores aut totam at.', 'Eveniet et rerum dolorem cupiditate rerum. Nam tempore vel occaecati non illo qui. Consequatur qui dolore quo eos alias voluptatum fugiat. Porro eveniet aperiam voluptatem impedit excepturi et necessitatibus. Quaerat voluptatem necessitatibus voluptatum sed et quia. Labore mollitia ratione quo id cum. Est sed quia tempora dolorem itaque omnis.', 187.00, NULL, 'DIGI212', 'instock', 0, 161, 'digital_14.jpg', NULL, 3, '2023-07-04 00:18:33', '2023-07-04 00:18:33'),
(17, 'rerum et', 'rerum-et', 'Molestiae et vero fuga hic facilis eum modi. Aut eveniet qui quia natus. Sequi eos id odio assumenda facilis. Recusandae quos voluptatem quod magnam minus hic aut sunt.', 'Perspiciatis consequuntur odio adipisci ipsum qui. Dolorem sapiente reprehenderit iusto ab. Aut velit inventore doloribus eligendi dolor esse. Quas dolores reiciendis et quo error. Voluptas quidem velit quis dolorem harum vel. Sapiente quia esse velit modi nihil. Temporibus doloremque non in.', 327.00, NULL, 'DIGI344', 'instock', 0, 183, 'digital_6.jpg', NULL, 4, '2023-07-04 00:18:33', '2023-07-04 00:18:33'),
(18, 'totam laudantium', 'totam-laudantium', 'Labore a ut suscipit dolor et. Repudiandae quasi nihil illo et reprehenderit sit et sint.', 'Qui quis earum aut ut est aspernatur laboriosam. In omnis in id qui amet iusto. Ipsam dolores doloribus provident perspiciatis nemo aut ut ut. Non autem ut non. Facilis omnis aut consectetur eveniet nemo ipsum. Facilis quas est minima voluptatem rerum non nostrum corrupti. Non vel similique id. Totam ut corporis ab ut. Dolor sit voluptatem eaque voluptatem. Enim molestias dolorem illo beatae soluta quam. Ut delectus eius cum nihil est est.', 197.00, NULL, 'DIGI227', 'instock', 0, 162, 'digital_11.jpg', NULL, 3, '2023-07-04 00:18:33', '2023-07-04 00:18:33'),
(19, 'velit recusandae', 'velit-recusandae', 'Pariatur cum facere aut odio. Ut enim asperiores qui dolorum. Asperiores aut quia non nostrum. Minima fuga unde in in tempore saepe delectus. Est ut accusamus quisquam. Eius et eligendi ut itaque.', 'Odit est eligendi quaerat qui fuga aut sit dolor. Sint illum praesentium deserunt earum doloribus eum explicabo. Quaerat similique sunt natus nisi soluta voluptates. Consequatur consequatur ipsa voluptatem nihil reiciendis tempora. Animi hic illum aliquid exercitationem. Et autem quis iure totam. Non consequatur et at blanditiis nobis. Tempore ut hic voluptatum molestiae. Suscipit laborum soluta quisquam et dolorem quia. Optio consequatur quia alias temporibus dolorem.', 362.00, NULL, 'DIGI369', 'instock', 0, 156, 'digital_17.jpg', NULL, 5, '2023-07-04 00:18:33', '2023-07-04 00:18:33'),
(20, 'aut autem', 'aut-autem', 'Modi nam porro reiciendis quas unde officia exercitationem voluptas. Qui enim soluta voluptatibus omnis et maiores ut. Quia debitis omnis et illum quod numquam rerum consectetur.', 'Nisi et vitae eius dolores rerum. Ea voluptatem debitis voluptas alias repudiandae. Possimus enim omnis similique laboriosam tenetur doloribus vel est. Delectus voluptate hic veniam fuga explicabo illo. Et quis nobis voluptates autem nesciunt corporis voluptatem. Qui reiciendis natus dolorum sint ea. Accusamus omnis autem illum et. Eaque inventore a voluptatibus facere et quo. Quidem unde qui in. Quas ducimus corrupti amet dolorem excepturi quam.', 130.00, NULL, 'DIGI447', 'instock', 0, 107, 'digital_5.jpg', NULL, 1, '2023-07-04 00:18:33', '2023-07-04 00:18:33'),
(21, 'ea occaecati', 'ea-occaecati', 'Aut voluptas impedit sint. Sunt quia fugiat minus quam commodi. Magni neque reprehenderit earum quisquam natus.', 'Voluptas dolor qui et numquam cupiditate atque eum. Hic et praesentium omnis et. Officiis veniam quia quia recusandae. Ducimus ducimus ex non non magni dolores fugit. Quam ullam eligendi debitis voluptatem rerum. Saepe consequuntur quam sequi odio sequi unde laudantium. Qui quis quia voluptatibus temporibus. Laudantium et eaque id sequi dignissimos aspernatur. Voluptas harum a facere unde itaque illum quia. Aliquam amet ab nulla et nostrum.', 313.00, NULL, 'DIGI247', 'instock', 0, 119, 'digital_4.jpg', NULL, 3, '2023-07-04 00:18:33', '2023-07-04 00:18:33'),
(22, 'perferendis ut', 'perferendis-ut', 'Officia porro est molestiae natus. Reprehenderit velit corrupti unde ea. Assumenda inventore cum vel non cum voluptatibus.', 'Nihil minus dolorem maiores veniam modi cupiditate sunt. Distinctio aut suscipit quaerat sint aut non quia rerum. Esse reiciendis consequatur reprehenderit qui est nostrum nostrum. Qui autem ut occaecati excepturi facilis. Ipsum sit qui praesentium dolorum mollitia. Vero reprehenderit et enim optio nobis beatae voluptatem qui.', 326.00, NULL, 'DIGI151', 'instock', 0, 156, 'digital_15.jpg', NULL, 2, '2023-07-04 00:18:33', '2023-07-04 00:18:33');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
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
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6ZaHSTxwi0a5QtwH7ijQdmt9X88rr9m4qMvOTY9i', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoid1hIZnpaM0t5OHFhclFlYlFacFNoYXBMRFQzcGRCa1R5MDlOWW9FaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NDoiY2FydCI7YToxOntzOjg6Indpc2hsaXN0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTowOnt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO319fQ==', 1700540005),
('cCuZ5zdr9vKLcEt7TV849iOxQQxrR8GZtcnjOo3F', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWxLbjNna3pLWHZHSFNQUEZPQ0czZ05ZcWNsZzRnb1FHbUhCYURpZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG9wIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1700289798),
('HDmxs3RcSrK8FS7t2CFZ3AGdlgI9xeQEYgYTdiio', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiUUhoN2trOTZQNVVHQ1c3aHpzdDlidHNLbVlhUnJIWmhWZUd3ek8zdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG9wIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJEh2dWFWM3ROZTFRM3I0bXVBcWhaTy5ySFd3V2tNSWtTL256STA3MVdKYU1zZWp4blFWZEtLIjtzOjQ6ImNhcnQiO2E6Mjp7czo0OiJjYXJ0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YToxOntzOjMyOiIwMjdjOTEzNDFmZDVjZjRkMjU3OWI0OWM0YjZhOTBkYSI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjk6e3M6NToicm93SWQiO3M6MzI6IjAyN2M5MTM0MWZkNWNmNGQyNTc5YjQ5YzRiNmE5MGRhIjtzOjI6ImlkIjtpOjE7czozOiJxdHkiO2k6MTtzOjQ6Im5hbWUiO3M6MTU6InF1aXNxdWFtIGl0YXF1ZSI7czo1OiJwcmljZSI7ZDoyNDA7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6MDp7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7czoxODoiQXBwXE1vZGVsc1xQcm9kdWN0IjtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AdGF4UmF0ZSI7aToyMTtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AaXNTYXZlZCI7YjowO319czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjg6Indpc2hsaXN0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YToxOntzOjMyOiIwMjdjOTEzNDFmZDVjZjRkMjU3OWI0OWM0YjZhOTBkYSI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjk6e3M6NToicm93SWQiO3M6MzI6IjAyN2M5MTM0MWZkNWNmNGQyNTc5YjQ5YzRiNmE5MGRhIjtzOjI6ImlkIjtpOjE7czozOiJxdHkiO2k6MTtzOjQ6Im5hbWUiO3M6MTU6InF1aXNxdWFtIGl0YXF1ZSI7czo1OiJwcmljZSI7ZDoyNDA7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6MDp7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7czoxODoiQXBwXE1vZGVsc1xQcm9kdWN0IjtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AdGF4UmF0ZSI7aToyMTtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AaXNTYXZlZCI7YjowO319czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO319czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkSHZ1YVYzdE5lMVEzcjRtdUFxaFpPLnJIV3dXa01Ja1MvbnpJMDcxV0phTXNlanhuUVZkS0siO3M6ODoiY2hlY2tvdXQiO2E6NDp7czo4OiJkaXNjb3VudCI7aTowO3M6ODoic3VidG90YWwiO3M6NjoiMjQwLjAwIjtzOjM6InRheCI7czo1OiI1MC40MCI7czo1OiJ0b3RhbCI7czo2OiIyOTAuNDAiO319', 1700294734);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twiter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone`, `phone2`, `address`, `map`, `twiter`, `facebook`, `pinterest`, `instagram`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'test@gmail.com', '01797348221', '01797348221', 'mirpur-1', 'test', 'test', 'test', 'test', 'test', 'test', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('chandan@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";s:2:\"id\";i:1;s:3:\"qty\";i:1;s:4:\"name\";s:15:\"quisquam itaque\";s:5:\"price\";d:240;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-11-18 02:05:34', NULL),
('chandan@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";s:2:\"id\";i:1;s:3:\"qty\";i:1;s:4:\"name\";s:15:\"quisquam itaque\";s:5:\"price\";d:240;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-11-18 02:05:34', NULL),
('chandanojha917@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-07-04 23:43:15', NULL),
('chandanojha917@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-07-04 23:43:15', NULL),
('test@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";s:2:\"id\";i:1;s:3:\"qty\";i:1;s:4:\"name\";s:15:\"quisquam itaque\";s:5:\"price\";d:240;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-07-04 22:32:31', NULL),
('test@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-07-04 22:32:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'cod', 'pending', '2023-07-04 08:23:52', '2023-07-04 08:23:52'),
(2, 2, 4, 'cod', 'pending', '2023-07-04 08:42:30', '2023-07-04 08:42:30'),
(3, 2, 5, 'cod', 'pending', '2023-07-04 08:44:36', '2023-07-04 08:44:36'),
(4, 2, 6, 'cod', 'pending', '2023-07-04 08:57:21', '2023-07-04 08:57:21'),
(5, 2, 7, 'cod', 'pending', '2023-07-04 20:55:35', '2023-07-04 20:55:35'),
(6, 3, 8, 'cod', 'pending', '2023-07-04 21:57:22', '2023-07-04 21:57:22');

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for admin and USR for User or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'chandan', 'chandan@gmail.com', NULL, '$2y$10$HvuaV3tNe1Q3r4muAqhZO.rHWwWkMIkS/nzI071WJaMsejxnQVdKK', NULL, NULL, NULL, NULL, NULL, 'ADM', '2023-07-04 00:28:58', '2023-07-04 00:28:58'),
(2, 'chandan', 'chandanojha917@gmail.com', NULL, '$2y$10$SkG5.hyiceMKXj6Trp7L4.Xb24EhreNFAW6Q8sU.gSbQvFXTGWS5a', NULL, NULL, NULL, NULL, NULL, 'USR', '2023-07-04 08:41:27', '2023-07-04 08:41:27'),
(3, 'Test', 'test@gmail.com', NULL, '$2y$10$NbwjECwTqF0.SGCwv9TzneZE256QcT8XPaB3SkbJZfOtFpr4SVVeu', NULL, NULL, NULL, NULL, NULL, 'USR', '2023-07-04 21:56:36', '2023-07-04 21:56:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_order_item_id_foreign` (`order_item_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
