-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2015 at 10:35 AM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `baitest2`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigned_roles`
--

CREATE TABLE IF NOT EXISTS `assigned_roles` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `assigned_roles`
--

INSERT INTO `assigned_roles` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 3),
(2, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `baithi`
--

CREATE TABLE IF NOT EXISTS `baithi` (
`id` int(11) NOT NULL,
  `monhoc_id` int(11) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `ngay_tao` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `diem` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `baithi`
--

INSERT INTO `baithi` (`id`, `monhoc_id`, `user_id`, `ngay_tao`, `diem`, `created_at`, `updated_at`) VALUES
(1, 2, 3, '0000-00-00 00:00:00', 0, '2015-04-23 07:38:20', '2015-04-23 07:38:20'),
(2, 2, 3, '2015-04-23 07:44:28', 0, '2015-04-23 07:44:28', '2015-04-23 07:44:28'),
(3, 2, 3, '2015-04-23 07:45:11', 0, '2015-04-23 07:45:11', '2015-04-23 07:45:11'),
(4, 2, 3, '2015-04-23 07:47:20', 0, '2015-04-23 07:47:20', '2015-04-23 07:47:20'),
(5, 2, 3, '2015-04-23 07:50:25', 0, '2015-04-23 07:50:25', '2015-04-23 07:50:25'),
(6, 2, 3, '2015-04-23 07:50:37', 0, '2015-04-23 07:50:37', '2015-04-23 07:50:37'),
(7, 2, 3, '2015-04-23 07:57:00', 0, '2015-04-23 07:57:00', '2015-04-23 07:57:00'),
(8, 2, 3, '2015-04-23 07:57:19', 0, '2015-04-23 07:57:19', '2015-04-23 07:57:19');

-- --------------------------------------------------------

--
-- Table structure for table `cauhoi`
--

CREATE TABLE IF NOT EXISTS `cauhoi` (
`id` int(11) NOT NULL,
  `tencauhoi` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `diem` int(11) NOT NULL,
  `viewed` int(11) NOT NULL,
  `monhoc_id` int(11) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `cauhoi`
--

INSERT INTO `cauhoi` (`id`, `tencauhoi`, `diem`, `viewed`, `monhoc_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'php là gì', 10, 0, 3, 1, '2015-03-25 08:09:15', '2015-03-25 08:09:15'),
(3, 'html viết tắt bởi từ gì', 10, 0, 4, 1, '2015-03-25 08:27:32', '2015-03-25 09:36:48'),
(4, 'The __________ consists of interfaces such as Node, Document, NodeList, Element, Attr, and Text. ', 10, 0, 2, 1, '2015-03-25 08:27:50', '2015-03-31 09:18:33'),
(5, 'The ________ document is modified by the methods createDocumentFragment() and ceateCDATASection() defined in Document interface.', 5, 0, 2, 8, '2015-03-31 09:19:09', '2015-03-31 09:19:09'),
(6, 'Which method of Text interface is used to split a text node into two nodes at a specified offset?', 15, 0, 2, 8, '2015-03-31 09:19:48', '2015-03-31 09:19:48'),
(7, 'What is the purpose of the getSpecified() method of Attr interface? ', 10, 0, 2, 8, '2015-04-01 01:36:37', '2015-04-01 01:36:37'),
(8, 'Which of the following methods of DefaultHandler class retrieves the notification of processing an instruction?', 10, 0, 2, 8, '2015-04-01 01:38:04', '2015-04-01 01:38:04'),
(9, 'Which of the following packages in the JAXP API provides mapping from XML to Java?', 10, 0, 2, 8, '2015-04-01 01:39:49', '2015-04-01 01:39:49'),
(10, 'Which of the following interfaces implemented by the parser writers is used to register users for handling callbacks? ', 10, 0, 2, 8, '2015-04-01 01:46:54', '2015-04-01 01:46:54'),
(11, 'Which of the following DOM interfaces provides the primary data type for the entire document structure?', 10, 0, 2, 8, '2015-04-01 01:48:19', '2015-04-01 01:48:19'),
(12, 'Which of the following interfaces of TrAX reports an error that would have occurred in the source document or transformations instructions?', 10, 0, 2, 8, '2015-04-01 01:49:41', '2015-04-01 01:49:41'),
(13, 'Which of the following is not a package present in JAXP for SAX? ', 10, 0, 2, 8, '2015-04-01 01:50:56', '2015-04-01 01:50:56');

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_bai_thi`
--

CREATE TABLE IF NOT EXISTS `chi_tiet_bai_thi` (
`id` int(11) NOT NULL,
  `baithi_id` int(11) NOT NULL,
  `cauhoi_id` int(11) NOT NULL,
  `dapan_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `dapan`
--

