-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2022 at 03:14 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travelwebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_cred`
--

CREATE TABLE `admin_cred` (
  `sr_no` int(11) NOT NULL,
  `admin_name` varchar(150) NOT NULL,
  `admin_pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_cred`
--

INSERT INTO `admin_cred` (`sr_no`, `admin_name`, `admin_pass`) VALUES
(1, 'senpai', 'senpai'),
(2, 'senpai', 'king'),
(3, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `destination_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `total_pay` int(11) NOT NULL,
  `destination_no` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `days` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`sr_no`, `booking_id`, `destination_name`, `price`, `total_pay`, `destination_no`, `user_name`, `phonenum`, `address`, `days`) VALUES
(1, 1, 'Goa', 10000, 10000, NULL, 'Atharva Dhurwey', '07470832984', 'Main Telephone Exchange near SP office civil line betul Madhya Pradesh', 6),
(2, 2, 'Punjab', 30000, 60000, NULL, 'Atharva Dhurwey', '07470832984', 'Main Telephone Exchange near SP office civil line betul Madhya Pradesh', 7),
(3, 3, 'Mumbai', 20000, 40000, NULL, 'Atharva Dhurwey', '07470832984', 'Main Telephone Exchange near SP office civil line betul Madhya Pradesh', 5),
(4, 4, 'Goa', 10000, 10000, NULL, 'Atharva Dhurwey', '07470832984', 'Main Telephone Exchange near SP office civil line betul Madhya Pradesh', 6),
(5, 5, 'Goa', 10000, 10000, NULL, 'Atharva Dhurwey', '07470832984', 'Main Telephone Exchange near SP office civil line betul Madhya Pradesh', 6),
(6, 6, 'Goa', 10000, 40000, NULL, 'Atharva Dhurwey', '07470832984', 'Main Telephone Exchange near SP office civil line betul Madhya Pradesh', 6),
(7, 7, 'Mumbai', 20000, 40000, NULL, 'Atharva Dhurwey', '07470832984', 'Main Telephone Exchange near SP office civil line betul Madhya Pradesh', 5),
(8, 8, 'Mumbai', 20000, 20000, NULL, 'Atharva Dhurwey', '07470832984', 'Main Telephone Exchange near SP office civil line betul Madhya Pradesh', 5),
(9, 9, 'Goa', 10000, 20000, NULL, 'Atharva Dhurwey', '07470832984', 'Main Telephone Exchange near SP office civil line betul Madhya Pradesh', 6),
(10, 10, 'Goa', 10000, 20000, NULL, 'Atharva Dhurwey', '07470832984', 'Main Telephone Exchange near SP office civil line betul Madhya Pradesh', 6),
(11, 11, 'Goa', 10000, 10000, NULL, 'Atharva Dhurwey', '07470832984', 'Main Telephone Exchange near SP office civil line betul Madhya Pradesh', 6),
(12, 12, 'Manali', 25000, 25000, NULL, 'Atharva Dhurwey', '07470832984', 'Main Telephone Exchange near SP office civil line betul Madhya Pradesh', 6),
(13, 13, 'Madhya Pradesh', 15000, 30000, NULL, 'Atharva Dhurwey', '07470832984', 'Main Telephone Exchange near SP office civil line betul Madhya Pradesh', 5),
(14, 14, 'Madhya Pradesh', 15000, 15000, NULL, 'Atharva Dhurwey', '07470832984', 'Main Telephone Exchange near SP office civil line betul Madhya Pradesh', 5),
(15, 15, 'Punjab', 30000, 30000, NULL, 'Atharva Dhurwey', '07470832984', 'Main Telephone Exchange near SP office civil line betul Madhya Pradesh', 7),
(16, 16, 'Mumbai', 20000, 20000, NULL, 'Naman Gayakward', '9340623642', 'earth', 5),
(17, 17, 'Punjab', 30000, 30000, NULL, 'Atharva Dhurwey', '07470832984', 'Main Telephone Exchange near SP office civil line betul Madhya Pradesh', 7),
(18, 18, 'Mumbai', 20000, 40000, NULL, 'Divyanshu', '9264257741', 'patna bihar', 5),
(19, 19, 'Chennai', 15000, 15000, NULL, 'Naman Gayakward', '9340623642', 'earth', 5),
(20, 20, 'Punjab', 30000, 30000, NULL, 'Khushi Srivastava', '9628886911', 'Earth', 7),
(21, 21, 'Mumbai', 20000, 20000, NULL, 'Naman Gayakward', '9340623642', 'earth', 5),
(22, 22, 'Punjab', 30000, 1020000, NULL, 'Atharva Dhurwey', '07470832984', 'Main Telephone Exchange near SP office civil line betul Madhya Pradesh', 7),
(23, 23, 'Goa', 10000, 50000, NULL, 'Naman Gayakward', '9340623642', 'Betul MP', 6),
(24, 24, 'Goa', 10000, 20000, NULL, 'Atharva Dhurwey', '07470832984', 'Main Telephone Exchange near SP office civil line betul Madhya Pradesh', 6);

