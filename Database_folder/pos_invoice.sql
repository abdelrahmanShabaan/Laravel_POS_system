-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2023 at 05:53 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos_invoice`
--

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
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_date` date NOT NULL,
  `sub_total` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_value` decimal(8,2) NOT NULL DEFAULT 0.00,
  `vat_value` decimal(8,2) NOT NULL DEFAULT 0.00,
  `shipping` decimal(8,2) NOT NULL DEFAULT 0.00,
  `total_due` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `customer_name`, `customer_email`, `customer_mobile`, `company_name`, `invoice_number`, `invoice_date`, `sub_total`, `discount_type`, `discount_value`, `vat_value`, `shipping`, `total_due`, `created_at`, `updated_at`) VALUES
(1, 'رشيد الخضيري', 'omar87@shami.info', '1920602963', 'رغدة الحميد', '0798428', '2023-02-21', '5840.00', 'fixed', '0.00', '292.00', '100.00', '6232.00', '2023-02-26 02:23:11', '2023-02-26 02:23:11'),
(2, 'هذال العمرو', 'melhem.abd@rabee.org', '7807677977', 'سما الصقيه', '1897840', '2023-02-08', '5840.00', 'fixed', '0.00', '292.00', '100.00', '6232.00', '2023-02-26 02:23:11', '2023-02-26 02:23:11'),
(3, 'الدكتورة سهام الماجد', 'qjabri@gmail.com', '352504412', 'رداد المنيف', '6262794', '2023-02-25', '5840.00', 'fixed', '0.00', '292.00', '100.00', '6232.00', '2023-02-26 02:23:11', '2023-02-26 02:23:11'),
(4, 'أدهم نسيم الليث الخضيري', 'qzaloum@gmail.com', '635863394', 'زينة العنزي', '7500078', '2023-02-11', '5840.00', 'fixed', '0.00', '292.00', '100.00', '6232.00', '2023-02-26 02:23:11', '2023-02-26 02:23:11'),
(5, 'عز الدين الفدا', 'qhamad@gmail.com', '5164167807', 'نعمه فاخر المشيقح', '8181222', '2023-02-17', '5840.00', 'fixed', '0.00', '292.00', '100.00', '6232.00', '2023-02-26 02:23:12', '2023-02-26 02:23:12'),
(6, 'البشر العقل', 'gabulebbeh@yahoo.com', '128974366659', 'المهندسة دنيا العنزي', '1241228', '2023-02-12', '5840.00', 'fixed', '0.00', '292.00', '100.00', '6232.00', '2023-02-26 02:23:12', '2023-02-26 02:23:12'),
(7, 'غازي الفدا', 'nimry.mutaz@obaisi.info', '09137378795', 'سعاد السمير', '5954705', '2023-02-25', '5840.00', 'fixed', '0.00', '292.00', '100.00', '6232.00', '2023-02-26 02:23:12', '2023-02-26 02:23:12'),
(8, 'هادي الأسمري', 'osama66@karam.com', '689349867264', 'نور الهدى عبدالباسط حسن سقا', '1281970', '2023-02-18', '5840.00', 'fixed', '0.00', '292.00', '100.00', '6232.00', '2023-02-26 02:23:12', '2023-02-26 02:23:12'),
(9, 'مثنى الحميد', 'ohadi@shami.biz', '6316916955', 'قمر عدلي داوود باشا', '5904760', '2023-02-12', '5840.00', 'fixed', '0.00', '292.00', '100.00', '6232.00', '2023-02-26 02:23:13', '2023-02-26 02:23:13'),
(10, 'هيثم مختار فوزي الأسمري', 'hamad.omar@gmail.com', '7934963217523', 'رامين الجهني', '1093031', '2023-02-09', '5840.00', 'fixed', '0.00', '292.00', '100.00', '6232.00', '2023-02-26 02:23:13', '2023-02-26 02:23:13'),
(11, 'اصلان مدني', 'tqawasmee@hotmail.com', '919277921', 'نانسي السالم', '5281285', '2023-02-09', '5840.00', 'fixed', '0.00', '292.00', '100.00', '6232.00', '2023-02-26 02:23:13', '2023-02-26 02:23:13'),
(12, 'المهندسة رابعة الجريد', 'nimry.mutaz@yahoo.com', '8493497072', 'صبا جواهرجي', '5171688', '2023-02-13', '5840.00', 'fixed', '0.00', '292.00', '100.00', '6232.00', '2023-02-26 02:23:13', '2023-02-26 02:23:13'),
(13, 'وسيم راجح باشا', 'vhadi@karam.com', '825184463', 'حازم أيوب الشيباني', '9558888', '2023-02-24', '5840.00', 'fixed', '0.00', '292.00', '100.00', '6232.00', '2023-02-26 02:23:13', '2023-02-26 02:23:13'),
(14, 'بليغ الداوود', 'osama70@gmail.com', '209394307', 'السيدة ليدا الصقيه', '8230980', '2023-02-06', '5840.00', 'fixed', '0.00', '292.00', '100.00', '6232.00', '2023-02-26 02:23:13', '2023-02-26 02:23:13'),
(15, 'المهندسة ابتهال الصقيه', 'osama.rashwani@gmail.com', '219676144', 'قاسم ريان المطرفي', '0116887', '2023-02-09', '5840.00', 'fixed', '0.00', '292.00', '100.00', '6232.00', '2023-02-26 02:23:14', '2023-02-26 02:23:14');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(8,2) NOT NULL DEFAULT 0.00,
  `unit_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `row_sub_total` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `invoice_id`, `product_name`, `unit`, `quantity`, `unit_price`, `row_sub_total`, `created_at`, `updated_at`) VALUES
