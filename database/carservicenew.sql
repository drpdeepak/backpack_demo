-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2017 at 07:14 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carservicenew`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL,
  `title` varchar(155) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `banner_position` varchar(155) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `contact_email` varchar(155) DEFAULT NULL,
  `contact_number` varchar(55) DEFAULT NULL,
  `order_no` int(51) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `title`, `image`, `image_url`, `banner_position`, `start_date`, `end_date`, `contact_email`, `contact_number`, `order_no`, `is_default`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Cloak Rooms', 'uploads\\advertisements\\wedding-698333_1280.jpg', 'https://laravel-backpack.readme.io/v3.0/docs/crud-fields', 'header', '2017-07-07', '2017-07-28', 'deepak.bestu@gmail.com', '9782402678', NULL, 0, 1, '2017-07-16 11:44:13', '2017-07-16 11:44:13'),
(3, 'Cab Service', 'uploads\\advertisements\\ads1.jpg', 'http://salasarbalaji.org/', 'footer', '2017-08-23', '2017-09-30', 'deepak.bestu@gmail.com', '9782402678', NULL, 0, 1, '2017-08-27 04:46:08', '2017-08-27 04:46:08');

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `visible` int(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PUBLISHED',
  `date` date NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `title`, `slug`, `content`, `image`, `status`, `date`, `featured`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 1, '4:30 a.m पट खुलना', 'monday-schedule', '<table style=\"width:1108px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>4:30 a.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>पट</strong>&nbsp;<strong>खुलना</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>5:00 a.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>मंगल</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>10:30 a.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>राजभोग</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>6:00 p.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>धूप</strong>&nbsp;<strong>और</strong>&nbsp;<strong>मोहनदास</strong>&nbsp;<strong>जी</strong>&nbsp;<strong>की</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>07:30p.m.</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>बालाजी</strong>&nbsp;<strong>की</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>8:15 p.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>बाल</strong>&nbsp;<strong>भोग</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>10.00p.m.</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>शयन</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>11:00 A.M. (&nbsp;</strong><strong>केवल</strong>&nbsp;<strong>मंगलवार</strong><strong>&nbsp;)</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>राजभोग</strong><strong>,</strong><strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"vertical-align:top\"><strong>Note:</strong>&nbsp;<em>The Rajbhog Aarti is only for the Tuesday</em></td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'uploads\\livedarshan\\17.jpg', 'PUBLISHED', '2017-07-31', 1, '2017-07-30 20:18:35', '2017-07-30 20:18:35', NULL),
(3, 1, '5:00 a.m  मंगल आरती', 'mangal-arti', '<table style=\"width:1108px\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"vertical-align:top\">\r\n			<p><strong>Salasar Balaji Dham Darshan Timings</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>4:30 a.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>पट</strong>&nbsp;<strong>खुलना</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>5:00 a.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>मंगल</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>10:30 a.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>राजभोग</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>6:00 p.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>धूप</strong>&nbsp;<strong>और</strong>&nbsp;<strong>मोहनदास</strong>&nbsp;<strong>जी</strong>&nbsp;<strong>की</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>07:30p.m.</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>बालाजी</strong>&nbsp;<strong>की</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>8:15 p.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>बाल</strong>&nbsp;<strong>भोग</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>10.00p.m.</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>शयन</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>11:00 A.M. (&nbsp;</strong><strong>केवल</strong>&nbsp;<strong>मंगलवार</strong><strong>&nbsp;)</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>राजभोग</strong><strong>,</strong><strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'uploads\\livedarshan\\17.jpg', 'PUBLISHED', '2017-07-31', 1, '2017-07-30 20:19:19', '2017-07-30 20:19:19', NULL),
(4, 1, '10:30 a.m  राजभोग', 'rajbhog', '<table style=\"width:1108px\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"vertical-align:top\">\r\n			<p><strong>Salasar Balaji Dham Darshan Timings</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>4:30 a.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>पट</strong>&nbsp;<strong>खुलना</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>5:00 a.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>मंगल</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>10:30 a.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>राजभोग</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>6:00 p.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>धूप</strong>&nbsp;<strong>और</strong>&nbsp;<strong>मोहनदास</strong>&nbsp;<strong>जी</strong>&nbsp;<strong>की</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>07:30p.m.</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>बालाजी</strong>&nbsp;<strong>की</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>8:15 p.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>बाल</strong>&nbsp;<strong>भोग</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>10.00p.m.</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>शयन</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>11:00 A.M. (&nbsp;</strong><strong>केवल</strong>&nbsp;<strong>मंगलवार</strong><strong>&nbsp;)</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>राजभोग</strong><strong>,</strong><strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'uploads\\livedarshan\\17.jpg', 'PUBLISHED', '2017-07-31', 1, '2017-07-30 20:19:58', '2017-07-30 20:19:58', NULL),
(5, 1, '6:00 p.m  धूप और मोहनदास जी की आरती', 'mohandasji-arti', '<p><strong>Monday-Sunday</strong></p>\r\n\r\n<table style=\"width:1108px\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"vertical-align:top\">\r\n			<p><strong>Salasar Balaji Dham Darshan Timings</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>4:30 a.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>पट</strong>&nbsp;<strong>खुलना</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>5:00 a.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>मंगल</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>10:30 a.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>राजभोग</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>6:00 p.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>धूप</strong>&nbsp;<strong>और</strong>&nbsp;<strong>मोहनदास</strong>&nbsp;<strong>जी</strong>&nbsp;<strong>की</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>07:30p.m.</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>बालाजी</strong>&nbsp;<strong>की</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>8:15 p.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>बाल</strong>&nbsp;<strong>भोग</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>10.00p.m.</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>शयन</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>11:00 A.M. (&nbsp;</strong><strong>केवल</strong>&nbsp;<strong>मंगलवार</strong><strong>&nbsp;)</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>राजभोग</strong><strong>,</strong><strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'uploads\\livedarshan\\17.jpg', 'PUBLISHED', '2017-07-31', 1, '2017-07-30 20:20:45', '2017-07-30 20:20:45', NULL),
(6, 1, '07:30p.m.  बालाजी की आरती', 'balaji-ki-arti', '<table style=\"width:1108px\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"vertical-align:top\">\r\n			<p><strong>Salasar Balaji Dham Darshan Timings</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>4:30 a.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>पट</strong>&nbsp;<strong>खुलना</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>5:00 a.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>मंगल</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>10:30 a.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>राजभोग</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>6:00 p.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>धूप</strong>&nbsp;<strong>और</strong>&nbsp;<strong>मोहनदास</strong>&nbsp;<strong>जी</strong>&nbsp;<strong>की</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>07:30p.m.</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>बालाजी</strong>&nbsp;<strong>की</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>8:15 p.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>बाल</strong>&nbsp;<strong>भोग</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>10.00p.m.</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>शयन</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>11:00 A.M. (&nbsp;</strong><strong>केवल</strong>&nbsp;<strong>मंगलवार</strong><strong>&nbsp;)</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>राजभोग</strong><strong>,</strong><strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'uploads\\livedarshan\\17.jpg', 'PUBLISHED', '2017-07-31', 1, '2017-07-30 20:21:26', '2017-07-30 20:21:26', NULL),
(7, 1, '8:15 p.m  बाल भोग', 'bal-bhog', '<table style=\"width:1108px\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"vertical-align:top\">\r\n			<p><strong>Salasar Balaji Dham Darshan Timings</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>4:30 a.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>पट</strong>&nbsp;<strong>खुलना</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>5:00 a.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>मंगल</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>10:30 a.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>राजभोग</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>6:00 p.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>धूप</strong>&nbsp;<strong>और</strong>&nbsp;<strong>मोहनदास</strong>&nbsp;<strong>जी</strong>&nbsp;<strong>की</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>07:30p.m.</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>बालाजी</strong>&nbsp;<strong>की</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>8:15 p.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>बाल</strong>&nbsp;<strong>भोग</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>10.00p.m.</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>शयन</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>11:00 A.M. (&nbsp;</strong><strong>केवल</strong>&nbsp;<strong>मंगलवार</strong><strong>&nbsp;)</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>राजभोग</strong><strong>,</strong><strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'uploads\\livedarshan\\17.jpg', 'PUBLISHED', '2017-07-31', 1, '2017-07-30 20:22:04', '2017-07-30 20:22:04', NULL),
(8, 1, '10.00p.m.  शयन आरती', 'shayan-arti', '<table style=\"width:1108px\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"vertical-align:top\">\r\n			<p><strong>Salasar Balaji Dham Darshan Timings</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>4:30 a.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>पट</strong>&nbsp;<strong>खुलना</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>5:00 a.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>मंगल</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>10:30 a.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>राजभोग</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>6:00 p.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>धूप</strong>&nbsp;<strong>और</strong>&nbsp;<strong>मोहनदास</strong>&nbsp;<strong>जी</strong>&nbsp;<strong>की</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>07:30p.m.</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>बालाजी</strong>&nbsp;<strong>की</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>8:15 p.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>बाल</strong>&nbsp;<strong>भोग</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>10.00p.m.</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>शयन</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>11:00 A.M. (&nbsp;</strong><strong>केवल</strong>&nbsp;<strong>मंगलवार</strong><strong>&nbsp;)</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>राजभोग</strong><strong>,</strong><strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'uploads\\livedarshan\\17.jpg', 'PUBLISHED', '2017-07-31', 1, '2017-07-30 20:22:40', '2017-07-30 20:22:40', NULL),
(9, 1, '11:00 A.M. ( केवल मंगलवार )  राजभोग,आरती', 'rajbhog-arti', '<table style=\"width:1108px\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"vertical-align:top\">\r\n			<p><strong>Salasar Balaji Dham Darshan Timings</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>4:30 a.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>पट</strong>&nbsp;<strong>खुलना</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>5:00 a.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>मंगल</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>10:30 a.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>राजभोग</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>6:00 p.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>धूप</strong>&nbsp;<strong>और</strong>&nbsp;<strong>मोहनदास</strong>&nbsp;<strong>जी</strong>&nbsp;<strong>की</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>07:30p.m.</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>बालाजी</strong>&nbsp;<strong>की</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>8:15 p.m</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>बाल</strong>&nbsp;<strong>भोग</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>10.00p.m.</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>शयन</strong>&nbsp;<strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>11:00 A.M. (&nbsp;</strong><strong>केवल</strong>&nbsp;<strong>मंगलवार</strong><strong>&nbsp;)</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>राजभोग</strong><strong>,</strong><strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'uploads\\livedarshan\\17.jpg', 'PUBLISHED', '2017-07-31', 1, '2017-07-30 20:23:24', '2017-07-30 20:23:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `article_tag`
--

CREATE TABLE `article_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `visible` int(11) NOT NULL DEFAULT '0',
  `lft` int(10) UNSIGNED DEFAULT NULL,
  `rgt` int(10) UNSIGNED DEFAULT NULL,
  `depth` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `slug`, `meta_title`, `meta_keywords`, `meta_description`, `description`, `visible`, `lft`, `rgt`, `depth`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Photos and Frames', 'uploads\\product_category\\plant.png', 'photos', 'Puja Coins', 'Puja Coins', 'Puja Coins', '<p>Puja Coins</p>', 1, NULL, NULL, NULL, '2017-07-04 02:11:08', '2017-07-31 07:42:42', NULL),