-- --------------------------------------------------------

--
-- Table structure for table `booking_order`
--

CREATE TABLE `booking_order` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `destination_id` int(11) NOT NULL,
  `ddate` date NOT NULL,
  `arrival` int(11) NOT NULL DEFAULT 0,
  `refund` int(11) DEFAULT NULL,
  `booking_status` varchar(100) NOT NULL DEFAULT 'pending',
  `order_id` varchar(150) NOT NULL,
  `trans_id` varchar(200) DEFAULT NULL,
  `trans_amt` int(11) NOT NULL,
  `trans_status` varchar(100) NOT NULL DEFAULT 'pending',
  `trans_resp_msg` varchar(200) DEFAULT NULL,
  `rate_review` int(11) DEFAULT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_order`
--

INSERT INTO `booking_order` (`booking_id`, `user_id`, `destination_id`, `ddate`, `arrival`, `refund`, `booking_status`, `order_id`, `trans_id`, `trans_amt`, `trans_status`, `trans_resp_msg`, `rate_review`, `datentime`) VALUES
(1, 1, 7, '2022-09-28', 0, NULL, 'pending', 'ORD_14516537', '11663870041145954857632ca459cafbe2.4524881', 30000, 'pending', NULL, NULL, '2022-09-22 21:17:23'),
(2, 1, 6, '2022-09-23', 0, NULL, 'pending', 'ORD_12440929', '116638709751311736054632ca7ff66dafee3.79652594', 30000, 'pending', NULL, NULL, '2022-09-22 22:11:56'),
(3, 1, 5, '2022-09-23', 1, NULL, 'booked', 'ORD_11414946', '1166386549761344090632c92995a4cf5.98547824', 20000, 'TXN_SUCCESS', 'transaction has been done', NULL, '2022-09-22 22:21:37'),
(4, 1, 7, '2022-09-23', 0, 1, 'cancelled', 'ORD_1507031', '116638657362140557696632c9388e7e6b1.92484489', 20000, 'TXN_SUCCESS', 'transaction has been done', NULL, '2022-09-22 22:25:36'),
(5, 1, 7, '2022-09-23', 1, NULL, 'booked', 'ORD_14603249', '11663870041145954857632ca459cafbe2.45249781', 10000, 'TXN_SUCCESS', 'transaction has been done', NULL, '2022-09-22 23:37:21'),
(6, 1, 7, '2022-09-22', 1, NULL, 'booked', 'ORD_13228808', '11663870689294763805632ca6e1b7f264.02747894', 10000, 'TXN_SUCCESS', 'transaction has been done', NULL, '2022-09-22 23:48:09'),
(7, 1, 5, '2022-09-23', 0, 1, 'cancelled', 'ORD_11825759', '11663870810165339535632ca75aa93130.53198076', 20000, 'TXN_SUCCESS', 'transaction has been done', NULL, '2022-09-22 23:50:10'),
(8, 1, 5, '2022-09-23', 1, NULL, 'booked', 'ORD_11006828', '116638709751311736054632ca7ff66daf3.79616594', 40000, 'TXN_SUCCESS', 'transaction has been done', NULL, '2022-09-22 23:52:55'),
(9, 1, 7, '2022-09-22', 1, NULL, 'booked', 'ORD_18592916', '116638711681584065989632ca8c051dd33.00893639', 10000, 'TXN_SUCCESS', 'transaction has been done', NULL, '2022-09-22 23:56:08'),
(10, 1, 7, '2022-09-23', 1, NULL, 'booked', 'ORD_11998468', '116638713091025672999632ca94d15ec58.85345985', 10000, 'TXN_SUCCESS', 'transaction has been done', 0, '2022-09-22 23:58:29'),
(11, 1, 7, '2022-09-23', 1, NULL, 'booked', 'ORD_1521663', '11663871372641464355632ca98c0ab5b7.40639900', 10000, 'TXN_SUCCESS', 'transaction has been done', 1, '2022-09-22 23:59:32'),
(12, 1, 3, '2022-09-23', 0, 1, 'cancelled', 'ORD_18505938', '11663871495200446006632caa07a1a427.08071455', 50000, 'TXN_SUCCESS', 'transaction has been done', NULL, '2022-09-23 00:01:35'),
(13, 1, 2, '2022-09-30', 0, 1, 'cancelled', 'ORD_19761711', '116639973861804598016632e95ca244951.92909531', 15000, 'TXN_SUCCESS', 'transaction has been done', NULL, '2022-09-24 10:59:46'),
(14, 1, 2, '2022-09-26', 1, NULL, 'booked', 'ORD_11598827', '116641206281648467753633077343c0207.15816128', 15000, 'TXN_SUCCESS', 'transaction has been done', 1, '2022-09-25 21:13:48'),
(15, 1, 6, '2022-09-29', 0, 0, 'cancelled', 'ORD_12295138', '1166417244711142553136331419fa23652.10971609', 10000, 'TXN_SUCCESS', 'transaction has been done', NULL, '2022-09-26 11:37:27'),
(16, 3, 5, '2022-09-27', 1, NULL, 'booked', 'ORD_39772808', '316641784281902250814633158fce477e7.24142787', 20000, 'TXN_SUCCESS', 'transaction has been done', 1, '2022-09-26 13:17:08'),
(17, 1, 6, '2022-09-26', 1, NULL, 'booked', 'ORD_15419556', '1166419886312803766356331a8cfdee687.17698626', 30000, 'TXN_SUCCESS', 'transaction has been done', 1, '2022-09-26 18:57:43'),
(18, 4, 5, '2022-09-29', 1, NULL, 'booked', 'ORD_43222805', '416642006637206124936331afd73fa564.17307227', 20000, 'TXN_SUCCESS', 'transaction has been done', 1, '2022-09-26 19:27:43'),
(19, 3, 4, '2022-09-28', 1, NULL, 'booked', 'ORD_3720616', '316642184725777304496331f568649018.18803629', 30000, 'TXN_SUCCESS', 'transaction has been done', 0, '2022-09-27 00:24:32'),
(20, 5, 6, '2022-09-28', 1, NULL, 'booked', 'ORD_57263574', '516642863974094511346332febd7035f4.37648881', 30000, 'TXN_SUCCESS', 'transaction has been done', 1, '2022-09-27 19:16:37'),
(21, 3, 5, '2022-09-29', 0, 0, 'cancelled', 'ORD_35738876', '31664377956170457144263346464ecfd05.92491361', 20000, 'TXN_SUCCESS', 'transaction has been done', NULL, '2022-09-28 20:42:36'),
(22, 1, 6, '0000-00-00', 0, 1, 'cancelled', 'ORD_14825799', '1166443335628524948463353ccc4d7df4.49590952', 1020000, 'TXN_SUCCESS', 'transaction has been done', NULL, '2022-09-29 12:05:56'),
(23, 3, 7, '2022-09-30', 0, 1, 'cancelled', 'ORD_36213345', '3166451844516203615196336892d522ff3.49619154', 50000, 'TXN_SUCCESS', 'transaction has been done', NULL, '2022-09-30 11:44:05'),
(24, 1, 7, '2022-10-07', 0, NULL, 'booked', 'ORD_14060129', '1166452488219753190876336a2527c7d25.24099606', 20000, 'TXN_SUCCESS', 'transaction has been done', NULL, '2022-09-30 13:31:22');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `sr_no` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `pn1` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fb` varchar(50) NOT NULL,
  `insta` varchar(50) NOT NULL,
  `tw` varchar(50) NOT NULL,
  `linkd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `pn1`, `email`, `fb`, `insta`, `tw`, `linkd`) VALUES
(1, 'Astha, Bhopal, India', 9340623642, 'apnaemail@gmail.com', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://twitter.com/', 'https://www.linkedin.com/');

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `duration` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` varchar(350) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `removed` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `name`, `duration`, `price`, `quantity`, `description`, `status`, `removed`) VALUES
(1, 'Jammu Kashmir', 2, 213, 231, 'sadsad', 1, 1),
(2, 'Madhya Pradesh', 5, 15000, 2, 'Madhya Pradesh, a large state in central India, retains landmarks from eras throughout Indian history. Begun in the 10th century, its Hindu and Jain temples at Khajuraho are renowned for their carvings of erotic scenes, most prominently Kandariya Mahadeva, a temple with more than 800 sculptures. The eastern Bandhavgarh and Kanha national parks, not', 1, 0),
(3, 'Manali', 6, 25000, 3, 'Manali is a high-altitude Himalayan resort town in India’s northern Himachal Pradesh state. It has a reputation as a backpacking center and honeymoon destination. Set on the Beas River, it’s a gateway for skiing in the Solang Valley and trekking in Parvati Valley. It&amp;#039;s also a jumping-off point for paragliding, rafting and mountaineering in', 1, 0),
(4, 'Chennai', 5, 15000, 8, 'Chennai, on the Bay of Bengal in eastern India, is the capital of the state of Tamil Nadu. The city is home to Fort St. George, built in 1644 and now a museum showcasing the city’s roots as a British military garrison and East India Company trading outpost, when it was called Madras. Religious sites include Kapaleeshwarar Temple, adorned with carve', 1, 0),
(5, 'Mumbai', 5, 20000, 5, 'Mumbai (formerly called Bombay) is a densely populated city on India’s west coast. A financial center, it&amp;#039;s India&amp;#039;s largest city. On the Mumbai Harbour waterfront stands the iconic Gateway of India stone arch, built by the British Raj in 1924. Offshore, nearby Elephanta Island holds ancient cave temples dedicated to the Hindu god ', 1, 0),
(6, 'Punjab', 7, 30000, 10, 'Punjab, a state bordering Pakistan, is the heart of India’s Sikh community. The city of Amritsar, founded in the 1570s by Sikh Guru Ram Das, is the site of Harmandir Sahib, the holiest gurdwara (Sikh place of worship). Known in English as the Golden Temple, and surrounded by the Pool of Nectar, it&amp;amp;amp;#039;s a major pilgrimage site. Also in', 1, 0),
(7, 'Goa', 6, 10000, 5, 'Goa is a state in western India with coastlines stretching along the Arabian Sea. Its long history as a Portuguese colony prior to 1961 is evident in its preserved 17th-century churches and the area’s tropical spice plantations. Goa is also known for its beaches, ranging from popular stretches at Baga and Palolem to those in laid-back fishing villa', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `destination_features`
--

CREATE TABLE `destination_features` (
  `sr_no` int(11) NOT NULL,
  `destination_id` int(11) NOT NULL,
  `features_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `destination_images`
--

CREATE TABLE `destination_images` (
  `sr_no` int(11) NOT NULL,
  `destination_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `thumb` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `destination_images`
--

INSERT INTO `destination_images` (`sr_no`, `destination_id`, `image`, `thumb`) VALUES
(4, 2, 'IMG_76922.jpg', 1),
(5, 3, 'IMG_61794.jpg', 1),
(6, 2, 'IMG_39787.jpg', 0),
(7, 4, 'IMG_89839.jpg', 1),
(8, 4, 'IMG_51408.jpg', 0),
(9, 5, 'IMG_40765.jpg', 0),
(10, 5, 'IMG_88246.jpg', 1),
(11, 6, 'IMG_97824.webp', 0),
(12, 6, 'IMG_32043.jpg', 1),
(13, 7, 'IMG_64602.jpg', 1),
(14, 7, 'IMG_30190.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `destination_services`
--

CREATE TABLE `destination_services` (
  `sr_no` int(11) NOT NULL,
  `destination_id` int(11) NOT NULL,
  `services_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `destination_services`
--

INSERT INTO `destination_services` (`sr_no`, `destination_id`, `services_id`) VALUES
(72, 7, 7),
(73, 7, 8),
(74, 7, 9),
(75, 6, 7),
(76, 6, 8),
(77, 6, 9),
(78, 5, 7),
(79, 5, 8),
(80, 5, 9),
(81, 4, 7),
(82, 4, 8),
(83, 4, 9),
(84, 3, 7),
(85, 3, 8),
(86, 3, 9),
(90, 2, 7),
(91, 2, 8),
(92, 2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
(8, 'NA'),
(9, 'NA'),
(11, 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `rating_review`
--

CREATE TABLE `rating_review` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `destination_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(200) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating_review`
--

INSERT INTO `rating_review` (`sr_no`, `booking_id`, `destination_id`, `user_id`, `rating`, `review`, `seen`, `datentime`) VALUES
(1, 11, 7, 1, 4, 'It was nice', 1, '2022-09-26 08:27:33'),
(2, 16, 5, 3, 3, 'bery bery noice', 1, '2022-09-26 13:18:58'),
(3, 14, 2, 1, 5, 'Enjoyed every second', 1, '2022-09-26 18:59:02'),
(5, 18, 5, 4, 4, 'It was very easy to plan a trip through this website', 1, '2022-09-26 19:31:03'),
(6, 20, 6, 5, 5, 'Hehe', 1, '2022-09-27 19:17:13');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `icon`, `name`, `description`) VALUES
(7, 'IMG_82103.svg', 'Hotel', 'Hotel'),
(8, 'IMG_69631.svg', 'Flight', ''),
(9, 'IMG_38117.svg', 'Activity', '');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(50) NOT NULL,
  `site_about` varchar(250) NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, 'Chalo India', '‎', 0);

-- --------------------------------------------------------

--
-- Table structure for table `team_details`
--

CREATE TABLE `team_details` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team_details`
--

INSERT INTO `team_details` (`sr_no`, `name`, `picture`) VALUES
(5, 'Person 2', 'IMG_39948.jpg'),
(6, 'Person 3', 'IMG_25746.jpg'),
(7, 'Person 4', 'IMG_32993.jpg'),
(8, 'Person 5', 'IMG_66828.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_cred`
--

CREATE TABLE `user_cred` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `dob` date NOT NULL,
  `profile` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 1,
  `token` varchar(200) DEFAULT NULL,
  `t_expire` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_cred`
--

INSERT INTO `user_cred` (`id`, `name`, `email`, `address`, `phonenum`, `pincode`, `dob`, `profile`, `password`, `is_verified`, `token`, `t_expire`, `status`, `datentime`) VALUES
(1, 'Atharva Dhurwey', 'atharva.dhurwey.2000@gmail.com', 'Main Telephone Exchange near SP office civil line betul Madhya Pradesh', '07470832984', 460001, '2022-09-20', 'IMG_22797.jpeg', '$2y$10$c/nXx9lJ33zyXwqtZsCg7.q3F5lz/FY.MwgDkdm5fT.iHqxUOC8HS', 1, NULL, NULL, 1, '2022-09-20 21:32:55'),
(3, 'Naman Gayakward', 'naman@gmail.com', 'Betul MP', '9340623642', 4600001, '2002-10-10', 'IMG_83812.jpeg', '$2y$10$.xgP72PJLAlW/rC5AiqNT.tpHYhIJba.xLJJCy8D/VgAs1UPKSoyi', 1, NULL, NULL, 1, '2022-09-26 13:16:15'),
(4, 'Divyanshu', 'kumardivyansh34589@gmail.com', 'patna bihar', '9264257741', 800001, '2004-11-26', 'IMG_25569.jpeg', '$2y$10$CclZfLFdgbJzccqeLyShiOSAfSrcipdVYRT.s083/i1oFEn.lSAce', 1, NULL, NULL, 1, '2022-09-26 19:26:22'),
(5, 'Khushi Srivastava', 'khushi@gmail.com', 'Earth', '9628886911', 462001, '2003-11-30', 'IMG_89356.jpeg', '$2y$10$RwdHPWZKw88HtyEyd0gViugPdGBRvaRnqO4/5ucgJwe65JGBzKtCG', 1, NULL, NULL, 1, '2022-09-27 18:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_queries`
--

INSERT INTO `user_queries` (`sr_no`, `name`, `email`, `subject`, `message`, `datentime`, `seen`) VALUES
(19, 'Anish', 'anish@gmail.com', 'vmoadi', 'vioadjhspfoew', '2022-09-27 21:27:00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `destination_id` (`destination_id`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destination_features`
--
ALTER TABLE `destination_features`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `dn id` (`destination_id`),
  ADD KEY `features id` (`features_id`);

--
-- Indexes for table `destination_images`
--
ALTER TABLE `destination_images`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `destination_id` (`destination_id`);

--
-- Indexes for table `destination_services`
--
ALTER TABLE `destination_services`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `destination id` (`destination_id`),
  ADD KEY `services id` (`services_id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `destination_id` (`destination_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `user_cred`
--
ALTER TABLE `user_cred`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_cred`
--
ALTER TABLE `admin_cred`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `booking_order`
--
ALTER TABLE `booking_order`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `destination_features`
--
ALTER TABLE `destination_features`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `destination_images`
--
ALTER TABLE `destination_images`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `destination_services`
--
ALTER TABLE `destination_services`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rating_review`
--
ALTER TABLE `rating_review`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_details`
--
ALTER TABLE `team_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_cred`
--
ALTER TABLE `user_cred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD CONSTRAINT `booking_details_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`);

--
-- Constraints for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD CONSTRAINT `booking_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`),
  ADD CONSTRAINT `booking_order_ibfk_2` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`);

--
-- Constraints for table `destination_features`
--
ALTER TABLE `destination_features`
  ADD CONSTRAINT `dn id` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `features id` FOREIGN KEY (`features_id`) REFERENCES `features` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `destination_images`
--
ALTER TABLE `destination_images`
  ADD CONSTRAINT `destination_images_ibfk_1` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`);

--
-- Constraints for table `destination_services`
--
ALTER TABLE `destination_services`
  ADD CONSTRAINT `destination id` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `services id` FOREIGN KEY (`services_id`) REFERENCES `services` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD CONSTRAINT `rating_review_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`),
  ADD CONSTRAINT `rating_review_ibfk_2` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`),
  ADD CONSTRAINT `rating_review_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
