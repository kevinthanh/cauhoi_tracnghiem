-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2015 at 05:59 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=45 ;

--
-- Dumping data for table `baithi`
--

INSERT INTO `baithi` (`id`, `monhoc_id`, `user_id`, `ngay_tao`, `diem`, `created_at`, `updated_at`) VALUES
(37, 2, 9, '2015-05-05 08:01:59', 20, '2015-05-05 08:01:59', '2015-05-05 08:01:59'),
(38, 2, 3, '2015-05-06 08:31:02', 10, '2015-05-06 08:31:02', '2015-05-06 08:31:03'),
(39, 3, 3, '2015-05-06 08:31:15', 30, '2015-05-06 08:31:15', '2015-05-06 08:31:16'),
(40, 5, 3, '2015-05-06 08:31:28', 15, '2015-05-06 08:31:28', '2015-05-06 08:31:28'),
(41, 2, 3, '2015-05-06 08:42:26', 0, '2015-05-06 08:42:26', '2015-05-06 08:42:26'),
(42, 2, 3, '2015-05-06 08:42:35', 0, '2015-05-06 08:42:35', '2015-05-06 08:42:35'),
(43, 2, 3, '2015-05-06 08:47:45', 0, '2015-05-06 08:47:45', '2015-05-06 08:47:45'),
(44, 2, 30, '2015-05-11 03:15:24', 15, '2015-05-11 03:15:24', '2015-05-11 03:15:24');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=35 ;

--
-- Dumping data for table `cauhoi`
--