(2, 'Books', 'uploads\\product_category\\trident.png', 'ebooking', 'Books', 'Books', 'Books', '<p>Books</p>', 1, NULL, NULL, NULL, '2017-07-04 02:11:31', '2017-07-31 07:36:24', NULL),
(3, 'Eatable items', 'uploads\\product_category\\trident.png', 'estable-items', 'Eatable items', 'Eatable items', 'Eatable items', 'Eatable items', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Gifts and Items', 'uploads\\product_category\\trident.png', 'books-and-gifts', 'Gifts and Items', 'Gifts and Items', 'Gifts and Items', '<p>Gifts and Items</p>', 1, NULL, NULL, NULL, NULL, '2017-07-31 07:37:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cabs`
--

CREATE TABLE `cabs` (
  `id` int(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `fare` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `cab_no` varchar(100) NOT NULL,
  `route_details` text NOT NULL,
  `driver` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cabs`
--

INSERT INTO `cabs` (`id`, `name`, `type`, `fare`, `image`, `cab_no`, `route_details`, `driver`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mini Cab', 'Minicabs', '10', 'uploads\\cabs\\car.png', 'RJ14-3443', '<h2>Swift Dzire highlights</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>July 1, 2017</strong>: Wondering how&nbsp;<strong>GST&nbsp;</strong>has impacted prices of the Maruti Dzire? Find out&nbsp;<strong><a href=\"\">here</a></strong>!</p>\r\n\r\n<p>The all-new Dzire has crossed the bookings of 44,000 units within days of its launch. With the overwhelming response, the waiting period of the sedan has stretched between eight to ten weeks.&nbsp;Into its third-generation, the new Maruti Suzuki Dzire is built on the same Heartect platform that also underpins the current-gen Baleno hatchback.</p>\r\n\r\n<p>In terms of dimensions</p>', 'Rajaram Chaudhry', 'suzuki-dzire', 1, '2017-09-02 12:59:36', '2017-08-02 11:22:40'),
(2, 'Sedans Car', 'Sedans', '12', 'uploads\\cabs\\sedan-car-model.png', 'RJ14-3000', '<h2>Sedans Car</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>July 07, 2017:&nbsp;</strong>Maruti has now added Android Auto to the SmartPlay Infotaiment system in the Ciaz. It is a welcome update for everyone using mobiles phones that run on Google&rsquo;s Android operating system. The infotainment unit&nbsp;always had&nbsp;Apple CarPlay compatibility for all Apple phone users.</p>\r\n\r\n<p>Wondering how GST has impacted prices of the Maruti Ciaz? Find out&nbsp;</p>', 'Rajaram Chaudhry', 'maruti-ciaz', 1, '2017-09-02 13:00:09', '2017-08-02 11:25:14'),
(3, 'SUV Car', 'SUV', '15', 'uploads\\cabs\\car-suv.png', 'RJ14-3000', '<h2>SUV Car</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>July 07, 2017:&nbsp;</strong>Maruti has now added Android Auto to the SmartPlay Infotaiment system in the Ciaz. It is a welcome update for everyone using mobiles phones that run on Google&rsquo;s Android operating system. The infotainment unit&nbsp;always had&nbsp;Apple CarPlay compatibility for all Apple phone users.</p>\r\n\r\n<p>Wondering how GST has impacted prices of the Maruti Ciaz? Find out&nbsp</p>', 'Rajaram Chaudhry', 'suv', 1, '2017-09-02 13:08:38', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 46, '2017-08-21 10:37:50', '2017-08-21 10:37:50');

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(15) NOT NULL,
  `cart_id` int(25) NOT NULL,
  `product_id` int(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `lft` int(10) UNSIGNED DEFAULT NULL,
  `rgt` int(10) UNSIGNED DEFAULT NULL,
  `depth` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `lft`, `rgt`, `depth`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, NULL, NULL, NULL, 'uncategory', 'uncategory', '2017-04-26 23:38:58', '2017-04-26 23:38:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_leads`
--

CREATE TABLE `contact_leads` (
  `id` bigint(20) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `message` longtext NOT NULL,
  `callback` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_leads`
--

INSERT INTO `contact_leads` (`id`, `name`, `email`, `message`, `callback`, `created_at`, `updated_at`) VALUES
(1, 'Rakesh', 'rakesh@mailinator.com', 'It seems the buttons preview and revisions are disabled by default. Even though they don\'t show in the actions column, they are still being passed to the front end.\r\nAdding the following code to my controller removed the Actions column, as it checks the count of buttons as a check to display the column.', 0, NULL, '2017-05-22 03:21:22'),
(4, 'Nishu Jangid', 'nishu14@mailinator.com', 'This is for test to check leads in back end without login...', 0, '2017-05-25 00:54:45', '2017-05-25 00:54:45'),
(5, 'gdfgdf gdfg df gfdg fd gfddfgdfgdfgdf gdf gdf gdf', 'hdfgfgfdg@dfgfgdf.com', 'dfgdfgdfgdfgfd gfdgdfgdf', 0, '2017-06-06 00:27:22', '2017-06-06 00:27:22'),
(6, 'Alka Bagga', 'alkabagga@yahoo.com', 'please call', 0, '2017-06-06 06:07:21', '2017-06-06 06:07:21'),
(7, 'Kamal Singh', 'kamalsingh@gmail.com', 'dsfdsd ssfds fds', 1, '2017-06-08 23:41:15', '2017-06-08 23:41:15'),
(8, 'Tom ', 'rakesh.rathore@planetwebsolution.com', 'dfgdfgdfg', 1, '2017-06-14 01:55:39', '2017-06-14 01:55:39'),
(9, 'Tom ', 'rakesh.rathore@planetwebsolution.com', 'dsgfdfgdfg', 1, '2017-06-14 02:00:41', '2017-06-14 02:00:41'),
(10, 'Rakesh Rathore', 'bann@planetwebsolution.com', 'hdfkgdfgdf', 1, '2017-06-19 03:58:32', '2017-06-19 03:58:32'),
(11, 'Rakesh Rathore', 'admin@admin.com', 'dfgfdgfd', 1, '2017-06-19 04:01:16', '2017-06-19 04:01:16'),
(12, 'Rakesh Rathore', 'admin@admin.com', 'dfgdfgd', 1, '2017-06-19 04:03:40', '2017-06-19 04:03:40'),
(13, 'Rakesh Rathore', 'admin@admin.com', 'dsfdsfsdfdf', 1, '2017-06-19 04:18:26', '2017-06-19 04:18:26'),
(14, 'Rakesh Rathore', 'admin@admin.com', 'ghjghjg', 1, '2017-06-19 04:22:02', '2017-06-19 04:22:02');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `album_id` int(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(25) NOT NULL,
  `hotel_categories_id` int(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `price` varchar(50) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `rating` int(5) NOT NULL,
  `address` text NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `visible` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `hotel_categories_id`, `name`, `slug`, `meta_title`, `meta_keywords`, `meta_description`, `description`, `price`, `featured`, `image1`, `image2`, `image3`, `rating`, `address`, `contact`, `email`, `url`, `visible`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hotel Jai Singh Palace', 'jai-singh-palace', 'Hotel Jai Singh Palace', 'Hotel Jai Singh Palace', 'Hotel Jai Singh Palace', '<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:800px\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">\r\n			<h3>Main amenities</h3>\r\n			</th>\r\n			<th scope=\"col\">\r\n			<h3>For families</h3>\r\n\r\n			<ul>\r\n			</ul>\r\n			</th>\r\n			<th scope=\"col\">\r\n			<h3>What&rsquo;s around</h3>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>20 guestrooms</li>\r\n				<li>Restaurant</li>\r\n				<li>Air conditioning</li>\r\n				<li>Daily housekeeping</li>\r\n				<li>Laundry service</li>\r\n				<li>Free newspapers in the lobby</li>\r\n				<li>Luggage storage</li>\r\n				<li>Tour/ticket assistance</li>\r\n			</ul>\r\n\r\n			<ul>\r\n				<li>Free WiFi in lobby and free parking</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Rollaway/extra beds (surcharge)</li>\r\n				<li>Private bathroom</li>\r\n				<li>Free toiletries</li>\r\n				<li>Daily housekeeping</li>\r\n				<li>Laundry facilities</li>\r\n				<li>Elevator/lift</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>In M.I. Road</li>\r\n				<li>Ram Niwas Gardens (15-minute walk)</li>\r\n				<li>Bapu Bazaar (15-minute walk)</li>\r\n				<li>Birla Auditorium (17-minute walk)</li>\r\n				<li>Central Museum (18-minute walk)</li>\r\n				<li>Heaven-Piercing Minaret (20-minute walk)</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '1125', 1, 'uploads/hotels/822_032-1200x800-c-default.jpg', 'uploads/hotels/8822307_57_z.jpg', 'uploads/hotels/TGH_GRAND_KING_1200x800-1200x800-c-default.jpg', 3, 'Hotel Jai Singh Palace', '8107306488', 'divine.educ4@gmail.com', 'http://invoice.euonusit.com', 1, '2017-07-31 08:26:22', '2017-07-31 08:26:22'),
(2, 2, 'Hotel Mansingh', 'hotel-mansingh', 'Hotel Mansingh', 'Hotel Mansingh', 'Hotel Mansingh', '<div data-overview-section-type=\"HOTEL_FEATURE\" id=\"overview-section-4\">\r\n<h3>Main amenities</h3>\r\n\r\n<ul>\r\n	<li>106 guestrooms</li>\r\n	<li>Restaurant and bar/lounge</li>\r\n	<li>Outdoor pool</li>\r\n	<li>Breakfast available</li>\r\n	<li>WiFi in the lobby</li>\r\n	<li>Health club</li>\r\n	<li>Spa services</li>\r\n	<li>Conference center</li>\r\n	<li>Train station pick-up service</li>\r\n	<li>Childcare</li>\r\n	<li>24-hour front desk</li>\r\n	<li>Air conditioning</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Free parking</li>\r\n</ul>\r\n</div>\r\n\r\n<div data-overview-section-type=\"FAMILY_FRIENDLY_SECTION\" id=\"overview-section-5\">\r\n<h3>For families</h3>\r\n\r\n<ul>\r\n	<li>Babysitting or childcare (surcharge)</li>\r\n	<li>Rollaway/extra beds (surcharge)</li>\r\n	<li>Private bathroom</li>\r\n	<li>Daily housekeeping</li>\r\n	<li>Laundry facilities</li>\r\n	<li>Hair dryer</li>\r\n</ul>\r\n</div>\r\n\r\n<div data-overview-section-type=\"LOCATION_SECTION\" id=\"overview-section-6\">\r\n<h3>What&rsquo;s around</h3>\r\n\r\n<ul>\r\n	<li>In M.I. Road</li>\r\n	<li>Birla Auditorium (18-minute walk)</li>\r\n	<li>Ram Niwas Gardens (21-minute walk)</li>\r\n	<li>Bapu Bazaar (21-minute walk)</li>\r\n	<li>Heaven-Piercing Minaret (23-minute walk)</li>\r\n	<li>Central Museum (23-minute walk)</li>\r\n</ul>\r\n</div>', '1000', 1, 'uploads\\hotels\\822_032-1200x800-c-default.jpg', 'uploads\\hotels\\8822307_57_z.jpg', 'uploads\\hotels\\TGH_GRAND_KING_1200x800-1200x800-c-default.jpg', 4, 'Hotel Mansingh', '8107306488', 'divine.educ4@gmail.com', 'http://invoice.euonusit.com', 1, '2017-07-30 09:59:27', '2017-07-30 09:59:27'),
(4, 1, 'Hotel Hilton', 'hilton-hotel', 'Hotel Hilton', 'Hotel Hilton', 'Hotel Hilton', '<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:800px\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">\r\n			<h3>Main amenities</h3>\r\n			</th>\r\n			<th scope=\"col\">\r\n			<h3>For families</h3>\r\n\r\n			<ul>\r\n			</ul>\r\n			</th>\r\n			<th scope=\"col\">\r\n			<h3>What&rsquo;s around</h3>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>20 guestrooms</li>\r\n				<li>Restaurant</li>\r\n				<li>Air conditioning</li>\r\n				<li>Daily housekeeping</li>\r\n				<li>Laundry service</li>\r\n				<li>Free newspapers in the lobby</li>\r\n				<li>Luggage storage</li>\r\n				<li>Tour/ticket assistance</li>\r\n			</ul>\r\n\r\n			<ul>\r\n				<li>Free WiFi in lobby and free parking</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Rollaway/extra beds (surcharge)</li>\r\n				<li>Private bathroom</li>\r\n				<li>Free toiletries</li>\r\n				<li>Daily housekeeping</li>\r\n				<li>Laundry facilities</li>\r\n				<li>Elevator/lift</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>In M.I. Road</li>\r\n				<li>Ram Niwas Gardens (15-minute walk)</li>\r\n				<li>Bapu Bazaar (15-minute walk)</li>\r\n				<li>Birla Auditorium (17-minute walk)</li>\r\n				<li>Central Museum (18-minute walk)</li>\r\n				<li>Heaven-Piercing Minaret (20-minute walk)</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '12000', 1, 'uploads/Salasar_gallery/HOTEL/5 Star Hotel/Hilton/7864542_32_z.jpg', 'uploads/Salasar_gallery/HOTEL/5 Star Hotel/Crowne Plaza Jaipur/902ede1f_z.jpg', 'uploads/Salasar_gallery/HOTEL/5 Star Hotel/Crowne Plaza Jaipur/8168124_74_z.jpg', 5, 'Hotel Hilton', '8107306488', 'divine.educ4@gmail.com', 'http://invoice.euonusit.com', 1, '2017-07-31 09:09:46', '2017-07-31 09:09:46'),
(5, 1, 'ITC Rajputana Sheraton', 'itc-hotel', 'ITC Rajputana Sheraton', 'ITC Rajputana Sheraton', 'ITC Rajputana Sheraton', '<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:800px\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">\r\n			<h3>Main amenities</h3>\r\n			</th>\r\n			<th scope=\"col\">\r\n			<h3>For families</h3>\r\n\r\n			<ul>\r\n			</ul>\r\n			</th>\r\n			<th scope=\"col\">\r\n			<h3>What&rsquo;s around</h3>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>20 guestrooms</li>\r\n				<li>Restaurant</li>\r\n				<li>Air conditioning</li>\r\n				<li>Daily housekeeping</li>\r\n				<li>Laundry service</li>\r\n				<li>Free newspapers in the lobby</li>\r\n				<li>Luggage storage</li>\r\n				<li>Tour/ticket assistance</li>\r\n			</ul>\r\n\r\n			<ul>\r\n				<li>Free WiFi in lobby and free parking</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Rollaway/extra beds (surcharge)</li>\r\n				<li>Private bathroom</li>\r\n				<li>Free toiletries</li>\r\n				<li>Daily housekeeping</li>\r\n				<li>Laundry facilities</li>\r\n				<li>Elevator/lift</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>In M.I. Road</li>\r\n				<li>Ram Niwas Gardens (15-minute walk)</li>\r\n				<li>Bapu Bazaar (15-minute walk)</li>\r\n				<li>Birla Auditorium (17-minute walk)</li>\r\n				<li>Central Museum (18-minute walk)</li>\r\n				<li>Heaven-Piercing Minaret (20-minute walk)</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '26000', 1, 'uploads/Salasar_gallery/HOTEL/5 Star Hotel/ITC Rajputana Sheraton/75a60b55_z.jpg', 'uploads/Salasar_gallery/HOTEL/5 Star Hotel/Crowne Plaza Jaipur/902ede1f_z.jpg', 'uploads/Salasar_gallery/HOTEL/5 Star Hotel/Crowne Plaza Jaipur/8168124_74_z.jpg', 5, 'hotel ITC Rajputana', '8107306488', 'divine.educ4@gmail.com', 'http://invoice.euonusit.com', 1, '2017-07-31 09:09:27', '2017-07-31 09:09:27'),
(7, 3, 'FabHotel Castle Lalpura', 'fabhotel', 'FabHotel Castle Lalpura MI Road', 'FabHotel Castle Lalpura MI Road', 'FabHotel Castle Lalpura MI Road', '<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:800px\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">\r\n			<h3>Main amenities</h3>\r\n			</th>\r\n			<th scope=\"col\">\r\n			<h3>For families</h3>\r\n\r\n			<ul>\r\n			</ul>\r\n			</th>\r\n			<th scope=\"col\">\r\n			<h3>What&rsquo;s around</h3>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>20 guestrooms</li>\r\n				<li>Restaurant</li>\r\n				<li>Air conditioning</li>\r\n				<li>Daily housekeeping</li>\r\n				<li>Laundry service</li>\r\n				<li>Free newspapers in the lobby</li>\r\n				<li>Luggage storage</li>\r\n				<li>Tour/ticket assistance</li>\r\n			</ul>\r\n\r\n			<ul>\r\n				<li>Free WiFi in lobby and free parking</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Rollaway/extra beds (surcharge)</li>\r\n				<li>Private bathroom</li>\r\n				<li>Free toiletries</li>\r\n				<li>Daily housekeeping</li>\r\n				<li>Laundry facilities</li>\r\n				<li>Elevator/lift</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>In M.I. Road</li>\r\n				<li>Ram Niwas Gardens (15-minute walk)</li>\r\n				<li>Bapu Bazaar (15-minute walk)</li>\r\n				<li>Birla Auditorium (17-minute walk)</li>\r\n				<li>Central Museum (18-minute walk)</li>\r\n				<li>Heaven-Piercing Minaret (20-minute walk)</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '8000', 1, 'uploads/Salasar_gallery/HOTEL/3 Star Hotel/FabHotel Castle Lalpura MI Road/8ccef14c_z.jpg', 'uploads/Salasar_gallery/HOTEL/3 Star Hotel/FabHotel Castle Lalpura MI Road/025f0372_z.jpg', 'uploads/Salasar_gallery/HOTEL/3 Star Hotel/FabHotel Castle Lalpura MI Road/963d5d3b_z.jpg', 3, 'FabHotel Castle Lalpura MI Road', '8326598458', 'divine.educ4@gmail.com', 'http://invoice.euonusit.com', 1, '2017-07-31 09:10:00', '2017-07-31 09:10:00'),
(8, 3, 'Hotel Jai Niwas', 'jai-hotel', 'Jai Niwas', 'Jai Niwas', 'Jai Niwas', '<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:800px\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">\r\n			<h3>Main amenities</h3>\r\n			</th>\r\n			<th scope=\"col\">\r\n			<h3>For families</h3>\r\n\r\n			<ul>\r\n			</ul>\r\n			</th>\r\n			<th scope=\"col\">\r\n			<h3>What&rsquo;s around</h3>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>20 guestrooms</li>\r\n				<li>Restaurant</li>\r\n				<li>Air conditioning</li>\r\n				<li>Daily housekeeping</li>\r\n				<li>Laundry service</li>\r\n				<li>Free newspapers in the lobby</li>\r\n				<li>Luggage storage</li>\r\n				<li>Tour/ticket assistance</li>\r\n			</ul>\r\n\r\n			<ul>\r\n				<li>Free WiFi in lobby and free parking</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Rollaway/extra beds (surcharge)</li>\r\n				<li>Private bathroom</li>\r\n				<li>Free toiletries</li>\r\n				<li>Daily housekeeping</li>\r\n				<li>Laundry facilities</li>\r\n				<li>Elevator/lift</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>In M.I. Road</li>\r\n				<li>Ram Niwas Gardens (15-minute walk)</li>\r\n				<li>Bapu Bazaar (15-minute walk)</li>\r\n				<li>Birla Auditorium (17-minute walk)</li>\r\n				<li>Central Museum (18-minute walk)</li>\r\n				<li>Heaven-Piercing Minaret (20-minute walk)</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '8000', 1, 'uploads/hotels/822_032-1200x800-c-default.jpg', 'uploads/hotels/8822307_57_z.jpg', 'uploads/hotels/TGH_GRAND_KING_1200x800-1200x800-c-default.jpg', 3, 'Hotel Jai Niwas', '8107306488', 'divine.educ4@gmail.com', 'http://invoice.euonusit.com', 1, '2017-07-31 09:10:17', '2017-07-31 09:10:17'),
(9, 3, 'Hotel Vesta Maurya', 'vesta-hotel', 'Vesta Maurya', 'Vesta Maurya', 'Vesta Maurya', '<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:800px\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">\r\n			<h3>Main amenities</h3>\r\n			</th>\r\n			<th scope=\"col\">\r\n			<h3>For families</h3>\r\n\r\n			<ul>\r\n			</ul>\r\n			</th>\r\n			<th scope=\"col\">\r\n			<h3>What&rsquo;s around</h3>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>20 guestrooms</li>\r\n				<li>Restaurant</li>\r\n				<li>Air conditioning</li>\r\n				<li>Daily housekeeping</li>\r\n				<li>Laundry service</li>\r\n				<li>Free newspapers in the lobby</li>\r\n				<li>Luggage storage</li>\r\n				<li>Tour/ticket assistance</li>\r\n			</ul>\r\n\r\n			<ul>\r\n				<li>Free WiFi in lobby and free parking</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Rollaway/extra beds (surcharge)</li>\r\n				<li>Private bathroom</li>\r\n				<li>Free toiletries</li>\r\n				<li>Daily housekeeping</li>\r\n				<li>Laundry facilities</li>\r\n				<li>Elevator/lift</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>In M.I. Road</li>\r\n				<li>Ram Niwas Gardens (15-minute walk)</li>\r\n				<li>Bapu Bazaar (15-minute walk)</li>\r\n				<li>Birla Auditorium (17-minute walk)</li>\r\n				<li>Central Museum (18-minute walk)</li>\r\n				<li>Heaven-Piercing Minaret (20-minute walk)</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '8000', 1, 'uploads/Salasar_gallery/HOTEL/3 Star Hotel/Vesta Maurya/2606087_49_z.jpg', 'uploads/Salasar_gallery/HOTEL/3 Star Hotel/FabHotel Castle Lalpura MI Road/025f0372_z.jpg', 'uploads/Salasar_gallery/HOTEL/3 Star Hotel/FabHotel Castle Lalpura MI Road/963d5d3b_z.jpg', 3, 'Hotel Vesta Maurya', '8107306488', 'divine.educ4@gmail.com', 'http://invoice.euonusit.com', 1, '2017-07-31 09:10:35', '2017-07-31 09:10:35'),
(10, 2, 'Hotel lebua Lodge at Amer', 'lebua', 'Hotel lebua Lodge at Amer', 'Hotel lebua Lodge at Amer', 'Hotel lebua Lodge at Amer', '<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:800px\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">\r\n			<h3>Main amenities</h3>\r\n			</th>\r\n			<th scope=\"col\">\r\n			<h3>For families</h3>\r\n\r\n			<ul>\r\n			</ul>\r\n			</th>\r\n			<th scope=\"col\">\r\n			<h3>What&rsquo;s around</h3>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>20 guestrooms</li>\r\n				<li>Restaurant</li>\r\n				<li>Air conditioning</li>\r\n				<li>Daily housekeeping</li>\r\n				<li>Laundry service</li>\r\n				<li>Free newspapers in the lobby</li>\r\n				<li>Luggage storage</li>\r\n				<li>Tour/ticket assistance</li>\r\n			</ul>\r\n\r\n			<ul>\r\n				<li>Free WiFi in lobby and free parking</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Rollaway/extra beds (surcharge)</li>\r\n				<li>Private bathroom</li>\r\n				<li>Free toiletries</li>\r\n				<li>Daily housekeeping</li>\r\n				<li>Laundry facilities</li>\r\n				<li>Elevator/lift</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>In M.I. Road</li>\r\n				<li>Ram Niwas Gardens (15-minute walk)</li>\r\n				<li>Bapu Bazaar (15-minute walk)</li>\r\n				<li>Birla Auditorium (17-minute walk)</li>\r\n				<li>Central Museum (18-minute walk)</li>\r\n				<li>Heaven-Piercing Minaret (20-minute walk)</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '10000', 1, 'uploads/Salasar_gallery/HOTEL/4star/lebua Lodge at Amer/lebua Lodge at Amer.jpg', 'uploads/Salasar_gallery/HOTEL/4star/lebua Lodge at Amer/lebua Lodge at Amer1.jpg', 'uploads/Salasar_gallery/HOTEL/4star/lebua Lodge at Amer/lebua Lodge at Amer2.jpg', 4, 'Hotel lebua Lodge at Amer', '8107306488', 'divine.educ4@gmail.com', 'http://invoice.euonusit.com', 1, '2017-07-31 09:10:48', '2017-07-31 09:10:48'),
(11, 2, 'Hotel Radisson Jaipur City Center', 'radisson', 'Radisson Jaipur City Center', 'Radisson Jaipur City Center', 'Radisson Jaipur City Center', '<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:800px\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">\r\n			<h3>Main amenities</h3>\r\n			</th>\r\n			<th scope=\"col\">\r\n			<h3>For families</h3>\r\n\r\n			<ul>\r\n			</ul>\r\n			</th>\r\n			<th scope=\"col\">\r\n			<h3>What&rsquo;s around</h3>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>20 guestrooms</li>\r\n				<li>Restaurant</li>\r\n				<li>Air conditioning</li>\r\n				<li>Daily housekeeping</li>\r\n				<li>Laundry service</li>\r\n				<li>Free newspapers in the lobby</li>\r\n				<li>Luggage storage</li>\r\n				<li>Tour/ticket assistance</li>\r\n			</ul>\r\n\r\n			<ul>\r\n				<li>Free WiFi in lobby and free parking</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Rollaway/extra beds (surcharge)</li>\r\n				<li>Private bathroom</li>\r\n				<li>Free toiletries</li>\r\n				<li>Daily housekeeping</li>\r\n				<li>Laundry facilities</li>\r\n				<li>Elevator/lift</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>In M.I. Road</li>\r\n				<li>Ram Niwas Gardens (15-minute walk)</li>\r\n				<li>Bapu Bazaar (15-minute walk)</li>\r\n				<li>Birla Auditorium (17-minute walk)</li>\r\n				<li>Central Museum (18-minute walk)</li>\r\n				<li>Heaven-Piercing Minaret (20-minute walk)</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '9000', 1, 'uploads/Salasar_gallery/HOTEL/4star/Radisson Jaipur City Center/Radisson Jaipur City Center.jpg', 'uploads/Salasar_gallery/HOTEL/4star/Radisson Jaipur City Center/Radisson Jaipur City Center1.jpg', 'uploads/Salasar_gallery/HOTEL/4star/Radisson Jaipur City Center/Radisson Jaipur City Center2.jpg', 4, 'Radisson Jaipur City Center', '8107306488', 'divine.educ4@gmail.com', 'http://invoice.euonusit.com', 1, '2017-07-31 09:11:02', '2017-07-31 09:11:02'),
(12, 4, 'Hotel Jai Singh Palace', 'jai-singh', 'Hotel Jai Singh Palace', 'Hotel Jai Singh Palace', 'Hotel Jai Singh Palace', '<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:800px\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">\r\n			<h3>Main amenities</h3>\r\n			</th>\r\n			<th scope=\"col\">\r\n			<h3>For families</h3>\r\n\r\n			<ul>\r\n			</ul>\r\n			</th>\r\n			<th scope=\"col\">\r\n			<h3>What&rsquo;s around</h3>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>20 guestrooms</li>\r\n				<li>Restaurant</li>\r\n				<li>Air conditioning</li>\r\n				<li>Daily housekeeping</li>\r\n				<li>Laundry service</li>\r\n				<li>Free newspapers in the lobby</li>\r\n				<li>Luggage storage</li>\r\n				<li>Tour/ticket assistance</li>\r\n			</ul>\r\n\r\n			<ul>\r\n				<li>Free WiFi in lobby and free parking</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Rollaway/extra beds (surcharge)</li>\r\n				<li>Private bathroom</li>\r\n				<li>Free toiletries</li>\r\n				<li>Daily housekeeping</li>\r\n				<li>Laundry facilities</li>\r\n				<li>Elevator/lift</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>In M.I. Road</li>\r\n				<li>Ram Niwas Gardens (15-minute walk)</li>\r\n				<li>Bapu Bazaar (15-minute walk)</li>\r\n				<li>Birla Auditorium (17-minute walk)</li>\r\n				<li>Central Museum (18-minute walk)</li>\r\n				<li>Heaven-Piercing Minaret (20-minute walk)</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '6000', 1, 'uploads/Salasar_gallery/HOTEL/2star/Hotel Jai Singh Palace/Hotel Jai Singh Palace.jpg', 'uploads/Salasar_gallery/HOTEL/2star/Hotel Jai Singh Palace/Hotel Jai Singh Palace1.jpg', 'uploads/Salasar_gallery/HOTEL/2star/Hotel Jai Singh Palace/Hotel Jai Singh Palace2.jpg', 2, 'Hotel Jai Singh Palace', '8107306488', 'divine.educ4@gmail.com', 'http://invoice.euonusit.com', 1, '2017-07-31 09:11:16', '2017-07-31 09:11:16'),
(13, 4, 'Hotel Raghav Palace', 'raghav', 'Hotel Raghav Palace', 'Hotel Raghav Palace', 'Hotel Raghav Palace', '<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:800px\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">\r\n			<h3>Main amenities</h3>\r\n			</th>\r\n			<th scope=\"col\">\r\n			<h3>For families</h3>\r\n\r\n			<ul>\r\n			</ul>\r\n			</th>\r\n			<th scope=\"col\">\r\n			<h3>What&rsquo;s around</h3>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>20 guestrooms</li>\r\n				<li>Restaurant</li>\r\n				<li>Air conditioning</li>\r\n				<li>Daily housekeeping</li>\r\n				<li>Laundry service</li>\r\n				<li>Free newspapers in the lobby</li>\r\n				<li>Luggage storage</li>\r\n				<li>Tour/ticket assistance</li>\r\n			</ul>\r\n\r\n			<ul>\r\n				<li>Free WiFi in lobby and free parking</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Rollaway/extra beds (surcharge)</li>\r\n				<li>Private bathroom</li>\r\n				<li>Free toiletries</li>\r\n				<li>Daily housekeeping</li>\r\n				<li>Laundry facilities</li>\r\n				<li>Elevator/lift</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>In M.I. Road</li>\r\n				<li>Ram Niwas Gardens (15-minute walk)</li>\r\n				<li>Bapu Bazaar (15-minute walk)</li>\r\n				<li>Birla Auditorium (17-minute walk)</li>\r\n				<li>Central Museum (18-minute walk)</li>\r\n				<li>Heaven-Piercing Minaret (20-minute walk)</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '5500', 1, 'uploads/Salasar_gallery/HOTEL/2star/Hotel Raghav Palace/Hotel Raghav Palace.jpg', 'uploads/Salasar_gallery/HOTEL/2star/Hotel Raghav Palace/Hotel Raghav Palace1.jpg', 'uploads/Salasar_gallery/HOTEL/2star/Hotel Jai Singh Palace/Hotel Jai Singh Palace2.jpg', 2, 'Hotel Raghav Palace', '8107306488', 'divine.educ4@gmail.com', 'http://invoice.euonusit.com', 1, '2017-07-31 08:55:54', '2017-07-31 08:55:54'),
(14, 4, 'Hotel Ruby', 'ruby', 'Hotel Ruby', 'Hotel Ruby', 'Hotel Ruby', '<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:800px\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">\r\n			<h3>Main amenities</h3>\r\n			</th>\r\n			<th scope=\"col\">\r\n			<h3>For families</h3>\r\n\r\n			<ul>\r\n			</ul>\r\n			</th>\r\n			<th scope=\"col\">\r\n			<h3>What&rsquo;s around</h3>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>20 guestrooms</li>\r\n				<li>Restaurant</li>\r\n				<li>Air conditioning</li>\r\n				<li>Daily housekeeping</li>\r\n				<li>Laundry service</li>\r\n				<li>Free newspapers in the lobby</li>\r\n				<li>Luggage storage</li>\r\n				<li>Tour/ticket assistance</li>\r\n			</ul>\r\n\r\n			<ul>\r\n				<li>Free WiFi in lobby and free parking</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Rollaway/extra beds (surcharge)</li>\r\n				<li>Private bathroom</li>\r\n				<li>Free toiletries</li>\r\n				<li>Daily housekeeping</li>\r\n				<li>Laundry facilities</li>\r\n				<li>Elevator/lift</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>In M.I. Road</li>\r\n				<li>Ram Niwas Gardens (15-minute walk)</li>\r\n				<li>Bapu Bazaar (15-minute walk)</li>\r\n				<li>Birla Auditorium (17-minute walk)</li>\r\n				<li>Central Museum (18-minute walk)</li>\r\n				<li>Heaven-Piercing Minaret (20-minute walk)</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '5400', 1, 'uploads/Salasar_gallery/HOTEL/2star/Hotel Ruby/Hotel Ruby.jpg', 'uploads/Salasar_gallery/HOTEL/2star/Hotel Ruby/Hotel Ruby1.jpg', 'uploads/Salasar_gallery/HOTEL/2star/Hotel Ruby/Hotel Ruby2.jpg', 2, 'Hotel Ruby', '8107306488', 'divine.educ4@gmail.com', 'http://invoice.euonusit.com', 1, '2017-07-31 08:57:57', '2017-07-31 08:57:57'),
(15, 5, 'Hotel Ankit', 'ankit', 'Hotel Ankit', 'Hotel Ankit', 'Hotel Ankit', '<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:800px\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">\r\n			<h3>Main amenities</h3>\r\n			</th>\r\n			<th scope=\"col\">\r\n			<h3>For families</h3>\r\n\r\n			<ul>\r\n			</ul>\r\n			</th>\r\n			<th scope=\"col\">\r\n			<h3>What&rsquo;s around</h3>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>20 guestrooms</li>\r\n				<li>Restaurant</li>\r\n				<li>Air conditioning</li>\r\n				<li>Daily housekeeping</li>\r\n				<li>Laundry service</li>\r\n				<li>Free newspapers in the lobby</li>\r\n				<li>Luggage storage</li>\r\n				<li>Tour/ticket assistance</li>\r\n			</ul>\r\n\r\n			<ul>\r\n				<li>Free WiFi in lobby and free parking</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Rollaway/extra beds (surcharge)</li>\r\n				<li>Private bathroom</li>\r\n				<li>Free toiletries</li>\r\n				<li>Daily housekeeping</li>\r\n				<li>Laundry facilities</li>\r\n				<li>Elevator/lift</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>In M.I. Road</li>\r\n				<li>Ram Niwas Gardens (15-minute walk)</li>\r\n				<li>Bapu Bazaar (15-minute walk)</li>\r\n				<li>Birla Auditorium (17-minute walk)</li>\r\n				<li>Central Museum (18-minute walk)</li>\r\n				<li>Heaven-Piercing Minaret (20-minute walk)</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '2500', 1, 'uploads/Salasar_gallery/HOTEL/1star/1460791899183.jpg', 'uploads/Salasar_gallery/HOTEL/1star/1460796792931.JPG', 'uploads/Salasar_gallery/HOTEL/1star/1494242823422.jpg', 1, 'Hotel Ankit', '8107306488', 'divine.educ4@gmail.com', 'http://invoice.euonusit.com', 1, '2017-07-31 09:02:49', '2017-07-31 09:02:49'),
(16, 5, 'Hotel Vaibhav', 'vaibhav', 'Hotel Vaibhav', 'Hotel Vaibhav', 'Hotel Vaibhav', '<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:800px\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">\r\n			<h3>Main amenities</h3>\r\n			</th>\r\n			<th scope=\"col\">\r\n			<h3>For families</h3>\r\n\r\n			<ul>\r\n			</ul>\r\n			</th>\r\n			<th scope=\"col\">\r\n			<h3>What&rsquo;s around</h3>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>20 guestrooms</li>\r\n				<li>Restaurant</li>\r\n				<li>Air conditioning</li>\r\n				<li>Daily housekeeping</li>\r\n				<li>Laundry service</li>\r\n				<li>Free newspapers in the lobby</li>\r\n				<li>Luggage storage</li>\r\n				<li>Tour/ticket assistance</li>\r\n			</ul>\r\n\r\n			<ul>\r\n				<li>Free WiFi in lobby and free parking</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Rollaway/extra beds (surcharge)</li>\r\n				<li>Private bathroom</li>\r\n				<li>Free toiletries</li>\r\n				<li>Daily housekeeping</li>\r\n				<li>Laundry facilities</li>\r\n				<li>Elevator/lift</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>In M.I. Road</li>\r\n				<li>Ram Niwas Gardens (15-minute walk)</li>\r\n				<li>Bapu Bazaar (15-minute walk)</li>\r\n				<li>Birla Auditorium (17-minute walk)</li>\r\n				<li>Central Museum (18-minute walk)</li>\r\n				<li>Heaven-Piercing Minaret (20-minute walk)</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '2000', 1, 'uploads/Salasar_gallery/HOTEL/1star/2.1.jpg', 'uploads/Salasar_gallery/HOTEL/1star/2.2.jpg', 'uploads/Salasar_gallery/HOTEL/1star/2.4.jpg', 1, 'Hotel Vaibhav', '2365985423', 'divine.educ4@gmail.com', 'http://invoice.euonusit.com', 1, '2017-07-31 09:05:37', '2017-07-31 09:05:37'),
(17, 5, 'Hotel Govindam plaza', 'govindam', 'Hotel Govindam plaza', 'Hotel Govindam plaza', 'Hotel Govindam plaza', '<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:800px\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">\r\n			<h3>Main amenities</h3>\r\n			</th>\r\n			<th scope=\"col\">\r\n			<h3>For families</h3>\r\n\r\n			<ul>\r\n			</ul>\r\n			</th>\r\n			<th scope=\"col\">\r\n			<h3>What&rsquo;s around</h3>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>20 guestrooms</li>\r\n				<li>Restaurant</li>\r\n				<li>Air conditioning</li>\r\n				<li>Daily housekeeping</li>\r\n				<li>Laundry service</li>\r\n				<li>Free newspapers in the lobby</li>\r\n				<li>Luggage storage</li>\r\n				<li>Tour/ticket assistance</li>\r\n			</ul>\r\n\r\n			<ul>\r\n				<li>Free WiFi in lobby and free parking</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Rollaway/extra beds (surcharge)</li>\r\n				<li>Private bathroom</li>\r\n				<li>Free toiletries</li>\r\n				<li>Daily housekeeping</li>\r\n				<li>Laundry facilities</li>\r\n				<li>Elevator/lift</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>In M.I. Road</li>\r\n				<li>Ram Niwas Gardens (15-minute walk)</li>\r\n				<li>Bapu Bazaar (15-minute walk)</li>\r\n				<li>Birla Auditorium (17-minute walk)</li>\r\n				<li>Central Museum (18-minute walk)</li>\r\n				<li>Heaven-Piercing Minaret (20-minute walk)</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '2000', 1, 'uploads/Salasar_gallery/HOTEL/1star/Sitting area1424066516667.jpg', 'uploads/Salasar_gallery/HOTEL/1star/2`3.jpg', 'uploads/Salasar_gallery/HOTEL/1star/1494242823422.jpg', 1, 'Hotel Jai Singh Palace', '8107306488', 'divine.educ4@gmail.com', 'http://invoice.euonusit.com', 1, '2017-07-31 09:08:31', '2017-07-31 09:08:31');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_categories`
--

CREATE TABLE `hotel_categories` (
  `id` int(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_categories`
--

INSERT INTO `hotel_categories` (`id`, `name`, `image`, `slug`, `meta_title`, `meta_keywords`, `meta_description`, `description`, `visible`, `created_at`, `updated_at`) VALUES
(1, '5 Star Hotel', 'uploads\\hotel_category\\letter-h-hotel-outline-with-five-stars.png', 'five-star-hotel', 'Five Star Hotel', 'Five Star Hotel', 'Five Star Hotel', '<p>Five Star Hotel</p>', 1, '2017-07-31 03:06:35', '2017-07-30 09:55:39'),
(2, '4 Star Hotel', 'uploads\\hotel_category\\five-stars-hotel-signal.png', 'four-star-hotel', '4 Start Hotel', '4 Start Hotel', '4 Start Hotel', '<p>4 Start Hotel</p>', 1, '2017-07-31 03:06:43', '2017-07-30 09:55:19'),
(3, '3 Star Hotel', 'uploads\\hotel_category\\three-stars-hotel-sign.png', 'three-star-hotel', '3 Star Hotel', '3 Star Hotel', '3 Star Hotel', '<p>3 Star Hotel</p>', 1, '2017-07-30 09:56:21', '2017-07-30 09:56:21'),
(4, '2 Star Hotel', 'uploads\\hotel_category\\hotel-of-two-stars-quality.png', 'two-star-hotel', '2 Star Hotel', '2 Star Hotel', '2 Star Hotel', '<p>2 Star Hotel</p>', 1, '2017-07-30 09:56:54', '2017-07-30 09:56:54'),
(5, '1 Star Hotel', 'uploads\\hotel_category\\one-star-hotel-sign.png', 'one-star-hotel', '1 Star Hotel', '1 Star Hotel', '1 Star Hotel', '<p>1 Star Hotel</p>', 1, '2017-07-30 09:57:32', '2017-07-30 09:57:32');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `filename`, `position`, `created_at`, `updated_at`) VALUES
(1, '\"TURMERIC_DRY_FRUIT_1_2.jpg\"', 0, '2017-07-16 05:05:33', '2017-07-16 05:05:33'),
(2, '\"Guggal-Dhoop-Sticks-2_2.jpg\"', 0, '2017-07-16 05:07:32', '2017-07-16 05:07:32'),
(3, '\"DIWALI_DIYA_2_2.jpg\"', 0, '2017-07-16 05:09:11', '2017-07-16 05:09:11');

-- --------------------------------------------------------

--
-- Table structure for table `india_cities`
--

CREATE TABLE `india_cities` (
  `id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `india_cities`
--

INSERT INTO `india_cities` (`id`, `state_id`, `name`, `active`) VALUES
(1, 1, 'North and Middle Andaman', 1),
(2, 1, 'South Andaman', 1),
(3, 1, 'Nicobar', 1),
(4, 2, 'Adilabad', 1),
(5, 2, 'Anantapur', 1),
(6, 2, 'Chittoor', 1),
(7, 2, 'East Godavari', 1),
(8, 2, 'Guntur', 1),
(9, 2, 'Hyderabad', 1),
(10, 2, 'Kadapa', 1),
(11, 2, 'Karimnagar', 1),
(12, 2, 'Khammam', 1),
(13, 2, 'Krishna', 1),
(14, 2, 'Kurnool', 1),
(15, 2, 'Mahbubnagar', 1),
(16, 2, 'Medak', 1),
(17, 2, 'Nalgonda', 1),
(18, 2, 'Nellore', 1),
(19, 2, 'Nizamabad', 1),
(20, 2, 'Prakasam', 1),
(21, 2, 'Rangareddi', 1),
(22, 2, 'Srikakulam', 1),
(23, 2, 'Vishakhapatnam', 1),
(24, 2, 'Vizianagaram', 1),
(25, 2, 'Warangal', 1),
(26, 2, 'West Godavari', 1),
(27, 3, 'Anjaw', 1),
(28, 3, 'Changlang', 1),
(29, 3, 'East Kameng', 1),
(30, 3, 'Lohit', 1),
(31, 3, 'Lower Subansiri', 1),
(32, 3, 'Papum Pare', 1),
(33, 3, 'Tirap', 1),
(34, 3, 'Dibang Valley', 1),
(35, 3, 'Upper Subansiri', 1),
(36, 3, 'West Kameng', 1),
(37, 4, 'Barpeta', 1),
(38, 4, 'Bongaigaon', 1),
(39, 4, 'Cachar', 1),
(40, 4, 'Darrang', 1),
(41, 4, 'Dhemaji', 1),
(42, 4, 'Dhubri', 1),
(43, 4, 'Dibrugarh', 1),
(44, 4, 'Goalpara', 1),
(45, 4, 'Golaghat', 1),
(46, 4, 'Hailakandi', 1),
(47, 4, 'Jorhat', 1),
(48, 4, 'Karbi Anglong', 1),
(49, 4, 'Karimganj', 1),
(50, 4, 'Kokrajhar', 1),
(51, 4, 'Lakhimpur', 1),
(52, 4, 'Marigaon', 1),
(53, 4, 'Nagaon', 1),
(54, 4, 'Nalbari', 1),
(55, 4, 'North Cachar Hills', 1),
(56, 4, 'Sibsagar', 1),
(57, 4, 'Sonitpur', 1),
(58, 4, 'Tinsukia', 1),
(59, 5, 'Araria', 1),
(60, 5, 'Aurangabad', 1),
(61, 5, 'Banka', 1),
(62, 5, 'Begusarai', 1),
(63, 5, 'Bhagalpur', 1),
(64, 5, 'Bhojpur', 1),
(65, 5, 'Buxar', 1),
(66, 5, 'Darbhanga', 1),
(67, 5, 'Purba Champaran', 1),
(68, 5, 'Gaya', 1),
(69, 5, 'Gopalganj', 1),
(70, 5, 'Jamui', 1),
(71, 5, 'Jehanabad', 1),
(72, 5, 'Khagaria', 1),
(73, 5, 'Kishanganj', 1),
(74, 5, 'Kaimur', 1),
(75, 5, 'Katihar', 1),
(76, 5, 'Lakhisarai', 1),
(77, 5, 'Madhubani', 1),
(78, 5, 'Munger', 1),
(79, 5, 'Madhepura', 1),
(80, 5, 'Muzaffarpur', 1),
(81, 5, 'Nalanda', 1),
(82, 5, 'Nawada', 1),
(83, 5, 'Patna', 1),
(84, 5, 'Purnia', 1),
(85, 5, 'Rohtas', 1),
(86, 5, 'Saharsa', 1),
(87, 5, 'Samastipur', 1),
(88, 5, 'Sheohar', 1),
(89, 5, 'Sheikhpura', 1),
(90, 5, 'Saran', 1),
(91, 5, 'Sitamarhi', 1),
(92, 5, 'Supaul', 1),
(93, 5, 'Siwan', 1),
(94, 5, 'Vaishali', 1),
(95, 5, 'Pashchim Champaran', 1),
(96, 6, 'Chandigarh', 1),
(97, 7, 'Bastar', 1),
(98, 7, 'Bilaspur', 1),
(99, 7, 'Dantewada', 1),
(100, 7, 'Dhamtari', 1),
(101, 7, 'Durg', 1),
(102, 7, 'Jashpur', 1),
(103, 7, 'Janjgir-Champa', 1),
(104, 7, 'Korba', 1),
(105, 7, 'Koriya', 1),
(106, 7, 'Kanker', 1),
(107, 7, 'Kawardha', 1),
(108, 7, 'Mahasamund', 1),
(109, 7, 'Raigarh', 1),
(110, 7, 'Rajnandgaon', 1),
(111, 7, 'Raipur', 1),
(112, 7, 'Surguja', 1),
(113, 8, 'Dadra and Nagar Haveli', 1),
(114, 9, 'Diu', 1),
(115, 9, 'Daman', 1),
(116, 10, 'Central Delhi', 1),
(117, 10, 'East Delhi', 1),
(118, 10, 'New Delhi', 1),
(119, 10, 'North Delhi', 1),
(120, 10, 'North East Delhi', 1),
(121, 10, 'North West Delhi', 1),
(122, 10, 'South Delhi', 1),
(123, 10, 'South West Delhi', 1),
(124, 10, 'West Delhi', 1),
(125, 11, 'North Goa', 1),
(126, 11, 'South Goa', 1),
(127, 12, 'Ahmedabad', 1),
(128, 12, 'Amreli District', 1),
(129, 12, 'Anand', 1),
(130, 12, 'Banaskantha', 1),
(131, 12, 'Bharuch', 1),
(132, 12, 'Bhavnagar', 1),
(133, 12, 'Dahod', 1),
(134, 12, 'The Dangs', 1),
(135, 12, 'Gandhinagar', 1),
(136, 12, 'Jamnagar', 1),
(137, 12, 'Junagadh', 1),
(138, 12, 'Kutch', 1),
(139, 12, 'Kheda', 1),
(140, 12, 'Mehsana', 1),
(141, 12, 'Narmada', 1),
(142, 12, 'Navsari', 1),
(143, 12, 'Patan', 1),
(144, 12, 'Panchmahal', 1),
(145, 12, 'Porbandar', 1),
(146, 12, 'Rajkot', 1),
(147, 12, 'Sabarkantha', 1),
(148, 12, 'Surendranagar', 1),
(149, 12, 'Surat', 1),
(150, 12, 'Vadodara', 1),
(151, 12, 'Valsad', 1),
(152, 13, 'Ambala', 1),
(153, 13, 'Bhiwani', 1),
(154, 13, 'Faridabad', 1),
(155, 13, 'Fatehabad', 1),
(156, 13, 'Gurgaon', 1),
(157, 13, 'Hissar', 1),
(158, 13, 'Jhajjar', 1),
(159, 13, 'Jind', 1),
(160, 13, 'Karnal', 1),
(161, 13, 'Kaithal', 1),
(162, 13, 'Kurukshetra', 1),
(163, 13, 'Mahendragarh', 1),
(164, 13, 'Mewat', 1),
(165, 13, 'Panchkula', 1),
(166, 13, 'Panipat', 1),
(167, 13, 'Rewari', 1),
(168, 13, 'Rohtak', 1),
(169, 13, 'Sirsa', 1),
(170, 13, 'Sonepat', 1),
(171, 13, 'Yamuna Nagar', 1),
(172, 13, 'Palwal', 1),
(173, 14, 'Bilaspur', 1),
(174, 14, 'Chamba', 1),
(175, 14, 'Hamirpur', 1),
(176, 14, 'Kangra', 1),
(177, 14, 'Kinnaur', 1),
(178, 14, 'Kulu', 1),
(179, 14, 'Lahaul and Spiti', 1),
(180, 14, 'Mandi', 1),
(181, 14, 'Shimla', 1),
(182, 14, 'Sirmaur', 1),
(183, 14, 'Solan', 1),
(184, 14, 'Una', 1),
(185, 15, 'Anantnag', 1),
(186, 15, 'Badgam', 1),
(187, 15, 'Bandipore', 1),
(188, 15, 'Baramula', 1),
(189, 15, 'Doda', 1),
(190, 15, 'Jammu', 1),
(191, 15, 'Kargil', 1),
(192, 15, 'Kathua', 1),
(193, 15, 'Kupwara', 1),
(194, 15, 'Leh', 1),
(195, 15, 'Poonch', 1),
(196, 15, 'Pulwama', 1),
(197, 15, 'Rajauri', 1),
(198, 15, 'Srinagar', 1),
(199, 15, 'Samba', 1),
(200, 15, 'Udhampur', 1),
(201, 16, 'Bokaro', 1),
(202, 16, 'Chatra', 1),
(203, 16, 'Deoghar', 1),
(204, 16, 'Dhanbad', 1),
(205, 16, 'Dumka', 1),
(206, 16, 'Purba Singhbhum', 1),
(207, 16, 'Garhwa', 1),
(208, 16, 'Giridih', 1),
(209, 16, 'Godda', 1),
(210, 16, 'Gumla', 1),
(211, 16, 'Hazaribagh', 1),
(212, 16, 'Koderma', 1),
(213, 16, 'Lohardaga', 1),
(214, 16, 'Pakur', 1),
(215, 16, 'Palamu', 1),
(216, 16, 'Ranchi', 1),
(217, 16, 'Sahibganj', 1),
(218, 16, 'Seraikela and Kharsawan', 1),
(219, 16, 'Pashchim Singhbhum', 1),
(220, 16, 'Ramgarh', 1),
(221, 17, 'Bidar', 1),
(222, 17, 'Belgaum', 1),
(223, 17, 'Bijapur', 1),
(224, 17, 'Bagalkot', 1),
(225, 17, 'Bellary', 1),
(226, 17, 'Bangalore Rural District', 1),
(227, 17, 'Bangalore Urban District', 1),
(228, 17, 'Chamarajnagar', 1),
(229, 17, 'Chikmagalur', 1),
(230, 17, 'Chitradurga', 1),
(231, 17, 'Davanagere', 1),
(232, 17, 'Dharwad', 1),
(233, 17, 'Dakshina Kannada', 1),
(234, 17, 'Gadag', 1),
(235, 17, 'Gulbarga', 1),
(236, 17, 'Hassan', 1),
(237, 17, 'Haveri District', 1),
(238, 17, 'Kodagu', 1),
(239, 17, 'Kolar', 1),
(240, 17, 'Koppal', 1),
(241, 17, 'Mandya', 1),
(242, 17, 'Mysore', 1),
(243, 17, 'Raichur', 1),
(244, 17, 'Shimoga', 1),
(245, 17, 'Tumkur', 1),
(246, 17, 'Udupi', 1),
(247, 17, 'Uttara Kannada', 1),
(248, 17, 'Ramanagara', 1),
(249, 17, 'Chikballapur', 1),
(250, 17, 'Yadagiri', 1),
(251, 18, 'Alappuzha', 1),
(252, 18, 'Ernakulam', 1),
(253, 18, 'Idukki', 1),
(254, 18, 'Kollam', 1),
(255, 18, 'Kannur', 1),
(256, 18, 'Kasaragod', 1),
(257, 18, 'Kottayam', 1),
(258, 18, 'Kozhikode', 1),
(259, 18, 'Malappuram', 1),
(260, 18, 'Palakkad', 1),
(261, 18, 'Pathanamthitta', 1),
(262, 18, 'Thrissur', 1),
(263, 18, 'Thiruvananthapuram', 1),
(264, 18, 'Wayanad', 1),
(265, 19, 'Lakshadweep', 1),
(266, 20, 'Alirajpur', 1),
(267, 20, 'Anuppur', 1),
(268, 20, 'Ashok Nagar', 1),
(269, 20, 'Balaghat', 1),
(270, 20, 'Barwani', 1),
(271, 20, 'Betul', 1),
(272, 20, 'Bhind', 1),
(273, 20, 'Bhopal', 1),
(274, 20, 'Burhanpur', 1),
(275, 20, 'Chhatarpur', 1),
(276, 20, 'Chhindwara', 1),
(277, 20, 'Damoh', 1),
(278, 20, 'Datia', 1),
(279, 20, 'Dewas', 1),
(280, 20, 'Dhar', 1),
(281, 20, 'Dindori', 1),
(282, 20, 'Guna', 1),
(283, 20, 'Gwalior', 1),
(284, 20, 'Harda', 1),
(285, 20, 'Hoshangabad', 1),
(286, 20, 'Indore', 1),
(287, 20, 'Jabalpur', 1),
(288, 20, 'Jhabua', 1),
(289, 20, 'Katni', 1),
(290, 20, 'Khandwa', 1),
(291, 20, 'Khargone', 1),
(292, 20, 'Mandla', 1),
(293, 20, 'Mandsaur', 1),
(294, 20, 'Morena', 1),
(295, 20, 'Narsinghpur', 1),
(296, 20, 'Neemuch', 1),
(297, 20, 'Panna', 1),
(298, 20, 'Rewa', 1),
(299, 20, 'Rajgarh', 1),
(300, 20, 'Ratlam', 1),
(301, 20, 'Raisen', 1),
(302, 20, 'Sagar', 1),
(303, 20, 'Satna', 1),
(304, 20, 'Sehore', 1),
(305, 20, 'Seoni', 1),
(306, 20, 'Shahdol', 1),
(307, 20, 'Shajapur', 1),
(308, 20, 'Sheopur', 1),
(309, 20, 'Shivpuri', 1),
(310, 20, 'Sidhi', 1),
(311, 20, 'Singrauli', 1),
(312, 20, 'Tikamgarh', 1),
(313, 20, 'Ujjain', 1),
(314, 20, 'Umaria', 1),
(315, 20, 'Vidisha', 1),
(316, 21, 'Ahmednagar', 1),
(317, 21, 'Akola', 1),
(318, 21, 'Amrawati', 1),
(319, 21, 'Aurangabad', 1),
(320, 21, 'Bhandara', 1),
(321, 21, 'Beed', 1),
(322, 21, 'Buldhana', 1),
(323, 21, 'Chandrapur', 1),
(324, 21, 'Dhule', 1),
(325, 21, 'Gadchiroli', 1),
(326, 21, 'Gondiya', 1),
(327, 21, 'Hingoli', 1),
(328, 21, 'Jalgaon', 1),
(329, 21, 'Jalna', 1),
(330, 21, 'Kolhapur', 1),
(331, 21, 'Latur', 1),
(332, 21, 'Mumbai City', 1),
(333, 21, 'Mumbai suburban', 1),
(334, 21, 'Nandurbar', 1),
(335, 21, 'Nanded', 1),
(336, 21, 'Nagpur', 1),
(337, 21, 'Nashik', 1),
(338, 21, 'Osmanabad', 1),
(339, 21, 'Parbhani', 1),
(340, 21, 'Pune', 1),
(341, 21, 'Raigad', 1),
(342, 21, 'Ratnagiri', 1),
(343, 21, 'Sindhudurg', 1),
(344, 21, 'Sangli', 1),
(345, 21, 'Solapur', 1),
(346, 21, 'Satara', 1),
(347, 21, 'Thane', 1),
(348, 21, 'Wardha', 1),
(349, 21, 'Washim', 1),
(350, 21, 'Yavatmal', 1),
(351, 22, 'Bishnupur', 1),
(352, 22, 'Churachandpur', 1),
(353, 22, 'Chandel', 1),
(354, 22, 'Imphal East', 1),
(355, 22, 'Senapati', 1),
(356, 22, 'Tamenglong', 1),
(357, 22, 'Thoubal', 1),
(358, 22, 'Ukhrul', 1),
(359, 22, 'Imphal West', 1),
(360, 23, 'East Garo Hills', 1),
(361, 23, 'East Khasi Hills', 1),
(362, 23, 'Jaintia Hills', 1),
(363, 23, 'Ri-Bhoi', 1),
(364, 23, 'South Garo Hills', 1),
(365, 23, 'West Garo Hills', 1),
(366, 23, 'West Khasi Hills', 1),
(367, 24, 'Aizawl', 1),
(368, 24, 'Champhai', 1),
(369, 24, 'Kolasib', 1),
(370, 24, 'Lawngtlai', 1),
(371, 24, 'Lunglei', 1),
(372, 24, 'Mamit', 1),
(373, 24, 'Saiha', 1),
(374, 24, 'Serchhip', 1),
(375, 25, 'Dimapur', 1),
(376, 25, 'Kohima', 1),
(377, 25, 'Mokokchung', 1),
(378, 25, 'Mon', 1),
(379, 25, 'Phek', 1),
(380, 25, 'Tuensang', 1),
(381, 25, 'Wokha', 1),
(382, 25, 'Zunheboto', 1),
(383, 26, 'Angul', 1),
(384, 26, 'Boudh', 1),
(385, 26, 'Bhadrak', 1),
(386, 26, 'Bolangir', 1),
(387, 26, 'Bargarh', 1),
(388, 26, 'Baleswar', 1),
(389, 26, 'Cuttack', 1),
(390, 26, 'Debagarh', 1),
(391, 26, 'Dhenkanal', 1),
(392, 26, 'Ganjam', 1),
(393, 26, 'Gajapati', 1),
(394, 26, 'Jharsuguda', 1),
(395, 26, 'Jajapur', 1),
(396, 26, 'Jagatsinghpur', 1),
(397, 26, 'Khordha', 1),
(398, 26, 'Kendujhar', 1),
(399, 26, 'Kalahandi', 1),
(400, 26, 'Kandhamal', 1),
(401, 26, 'Koraput', 1),
(402, 26, 'Kendrapara', 1),
(403, 26, 'Malkangiri', 1),
(404, 26, 'Mayurbhanj', 1),
(405, 26, 'Nabarangpur', 1),
(406, 26, 'Nuapada', 1),
(407, 26, 'Nayagarh', 1),
(408, 26, 'Puri', 1),
(409, 26, 'Rayagada', 1),
(410, 26, 'Sambalpur', 1),
(411, 26, 'Subarnapur', 1),
(412, 26, 'Sundargarh', 1),
(413, 27, 'Karaikal', 1),
(414, 27, 'Mahe', 1),
(415, 27, 'Puducherry', 1),
(416, 27, 'Yanam', 1),
(417, 28, 'Amritsar', 1),
(418, 28, 'Bathinda', 1),
(419, 28, 'Firozpur', 1),
(420, 28, 'Faridkot', 1),
(421, 28, 'Fatehgarh Sahib', 1),
(422, 28, 'Gurdaspur', 1),
(423, 28, 'Hoshiarpur', 1),
(424, 28, 'Jalandhar', 1),
(425, 28, 'Kapurthala', 1),
(426, 28, 'Ludhiana', 1),
(427, 28, 'Mansa', 1),
(428, 28, 'Moga', 1),
(429, 28, 'Mukatsar', 1),
(430, 28, 'Nawan Shehar', 1),
(431, 28, 'Patiala', 1),
(432, 28, 'Rupnagar', 1),
(433, 28, 'Sangrur', 1),
(434, 29, 'Ajmer', 1),
(435, 29, 'Alwar', 1),
(436, 29, 'Bikaner', 1),
(437, 29, 'Barmer', 1),
(438, 29, 'Banswara', 1),
(439, 29, 'Bharatpur', 1),
(440, 29, 'Baran', 1),
(441, 29, 'Bundi', 1),
(442, 29, 'Bhilwara', 1),
(443, 29, 'Churu', 1),
(444, 29, 'Chittorgarh', 1),
(445, 29, 'Dausa', 1),
(446, 29, 'Dholpur', 1),
(447, 29, 'Dungapur', 1),
(448, 29, 'Ganganagar', 1),
(449, 29, 'Hanumangarh', 1),
(450, 29, 'Juhnjhunun', 1),
(451, 29, 'Jalore', 1),
(452, 29, 'Jodhpur', 1),
(453, 29, 'Jaipur', 1),
(454, 29, 'Jaisalmer', 1),
(455, 29, 'Jhalawar', 1),
(456, 29, 'Karauli', 1),
(457, 29, 'Kota', 1),
(458, 29, 'Nagaur', 1),
(459, 29, 'Pali', 1),
(460, 29, 'Pratapgarh', 1),
(461, 29, 'Rajsamand', 1),
(462, 29, 'Sikar', 1),
(463, 29, 'Sawai Madhopur', 1),
(464, 29, 'Sirohi', 1),
(465, 29, 'Tonk', 1),
(466, 29, 'Udaipur', 1),
(467, 30, 'East Sikkim', 1),
(468, 30, 'North Sikkim', 1),
(469, 30, 'South Sikkim', 1),
(470, 30, 'West Sikkim', 1),
(471, 31, 'Ariyalur', 1),
(472, 31, 'Chennai', 1),
(473, 31, 'Coimbatore', 1),
(474, 31, 'Cuddalore', 1),
(475, 31, 'Dharmapuri', 1),
(476, 31, 'Dindigul', 1),
(477, 31, 'Erode', 1),
(478, 31, 'Kanchipuram', 1),
(479, 31, 'Kanyakumari', 1),
(480, 31, 'Karur', 1),
(481, 31, 'Madurai', 1),
(482, 31, 'Nagapattinam', 1),
(483, 31, 'The Nilgiris', 1),
(484, 31, 'Namakkal', 1),
(485, 31, 'Perambalur', 1),
(486, 31, 'Pudukkottai', 1),
(487, 31, 'Ramanathapuram', 1),
(488, 31, 'Salem', 1),
(489, 31, 'Sivagangai', 1),
(490, 31, 'Tiruppur', 1),
(491, 31, 'Tiruchirappalli', 1),
(492, 31, 'Theni', 1),
(493, 31, 'Tirunelveli', 1),
(494, 31, 'Thanjavur', 1),
(495, 31, 'Thoothukudi', 1),
(496, 31, 'Thiruvallur', 1),
(497, 31, 'Thiruvarur', 1),
(498, 31, 'Tiruvannamalai', 1),
(499, 31, 'Vellore', 1),
(500, 31, 'Villupuram', 1),
(501, 32, 'Dhalai', 1),
(502, 32, 'North Tripura', 1),
(503, 32, 'South Tripura', 1),
(504, 32, 'West Tripura', 1),
(505, 33, 'Almora', 1),
(506, 33, 'Bageshwar', 1),
(507, 33, 'Chamoli', 1),
(508, 33, 'Champawat', 1),
(509, 33, 'Dehradun', 1),
(510, 33, 'Haridwar', 1),
(511, 33, 'Nainital', 1),
(512, 33, 'Pauri Garhwal', 1),
(513, 33, 'Pithoragharh', 1),
(514, 33, 'Rudraprayag', 1),
(515, 33, 'Tehri Garhwal', 1),
(516, 33, 'Udham Singh Nagar', 1),
(517, 33, 'Uttarkashi', 1),
(518, 34, 'Agra', 1),
(519, 34, 'Allahabad', 1),
(520, 34, 'Aligarh', 1),
(521, 34, 'Ambedkar Nagar', 1),
(522, 34, 'Auraiya', 1),
(523, 34, 'Azamgarh', 1),
(524, 34, 'Barabanki', 1),
(525, 34, 'Badaun', 1),
(526, 34, 'Bagpat', 1),
(527, 34, 'Bahraich', 1),
(528, 34, 'Bijnor', 1),
(529, 34, 'Ballia', 1),
(530, 34, 'Banda', 1),
(531, 34, 'Balrampur', 1),
(532, 34, 'Bareilly', 1),
(533, 34, 'Basti', 1),
(534, 34, 'Bulandshahr', 1),
(535, 34, 'Chandauli', 1),
(536, 34, 'Chitrakoot', 1),
(537, 34, 'Deoria', 1),
(538, 34, 'Etah', 1),
(539, 34, 'Kanshiram Nagar', 1),
(540, 34, 'Etawah', 1),
(541, 34, 'Firozabad', 1),
(542, 34, 'Farrukhabad', 1),
(543, 34, 'Fatehpur', 1),
(544, 34, 'Faizabad', 1),
(545, 34, 'Gautam Buddha Nagar', 1),
(546, 34, 'Gonda', 1),
(547, 34, 'Ghazipur', 1),
(548, 34, 'Gorkakhpur', 1),
(549, 34, 'Ghaziabad', 1),
(550, 34, 'Hamirpur', 1),
(551, 34, 'Hardoi', 1),
(552, 34, 'Hathras', 1),
(553, 34, 'Jhansi', 1),
(554, 34, 'Jalaun', 1),
(555, 34, 'Jyotiba Phule Nagar', 1),
(556, 34, 'Jaunpur District', 1),
(557, 34, 'Kanpur Dehat', 1),
(558, 34, 'Kannauj', 1),
(559, 34, 'Kanpur Nagar', 1),
(560, 34, 'Kaushambi', 1),
(561, 34, 'Kushinagar', 1),
(562, 34, 'Lalitpur', 1),
(563, 34, 'Lakhimpur Kheri', 1),
(564, 34, 'Lucknow', 1),
(565, 34, 'Mau', 1),
(566, 34, 'Meerut', 1),
(567, 34, 'Maharajganj', 1),
(568, 34, 'Mahoba', 1),
(569, 34, 'Mirzapur', 1),
(570, 34, 'Moradabad', 1),
(571, 34, 'Mainpuri', 1),
(572, 34, 'Mathura', 1),
(573, 34, 'Muzaffarnagar', 1),
(574, 34, 'Pilibhit', 1),
(575, 34, 'Pratapgarh', 1),
(576, 34, 'Rampur', 1),
(577, 34, 'Rae Bareli', 1),
(578, 34, 'Saharanpur', 1),
(579, 34, 'Sitapur', 1),
(580, 34, 'Shahjahanpur', 1),
(581, 34, 'Sant Kabir Nagar', 1),
(582, 34, 'Siddharthnagar', 1),
(583, 34, 'Sonbhadra', 1),
(584, 34, 'Sant Ravidas Nagar', 1),
(585, 34, 'Sultanpur', 1),
(586, 34, 'Shravasti', 1),
(587, 34, 'Unnao', 1),
(588, 34, 'Varanasi', 1),
(589, 35, 'Birbhum', 1),
(590, 35, 'Bankura', 1),
(591, 35, 'Bardhaman', 1),
(592, 35, 'Darjeeling', 1),
(593, 35, 'Dakshin Dinajpur', 1),
(594, 35, 'Hooghly', 1),
(595, 35, 'Howrah', 1),
(596, 35, 'Jalpaiguri', 1),
(597, 35, 'Cooch Behar', 1),
(598, 35, 'Kolkata', 1),
(599, 35, 'Malda', 1),
(600, 35, 'Midnapore', 1),
(601, 35, 'Murshidabad', 1),
(602, 35, 'Nadia', 1),
(603, 35, 'North 24 Parganas', 1),
(604, 35, 'South 24 Parganas', 1),
(605, 35, 'Purulia', 1),
(606, 35, 'Uttar Dinajpur', 1);

-- --------------------------------------------------------

--
-- Table structure for table `india_states`
--

CREATE TABLE `india_states` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `india_states`
--

INSERT INTO `india_states` (`id`, `name`, `active`) VALUES
(1, 'Andaman and Nicobar', 1),
(2, 'Andhra Pradesh', 1),
(3, 'Arunachal Pradesh', 1),
(4, 'Assam', 1),
(5, 'Bihar', 1),
(6, 'Chandigarh', 1),
(7, 'Chhattisgarh', 1),
(8, 'Dadra and Nagar Haveli', 1),
(9, 'Daman and Diu', 1),
(10, 'Delhi', 1),
(11, 'Goa', 1),
(12, 'Gujarat', 1),
(13, 'Haryana', 1),
(14, 'Himachal Pradesh', 1),
(15, 'Jammu and Kashmir', 1),
(16, 'Jharkhand', 1),
(17, 'Karnataka', 1),
(18, 'Kerala', 1),
(19, 'Lakshadweep', 1),
(20, 'Madhya Pradesh', 1),
(21, 'Maharashtra', 1),
(22, 'Manipur', 1),
(23, 'Meghalaya', 1),
(24, 'Mizoram', 1),
(25, 'Nagaland', 1),
(26, 'Orissa', 1),
(27, 'Puducherry', 1),
(28, 'Punjab', 1),
(29, 'Rajasthan', 1),
(30, 'Sikkim', 1),
(31, 'Tamil Nadu', 1),
(32, 'Tripura', 1),
(33, 'Uttarakhand', 1),
(34, 'Uttar Pradesh', 1),
(35, 'West Bengal', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `lft` int(10) UNSIGNED DEFAULT NULL,
  `rgt` int(10) UNSIGNED DEFAULT NULL,
  `depth` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `name`, `type`, `link`, `page_id`, `parent_id`, `lft`, `rgt`, `depth`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Home', 'internal_link', '/', 1, NULL, NULL, NULL, NULL, '2017-05-12 04:13:00', '2017-07-31 03:03:14', NULL),
(2, 'Programs', 'page_link', '/', 1, NULL, NULL, NULL, NULL, '2017-05-12 04:16:26', '2017-05-12 04:42:40', NULL),
(3, 'Tourists', 'page_link', '/', 2, NULL, NULL, NULL, NULL, '2017-05-12 04:16:59', '2017-05-16 07:39:51', NULL),
(9, 'Pooja', 'page_link', NULL, 74, 2, NULL, NULL, NULL, '2017-05-16 08:30:45', '2017-07-27 11:00:53', NULL),
(10, 'Arti', 'page_link', NULL, 65, 2, NULL, NULL, NULL, '2017-05-16 08:31:12', '2017-07-28 11:58:21', NULL),
(11, 'Daily Schedule', 'page_link', NULL, 73, 2, NULL, NULL, NULL, '2017-05-16 08:31:53', '2017-07-26 10:12:36', NULL),
(12, 'Program booking', 'page_link', NULL, 76, 2, NULL, NULL, NULL, NULL, '2017-07-28 12:04:42', NULL),
(13, 'Upcoming Festival', 'page_link', NULL, 75, 2, NULL, NULL, NULL, NULL, '2017-07-28 10:32:57', NULL),
(14, 'Facilities', 'page_link', '/', 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Gallery', 'page_link', '/', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Book Prasad', 'page_link', NULL, 24, 2, NULL, NULL, NULL, '2017-07-09 18:30:00', '2017-07-09 18:30:00', NULL),
(17, 'Book Pandit', 'page_link', NULL, 25, 2, NULL, NULL, NULL, '2017-07-09 18:30:00', '2017-07-09 18:30:00', NULL),
(18, 'How to Reach Bala Ji', 'page_link', '', 26, 3, NULL, NULL, NULL, '2017-07-09 18:30:00', '2017-07-09 18:30:00', NULL),
(19, 'Local Transport', 'page_link', NULL, 27, 3, NULL, NULL, NULL, '2017-07-09 18:30:00', '2017-07-09 18:30:00', NULL),
(20, 'Places to Visit', 'page_link', NULL, 30, 3, NULL, NULL, NULL, '2017-07-09 18:30:00', '2017-07-09 18:30:00', NULL),
(22, 'Bala Ji RoadMap', 'page_link', NULL, 32, 3, NULL, NULL, NULL, '2017-07-09 18:30:00', '2017-07-09 18:30:00', NULL),
(23, 'Tourists Engage', 'page_link', NULL, 33, 3, NULL, NULL, NULL, '2017-07-09 18:30:00', '2017-07-09 18:30:00', NULL),
(24, 'Accommodations', 'page_link', NULL, 34, 14, NULL, NULL, NULL, '2017-07-09 18:30:00', '2017-07-09 18:30:00', NULL),
(25, 'Shelter Sheds', 'page_link', NULL, 35, 14, NULL, NULL, NULL, '2017-07-11 10:26:30', '2017-07-11 10:26:30', NULL),
(26, 'Bhojanalyas & Refreshment Units', 'page_link', NULL, 36, 14, NULL, NULL, NULL, '2017-07-11 10:26:58', '2017-07-11 10:26:58', NULL),
(27, 'Medical Facilities', 'page_link', NULL, 37, 14, NULL, NULL, NULL, '2017-07-11 10:27:35', '2017-07-11 10:27:35', NULL),
(28, 'Shops', 'page_link', NULL, 38, 14, NULL, NULL, NULL, '2017-07-11 10:27:55', '2017-07-11 10:32:45', NULL),
(32, 'Railway Reservation Counter', 'page_link', NULL, 42, 14, NULL, NULL, NULL, '2017-07-11 10:29:25', '2017-07-11 10:29:25', NULL),
(33, 'Security Arrangements', 'page_link', NULL, 43, 14, NULL, NULL, NULL, '2017-07-11 10:29:41', '2017-07-11 10:29:41', NULL),
(34, 'Post and Telegraphs', 'page_link', NULL, 44, 14, NULL, NULL, NULL, '2017-07-11 10:29:59', '2017-07-11 10:29:59', NULL),
(35, 'Place to rest at Bhawan', 'page_link', NULL, 45, 14, NULL, NULL, NULL, '2017-07-11 10:30:22', '2017-07-11 10:30:22', NULL),
(36, 'Palkis, Ponis and Pithoos', 'page_link', NULL, 46, 14, NULL, NULL, NULL, '2017-07-11 10:30:38', '2017-07-11 10:30:38', NULL),
(37, 'Banks Details', 'page_link', NULL, 47, 14, NULL, NULL, NULL, '2017-07-11 10:30:56', '2017-07-11 10:30:56', NULL),
(38, 'Cloak Rooms', 'page_link', NULL, 48, 14, NULL, NULL, NULL, '2017-07-11 10:53:59', '2017-07-11 10:53:59', NULL),
(39, 'E-Shop', 'page_link', NULL, 49, NULL, NULL, NULL, NULL, '2017-07-11 10:59:53', '2017-07-29 04:40:00', NULL),
(40, 'Services', 'page_link', NULL, 1, NULL, NULL, NULL, NULL, '2017-07-11 19:21:14', '2017-07-11 19:21:44', NULL),
(41, 'Live Darshan', 'page_link', NULL, 51, 40, NULL, NULL, NULL, '2017-07-11 19:30:57', '2017-07-11 19:30:57', NULL),
(42, 'eBooking', 'page_link', NULL, 52, 40, NULL, NULL, NULL, '2017-07-11 19:31:27', '2017-07-11 19:31:27', NULL),
(43, 'Downloads', 'page_link', NULL, 53, 40, NULL, NULL, NULL, '2017-07-11 19:31:46', '2017-07-11 19:31:46', NULL),
(44, 'Other Services', 'page_link', NULL, 54, 40, NULL, NULL, NULL, '2017-07-11 19:32:01', '2017-07-11 19:32:01', NULL),
(45, 'Group Bala ji parsadi', 'page_link', NULL, 55, 40, NULL, NULL, NULL, '2017-07-11 19:34:23', '2017-07-11 19:34:23', NULL),
(52, 'Unique Photos', 'page_link', NULL, 62, 15, NULL, NULL, NULL, '2017-07-11 19:49:33', '2017-07-11 19:49:33', NULL),
(53, 'Programs & Events', 'page_link', NULL, 63, 15, NULL, NULL, NULL, '2017-07-11 19:49:51', '2017-07-11 19:49:51', NULL),
(54, 'Temple Photos', 'page_link', NULL, 64, 15, NULL, NULL, NULL, '2017-07-11 19:50:09', '2017-07-11 19:50:09', NULL),
(55, 'Balaji Arti Photo', 'page_link', NULL, 65, 15, NULL, NULL, NULL, '2017-07-11 19:50:29', '2017-07-11 19:50:29', NULL),
(56, 'Balaji Photos', 'page_link', NULL, 66, 15, NULL, NULL, NULL, '2017-07-11 19:50:48', '2017-07-11 19:50:48', NULL),
(57, 'Bhagto ki Photo', 'page_link', NULL, 67, 15, NULL, NULL, NULL, '2017-07-11 19:51:07', '2017-07-11 19:51:07', NULL),
(58, 'News Album', 'page_link', NULL, 50, 15, NULL, NULL, NULL, '2017-07-11 19:51:50', '2017-07-11 19:51:50', NULL),
(59, 'Publications', 'page_link', NULL, 21, 15, NULL, NULL, NULL, '2017-07-11 19:53:44', '2017-07-11 19:53:44', NULL),
(60, 'Photo', 'page_link', NULL, 57, 39, NULL, NULL, NULL, '2017-07-29 13:40:22', '2017-07-31 07:47:38', NULL),
(61, 'Hotels', 'internal_link', 'hotels', NULL, NULL, NULL, NULL, NULL, '2017-07-31 02:48:55', '2017-07-31 02:48:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meta_users`
--

CREATE TABLE `meta_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reg_no` varchar(15) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `postcode` varchar(50) DEFAULT NULL,
  `author_image` varchar(300) DEFAULT NULL,
  `brief_message` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `land_line` varchar(15) DEFAULT NULL,
  `address1` text,
  `dob` varchar(100) DEFAULT NULL,
  `birth_place` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meta_users`
--

INSERT INTO `meta_users` (`id`, `user_id`, `reg_no`, `fname`, `lname`, `mobile`, `postcode`, `author_image`, `brief_message`, `created_at`, `updated_at`, `land_line`, `address1`, `dob`, `birth_place`) VALUES
(3, 5, '0005', 'Nishtha', 'Rathore', '9680333747', '302022', '1496647149.jpg', NULL, '2017-05-15 05:16:13', '2017-06-05 01:49:09', NULL, NULL, '1970-01-01', NULL),
(4, 2, '0002', 'Rakesh Rathore', 'Rathore', '9680333747', 'gdfgdfgdf', '1496642986.jpg', 'dfgdf dgfdfgfdg', '2017-05-18 04:06:34', '2017-06-14 06:34:26', '0141-232323', 'Sitapura , Jaipur', '1970-01-01', '4354343d'),
(5, 3, 'DRP00023', 'Deepak Parihar', 'Parihar', '9433234345', '402302', '1495719851.png', 'hi Urban Staff', '2017-05-23 06:34:17', '2017-05-25 08:14:49', '0141-232323', 'Sitapura , Jaipur', '2009-06-16', 'AAS443'),
(6, 8, '0008', 'Praveen Sharma', 'Sharma', '9433234345', '302302', '1496929823.jpg', 'dfgdfdfg dfdfgf dfg dfg', '2017-05-25 08:32:55', '2017-06-09 03:47:56', '0141-232323', 'Sitapura , Jaipur', '1999-03-02', '4354343'),
(7, 9, '0009', 'Beena B', 'B', '968033374722', '302015', '1496647544.png', 'dfg dgdf gd gdfg', '2017-06-05 01:48:24', '2017-06-05 02:03:08', NULL, NULL, '1970-01-01', NULL),
(8, 10, '00010', 'Nishtha SHARMA', 'skkalk', '1234567895', '324512', NULL, 'ystrysryrsyrt', '2017-06-05 01:51:31', '2017-06-06 04:58:54', NULL, NULL, '1970-01-01', NULL),
(9, 11, '00011', 'Alka', 'Bagga', '07989112337', 'br3 1su', NULL, 'test with Rakesh', '2017-06-05 02:18:45', '2017-06-05 02:18:45', NULL, NULL, NULL, NULL),
(10, 12, '00012', 'Tom Justin', 'Justin', '0963258741', 'rat htf', NULL, 'fdgdfgdfgdf', '2017-06-05 02:41:13', '2017-06-05 04:12:34', 'gdfgdf', 'dfgdf', '1970-01-01', '123456'),
(11, 13, '00013', 'Rita', 'Smith', '07989112337', 'se232ea', NULL, 'Test by Alka', '2017-06-05 12:06:08', '2017-06-05 12:06:08', NULL, NULL, NULL, '0987654321'),
(12, 14, '00014', 'Jasper', 'Thegreat', '07989112337', 'se23 2ea', NULL, 'Test by Alka', '2017-06-05 12:28:40', '2017-06-05 12:28:40', NULL, NULL, NULL, '0987654321'),
(13, 15, '00015', 'Sam Clarke', 'Clarke', '0987654321', 'BR3 1SU', '1496728369.jpg', 'Test by Alka', '2017-06-05 23:40:43', '2017-06-06 00:30:07', '02085671234', '24 Braeside', '1972-01-01', '121212121212'),
(14, 17, '00017', 'NISHU SHARMA', 'SHARMA', '8974568965', 'plse', NULL, 'THIS IS FOR TEST PLZ IGNORE', '2017-06-06 00:24:29', '2017-06-06 00:35:41', NULL, NULL, '1970-01-01', 'smll cAP'),
(15, 19, '00019', 'Harry Hare', 'Hare', '07989112333', 'se23 2er', NULL, 'Test by Alka to check email address', '2017-06-06 00:45:55', '2017-06-14 06:54:04', NULL, NULL, NULL, '67897896'),
(16, 20, '00020', 'test user ignore', 'ignore', '78945895625fg', 'jjojejowjnowso', NULL, 'fdsfd', '2017-06-06 00:46:12', '2017-06-14 06:29:02', NULL, NULL, NULL, 'dfdsg'),
(17, 21, '00021', 'test', 'user', 'kdc po0suif', 'hofodfoi', NULL, 'x', '2017-06-06 00:47:33', '2017-06-06 00:47:33', NULL, NULL, NULL, 'jhouyhuiy ui yuiy ui                                      123456 123456 123456 1'),
(18, 22, '00022', 'uiii', 'tsx', 'GHYIUYUUIYU', 'hhhhh', NULL, 'testeett', '2017-06-06 00:50:32', '2017-06-06 00:50:32', NULL, NULL, NULL, 'ouo lmus@i.xcode.ro 123456789 123456789 123456789 123456789 123456789 123456789'),
(19, 23, '00023', 'Tom', 'Timiti', '0987671234', 'se23 2eq', NULL, 'Test by Alka', '2017-06-06 01:07:52', '2017-06-06 01:07:52', NULL, NULL, NULL, '345678912'),
(20, 24, '00024', 'Kamal Singh', 'Singh', '8546546344', '2343243', NULL, 'dsfdsfsdfdsfdssd dsfsdfds', '2017-06-06 01:18:52', '2017-06-16 03:54:01', NULL, NULL, '2017-06-06', 'Rrettee23'),
(21, 26, '00026', 'Samuel Amith', 'Amith', '07989112337', 'br3 1su', '1496734526.jpg', 'Test by Alka', '2017-06-06 01:51:19', '2017-06-06 02:05:26', NULL, NULL, '1977-01-01', '3456789012'),
(22, 27, '00027', 'Kamal', 'Singha', '85675475445', '323234', NULL, 'sdfdsfsdfsdfsdfsd', '2017-06-06 01:57:05', '2017-06-06 01:57:05', NULL, NULL, NULL, '33dsdfds'),
(23, 28, '00028', 'Tom', 'Castineira', '07476816550', 'br1 4ar', NULL, 'Test with Zack & Tom', '2017-06-06 05:38:07', '2017-06-06 05:38:07', NULL, NULL, NULL, '12345678'),
(24, 29, '00029', 'Alka Bagga', 'Bagga', '07989112337', 'br31su', '1496757826.jpg', 'Test by Alka with Zack & Tom', '2017-06-06 05:40:21', '2017-06-06 08:33:46', '02084020696', '24 Braeside', NULL, '123456789'),
(25, 30, '00030', 'Nishtha', 'jsajs', 'jjjopiu u8jkjkjkjljl', '65546bvnvbn', '1497510760.png', 'uoiu oiu', '2017-06-06 08:37:31', '2017-06-16 03:35:20', '56ghnjghj76uj', 'testraetsre22', '1995-12-07', 'uoiu ou oi uio uo'),
(26, 31, '00031', 'Ravindra', 'Singh', '9685745285', 'dfgdf545', NULL, 'dfkhgdfgdfg', '2017-06-16 03:58:28', '2017-06-16 03:58:28', NULL, NULL, NULL, '321654'),
(27, 34, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 44, '00044', 'ravi', NULL, '', '', '1497967275.jpg', NULL, NULL, '2017-06-20 08:38:25', NULL, NULL, '1970-01-01', NULL),
(29, 45, '00045', 'Raj Kumar', 'Chahar', '8005679178', '302018', NULL, NULL, '2017-07-30 10:13:03', '2017-07-30 10:13:03', NULL, NULL, NULL, 'INDIA'),
(30, 46, '00046', 'Deepak Parihar', 'Parihar', '9782402678', '302020', '1503828091.JPG', 'sdfsdf sdffsdfss', '2017-08-15 11:56:47', '2017-08-27 04:31:31', '4354353543', 'sfs asda dasdadasd', '1989-02-07', 'dfdsfd'),
(31, 47, '00047', 'Deepak', 'Parihar', '9782402678', NULL, NULL, 'sdfdsfs fsdf dsdsfdsd', '2017-08-23 21:11:34', '2017-08-23 21:11:34', NULL, NULL, '08/02/2017', NULL),
(32, 48, '00048', 'Salasar', 'Parihar', '9464543544', NULL, NULL, 'dsffds dsffss fsadsadaas', '2017-08-23 21:13:28', '2017-08-23 21:13:28', NULL, NULL, '08/16/2017', NULL),
(33, 49, '00049', 'dssdfs', 'sdffdsfsd', '9854544434', NULL, NULL, 'dsf s fsdffds ffsd ffsdfds', '2017-08-23 21:17:17', '2017-08-23 21:17:17', NULL, NULL, '08/02/2017', NULL),
(34, 50, '00050', 'Deepak', 'Parihar', '9782402678', NULL, NULL, 'sdf sfdd sdsdfsdf', '2017-08-23 21:20:13', '2017-08-23 21:20:13', NULL, NULL, '08/01/2017', NULL),
(35, 51, '00051', 'Deepak', 'Parihar', '9782402678', NULL, NULL, 'dssf dsfsd dff', '2017-08-23 21:26:23', '2017-08-23 21:26:23', NULL, NULL, '08/01/2017', NULL),
(36, 52, '00052', 'Deepak', 'Parihar', '9782402678', NULL, NULL, NULL, '2017-08-23 21:27:35', '2017-08-23 21:27:35', NULL, NULL, '08/01/2017', NULL),
(37, 53, '00053', 'Deepak', 'Parihar', '9782402678', NULL, NULL, 'sdf fsdsdsf dsfdsfdsf ds', '2017-08-23 21:28:59', '2017-08-23 21:28:59', NULL, NULL, '08/02/2017', NULL),
(38, 54, '00054', 'Deepak', 'Parihar', '9782402678', NULL, NULL, 'sad sadas das dsa dasdsa', '2017-08-23 21:35:32', '2017-08-23 21:35:32', NULL, NULL, '08/01/2017', NULL),
(39, 55, '00055', 'Deepak', 'Parihar', '9782402678', NULL, NULL, 'dff sd saa asdas das', '2017-08-23 21:39:32', '2017-08-23 21:39:32', NULL, NULL, '08/09/2017', NULL),
(40, 56, '00056', 'efefdsffs', 'sdf dsfds f', '9586557545', NULL, NULL, 'ef esfsdfdsfdsfds', '2017-08-23 21:41:39', '2017-08-23 21:41:39', NULL, NULL, '08/02/2017', NULL),
(41, 57, '00057', 'Deepak', 'Parihar', '9782402678', NULL, NULL, 'dfg gdsfsdsfdsfsd dsfdsfds', '2017-08-23 21:44:28', '2017-08-23 21:44:28', NULL, NULL, '08/02/2017', NULL),
(42, 58, '00058', 'Deepak', 'Parihar', '9782402678', NULL, NULL, 'sdfs dsfsdfsdfdsfdsfds', '2017-08-23 21:49:12', '2017-08-23 21:49:12', NULL, NULL, '08/09/2017', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2015_08_04_131614_create_settings_table', 2),
(4, '2016_05_25_121918_create_pages_table', 3),
(5, '2016_05_05_115641_create_menu_items_table', 4),
(6, '2015_08_04_130507_create_article_tag_table', 5),
(7, '2015_08_04_130520_create_articles_table', 5),
(8, '2015_08_04_130551_create_categories_table', 5),
(9, '2015_08_04_131626_create_tags_table', 5),
(10, '2016_07_24_060017_add_slug_to_categories_table', 5),
(11, '2016_07_24_060101_add_slug_to_tags_table', 5),
(12, '2016_05_10_130540_create_permission_tables', 6),
(13, '2015_09_07_190535_create_languages_table', 7),
(14, '2015_09_10_124414_alter_languages_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscribers`
--

CREATE TABLE `newsletter_subscribers` (
  `id` int(11) NOT NULL,
  `newsletter_id` int(11) NOT NULL,
  `email` varchar(155) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `devicename` varchar(255) DEFAULT NULL,
  `massage` text NOT NULL,
  `deviceid` text NOT NULL,
  `classified_id` int(11) NOT NULL,
  `offer_price` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `details` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `title`, `details`, `image`, `active`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 'Mansoon Offers', '<p>Terms and conditions:</p>\r\n\r\n<ol>\r\n	<li>A flat fare of Rs 99 is charged for 10 km and a free ride time of 30 mins is provided for rides</li>\r\n	<li>Post 10 km or 30 minutes of the ride, the customer will be charged Rs. 12 per Km. and Re 1.25 per trip minute.</li>\r\n	<li>Offer time from 5 AM to 5 PM</li>\r\n	<li>Peak pricing, if any will be applicable above the flat rates.</li>\r\n	<li>\r\n	<div id=\":2il.hw\">\r\n	<div id=\":2ju.mw\">\r\n	<div id=\":2ju.ma\">\r\n	<div>\r\n	<div>\r\n	<div id=\":2ju.co\">\r\n	<div data-tooltip=\"July 5, 2017 at 9:31:17 AM UTC+5:30\" id=\":2jy.ma\"><span dir=\"ltr\">Taxes would be over and above the flat fares</span></div>\r\n	</div>\r\n	</div>\r\n	</div>\r\n	</div>\r\n	</div>\r\n	</div>\r\n	</li>\r\n	<li>Limited period offer</li>\r\n	<li>Offer applicable on Micro, Mini, Prime and Prime Play categories</li>\r\n	<li>Offer applicable 5 times per user</li>\r\n	<li>Offer code should be entered before the starting of the ride</li>\r\n	<li>Ola reserves the right to modify/withdraw the offer as per its discretion</li>\r\n</ol>', 'uploads\\offers\\Emailer-4.jpg', 1, '2017-08-01', '2017-08-31', '2017-08-27 11:17:53', '2017-08-27 11:17:53');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(20) NOT NULL,
  `mihpayid` varchar(200) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `cardnum` varchar(255) NOT NULL,
  `payuMoneyId` varchar(255) DEFAULT NULL,
  `mode` varchar(155) NOT NULL,
  `city` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `bankcode` varchar(150) DEFAULT NULL,
  `discount` varchar(50) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `productinfo` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `mihpayid`, `amount`, `status`, `cardnum`, `payuMoneyId`, `mode`, `city`, `email`, `phone`, `bankcode`, `discount`, `address1`, `firstname`, `productinfo`, `created_at`, `updated_at`) VALUES
(1, '6359083092', '1.0', 'success', '435708XXXXXX2687', '160579659', 'DC', 'Jaipur', 'salasarbalajiorg@gmail.com', '7976611856', 'VISA', '0.00', 'Vijay Path', 'Deepak', 'Moti-laddu', '2017-08-21 12:48:12', '2017-08-21 12:48:12');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `template`, `name`, `title`, `slug`, `content`, `extras`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'training_Main', 'Online Services', 'Online Services', 'online-service', '<p>Urban staff work with a range of different training centres that provide professional and affordable packages. Please call and speak to one off our advisors and find the courses that suits you.</p>', NULL, '2017-04-26 08:27:29', '2017-06-29 11:18:06', NULL),
(2, 'testimonial', 'Testimonial', 'Testimonial', 'testimonial', NULL, '{\"meta_title\":\"fghfgh\",\"meta_description\":\"fghfg\",\"meta_keywords\":\"gfhgfh\"}', '2017-05-12 06:26:03', '2017-05-16 07:37:23', NULL),
(3, 'Home', 'Home Page', 'Home', '/', '<h2>Welcome to Shree Salasar Balaji</h2>\r\n\r\n<p>Shree Salasar Balaji &nbsp;is a place of religious importance for the devotees of Lord Hanuman. It is located in the town of Salasar.<br />\r\nThe idol of Balaji here is different from all other idols of Lord Hanuman. Hanumans possess round face with moustache and beard making it the most unique idol among the other idols of Hanuman all over the world.</p>', '{\"slider_tag_line\":\"<h1>Shree Salasar Balaji<\\/h1>\",\"Operating_on_basis\":\"<ul>\\r\\n<li>Arjitha Sevas<\\/li>\\r\\n<li>Daily Sevas<\\/li>\\r\\n<li>Weekly Sevas<\\/li>\\r\\n<li>Annual \\/ Periodical Sevas<\\/li>\\r\\n      \\r\\n    <\\/ul>\",\"employment_services\":\"<ul><li>Sarvadarshanam<\\/li>\\r\\n<li>Divya Darshan<\\/li>\\r\\n<li>Special Entry Darshan (Seeghra Darshan)<\\/li>\\r\\n                 \\r\\n                <\\/ul>\",\"training_services\":\"<ul><li>Accommodation at Tirumala<\\/li>\\r\\n<li>Advance Reservation<\\/li>\\r\\n<li>Current Booking<\\/li>\\r\\n<li>Rest Houses & Tariffs<\\/li>\\r\\n  \\r\\n                <\\/ul>\",\"who_we_are\":\"<p>Shree Salasar Balaji &nbsp;is a place of religious importance for the devotees of Lord Hanuman. It is located in the town of Salasar, on NH-65 near Sujangarh in Churu district (Rajasthan). It is located near the pilgrim centers of Rani Sati Temple and Khatushyamji. The temple of Balaji which is another name of Hanuman is situated in the middle of Salasar and attracts innumerable worshippers throughout the year especially on Chaitra Purnima and Ashvin Purnima. The temple of Salasar Balaji is now considered to be a Shakti Sthal (a place of power) and Swayambhu (Self creation) by faith, belief, miracles and wish fulfillments of the devotees.&nbsp;<\\/p>\",\"providing_recognised\":\"Salasar Balaji  in India is a place of religious importance for the devotees of Hanuman. It is located in the town of Salasar, on National Highway 65 near Sujangarh in Churu district, Rajasthan.\",\"trafic_management\":\"<h2>Salasar Balaji&nbsp;<\\/h2>\\r\\n\\r\\n<p>Salasar Balaji &nbsp;in India is a place of religious importance for the devotees of Hanuman. It is located in the town of Salasar, on National Highway 65 near Sujangarh in Churu district, Rajasthan.<\\/p>\"}', '2017-05-12 06:31:43', '2017-07-29 13:47:07', NULL),
(4, 'contact_us', 'Contact Us', 'Contact Us', 'contact-us', '<p>Salasar Balaji Dham<br />\r\nOpp SBM Hotel Mandir Road, Salasar , Rajasthan, 331506, India</p>\r\n\r\n<p>Email :info@salasarbalaji.org, help@salasarbalaji.org</p>\r\n\r\n<p>Website:&nbsp;http://salasarbalaji.org</p>', NULL, '2017-05-16 05:59:59', '2017-07-30 05:21:13', NULL),
(5, 'training_Main', 'seva', 'Seva', 'seva', NULL, '{\"tab1_title\":\"LANTRA 12D\",\"tab1_content\":\"<h3>LANTRA Traffic Management - Sector Scheme 12D<\\/h3>\\r\\n\\r\\n<p>The LANTRA Traffic Management Sector Scheme 12D Document details the Quality Assurance requirements and occupational competencies for temporary traffic managment on rural and urban roads. The qualifications cover all types of Temporary Traffic Management on Rural and Urban Roads (ie all Single Carriageway Roads and Dual Carriageway Roads restricted for 40mph or less). Companies implementing TTM measures on Highways Agency roads will need to be accredited to the Sector Scheme specification as a condition of contract. Other Highways Authorities are also specifying the training and assessment detailed in the Sector Scheme as a requirement for any company installing TTM measures.<\\/p>\\r\\n\\r\\n<h3>LANTRA Traffic Management Sector Scheme 12D Operative Qualification Details:<\\/h3>\\r\\n\\r\\n<p><strong>MWO (Moving Works Operative) &ndash;<\\/strong> For Operatives carrying out moving works (works of 10 minutes duration or less) on single carriageways not requiring positive traffic control. This qualification is gained by attending a &frac12; Day training course (T1). On successful completion of the course a TM Registration Card will be issued with the designation MWO.<\\/p>\\r\\n\\r\\n<p><strong>RTMO (Registered TM Operative) &ndash;<\\/strong> For Operatives required to work on single carriageway roads will require a one day training course (T1 &amp; T2) followed by a series of assessments (1 yard based and 2 on live sites) recorded in a Logbook.&nbsp; Once the training course and assessments are successfully completed a TM Registration Card will be issued with the designation RTMO.<\\/p>\\r\\n\\r\\n<p><strong>T3 &ndash;<\\/strong> Low speed dual carriageway operations.<\\/p>\\r\\n\\r\\n<p>This 1-day course covers lane closures on dual carriageways restricted to 40mph or less using static traffic management.<\\/p>\\r\\n\\r\\n<p>Learners must have attended 12D T1, passed M1, and attended and passed T2 before attending the T3 training day. Before undertaking the M3 assessments learners must have successfully completed their M2 assessments.<\\/p>\\r\\n\\r\\n<p>3 on-site live assessments<\\/p>\\r\\n\\r\\n<p><strong>T4 &ndash;<\\/strong> Convoy working operations.<\\/p>\\r\\n\\r\\n<p>This 1-day course covers the requirements for convoy working on rural and urban roads.<\\/p>\\r\\n\\r\\n<p>Learners must have attended 12D T1, passed M1, and attended and passed T2 before attending the T4 training day. Before undertaking the M4 assessments learners must have successfully completed their M2 assessments.<\\/p>\\r\\n\\r\\n<p>1x on-site live assessment<\\/p>\\r\\n\\r\\n<p><strong>T5 &ndash;<\\/strong> Multi phase traffic light operations.<\\/p>\\r\\n\\r\\n<p>This 1-day course covers the requirements for installation, maintenance and removal of multi-phase traffic signals.<\\/p>\\r\\n\\r\\n<p>Learners must have attended 12D T1, passed M1, and attended and passed T2 before attending the T5 training day. Before undertaking the M5 assessments learners must have successfully completed their M2 assessments.<\\/p>\\r\\n\\r\\n<p>1x on-site live assessment<\\/p>\\r\\n\\r\\n<h3>LANTRA Traffic Management Sector Scheme 12D&nbsp;Supervisory &amp; Management Qualifications:<\\/h3>\\r\\n\\r\\n<p><strong>T6 &ndash; RLTMO (Registered Lead Traffic Management Operative) &ndash;<\\/strong> 2 day course for those holding RTMO status who wish to become RLTMO.&nbsp; Aims to provide delegates with the necessary underpinning technical knowledge and skill to supervise a gang or gangs of operatives.<\\/p>\\r\\n\\r\\n<p><strong>T7 &ndash;<\\/strong> Managers and Client Officers &ndash; 12D T7 is targeted at all levels of Management, Client Officers, Technicians and any person not actually installing Temporary Traffic Management, but who have responsibility for planning or monitoring works.<\\/p>\\r\\n\\r\\n<p>Sector Scheme 12D Operative Training and Assessment Programmes are available to suit your requirements and are arranged &quot;in house&quot;, contact us to discuss your requirements in more detail.<\\/p>\\r\\n\\r\\n<h3>TMCE &ndash; Traffic Management For Community Events<\\/h3>\\r\\n\\r\\n<p>This classroom based training course is aimed at event organisers and individuals that have responsibility for Traffic Management of organised events, working in conjunction with local Highway Authority, the Police and other appropriate authorities. This course is intended for event stewards whose duties may involve guiding vehicles, maintaining emergency routes etc.<\\/p>\\r\\n\\r\\n<p>At the end of the course learners will be aware of current legislation and its requirements<\\/p>\\r\\n\\r\\n<p>Understand the application process and costs involved.<\\/p>\\r\\n\\r\\n<p>Be able to devise a Traffic Management Plan<\\/p>\\r\\n\\r\\n<p>Be able to identify typical hazards and appropriate control measures<\\/p>\\r\\n\\r\\n<p>Have a basic understanding of basic traffic management requirements affecting highway users and event staff<\\/p>\",\"tab2_title\":\"LANTRA 12AB\",\"tab2_content\":\"<h3>LANTRA Traffic Management - Sector Scheme 12AB<\\/h3>\\r\\n\\r\\n<h3>TTMBC - Temporary Traffic Management Basic Course<\\/h3>\\r\\n\\r\\n<p>One-day Classroom training. 12AB training for static temporary traffic management on motorways and high speed dual carriageways. This course is intended for persons starting work for the first time in the TM industry and do not hold any 12ABC registration cards.<\\/p>\\r\\n\\r\\n<h3>12AB - For Static Temporary Traffic Management On High Speed Roads And Duals<\\/h3>\\r\\n\\r\\n<p>One-day operative sector scheme training and assessment course has been specifically designed for you if you work on high speed dual carriageways or motorway.<\\/p>\\r\\n\\r\\n<p>Once you have completed the 12A\\/B training course you can obtain full operative status Lantra-Card by completing an approved process of on and off site assessment as detailed within the sector scheme document. The assessments must be completed within a two-year period starting from the date of passing the training.<\\/p>\\r\\n\\r\\n<p>The certificate will be issued for the initial training and this is valid for 2 years.<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Be aware of the relevant health &amp; safety legislation and their responsibilities<\\/li>\\r\\n\\t<li>Be aware of reference documentation used within the temporary traffic management industry<\\/li>\\r\\n\\t<li>Be able to understand safe working methods that are used to install, maintain and remove temporary traffic<\\/li>\\r\\n\\t<li>Demonstrate they have sufficient underpinning knowledge required to be an IPV driver<\\/li>\\r\\n\\t<li>Operate to safe working procedures including hazard and junction negotiation<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h3>12A - Foreman Courses<\\/h3>\\r\\n\\r\\n<p>Two day NHSS in traffic management &ndash; foreman course, has been specifically designed for working on High-Speed motorways and dual carriageways as traffic management foreman.<\\/p>\\r\\n\\r\\n<p>You can complete the course to renew your TSCO card.<\\/p>\\r\\n\\r\\n<h3>12A\\/B - TSCO (Traffic Safety &amp; Control Officer<\\/h3>\\r\\n\\r\\n<p>One day TSCO Sector Scheme training course has been specifically designed for you if you work on high speed dual carriageways or motorways as a TSCO.<\\/p>\\r\\n\\r\\n<p>In order that you can be registered by LANTRA AWARDS as a TSCO, you must prove that you hold as a minimum a 1day safety awareness training course<\\/p>\\r\\n\\r\\n<p><strong>Traffic management training, All of courses are Lantra awards approved, ensuring you remain compliant with the industry requirements.<\\/strong><\\/p>\"}', '2017-05-16 08:28:41', '2017-07-01 02:06:21', NULL),
(6, 'training_Default', 'Darshan', 'Darshan', 'darshan', '<h3>Sign Lighting and Guarding</h3>\r\n\r\n<p>NRSWA- Units 2 (Operative) &amp; 10 (Supervisor)</p>\r\n\r\n<p><strong>Duration:</strong> 1 Day</p>\r\n\r\n<h3>Who Should Attend Sign Lighting and Guarding Training?</h3>\r\n\r\n<p>The Sign Lighting and Guarding course is intended for operatives or supervisors involved in utility works and working on public roads and footpaths throughout the UK.</p>\r\n\r\n<p>The Signing, Lighting and Guarding course covers the traffic and pedestrian management element of the works but does not cover actual excavation or reinstatement work. This is covered on the full street works course.</p>\r\n\r\n<h3>Sign Lighting and Guarding Training&nbsp;Aim</h3>\r\n\r\n<p>The course covers the statutory training requirement for placing signs, cones, barriers etc on public roads and footpaths and enables candidates to gain the necessary qualifications.</p>\r\n\r\n<p>Sign Lighting and Guarding Training&nbsp;Objective</p>\r\n\r\n<h3>By the end of the course candidates will:</h3>\r\n\r\n<p>Understand the requirements of the Safety at Streetworks and Roadworks code of practice in relation to Traffic Management requirements in roadworks and utility works.</p>\r\n\r\n<p>Have achieved Unit accreditation for either Unit 2 (operative) or Unit 10 (Supervisor) of the street works scheme.</p>\r\n\r\n<h3>Sign Lighting and Guarding Training&nbsp;Methods</h3>\r\n\r\n<p>Classroom based training followed by practical assessment. Operative candidates are assessed carrying out practical exercises. Supervisor candidate assessments comprise of knowledge questions followed by observation of operatives carrying out various tasks.</p>\r\n\r\n<h3>References</h3>\r\n\r\n<p>New Roads and Streetworks Act 1991</p>\r\n\r\n<p>Streetworks (Northern Ireland) Order 1995</p>\r\n\r\n<p>Safety at Streetworks and Roadworks, a code of practice</p>\r\n\r\n<p>Chapter 8 Traffic Signs manual</p>\r\n\r\n<p>All candidates attending the course must bring suitable PPE including Safety Boots, Hi Vis Clothing, Gloves.</p>', '{\"meta_title\":\"Darshan\",\"meta_description\":\"Darshan\",\"meta_keywords\":\"Darshan\"}', '2017-05-16 08:29:11', '2017-07-01 02:06:57', NULL),
(7, 'training_Default', 'Accommodation', 'Accommodation', 'accommodation', '<p>आवास के लिए मंदिर के आसपास विभिन्न धर्मशाला और होटल उपलब्ध हैं। उनमें से कुछ नीचे सूचीबद्ध हैं:</p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>आदमपुर सेवा सदन&nbsp;&nbsp;</li>\r\n	<li>अग्रवाल सेवा सदन&nbsp;&nbsp;&nbsp;</li>\r\n	<li>अग्रवाल सेवा सदन&nbsp;&nbsp;&nbsp;</li>\r\n	<li>अबोहर धर्मशाला&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>बम्बई धर्मशाला&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>बंग भवन&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>बाबा अतिथि भवन&nbsp;&nbsp;&nbsp;</li>\r\n	<li>भिवानी सेवा सदन&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>भट्टू सेवा सदन&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; भट्टू&nbsp;</li>\r\n	<li>डबवाली धर्मशाला&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>डानोठिया धर्मशाला&nbsp;&nbsp;&nbsp;</li>\r\n	<li>श्री डिडवाना जनसेवा सदन&nbsp;&nbsp;&nbsp;</li>\r\n	<li>फाजिल्का धर्मशाला&nbsp;&nbsp;</li>\r\n	<li>श्री गंगानगर धर्मशाला</li>\r\n	<li>गाडोदिया सेवा सदन&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</li>\r\n	<li>गोबिन्दगढ़ सेवा सदन</li>\r\n	<li>गोयनका गेस्ट हाउस&nbsp;</li>\r\n	<li>हनुमानगढ़ सेवा सदन&nbsp;</li>\r\n	<li>हिसार धर्मशाला&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>जाजोदिया धर्मशाला&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</li>\r\n	<li>जिला जीन्द सालासर धर्मार्थ ट्रस्ट&nbsp;&nbsp;&nbsp;</li>\r\n	<li>एच एम पी गेस्ट हाऊस&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</li>\r\n	<li>केडिया सेवा सदन&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</li>\r\n	<li>केजड़ीवाल सेवा सदन&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>मालू सेवा सदन&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>मंडेसिया धर्मशाला&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</li>\r\n	<li>सेठ मुरलीधर मानसिंगा धर्मशाला&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>पीलीबंगा सेवा सदन&nbsp;&nbsp;</li>\r\n	<li>पित्ती धर्मशाला</li>\r\n	<li>पोद्धार गेस्ट हाऊस&nbsp;&nbsp;</li>\r\n	<li>फतेहाबाद सेवा सदन&nbsp;</li>\r\n	<li>रामस्वरूप सेवा सदन&nbsp;</li>\r\n	<li>संगरिया धर्मशाला&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>संकटमोचन धर्मशाला&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>श्रीबालाजी यात्री विश्राम गृह&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>श्री बालाजी सेवा सदन</li>\r\n	<li>सारडा सेवा सदन&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</li>\r\n	<li>सुरेका धर्मशाला &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</li>\r\n	<li>सिरसा धर्मशाला</li>\r\n	<li>उत्तम नगर सेवा सदन</li>\r\n	<li>टोहाना सेवा सदन</li>\r\n	<li>विजय नगर धर्मशाला&nbsp;</li>\r\n	<li>मारूति धर्मशाला&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\r\n	<li>बिरमा देवी सेवा सदन</li>\r\n</ul>', '{\"meta_title\":\"Accommodation\",\"meta_description\":\"Accommodation\",\"meta_keywords\":\"Accommodation\"}', '2017-05-16 08:29:32', '2017-07-17 01:47:52', NULL),
(8, 'default', 'Thank You', 'Thank You', 'thank-you', '<p>Thank you for filling out your information! We&rsquo;ve sent you an email.</p>\r\n\r\n<p>Thanks</p>\r\n\r\n<p>Urban Staff&nbsp;</p>', NULL, '2017-05-22 07:34:33', '2017-06-06 00:06:34', NULL),
(17, 'default', 'Privacy Policy', 'Privacy Policy', 'privacy-policy', '<p><strong>Price Range</strong></p>\r\n\r\n<p>At Salasar Balaji (Balaji Computers) we have customised pricing according to the services rendered by us. The details are provided to you beforehand according to the effort, efficiency and the output of the service. Typically the range of transactions on our website varies from&nbsp; INR&nbsp; Rs.11 to Rs.100000.</p>\r\n\r\n<p><strong>Schedule of payment</strong></p>\r\n\r\n<p>Some of our services can be utilised for fixed durations. In such cases, it is clearly mentioned within the description of these services. The period of usage in these cases vary from 1 month to 1 year.</p>\r\n\r\n<p><strong>Price Matching</strong></p>\r\n\r\n<p>At Salasar Balaji (Balaji Computers) we are committed to offering you the best possible prices. We will be glad to meet our competitor&#39;s pricing if you ever find an item that we offer, in the same color and size, available from a similar retailer.</p>\r\n\r\n<p>We are unable to match prices from auction and outlet stores or websites, as well as other retailers&#39; discount promotions, shipping offers and gift card offers.</p>\r\n\r\n<p><strong>Sale Adjustment</strong></p>\r\n\r\n<p>If an item you have purchased is reduced in price within two weeks of your order date, we will happily adjust the sale price for you. Please note that we can only make one sale adjustment per item and designer goods originally purchased on sale are excluded.</p>\r\n\r\n<p><strong>Pricing Errors</strong></p>\r\n\r\n<p>We work hard to ensure the accuracy of pricing. Despite our efforts, pricing errors may still occur. If an item&#39;s price is higher than the price displayed, we will cancel your order of that item and notify you of the cancellation.</p>\r\n\r\n<p><strong>Shopping Cart</strong></p>\r\n\r\n<p>Items in your Shopping Cart reflect the current price displayed on the item&#39;s product details page. Please note: This price may differ from the price displayed when the item was first placed in your Shopping Cart.</p>\r\n\r\n<p>Our merchandise/service is offered for sale by Salasar Balaji (Balaji Computers) for your personal enjoyment and not for resale. Therefore, we reserve the right to refuse to sell to any person whom we believe may be purchasing for resale.</p>\r\n\r\n<p>Our Customer Service Specialists are ready to assist you&mdash;simply call <strong>9828096110</strong>&nbsp;and&nbsp;<strong>24X7</strong> hours a day.</p>', '{\"meta_title\":\"Privacy Policy\",\"meta_description\":\"Privacy Policy\",\"meta_keywords\":\"Privacy Policy\"}', '2017-06-08 04:21:00', '2017-07-17 01:27:43', NULL),
(18, 'default', 'Candidate Disclaimer', 'Candidate Disclaimer', 'candidate-disclaimer', '<p><strong>Privacy Policy for URBAN STAFF MANAGEMENT LTD</strong></p>\r\n\r\n<p>URBAN STAFF MANAGEMENT LTD is committed to protecting the privacy of our candidates, clients and users of our website. We want to provide a safe and secure user experience. We will ensure that the information you submit to us via our website or through any of our offices is only used for the purposes set out in this policy.</p>\r\n\r\n<p><strong>The Information We Collect and How We Use It</strong></p>\r\n\r\n<p>URBAN STAFF MANAGEMENT LTD may collect your personal details, including but not limited to your name and contact details (together with your e-mail address) and other relevant information from your CV. On occasions this may also include - sensitive personal information such as details of criminal convictions and ethnic origin. This information is held, used and disclosed by us as follows:</p>\r\n\r\n<ol>\r\n	<li>To provide our services to you.</li>\r\n	<li>To maintain our business relationship, where you are a user of our website, a client or jobseeker.</li>\r\n	<li>To enable you to submit your CV for general applications, to apply for specific jobs or to subscribe to our job alerts. Please see the separate section on your CV below which outlines additional uses and disclosures.</li>\r\n	<li>To match your details with job vacancies, to assist us in finding a position that is most suitable for you and to send your personal information (including sensitive personal information) to clients in order to apply for jobs.</li>\r\n	<li>To answer your enquiries.</li>\r\n	<li>To direct-market products and services, advise you of news and industry updates, events, promotions and competitions, reports and other information. Where we do so, you will be able to unsubscribe from such communications.</li>\r\n	<li>To fulfil contractual obligations with our clients.</li>\r\n	<li>Where you are registered as a candidate on our database, your personal information will be accessible by our London and Singapore offices to enable them to provide you with recruitment services and for the purposes of business development, systems development and testing.</li>\r\n	<li>To trusted third parties where we have retained them to provide services that you or our clients have requested, such as reference, qualification and criminal reference checking services (as required), verification of the details you have provided from third party sources, psychometric evaluations or skills tests. These third parties comply with similar and equally stringent undertakings of privacy and confidentiality as URBAN STAFF MANAGEMENT LTD.</li>\r\n	<li>To third parties who perform functions on our behalf and who also provide services to us, such as professional advisors, IT consultants carrying out testing and development work on our business technology systems, and research and mailing houses. These third parties comply with similar undertakings of privacy and confidentiality as URBAN STAFF MANAGEMENT LTD.</li>\r\n	<li>We may also release personal information to regulatory or law enforcement agencies, if they require us to do so. We will also disclose your information where we are permitted and requested to do so by law.</li>\r\n</ol>\r\n\r\n<p><strong>Curriculum vitae (&quot;CV&quot;)</strong></p>\r\n\r\n<p>We give you the option of submitting your CV via our website or by providing your CV to one of our consultants. You can do this either to apply for a specific advertised job or for consideration by our recruitment consultants for positions as they come up. Your CV will be stored in the URBAN STAFF MANAGEMENT LTD database, and will be accessible by URBAN STAFF MANAGEMENT LTD consultants.</p>\r\n\r\n<p>You can update your CV at any time, simply by deleting your previous CV and uploading your new one.</p>\r\n\r\n<p><strong>Access</strong></p>\r\n\r\n<p>You have the right at any time to ask us for a copy of the information supplied by you that we hold. We may ask you to verify your identity and for more information about your request. We also have the right to charge an administrative fee for this service. Where we are legally permitted to do so, we may refuse your request and will give you reasons for doing so.</p>\r\n\r\n<p>If you would like to make a request for information, please contact info@urbanstaff.co.uk You also have the right to ask URBAN STAFF MANAGEMENT LTD to stop using your information. However, if this involves a request for deletion of your file, please be aware that we may not be required or able to do so, particularly where your file also holds information about our clients or financial information that we need to keep for periods of up to six years, i.e. that relate to tax matters. Where we are unable to comply with your request we will provide reasons for failing to do so.</p>\r\n\r\n<p><strong>Other websites</strong></p>\r\n\r\n<p>Please note that clicking on links and banner advertisements may result in your transferral to another website - where data privacy practices may be different to that of URBAN STAFF MANAGEMENT LTD. Visitors should consult the other websites&#39; privacy policies as we are not responsible for, and have no control over, information that is submitted to or collected by these third parties.</p>\r\n\r\n<p><strong>Internet-based transfers</strong></p>\r\n\r\n<p>Given that the Internet is a global environment, using the Internet to collect and process personal data necessarily involves the transmission of data on an international basis. Therefore, by browsing our website and communicating electronically with us, you acknowledge and agree to our processing of personal data in this way.</p>\r\n\r\n<p><strong>Changes to our Privacy Policy</strong></p>\r\n\r\n<p>This privacy policy may be changed by URBAN STAFF MANAGEMENT LTD at any time. If we change our privacy policy in the future, we will advise you of changes or updates to our privacy policy by a prominent notice on our website. Continued use of this website or our services after such changes will constitute your acceptance of such changes.</p>\r\n\r\n<p>If, at any time, you have questions or concerns about URBAN STAFF MANAGEMENT LTD&rsquo;s online privacy commitment, please feel free to e-mail us at info@urbanstaff.co.uk or call your local office to speak to one of our representatives.</p>\r\n\r\n<p><strong>Equal Opportunities</strong></p>\r\n\r\n<p>URBAN STAFF MANAGEMENT LTD is an equal opportunities employer and a company committed to diversity. This means that all job applicants and members of staff will receive equal treatment and that we will not discriminate on grounds of gender, marital status, race, ethnic origin, colour, nationality, national origin, disability, sexual orientation, religion or age.</p>\r\n\r\n<p>As part of our commitment to equal opportunities we may from time to time use information provided by you for the purposes of diversity monitoring. All such information will be used on an anonymised basis.</p>\r\n\r\n<p>&nbsp;</p>', '{\"meta_title\":\"Candidate Disclaimer\",\"meta_description\":\"Candidate Disclaimer\",\"meta_keywords\":\"Candidate Disclaimer\"}', '2017-06-08 06:32:05', '2017-06-09 04:01:07', NULL),
(19, 'default', 'News & Events', 'News and Events', 'news-events', NULL, '{\"meta_title\":\"News and Events\",\"meta_description\":\"News and Events\",\"meta_keywords\":\"News and Events\"}', '2017-06-29 11:22:25', '2017-06-29 11:22:25', NULL),
(20, 'training_Main', 'Hundi', 'Hundi', 'hundi', NULL, '{\"meta_title\":\"Hundi\",\"meta_description\":\"Hundi\",\"meta_keywords\":\"Hundi\"}', '2017-06-29 11:27:44', '2017-06-29 11:27:44', NULL),
(21, 'training_Main', 'Publications', 'Publications', 'publications', NULL, '{\"meta_title\":\"Publications\",\"meta_description\":\"Publications\",\"meta_keywords\":\"Publications\"}', '2017-06-29 11:28:49', '2017-06-29 11:28:49', NULL),
(22, 'training_Default', 'News and Event', 'News and Event', 'news-and-event', NULL, '{\"meta_title\":\"News and Event\",\"meta_description\":\"News and Event\",\"meta_keywords\":\"News and Event\"}', '2017-07-01 01:57:00', '2017-07-01 01:59:59', NULL),
(23, 'gallery', 'Gallery', 'Gallery', 'gallery', NULL, '{\"meta_title\":\"Gallery\",\"meta_description\":\"Gallery\",\"meta_keywords\":\"Gallery\"}', '2017-07-01 01:57:25', '2017-07-28 06:27:00', NULL),
(24, 'training_Default', 'Book Prasad', 'Book Prasad', 'book-prasad', '<div class=\"panel panel-warning\">\r\n  <div class=\"panel-heading\">\r\n  <h1>Book Prasad</h1>\r\n  </div>\r\n<div class=\"panel-body\">\r\n<table class=\"table table-bordered bg-warning\">\r\n   <h4>Monday-Sunday</h4>\r\n	<tbody>\r\n		\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<h6><strong>Prasad is a material substance of food that is a religious offering but for devotees it is more than just food, it is a substance which holds a lot of religious and spiritual sentiments.Now get balaji’s prasad delivered at your home With our online prasad service order online for salasar balaji’s prasad from any part of the country .We provide all prasad items which are given below at the balaji dham.</strong></h6>\r\n			</td>\r\n		</tr>\r\n        <center><tr>\r\n			<td>\r\n			<p><strong>NOTE: All the amounts are in rupee</strong></p>\r\n			</td>\r\n            </tr>\r\n            </center>\r\n        <tr>\r\n			<td>\r\n			<p><strong>चूरमा</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>250 किलोग्राम </strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>लड्डू</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>250 किलोग्राम </strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong> पेड़ा</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>क-400 किलोग्राम</strong>&nbsp;&cedil;<strong>स-300 किलोग्राम</strong> </p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>बूंदी</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>250 किलोग्राम</strong> </p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong> चकी बेसन की</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>300 किलोग्राम</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>कतली (बादाम / काजु )  </strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong></strong> 500<strong></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong> मोतीपाक .</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>300</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong> ड्राई फ्रूट</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>150</strong></p>\r\n			</td>\r\n		</tr>\r\n        \r\n        \r\n		<tr>\r\n			<td>\r\n			<p><strong>नारियल</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>20</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>मनोकामना नारियल</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>25</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong> सिन्दूर</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>50</strong> </p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>चमेली का तेल</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>30</strong> </p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong> लंगोट</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>10</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>धवजा </strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>15</strong> <strong></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong> कपूर</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>5</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong> अगरबत्ती </strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>15(गुलाब)</strong></p>\r\n			</td>\r\n		</tr>\r\n        <tr>\r\n			<td>\r\n			<p><strong> घी</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>110</strong></p>\r\n			</td>\r\n		</tr><tr>\r\n			<td>\r\n			<p><strong> मोली </strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>10</strong></p>\r\n			</td>\r\n		</tr><tr>\r\n			<td>\r\n			<p><strong> कुमकुम</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>5</strong></p>\r\n			</td>\r\n		</tr><tr>\r\n			<td>\r\n			<p><strong>पुष्प माला</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>50</strong></p>\r\n			</td>\r\n		</tr><tr>\r\n			<td>\r\n			<p><strong> पूजा थाली </strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>500</strong></p>\r\n			</td>\r\n		</tr><tr>\r\n			<td>\r\n			<p><strong> धुप बत्ती </strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>30</strong></p>\r\n			</td>\r\n		</tr><tr>\r\n			<td>\r\n			<p><strong> गंगाजल </strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>50</strong></p>\r\n			</td>\r\n		</tr><tr>\r\n			<td>\r\n			<p><strong> इत्र  </strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>20</strong></p>\r\n			</td>\r\n		</tr>\r\n		<!--<tr>\r\n			<td colspan=\"2\" style=\"padding:20px;\">\r\n			<strong style=\"font-size:28px;\">Note:</strong>\r\n\r\n		<i style=\"font-weight:bold; font-size:22px; color:#F00\"><mark>The Rajbhog Aarti is only for the Tuesday</mark></i>\r\n			\r\n			</td>\r\n		</tr>-->\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>', '{\"meta_title\":\"Book Prasad\",\"meta_description\":\"Book Prasad\",\"meta_keywords\":\"Book Prasad Book Prasad\"}', '2017-07-09 20:48:33', '2017-07-29 12:55:46', NULL),
(25, 'training_Default', 'Book Pandit', 'Book Pandit', 'book-pandit', '<div class=\"panel panel-warning\">\r\n<div class=\"panel-heading\">\r\n<h1>Book Pandit</h1>\r\n</div>\r\n\r\n<div class=\"panel-body\">\r\n<h3>Monday-Sunday</h3>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>Prasad is a material substance of food that is a religious offering but for devotees it is more than just food, it is a substance which holds a lot of religious and spiritual sentiments.Now get balaji&rsquo;s prasad delivered at your home With our online prasad service order online for salasar balaji&rsquo;s prasad from any part of the country .We provide all prasad items which are given below at the balaji dham.</strong></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><a class=\"btn btn-primary\" href=\"http://localhost/salasrbalaji/public/book-now\">Book Now</a></p>\r\n			</td>\r\n		</tr>\r\n		<!--<tr>\r\n			<td colspan=\"2\" style=\"padding:20px;\">\r\n			<strong style=\"font-size:28px;\">Note:</strong>\r\n\r\n		<i style=\"font-weight:bold; font-size:22px; color:#F00\"><mark>The Rajbhog Aarti is only for the Tuesday</mark></i>\r\n			\r\n			</td>\r\n		</tr>-->\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>', '{\"meta_title\":\"Book Pandit\",\"meta_description\":\"Book Pandit\",\"meta_keywords\":\"Book Pandit\"}', '2017-07-09 20:51:30', '2017-08-15 10:45:19', NULL),
(26, 'training_Default', 'How to Reach Bala Ji', 'How to Reach Bala Ji', 'how-to-reach-balaji', '<div class=\"panel panel-warning\">\r\n  <div class=\"panel-heading\">\r\n	<h1>How to reach Salasar Balaji Dham\r\n</h1>\r\n	<h4 ><strong>Town of Salasar is in Rajasthan’s Churu district and on the highway that connects Jaipur and Ambala. The nearest localities are as: Sikar is 57 km from this place, Sujangarh at 24 km, Ratangarh at 50 km and Laxmangarh at 30 km. Salasar town’s jurisdiction comes under Sujangarh Panchayat Samiti and is also very well connected with Delhi, Jaipur and Bikaner by local Rajasthan transport services. Nearest airport is the Jaipur International Airport which is almost 3.5 hours away from this place, if one decides to travel via bus or cab.</strong></h4>\r\n  </div>\r\n  <div class=\"panel-body\">\r\n\r\n<table class=\"table table-bordered bg-warning\">\r\n<caption><h1 ></h1></caption>\r\n	<tbody>\r\n		\r\n            <tr>\r\n            <td>\r\n			<h4><strong>Following routes are also available:</strong></h4>\r\n			</td>\r\n		</tr>\r\n       \r\n        <tr>\r\n        <td><p><b>From Delhi:</b></p></td>\r\n        </tr>\r\n        <tr>\r\n        <td><p>\r\n         <b>1.</b> &nbsp;NewDelhi -----> Gurgaon -----> Rewari ----> Mahendergarh ----> Satnali ----> Loharu ----> Chidawa ----> Jhunjhunu ----> Mukandgarh ----> Laxmangarh ----> SalsarBalaji <p style=\"text-align:right; margin-right:12px; padding-right:5%\"><b>Approx. Distance:(342 km)</b></p>\r\n         </p></td>\r\n        </tr>\r\n        <tr>\r\n        <td><p>\r\n          <b>2.</b> &nbsp;New Delhi ----> Gurgaon ----> Rewari ----> Narnaul ----> Singhana ----> Chidawa ----> Jhunjhunu ----> Mukundgarh ----> Laxmangarh ----> SalsarBalaji  <p style=\"text-align:right; margin-right:12px; padding-right:5%\"><b>Approx. Distance:(318 km *Shortest Route*)</b></p>\r\n         </p></td>\r\n        </tr>\r\n        <tr>\r\n        <td><p>\r\n          <b>3.</b> &nbsp;New Delhi ----> Gurgaon ----> Behror ----> Narnaul ----> Singhana ----> Chidawa ----> Jhunjhunu ----> Mukundgarh ----> Laxmangarh ----> SalsarBalaji  <p style=\"text-align:right; margin-right:12px; padding-right:5%\"><b>Approx. Distance:(335 Kms)</b></p>\r\n         </p></td>\r\n        </tr>\r\n         <tr>\r\n        <td><p>\r\n          <b>4.</b> &nbsp;New Delhi ----> Gurgaon ----> Behror ----> Narnaul ----> Singhana ----> Chidawa ----> Jhunjhunu ----> Mukundgarh ----> Laxmangarh ----> SalsarBalaji  <p style=\"text-align:right; margin-right:12px; padding-right:5%\"><b>Approx. Distance:(335 Kms)</b></p>\r\n         </p></td>\r\n        </tr>\r\n                <tr>\r\n        <td><p>\r\n          <b>5.</b> &nbsp;New Delhi ----> Gurgaon ----> Behror ----> Kotputli ----> Shahpura ----> Ajeetgarh ----> Samod (Sikar road) ----> Chomu ----> Ringas (Khatushyam JI) ----> Sikar ----> SalsarBalaji   <p style=\"text-align:right; margin-right:12px; padding-right:5%\"><b>Approx. Distance:(395 Kms)</b></p>\r\n         </p></td>\r\n        </tr>\r\n                        <tr>\r\n        <td><p>\r\n          <b>6.</b> &nbsp;New Delhi ----> Gurgaon ----> Behror ----> Kotputli ----> Shahpura ----> Chandwaji ----> Chomun ----> Ringas (Khatushyam Ji) ----> Sikar ----> SalsarBalaji    <p style=\"text-align:right; margin-right:12px; padding-right:5%\"><b>Approx. Distance:(399 Kms)</b></p>\r\n         </p></td>\r\n        </tr>\r\n                        <tr>\r\n        <td><p>\r\n          <b>7.</b> &nbsp;New Delhi ----> Bahadurgarh ----> Jhajjhar ----> Charkhidadri ----> Bhandwa ----> Loharu ----> Chidawa ----> Jhunjhunu ----> Mukundgarh ----> Laxmangarh ----> SalsarBalaji   <p style=\"text-align:right; margin-right:12px; padding-right:5%\"><b>Approx. Distance:(303 Kms)</b></p>\r\n         </p></td>\r\n        </tr>\r\n                        <tr>\r\n        <td><p>\r\n          <b>8.</b> &nbsp;New Delhi ----> Bahadurgarh ----> Jhajjhar ----> Mahendargarh ----> Satnali ----> Loharu ----> Chidawa ----> Jhunjhunu ----> Mukundgarh ----> Laxmangarh ----> SalsarBalaji    <p style=\"text-align:right; margin-right:12px; padding-right:5%\"><b>Approx. Distance:(323 Kms)</b></p>\r\n         </p></td>\r\n        </tr>\r\n        <br />\r\n        <br />\r\n		<tr>\r\n        <td><p><b>From Jaipur:</b></p></td>\r\n        </tr>\r\n        <tr>\r\n        <td><p>\r\n        <b>1.</b> &nbsp;Jaipur ---> Chomu ---> Ringas ---> Sikar ---> Salasar Balaji    <p style=\"text-align:right; margin-right:12px; padding-right:5%\"><b>Approx. Distance:(171 Kms)</b></p></p></td>\r\n        </tr><br />\r\n<br />\r\n	<tr>\r\n        <td><p><b>From Agra:</b></p></td>\r\n        </tr>\r\n        <tr>\r\n        <td><p>\r\n        <b>1.</b> &nbsp;Agra --> Bharatpur --> Dausa --> Japur --> Chomun --> Ringas --> Sikar --> Salasar Balaji    <p style=\"text-align:right; margin-right:12px; padding-right:5%\"><b>Approx. Distance:(415 Kms)</b></p></p></td>\r\n        </tr>\r\n                <tr>\r\n        <td><p>\r\n        <b>2.</b> &nbsp;Agra --> Mathura --> Deeg --> Alwar --> Shahpura --> Chomun --> Ringas --> Sikar --> Salasar Balaji     <p style=\"text-align:right; margin-right:12px; padding-right:5%\"><b>Approx. Distance:(443 Kms)</b></p></p></td>\r\n        </tr>\r\n\r\n		<!--<tr>\r\n			<td colspan=\"2\" style=\"padding:20px;\">\r\n			<strong style=\"font-size:28px;\">Note:</strong>\r\n\r\n		<i style=\"font-weight:bold; font-size:22px; color:#F00\"><mark>The Rajbhog Aarti is only for the Tuesday</mark></i>\r\n			\r\n			</td>\r\n		</tr>-->\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>', '{\"meta_title\":\"How to Reach Bala Ji\",\"meta_description\":\"How to Reach Bala Ji\",\"meta_keywords\":\"How to Reach Bala Ji\"}', '2017-07-09 20:59:38', '2017-07-29 09:19:07', NULL),
(27, 'training_Default', 'Local Transport', 'Local Transport', 'local-transport', '<div class=\"panel panel-warning\">\r\n  <div class=\"panel-heading\">\r\n<h4 ><strong>Local Transport</strong></h4>\r\n\r\n			<h4>Churu is known to have a well planned network of arterial, sub arterial, bypass and important roads. There is excellent connectivity of network offered by state highways and the national highways that connect to the capital city of Jaipur and the Capital city New Delhi.</h4>\r\n            \r\n            \r\n            \r\n</div>\r\n  <div class=\"panel-body\">\r\n\r\n<table class=\"table table-bordered bg-warning\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<strong>Transportation-in-Salasar Balaji Churu District</strong>\r\n			</td>\r\n		</tr>\r\n		\r\n 		\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<strong>Churu By Road</strong>\r\n			</td>\r\n		</tr>\r\n			<tr>\r\n			<td colspan=\"2\">\r\n			<div class=\"panel-body\">Churu is well connected via road to different cities of Rajasthan such as Bikaner at a distance of 190 km, Sri Ganganagar at a distance of 256 km, Jhunjhunu at a distance of 52 km, Nagaur at a distance of 258 km, Jaisalmer at a distance of 520 km and so on. NH11 crosses the Churu city\r\n            </div>\r\n			</td>\r\n		</tr>\r\n        <tr>\r\n			<td colspan=\"2\">\r\n			<strong>Churu By Rail</strong>\r\n			</td>\r\n		</tr>\r\n			<tr>\r\n			<td colspan=\"2\">\r\n			<div class=\"panel-body\">Churu railway station lying on the meter gauge line of western and northern railways connects well to big cities in the country like Sri Ganganagar, Bikaner, New Delhi and Jaipur. You can avail of different express and regular trains here.\r\n            Website Link :-<a href=\"http://www.indianrail.gov.in\">http://www.indianrail.gov.in</a>\r\n            </div>\r\n			</td>\r\n		</tr>\r\n        \r\n        \r\n		\r\n\r\n		\r\n	</tbody>\r\n</table>', '{\"meta_title\":\"Local Transport\",\"meta_description\":\"Local Transport\",\"meta_keywords\":\"Local Transport\"}', '2017-07-09 21:01:27', '2017-07-29 10:05:40', NULL),
(28, 'training_Default', 'By Road', 'By Road', 'by-road', '<p>By Road&nbsp;By Road</p>', '{\"meta_title\":\"By Road\",\"meta_description\":\"By Road\",\"meta_keywords\":\"By Road\"}', '2017-07-09 21:01:51', '2017-07-09 21:01:51', NULL),
(29, 'default', 'By Air', 'By Air', 'by-air', '<p>By Air</p>', '{\"meta_title\":\"By Air\",\"meta_description\":\"By Air\",\"meta_keywords\":\"By Air\"}', '2017-07-09 21:02:13', '2017-07-09 21:02:13', NULL);
INSERT INTO `pages` (`id`, `template`, `name`, `title`, `slug`, `content`, `extras`, `created_at`, `updated_at`, `deleted_at`) VALUES
(30, 'training_Default', 'Places to Visit', 'Places to Visit', 'place-to-visit', '<style>\r\n  table tr td p{font-size:20px; padding: 0% 10%; color:#C30}\r\n  \r\n</style>\r\n<h1 style=\"background-color:#F96; padding:10px; font-size:30px; width:30%; color:#FF9; border-radius:18px; margin:10px 0; margin-left:35%; text-align:center\">VISITING PLACES NEAR SALASAR BALAJI</h1>\r\n\r\n<table style=\"background-color:#FFCC99;width:94%\" align=\"center\" cellpadding=\"15\">\r\n	<tbody>\r\n		\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<h4 style=\"color: #c02637;font-size: 28px;padding: 10px; text-align:center;\"><strong>\r\nVisiting Salasar Bajaji? Visit nearby places too. If you are visiting Salasar Balaji there are a few more places nearby where you can visit. These places have equal significance and importance in Hindu culture. All these places are full of visitors, devotees throughout the year. </strong></h4>\r\n			</td>\r\n		</tr>\r\n        <br />\r\n        <br />\r\n        <tr>\r\n        <td colspan=\"2\" style=\"font-size:28px; color:#c02637; padding-left:34px; font-weight:bold\">Places to visit:</td>\r\n        </tr>\r\n        <br />\r\n        <tr>\r\n        <td colspan=\"2\" style=\"font-size:28px; color:#c02637; padding-left:34px; font-weight:bold\">Salasar balaji  mandir</td>\r\n        </tr>\r\n        <tr>\r\n        <td colspan=\"2\"><p>Salasar Balaji or Salasar Dham in India is a place of religious importance for the devotees of Hanuman. It is located in the town of Salasar, on National Highway 65 near Sujangarh in Churu district, Rajasthan. The temple of Balaji, another name of Hanuman, is situated in the middle of Salasar and attracts innumerable worshippers throughout the year.</p></td>\r\n        </tr>\r\n        \r\n        <tr>\r\n        <td colspan=\"2\" style=\"font-size:28px; color:#c02637; padding-left:34px; font-weight:bold\">Shyanan mata (25 km far)</td>\r\n        </tr>\r\n        <tr>\r\n        <td colspan=\"2\"><p>\r\n        Shyanan Mata Mandir,an 1100 year old temple, is 25 km away on a hillock having a huge amount of visitors. Having a distance of 25 km from Salasar Bajaji this temple is visited by most of the persons.  \r\n        </p>\r\n        </td>\r\n        </tr>\r\n        <tr>\r\n        <td colspan=\"2\" style=\"font-size:28px; color:#c02637; padding-left:34px; font-weight:bold\">Akhand Dhuna</td>\r\n        </tr>\r\n        <tr>\r\n        <td colspan=\"2\">\r\n        <p>\r\n        Akhand Dhuna, another famous place near Salasar Balaji having great importance. This place is full with visitors for whole year. \r\n        </p>\r\n        </td>\r\n        </tr>\r\n        <tr>\r\n        <td colspan=\"2\" style=\"font-size:28px; color:#c02637; padding-left:34px; font-weight:bold\">Anjani mata ka mandir</td>\r\n        </tr>\r\n        <tr>\r\n        <td colspan=\"2\">\r\n        <p>\r\n        The Anjani Mata Temple situated at the Salasar Dham is not only famous in Rajasthan but is one of the holy pilgrimage of India. It is located 2km far from the road connecting Salasar Balaji Dham and Laxmangarh. The holy sculpture placed here depicts Lord Hanuman in his childhood day resting the lap of her mother, Mata Anjani. It is said that the one who visits Salasar and worships here, get his/her desires fulfilled. \r\n        </p>\r\n        </td>\r\n        </tr>\r\n        <tr>\r\n        <td colspan=\"2\" style=\"font-size:28px; color:#c02637; padding-left:34px; font-weight:bold\">Mohan das ji ka Samadhi sthal</td>\r\n        </tr>\r\n        <tr>\r\n        <td colspan=\"2\">\r\n        <p>\r\n        Mohan das ji ka Samadhi sthal is situated near Balaji temple. The footprints of Mohandasji and Kanidadi are found there. This place is the samadhi sthal of both holy devotees. The continuous Ramayan reading has been taking place here from last eight years. \r\n        </p>\r\n        </td>\r\n        </tr>\r\n        <tr>\r\n        <td colspan=\"2\" style=\"font-size:28px; color:#c02637; padding-left:34px; font-weight:bold\">Akhand Jyot</td>\r\n        </tr>\r\n        <tr>\r\n        <td colspan=\"2\">\r\n        <p>\r\n        Akhand Jyot is the eternal lantern in Salasar Balaji having a great importance. \r\n        </p>\r\n        </td>\r\n        </tr>\r\n        <tr>\r\n        <td colspan=\"2\" style=\"font-size:28px; color:#c02637; padding-left:34px; font-weight:bold\">Tirupati balaji mandir</td>\r\n        </tr>\r\n        <tr>\r\n        <td colspan=\"2\">\r\n        <p>\r\n        Tirupati Balaji Temple is Vishnu temple. Devotees visit this temple to seek fulfillment of Salvation, Wealth, Relief from diseases, Gain Knowledge. \r\n        </p>\r\n        </td>\r\n        </tr>\r\n        <tr>\r\n        <td colspan=\"2\" style=\"font-size:28px; color:#c02637; padding-left:34px; font-weight:bold\">Khatu shyam ji</td>\r\n        </tr>\r\n        <tr>\r\n        <td colspan=\"2\">\r\n        <p>\r\n        Khatushyamji or Khatu is a village of religious importance in Sikar District of Rajasthan in India. It is home to a famous temple of Shyam Baba. \r\n        </p>\r\n        </td>\r\n        </tr>\r\n        <tr>\r\n        <td colspan=\"2\" style=\"font-size:28px; color:#c02637; padding-left:34px; font-weight:bold\">Ringus ke bheru ji</td>\r\n        </tr>\r\n        <tr>\r\n        <td colspan=\"2\">\r\n        <p>\r\n        Ringus is a town in Sikar District in the Indian state of Rajasthan. It is 57 km from Jaipur.It is sitituate at NH 11 (Now NH 52) Reengus is mainly famous due to the temple of Bhairava in the town. \r\n        </p>\r\n        </td>\r\n        </tr>\r\n        <tr>\r\n        <td colspan=\"2\" style=\"font-size:28px; color:#c02637; padding-left:34px; font-weight:bold\">Jeen mata ji</td>\r\n        </tr>\r\n        <tr>\r\n        <td colspan=\"2\">\r\n        <p>\r\n        Jeenmata is a village of religious importance in Sikar district of Rajasthan, India. It is located at a distance of 29 km from Sikar town in south. There is an ancient Temple dedicated to Jeen Mata (Goddess of Power). The sacred shrine of Jeenmata is believed to be a thousand years old. Millions of devotees assemble here for a colourful festival held twice in a year in the month of Chaitra and Ashvin during the Navratri. \r\n        </p>\r\n        </td>\r\n        </tr>\r\n        <tr>\r\n        <td colspan=\"2\" style=\"font-size:28px; color:#c02637; padding-left:34px; font-weight:bold\">Rani sati mata (jhunjhunu)</td>\r\n        </tr>\r\n        <tr>\r\n        <td colspan=\"2\">\r\n        <p>\r\n         Rani sati mata temple is a temple located in Jhunjhunu, Jhunjhunu district, in the state of Rajasthan, India. It is the largest temple in India devoted to Rani Sati, a Rajasthani lady who lived sometime between the 13th and the 17th century and committed sati (self-immolation) on her husband\'s death. \r\n        </p>\r\n        </td>\r\n        </tr>\r\n        <tr>\r\n        <td colspan=\"2\" style=\"font-size:28px; color:#c02637; padding-left:34px; font-weight:bold\">Lohagarh</td>\r\n        </tr>\r\n        <tr>\r\n        <td colspan=\"2\">\r\n        <p>\r\n        Lohagarh is another place of attraction near salasar balaji. The place is full of visitis for most of the time.\r\n        </p>\r\n        </td>\r\n        </tr>\r\n        <tr>\r\n        <td colspan=\"2\" style=\"font-size:28px; color:#c02637; padding-left:34px; font-weight:bold\">Shakambhari mata ka mandir</td>\r\n        </tr>\r\n        <tr>\r\n        <td colspan=\"2\">\r\n        <p>\r\n        Shakambhari mata ka mandir is a temple in Sikar. The temple was built in the year 699 (647 A.D.) by Seth Mandan. The temple was built to worship Goddess Brahmani and Rudran. Both the idols are lion riding goddesses in the posture of killing Mahishasura. They both are eight armed. Their faces are Vermillion pasted. The only difference between the two is of the stone. That of Brahmani is made of marble while that of Rudrani is made of locally available med stone. \r\n        </p>\r\n        </td>\r\n        </tr>\r\n        <tr>\r\n        <td colspan=\"2\" style=\"font-size:28px; color:#c02637; padding-left:34px; font-weight:bold\">Ichha purn balaji (sardar sahar)</td>\r\n        </tr>\r\n        <tr>\r\n        <td colspan=\"2\">\r\n        <p>\r\n        Ichha Puran Balaji Temple is a very attractive and beautiful temple of Hanumanji outside Sardarshahar town. The temple is home to one of the most beautiful statues of Hanuman in which he is seen in a sitting pose and blessing his devotees. The entire temple is constructed in Dravidian style.\r\nIchha Puran Balaji Temple attracts a large number of devotees from all over India. Devotees come to make offerings to Lord Hanuman in this temple and have ‘Darshan’ of Shri Balaji. The temple is considered as a must visit place during one’s visit to Rajasthan. \r\n        </p>\r\n        </td>\r\n        </tr>\r\n        <br />\r\n		<!--<tr>\r\n			<td colspan=\"2\" style=\"padding:20px;\">\r\n			<strong style=\"font-size:28px;\">Note:</strong>\r\n\r\n		<i style=\"font-weight:bold; font-size:22px; color:#F00\"><mark>The Rajbhog Aarti is only for the Tuesday</mark></i>\r\n			\r\n			</td>\r\n		</tr>-->\r\n	</tbody>\r\n</table>', '{\"meta_title\":\"Places to Visit\",\"meta_description\":\"Places to Visit\",\"meta_keywords\":\"Places to Visit\"}', '2017-07-09 21:03:18', '2017-07-29 10:21:57', NULL),
(31, 'training_Default', 'Room Reservations', 'Room Reservations', 'room-reservations', '<p>Room reservations&nbsp;Room reservations</p>', '{\"meta_title\":\"Room reservations\",\"meta_description\":\"Room reservations\",\"meta_keywords\":\"Room reservations\"}', '2017-07-09 21:03:55', '2017-07-09 21:03:55', NULL),
(32, 'training_Default', 'Bala Ji RoadMap', 'Bala Ji RoadMap', 'balaji-roadmap', '<p>Bala Ji RoadMap</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n\r\n\r\n<iframe allowfullscreen=\"\" frameborder=\"0\" height=\"450\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14126.778595466043!2d74.71593871716395!3d27.726712682783877!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x396b4c28bada7101%3A0x8b8ce5b9179cb04a!2sSalasar%2C+Rajasthan!5e0!3m2!1sen!2sin!4v1501421334665\" width=\"100%\"></iframe>', '{\"meta_title\":\"Bala Ji RoadMap\",\"meta_description\":\"Bala Ji RoadMap\",\"meta_keywords\":\"Bala Ji RoadMap\"}', '2017-07-09 21:04:47', '2017-07-31 03:33:03', NULL),
(33, 'training_Tab', 'Tourists Engage', 'Tourists Engage', 'tourists-engage', '<p>Tourists Engage&nbsp;Tourists Engage</p>', '{\"tab1_content\":\"<style>\\r\\n  table tr td p{font-size:20px; padding-left:10%; color:#C30}\\r\\n  \\r\\n<\\/style>\\r\\n<br \\/>\\r\\n<h1 style=\\\"background-color:#F96; padding:10px; font-size:30px; width:30%; color:#FF9; border-radius:18px; margin:10px 0; margin-left:35%; text-align:center\\\">Tourists Engage<\\/h1>\\r\\n\\r\\n<table style=\\\"background-color:#FFCC99;width:94%\\\" align=\\\"center\\\" cellpadding=\\\"15\\\">\\r\\n<caption><h1 style=\\\"color:#F00; font-weight:bold;font-size: 29px;text-align: center;padding: 10px;\\\"><\\/h1><\\/caption>\\r\\n\\t<tbody>\\r\\n\\t\\t\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td colspan=\\\"2\\\">\\r\\n\\t\\t\\t<h4 style=\\\"color: #c02637;font-size: 28px;padding: 10px; text-align: center;\\\"><strong>Best time to travel Salasar Balaji as a tourist is Starting month so new year i.e. Jan, Feb and March and at new year end; Nov and Dec. Along with spritual journey one can accomplish witness wildlife at Talchhapar area, which is reknowned for Raptor Sightings, where you can find mainly Black Bucks and lots of resident & migratory birds and late winters like Jan-Feb is the best time to see them. There open grasslands offer excellent opportunity for photography and therefore popular with experienced bird photographers.<br \\/><br \\/>\\r\\n            \\r\\n            Apart from Salasar Balaji there are other pilgrimages around Jaipur and Shekhavati areas, like:-\\r\\n\\tShyanan mata (25 km far),\\r\\n\\tAkhand Dhuna,\\r\\n\\tAnjani mata ka mandir,\\r\\n\\tMohan das ji ka Samadhi sthal,\\r\\n\\tAkhand Jyot,\\r\\n\\tTirupati balaji mandir,\\r\\n\\tKhatu shyam ji,\\r\\n\\tRingus ke bheru ji,\\r\\n\\tJeen mata ji,\\r\\n\\tRani sati mata (jhunjhunu),\\r\\n\\tLohaghar,\\r\\n\\tShakambhari mata ka mandir,\\r\\n\\tIchha purn balaji (sardar sahar),\\r\\n<br \\/><br \\/>\\r\\n Shekawati area is also known for its Rajasthani architectural techniques clearly seen in its havelis and forts.\\r\\n\\r\\nOne can see varied frescoes, paintings and carvings in the interiors of these havelis. The other major attractions are believed to be the chhatris like the Aath Kambh Chhatri and Gondia Chhatri.\\r\\n\\r\\n<\\/strong><\\/h4>\\r\\n\\t\\t\\t\\r\\n            <\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n        <center>\\r\\n\\t\\t<!--<tr>\\r\\n\\t\\t\\t<td colspan=\\\"2\\\" style=\\\"padding:20px;\\\">\\r\\n\\t\\t\\t<strong style=\\\"font-size:28px;\\\">Note:<\\/strong>\\r\\n\\r\\n\\t\\t<i style=\\\"font-weight:bold; font-size:22px; color:#F00\\\"><mark>The Rajbhog Aarti is only for the Tuesday<\\/mark><\\/i>\\r\\n\\t\\t\\t\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>-->\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\",\"meta_title\":\"Tourists Engage\",\"meta_description\":\"Tourists Engage\",\"meta_keywords\":\"Tourists Engage\"}', '2017-07-09 21:05:49', '2017-07-29 10:26:31', NULL),
(34, 'training_Tab', 'Accommodations', 'Accommodations', 'accommodations', NULL, '{\"tab1_title\":\"Free Accommodations\",\"tab2_title\":\"Rented Accommodations\",\"meta_title\":\"Accommodations\",\"meta_description\":\"Accommodations\",\"meta_keywords\":\"Accommodations\"}', '2017-07-09 21:17:25', '2017-07-09 21:17:25', NULL),
(35, 'training_Default', 'Shelter Sheds', 'Shelter Sheds', 'shelter-sheds', '<p>Shelter Sheds&nbsp;Shelter Sheds&nbsp;Shelter Sheds</p>', '{\"meta_title\":\"Shelter Sheds\",\"meta_description\":\"Shelter Sheds\",\"meta_keywords\":\"Shelter Sheds\"}', '2017-07-11 10:16:07', '2017-07-11 10:16:07', NULL),
(36, 'training_Default', 'Bhojanalyas & Refreshment Units', 'Bhojanalyas & Refreshment Units', 'bhojanalyas-refreshment-units', '<p>Bhojanalyas &amp; Refreshment Units&nbsp;Bhojanalyas &amp; Refreshment Units&nbsp;Bhojanalyas &amp; Refreshment Units</p>', '{\"meta_title\":\"Bhojanalyas & Refreshment Units\",\"meta_description\":\"Bhojanalyas & Refreshment Units\",\"meta_keywords\":\"Bhojanalyas & Refreshment Units\"}', '2017-07-11 10:17:15', '2017-07-11 10:17:15', NULL),
(37, 'training_Default', 'Medical Facilities', 'Medical Facilities', 'medical-facilities', '<p>Medical Facilities&nbsp;Medical Facilities</p>', '{\"meta_title\":\"Medical Facilities\",\"meta_description\":\"Medical Facilities\",\"meta_keywords\":\"Medical Facilities\"}', '2017-07-11 10:17:49', '2017-07-11 10:17:49', NULL),
(38, 'training_Tab', 'Blanket Stores', 'Blanket Stores', 'blanket-stores', '<p>Blanket Stores&nbsp;Blanket Stores</p>', '{\"tab1_title\":\"Bhaint Shops\",\"tab1_content\":\"<p>Bhaint Shops<\\/p>\",\"tab2_title\":\"Sovenir Shops\",\"tab2_content\":\"<p>Sovenir Shops<\\/p>\",\"tab3_title\":\"Blanket Stores\",\"tab3_content\":\"<p>Blanket Stores<\\/p>\",\"meta_title\":\"Blanket Stores\",\"meta_description\":\"Blanket Stores\",\"meta_keywords\":\"Blanket Stores\"}', '2017-07-11 10:18:29', '2017-07-11 10:47:46', NULL),
(42, 'training_Default', 'Railway Reservation Counter', 'Railway Reservation Counter', 'railway-reservation-counter', '<p>Railway Reservation Counter</p>', '{\"meta_title\":\"Railway Reservation Counter\",\"meta_description\":\"Railway Reservation Counter\",\"meta_keywords\":\"Railway Reservation Counter\"}', '2017-07-11 10:20:52', '2017-07-11 10:20:52', NULL),
(43, 'training_Default', 'Security Arrangements', 'Security Arrangements', 'security-arrangements', '<p>Security Arrangements</p>', '{\"meta_title\":\"Security Arrangements\",\"meta_description\":\"Security Arrangements\",\"meta_keywords\":\"Security Arrangements\"}', '2017-07-11 10:21:20', '2017-07-11 10:21:20', NULL),
(44, 'training_Default', 'Post and Telegraphs', 'Post and Telegraphs', 'post and-telegraphs', '<p>Post and Telegraphs</p>', '{\"meta_title\":\"Post and Telegraphs\",\"meta_description\":\"Post and Telegraphs\",\"meta_keywords\":\"Post and Telegraphs\"}', '2017-07-11 10:21:48', '2017-07-11 10:21:48', NULL),
(45, 'training_Default', 'Place to rest at Bhawan', 'Place to rest at Bhawan', 'place-at-bhawan', '<p>Place to rest at Bhawan</p>', '{\"meta_title\":\"Place to rest at Bhawan\",\"meta_description\":\"Place to rest at Bhawan\",\"meta_keywords\":\"Place to rest at Bhawan\"}', '2017-07-11 10:22:29', '2017-07-11 10:22:29', NULL),
(46, 'training_Default', 'Palkis, Ponis and Pithoos', 'Palkis, Ponis and Pithoos', 'palkis-ponis-pithoos', '<p>Palkis, Ponis and Pithoos</p>', '{\"meta_title\":\"Palkis, Ponis and Pithoos\",\"meta_description\":\"Palkis, Ponis and Pithoos\",\"meta_keywords\":\"Palkis, Ponis and Pithoos\"}', '2017-07-11 10:23:24', '2017-07-11 10:23:24', NULL),
(47, 'training_Default', 'Banks Details', 'Banks Details', 'banks-details', '<p>Banks Details</p>', '{\"meta_title\":\"Banks Details\",\"meta_description\":\"Banks Details\",\"meta_keywords\":\"Banks Details\"}', '2017-07-11 10:23:58', '2017-07-11 10:23:58', NULL),
(48, 'training_Default', 'Cloak Rooms', 'Cloak Rooms', 'cloak-rooms', '<p>Cloak Rooms</p>', '{\"meta_title\":\"Cloak Rooms\",\"meta_description\":\"Cloak Rooms\",\"meta_keywords\":\"Cloak Rooms\"}', '2017-07-11 10:53:39', '2017-07-11 10:53:39', NULL),
(49, 'training_Main', 'Shop', 'Shop', 'shop', NULL, '{\"meta_title\":\"Shop\",\"meta_description\":\"Shop\",\"meta_keywords\":\"Shop\"}', '2017-07-11 10:59:37', '2017-07-28 07:23:11', NULL),
(50, 'gallery', 'News Album', 'News Album', 'albums/news-album', NULL, '{\"meta_title\":\"News Album\",\"meta_description\":\"News Album\",\"meta_keywords\":\"News Album\"}', '2017-07-11 11:23:39', '2017-07-28 06:27:37', NULL),
(51, 'training_Tab', 'Live Darshan', 'Live Darshan', 'live-darshan', '<p>Live Darshan</p>', '{\"tab1_title\":\"Live Darshan\",\"tab1_content\":\"<p>Live Darshan<\\/p>\",\"tab2_title\":\"Image of the Day\",\"tab2_content\":\"<p>Image of the Day<\\/p>\",\"meta_title\":\"Image of the Day\",\"meta_description\":\"Image of the Day\",\"meta_keywords\":\"Image of the Day\"}', '2017-07-11 19:22:40', '2017-07-11 19:24:34', NULL),
(52, 'default', 'eBooking', 'eBooking', 'ebooking', '<p>eBooking</p>', '{\"meta_title\":\"eBooking\",\"meta_description\":\"eBooking\",\"meta_keywords\":\"eBooking\"}', '2017-07-11 19:25:37', '2017-07-11 19:25:37', NULL),
(53, 'training_Default', 'Downloads', 'Downloads', 'downloads', '<p>Downloads</p>', '{\"meta_title\":\"Downloads\",\"meta_description\":\"Downloads\",\"meta_keywords\":\"Downloads\"}', '2017-07-11 19:27:35', '2017-07-11 19:27:35', NULL),
(54, 'training_Default', 'Cab Services', 'Cab/Car Services', 'cabs', '<p>Other Services</p>', '{\"meta_title\":\"Cab Services\",\"meta_description\":\"Cab Services\",\"meta_keywords\":\"Cab Services\"}', '2017-07-11 19:28:22', '2017-08-06 03:36:54', NULL),
(55, 'training_Default', 'Group Bala ji parsadi', 'Group Bala ji parsadi', 'group-balaji-parsadi', '<p>Group Bala ji parsadi</p>', '{\"meta_title\":\"Group Bala ji parsadi\",\"meta_description\":\"Group Bala ji parsadi\",\"meta_keywords\":\"Group Bala ji parsadi\"}', '2017-07-11 19:34:02', '2017-07-11 19:34:02', NULL),
(56, 'training_Default', 'Coins', 'Coins', 'coins', '<p>coins</p>', '{\"meta_title\":\"Coins\",\"meta_description\":\"Coins\",\"meta_keywords\":\"Coins\"}', '2017-07-11 19:36:28', '2017-07-29 10:42:37', NULL),
(57, 'training_Default', 'Photos and Frames', 'Photos and Frames', 'photos', '<p>Photos</p>', '{\"meta_title\":\"Photos\",\"meta_description\":\"Photos\",\"meta_keywords\":\"Photos\"}', '2017-07-11 19:37:20', '2017-07-31 07:45:19', NULL),
(58, 'training_Default', 'Books and gifts', 'Books', 'books-and-gifts', '<p>Books</p>', '{\"meta_title\":\"Books and gifts\",\"meta_description\":\"Books and gifts\",\"meta_keywords\":\"Books and gifts\"}', '2017-07-11 19:38:17', '2017-07-29 10:01:24', NULL),
(59, 'training_Default', 'Videos', 'Videos', 'videos', '<p>Videos</p>', '{\"meta_title\":\"Videos\",\"meta_description\":\"Videos\",\"meta_keywords\":\"Videos\"}', '2017-07-11 19:38:55', '2017-07-11 19:38:55', NULL),
(60, 'training_Default', 'Audios', 'Audios', 'audios', '<p>Audios</p>', '{\"meta_title\":\"Audios\",\"meta_description\":\"Audios\",\"meta_keywords\":\"Audios\"}', '2017-07-11 19:39:29', '2017-07-11 19:39:29', NULL),
(61, 'training_Default', 'GIFTS AND ITEMS', 'GIFTS AND ITEMS', 'religious-products', '<p>GIFTS AND ITEMS</p>', '{\"meta_title\":\"Religious Products\",\"meta_description\":\"Religious Products\",\"meta_keywords\":\"Religious Products\"}', '2017-07-11 19:40:05', '2017-07-29 10:02:58', NULL),
(62, 'gallery', 'Unique Photos', 'Unique Photos', 'albums/unique-photos', NULL, '{\"meta_title\":\"Unique Photos\",\"meta_description\":\"Unique Photos\",\"meta_keywords\":\"Unique Photos\"}', '2017-07-11 19:44:19', '2017-07-28 06:31:42', NULL),
(63, 'gallery', 'Programs & Events', 'Programs & Events', 'albums/programs-and-events', '<p>programs and events</p>', '{\"meta_title\":\"Programs & Events\",\"meta_description\":\"Programs & Events\",\"meta_keywords\":\"Programs & Events\"}', '2017-07-11 19:45:16', '2017-07-28 07:40:07', NULL),
(64, 'gallery', 'Temple Photos', 'Temple Photos', 'albums/temple-photos', NULL, '{\"meta_title\":\"Temple Photos\",\"meta_description\":\"Temple Photos\",\"meta_keywords\":\"Temple Photos\"}', '2017-07-11 19:46:02', '2017-07-28 06:33:58', NULL),
(65, 'gallery', 'Balaji Arti Photo', 'Balaji Arti Photo', 'albums/balaji-arti-photo', NULL, '{\"meta_title\":\"Balaji Arti Photo\",\"meta_description\":\"Balaji Arti Photo\",\"meta_keywords\":\"Balaji Arti Photo\"}', '2017-07-11 19:46:42', '2017-07-28 06:34:30', NULL),
(66, 'gallery', 'Balaji Photos', 'Balaji Photos', 'albums/balaji-photos', NULL, '{\"meta_title\":\"Balaji Photos\",\"meta_description\":\"Balaji Photos\",\"meta_keywords\":\"Balaji Photos\"}', '2017-07-11 19:47:20', '2017-07-28 06:35:08', NULL),
(67, 'gallery', 'Bhagto ki Photo', 'Bhagto ki Photo', 'albums/bhagto-ki-photo', NULL, '{\"meta_title\":\"Bhagto ki Photo\",\"meta_description\":\"Bhagto ki Photo\",\"meta_keywords\":\"Bhagto ki Photo\"}', '2017-07-11 19:48:45', '2017-07-28 06:35:35', NULL),
(68, 'default', 'Return Policy', 'Return Policy', 'return-policy', '<p><strong>Returns</strong></p>\r\n\r\n<p>Sorry! We do not offer any returns.</p>\r\n\r\n<p><strong>Refunds (if applicable)</strong></p>\r\n\r\n<p>If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Late or missing refunds (if applicable)</strong></p>\r\n\r\n<p>If you haven&rsquo;t received a refund yet, first check your bank account again.</p>\r\n\r\n<p>Then contact your credit card company, it may take some time before your refund is officially posted.</p>\r\n\r\n<p>Next contact your bank. There is often some processing time before a refund is posted.</p>\r\n\r\n<p>If you&rsquo;ve done all of this and you still have not received your refund yet, please contact us at <strong>support@salasarbalaji.org.</strong></p>\r\n\r\n<p><strong>Shipping</strong></p>\r\n\r\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\r\n\r\n<p>Depending on where you live, the time it may take for your exchanged product to reach you, may vary.</p>', '{\"meta_title\":\"Return Policy\",\"meta_description\":\"Return Policy\",\"meta_keywords\":\"Return Policy\"}', '2017-07-17 01:33:13', '2017-07-17 01:33:13', NULL),
(69, 'default', 'Terms of Services', 'Terms of Services', 'terms-services', '<p>OVERVIEW</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This website is operated by <strong>Salasar Balaji (Balaji Computers)</strong> Throughout the site, the terms &ldquo;we&rdquo;, &ldquo;us&rdquo; and &ldquo;our&rdquo; refer to<strong> Salasar Balaji (Balaji Computers)</strong> offers this website, including all information, tools and services available from this site to you, the user, conditioned upon your acceptance of all terms, conditions, policies and notices stated here.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>By visiting our site and/ or purchasing something from us, you engage in our &ldquo;Service&rdquo; and agree to be bound by the following terms and conditions (&ldquo;Terms of Service&rdquo;, &ldquo;Terms&rdquo;), including those additional terms and conditions and policies referenced herein and/or available by hyperlink. These Terms of Service apply &nbsp;to all users of the site, including without limitation users who are browsers, vendors, customers, merchants, and/ or contributors of content.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Please read these Terms of Service carefully before accessing or using our website. By accessing or using any part of the site, you agree to be bound by these Terms of Service. If you do not agree to all the terms and conditions of this agreement, then you may not access the website or use any services. If these Terms of Service are considered an offer, acceptance is expressly limited to these Terms of Service.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Any new features or tools which are added to the current store shall also be subject to the Terms of Service. You can review the most current version of the Terms of Service at any time on this page. We reserve the right to update, change or replace any part of these Terms of Service by posting updates and/or changes to our website. It is your responsibility to check this page periodically for changes. Your continued use of or access to the website following the posting of any changes constitutes acceptance of those changes.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>SECTION 1 - ONLINE STORE TERMS</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>By agreeing to these Terms of Service, you represent that you are at least the age of majority in your state or province of residence, or that you are the age of majority in your state or province of residence and you have given us your consent to allow any of your minor dependents to use this site.</p>\r\n\r\n<p>You may not use our products for any illegal or unauthorized purpose nor may you, in the use of the Service, violate any laws in your jurisdiction (including but not limited to copyright laws).</p>\r\n\r\n<p>You must not transmit any worms or viruses or any code of a destructive nature.</p>\r\n\r\n<p>A breach or violation of any of the Terms will result in an immediate termination of your Services.</p>\r\n\r\n<p>SECTION 2 - GENERAL CONDITIONS</p>\r\n\r\n<p>We reserve the right to refuse service to anyone for any reason at any time</p>\r\n\r\n<p>You understand that your content (not including credit card information), may be transferred unencrypted and involve (a) transmissions over various networks; and (b) changes to conform and adapt to technical requirements of connecting networks or devices. Credit card information is always encrypted during transfer over networks.</p>\r\n\r\n<p>You agree not to reproduce, duplicate, copy, sell, resell or exploit any portion of the Service, use of the Service, or access to the Service or any contact on the website through which the service is provided, without express written permission by us.</p>\r\n\r\n<p>The headings used in this agreement are included for convenience only and will not limit or otherwise affect these Terms.</p>\r\n\r\n<p>SECTION 3 - ACCURACY, COMPLETENESS AND TIMELINESS OF INFORMATION</p>\r\n\r\n<p>We are not responsible if information made available on this site is not accurate, complete or current. The material on this site is provided for general information only and should not be relied upon or used as the sole basis for making decisions without consulting primary, more accurate, more complete or more timely sources of information. Any reliance on the material on this site is at your own risk.</p>\r\n\r\n<p>This site may contain certain historical information. Historical information, necessarily, is not current and is provided for your reference only. We reserve the right to modify the contents of this site at any time, but we have no obligation to update any information on our site. You agree that it is your responsibility to monitor changes to our site.</p>\r\n\r\n<p>SECTION 4 - MODIFICATIONS TO THE SERVICE AND PRICES</p>\r\n\r\n<p>Prices for our products are subject to change without notice.</p>\r\n\r\n<p>We reserve the right at any time to modify or discontinue the Service (or any part or content thereof) without notice at any time.</p>\r\n\r\n<p>We shall not be liable to you or to any third-party for any modification, price change, suspension or discontinuance of the Service.</p>\r\n\r\n<p>SECTION 5 - PRODUCTS OR SERVICES</p>\r\n\r\n<p>Certain products or services may be available exclusively online through the website. These products or services may have limited quantities and are subject to return or exchange only according to our Return Policy.</p>\r\n\r\n<p>We have made every effort to display as accurately as possible the colors and images of our products that appear at the store. We cannot guarantee that your computer monitor&#39;s display of any color will be accurate.</p>\r\n\r\n<p>We reserve the right, but are not obligated, to limit the sales of our products or Services to any person, geographic region or jurisdiction. We may exercise this right on a case-by-case basis. We reserve the right to limit the quantities of any products or services that we offer. All descriptions of products or product pricing are subject to change at anytime without notice, at the sole discretion of us. We reserve the right to discontinue any product at any time. Any offer for any product or service made on this site is void where prohibited.</p>\r\n\r\n<p>We do not warrant that the quality of any products, services, information, or other material purchased or obtained by you will meet your expectations, or that any errors in the Service will be corrected.</p>\r\n\r\n<p>SECTION 6 - ACCURACY OF BILLING AND ACCOUNT INFORMATION</p>\r\n\r\n<p>We reserve the right to refuse any order you place with us. We may, in our sole discretion, limit or cancel quantities purchased per person, per household or per order. These restrictions may include orders placed by or under the same customer account, the same credit card, and/or orders that use the same billing and/or shipping address. In the event that we make a change to or cancel an order, we may attempt to notify you by contacting the e-mail and/or billing address/phone number provided at the time the order was made. We reserve the right to limit or prohibit orders that, in our sole judgment, appear to be placed by dealers, resellers or distributors.</p>\r\n\r\n<p>You agree to provide current, complete and accurate purchase and account information for all purchases made at our store. You agree to promptly update your account and other information, including your email address and credit card numbers and expiration dates, so that we can complete your transactions and contact you as needed.</p>\r\n\r\n<p>For more detail, please review our Returns Policy.</p>\r\n\r\n<p>SECTION 7 - OPTIONAL TOOLS</p>\r\n\r\n<p>We may provide you with access to third-party tools over which we neither monitor nor have any control nor input.</p>\r\n\r\n<p>You acknowledge and agree that we provide access to such tools &rdquo;as is&rdquo; and &ldquo;as available&rdquo; without any warranties, representations or conditions of any kind and without any endorsement. We shall have no liability whatsoever arising from or relating to your use of optional third-party tools.</p>\r\n\r\n<p>Any use by you of optional tools offered through the site is entirely at your own risk and discretion and you should ensure that you are familiar with and approve of the terms on which tools are provided by the relevant third-party provider(s).</p>\r\n\r\n<p>We may also, in the future, offer new services and/or features through the website (including, the release of new tools and resources). Such new features and/or services shall also be subject to these Terms of Service.</p>\r\n\r\n<p>SECTION 8 - THIRD-PARTY LINKS</p>\r\n\r\n<p>Certain content, products and services available via our Service may include materials from third-parties.</p>\r\n\r\n<p>Third-party links on this site may direct you to third-party websites that are not affiliated with us. We are not responsible for examining or evaluating the content or accuracy and we do not warrant and will not have any liability or responsibility for any third-party materials or websites, or for any other materials, products, or services of third-parties.</p>\r\n\r\n<p>We are not liable for any harm or damages related to the purchase or use of goods, services, resources, content, or any other transactions made in connection with any third-party websites. Please review carefully the third-party&#39;s policies and practices and make sure you understand them before you engage in any transaction. Complaints, claims, concerns, or questions regarding third-party products should be directed to the third-party.</p>\r\n\r\n<p>SECTION 9 - USER COMMENTS, FEEDBACK AND OTHER SUBMISSIONS</p>\r\n\r\n<p>If, at our request, you send certain specific submissions (for example contest entries) or without a request from us you send creative ideas, suggestions, proposals, plans, or other materials, whether online, by email, by postal mail, or otherwise (collectively, &#39;comments&#39;), you agree that we may, at any time, without restriction, edit, copy, publish, distribute, translate and otherwise use in any medium any comments that you forward to us. We are and shall be under no obligation (1) to maintain any comments in confidence; (2) to pay compensation for any comments; or (3) to respond to any comments.</p>\r\n\r\n<p>We may, but have no obligation to, monitor, edit or remove content that we determine in our sole discretion are unlawful, offensive, threatening, libelous, defamatory, pornographic, obscene or otherwise objectionable or violates any party&rsquo;s intellectual property or these Terms of Service.</p>\r\n\r\n<p>You agree that your comments will not violate any right of any third-party, including copyright, trademark, privacy, personality or other personal or proprietary right. You further agree that your comments will not contain libelous or otherwise unlawful, abusive or obscene material, or contain any computer virus or other malware that could in any way affect the operation of the Service or any related website. You may not use a false e-mail address, pretend to be someone other than yourself, or otherwise mislead us or third-parties as to the origin of any comments. You are solely responsible for any comments you make and their accuracy. We take no responsibility and assume no liability for any comments posted by you or any third-party.</p>\r\n\r\n<p>SECTION 10 - PERSONAL INFORMATION</p>\r\n\r\n<p>Your submission of personal information through the store is governed by our Privacy Policy.</p>\r\n\r\n<p>SECTION 11 - ERRORS, INACCURACIES AND OMISSIONS</p>\r\n\r\n<p>Occasionally there may be information on our site or in the Service that contains typographical errors, inaccuracies or omissions that may relate to product descriptions, pricing, promotions, offers, product shipping charges, transit times and availability. We reserve the right to correct any errors, inaccuracies or omissions, and to change or update information or cancel orders if any information in the Service or on any related website is inaccurate at any time without prior notice (including after you have submitted your order).</p>\r\n\r\n<p>We undertake no obligation to update, amend or clarify information in the Service or on any related website, including without limitation, pricing information, except as required by law. No specified update or refresh date applied in the Service or on any related website, should be taken to indicate that all information in the Service or on any related website has been modified or updated.</p>\r\n\r\n<p>SECTION 12 - PROHIBITED USES</p>\r\n\r\n<p>In addition to other prohibitions as set forth in the Terms of Service, you are prohibited from using the site or its content: (a) for any unlawful purpose; (b) to solicit others to perform or participate in any unlawful acts; (c) to violate any international, federal, provincial or state regulations, rules, laws, or local ordinances; (d) to infringe upon or violate our intellectual property rights or the intellectual property rights of others; (e) to harass, abuse, insult, harm, defame, slander, disparage, intimidate, or discriminate based on gender, sexual orientation, religion, ethnicity, race, age, national origin, or disability; (f) to submit false or misleading information; (g) to upload or transmit viruses or any other type of malicious code that will or may be used in any way that will affect the functionality or operation of the Service or of any related website, other websites, or the Internet; (h) to collect or track the personal information of others; (i) to spam, phish, pharm, pretext, spider, crawl, or scrape; (j) for any obscene or immoral purpose; or (k) to interfere with or circumvent the security features of the Service or any related website, other websites, or the Internet. We reserve the right to terminate your use of the Service or any related website for violating any of the prohibited uses.</p>\r\n\r\n<p>SECTION 13 - DISCLAIMER OF WARRANTIES; LIMITATION OF LIABILITY</p>\r\n\r\n<p>We do not guarantee, represent or warrant that your use of our service will be uninterrupted, timely, secure or error-free.</p>\r\n\r\n<p>We do not warrant that the results that may be obtained from the use of the service will be accurate or reliable.</p>\r\n\r\n<p>You agree that from time to time we may remove the service for indefinite periods of time or cancel the service at any time, without notice to you.</p>\r\n\r\n<p>You expressly agree that your use of, or inability to use, the service is at your sole risk. The service and all products and services delivered to you through the service are (except as expressly stated by us) provided &#39;as is&#39; and &#39;as available&#39; for your use, without any representation, warranties or conditions of any kind, either express or implied, including all implied warranties or conditions of merchantability, merchantable quality, fitness for a particular purpose, durability, title, and non-infringement.</p>\r\n\r\n<p>In no case shall<strong> Salasar Balaji (Balaji Computers)</strong> our directors, officers, employees, affiliates, agents, contractors, interns, suppliers, service providers or licensors be liable for any injury, loss, claim, or any direct, indirect, incidental, punitive, special, or consequential damages of any kind, including, without limitation lost profits, lost revenue, lost savings, loss of data, replacement costs, or any similar damages, whether based in contract, tort (including negligence), strict liability or otherwise, arising from your use of any of the service or any products procured using the service, or for any other claim related in any way to your use of the service or any product, including, but not limited to, any errors or omissions in any content, or any loss or damage of any kind incurred as a result of the use of the service or any content (or product) posted, transmitted, or otherwise made available via the service, even if advised of their possibility. Because some states or jurisdictions do not allow the exclusion or the limitation of liability for consequential or incidental damages, in such states or jurisdictions, our liability shall be limited to the maximum extent permitted by law.</p>\r\n\r\n<p>SECTION 14 - INDEMNIFICATION</p>\r\n\r\n<p>You agree to indemnify, defend and hold harmless <strong>Salasar Balaji (Balaji Computers)</strong>and our parent, subsidiaries, affiliates, partners, officers, directors, agents, contractors, licensors, service providers, subcontractors, suppliers, interns and employees, harmless from any claim or demand, including reasonable attorneys&rsquo; fees, made by any third-party due to or arising out of your breach of these Terms of Service or the documents they incorporate by reference, or your violation of any law or the rights of a third-party.</p>\r\n\r\n<p>SECTION 15 - SEVERABILITY</p>\r\n\r\n<p>In the event that any provision of these Terms of Service is determined to be unlawful, void or unenforceable, such provision shall nonetheless be enforceable to the fullest extent permitted by applicable law, and the unenforceable portion shall be deemed to be severed from these Terms of Service, such determination shall not affect the validity and enforceability of any other remaining provisions.</p>\r\n\r\n<p>SECTION 16 - TERMINATION</p>\r\n\r\n<p>The obligations and liabilities of the parties incurred prior to the termination date shall survive the termination of this agreement for all purposes.</p>\r\n\r\n<p>These Terms of Service are effective unless and until terminated by either you or us. You may terminate these Terms of Service at any time by notifying us that you no longer wish to use our Services, or when you cease using our site.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If in our sole judgment you fail, or we suspect that you have failed, to comply with any term or provision of these Terms of Service, we also may terminate this agreement at any time without notice and you will remain liable for all amounts due up to and including the date of termination; and/or accordingly may deny you access to our Services (or any part thereof).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>SECTION 17 - ENTIRE AGREEMENT</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The failure of us to exercise or enforce any right or provision of these Terms of Service shall not constitute a waiver of such right or provision.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>These Terms of Service and any policies or operating rules posted by us on this site or in respect to The Service constitutes the entire agreement and understanding between you and us and govern your use of the Service, superseding any prior or contemporaneous agreements, communications and proposals, whether oral or written, between you and us (including, but not limited to, any prior versions of the Terms of Service).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Any ambiguities in the interpretation of these Terms of Service shall not be construed against the drafting party.</p>\r\n\r\n<p>SECTION 18 - GOVERNING LAW</p>\r\n\r\n<p>These Terms of Service and any separate agreements whereby we provide you Services shall be governed by and construed in accordance with the laws of India and jurisdiction of Jaipur, Rajasthan</p>\r\n\r\n<p>SECTION 19 - CHANGES TO TERMS OF SERVICE</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>You can review the most current version of the Terms of Service at any time at this page.</p>\r\n\r\n<p>We reserve the right, at our sole discretion, to update, change or replace any part of these Terms of Service by posting updates and changes to our website. It is your responsibility to check our website periodically for changes. Your continued use of or access to our website or the Service following the posting of any changes to these Terms of Service constitutes acceptance of those changes.</p>\r\n\r\n<p>SECTION 20 - CONTACT INFORMATION</p>\r\n\r\n<p>Questions about the Terms of Service should be sent to us at <strong>support@salasarbalaji.org</strong>&nbsp;</p>', '{\"meta_title\":\"Terms and Conditions\",\"meta_description\":\"Terms and Conditions\",\"meta_keywords\":\"Terms and Conditions\"}', '2017-07-17 01:37:18', '2017-07-17 01:37:18', NULL);
INSERT INTO `pages` (`id`, `template`, `name`, `title`, `slug`, `content`, `extras`, `created_at`, `updated_at`, `deleted_at`) VALUES
(70, 'default', 'Our Policy', 'Our Policy', 'our-policy', '<p>SECTION 1 - WHAT DO WE DO WITH YOUR INFORMATION?</p>\r\n\r\n<p>When you purchase something from our store, as part of the buying and selling process, we collect the personal information you give us such as your name, address and email address.</p>\r\n\r\n<p>When you browse our store, we also automatically receive your computer&rsquo;s internet protocol (IP) address in order to provide us with information that helps us learn about your browser and operating system.</p>\r\n\r\n<p>Email marketing (if applicable): With your permission, we may send you emails about our store, new products and other updates.</p>\r\n\r\n<p>SECTION 2 - CONSENT</p>\r\n\r\n<p>How do you get my consent?</p>\r\n\r\n<p>When you provide us with personal information to complete a transaction, verify your credit card, place an order, arrange for a delivery or return a purchase, we imply that you consent to our collecting it and using it for that specific reason only.</p>\r\n\r\n<p>If we ask for your personal information for a secondary reason, like marketing, we will either ask you directly for your expressed consent, or provide you with an opportunity to say no.</p>\r\n\r\n<p>How do I withdraw my consent?</p>\r\n\r\n<p>If after you opt-in, you change your mind, you may withdraw your consent for us to contact you, for the continued collection, use or disclosure of your information, at anytime, by contacting us at <strong>support@salalarbalaji.org </strong>or mailing us at <strong>Opp. Shiv Mandir, Sikar Thana,Salasar Surajgarh Churu, Rajasthan, 331506</strong>&nbsp;</p>\r\n\r\n<p>SECTION 3 - DISCLOSURE</p>\r\n\r\n<p>We may disclose your personal information if we are required by law to do so or if you violate our Terms of Service.</p>\r\n\r\n<p>SECTION 4 - PAYMENT</p>\r\n\r\n<p>We use <strong>CCavenue</strong> for processing payments. <strong>We/pay u money</strong> do not store your card data on their servers. The data is encrypted through the Payment Card Industry Data Security Standard (PCI-DSS) when processing payment. Your purchase transaction data is only used as long as is necessary to complete your purchase transaction. After that is complete, your purchase transaction information is not saved.</p>\r\n\r\n<p>Our payment gateway adheres to the standards set by PCI-DSS as managed by the PCI Security Standards Council, which is a joint effort of brands like Visa, MasterCard, American Express and Discover.</p>\r\n\r\n<p>PCI-DSS requirements help ensure the secure handling of credit card information by our store and its service providers.</p>\r\n\r\n<p>For more insight, you may also want to read terms and conditions of <strong>CCavenue</strong>. &nbsp;</p>\r\n\r\n<p>SECTION 5 - THIRD-PARTY SERVICES</p>\r\n\r\n<p>In general, the third-party providers used by us will only collect, use and disclose your information to the extent necessary to allow them to perform the services they provide to us.</p>\r\n\r\n<p>However, certain third-party service providers, such as payment gateways and other payment transaction processors, have their own privacy policies in respect to the information we are required to provide to them for your purchase-related transactions.</p>\r\n\r\n<p>For these providers, we recommend that you read their privacy policies so you can understand the manner in which your personal information will be handled by these providers.</p>\r\n\r\n<p>In particular, remember that certain providers may be located in or have facilities that are located a different jurisdiction than either you or us. So if you elect to proceed with a transaction that involves the services of a third-party service provider, then your information may become subject to the laws of the jurisdiction(s) in which that service provider or its facilities are located.</p>\r\n\r\n<p>Once you leave our store&rsquo;s website or are redirected to a third-party website or application, you are no longer governed by this Privacy Policy or our website&rsquo;s Terms of Service.</p>\r\n\r\n<p>Links</p>\r\n\r\n<p>When you click on links on our store, they may direct you away from our site. We are not responsible for the privacy practices of other sites and encourage you to read their privacy statements.</p>\r\n\r\n<p>SECTION 6 - SECURITY</p>\r\n\r\n<p>To protect your personal information, we take reasonable precautions and follow industry best practices to make sure it is not inappropriately lost, misused, accessed, disclosed, altered or destroyed.</p>\r\n\r\n<p>SECTION 7 - COOKIES</p>\r\n\r\n<p>We use cookies to maintain session of your user. It is not used to personally identify you on other websites.</p>\r\n\r\n<p>SECTION 8 - AGE OF CONSENT</p>\r\n\r\n<p>&nbsp;By using this site, you represent that you are at least the age of majority in your state or province of residence, or that you are the age of majority in your state or province of residence and you have given us your consent to allow any of your minor dependents to use this site.</p>\r\n\r\n<p>SECTION 9 - CHANGES TO THIS PRIVACY POLICY</p>\r\n\r\n<p>We reserve the right to modify this privacy policy at any time, so please review it frequently. Changes and clarifications will take effect immediately upon their posting on the website. If we make material changes to this policy, we will notify you here that it has been updated, so that you are aware of what information we collect, how we use it, and under what circumstances, if any, we use and/or disclose it.</p>\r\n\r\n<p>If our store is acquired or merged with another company, your information may be transferred to the new owners so that we may continue to sell products to you.</p>\r\n\r\n<p>QUESTIONS AND CONTACT INFORMATION</p>\r\n\r\n<p>If you would like to: access, correct, amend or delete any personal information we have about you, register a complaint, or simply want more information contact our Privacy Compliance Officer at <strong>support@salalarbalaji.org </strong>or mailing us at <strong>Opp. Shiv Mandir, Sikar Thana,Salasar Surajgarh Churu, Rajasthan, 331506</strong></p>', '{\"meta_title\":\"Our Policy\",\"meta_description\":\"Our Policy\",\"meta_keywords\":\"Our Policy\"}', '2017-07-17 01:40:14', '2017-07-17 01:40:14', NULL),
(71, 'default', 'About Us', 'About Us', 'about-us', '<p>भारतीय संस्कृति में मानव जीवन के लक्ष्य भौतिक सुख तथा आध्यात्मिक आनंद की प्राप्ति के लिए अनेक देवी देवताओं की पूजा का विधान है जिनमें पंचदेव प्रमुख हैं। पंच देवों का तेज पुंज श्री हनुमान जी हैं।</p>\r\n\r\n<p>प्राचीन ग्रन्थों में वर्णित सात करोड़ मन्त्रों में श्री हनुमान जी की पूजा का विशेष उल्लेख है। श्री राम भक्तए रूद्र अवतारए सूर्य.शिष्यए वायु.पुत्रए केसरी.नन्दनए महाबलए श्री बालाजी के नाम से प्रसिद्ध तथा माता अन्जनी के गर्भ से प्रकट हनुमान जी में पांच देवताओं का तेज समाहित हैं।</p>\r\n\r\n<p>हनुमान जी पूरे भारतवर्ष में पूजे जाते हैं और जन.जन के आराध्य देव हैं। बिना भेदभाव के सभी हनुमान अर्चना के अधिकारी हैं। अतुलनीय बलशाली होने के फलस्वरूप इन्हें बालाजी की संज्ञा दी गई है। देश के प्रत्येक क्षेत्र में हनुमान जी की पूजा की अलग परम्परा है। वीर.भूमि राजस्थान में ष्बाबाष् या बालाजी के नाम से विख्यात हनुमान जी के अनेक प्रसिद्ध मन्दिर हैं जिनमें सालासर के चमत्कारी श्री बालाजी मन्दिर का विशेष महत्व है।</p>\r\n\r\n<p>सालासर राजस्थान प्रान्त के चुरू जिले की सुजानगढ़ तहसील में स्थित है। सुजानगढ़ से लगभग 25 किलोमीटर दूर मरूस्थल कटीलों के बीच सालासर का परम.पावन क्षेत्र स्थित है। सालासर के कण.कण में श्री बालाजी विद्यमान हैं। श्री बालाजी मन्दिर सालासरए राजस्थानी शैली में निर्मित एक भव्य एवं विशाल मन्दिर है।</p>\r\n\r\n<p>सालासर में स्थापित सिद्धपीठ बालाजी की प्रतिमा आसोटा गांव के एक खेत में प्रकट हुई थी। बालाजी के परम भक्त मोहनदास जी को हल चलाते समय इस प्रतिमा के प्रथम दर्शन हुए थे। तत्पश्चात भक्त श्री मोहनदास द्वाराए श्री बालाजी महाराज की दिव्य प्रेरणा सेए आज से लगभग 253 वर्ष पूर्वए विक्रमी सम्वत् 1811 ;इघ् सन 1754द्ध श्रावन शुक्ल नवमीए शानिवार को श्री बालाजी के श्रीविग्रह की प्रतिष्ठा सालासर के परम पावन क्षेत्र में हुई। भक्त मोहनदास जी एवं उनकी बहन कान्ही बाई ने अनन्य भक्ति भाव से बालाजी की सेवा अर्चना की और बालाजी के साक्षात् दर्शन प्राप्त किए। कहते हैं कि श्री बालाजी एवं मोहनदास जी आपस में वार्तालाप करते थे।</p>\r\n\r\n<p>मन्दिर में श्री बालाजी की भव्य प्रतिमा सोने के सिंहासन पर विराजमान है। इसके ऊपरी भाग में श्री राम दरबार है तथा निचले भाग में श्री राम चरणों में दाढ़ी.मूंछ से सुशोभित हनुमान जी श्री बालाजी के रूप में विराजमान हैं। मुख्य प्रतिमा शालिग्राम पत्थर की है जिसे गेरूए रंग और सोने से सजाया गया है। बालाजी का यह रूप अद्भुतए आकर्षक एवं प्रभावशाली हैं। प्रतिमा के चारों तरफ सोने से सजावट की गई हैं और सोने का रत्न जडि़त भव्य मुकुट चढ़ाया गया है। प्रतिमा पर लगभग 5 किलोग्राम सोने से निर्मित स्वर्ण छत्र भी सुशोभित है।</p>\r\n\r\n<p>प्रतिष्ठा के समय से ही मन्दिर के अंदर अखण्ड दीप प्रज्वलित हैं। मन्दिर परिसर के अन्दर प्राचीन कुएं का लवण मुक्त जल आरोग्यवर्धक है। श्रद्धालुए यहां स्नान कर अनेक रोगों से छुटकारा पाते हैं। मन्दिर के अन्दर स्थित प्राचीण धूणां आज भी जल रहा है। शुरू में जाटी वृक्ष के पास एक छोटा सा मन्दिर था। श्री बालाजी महाराज की अनुकम्पा से आज यहां विशाल स्वर्ण निर्मित मन्दिर है। जांटी का वृक्ष आज भी मौजूद हैं जिस पर भक्तजन नारियल एवं ध्वजा चढ़ाते हैं तथा लाल धागे बांधकर मन्नत मांगते हैं। मन्दिर के ऊपर स्थापित भारतीय संस्कृति की झलक देने वाली लाल ध्वजाएं अनवरत रूप से लहराती रहती हैं। श्री बालाजी मन्दिर से पहले लगभग 1 किलोमीटर की दूरी पर श्री अंजनी माता का मन्दिर है। अंजनी माता का यह मंदिर भव्य एवं प्रतिमा स्वर्ग निर्मित हैं। मन्दिर की शोभा भव्य एवं वातावरण सात्विक है। सालासर आने वाले सभी भक्जतन सबसे पहले श्री अंजनी माता मन्दिर में पूजा.अर्चना करते हैं और प्रसाद चढ़ाते हैं। तत्पश्चात भक्तजन श्री बालाजी मन्दिर की तरफ प्रस्थान करते हैं। कुछ विशिष्ट भक्तजन पेट के बल चलते हुए मन्दिर तक पहुंचते हैं। पैदल चलकर आने वाले यात्री हाथों में लाल घ्वजा लेकर चलते हैं।</p>\r\n\r\n<p>श्री बालाजी की दैनिक परम्परागत भोग तथा पूजा.अर्चना भक्त श्री मोहनदास जी के वशंजों द्वारा की जाती है। बालाजी के भोग में प्रायरू चूरमाए लड्डूए पेड़ेए मिश्री.मेवा आदि चढ़ाए जाते हैं। परम्परागत रोट और खिचड़ा भी श्री बालाजी के भोग में सम्मिलित हैं। श्री बालाजी महाराज की कथा.पाठए जप तथा कीर्तन आदि यहां निरन्तर चलते रहते हैं।</p>\r\n\r\n<p>श्री बालाजी महाराज की कृपा से भक्तजनों की मनोकामनाओं की पूर्ति के उपरांत यहां जात.जडुलेए ध्वजा नारियल तथा छत्र आदि भेंट किए जाते हैं। कुछ श्रद्धावान भक्त सवामणीए भण्डारा आदि अर्पित करते हैं। सवामणी का प्रचलन यहां सबसे ज्यादा है।</p>\r\n\r\n<p>देश.विदेश से भक्तगण श्री बालाजी के दर्शनार्थ सालासर आते हैं। मंगलवार तथा शानिवार के दिन यहां श्रद्धालुओं की संख्या अधिक होती है। चैत्र मास अप्रैल और आश्विन मास अक्टूबर की पूर्णिमाओं पर यहां विशाल मेला लगता है जो काफी दिनों तक चलता है। इस अवसर पर श्रद्धालुओं की संख्या लाखों में होती हैं। पैदल चलकर भी लाखों श्रद्धालु आते है। राजस्थान के अलावा पंजाबए हरियाणाए दिल्ली सहित पूरे भारतवर्ष से श्रद्धालु यहां पहुंचते हैं।</p>\r\n\r\n<p>क्या होती है सवामणीरू. सवामणी श्री बालाजी महाराज को अर्पित की जाने वाले सवामण लगभग 50 किलोग्राम भोग सामग्री होती है। यह भोग सामग्री एक ही प्रकार की होती है जो लड्डूए पेड़ाए बर्फीए चूरमा होते हैं परंतु ज्यादातर सवामणी बेसन के लडड्ओं की होती हैं। भोग के उपरान्त सवामणी को भक्तों में वितरण करना होता है।</p>', '{\"meta_title\":\"About Us\",\"meta_description\":\"About Us\",\"meta_keywords\":\"About Us\"}', '2017-07-17 01:43:55', '2017-07-17 01:43:55', NULL),
(72, 'default', 'Balaji History', 'Balaji History', 'history', '<p>यह घटना सन 1754 की है। सीकर के रूल्याणी ग्राम के निवासी लच्छीरामजी पाटोदिया के सबसे छोटे पु़त्र मोहनदास बचपन से ही संत प्रवृति के थे। सत्संग और पूजा-अर्चना में शुरू से ही उनका मन रमता था। उनके जन्म के समय ही ज्यातिषियों ने भविष्यवाणी की थी कि आगे चलकर यह बालक तेजस्वी संत बनेगा और दुनिया में इसका नाम होगा। मोहनदास की बहन कान्ही का विवाह सालासर ग्राम में हुआ था। एकमात्र पुत्र उदय के जन्म के कुछ समय पश्चात ही वह विधवा हो गई। मोहनदास जी अपनी बहन और भांजे को सहारा देने की गरज से सालासर आकर साथ रहने लगे। उनकी मेहनत से कान्ही के खेत सोना उगलने लगे। अभाव के बादल छंट गए और उनके घर हर याचक को आश्रय मिलने लगा। भांजा उदय भी बड़ा हो गया था उसका विवाह कर दिया गया।</p>\r\n\r\n<p>&nbsp;एक दिन मामा-भांजे दोनों मिलकर खेत मेे कृषि का कार्य कर रहे थे तभी मोहनदास के हाथ से किसी ने गड़ासा छीनकर दूर फेंक दिया। मोहनदास पुनः उठा लाए और कार्य में लग गए पुनः किसी ने गड़ासा छीनकर दुर फेंक दिया। ऐसा कई बार हुआ। उदय दूर से सब देख रहा था। वह निकट आया अैार मामा को कुछ देर आराम करने की सलाह दी। मोहनदास जी ने कहा कि कोई उनके हाथ से जबरन गड़ासा छीन कर फेंक रहा है।</p>\r\n\r\n<p>&nbsp;सायं को उदय ने अपनी मां कान्ही से इस बात की चर्चा की कान्ही ने सोचा कि भाई का विवाह करवा देते है, फिर सब ठीक हो जाएगा। यह बात मोहनदास को ज्ञात हुई तो, उन्होने कहा कि जिस लड़की से मेरे विवाह की बात चलाओगी उसकी मृत्यु हो जाएगी और वास्तव में ऐसा ही हुआ। जिस कन्या से मोहनदास के विवाह की बात चल रही थी वह अचानक ही मृत्यु को प्राप्त हो गई। इसके बाद कान्ही ने भाई पर विवाह के लिए दबाव नहीं डाला। मोहनदास जी ने ब्रह्यचर्य व्रत धारण किया और भजन-कीर्तन में समय व्यतीत करने लगे।</p>\r\n\r\n<p>&nbsp;एक दिन कान्ही अपने भाई और पुत्र को भेाजन करा रही थी, तभी द्वार पर किसी यााचक ने भिक्षा मांगी। कान्ही को जाने में कुछ देर हो गई। वह पहुंची तो उसे एक परछाई मात्र दृष्टिगोचर हूई पीछे-पीछे मोहनदास जी भी दौड़े आए थे। उन्हेें सच्चाई ज्ञात थी कि वह तो स्वयं बालाजी थे। कान्ही को अपने बिलंब पर बहुत पश्चातप हुआ। वह मोहनदास जी से बालाजी के दर्शन कराने का आग्रह करने लगी। मोहनदास जी ने उन्हें धैर्य रखने कि सलाह दी। लगभग डेढ-दो माह पश्चात् किसी साधु ने पुनः नारायण हरि, नारायण हरि का उच्चारण किया, जिसे सुन कान्ही दौड़ी-दौड़ी&nbsp; मोहनदास जी के पास गई। मोहनदास द्वार पर पहूंचे तो देखते हैं कि वह साधुवेशधारी बालाजी ही थे। जो अब तक वापस हो लिए थे। मोहनदास तेजी से पीछे दौड़े अैार उनके चरणों में लोट गए तथा बिलंब के लिए क्षमा-याचना करने लगे। तब बाला जी वास्तविक रूप में प्रकट हुए और बोले मैं जानता हूं मोहनदास तुम सच्चे मन से सदैव मुझे जपते हो। तुम्हारी निश्चल भक्ति से मैं बहुत प्रसन्न हूं। मैं तुम्हारी हर मनोकामना पूर्ण करूगां बोलो।&nbsp;</p>\r\n\r\n<p>&nbsp;मोहनदास विनयपूर्वक बोले आप मेरी बहन कान्ही को दर्शन दीजिए। भक्त वत्सल बालाजी ने आग्रह स्वीकार कर लिया और कहा, मैं पवित्र आसन पर विराजूगां और मिश्री सहित खीर व चूरमे का भेाग स्वीकार करूगां।&nbsp; भक्त शिरोमणी मोहनदास सप्रेम बालाजी को अपने घर लाए अैार बहन-भाई ने आदर सहित अत्यंत कृतज्ञता से उन्हें&nbsp; मनपंसद भोजन कराया।</p>\r\n\r\n<p>सुंदर और स्वच्छ शय्या पर विश्राम के पश्चात भाई-वहन की निश्चल सेवा से प्रसन्न हो बाला जी ने कहा कि कोई भी मेरी छाया को अपने ऊपर करने की चेष्टा नहीं करेगा। श्रद्वा सहित जो भेंटट की जाएगी, मैं उसे प्रेमपूर्वक ग्रहण करूगां एवं इस सालासर स्थान पर सदैव निवास करूगां। ऐसा कह बालाजी अंर्तध्यान हो गए और भक्त भाई-बहन कृत्य-कृत्य हो उठे। इसके बाद से मोहनदास जी एंकात में एक शमी के वृक्ष के नीचे आसन लगाकर बैठ गए। उन्होंने मौन व्रत धारण कर लिया।&nbsp;&nbsp;</p>\r\n\r\n<p>लोग उन्हें पागल समझ बावलिया नाम से पुकारने लगे। एक दिन मोहनदास शमी वृक्ष के नीचे बैठे धूनी रमाए तपस्या कर रहे थे कि अचानक वह शमी वृक्ष फलों से लद गया। एक जाट पुत्र फल तोड़ने के लिए उसी शमी वृक्ष पर चढ़ा तो धबराहट में कुछ फल मोहनदास जी पर आ गिरे। उन्होंने सोचा वृक्ष से कोई पक्षी गिरकर घायल न हो गया हो लेकिन आंखे खेाली तो जाट पुत्र को वृक्ष पर चढ़ हुआ देखा। जाट पुत्र भय से कांप उठा था। मोहनदास जी ने उसे भय-मुक्त किया और नीचे आने को कहा। नीचे आने पर जाट पुत्र ने बताया कि मां के मना करने पर भी पिता ने उसे शमी फल लाने की आज्ञा दी और कहा कि वह पागल बावलिया तुझे खा थेाड़े ही जाएगा।&nbsp;</p>\r\n\r\n<p>तब बाबा मोहनदास जी ने कहा कि अपने पिता से कहना कि इन फलों को खाने वाला व्यक्ति जीवित नहीं रह सकता। लेकिन जाट ने बाबा की बात को खिल्ली में उड़ा दिया कहते हैं कि फल खाते ही जाट की मृत्यु हो गई। तब से लोगों के मन में बाबा मोहनदास के प्रति भक्ति भाव का बीज अंकुरित हुआ, जो आगे चलकर अनेक चमत्कारिक घटनाओं के बाद वृक्ष बनता चला गया।&nbsp;</p>\r\n\r\n<p>एक बार भांजे उदय ने देखा कि बाबा के शरीर पर पंजों के बड़े-बड़े निषान हैं। उसने पुछा तो बाबा टाल गए बाद में ज्ञात हुआ कि बाबा मोहनदास और बाला जी प्रायः मल्ल युद्व व अन्य तरह की क्रीड़ाएं करते थे और बाला जी का साया सदैव बाबा मोहनदास जी के साथ रहता था। इस तरह की घटनाओं से बाबा मोहनदास की कीर्ति दूर पास के ग्रामों में फैलती चली गई, लोग उनके दर्शन को आने लगे।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;तत्कालीन सालासर बीकानेर राज्य के अधीन था। उन दिनों ग्रामों का शासन ठाकुरों के हाथ में था। सालासर व उसके निकटवर्ती अनेक ग्रामों की देख-रेख का जिम्मा शोभासर के ठाकुर धीरज सिंह के पास था। एक दिन उन्हें खबर मिली कि डाकुओं का एक विषाल जत्था लूट-पाट के लिए उस ओर बढ़ा चला आ रहा है। उनके पास इतना भी वक्त नहीं था कि बीकानेर से सैन्य सहायता मंगवा सकते। अतंतः सालासर के ठाकुर सालम सिंह की सलाह पर दोनों बाबा मोहनदास की शरण में पहुंचे और मदद की गुहार लगाई।</p>\r\n\r\n<p>बाबा ने उन्हें आश्वस्त किया और कहा कि बालाजी का नाम लेकर डाकुओं की पताका को उड़ा देना क्योंकि विजय पताका ही किसी भी सेना की शक्ति होती है। ठाकुरों ने वैसा ही किया। बालाजी का नाम लिया और डाकुओं की पताका को तलवार से उड़ा दिया। डाकू सरदार उनके चरणों में आ गिरा, इस तरह मोहनदास जी के प्रति दोनों की श्रद्वा बलवती होती चली गई। बाबा मोहनदास ने उसी पल वहां बाला जी की एक भव्य मंदिर बनवाने का संकल्प किया। सालम सिंह ने भी मंदिर निमार्ण में पूर्ण सहयोग देने का निश्चय किया और आसोटा निवासी अपने ससुर चंपावत को बालाजी की मूर्ति भेजने का संदेश प्रेशित करवाया।&nbsp;</p>\r\n\r\n<p>इधर, आसोटा ग्राम में एक किसान बह्यमुहूर्त में अपना खेत जोत रहा था। एकाएक हल का नीचला हिस्सा किसी वस्तु से टकराया उसे अनुभव हुआ तो उसने खोदकर देखा तो वहां एक मूर्ति निकली। उसने मूर्ति को निकाल कर एक ओर रख दिया और प्रमादवश उसकी ओर कोई ध्यान नहीं दिया। वह पुनः अपने काम में जुट गया। एकाएक उसके पेट में तीव्र दर्द उठा अैार वहां छटपटाने लगा। उसकी पत्नी दौड़ी-दौड़ी आई किसान ने दर्द से कराहते हुए प्रस्तर प्रतिमा निकालने अैार पेट में तीव्र दर्द होने की बात बताई। कृषक पत्नी बुद्विमती थी। वह प्रतिमा के निकट पहुची और आदरपूर्वक अपने आंचल से उसकी मिट्टी साफ की तो वहां राम-लक्ष्मण को कंधे पर लिए वीर हनुमान की दिव्य झांकी के दर्शन हुए। काले पत्थर की उस प्रतिमा को उसने एक पेड़ के निकट स्थापित किया और यथाशक्ति प्रसाद चढाकर, अपराध क्षमा की प्रार्थना की तभी मानो चमत्कार हुुआ वह किसान स्वस्थ हो उठ खड़ा हुआ।</p>\r\n\r\n<p>इस चमत्कार की खबर आग की तरह सारे गांव में फैल गई। आसोटा के ठाकुर चंपावत भी दर्शन को आए और उस मूर्ति को अपनी हवेली में ले गए। उसी रात ठाकुर को बाला जी ने स्वप्न में दर्शन दिए और मूर्ति को सालासर पहुंचाने की आज्ञा दी। पा्रतः ठाकुर चंपावत ने अपने कर्मचारियों की सुरक्षा में भजन मंडली के साथ सजी-धजी बैलगाड़ी में मूर्ति को सालासार की ओर विदा कर दिया। उसी रात भक्त शिरोमणी मोहनदास जी को भी बालाजी ने दर्शन दिए और कहा कि मैं अपना वचन निभाने के लिए काले पत्थर की मूर्ति के रूप में आ रहा हूं। पा्रत ठाकुर सालम सिंह वह अनेक ग्रामवासियों ने बाबा मोहनदास जी के साथ मूर्ति का स्वागत किया और सर 1754 में शुक्ल नवमी को शनिवार के दिन पूर्ण विधि-विधान से हनुमान जी की मूर्ति की स्थापना की गई।&nbsp;</p>\r\n\r\n<p>श्रावण द्वादशी मंगलवार को भक्त शिरोमणि मोहनदास जी भगवत भजन में इतने लीन हो गए कि उन्होनें घी और सिंदूर से मूर्ति को श्रृंगारित कर दिया और उन्हें कुछ ज्ञात भी नहीं हुआ। उस समय बाला जी का पूर्व दर्षित रूप जिसमें वह श्रीराम और लक्ष्मण को कंधे पर धारण किए थे, अदृश्य हो गया। उसके स्थान पर दाढ़ी-मूंछ, मस्तक पर तिलक, विकट भौंहें, सुंदर आंखें, पर्वत पर गदा धारण किए अदभुत रूप के दर्शन होने लगे। इसके बाद शनैःशनैः मंदिर का विकास कार्य प्रगति के पथ पर बढ़ता चला गया। वर्तमान में मंदिर के द्वार व दीवारें चांदी विनिर्मित मूर्तियों और चित्रों से सुसज्जित हैं। गर्भगृह के मुख्यद्वार पर श्रीराम दरबार की मूर्ति के नीचे पांच मूर्तियां हैं मध्य में भक्त मोहनदास बैठे हैं, दाएं श्रीराम व हनुमान तथा बाएं बहन कान्ही और पं सुखरामजी बहनोई आशीर्वाद देते दिखाए गए हैं।</p>\r\n\r\n<p>सालासर में वर्ष भर श्रद्वालुओं का तांता लगा रहता है। मंगल, शनि और प्रत्येक पूर्णिमा को दर्शनार्थी विशेष रूप से आते हैं। यहां प्रति वर्ष तीन बड़े मेले लगते हैं। प्रथम चैत्र शुक्ल चतुरदर्शी, पूर्णिमा को श्री हनुमान जंयती के अवसर पर, द्वितीय आश्विन शुक्ल चतुदर्शी पूर्णिमा को और अंतिम भाद्रपद शुक्ल चतुदर्शी पूर्णिमा को इन मेलों में लाखों श्रद्वालु आते हैं। इस अवसर पर छोटा-सा सालासर ग्राम महाकुभं- से कम नहीं है।&nbsp;</p>\r\n\r\n<p>सालासर हनुमान धाम राजस्थान के चुरू जिले में स्थित है। यह जयपुर-बीकानेर राजमार्ग पर सीकर से लगभग 57 किमी व सूजानगढ से लगभग 24 किमी दुर स्थित है। यहां पहुंचने के लिए जयपुर व अन्य स्थानों से पर्याप्त परिवहन साधन उपलव्ध हैं। किराए की टैक्सी सेवा भी उपल्ब्ध है। इस धाम के बारे में यह प्रसिद्व है कि यहां से कोई भी भक्त खाली हाथ नहीं लौटता। सालासर बालाजी सभी की मनोकामनाएं पूर्ण करते हैं।</p>', '{\"meta_title\":\"Balaji History\",\"meta_description\":\"Balaji History\",\"meta_keywords\":\"Balaji History\"}', '2017-07-17 01:49:13', '2017-07-17 01:49:13', NULL),
(73, 'default', 'Daily Schedule', 'Daily Schedule', 'daily-schedule', '<div class=\"panel panel-warning\">\r\n  <div class=\"panel-heading\">\r\n<h1 ><strong>Time-table</strong></h1>\r\n</div>\r\n<div class=\"panel-body\">\r\n<h4 ><strong>Monday-Sunday</strong></h4>\r\n\r\n<table class=\"table table-bordered bg-warning\"></caption>\r\n	<tbody>\r\n    \r\n		\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<h4 ><strong>Salasar Balaji Dham Darshan Timings</strong></h4>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>4:30 a.m</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>पट</strong> <strong>खुलना</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>5:00 a.m</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>मंगल</strong> <strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>10:30 a.m</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>राजभोग</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>6:00 p.m</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>धूप</strong> <strong>और</strong> <strong>मोहनदास</strong> <strong>जी</strong> <strong>की</strong> <strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>07:30p.m.</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>बालाजी</strong> <strong>की</strong> <strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>8:15 p.m </strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>बाल</strong> <strong>भोग</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>10.00p.m.</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>शयन</strong> <strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>11:00 A.M. ( </strong><strong>केवल</strong> <strong>मंगलवार</strong><strong> )</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>राजभोग</strong><strong>,</strong><strong>आरती</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"padding:20px;\">\r\n			<strong style=\"font-size:28px;\">Note:</strong>\r\n\r\n		<i style=\"font-weight:bold; font-size:22px; color:#F00\"><mark>The Rajbhog Aarti is only for the Tuesday</mark></i>\r\n			\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>', '{\"meta_title\":\"Daily Schedule\",\"meta_description\":\"Daily Schedule\",\"meta_keywords\":\"Daily Schedule\"}', '2017-07-26 10:11:34', '2017-07-29 11:41:33', NULL),
(74, 'default', 'Pooja', 'Pooja', 'Pooja', '<div>\r\n<div class=\"panel panel-warning\">\r\n  <div class=\"panel-heading\"><h1>Different ways of Booking online Pooja:</h1>\r\n   <p>In the online booking for Pooja, following Pooja&#39;s are accomplished with the instructions and directions of &nbsp;experienced pandits only.</p>\r\n  </div>\r\n  <div class=\"panel-body\">\r\n\r\n<table align=\"center\" class=\"table table-bordered bg-warning\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:479px\">\r\n			<p><strong>Types of Poojas</strong></p>\r\n			</td>\r\n			<td style=\"width:270px\">\r\n			<p><strong>Amount </strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:479px\">\r\n			<p>&nbsp;Pooja Samagree</p>\r\n			</td>\r\n			<td style=\"width:270px\">\r\n			<p>&nbsp;Rs.2999/-</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:479px\">\r\n			<p>&nbsp;Grah Pooja</p>\r\n			</td>\r\n			<td style=\"width:270px\">\r\n			<p>&nbsp;Rs.2100/-</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:479px\">\r\n			<p>&nbsp;Vyaparik Anushthan Pooja</p>\r\n			</td>\r\n			<td style=\"width:270px\">\r\n			<p>&nbsp;Rs.5100/-</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:479px\">\r\n			<p>&nbsp;Birthday Pooja</p>\r\n			</td>\r\n			<td style=\"width:270px\">\r\n			<p>&nbsp;Rs.5100/-</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:479px\">\r\n			<p>&nbsp;Pooja On call</p>\r\n			</td>\r\n			<td style=\"width:270px\">\r\n			<p>&nbsp;Rs.7999/-</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:479px\">\r\n			<p>&nbsp;Pooja at home</p>\r\n			</td>\r\n			<td style=\"width:270px\">\r\n			<p>&nbsp;Rs.11000/-</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:479px\">\r\n			<p>&nbsp;Assist pooja at mandir</p>\r\n			</td>\r\n			<td style=\"width:270px\">\r\n			<p>&nbsp;Rs.5000/-</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p>Contact us and we will arrange all the materials and pandits for the divine pooja of Salasar Balaji without any hassle.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Grah Pooja:</p>\r\n\r\n<p>We provide all types of &nbsp;Grah Puja like Mangal (mars) puja, Shani (saturn) puja, Sun (surya) puja, Ketu puja, Rahu puja, shukr (venus) puja, Budh (mercury) puja, Brahspati (jupiter) puja, Chandra (moon) puja etc.</p>\r\n\r\n<p>Graha Shanti Havan is a Puja and Havan conducted for the purpose of peace in dwelling. It has to be performed in nine parts. This is because there are nine planets and each one has to be prayed to. This Yagya is a perfect combination of a prayer to all the nine planets; in order to bless our homes with happiness and harmony..</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Vyaparik Anushthan Pooja:</p>\r\n\r\n<p>Puja-Anushthans are done for a particular requirement and for a precise problem. Puja-Anushthan should be directed for various reasons like &nbsp;for success, improve financial conditions, reduce business problems. &nbsp;The Puja-Anushthans are therefore performed for precise reasons and should be given immense respect and importance.</p>\r\n\r\n<p>We provide Vyaparik Anushthan Pooja at your place ,for further query contact us.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Birthday Pooja:</p>\r\n\r\n<p>Birthdays are maybe the utmost waited for days of the year. It is the day we are born, the timing of which decides our future based on our kundli.. Birthday is complete without a Puja. There is huge importance&nbsp; of &nbsp;Puja on the occasion of your birthday. We will provide</p>\r\n\r\n<ul>\r\n	<li>Havan&nbsp; for Birthday Puja .</li>\r\n	<li>Arrangement Includes&nbsp;Pandit Jee with All Required Materials.</li>\r\n</ul>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p>Pooja at home:</p>\r\n\r\n<p>We offer various pooja at your home, according to your requirements.</p>\r\n\r\n<p>All the pandits and samgri will be arranged by us at your home without any hassle.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pooja on call:</p>\r\n\r\n<p>We also provide pooja on phone call in case if you live in abroad and you want a indian pandit to perform your pooja on voice call or video call or using video conference at your place.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Assist Pooja at mandir:</p>\r\n\r\n<p>We offer assistance for pooja at salasar balaji dham with the proper guidance of trained and skilled priests and if you require pooja samgri also then that will be also arranged by us without any delay .</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>', '{\"meta_title\":\"Pooja\",\"meta_description\":\"Pooja\",\"meta_keywords\":\"Pooja\"}', '2017-07-27 10:59:38', '2017-07-29 08:52:24', NULL),
(75, 'default', 'Upcoming Festivals', 'Upcoming Festivals', 'Upcoming Festivals', '<div class=\"panel panel-warning\">\r\n  <div class=\"panel-heading\">\r\n<h1>|<strong>Upcoming Festival</strong></h1>\r\n<br/>\r\n<br/>\r\n<h4>Sri Hanuman Jayanti  huge number  of devotees come at Salasar Balaji Dham  on Sri HanumanJayanti from every part of the country. Ashwin Shukla Chaturdashi & Purnima Lacs of devotees used to come in the balaji  fair also. Bhadrapad Shukla Chaturdashi & Purnima. This fair is have lots of devotion from all the devotees of lord balaji and it has huge significane and importance.\r\n\r\n<br />\r\n            <br/>\r\n			\r\n       \r\nStay updated with various festivals celebrated at salasar balaji. Festivals such as Hanuman Jayanti,  Ashwin Shukla Chaturdashi, Bhadrapad Shukla Chaturdashi & Purnima are one of the main festivals celebrated with enthusiasm, witnessed by lacks of devotees. Throughout the year various small and big festivals are celebrated at Salasar Balaji. Keep visiting this page for  all the upcoming festival updates. \r\n</h4>\r\n\r\n<div class=\"panel-body\">\r\n<table class=\"table table-bordered bg-warning\">\r\n\r\n	<tbody>\r\n   \r\n		\r\n		\r\n        \r\n		<tr>\r\n			<td>\r\n			<p><strong>Sravana Masam First Saturday Balaji Abhishekam</strong></p>\r\n			</td>\r\n			<td>\r\n			<p> <strong>7/29/2017 </strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Vara Lakshmi Vratham</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>8/4/2017</strong> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Sri Krishna Janmashtami Celebrations</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>8/15/2017</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Sri Ganesha Chaturthi</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>8/24/2017</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Navaratri starts-Nava Durga Kalasha Stapana\r\n\r\n</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>9/20/2017</strong> </p>\r\n			</td>\r\n		</tr>\r\n		\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>', '{\"meta_title\":\"Upcoming Festivals\",\"meta_description\":\"Upcoming Festivals\",\"meta_keywords\":\"Upcoming Festivals\"}', '2017-07-28 10:32:28', '2017-07-29 12:44:22', NULL),
(76, 'default', 'Book Program', 'Book Program', 'Book Program', '<div class=\"panel panel-warning\">\r\n  <div class=\"panel-heading\">\r\n	<h1>Book Program</h1>\r\n    </div>\r\n <div class=\"panel-body\">\r\n<table class=\"table table-bordered bg-warning\" >\r\n	<tbody>\r\n		\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<h3><strong>Program Booking:</strong></h3>\r\n            <br/>\r\n             <br/>\r\n Lacs of devotees arrive at Salasar Balaji Dham from every corner of the this country. Ashwin Shukla Chaturdashi & Purnima Lacs of devotees use to come in this fair too. Bhadrapad Shukla Chaturdashi & Purnima. This fair is in as attractive as the rest fairs. Free food & sweet drinks are distributed.\r\nSalasar is a place of religious importance for the devotees of Lord Hanuman in Churu district in Rajasthan. We make  hotels and guest house available  to all the  people who come to worship salasar balaji .We provide good qualities rooms and services . To organize the program at Salsar Balaji Dham please contact us anytime on the given contact number .\r\n\r\n			</td>\r\n		</tr>\r\n        \r\n		\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>', '{\"meta_title\":\"Book Program\",\"meta_description\":\"Book Program\",\"meta_keywords\":\"Book Program\"}', '2017-07-28 12:03:45', '2017-07-29 12:10:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('rakesh.rathore@planetwebsolution.com', '$2y$10$6C.z40HXr1ISfZgDXfzpYuaPTmMi9PDAOWSxaz9z2djSYuAGc7Yo6', '2017-05-19 06:03:09');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Pages', '2017-05-03 06:55:46', '2017-05-03 06:55:46');

-- --------------------------------------------------------

--
-- Table structure for table `permission_roles`
--

CREATE TABLE `permission_roles` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_roles`
--

INSERT INTO `permission_roles` (`permission_id`, `role_id`) VALUES
(2, 2),
(2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `permission_users`
--

CREATE TABLE `permission_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `price` int(11) NOT NULL,
  `old_price` int(11) DEFAULT NULL,
  `visible` int(11) NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `lft` int(10) UNSIGNED DEFAULT NULL,
  `rgt` int(10) UNSIGNED DEFAULT NULL,
  `depth` int(10) UNSIGNED DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `name`, `slug`, `meta_title`, `meta_keywords`, `meta_description`, `description`, `price`, `old_price`, `visible`, `featured`, `lft`, `rgt`, `depth`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Puja Ooti (Essential puja ingredients)', 'pujan-samagri', 'Puja Ooti (Essential puja ingredients)', 'Puja Ooti (Essential puja ingredients)', 'Puja Ooti (Essential puja ingredients)', '<p>Shop puja ooti, essential pooja items, durga puja samagri online. Essential ingredients for offering to deities during daily worship.</p>\r\n\r\n<p>Essential ingredients for offering to deities during daily worship.&nbsp;</p>\r\n\r\n<p>Contents:<br />\r\n&bull; Mix of 5 dry fruits Walnut, Almond, Dates, Betelnut, Turmeric (Akhrot, Badam, Kharek, Supari, Haldi) - 5 pieces each.<br />\r\n&bull; Karanda Phani: The vastra (clothing) made out of cotton and haldi (turmeric) and kumkum (vermilion) and Saubhagyalen (i.e green bangles, mangalsutra) is called &#39;Karanda Phani&#39;.</p>', 400, 350, 1, 1, NULL, NULL, NULL, 'uploads\\products\\TURMERIC_DRY_FRUIT_1_2.jpg', '2017-07-16 05:05:33', '2017-07-16 06:38:52', NULL),
(2, 1, 'Guggal Dhoop Sticks (without bamboo stick)', 'shoop-sticks', 'Guggal Dhoop Sticks (without bamboo stick)', 'Guggal Dhoop Sticks (without bamboo stick)', 'Guggal Dhoop Sticks (without bamboo stick)', '<p>Guggul has been a key component in ancient Vedic rituals and Indian Ayurvedic system. Cherished all around for its tantalizing aroma, it create a mystical aura that elevate the religious and spiritual feelings in human soul.</p>\r\n\r\n<p>Guggul has been a key component in ancient Vedic rituals and Indian Ayurvedic system. Cherished all around for its tantalizing aroma, it create a mystical aura that elevate the religious and spiritual feelings in human soul. These guggul sticks are manufactured using pure and natural guggul.<br />\r\n<br />\r\nFeatures:<br />\r\nEnchanting aroma<br />\r\nMinimum residue<br />\r\nLong shelf life<br />\r\n<br />\r\nUses:<br />\r\n1. For offering to deities during worship.<br />\r\n2. After performing the Aarti, the fumes of the sticks can be spread all over the house/business premises, to attract auspiciousness.</p>\r\n\r\n<p>Burning time: 35 minutes</p>', 250, 260, 1, 1, NULL, NULL, NULL, 'uploads\\products\\Guggal-Dhoop-Sticks-2_2.jpg', '2017-07-16 05:07:32', '2017-07-16 06:38:29', NULL),
(3, 1, 'Fragrance Wax Ghee Diyas', 'ghee-diyas', 'Fragrance Wax Ghee Diyas', 'Fragrance Wax Ghee Diyas', 'Fragrance Wax Ghee Diyas', '<p>Pack of aromatic diyas in fragrances of Mogra, Gulab, Chandan, and Kewda to light your house and &nbsp;awaken your senses. &nbsp;These ready to use diyas made out of wax &amp; ghee are ideal for homes, offices, temples during Aarti.</p>\r\n\r\n<p>Burning time:&nbsp;50 minutes<br />\r\nContents:&nbsp;21&nbsp;pcs</p>', 180, 200, 1, 1, NULL, NULL, NULL, 'uploads/gallery/products/DSC_0192.JPG', '2017-07-16 05:09:11', '2017-07-29 12:38:37', NULL),
(4, 1, 'Testing Product', 'testing-product', 'Testing Product', 'Testing Product', 'Testing Product', '<p>Testing Product</p>', 332, 332, 1, 1, NULL, NULL, NULL, 'uploads/products/TURMERIC_DRY_FRUIT_1_2.jpg', '2017-07-29 10:56:35', '2017-07-29 12:33:40', '2017-07-29 12:33:40'),
(5, 1, 'Balaji Aarti Photos', 'arti-photo', 'Balaji Aarti Photos', 'Balaji Aarti Photos', 'Balaji Aarti Photos', '<p>Balaji Aarti Photos</p>', 443, 334, 1, 1, NULL, NULL, NULL, 'uploads/products/TURMERIC_DRY_FRUIT_1_2.jpg', '2017-07-29 11:14:29', '2017-07-29 12:33:45', '2017-07-29 12:33:45'),
(6, 2, 'sunderkaand', 'sunderkaand-books', 'sunderkaand', 'sunderkaand', 'sunderkaand', '<p>sunderkaand</p>', 200, 200, 1, 1, NULL, NULL, NULL, 'uploads/Salasar_gallery/books/91Wdt+p65CL.jpg', '2017-07-29 11:52:45', '2017-07-29 11:58:30', NULL),
(7, 2, 'रामरक्षास्त्रोत', 'ram-books', 'रामरक्षास्त्रोत', 'रामरक्षास्त्रोत', 'रामरक्षास्त्रोत', '<p>रामरक्षास्त्रोत</p>', 100, 100, 1, 1, NULL, NULL, NULL, 'uploads/Salasar_gallery/books/रामरक्षास्त्रोत.jpg', '2017-07-29 11:53:46', '2017-07-29 12:15:29', NULL),
(8, 2, 'रामायण', 'ramayan-books', 'रामायण', 'रामायण', 'रामायण', '<p>रामायणरामायण</p>', 400, 400, 1, 1, NULL, NULL, NULL, 'uploads/Salasar_gallery/books/रामायण.Jpeg', '2017-07-29 11:55:15', '2017-07-29 11:58:49', NULL),
(9, 2, 'श्री भगवद गीता', 'geeta-books', 'श्री भगवद गीता', 'श्री भगवद गीता', 'श्री भगवद गीता', '<p>श्री भगवद गीता</p>', 600, 600, 1, 1, NULL, NULL, NULL, 'uploads/Salasar_gallery/books/श्री भगवद गीता.jpg', '2017-07-29 12:00:03', '2017-07-29 12:00:03', NULL),
(10, 2, 'श्री सालासर बालाजी इतिहास', 'salasar-books', 'श्री सालासर बालाजी इतिहास', 'श्री सालासर बालाजी इतिहास', 'श्री सालासर बालाजी इतिहास', '<p>श्री सालासर बालाजी इतिहास</p>', 500, 500, 1, 1, NULL, NULL, NULL, 'uploads/Salasar_gallery/books/श्री सालासर बालाजी इतिहास.jpg', '2017-07-29 12:01:22', '2017-07-29 12:01:22', NULL),
(11, 2, 'श्री हनुमान चालीसा', 'hanuman-chalisa-books', 'श्री हनुमान चालीसा', 'श्री हनुमान चालीसा', 'श्री हनुमान चालीसा', '<p>श्री हनुमान चालीसा</p>', 250, 250, 1, 1, NULL, NULL, NULL, 'uploads/Salasar_gallery/books/श्री हनुमान चालीसा.jpg', '2017-07-29 12:02:13', '2017-07-29 12:02:13', NULL),
(12, 2, 'संकटमोचन', 'balaji-aarti-books', 'संकटमोचन', 'संकटमोचन', 'संकटमोचन', '<p>संकटमोचन</p>', 300, 300, 1, 1, NULL, NULL, NULL, 'uploads/Salasar_gallery/books/संकटमोचन.jpg', '2017-07-29 12:03:27', '2017-07-31 04:47:06', NULL),
(13, 4, 'लड़कड़ हनुमान', 'लड़कड़-gifts', 'लड़कड़ हनुमान', 'लड़कड़ हनुमान', 'लड़कड़ हनुमान', '<p>लड़कड़ हनुमान</p>', 200, 200, 1, 1, NULL, NULL, NULL, 'uploads/Salasar_gallery/gifts and items/41g1lOELfQL.jpg', '2017-07-29 12:13:34', '2017-07-31 04:41:14', NULL),
(14, 4, 'लड़ी लटकन', 'लड़ी-gifts', 'लड़ी लटकन', 'लड़ी लटकन', 'लड़ी लटकन', '<p><strong>लड़ी लटकन</strong></p>', 500, 500, 1, 1, NULL, NULL, NULL, 'uploads/Salasar_gallery/gifts and items/hanuman-gada-junior-500x500.jpg', '2017-07-29 12:16:39', '2017-07-31 04:48:01', NULL),
(15, 4, 'जीवन ज्योति मोली', 'जीवन-gifts', 'जीवन ज्योति मोली', 'जीवन ज्योति मोली', 'जीवन ज्योति मोली', '<p><strong>जीवन ज्योति मोली</strong></p>', 200, 200, 1, 1, NULL, NULL, NULL, 'uploads/Salasar_gallery/gifts and items/41g1lOELfQL.jpg', '2017-07-29 12:17:30', '2017-07-31 04:41:36', NULL),
(16, 4, 'कोण मोली', 'कोण-gifts', 'कोण मोली', 'कोण मोली', 'कोण मोली', '<p><strong>कोण मोली</strong></p>', 200, 200, 1, 1, NULL, NULL, NULL, 'uploads/Salasar_gallery/gifts and items/hanuman-gada-junior-500x500.jpg', '2017-07-29 12:18:57', '2017-07-31 04:45:26', NULL),
(17, 4, 'जरी मोली', 'जरी-gifts', 'जरी मोली', 'जरी मोली', 'जरी मोली', '<p><strong>जरी मोली</strong></p>', 300, 300, 1, 1, NULL, NULL, NULL, 'uploads/Salasar_gallery/gifts and items/hanuman-gada-junior-500x500.jpg', '2017-07-29 12:19:44', '2017-07-31 04:46:06', NULL),
(18, 1, 'बालाजी', 'बालाजी-photos', 'बालाजी (16*20)', 'बालाजी (16*20)', 'बालाजी (16*20)', '<p><strong>बालाजी (16*20)</strong></p>', 150, 250, 1, 1, NULL, NULL, NULL, 'uploads/Salasar_gallery/photos/8.jpg', '2017-07-29 12:30:48', '2017-07-29 12:32:21', NULL),
(19, 1, 'बालाजी गोल्ड', 'बालाजी-गोल्ड-photos', 'बालाजी गोल्ड', 'बालाजी गोल्ड', 'बालाजी गोल्ड', '<p>बालाजी गोल्ड</p>', 600, 800, 1, 1, NULL, NULL, NULL, 'uploads/Salasar_gallery/photos/10.jpg', '2017-07-29 12:32:05', '2017-07-29 12:32:05', NULL),
(20, 1, 'बालाजी / हनुमानजी', 'बालाजी/हनुमानजी-photos', 'बालाजी / हनुमानजी', 'बालाजी / हनुमानजी', 'बालाजी / हनुमानजी', '<p><strong>बालाजी / हनुमानजी</strong></p>', 500, 400, 1, 1, NULL, NULL, NULL, 'uploads/Salasar_gallery/photos/7.jpg', '2017-07-29 12:33:24', '2017-07-29 12:33:24', NULL),
(21, 3, 'garlic chatni', 'garlic-chatni', 'garlic chatni', 'garlic chatni', 'garlic chatni', '<p>garlic chatni</p>', 300, 400, 1, 1, NULL, NULL, NULL, 'uploads/gallery/products/DSC_0162.JPG', '2017-07-31 03:53:42', '2017-07-31 03:53:42', NULL),
(22, 3, 'Gol Gol Gunda', 'gunda', 'Gol Gol Gunda', 'Gol Gol Gunda', 'Gol Gol Gunda', '<p>Gol Gol Gunda</p>', 200, 300, 1, 1, NULL, NULL, NULL, 'uploads/gallery/products/DSC_0164.JPG', '2017-07-31 03:56:57', '2017-07-31 06:03:00', NULL),
(23, 3, 'Mango pickle', 'mango-pickle', 'Mango pickle', 'Mango pickle', 'Mango pickle', '<p>Mango pickle</p>', 200, 300, 1, 1, NULL, NULL, NULL, 'uploads/gallery/products/DSC_0167.JPG', '2017-07-31 03:59:12', '2017-07-31 04:08:01', NULL),
(24, 3, 'Mixed pickle', 'mixed-pickle', 'Mixed pickle', 'Mixed pickle', 'Mixed pickle', '<p>Mixed pickle</p>', 300, 200, 1, 1, NULL, NULL, NULL, 'uploads/gallery/products/DSC_0165.JPG', '2017-07-31 04:03:47', '2017-07-31 04:09:17', NULL),
(25, 3, 'Mouth-freshner', 'Mouth-freshner', 'Mouth-freshner', 'Mouth-freshner', 'Mouth-freshner', '<p>Mouth-freshner</p>', 100, 100, 1, 1, NULL, NULL, NULL, 'uploads/gallery/products/DSC_0190.JPG', '2017-07-31 04:14:20', '2017-07-31 04:14:20', NULL),
(26, 3, 'Moti-laddu', 'moti-laddu', 'Moti-laddu', 'Moti-laddu', 'Moti-laddu', '<p>Moti-laddu</p>', 1, 1, 1, 1, NULL, NULL, NULL, 'uploads/gallery/products/moti-laddu.JPG', '2017-07-31 04:17:31', '2017-08-21 12:15:14', NULL),
(27, 3, 'Churan', 'churan', 'Churan', 'Churan', 'Churan', '<p>Churan</p>', 100, 100, 1, 1, NULL, NULL, NULL, 'uploads/gallery/products/DSC_0195.JPG', '2017-07-31 04:19:25', '2017-07-31 06:12:14', NULL),
(28, 4, 'रेशमी मोली', 'रेशमी-gifts', 'रेशमी मोली', 'रेशमी मोली', 'रेशमी मोली', '<p><strong>रेशमी मोली</strong></p>', 200, 200, 1, 1, NULL, NULL, NULL, 'uploads/Salasar_gallery/gifts and items/41g1lOELfQL.jpg', '2017-07-31 04:49:54', '2017-07-31 04:49:54', NULL),
(29, 4, 'पटटा मोली', 'पटटा-gifts', 'पटटा मोली', 'पटटा मोली', 'पटटा मोली', '<p><strong>पटटा मोली</strong></p>', 200, 150, 1, 1, NULL, NULL, NULL, 'uploads/Salasar_gallery/gifts and items/41g1lOELfQL.jpg', '2017-07-31 04:50:44', '2017-07-31 04:50:44', NULL),
(30, 4, 'प्लेन', 'प्लेन-gifts', 'प्लेन', 'प्लेन', 'प्लेन', '<p><strong>प्लेन</strong></p>', 400, 300, 1, 1, NULL, NULL, NULL, 'uploads/Salasar_gallery/gifts and items/hanuman-gada-junior-500x500.jpg', '2017-07-31 04:52:01', '2017-07-31 04:57:25', NULL),
(31, 4, 'चीड़ राखी', 'चीड़-gifts', 'चीड़ राखी', 'चीड़ राखी', 'चीड़ राखी', '<p><strong>चीड़ राखी</strong></p>', 400, 300, 1, 1, NULL, NULL, NULL, 'uploads/Salasar_gallery/gifts and items/41g1lOELfQL.jpg', '2017-07-31 04:53:16', '2017-07-31 04:53:16', NULL),
(32, 4, 'चांदी राखी 10N', 'चांदी-gifts', 'चांदी राखी 10N', 'चांदी राखी 10N', 'चांदी राखी 10N', '<p><strong>चांदी राखी 10N</strong></p>', 400, 300, 1, 1, NULL, NULL, NULL, 'uploads/Salasar_gallery/gifts and items/hanuman-gada-junior-500x500.jpg', '2017-07-31 04:54:43', '2017-07-31 04:57:54', NULL),
(33, 4, 'चांदी राखी 18N', 'राखी-gifts', 'चांदी राखी 18N', 'चांदी राखी 18N', 'चांदी राखी 18N', '<p><strong>चांदी राखी 18N</strong></p>', 300, 300, 1, 1, NULL, NULL, NULL, 'uploads/Salasar_gallery/gifts and items/41g1lOELfQL.jpg', '2017-07-31 04:56:40', '2017-07-31 04:56:40', NULL),
(34, 4, 'मूर्ति चांदी M', 'मूर्ति-gifts', 'मूर्ति चांदी M', 'मूर्ति चांदी M', 'मूर्ति चांदी M', '<p><strong>मूर्ति चांदी M</strong></p>', 400, 300, 1, 1, NULL, NULL, NULL, 'uploads/Salasar_gallery/gifts and items/41g1lOELfQL.jpg', '2017-07-31 04:59:05', '2017-07-31 04:59:05', NULL),
(35, 3, 'Tini-mini', 'tini-mini', 'Tini-mini', 'Tini-mini', 'Tini-mini', '<p>Tini-mini</p>', 200, 150, 1, 1, NULL, NULL, NULL, 'uploads/gallery/products/DSC_0189.JPG', '2017-07-31 06:08:00', '2017-07-31 06:08:00', NULL),
(36, 3, 'Anardaana', 'anaardaana', 'Anaardaana', 'Anaardaana', 'Anaardaana', '<p>Anaardaana</p>', 300, 250, 1, 1, NULL, NULL, NULL, 'uploads/gallery/products/DSC_0193.JPG', '2017-07-31 06:09:31', '2017-07-31 06:09:31', NULL),
(37, 3, 'Green Sauf', 'sauf', 'Green Sauf', 'Green Sauf', 'Green Sauf', '<p>Green Sauf</p>', 500, 400, 1, 1, NULL, NULL, NULL, 'uploads/gallery/products/DSC_0196.JPG', '2017-07-31 06:13:23', '2017-07-31 06:13:23', NULL),
(38, 3, 'Supari', 'supari', 'Supari', 'Supari', 'Supari', '<p>Supari</p>', 300, 250, 1, 1, NULL, NULL, NULL, 'uploads/gallery/products/DSC_0197.JPG', '2017-07-31 06:14:48', '2017-07-31 06:14:48', NULL),
(39, 3, 'Hing Goli', 'hing-goli', 'Hing Goli', 'Hing Goli', 'Hing Goli', '<p>Hing Goli</p>', 300, 250, 1, 1, NULL, NULL, NULL, 'uploads/gallery/products/DSC_0199.JPG', '2017-07-31 06:18:19', '2017-07-31 06:18:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_categories`
--

CREATE TABLE `products_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_categories`
--

INSERT INTO `products_categories` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 8, 1, NULL, NULL),
(9, 9, 1, NULL, NULL),
(10, 10, 1, NULL, NULL),
(11, 11, 1, NULL, NULL),
(12, 12, 1, NULL, NULL),
(13, 13, 1, NULL, NULL),
(14, 14, 1, NULL, NULL),
(15, 15, 1, NULL, NULL),
(16, 16, 1, NULL, NULL),
(17, 17, 1, NULL, NULL),
(18, 18, 1, NULL, NULL),
(19, 19, 1, NULL, NULL),
(20, 20, 1, NULL, NULL),
(21, 21, 1, NULL, NULL),
(22, 22, 1, NULL, NULL),
(23, 23, 1, NULL, NULL),
(24, 24, 1, NULL, NULL),
(25, 25, 1, NULL, NULL),
(26, 26, 1, NULL, NULL),
(27, 27, 1, NULL, NULL),
(28, 28, 1, NULL, NULL),
(29, 29, 1, NULL, NULL),
(30, 30, 1, NULL, NULL),
(31, 31, 1, NULL, NULL),
(32, 32, 1, NULL, NULL),
(33, 33, 1, NULL, NULL),
(34, 34, 1, NULL, NULL),
(35, 35, 1, NULL, NULL),
(36, 36, 1, NULL, NULL),
(37, 37, 1, NULL, NULL),
(38, 38, 1, NULL, NULL),
(39, 39, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `image_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`id`, `product_id`, `image_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Administrator', '2017-05-03 06:55:23', '2017-05-03 06:55:23'),
(4, 'Subscriber', '2017-05-10 01:04:25', '2017-05-10 01:04:25'),
(5, 'Vendor', '2017-08-27 02:49:17', '2017-08-27 02:49:17');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`role_id`, `user_id`) VALUES
(2, 1),
(4, 3),
(4, 8),
(4, 45),
(5, 46);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `name`, `description`, `value`, `field`, `active`, `created_at`, `updated_at`) VALUES
(1, 'contact_email', 'Email', 'The email address that all emails from the contact form will go to.', 'info@salasarbalaji.org', '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"email\"}', 1, NULL, '2017-06-29 11:29:55'),
(2, 'address', 'Address', '', 'Opp. Shiv Mandir, Sikar Thana,Salasar Surajgarh Churu, Rajasthan, 331506', '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"textarea\"}', 1, NULL, '2017-07-26 16:58:38'),
(3, 'phone', 'Phone', '', '01568252059', '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"text\"}', 1, NULL, '2017-07-28 08:47:39'),
(4, 'logo', 'Header Logo', '', 'uploads\\settings\\new-salasar-balaji.png', '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"browse\"}', 1, NULL, '2017-07-11 20:24:15'),
(5, 'footer_logo', 'Footer Logo', '', 'uploads/settings/logo2.png', '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"browse\"}', 1, NULL, '2017-05-11 08:34:04'),
(6, 'copyright', 'Copyright', '', 'Copyright 2017@salasarbalaji.org. All Rights Reserved', '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"text\"}', 1, NULL, '2017-06-29 11:30:29'),
(7, 'facebook', 'Facebook Url', '', 'https://www.facebook.com/profile.php?id=100018997486314', '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"text\"}', 1, NULL, '2017-07-11 20:06:10'),
(8, 'twitter', 'Twitter Url', '', 'https://twitter.com/salasarbalazee', '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"text\"}', 1, NULL, '2017-07-11 20:05:55'),
(9, 'youtube', 'Youtube Channel', NULL, 'https://www.youtube.com/channel/UCtwrePAHN4AtkYocP6O8P-Q', '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"text\"}', 1, '2017-07-11 18:30:00', '2017-07-11 20:05:14'),
(10, 'Gplus', 'Google Plus', NULL, 'https://plus.google.com/u/0/100414508999914568835', '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"text\"}', 1, '2017-07-11 18:30:00', '2017-07-11 20:05:32'),
(11, 'goole_analytics_code', 'Google Analytics', NULL, NULL, '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"textarea\"}', 1, '2017-07-11 18:30:00', '2017-07-11 18:30:00'),
(12, 'payment_key', 'Payment Key', NULL, NULL, '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"text\"}', 1, '2017-07-11 18:30:00', '2017-07-11 18:30:00'),
(13, 'payment_salt', 'Payment Salt', NULL, NULL, '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"text\"}', 1, '2017-07-11 18:30:00', '2017-07-11 18:30:00'),
(14, 'instagram', 'Instagram', 'Instagram', 'https://www.instagram.com/salasarbalajiorg/', '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"text\"}', 1, '2017-07-23 00:00:00', '2017-07-23 00:00:00'),
(15, 'pinterest', 'Pinterest', 'pinterest', 'https://in.pinterest.com/salasarbalajiorg/', '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"text\"}', 1, NULL, NULL),
(16, 'linkedin', 'Linkedin', 'Linkedin', 'https://www.linkedin.com/in/salasar-balaji-955193148/', '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"text\"}', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) NOT NULL,
  `name` varchar(191) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `image_url`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Slide1', 'banner/5098d7dda47506f5b779df53705d1af0.jpg', NULL, '2017-05-12 02:05:06', '2017-07-30 08:47:01'),
(3, 'Slide2', 'banner/bebb49964aea635dd5fae2925529b247.jpg', NULL, '2017-05-12 02:05:21', '2017-07-30 08:47:42'),
(5, 'Slide3', 'banner/333d618d625e86895a83d0ece9413ace.jpg', NULL, '2017-05-25 01:18:37', '2017-07-26 17:13:09'),
(6, 'slider4', 'banner/25144a467362b97973d9d389f44f76e4.jpg', NULL, '2017-07-26 17:13:50', '2017-07-30 08:48:46');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) NOT NULL,
  `author_name` varchar(191) NOT NULL,
  `author_post` varchar(100) DEFAULT NULL,
  `author_image` varchar(255) DEFAULT NULL,
  `author_content` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(2) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$g3TazZHBNRWDkTK5wyMTdeyFFfvd7x7jUXgEFhtSrP9nPj.sUBoo2', 'dE8h1TdZB5b3MFOOT7QebNzZbNi90cMfNcUBvJrkDr7YRhyjBda6ZZOuB0uP', 1, '2017-04-26 07:43:21', '2017-05-03 07:43:06'),
(3, 'Deepak Parihar', 'deepak@gmail.com', '$2y$10$6zefjMvKTrwObcM5jB1zNuDmkJHLfAZA/JXe9k0z0NnF7mJKiO/LG', '4Ah32qnbMLdLYL0KZU9DPhbDVOup8fr9FoiIg48UVQ7mTVPysrte01tjd4c0', 1, '2017-05-23 06:34:17', '2017-05-23 06:34:17'),
(8, 'Praveen Sharma', 'praveen@gmail.com', '$2y$10$kpcddMIj0K89FZ6efeJ1BO59ethjWfgGaVmFKpqFQoAk/MJdPuaXe', 'qaxhwVah2faxyF6kHl30UL4vUCaMAlkwVglGJ1m1NiPvd9vLynpr4PiBfwGx', 1, '2017-05-25 08:32:55', '2017-05-25 08:32:55'),
(45, 'Raj Kumar Chahar', 'chaharrrajkumar785@gmail.com', '$2y$10$7kThqm83bm1bUiCrQARrduy6G5/jmkrbHr47f5UFt1KcgnchJSz5G', NULL, 0, '2017-07-30 10:13:03', '2017-07-30 10:13:03'),
(46, 'Deepak Parihar', 'deepak.bestu@gmail.com', '$2y$10$H/Fs7H3rL6ojt9F6iQljmeqeAjgDnVuQfFkoN2H8Yenoe6RNwLT9y', 'pnJrr9LVNwuXP1aVNu3nGPYkXrgaXf7TfC0mVzCjSXXX4OxJkq6oBBJNQAHm', 1, '2017-08-15 11:56:47', '2017-08-21 10:17:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_tag`
--
ALTER TABLE `article_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `cabs`
--
ALTER TABLE `cabs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `contact_leads`
--
ALTER TABLE `contact_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hotel_categories_id` (`hotel_categories_id`);

--
-- Indexes for table `hotel_categories`
--
ALTER TABLE `hotel_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `india_cities`
--
ALTER TABLE `india_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `india_states`
--
ALTER TABLE `india_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meta_users`
--
ALTER TABLE `meta_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_users`
--
ALTER TABLE `permission_users`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `permission_users_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `products_categories`
--
ALTER TABLE `products_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `role_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `article_tag`
--
ALTER TABLE `article_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cabs`
--
ALTER TABLE `cabs`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contact_leads`
--
ALTER TABLE `contact_leads`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `hotel_categories`
--
ALTER TABLE `hotel_categories`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `india_cities`
--
ALTER TABLE `india_cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=607;
--
-- AUTO_INCREMENT for table `india_states`
--
ALTER TABLE `india_states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `meta_users`
--
ALTER TABLE `meta_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `products_categories`
--
ALTER TABLE `products_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `hotels`
--
ALTER TABLE `hotels`
  ADD CONSTRAINT `fk_hotel_categories_id` FOREIGN KEY (`hotel_categories_id`) REFERENCES `hotel_categories` (`id`);

--
-- Constraints for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD CONSTRAINT `permission_roles_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_users`
--
ALTER TABLE `permission_users`
  ADD CONSTRAINT `permission_users_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`);

--
-- Constraints for table `role_users`
--
ALTER TABLE `role_users`
  ADD CONSTRAINT `role_users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
