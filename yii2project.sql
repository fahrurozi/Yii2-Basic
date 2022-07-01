-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2022 at 11:17 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii2project`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('administrator', '1', 1656622340),
('administrator', '2', 1656622347),
('manager', '3', 1656622352),
('staff', '4', 1656622357);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/*', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/default/*', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/default/index', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/menu/*', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/menu/create', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/menu/index', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/menu/update', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/menu/view', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/permission/*', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/permission/create', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/permission/get-users', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/permission/index', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/permission/update', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/permission/view', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/role/*', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/role/assign', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/role/create', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/role/delete', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/role/get-users', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/role/index', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/role/remove', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/role/update', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/role/view', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/route/*', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/route/assign', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/route/create', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/route/index', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/route/remove', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/rule/*', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/rule/create', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/rule/index', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/rule/update', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/rule/view', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/user/*', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/user/activate', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/user/delete', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/user/index', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/user/login', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/user/logout', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/user/signup', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/admin/user/view', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/debug/*', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/debug/default/*', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/debug/default/index', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/debug/default/view', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/debug/user/*', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/debug/user/reset-identity', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/debug/user/set-identity', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/gii/*', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/gii/default/*', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/gii/default/action', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/gii/default/diff', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/gii/default/index', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/gii/default/preview', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/gii/default/view', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/site/*', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/site/about', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/site/captcha', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/site/contact', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/site/error', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/site/index', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/site/login', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/site/logout', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/*', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/admin/*', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/admin/assignments', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/admin/block', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/admin/confirm', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/admin/create', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/admin/delete', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/admin/index', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/admin/info', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/admin/resend-password', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/admin/switch', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/admin/update', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/admin/update-profile', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/profile/*', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/profile/index', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/profile/show', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/recovery/*', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/recovery/request', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/recovery/reset', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/registration/*', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/registration/confirm', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/registration/connect', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/registration/register', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/registration/resend', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/security/*', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/security/auth', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/security/login', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/security/logout', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/settings/*', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/settings/account', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/settings/confirm', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/settings/delete', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/settings/disconnect', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/settings/networks', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('/user/settings/profile', 2, NULL, NULL, NULL, 1656621825, 1656621825),
('administrator', 1, NULL, NULL, NULL, 1656621913, 1656621913),
('administratorPermission', 2, NULL, NULL, NULL, 1656621975, 1656621975),
('manager', 1, NULL, NULL, NULL, 1656621925, 1656621925),
('managerPermission', 2, NULL, NULL, NULL, 1656621983, 1656621983),
('staff', 1, NULL, NULL, NULL, 1656621952, 1656621952),
('staffPermission', 2, NULL, NULL, NULL, 1656621990, 1656621990);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('administrator', 'administratorPermission'),
('administrator', 'managerPermission'),
('administrator', 'staffPermission'),
('administratorPermission', '/*'),
('administratorPermission', 'managerPermission'),
('administratorPermission', 'staffPermission'),
('manager', 'managerPermission'),
('manager', 'staffPermission'),
('managerPermission', '/user/*'),
('managerPermission', 'staffPermission'),
('staff', 'staffPermission'),
('staffPermission', '/gii/*'),
('staffPermission', '/site/*');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `description`) VALUES
(2, 'test', 'test'),
(3, 'test 1', 'test 1');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1656620068),
('m140209_132017_init', 1656620070),
('m140403_174025_create_account_table', 1656620070),
('m140504_113157_update_tables', 1656620070),
('m140504_130429_create_token_table', 1656620070),
('m140506_102106_rbac_init', 1656621342),
('m140830_171933_fix_ip_field', 1656620070),
('m140830_172703_change_account_table_name', 1656620070),
('m141222_110026_update_ip_field', 1656620070),
('m141222_135246_alter_username_length', 1656620070),
('m150614_103145_update_social_account_table', 1656620070),
('m150623_212711_fix_username_notnull', 1656620070),
('m151218_234654_add_timezone_to_profile', 1656620070),
('m160929_103127_add_last_login_at_to_user_table', 1656620070),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id', 1656621342),
('m180523_151638_rbac_updates_indexes_without_prefix', 1656621342),
('m200409_110543_rbac_update_mssql_trigger', 1656621342),
('m220701_030444_create_test_table', 1656644741),
('m220701_033807_create_book_table', 1656646711);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `name`, `public_email`, `gravatar_email`, `gravatar_id`, `location`, `website`, `bio`, `timezone`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_account`
--

CREATE TABLE `social_account` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `title`, `content`) VALUES
(1, 'test 1', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`user_id`, `code`, `created_at`, `type`) VALUES
(1, 'BvFu-8jntswok3QqBhPJMUJIjzzr7tU-', 1656620194, 0),
(2, 'sw5bJp1QjdHh4DqEMOse72_LzknuDrfQ', 1656620397, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT 0,
  `last_login_at` int(11) DEFAULT NULL,
  `status` varchar(191) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`, `last_login_at`, `status`) VALUES
(1, 'rozi', 'rozi@mail.com', '$2y$10$nemaAMsi51SycLZdM01WGOTlYAn19KNsm7gJsIuFptYL0VSE3ruyW', 'NH9O8g6NYrNfLUOLkL5qd3IUTm4cmF2V', 1656620490, NULL, NULL, '127.0.0.1', 1656620194, 1656620194, 0, NULL, ''),
(2, 'halo', 'halo@mail.com', '$2y$10$dQ1N7pNnyEf8WgdfjN0UVudNj/e4RacPvzIgMwwf4aYcsGeif1jRe', 'RI0D9YBq179D36jjSZ7LeSuzApSJLs0G', 1656620535, NULL, NULL, '127.0.0.1', 1656620397, 1656620397, 0, 1656656342, ''),
(3, 'john', 'john@mail.com', '$2y$10$yf2FPmJvcY3fGQirvYJ1NeLJtZSZ6if50FFEYX4iLsWJ3B69urJK.', 'p4UVkt86K5WE0O_YtzMTZsDVSZa8OzKd', 1656621722, NULL, NULL, '127.0.0.1', 1656621722, 1656621722, 0, 1656622621, ''),
(4, 'doe', 'doe@mail.com', '$2y$10$.seZsdjtpnJYiMHGjZogOuArF/9wKlm86v8q.C/4dztMiHISA2Ewe', 'PHA5J1dW7fOwC0jaE0O_nqbtTabWIlMK', 1656621737, NULL, NULL, '127.0.0.1', 1656621737, 1656621737, 0, 1656647034, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `idx-auth_assignment-user_id` (`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `description` (`description`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `social_account`
--
ALTER TABLE `social_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_unique` (`provider`,`client_id`),
  ADD UNIQUE KEY `account_unique_code` (`code`),
  ADD KEY `fk_user_account` (`user_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD UNIQUE KEY `token_unique` (`user_id`,`code`,`type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_unique_username` (`username`),
  ADD UNIQUE KEY `user_unique_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_account`
--
ALTER TABLE `social_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_account`
--
ALTER TABLE `social_account`
  ADD CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