INSERT INTO `cauhoi` (`id`, `tencauhoi`, `diem`, `viewed`, `monhoc_id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 'The __________ consists of interfaces such as Node, Document, NodeList, Element, Attr, and Text. ', 10, 0, 2, 1, '2015-03-25 08:27:50', '2015-03-31 09:18:33'),
(5, 'The ________ document is modified by the methods createDocumentFragment() and ceateCDATASection() defined in Document interface.', 5, 0, 2, 8, '2015-03-31 09:19:09', '2015-03-31 09:19:09'),
(6, 'Which method of Text interface is used to split a text node into two nodes at a specified offset?', 15, 0, 2, 8, '2015-03-31 09:19:48', '2015-03-31 09:19:48'),
(7, 'What is the purpose of the getSpecified() method of Attr interface? ', 10, 0, 2, 8, '2015-04-01 01:36:37', '2015-04-01 01:36:37'),
(8, 'Which of the following methods of DefaultHandler class retrieves the notification of processing an instruction?', 10, 0, 2, 8, '2015-04-01 01:38:04', '2015-04-01 01:38:04'),
(9, 'Which of the following packages in the JAXP API provides mapping from XML to Java?', 10, 0, 2, 8, '2015-04-01 01:39:49', '2015-04-01 01:39:49'),
(10, 'Which of the following interfaces implemented by the parser writers is used to register users for handling callbacks? ', 10, 0, 2, 8, '2015-04-01 01:46:54', '2015-04-01 01:46:54'),
(11, 'Which of the following DOM interfaces provides the primary data type for the entire document structure?', 10, 0, 2, 8, '2015-04-01 01:48:19', '2015-04-01 01:48:19'),
(12, 'Which of the following interfaces of TrAX reports an error that would have occurred in the source document or transformations instructions?', 10, 0, 2, 8, '2015-04-01 01:49:41', '2015-04-01 01:49:41'),
(13, 'Which of the following is not a package present in JAXP for SAX? ', 10, 0, 2, 8, '2015-04-01 01:50:56', '2015-04-01 01:50:56'),
(14, 'JDBC and ODBC are identical?', 5, 0, 5, 7, '2015-04-24 03:03:36', '2015-04-24 03:03:36'),
(15, 'How many kinds of JDBC drivers?', 5, 0, 5, 7, '2015-04-24 03:04:59', '2015-04-24 03:04:59'),
(16, 'The JDBC API is a Java API for accessing virtually any kind of tabular data', 10, 0, 5, 7, '2015-04-24 03:30:52', '2015-04-24 03:30:52'),
(17, 'What is the correct statement about CallableStatement interface?', 15, 0, 5, 7, '2015-04-24 03:34:09', '2015-04-24 03:34:09'),
(18, 'Which is the default port number of RMI Registry Server?', 15, 0, 5, 7, '2015-04-24 03:35:35', '2015-04-24 03:35:35'),
(19, 'Which of the following statements is correct for retrieving all fields from Student table?', 10, 0, 5, 7, '2015-04-24 03:36:55', '2015-04-24 03:36:55'),
(20, 'If you need to use a stored procedure with output parameters, which of the following statement type should be used to call the procedure?', 10, 0, 5, 7, '2015-04-24 03:38:21', '2015-04-24 03:38:21'),
(21, 'From which object do you ask for DatabaseMetaData?', 10, 0, 5, 7, '2015-04-24 03:41:04', '2015-04-24 03:41:04'),
(22, 'Which character is used to represent an input parameter in a CallableStatement?', 10, 0, 5, 7, '2015-04-24 03:43:00', '2015-04-24 03:43:00'),
(23, 'Which one of the following will not get the data from the first column of ResultSet rs, returned from executing SQL statement: SELECT name, rank, seri', 10, 0, 5, 7, '2015-04-24 03:44:20', '2015-04-24 03:44:20'),
(24, 'Trình dịch PHP nào là trình dịch bạn cho là đúng?', 10, 0, 3, 7, '2015-04-24 03:53:11', '2015-04-24 03:53:11'),
(25, 'Chương trình nào không thuộc vào Hệ thống LAMP ?', 10, 0, 3, 7, '2015-04-24 03:54:48', '2015-04-24 03:54:48'),
(26, 'Engine nào là nền tảng chính của PHP?', 10, 0, 3, 7, '2015-04-24 03:56:39', '2015-04-24 03:56:39'),
(27, 'Khi thực thi PHP4 Script nó nhanh hơn PHP3 mấy lần', 10, 0, 3, 7, '2015-04-24 03:59:53', '2015-04-24 03:59:53'),
(28, 'Thực thi đọan code nào dưới đây để có thể biết PHP Environment đã được cài đặt đúng?', 10, 0, 3, 7, '2015-04-24 04:01:26', '2015-04-24 04:01:26'),
(29, 'Cài đặt Apache xong bạn có thể kiểm tra servername của bạn qua cách gọi ulr http://localhost, ngoài cách này còn cách nào khác nữa không?', 10, 0, 3, 7, '2015-04-24 04:03:19', '2015-04-24 04:03:19'),
(30, 'Apache Webserver xuất phát từ?', 10, 0, 3, 7, '2015-04-24 04:04:34', '2015-04-24 04:04:34'),
(31, 'PHP và Apache Server phát triển theo dạng Module, vậy nó có thể', 10, 0, 3, 7, '2015-04-24 04:06:17', '2015-04-24 04:06:17'),
(32, ' Khi sử dụng bộ PHP & Apache bạn phải trả', 10, 0, 3, 7, '2015-04-24 04:07:42', '2015-04-24 04:07:42'),
(33, 'Ai là người đầu tiên phát minh ra PHP?', 10, 0, 3, 7, '2015-04-24 04:09:34', '2015-04-24 04:09:34'),
(34, 'test câu hỏi', 10, 0, 2, 7, '2015-05-04 04:50:07', '2015-05-04 04:50:07');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=121 ;

--
-- Dumping data for table `chi_tiet_bai_thi`
--

INSERT INTO `chi_tiet_bai_thi` (`id`, `baithi_id`, `cauhoi_id`, `dapan_id`, `created_at`, `updated_at`) VALUES
(78, 37, 8, 21, '2015-05-05 08:01:59', '2015-05-05 08:01:59'),
(79, 37, 9, 24, '2015-05-05 08:01:59', '2015-05-05 08:01:59'),
(80, 37, 12, 39, '2015-05-05 08:01:59', '2015-05-05 08:01:59'),
(81, 37, 6, 13, '2015-05-05 08:01:59', '2015-05-05 08:01:59'),
(82, 37, 11, 34, '2015-05-05 08:01:59', '2015-05-05 08:01:59'),
(83, 38, 6, 13, '2015-05-06 08:31:02', '2015-05-06 08:31:02'),
(84, 38, 34, 115, '2015-05-06 08:31:02', '2015-05-06 08:31:02'),
(85, 38, 4, 8, '2015-05-06 08:31:02', '2015-05-06 08:31:02'),
(86, 38, 8, 20, '2015-05-06 08:31:03', '2015-05-06 08:31:03'),
(87, 38, 10, 29, '2015-05-06 08:31:03', '2015-05-06 08:31:03'),
(88, 38, 11, 32, '2015-05-06 08:31:03', '2015-05-06 08:31:03'),
(89, 39, 30, 101, '2015-05-06 08:31:15', '2015-05-06 08:31:15'),
(90, 39, 31, 103, '2015-05-06 08:31:15', '2015-05-06 08:31:15'),
(91, 39, 28, 91, '2015-05-06 08:31:15', '2015-05-06 08:31:15'),
(92, 39, 26, 86, '2015-05-06 08:31:15', '2015-05-06 08:31:15'),
(93, 39, 32, 108, '2015-05-06 08:31:15', '2015-05-06 08:31:15'),
(94, 39, 29, 95, '2015-05-06 08:31:15', '2015-05-06 08:31:15'),
(95, 40, 14, 45, '2015-05-06 08:31:28', '2015-05-06 08:31:28'),
(96, 40, 19, 58, '2015-05-06 08:31:28', '2015-05-06 08:31:28'),
(97, 40, 23, 73, '2015-05-06 08:31:28', '2015-05-06 08:31:28'),
(98, 40, 22, 67, '2015-05-06 08:31:28', '2015-05-06 08:31:28'),
(99, 41, 9, 26, '2015-05-06 08:42:26', '2015-05-06 08:42:26'),
(100, 41, 6, 13, '2015-05-06 08:42:26', '2015-05-06 08:42:26'),
(101, 41, 12, 36, '2015-05-06 08:42:26', '2015-05-06 08:42:26'),
(102, 41, 13, 43, '2015-05-06 08:42:26', '2015-05-06 08:42:26'),
(103, 42, 12, 36, '2015-05-06 08:42:35', '2015-05-06 08:42:35'),
(104, 42, 9, 24, '2015-05-06 08:42:35', '2015-05-06 08:42:35'),
(105, 42, 7, 19, '2015-05-06 08:42:35', '2015-05-06 08:42:35'),
(106, 42, 11, 32, '2015-05-06 08:42:35', '2015-05-06 08:42:35'),
(107, 43, 12, 36, '2015-05-06 08:47:45', '2015-05-06 08:47:45'),
(108, 43, 9, 24, '2015-05-06 08:47:45', '2015-05-06 08:47:45'),
(109, 43, 7, 19, '2015-05-06 08:47:45', '2015-05-06 08:47:45'),
(110, 43, 11, 32, '2015-05-06 08:47:45', '2015-05-06 08:47:45'),
(111, 44, 34, 116, '2015-05-11 03:15:24', '2015-05-11 03:15:24'),
(112, 44, 12, 36, '2015-05-11 03:15:24', '2015-05-11 03:15:24'),
(113, 44, 8, 21, '2015-05-11 03:15:24', '2015-05-11 03:15:24'),
(114, 44, 11, 33, '2015-05-11 03:15:24', '2015-05-11 03:15:24'),
(115, 44, 7, 17, '2015-05-11 03:15:24', '2015-05-11 03:15:24'),
(116, 44, 5, 9, '2015-05-11 03:15:24', '2015-05-11 03:15:24'),
(117, 44, 6, 15, '2015-05-11 03:15:24', '2015-05-11 03:15:24'),
(118, 44, 9, 27, '2015-05-11 03:15:24', '2015-05-11 03:15:24'),
(119, 44, 13, 40, '2015-05-11 03:15:24', '2015-05-11 03:15:24'),
(120, 44, 10, 30, '2015-05-11 03:15:24', '2015-05-11 03:15:24');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=119 ;

--
-- Dumping data for table `dapan`
--

INSERT INTO `dapan` (`id`, `cauhoi_id`, `user_id`, `dapan_dung`, `tendapan`, `created_at`, `updated_at`) VALUES
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
(43, 13, 8, 0, 'None of the above', '2015-04-01 01:51:47', '2015-04-01 01:51:47'),
(44, 14, 7, 0, 'True', '2015-04-24 03:04:12', '2015-04-24 03:04:12'),
(45, 14, 7, 1, 'False', '2015-04-24 03:04:28', '2015-04-24 03:04:28'),
(46, 15, 7, 0, '10', '2015-04-24 03:05:14', '2015-04-24 03:05:14'),
(47, 15, 7, 0, '3', '2015-04-24 03:05:24', '2015-04-24 03:05:24'),
(48, 15, 7, 1, '4', '2015-04-24 03:05:32', '2015-04-24 03:29:52'),
(49, 15, 7, 0, 'many', '2015-04-24 03:05:44', '2015-04-24 03:05:44'),
(50, 16, 7, 0, 'False', '2015-04-24 03:32:39', '2015-04-24 03:32:39'),
(51, 16, 7, 1, 'True', '2015-04-24 03:32:56', '2015-04-24 03:32:56'),
(52, 17, 7, 0, 'It defines a statement to create a stored-procedure', '2015-04-24 03:34:32', '2015-04-24 03:34:32'),
(53, 17, 7, 1, 'It contains a call to a stored-procedure', '2015-04-24 03:34:56', '2015-04-24 03:34:56'),
(54, 17, 7, 0, 'It defines a store-procedure', '2015-04-24 03:35:12', '2015-04-24 03:35:12'),
(55, 18, 7, 0, '1023', '2015-04-24 03:35:58', '2015-04-24 03:35:58'),
(56, 18, 7, 1, '1099', '2015-04-24 03:36:10', '2015-04-24 03:36:10'),
(57, 18, 7, 0, '1069', '2015-04-24 03:36:24', '2015-04-24 03:36:24'),
(58, 19, 7, 0, 'String sql=”SELECT * FROM Student”; Statement st=cn.createStatement(sql); ResultSet rs=st.executeQuery();', '2015-04-24 03:37:26', '2015-04-24 03:37:26'),
(59, 19, 7, 1, 'String sql=”SELECT * FROM Student”; Statement st=cn.createStatement(); ResultSet rs=st.executeQuery(sql);', '2015-04-24 03:37:40', '2015-04-24 03:37:40'),
(60, 20, 7, 0, 'PreparedStatement', '2015-04-24 03:38:44', '2015-04-24 03:38:44'),
(61, 20, 7, 1, 'CallableStatement', '2015-04-24 03:39:04', '2015-04-24 03:39:04'),
(62, 20, 7, 0, 'Statement', '2015-04-24 03:39:17', '2015-04-24 03:39:17'),
(63, 21, 7, 0, 'DriverManager', '2015-04-24 03:41:31', '2015-04-24 03:41:31'),
(64, 21, 7, 0, 'ResultSet', '2015-04-24 03:41:55', '2015-04-24 03:41:55'),
(65, 21, 7, 1, 'Connection', '2015-04-24 03:42:11', '2015-04-24 03:42:11'),
(66, 21, 7, 0, 'Driver', '2015-04-24 03:42:25', '2015-04-24 03:42:25'),
(67, 22, 7, 0, '*', '2015-04-24 03:43:16', '2015-04-24 03:43:16'),
(68, 22, 7, 0, '#', '2015-04-24 03:43:30', '2015-04-24 03:43:30'),
(69, 22, 7, 1, '?', '2015-04-24 03:43:43', '2015-04-24 03:43:43'),
(70, 22, 7, 0, '%', '2015-04-24 03:43:55', '2015-04-24 03:43:55'),
(71, 23, 7, 0, 'rs.getString(“name”);', '2015-04-24 03:44:42', '2015-04-24 03:44:42'),
(72, 23, 7, 0, 'rs.getString(1);', '2015-04-24 03:44:59', '2015-04-24 03:44:59'),
(73, 23, 7, 1, 'rs.getString(0);', '2015-04-24 03:45:24', '2015-04-24 03:45:24'),
(74, 24, 7, 0, 'PHP Translator', '2015-04-24 03:53:37', '2015-04-24 03:53:37'),
(75, 24, 7, 1, 'PHP Interpreter', '2015-04-24 03:53:55', '2015-04-24 03:53:55'),
(76, 24, 7, 0, 'PHP Communicator', '2015-04-24 03:54:10', '2015-04-24 03:54:10'),
(77, 24, 7, 0, 'Không có câu nào đúng', '2015-04-24 03:54:22', '2015-04-24 03:54:22'),
(78, 25, 7, 0, 'MySQL', '2015-04-24 03:55:10', '2015-04-24 03:55:10'),
(79, 25, 7, 0, 'Apache', '2015-04-24 03:55:25', '2015-04-24 03:55:25'),
(80, 25, 7, 1, 'Microsoft', '2015-04-24 03:55:38', '2015-04-24 03:55:38'),
(81, 25, 7, 0, 'Linux', '2015-04-24 03:55:51', '2015-04-24 03:55:51'),
(82, 25, 7, 0, 'PHP', '2015-04-24 03:56:09', '2015-04-24 03:56:09'),
(83, 26, 7, 0, 'ZEDAT', '2015-04-24 03:56:57', '2015-04-24 03:56:57'),
(84, 26, 7, 1, 'ZEND', '2015-04-24 03:57:15', '2015-04-24 03:57:15'),
(85, 26, 7, 0, 'ZENAT', '2015-04-24 03:57:27', '2015-04-24 03:57:27'),
(86, 26, 7, 0, 'ZETA', '2015-04-24 03:57:42', '2015-04-24 03:57:42'),
(87, 27, 7, 0, 'gấp 25', '2015-04-24 04:00:18', '2015-04-24 04:00:18'),
(88, 27, 7, 0, 'gấp 3', '2015-04-24 04:00:35', '2015-04-24 04:00:35'),
(89, 27, 7, 0, 'gấp 40', '2015-04-24 04:00:51', '2015-04-24 04:00:51'),
(90, 27, 7, 1, 'gấp 100', '2015-04-24 04:01:04', '2015-04-24 04:01:04'),
(91, 28, 7, 1, 'phpinfo()', '2015-04-24 04:01:50', '2015-04-24 04:01:50'),
(92, 28, 7, 0, 'phptatus()', '2015-04-24 04:02:26', '2015-04-24 04:02:26'),
(93, 28, 7, 0, 'phptest()', '2015-04-24 04:02:40', '2015-04-24 04:02:40'),
(94, 28, 7, 0, 'phpcheck()', '2015-04-24 04:02:51', '2015-04-24 04:02:51'),
(95, 29, 7, 1, 'http://127.0.0.1', '2015-04-24 04:03:34', '2015-04-24 04:03:34'),
(96, 29, 7, 0, 'http://127.0.1.0', '2015-04-24 04:03:46', '2015-04-24 04:03:46'),
(97, 29, 7, 0, 'http://127.0.0.0', '2015-04-24 04:04:00', '2015-04-24 04:04:00'),
(98, 29, 7, 0, 'http://000.0.0.0', '2015-04-24 04:04:15', '2015-04-24 04:04:15'),
(99, 30, 7, 0, 'Tên của một giống dân thiểu số Apache', '2015-04-24 04:05:01', '2015-04-24 04:05:01'),
(100, 30, 7, 1, '" a patchy Webserver "', '2015-04-24 04:05:17', '2015-04-24 04:05:17'),
(101, 30, 7, 0, 'Apache Webserver Group', '2015-04-24 04:05:32', '2015-04-24 04:05:32'),
(102, 30, 7, 0, 'Apache Software Foundation', '2015-04-24 04:05:44', '2015-04-24 04:05:44'),
(103, 31, 7, 1, 'Có thể nới rộng thêm qua các phát triển của các phương thức phụ khác ( add-on function)', '2015-04-24 04:06:43', '2015-04-24 04:06:43'),
(104, 31, 7, 0, 'Không thể nới rộng thêm được, bởi cả hai đã được cài gắn cố định', '2015-04-24 04:07:00', '2015-04-24 04:07:00'),
(105, 31, 7, 0, 'Có thể nhưng phải viết lại tất cả core', '2015-04-24 04:07:19', '2015-04-24 04:07:19'),
(106, 32, 7, 0, '1500$', '2015-04-24 04:08:13', '2015-04-24 04:08:13'),
(107, 32, 7, 0, '150$', '2015-04-24 04:08:32', '2015-04-24 04:08:32'),
(108, 32, 7, 0, '50$ / mỗi tháng', '2015-04-24 04:08:44', '2015-04-24 04:08:44'),
(109, 32, 7, 1, 'không tốn đồng nào', '2015-04-24 04:09:05', '2015-04-24 04:09:05'),
(110, 33, 7, 0, 'James Gosling', '2015-04-24 04:09:55', '2015-04-24 04:09:55'),
(111, 33, 7, 0, 'Tim Berners-Lee', '2015-04-24 04:10:09', '2015-04-24 04:10:09'),
(112, 33, 7, 0, 'Todd Fast', '2015-04-24 04:10:27', '2015-04-24 04:10:27'),
(113, 33, 7, 1, 'Rasmus Lerdorf', '2015-04-24 04:10:41', '2015-04-24 04:10:41'),
(114, 4, 7, 0, 'sdfs', '2015-04-24 04:18:43', '2015-04-24 04:18:43'),
(115, 34, 7, 1, 'test 1', '2015-05-04 04:50:29', '2015-05-04 04:50:29'),
(116, 34, 7, 0, 'test 2', '2015-05-04 04:50:41', '2015-05-04 04:50:41'),
(117, 34, 7, 0, 'test 3', '2015-05-04 04:50:54', '2015-05-04 04:50:54'),
(118, 34, 7, 0, 'test 4', '2015-05-04 04:51:05', '2015-05-04 04:51:05');

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
  `socauhoitrongbaithi` int(11) NOT NULL,
  `solanthi` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `monhoc`
--

INSERT INTO `monhoc` (`id`, `tenmonhoc`, `socauhoitrongbaithi`, `solanthi`, `created_at`, `updated_at`) VALUES
(2, 'XML', 10, 3, '2015-03-25 03:56:43', '2015-05-05 07:39:04'),
(3, 'PHP', 10, 3, '2015-03-25 03:57:19', '2015-05-06 05:48:25'),
(5, 'JAVA', 10, 3, '2015-04-24 03:02:54', '2015-05-06 05:48:32');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `ip_address`, `attempts`, `suspended`, `banned`, `last_attempt_at`, `suspended_at`, `banned_at`) VALUES
(1, 1, '::1', 0, 0, 0, NULL, NULL, NULL),
(2, 2, '::1', 0, 0, 0, NULL, NULL, NULL),
(3, 3, '::1', 0, 0, 0, NULL, NULL, NULL),
(4, 8, '::1', 0, 0, 0, NULL, NULL, NULL),
(5, 7, '::1', 0, 0, 0, NULL, NULL, NULL),
(6, 9, '::1', 0, 0, 0, NULL, NULL, NULL);

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
  `remember_token` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `permissions`, `activated`, `activation_code`, `activated_at`, `last_login`, `persist_code`, `reset_password_code`, `first_name`, `last_name`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'thanh', 'thanh061193@gmail.com', '$2y$10$HQiLAjr/GGcdj.p0rTaEgeAfP6hbOqk.RQarFp.Pt7Dew6yJN9AU6', 'admin', 1, NULL, NULL, '2015-03-31 00:17:07', '$2y$10$xeHfG6XnREkcRn9AzBYQKesr8s0fo1fVZ9bEkfuoR2Q70iBnTUavi', NULL, 'Van thanh', 'Nguyen', 0, '2015-03-24 00:55:39', '2015-05-10 21:53:37'),
(2, 'huyen', 'huyen@gmail.com', '$2y$10$BIefrfPMcSFfE.35JAA37.MznEFXeYHbu.MJgm4PTPZacpyO9wfvK', NULL, 1, NULL, NULL, '2015-03-30 19:16:57', '$2y$10$stZ8hun0UgQFpkjl8HgRYO4cAtkEmjPQrbA2gNV/Z07nBxtTPVCUS', NULL, 'huyen', 'thu', 0, '2015-03-24 03:04:59', '2015-03-30 19:16:57'),
(3, 'student', 'admin@gmail.com', '$2y$10$FV8IcFqxpx0FngZ9iTLrDOTlhTBC3kKzeDlxxz0SzlkLAMP8BZWDm', NULL, 1, NULL, NULL, '2015-05-06 01:37:05', '$2y$10$zRZw3BM4KJvHkd2I5Iv.O.oTmyDOrLEZ6ivb59tbY9b6xYxitNuVS', NULL, 'trang', 'bui', 0, '2015-03-30 19:18:11', '2015-05-11 20:37:42'),
(7, 'admin', 'admin2@gmail.com', '$2y$10$6mPL6yCl.bF2cJIPBXCvl.yewTRbKucFTk/F/lYEKm2OckoOKjpfe', 'admin', 1, NULL, NULL, '2015-05-06 01:27:27', '$2y$10$HX5nr2USfhQIdld779IzC.TLuFbemz4iVIfSZrgHm0ZBq5An6EZM6', NULL, 'Van thanh', 'Nguyen', 0, '2015-03-31 02:12:59', '2015-05-11 20:42:09'),
(8, 'teacher', 'teacher@gmail.com', '$2y$10$R4W6icGFbvB8Y1NwZwfo3.ld6g8CEphkLFk5UB0f7WWfMJeWsITwi', 'admin', 1, NULL, NULL, '2015-03-31 18:36:11', '$2y$10$J21yqydjzYanEcwOhIDoaODSuD5qESTuPPmMH1XZqSMQn1CIfBb3e', NULL, 'Van thanh', 'Nguyen', 0, '2015-03-31 02:13:33', '2015-05-10 21:54:45'),
(9, 'thisinh', 'honghanh@gmail.com', '$2y$10$PM09hScVxZWEgKqGvdTnpeWRvTIQdxMpETEx47cEizkgn0CtYrV3.', NULL, 1, NULL, NULL, '2015-05-05 18:50:59', '$2y$10$mVTJXWiMwe6312AqPrPEFeC3ptVzOjRI5XO1VTu3WMI.7uSqkPwFa', NULL, 'hồng', 'hạnh', 0, '2015-05-03 21:00:59', '2015-05-06 02:55:08'),
(30, 'test', 'test@gmail.com', '$2y$10$.x8y9wXVLPOCGCvz6w6fxOjXEx3nTArwg3jFvqwK8QZU4C.1Pt57O', NULL, 0, NULL, NULL, NULL, NULL, NULL, 'test', 'test', 0, '2015-05-10 20:00:55', '2015-05-10 20:36:51');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `cauhoi`
--
ALTER TABLE `cauhoi`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `chi_tiet_bai_thi`
--
ALTER TABLE `chi_tiet_bai_thi`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT for table `dapan`
--
ALTER TABLE `dapan`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `monhoc`
--
ALTER TABLE `monhoc`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
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
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
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