CREATE TABLE IF NOT EXISTS `dapan` (
`id` int(11) NOT NULL,
  `cauhoi_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL,
  `dapan_dung` int(11) NOT NULL DEFAULT '0',
  `tendapan` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=44 ;

--
-- Dumping data for table `dapan`
--

INSERT INTO `dapan` (`id`, `cauhoi_id`, `user_id`, `dapan_dung`, `tendapan`, `created_at`, `updated_at`) VALUES
(3, 1, 1, 0, 'ngôn ngữ lập trình website', '2015-03-26 04:43:50', '2015-03-26 04:43:50'),
(5, 3, 1, 1, 'là ngôn ngữ siêu văn bản', '2015-03-26 07:16:49', '2015-03-26 07:16:49'),
(6, 4, 8, 0, 'SAX API', '2015-03-31 09:41:59', '2015-03-31 09:41:59'),
(7, 4, 8, 1, 'DOM API', '2015-03-31 09:42:31', '2015-03-31 09:42:31'),
(8, 4, 8, 0, 'XML API', '2015-03-31 09:42:47', '2015-03-31 09:42:47'),
(9, 5, 8, 1, 'DOM', '2015-03-31 09:43:11', '2015-03-31 09:43:11'),
(10, 5, 8, 0, 'SAX', '2015-03-31 09:43:26', '2015-03-31 09:43:26'),
(11, 5, 8, 0, 'CDATA', '2015-03-31 09:43:39', '2015-03-31 09:43:39'),
(12, 6, 8, 0, 'splitNode()', '2015-03-31 09:45:37', '2015-03-31 09:45:37'),
(13, 6, 8, 0, 'splitElement()', '2015-03-31 09:45:49', '2015-03-31 09:45:49'),
(14, 6, 8, 1, 'splitText()', '2015-03-31 09:46:03', '2015-03-31 09:46:03'),
(15, 6, 8, 0, 'splitDocument()', '2015-03-31 09:46:16', '2015-03-31 09:46:16'),
(16, 7, 8, 0, 'Returns value of an attribute of an element', '2015-04-01 01:37:06', '2015-04-01 01:37:06'),
(17, 7, 8, 0, 'Returns specified element', '2015-04-01 01:37:19', '2015-04-01 01:37:19'),
(18, 7, 8, 1, 'Checks whether an attribute exists or not', '2015-04-01 01:37:32', '2015-04-01 01:37:32'),
(19, 7, 8, 0, 'Returns specified XML document', '2015-04-01 01:37:45', '2015-04-01 01:37:45'),
(20, 8, 8, 0, 'processInstruction()', '2015-04-01 01:38:45', '2015-04-01 01:38:45'),
(21, 8, 8, 1, 'processingInstruction()', '2015-04-01 01:38:56', '2015-04-01 01:38:56'),
(22, 8, 8, 0, 'processInstructions()', '2015-04-01 01:39:14', '2015-04-01 01:39:14'),
(23, 8, 8, 0, 'defaultInstruction()', '2015-04-01 01:39:26', '2015-04-01 01:39:26'),
(24, 9, 8, 0, 'javax.xml', '2015-04-01 01:40:10', '2015-04-01 01:40:10'),
(25, 9, 8, 1, 'javax.xml.datatype', '2015-04-01 01:40:23', '2015-04-01 01:40:23'),
(26, 9, 8, 0, 'javax.xml.namespace', '2015-04-01 01:40:35', '2015-04-01 01:40:35'),
(27, 9, 8, 0, 'javax.xml.parsers', '2015-04-01 01:40:45', '2015-04-01 01:40:45'),
(28, 10, 8, 1, 'Parser', '2015-04-01 01:47:09', '2015-04-01 01:47:09'),
(29, 10, 8, 0, 'AttributeList', '2015-04-01 01:47:22', '2015-04-01 01:47:22'),
(30, 10, 8, 0, 'Locator', '2015-04-01 01:47:34', '2015-04-01 01:47:34'),
(31, 10, 8, 0, 'ErrorHandler', '2015-04-01 01:47:46', '2015-04-01 01:47:46'),
(32, 11, 8, 0, 'Document', '2015-04-01 01:48:41', '2015-04-01 01:48:41'),
(33, 11, 8, 0, 'Element', '2015-04-01 01:48:52', '2015-04-01 01:48:52'),
(34, 11, 8, 1, 'Node', '2015-04-01 01:49:05', '2015-04-01 01:49:05'),
(35, 11, 8, 0, 'Entity', '2015-04-01 01:49:16', '2015-04-01 01:49:16'),
(36, 12, 8, 0, 'ErrorListener', '2015-04-01 01:50:02', '2015-04-01 01:50:02'),
(37, 12, 8, 0, 'Result', '2015-04-01 01:50:16', '2015-04-01 01:50:16'),
(38, 12, 8, 1, 'SourceLocator', '2015-04-01 01:50:27', '2015-04-01 01:50:27'),
(39, 12, 8, 0, 'None of the above', '2015-04-01 01:50:38', '2015-04-01 01:50:38'),
(40, 13, 8, 0, 'org.xml.sax', '2015-04-01 01:51:10', '2015-04-01 01:51:10'),
(41, 13, 8, 1, 'org.xml.sax.ent', '2015-04-01 01:51:20', '2015-04-01 01:51:20'),
(42, 13, 8, 0, 'org.xml.sax.helpers', '2015-04-01 01:51:32', '2015-04-01 01:51:32'),
(43, 13, 8, 0, 'None of the above', '2015-04-01 01:51:47', '2015-04-01 01:51:47');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '{"admin":1,"users":1}', '2015-03-24 02:13:45', '2015-03-24 02:13:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2012_12_06_225921_migration_cartalyst_sentry_install_users', 1),
('2012_12_06_225929_migration_cartalyst_sentry_install_groups', 1),
('2012_12_06_225945_migration_cartalyst_sentry_install_users_groups_pivot', 1),
('2012_12_06_225988_migration_cartalyst_sentry_install_throttle', 1),
('2015_03_27_020641_entrust_setup_tables', 2);

-- --------------------------------------------------------

--
-- Table structure for table `monhoc`
--

CREATE TABLE IF NOT EXISTS `monhoc` (
`id` int(11) NOT NULL,
  `tenmonhoc` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `monhoc`
--

INSERT INTO `monhoc` (`id`, `tenmonhoc`, `created_at`, `updated_at`) VALUES
(2, 'XML', '2015-03-25 03:56:43', '2015-03-25 04:28:11'),
(3, 'PHP', '2015-03-25 03:57:19', '2015-03-25 03:57:19'),
(4, 'HTML', '2015-03-25 04:34:10', '2015-03-25 04:34:10');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'manage_posts', 'Manage Posts', '2015-03-29 19:40:31', '2015-03-29 19:40:31'),
(2, 'can_read', 'Can Read Posts', '2015-03-29 19:45:39', '2015-03-29 19:45:39'),
(3, 'can_edit', 'Can Edit Posts', '2015-03-29 19:45:39', '2015-03-29 19:45:39');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE IF NOT EXISTS `permission_role` (
`id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`) VALUES
(1, 2, 3),
(2, 2, 4),
(3, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Owner', '2015-03-26 21:11:20', '2015-03-26 21:11:20'),
(2, 'Admin', '2015-03-26 21:11:20', '2015-03-26 21:11:20'),
(3, 'Subscriber', '2015-03-29 19:45:39', '2015-03-29 19:45:39'),
(4, 'Author', '2015-03-29 19:45:39', '2015-03-29 19:45:39');

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE IF NOT EXISTS `throttle` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `ip_address`, `attempts`, `suspended`, `banned`, `last_attempt_at`, `suspended_at`, `banned_at`) VALUES
(1, 1, '::1', 0, 0, 0, NULL, NULL, NULL),
(2, 2, '::1', 0, 0, 0, NULL, NULL, NULL),
(3, 3, '::1', 0, 0, 0, NULL, NULL, NULL),
(4, 8, '::1', 0, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `persist_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `permissions`, `activated`, `activation_code`, `activated_at`, `last_login`, `persist_code`, `reset_password_code`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
(1, 'thanh', 'thanh061193@gmail.com', '$2y$10$HQiLAjr/GGcdj.p0rTaEgeAfP6hbOqk.RQarFp.Pt7Dew6yJN9AU6', '{"admin":1}', 1, NULL, NULL, '2015-03-31 00:17:07', '$2y$10$xeHfG6XnREkcRn9AzBYQKesr8s0fo1fVZ9bEkfuoR2Q70iBnTUavi', NULL, 'Van thanh', 'Nguyen', '2015-03-24 00:55:39', '2015-03-31 00:17:07'),
(2, 'huyen', 'huyen@gmail.com', '$2y$10$BIefrfPMcSFfE.35JAA37.MznEFXeYHbu.MJgm4PTPZacpyO9wfvK', NULL, 1, NULL, NULL, '2015-03-30 19:16:57', '$2y$10$stZ8hun0UgQFpkjl8HgRYO4cAtkEmjPQrbA2gNV/Z07nBxtTPVCUS', NULL, 'huyen', 'thu', '2015-03-24 03:04:59', '2015-03-30 19:16:57'),
(3, 'student', 'admin@gmail.com', '$2y$10$FV8IcFqxpx0FngZ9iTLrDOTlhTBC3kKzeDlxxz0SzlkLAMP8BZWDm', NULL, 1, NULL, NULL, '2015-04-23 00:22:23', '$2y$10$hNgTwtVJMPo6zZvA8M/0t.Qo7G/BDP5V.99ZYubA2HiWys.DlOC4e', NULL, 'trang', 'bui', '2015-03-30 19:18:11', '2015-04-23 00:22:23'),
(7, 'admin', 'admin2@gmail.com', '$2y$10$6mPL6yCl.bF2cJIPBXCvl.yewTRbKucFTk/F/lYEKm2OckoOKjpfe', '{"admin":1}', 1, NULL, NULL, NULL, NULL, NULL, 'Van thanh', 'Nguyen', '2015-03-31 02:12:59', '2015-03-31 02:12:59'),
(8, 'teacher', 'teacher@gmail.com', '$2y$10$R4W6icGFbvB8Y1NwZwfo3.ld6g8CEphkLFk5UB0f7WWfMJeWsITwi', '{"admin":1}', 1, NULL, NULL, '2015-03-31 18:36:11', '$2y$10$J21yqydjzYanEcwOhIDoaODSuD5qESTuPPmMH1XZqSMQn1CIfBb3e', NULL, 'Van thanh', 'Nguyen', '2015-03-31 02:13:33', '2015-03-31 18:36:11');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
 ADD PRIMARY KEY (`id`), ADD KEY `assigned_roles_user_id_foreign` (`user_id`), ADD KEY `assigned_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `baithi`
--
ALTER TABLE `baithi`
 ADD PRIMARY KEY (`id`), ADD KEY `monhoc_baithi_foreignkey` (`monhoc_id`), ADD KEY `user_baithi_foreignkey` (`user_id`);

--
-- Indexes for table `cauhoi`
--
ALTER TABLE `cauhoi`
 ADD PRIMARY KEY (`id`), ADD KEY `cauhoi_monhoc_id_foreign` (`monhoc_id`), ADD KEY `cauhoi_user_foreign` (`user_id`);

--
-- Indexes for table `chi_tiet_bai_thi`
--
ALTER TABLE `chi_tiet_bai_thi`
 ADD PRIMARY KEY (`id`), ADD KEY `baithi_chitiet_foreign` (`baithi_id`), ADD KEY `cauhoi_chitiet_foreign` (`cauhoi_id`), ADD KEY `dapan_chitiet` (`dapan_id`);

--
-- Indexes for table `dapan`
--
ALTER TABLE `dapan`
 ADD PRIMARY KEY (`id`), ADD KEY `dapan_cauhoi_foreign` (`cauhoi_id`), ADD KEY `user_dapan_foreign` (`user_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `groups_name_unique` (`name`);

--
-- Indexes for table `monhoc`
--
ALTER TABLE `monhoc`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
 ADD PRIMARY KEY (`id`), ADD KEY `permission_role_permission_id_foreign` (`permission_id`), ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
 ADD PRIMARY KEY (`id`), ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`), ADD KEY `users_activation_code_index` (`activation_code`), ADD KEY `users_reset_password_code_index` (`reset_password_code`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
 ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `baithi`
--
ALTER TABLE `baithi`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `cauhoi`
--
ALTER TABLE `cauhoi`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `chi_tiet_bai_thi`
--
ALTER TABLE `chi_tiet_bai_thi`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `dapan`
--
ALTER TABLE `dapan`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `monhoc`
--
ALTER TABLE `monhoc`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
ADD CONSTRAINT `assigned_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
ADD CONSTRAINT `assigned_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `baithi`
--
ALTER TABLE `baithi`
ADD CONSTRAINT `monhoc_baithi_foreignkey` FOREIGN KEY (`monhoc_id`) REFERENCES `monhoc` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `user_baithi_foreignkey` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cauhoi`
--
ALTER TABLE `cauhoi`
ADD CONSTRAINT `cauhoi_monhoc_id_foreign` FOREIGN KEY (`monhoc_id`) REFERENCES `monhoc` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `cauhoi_user_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chi_tiet_bai_thi`
--
ALTER TABLE `chi_tiet_bai_thi`
ADD CONSTRAINT `baithi_chitiet_foreign` FOREIGN KEY (`baithi_id`) REFERENCES `baithi` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `cauhoi_chitiet_foreign` FOREIGN KEY (`cauhoi_id`) REFERENCES `cauhoi` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `dapan_chitiet_foreign` FOREIGN KEY (`dapan_id`) REFERENCES `dapan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dapan`
--
ALTER TABLE `dapan`
ADD CONSTRAINT `cauhoi_dapan_foreign` FOREIGN KEY (`cauhoi_id`) REFERENCES `cauhoi` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `user_dapan_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
