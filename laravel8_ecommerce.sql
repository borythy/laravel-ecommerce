-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 15, 2021 at 03:35 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel8_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupons` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orders` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reports` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alluser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `returnorder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adminuserrole` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(25) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `brand`, `category`, `product`, `slider`, `coupons`, `shipping`, `orders`, `stock`, `reports`, `alluser`, `blog`, `setting`, `returnorder`, `review`, `adminuserrole`, `type`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2021-09-23 03:59:45', '$2y$10$LFDP0VdHXoNIbboGBqIOi.mXrp.IRqHv5qz6SbzwnC2vH8Vj/rijm', NULL, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, 'HA2ykmXoo8zjMCJf1bl5sD0QnIMcg2w5cnY0fnB4wgIJmOz06XuDf5a0ES2z', NULL, '202110130531my-profile.jpg', '2021-09-23 03:59:45', '2021-10-12 22:31:57'),
(2, 'john', 'john@gmail.com', NULL, '$2y$10$7f.IsBusTr.yiaZO7g7pe.LPmNQHWSXUJ7wEMzX2w.eoRWEK3cxGO', '012 456 789', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 'upload/admin_images/1713787604962302.jpg', '2021-10-16 08:20:17', '2021-10-16 08:20:17');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title_kh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug_kh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_details_kh` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `category_id`, `post_title_en`, `post_title_kh`, `post_slug_en`, `post_slug_kh`, `post_image`, `post_details_en`, `post_details_kh`, `created_at`, `updated_at`) VALUES
(1, 1, 'Blog post 1', 'Blog post 1', 'blog-post-1', 'Blog-post-1', 'upload/post/1713742008599817.jpeg', '<p>Post Details English</p>', '<p>Post Details Khmer</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_categories`
--

CREATE TABLE `blog_post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_name_kh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_slug_kh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_post_categories`
--

INSERT INTO `blog_post_categories` (`id`, `blog_category_name_en`, `blog_category_name_kh`, `blog_category_slug_en`, `blog_category_slug_kh`, `created_at`, `updated_at`) VALUES
(1, 'Blog 1', 'Blog 1', 'blog-1', 'Blog-1', '2021-10-15 21:29:17', '2021-10-15 21:29:17'),
(2, 'Blog 2', 'Blog 2', 'blog-2', 'Blog-2', '2021-10-15 08:22:06', '2021-10-15 08:22:06');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_name_kh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug_kh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name_en`, `brand_name_kh`, `brand_slug_en`, `brand_slug_kh`, `brand_image`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', 'សាមសុង', 'samsung', 'សាមសុង', 'upload/brand/1712154082138402.png', NULL, '2021-09-28 07:01:55'),
(2, 'Xiaomi', 'Xiaomi', 'xiaomi', 'xiaomi', 'upload/brand/1712155242331055.png', NULL, '2021-09-28 07:14:40'),
(3, 'Apple', 'Apple', 'apple', 'apple', 'upload/brand/1712154581134346.png', NULL, NULL),
(4, 'Oppo', 'Oppo', 'oppo', 'oppo', 'upload/brand/1712154607848812.png', NULL, NULL),
(5, 'Vivo', 'Vivo', 'vivo', 'vivo', 'upload/brand/1712154624120410.png', NULL, NULL),
(6, 'Huawei', 'Huawei', 'huawei', 'huawei', 'upload/brand/1712154651272997.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_kh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug_kh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name_en`, `category_name_kh`, `category_slug_en`, `category_slug_kh`, `category_icon`, `created_at`, `updated_at`) VALUES
(1, 'Fashion', 'ម៉ូត', 'fashion', 'ម៉ូត', 'fa fa-paw', NULL, '2021-10-05 07:08:50'),
(2, 'Electronics', 'អេឡិចត្រូនិក', 'electronics', 'អេឡិចត្រូនិក', 'fa fa-user', NULL, NULL),
(3, 'Sweet Home', 'ផ្ទះ​ដែល​កក់ក្ដៅ', 'sweet-home', 'ផ្ទះ​ដែល​កក់ក្ដៅ', 'fa fa-shopping-cart', NULL, NULL),
(4, 'Appliances', 'គ្រឿងប្រើប្រាស់', 'appliances', 'គ្រឿងប្រើប្រាស់', 'fa fa-shopping-bag', NULL, '2021-10-05 07:07:24'),
(5, 'Beauty', 'សម្រស់', 'beauty', 'សម្រស់', 'fa fa-laptop', NULL, '2021-10-05 07:08:13');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_discount` int(11) NOT NULL,
  `coupon_validity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_discount`, `coupon_validity`, `status`, `created_at`, `updated_at`) VALUES
(1, 'HAPPY NEW YEAR', 20, '2021-10-31', 1, '2021-10-10 07:55:28', NULL),
(2, 'HAPPY LEARNING', 30, '2021-10-31', 1, '2021-10-10 21:45:56', NULL);

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_09_22_145436_create_sessions_table', 1),
(7, '2021_09_22_155129_create_admins_table', 2),
(8, '2021_09_27_135259_create_brands_table', 3),
(9, '2021_09_28_154444_create_categories_table', 4),
(10, '2021_09_29_110613_create_sub_categories_table', 5),
(11, '2021_09_29_130053_create_sub_sub_categories_table', 6),
(12, '2021_10_01_112454_create_products_table', 7),
(13, '2021_10_01_114153_create_multi_imgs_table', 7),
(14, '2021_10_03_024814_create_sliders_table', 8),
(15, '2021_10_10_034708_create_wishlists_table', 9),
(16, '2021_10_10_135150_create_coupons_table', 10),
(17, '2021_10_10_150134_create_ship_divisions_table', 11),
(18, '2021_10_10_153240_create_ship_districts_table', 12),
(19, '2021_10_11_035825_create_ship_states_table', 13),
(20, '2021_10_12_144715_create_shippings_table', 14),
(21, '2021_10_14_053255_create_orders_table', 15),
(22, '2021_10_14_053446_create_order_items_table', 15),
(23, '2021_10_15_145133_create_blog_post_categories_table', 16),
(24, '2021_10_15_152921_create_blog_posts_table', 17),
(25, '2021_10_16_043512_create_site_settings_table', 18),
(26, '2021_10_16_053300_create_seos_table', 19),
(27, '2021_10_16_081623_create_reviews_table', 20);

-- --------------------------------------------------------

--
-- Table structure for table `multi_imgs`
--

CREATE TABLE `multi_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_imgs`
--

INSERT INTO `multi_imgs` (`id`, `product_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(4, 3, 'upload/products/multi-image/1712970428729065.jpeg', '2021-10-07 07:11:42', NULL),
(5, 4, 'upload/products/multi-image/1712970515530909.jpeg', '2021-10-07 07:13:05', NULL),
(6, 5, 'upload/products/multi-image/1712970573683384.jpeg', '2021-10-07 07:14:01', NULL),
(7, 6, 'upload/products/multi-image/1712970625323582.jpeg', '2021-10-07 07:14:50', NULL),
(8, 1, 'upload/products/multi-image/1713518188995499.jpeg', '2021-10-13 08:16:55', '2021-10-13 08:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmed_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processing_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picked_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipped_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `division_id`, `district_id`, `state_id`, `name`, `email`, `phone`, `post_code`, `notes`, `payment_type`, `payment_method`, `transaction_id`, `currency`, `amount`, `order_number`, `invoice_no`, `order_date`, `order_month`, `order_year`, `confirmed_date`, `processing_date`, `picked_date`, `shipped_date`, `delivered_date`, `cancel_date`, `return_date`, `return_reason`, `return_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 2, 'bory', 'bory@gmail.com', '012666888', 12353, 'cash delivery payment', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 16.00, NULL, 'EOS97846794', '14 October 2021', 'October', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'confirm', '2021-10-14 00:52:27', '2021-10-14 07:57:14'),
(2, 1, 1, 1, 1, 'bory', 'bory@gmail.com', '012666888', 9999, 'Samsung second', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 40.00, NULL, 'EOS18654876', '14 October 2021', 'October', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'pending', '2021-10-14 08:07:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `color`, `size`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Red', 'Small', '2', 10.00, '2021-10-14 00:52:32', NULL),
(2, 2, 1, 'Red', 'Small', '4', 10.00, '2021-10-14 08:07:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('yana@gmail', '$2y$10$cpBzV8wYvTBpJNztLlmYO.FBO6mtgHVrquKqqJzzdZUxWm56xaHIm', '2021-09-26 06:45:20');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_id` int(11) NOT NULL,
  `product_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name_kh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug_kh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_tags_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_tags_kh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_size_kh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color_kh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_descp_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_descp_kh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_descp_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_descp_kh` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_thambnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hot_deals` int(11) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `special_offer` int(11) DEFAULT NULL,
  `special_deals` int(11) DEFAULT NULL,
  `digital_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `product_name_en`, `product_name_kh`, `product_slug_en`, `product_slug_kh`, `product_code`, `product_qty`, `product_tags_en`, `product_tags_kh`, `product_size_en`, `product_size_kh`, `product_color_en`, `product_color_kh`, `selling_price`, `discount_price`, `short_descp_en`, `short_descp_kh`, `long_descp_en`, `long_descp_kh`, `product_thambnail`, `hot_deals`, `featured`, `special_offer`, `special_deals`, `digital_file`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 6, 18, 'Samsung', 'Samsung', 'samsung', 'Samsung', '1233', '2', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Midium,Large', 'Small,Midium,Large', 'Red,Black,Amet', 'Red,Black,Amet', '780', '10', 'Short Description English', 'Short Description Khmer', '<p>Long Description English</p>', '<p>Long Description Khmer</p>', 'upload/products/thambnail/1713518172066447.jpeg', 1, 1, 1, 1, NULL, 1, '2021-10-13 08:30:54', '2021-10-13 08:30:54');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `comment`, `summary`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'test', 'test', 2, '1', '2021-10-16 02:45:02', '2021-10-16 02:46:27'),
(2, 1, 1, 'I like it.', 'Computer', 2, '1', '2021-10-17 01:37:23', '2021-10-17 01:37:40');

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_title`, `meta_author`, `meta_keyword`, `meta_description`, `google_analytics`, `created_at`, `updated_at`) VALUES
(1, 'meta_titles', 'meta_authors', 'meta_keywords', 'meta_descriptions', 'google_analyticss', '2021-10-16 05:50:29', '2021-10-15 22:53:24');

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
('rW6HY7sYFPVrdteGkTV4DtoKGQZKKjezbGtCZ6et', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoibEtGUmI2QU8xT1VFNGhheXVna2UzVFJldU9hS24wVjdGMEM3OHNJViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHA6Ly9sYXJhdmVsLWVjb21tZXJjZS9zdWJzdWJjYXRlZ29yeS9wcm9kdWN0LzMxL2JpZy1zY3JlZW4tdHZzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRMYXQxbi54TlJXWkowVk42NWtVNGoudXlKMmljNklrdEpQZ2Z0OUpkaWtaMlY1UWdJSWMuQyI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkTGF0MW4ueE5SV1pKMFZONjVrVTRqLnV5SjJpYzZJa3RKUGdmdDlKZGlrWjJWNVFnSUljLkMiO30=', 1639555181),
('XN3S7IDLDlDrKKCw5ZLsj2663WAKZx1qQv5sKSIL', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibkdzbnZJaFV2Z3RtYzFManlnVkV2Y3pvWHVsY3ExQVFPdmFxNm9CZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639578621);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` int(11) NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ship_districts`
--

CREATE TABLE `ship_districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_districts`
--

INSERT INTO `ship_districts` (`id`, `division_id`, `district_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'District 1', '2021-10-12 08:37:37', '2021-10-12 08:37:37'),
(2, 1, 'District 2', '2021-10-12 08:37:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_divisions`
--

CREATE TABLE `ship_divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_divisions`
--

INSERT INTO `ship_divisions` (`id`, `division_name`, `created_at`, `updated_at`) VALUES
(1, 'Division 1', '2021-10-12 08:37:08', '2021-10-12 08:37:08'),
(2, 'Division 2', '2021-10-12 08:37:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_states`
--

CREATE TABLE `ship_states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_states`
--

INSERT INTO `ship_states` (`id`, `division_id`, `district_id`, `state_name`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'State 1', '2021-10-12 08:38:00', '2021-10-12 08:38:00'),
(2, 1, 2, 'State 2', '2021-10-12 08:38:41', '2021-10-12 08:38:41');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `logo`, `phone_one`, `phone_two`, `email`, `company_name`, `company_address`, `facebook`, `twitter`, `linkedin`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'upload/logo/1713761064921266.png', '12 999 887', '12 999 888', 'support@easyonlineshop.com', 'Easy Online Shop', 'ThemesGround, 789 Main rd, Anytown, CA 12345 USA', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.linkedin.com', 'http://www.youtube.com', NULL, '2021-10-16 00:38:32');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `slider_img`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Slide 1', 'upload/slider/1712793369647413.jpg', 'Description 1', 1, '2021-10-05 08:17:26', NULL),
(2, 'Slide 2', 'upload/slider/1712793382078462.jpg', 'Description 2', 1, '2021-10-05 08:17:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_name_kh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_slug_kh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `subcategory_name_en`, `subcategory_name_kh`, `subcategory_slug_en`, `subcategory_slug_kh`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mans Top Ware', 'សំលៀកបំពាក់បុរសកំពូល', 'mans-top-ware', 'សំលៀកបំពាក់បុរសកំពូល', NULL, NULL),
(2, 1, 'Mans Bottom Ware', 'សំលៀកបំពាក់បុរសខាងក្រោម', 'mans-bottom-ware', 'សំលៀកបំពាក់បុរសខាងក្រោម', NULL, NULL),
(3, 1, 'Mans Footwear', 'ស្បែកជើងបុរស', 'mans-footwear', 'ស្បែកជើងបុរស', NULL, NULL),
(4, 1, 'Women Footwear', 'ស្បែកជើងស្ត្រី', 'women-footwear', 'ស្បែកជើងស្ត្រី', NULL, NULL),
(5, 2, 'Computer Peripherals', 'គ្រឿងកុំព្យូទ័រ', 'computer-peripherals', 'គ្រឿងកុំព្យូទ័រ', NULL, NULL),
(6, 2, 'Mobile Accessory', 'គ្រឿងបន្លាស់ទូរស័ព្ទ', 'mobile-accessory', 'គ្រឿងបន្លាស់ទូរស័ព្ទ', NULL, NULL),
(7, 2, 'Gaming', 'ហ្គេម', 'gaming', 'ហ្គេម', NULL, NULL),
(8, 3, 'Home Furnishings', 'គ្រឿងសង្ហារិមក្នុងផ្ទះ', 'home-furnishings', 'គ្រឿងសង្ហារិមក្នុងផ្ទះ', NULL, NULL),
(9, 3, 'Living Room', 'បន្ទប់ទទួលភ្ញៀវ', 'living-room', 'បន្ទប់ទទួលភ្ញៀវ', NULL, NULL),
(10, 3, 'Home Decor', 'ការតុបតែងគេហដ្ឋាន', 'home-decor', 'ការតុបតែងគេហដ្ឋាន', NULL, NULL),
(11, 4, 'Televisions', 'ទូរទស្សន៍', 'televisions', 'ទូរទស្សន៍', NULL, NULL),
(12, 4, 'Washing Machines', 'ម៉ាស៊ីនបោកគក់', 'washing-machines', 'ម៉ាស៊ីនបោកគក់', NULL, NULL),
(13, 4, 'Refrigerators', 'ទូរទឹកកក', 'refrigerators', 'ទូរទឹកកក', NULL, NULL),
(14, 5, 'Beauty and Personal Care', 'សម្រស់និងការថែទាំផ្ទាល់ខ្លួន', 'beauty-and-personal-care', 'សម្រស់និងការថែទាំផ្ទាល់ខ្លួន', NULL, NULL),
(15, 5, 'Food and Drinks', 'អាហារ និងភេសជ្ជៈ', 'food-and-drinks', 'អាហារ-និងភេសជ្ជៈ', NULL, NULL),
(16, 5, 'Bady Care', 'បាឌីឃែរ', 'bady-care', 'បាឌីឃែរ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

CREATE TABLE `sub_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_name_kh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_slug_kh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_sub_categories`
--

INSERT INTO `sub_sub_categories` (`id`, `category_id`, `subcategory_id`, `subsubcategory_name_en`, `subsubcategory_name_kh`, `subsubcategory_slug_en`, `subsubcategory_slug_kh`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Mans Tshirt', 'អាវយឺតបុរស', 'mans-tshirt', 'អាវយឺតបុរស', NULL, NULL),
(2, 1, 1, 'Mans Casual Shirts', 'អាវបុរសធម្មតា', 'mans-casual-shirts', 'អាវបុរសធម្មតា', NULL, NULL),
(3, 1, 1, 'Mans Kurtas', 'ម៉ាន់ឃឺត', 'mans-kurtas', 'ម៉ាន់ឃឺត', NULL, NULL),
(4, 1, 2, 'Mans Jeans', 'ខោខូវប៊យបុរស', 'mans-jeans', 'ខោខូវប៊យបុរស', NULL, NULL),
(5, 1, 2, 'Mans Trousers', 'ខោបុរស', 'mans-trousers', 'ខោបុរស', NULL, NULL),
(6, 1, 2, 'Mans Cargos', 'ម៉ាន់កាហ្គោស', 'mans-cargos', 'ម៉ាន់កាហ្គោស', NULL, NULL),
(7, 1, 3, 'Mans Sports Shoes', 'ស្បែកជើងកីឡាបុរស', 'mans-sports-shoes', 'ស្បែកជើងកីឡាបុរស', NULL, NULL),
(8, 1, 3, 'Mans Casual Shoes', 'ស្បែកជើងបុរសធម្មតា', 'mans-casual-shoes', 'ស្បែកជើងបុរសធម្មតា', NULL, NULL),
(9, 1, 3, 'Mans Formal Shoes', 'ស្បែកជើងបុរសផ្លូវការ', 'mans-formal-shoes', 'ស្បែកជើងបុរសផ្លូវការ', NULL, NULL),
(10, 1, 4, 'Women Flats', 'ផ្ទះល្វែងស្ត្រី', 'women-flats', 'ផ្ទះល្វែងស្ត្រី', NULL, NULL),
(11, 1, 4, 'Women Heels', 'ស្បែកជើងកែងជើងស្ត្រី', 'women-heels', 'ស្បែកជើងកែងជើងស្ត្រី', NULL, NULL),
(12, 1, 4, 'Woman Sheakers', 'ស្ត្រីកាត់ដេរ', 'woman-sheakers', 'ស្ត្រីកាត់ដេរ', NULL, NULL),
(13, 2, 5, 'Printers', 'ម៉ាស៊ីនបោះពុម្ព', 'printers', 'ម៉ាស៊ីនបោះពុម្ព', NULL, NULL),
(14, 2, 5, 'Monitors', 'អ្នកឃ្លាំមើល', 'monitors', 'អ្នកឃ្លាំមើល', NULL, NULL),
(15, 2, 5, 'Projectors', 'ម៉ាស៊ីនបញ្ចាំង', 'projectors', 'ម៉ាស៊ីនបញ្ចាំង', NULL, NULL),
(16, 2, 6, 'Plain Cases', 'ករណីធម្មតា', 'plain-cases', 'ករណីធម្មតា', NULL, NULL),
(17, 2, 6, 'Designer Cases', 'ករណីអ្នករចនា', 'designer-cases', 'ករណីអ្នករចនា', NULL, NULL),
(18, 2, 6, 'Screen Guards', 'ឆ្មាំការពារអេក្រង់', 'screen-guards', 'ឆ្មាំការពារអេក្រង់', NULL, NULL),
(19, 2, 7, 'Gaming Mouse', 'ហ្គេមកណ្តុរ', 'gaming-mouse', 'ហ្គេមកណ្តុរ', NULL, NULL),
(20, 2, 6, 'Gaming Keyboards', 'ក្តារចុចហ្គេម', 'gaming-keyboards', 'ក្តារចុចហ្គេម', NULL, NULL),
(21, 2, 6, 'Gaming Mousepads', 'ក្តារចុចហ្គេម', 'gaming-mousepads', 'ក្តារចុចហ្គេម', NULL, NULL),
(22, 3, 8, 'Bed Liners', 'កម្រាលពូក', 'bed-liners', 'កម្រាលពូក', NULL, NULL),
(23, 3, 8, 'Bedsheets', 'កម្រាលពូក', 'bedsheets', 'កម្រាលពូក', NULL, NULL),
(24, 3, 8, 'Blankets', 'ភួយ', 'blankets', 'ភួយ', NULL, NULL),
(25, 3, 9, 'Tv Units', 'ទូរទស្សន៍', 'tv-units', 'ទូរទស្សន៍', NULL, NULL),
(26, 3, 9, 'Dining Sets', 'ឈុតអាហារ', 'dining-sets', 'ឈុតអាហារ', NULL, NULL),
(27, 3, 9, 'Coffee Tables', 'តារាងកាហ្វេ', 'coffee-tables', 'តារាងកាហ្វេ', NULL, NULL),
(28, 3, 10, 'Lightings', 'ភ្លើងបំភ្លឺ', 'lightings', 'ភ្លើងបំភ្លឺ', NULL, NULL),
(29, 3, 10, 'Clocks', 'នាឡិកា', 'clocks', 'នាឡិកា', NULL, NULL),
(30, 3, 10, 'Wall Decor', 'ការតុបតែងជញ្ជាំង', 'wall-decor', 'ការតុបតែងជញ្ជាំង', NULL, NULL),
(31, 4, 11, 'Big Screen TVs', 'ទូរទស្សន៍អេក្រង់ធំ', 'big-screen-tvs', 'ទូរទស្សន៍អេក្រង់ធំ', NULL, NULL),
(32, 4, 11, 'Smart TVs', 'ទូរទស្សន៍ឆ្លាតវៃ', 'smart-tvs', 'ទូរទស្សន៍ឆ្លាតវៃ', NULL, NULL),
(33, 4, 11, 'OLED TVs', 'ទូរទស្សន៍ OLED', 'oled-tvs', 'ទូរទស្សន៍-oled', NULL, NULL),
(34, 4, 12, 'Washer Dryers', 'ម៉ាស៊ីនសម្ងួតសក់', 'washer-dryers', 'ម៉ាស៊ីនសម្ងួតសក់', NULL, NULL),
(35, 4, 12, 'Washer Only', 'ម៉ាស៊ីនបោកគក់តែប៉ុណ្ណោះ', 'washer-only', 'ម៉ាស៊ីនបោកគក់តែប៉ុណ្ណោះ', NULL, NULL),
(36, 4, 12, 'Energy Efficient', 'ប្រសិទ្ធភាពថាមពល', 'energy-efficient', 'ប្រសិទ្ធភាពថាមពល', NULL, NULL),
(37, 4, 13, 'Single Door', 'ទ្វារតែមួយ', 'single-door', 'ទ្វារតែមួយ', NULL, NULL),
(38, 4, 13, 'Double Door', 'ទ្វារពី', 'double-door', 'ទ្វារពី', NULL, NULL),
(39, 4, 13, 'Mini Refrigerators', 'ទូទឹកកកខ្នាតតូច', 'mini-refrigerators', 'ទូទឹកកកខ្នាតតូច', NULL, NULL),
(40, 5, 14, 'Eys Makeup', 'ការតុបតែងមុខអេស', 'eys-makeup', 'ការតុបតែងមុខអេស', NULL, NULL),
(41, 5, 14, 'Lip Makeup', 'ការតុបតែងបបូរមាត់', 'lip-makeup', 'ការតុបតែងបបូរមាត់', NULL, NULL),
(42, 5, 14, 'Hair Care', 'ថែរក្សាសក់', 'hair-care', 'ថែរក្សាសក់', NULL, NULL),
(43, 5, 15, 'Beverages', 'ភេសជ្ជៈ', 'beverages', 'ភេសជ្ជៈ', NULL, NULL),
(44, 5, 15, 'Chocolates', 'សូកូឡា', 'chocolates', 'សូកូឡា', NULL, NULL),
(45, 5, 15, 'Snacks', 'អាហារសម្រន់', 'snacks', 'អាហារសម្រន់', NULL, NULL),
(46, 5, 16, 'Baby Diapers', 'ក្រណាត់កន្ទបទារក', 'baby-diapers', 'ក្រណាត់កន្ទបទារក', NULL, NULL),
(47, 5, 16, 'Baby Wipes', 'កន្សែងទារក', 'baby-wipes', 'កន្សែងទារក', NULL, NULL),
(48, 5, 16, 'Baby Food', 'អាហារទារក', 'baby-food', 'អាហារទារក', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_seen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `last_seen`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Bory', 'bory@gmail.com', '012666888', '2021-12-15 07:59:31', NULL, '$2y$10$Lat1n.xNRWZJ0VN65kU4j.uyJ2ic6IktJPgft9JdikZ2V5QgIIc.C', NULL, NULL, NULL, NULL, '202110100802lee-min-ho.jpeg', '2021-09-22 08:10:01', '2021-12-15 00:59:31'),
(2, 'Yana', 'yana@gmail.com', '012666888', NULL, NULL, '$2y$10$HWAtJAyg5vS/XThBOM9t1eh5bzM2TXLIe8K2sbO.qKOtJwXIEtYYO', NULL, NULL, 'nit18Xqmd8SSzvrDAGV6EkNe7AwgROStNYZSh2OOPIDHdwA8Lkcey2lMtudX', NULL, NULL, '2021-09-26 05:59:35', '2021-09-26 22:49:39'),
(3, 'Shop', 'shop@easyonlineshop.com', '012 456 7894', '2021-10-17 14:13:21', NULL, '$2y$10$RSAtofbRdmfmudvh/0C0ge1RJmHlGZpjms7SbUW1fislNP9AocSQq', NULL, NULL, NULL, NULL, NULL, '2021-10-17 07:12:18', '2021-10-17 07:13:21');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_post_categories`
--
ALTER TABLE `blog_post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
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
-- Indexes for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_districts`
--
ALTER TABLE `ship_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_states`
--
ALTER TABLE `ship_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_post_categories`
--
ALTER TABLE `blog_post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ship_districts`
--
ALTER TABLE `ship_districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ship_states`
--
ALTER TABLE `ship_states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