(1, 1, 'طاولة كمبيوتر كبيرة', 'piece', '2.00', '560.00', '1120.00', '2023-02-26 02:23:11', '2023-02-26 02:23:11'),
(2, 1, 'طاولة كمبيوتر صغيرة', 'piece', '1.00', '220.00', '220.00', '2023-02-26 02:23:11', '2023-02-26 02:23:11'),
(3, 1, 'كمبيوتر محمول', 'piece', '1.00', '4500.00', '4500.00', '2023-02-26 02:23:11', '2023-02-26 02:23:11'),
(4, 2, 'طاولة كمبيوتر كبيرة', 'piece', '2.00', '560.00', '1120.00', '2023-02-26 02:23:11', '2023-02-26 02:23:11'),
(5, 2, 'طاولة كمبيوتر صغيرة', 'piece', '1.00', '220.00', '220.00', '2023-02-26 02:23:11', '2023-02-26 02:23:11'),
(6, 2, 'كمبيوتر محمول', 'piece', '1.00', '4500.00', '4500.00', '2023-02-26 02:23:11', '2023-02-26 02:23:11'),
(7, 3, 'طاولة كمبيوتر كبيرة', 'piece', '2.00', '560.00', '1120.00', '2023-02-26 02:23:11', '2023-02-26 02:23:11'),
(8, 3, 'طاولة كمبيوتر صغيرة', 'piece', '1.00', '220.00', '220.00', '2023-02-26 02:23:11', '2023-02-26 02:23:11'),
(9, 3, 'كمبيوتر محمول', 'piece', '1.00', '4500.00', '4500.00', '2023-02-26 02:23:11', '2023-02-26 02:23:11'),
(10, 4, 'طاولة كمبيوتر كبيرة', 'piece', '2.00', '560.00', '1120.00', '2023-02-26 02:23:11', '2023-02-26 02:23:11'),
(11, 4, 'طاولة كمبيوتر صغيرة', 'piece', '1.00', '220.00', '220.00', '2023-02-26 02:23:11', '2023-02-26 02:23:11'),
(12, 4, 'كمبيوتر محمول', 'piece', '1.00', '4500.00', '4500.00', '2023-02-26 02:23:11', '2023-02-26 02:23:11'),
(13, 5, 'طاولة كمبيوتر كبيرة', 'piece', '2.00', '560.00', '1120.00', '2023-02-26 02:23:12', '2023-02-26 02:23:12'),
(14, 5, 'طاولة كمبيوتر صغيرة', 'piece', '1.00', '220.00', '220.00', '2023-02-26 02:23:12', '2023-02-26 02:23:12'),
(15, 5, 'كمبيوتر محمول', 'piece', '1.00', '4500.00', '4500.00', '2023-02-26 02:23:12', '2023-02-26 02:23:12'),
(16, 6, 'طاولة كمبيوتر كبيرة', 'piece', '2.00', '560.00', '1120.00', '2023-02-26 02:23:12', '2023-02-26 02:23:12'),
(17, 6, 'طاولة كمبيوتر صغيرة', 'piece', '1.00', '220.00', '220.00', '2023-02-26 02:23:12', '2023-02-26 02:23:12'),
(18, 6, 'كمبيوتر محمول', 'piece', '1.00', '4500.00', '4500.00', '2023-02-26 02:23:12', '2023-02-26 02:23:12'),
(19, 7, 'طاولة كمبيوتر كبيرة', 'piece', '2.00', '560.00', '1120.00', '2023-02-26 02:23:12', '2023-02-26 02:23:12'),
(20, 7, 'طاولة كمبيوتر صغيرة', 'piece', '1.00', '220.00', '220.00', '2023-02-26 02:23:12', '2023-02-26 02:23:12'),
(21, 7, 'كمبيوتر محمول', 'piece', '1.00', '4500.00', '4500.00', '2023-02-26 02:23:12', '2023-02-26 02:23:12'),
(22, 8, 'طاولة كمبيوتر كبيرة', 'piece', '2.00', '560.00', '1120.00', '2023-02-26 02:23:12', '2023-02-26 02:23:12'),
(23, 8, 'طاولة كمبيوتر صغيرة', 'piece', '1.00', '220.00', '220.00', '2023-02-26 02:23:12', '2023-02-26 02:23:12'),
(24, 8, 'كمبيوتر محمول', 'piece', '1.00', '4500.00', '4500.00', '2023-02-26 02:23:12', '2023-02-26 02:23:12'),
(25, 9, 'طاولة كمبيوتر كبيرة', 'piece', '2.00', '560.00', '1120.00', '2023-02-26 02:23:13', '2023-02-26 02:23:13'),
(26, 9, 'طاولة كمبيوتر صغيرة', 'piece', '1.00', '220.00', '220.00', '2023-02-26 02:23:13', '2023-02-26 02:23:13'),
(27, 9, 'كمبيوتر محمول', 'piece', '1.00', '4500.00', '4500.00', '2023-02-26 02:23:13', '2023-02-26 02:23:13'),
(28, 10, 'طاولة كمبيوتر كبيرة', 'piece', '2.00', '560.00', '1120.00', '2023-02-26 02:23:13', '2023-02-26 02:23:13'),
(29, 10, 'طاولة كمبيوتر صغيرة', 'piece', '1.00', '220.00', '220.00', '2023-02-26 02:23:13', '2023-02-26 02:23:13'),
(30, 10, 'كمبيوتر محمول', 'piece', '1.00', '4500.00', '4500.00', '2023-02-26 02:23:13', '2023-02-26 02:23:13'),
(31, 11, 'طاولة كمبيوتر كبيرة', 'piece', '2.00', '560.00', '1120.00', '2023-02-26 02:23:13', '2023-02-26 02:23:13'),
(32, 11, 'طاولة كمبيوتر صغيرة', 'piece', '1.00', '220.00', '220.00', '2023-02-26 02:23:13', '2023-02-26 02:23:13'),
(33, 11, 'كمبيوتر محمول', 'piece', '1.00', '4500.00', '4500.00', '2023-02-26 02:23:13', '2023-02-26 02:23:13'),
(34, 12, 'طاولة كمبيوتر كبيرة', 'piece', '2.00', '560.00', '1120.00', '2023-02-26 02:23:13', '2023-02-26 02:23:13'),
(35, 12, 'طاولة كمبيوتر صغيرة', 'piece', '1.00', '220.00', '220.00', '2023-02-26 02:23:13', '2023-02-26 02:23:13'),
(36, 12, 'كمبيوتر محمول', 'piece', '1.00', '4500.00', '4500.00', '2023-02-26 02:23:13', '2023-02-26 02:23:13'),
(37, 13, 'طاولة كمبيوتر كبيرة', 'piece', '2.00', '560.00', '1120.00', '2023-02-26 02:23:13', '2023-02-26 02:23:13'),
(38, 13, 'طاولة كمبيوتر صغيرة', 'piece', '1.00', '220.00', '220.00', '2023-02-26 02:23:13', '2023-02-26 02:23:13'),
(39, 13, 'كمبيوتر محمول', 'piece', '1.00', '4500.00', '4500.00', '2023-02-26 02:23:13', '2023-02-26 02:23:13'),
(40, 14, 'طاولة كمبيوتر كبيرة', 'piece', '2.00', '560.00', '1120.00', '2023-02-26 02:23:13', '2023-02-26 02:23:13'),
(41, 14, 'طاولة كمبيوتر صغيرة', 'piece', '1.00', '220.00', '220.00', '2023-02-26 02:23:13', '2023-02-26 02:23:13'),
(42, 14, 'كمبيوتر محمول', 'piece', '1.00', '4500.00', '4500.00', '2023-02-26 02:23:13', '2023-02-26 02:23:13'),
(43, 15, 'طاولة كمبيوتر كبيرة', 'piece', '2.00', '560.00', '1120.00', '2023-02-26 02:23:14', '2023-02-26 02:23:14'),
(44, 15, 'طاولة كمبيوتر صغيرة', 'piece', '1.00', '220.00', '220.00', '2023-02-26 02:23:14', '2023-02-26 02:23:14'),
(45, 15, 'كمبيوتر محمول', 'piece', '1.00', '4500.00', '4500.00', '2023-02-26 02:23:14', '2023-02-26 02:23:14');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_26_033918_create_invoices_table', 1),
(6, '2023_02_26_034153_create_invoice_details_table', 1);

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_details_invoice_id_foreign` (`invoice_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD CONSTRAINT `invoice_details_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
