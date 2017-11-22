-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2017 at 10:25 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uia_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `booked_seat`
--

CREATE TABLE `booked_seat` (
  `booking_id` int(10) UNSIGNED NOT NULL,
  `seat_number` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `flight_id` int(10) UNSIGNED NOT NULL,
  `date_booked` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flight_id` int(10) UNSIGNED NOT NULL,
  `route_id` int(10) UNSIGNED NOT NULL,
  `departure` datetime NOT NULL,
  `price_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flight_id`, `route_id`, `departure`, `price_id`) VALUES
(1, 1, '2017-10-15 01:30:00', 1),
(2, 2, '2017-10-02 15:00:00', 2),
(3, 3, '2017-10-06 19:15:00', 3),
(4, 4, '2017-10-18 00:20:00', 4),
(5, 5, '2017-10-23 15:55:00', 5),
(6, 6, '2017-10-31 01:40:00', 6),
(7, 7, '2017-10-03 08:00:00', 7),
(8, 8, '2017-10-12 12:00:00', 8),
(9, 9, '2017-10-09 11:25:00', 9),
(10, 10, '2017-10-09 02:40:00', 10),
(11, 11, '2017-10-31 02:20:00', 11),
(12, 12, '2017-10-26 00:50:00', 12),
(13, 13, '2017-10-12 01:15:00', 13),
(14, 14, '2017-10-14 14:10:00', 14),
(15, 15, '2017-10-28 23:25:00', 15),
(16, 16, '2017-10-19 22:10:00', 16),
(17, 17, '2017-10-30 01:45:00', 17),
(18, 18, '2017-10-07 12:25:00', 18),
(19, 19, '2017-10-02 06:10:00', 19),
(20, 20, '2017-10-12 10:20:00', 20),
(21, 21, '2017-10-07 14:50:00', 21),
(22, 22, '2017-10-07 12:20:00', 22),
(23, 23, '2017-10-08 02:20:00', 23),
(24, 24, '2017-10-19 10:40:00', 24),
(25, 25, '2017-10-25 22:55:00', 25),
(26, 26, '2017-10-11 06:55:00', 26),
(27, 27, '2017-10-02 00:45:00', 27),
(28, 28, '2017-10-07 14:00:00', 28),
(29, 29, '2017-10-19 13:40:00', 29),
(30, 30, '2017-10-21 14:05:00', 30),
(31, 31, '2017-10-23 07:40:00', 31),
(32, 32, '2017-10-24 19:00:00', 32),
(33, 33, '2017-10-02 20:35:00', 33),
(34, 34, '2017-10-20 00:40:00', 34),
(35, 35, '2017-10-22 11:15:00', 35),
(36, 36, '2017-10-02 13:00:00', 36),
(37, 37, '2017-10-08 22:10:00', 37),
(38, 38, '2017-10-16 19:25:00', 38),
(39, 39, '2017-10-22 12:25:00', 39),
(40, 40, '2017-10-29 13:15:00', 40),
(41, 41, '2017-10-10 22:40:00', 1),
(42, 42, '2017-10-11 05:45:00', 2),
(43, 43, '2017-10-19 03:00:00', 3),
(44, 44, '2017-10-23 15:50:00', 4),
(45, 45, '2017-10-07 19:50:00', 5),
(46, 46, '2017-10-03 13:00:00', 6),
(47, 47, '2017-10-25 16:50:00', 7),
(48, 48, '2017-10-17 01:35:00', 8),
(49, 49, '2017-10-16 08:30:00', 9),
(50, 50, '2017-10-14 11:40:00', 10),
(51, 51, '2017-10-12 14:00:00', 11),
(52, 52, '2017-10-29 21:15:00', 12),
(53, 53, '2017-10-16 23:00:00', 13),
(54, 54, '2017-10-26 05:30:00', 14),
(55, 55, '2017-10-02 11:55:00', 15),
(56, 56, '2017-10-24 23:55:00', 16),
(57, 57, '2017-10-03 00:30:00', 17),
(58, 58, '2017-10-04 03:50:00', 18),
(59, 59, '2017-10-08 21:20:00', 19),
(60, 60, '2017-10-28 07:40:00', 20),
(61, 61, '2017-10-06 04:35:00', 21),
(62, 62, '2017-10-27 16:50:00', 22),
(63, 63, '2017-10-20 11:50:00', 23),
(64, 64, '2017-10-28 01:15:00', 24),
(65, 65, '2017-10-25 18:20:00', 25),
(66, 66, '2017-10-08 21:35:00', 26),
(67, 67, '2017-10-08 02:50:00', 27),
(68, 68, '2017-10-03 00:20:00', 28),
(69, 69, '2017-10-13 03:15:00', 29),
(70, 70, '2017-10-07 04:00:00', 30),
(71, 71, '2017-10-15 17:05:00', 31),
(72, 72, '2017-10-06 08:15:00', 32),
(73, 73, '2017-10-16 08:20:00', 33),
(74, 74, '2017-10-11 08:55:00', 34),
(75, 75, '2017-10-11 00:50:00', 35),
(76, 76, '2017-10-14 21:40:00', 36),
(77, 77, '2017-10-14 04:40:00', 37),
(78, 78, '2017-10-12 12:30:00', 38),
(79, 79, '2017-10-04 19:35:00', 39),
(80, 80, '2017-10-09 14:00:00', 40),
(81, 81, '2017-10-28 18:00:00', 1),
(82, 82, '2017-10-17 18:30:00', 2),
(83, 83, '2017-10-06 17:45:00', 3),
(84, 84, '2017-10-21 08:10:00', 4),
(85, 85, '2017-10-28 08:55:00', 5),
(86, 86, '2017-10-29 10:35:00', 6),
(87, 87, '2017-10-13 17:45:00', 7),
(88, 88, '2017-10-24 19:20:00', 8),
(89, 89, '2017-10-10 13:55:00', 9),
(90, 90, '2017-10-10 04:00:00', 10),
(91, 91, '2017-10-31 08:40:00', 11),
(92, 92, '2017-10-18 05:10:00', 12),
(93, 93, '2017-10-12 02:55:00', 13),
(94, 94, '2017-10-10 13:20:00', 14),
(95, 95, '2017-10-14 13:40:00', 15),
(96, 96, '2017-10-09 03:30:00', 16),
(97, 97, '2017-10-03 13:45:00', 17),
(98, 98, '2017-10-29 01:25:00', 18),
(99, 99, '2017-10-10 11:40:00', 19),
(100, 100, '2017-10-23 07:20:00', 20),
(101, 101, '2017-10-31 21:25:00', 21),
(102, 102, '2017-10-28 05:45:00', 22),
(103, 103, '2017-10-26 01:45:00', 23),
(104, 104, '2017-10-07 05:10:00', 24),
(105, 105, '2017-10-03 21:20:00', 25),
(106, 106, '2017-10-07 22:20:00', 26),
(107, 107, '2017-10-29 19:35:00', 27),
(108, 108, '2017-10-01 08:05:00', 28),
(109, 109, '2017-10-04 14:05:00', 29),
(110, 110, '2017-10-13 05:40:00', 30),
(111, 111, '2017-10-16 13:25:00', 31),
(112, 112, '2017-10-14 17:15:00', 32),
(113, 113, '2017-10-02 05:30:00', 33),
(114, 114, '2017-10-18 04:35:00', 34),
(115, 115, '2017-10-10 16:45:00', 35),
(116, 116, '2017-10-09 09:25:00', 36),
(117, 117, '2017-10-13 15:20:00', 37),
(118, 118, '2017-10-28 02:25:00', 38),
(119, 119, '2017-10-25 23:00:00', 39),
(120, 120, '2017-10-16 06:10:00', 40),
(121, 121, '2017-10-25 21:45:00', 1),
(122, 122, '2017-10-05 02:30:00', 2),
(123, 123, '2017-10-01 13:40:00', 3),
(124, 124, '2017-10-29 11:15:00', 4),
(125, 125, '2017-10-05 15:15:00', 5),
(126, 126, '2017-10-31 08:00:00', 6),
(127, 127, '2017-10-17 13:10:00', 7),
(128, 128, '2017-10-29 19:05:00', 8),
(129, 129, '2017-10-30 13:40:00', 9),
(130, 130, '2017-10-20 08:45:00', 10),
(131, 131, '2017-10-26 08:40:00', 11),
(132, 132, '2017-10-05 05:35:00', 12),
(133, 133, '2017-10-08 18:50:00', 13),
(134, 134, '2017-10-12 14:15:00', 14),
(135, 135, '2017-10-14 15:00:00', 15),
(136, 136, '2017-10-10 00:15:00', 16),
(137, 137, '2017-10-25 23:00:00', 17),
(138, 138, '2017-10-24 15:25:00', 18),
(139, 139, '2017-10-01 06:00:00', 19),
(140, 140, '2017-10-10 15:25:00', 20),
(141, 141, '2017-10-15 06:10:00', 21),
(142, 142, '2017-10-25 06:15:00', 22),
(143, 143, '2017-10-09 16:35:00', 23),
(144, 144, '2017-10-22 20:20:00', 24),
(145, 145, '2017-10-14 06:55:00', 25),
(146, 146, '2017-10-21 07:10:00', 26),
(147, 147, '2017-10-12 06:15:00', 27),
(148, 148, '2017-10-11 17:25:00', 28),
(149, 149, '2017-10-01 06:55:00', 29),
(150, 150, '2017-10-14 15:00:00', 30),
(151, 151, '2017-10-16 23:50:00', 31),
(152, 152, '2017-10-16 02:45:00', 32),
(153, 153, '2017-10-09 09:00:00', 33),
(154, 154, '2017-10-17 07:50:00', 34),
(155, 155, '2017-10-14 05:00:00', 35),
(156, 156, '2017-10-21 19:15:00', 36),
(157, 157, '2017-10-26 02:25:00', 37),
(158, 158, '2017-10-07 08:10:00', 38),
(159, 159, '2017-10-31 16:55:00', 39),
(160, 160, '2017-10-09 12:15:00', 40),
(161, 161, '2017-10-06 18:00:00', 1),
(162, 162, '2017-10-08 09:55:00', 2),
(163, 163, '2017-10-13 05:10:00', 3),
(164, 164, '2017-10-04 01:35:00', 4),
(165, 165, '2017-10-03 06:35:00', 5),
(166, 166, '2017-10-12 21:50:00', 6),
(167, 167, '2017-10-05 08:05:00', 7),
(168, 168, '2017-10-28 12:45:00', 8),
(169, 169, '2017-10-27 07:50:00', 9),
(170, 170, '2017-10-29 22:00:00', 10),
(171, 171, '2017-10-18 14:40:00', 11),
(172, 172, '2017-10-14 07:00:00', 12),
(173, 173, '2017-10-11 01:05:00', 13),
(174, 174, '2017-10-02 23:35:00', 14),
(175, 175, '2017-10-30 00:10:00', 15),
(176, 176, '2017-10-06 10:55:00', 16),
(177, 177, '2017-10-21 21:55:00', 17),
(178, 178, '2017-10-13 09:25:00', 18),
(179, 179, '2017-10-17 05:55:00', 19),
(180, 180, '2017-10-20 09:00:00', 20),
(181, 181, '2017-10-31 14:35:00', 21),
(182, 182, '2017-10-25 05:05:00', 22),
(183, 183, '2017-10-02 18:00:00', 23),
(184, 184, '2017-10-14 21:45:00', 24),
(185, 185, '2017-10-19 09:50:00', 25),
(186, 186, '2017-10-26 19:45:00', 26),
(187, 187, '2017-10-20 22:35:00', 27),
(188, 188, '2017-10-06 13:55:00', 28),
(189, 189, '2017-10-08 02:20:00', 29),
(190, 190, '2017-10-12 07:45:00', 30),
(191, 191, '2017-10-28 23:55:00', 31),
(192, 192, '2017-10-07 11:10:00', 32),
(193, 193, '2017-10-09 07:10:00', 33),
(194, 194, '2017-10-08 16:05:00', 34),
(195, 195, '2017-10-25 02:35:00', 35),
(196, 196, '2017-10-18 04:30:00', 36),
(197, 197, '2017-10-30 23:15:00', 37),
(198, 198, '2017-10-11 12:15:00', 38),
(199, 199, '2017-10-24 23:35:00', 39),
(200, 200, '2017-10-27 00:50:00', 40),
(201, 201, '2017-10-13 07:35:00', 1),
(202, 202, '2017-10-12 02:15:00', 2),
(203, 203, '2017-10-23 10:30:00', 3),
(204, 204, '2017-10-06 09:30:00', 4),
(205, 205, '2017-10-19 18:35:00', 5),
(206, 206, '2017-10-21 02:10:00', 6),
(207, 207, '2017-10-15 07:55:00', 7),
(208, 208, '2017-10-25 21:45:00', 8),
(209, 209, '2017-10-21 18:45:00', 9),
(210, 210, '2017-10-05 02:40:00', 10),
(211, 1, '2017-11-15 01:30:00', 1),
(212, 2, '2017-11-02 15:00:00', 2),
(213, 3, '2017-11-06 19:15:00', 3),
(214, 4, '2017-11-18 00:20:00', 4),
(215, 5, '2017-11-23 15:55:00', 5),
(216, 6, '0000-00-00 00:00:00', 6),
(217, 7, '2017-11-03 08:00:00', 7),
(218, 8, '2017-11-12 12:00:00', 8),
(219, 9, '2017-11-09 11:25:00', 9),
(220, 10, '2017-11-09 02:40:00', 10),
(221, 11, '0000-00-00 00:00:00', 11),
(222, 12, '2017-11-26 00:50:00', 12),
(223, 13, '2017-11-12 01:15:00', 13),
(224, 14, '2017-11-14 14:10:00', 14),
(225, 15, '2017-11-28 23:25:00', 15),
(226, 16, '2017-11-19 22:10:00', 16),
(227, 17, '2017-11-30 01:45:00', 17),
(228, 18, '2017-11-07 12:25:00', 18),
(229, 19, '2017-11-02 06:10:00', 19),
(230, 20, '2017-11-12 10:20:00', 20),
(231, 21, '2017-11-07 14:50:00', 21),
(232, 22, '2017-11-07 12:20:00', 22),
(233, 23, '2017-11-08 02:20:00', 23),
(234, 24, '2017-11-19 10:40:00', 24),
(235, 25, '2017-11-25 22:55:00', 25),
(236, 26, '2017-11-11 06:55:00', 26),
(237, 27, '2017-11-02 00:45:00', 27),
(238, 28, '2017-11-07 14:00:00', 28),
(239, 29, '2017-11-19 13:40:00', 29),
(240, 30, '2017-11-21 14:05:00', 30),
(241, 31, '2017-11-23 07:40:00', 31),
(242, 32, '2017-11-24 19:00:00', 32),
(243, 33, '2017-11-02 20:35:00', 33),
(244, 34, '2017-11-20 00:40:00', 34),
(245, 35, '2017-11-22 11:15:00', 35),
(246, 36, '2017-11-02 13:00:00', 36),
(247, 37, '2017-11-08 22:10:00', 37),
(248, 38, '2017-11-16 19:25:00', 38),
(249, 39, '2017-11-22 12:25:00', 39),
(250, 40, '2017-11-29 13:15:00', 40),
(251, 41, '2017-11-10 22:40:00', 1),
(252, 42, '2017-11-11 05:45:00', 2),
(253, 43, '2017-11-19 03:00:00', 3),
(254, 44, '2017-11-23 15:50:00', 4),
(255, 45, '2017-11-07 19:50:00', 5),
(256, 46, '2017-11-03 13:00:00', 6),
(257, 47, '2017-11-25 16:50:00', 7),
(258, 48, '2017-11-17 01:35:00', 8),
(259, 49, '2017-11-16 08:30:00', 9),
(260, 50, '2017-11-14 11:40:00', 10),
(261, 51, '2017-11-12 14:00:00', 11),
(262, 52, '2017-11-29 21:15:00', 12),
(263, 53, '2017-11-16 23:00:00', 13),
(264, 54, '2017-11-26 05:30:00', 14),
(265, 55, '2017-11-02 11:55:00', 15),
(266, 56, '2017-11-24 23:55:00', 16),
(267, 57, '2017-11-03 00:30:00', 17),
(268, 58, '2017-11-04 03:50:00', 18),
(269, 59, '2017-11-08 21:20:00', 19),
(270, 60, '2017-11-28 07:40:00', 20),
(271, 61, '2017-11-06 04:35:00', 21),
(272, 62, '2017-11-27 16:50:00', 22),
(273, 63, '2017-11-20 11:50:00', 23),
(274, 64, '2017-11-28 01:15:00', 24),
(275, 65, '2017-11-25 18:20:00', 25),
(276, 66, '2017-11-08 21:35:00', 26),
(277, 67, '2017-11-08 02:50:00', 27),
(278, 68, '2017-11-03 00:20:00', 28),
(279, 69, '2017-11-13 03:15:00', 29),
(280, 70, '2017-11-07 04:00:00', 30),
(281, 71, '2017-11-15 17:05:00', 31),
(282, 72, '2017-11-06 08:15:00', 32),
(283, 73, '2017-11-16 08:20:00', 33),
(284, 74, '2017-11-11 08:55:00', 34),
(285, 75, '2017-11-11 00:50:00', 35),
(286, 76, '2017-11-14 21:40:00', 36),
(287, 77, '2017-11-14 04:40:00', 37),
(288, 78, '2017-11-12 12:30:00', 38),
(289, 79, '2017-11-04 19:35:00', 39),
(290, 80, '2017-11-09 14:00:00', 40),
(291, 81, '2017-11-28 18:00:00', 1),
(292, 82, '2017-11-17 18:30:00', 2),
(293, 83, '2017-11-06 17:45:00', 3),
(294, 84, '2017-11-21 08:10:00', 4),
(295, 85, '2017-11-28 08:55:00', 5),
(296, 86, '2017-11-29 10:35:00', 6),
(297, 87, '2017-11-13 17:45:00', 7),
(298, 88, '2017-11-24 19:20:00', 8),
(299, 89, '2017-11-10 13:55:00', 9),
(300, 90, '2017-11-10 04:00:00', 10),
(301, 91, '0000-00-00 00:00:00', 11),
(302, 92, '2017-11-18 05:10:00', 12),
(303, 93, '2017-11-12 02:55:00', 13),
(304, 94, '2017-11-10 13:20:00', 14),
(305, 95, '2017-11-14 13:40:00', 15),
(306, 96, '2017-11-09 03:30:00', 16),
(307, 97, '2017-11-03 13:45:00', 17),
(308, 98, '2017-11-29 01:25:00', 18),
(309, 99, '2017-11-10 11:40:00', 19),
(310, 100, '2017-11-23 07:20:00', 20),
(311, 101, '0000-00-00 00:00:00', 21),
(312, 102, '2017-11-28 05:45:00', 22),
(313, 103, '2017-11-26 01:45:00', 23),
(314, 104, '2017-11-07 05:10:00', 24),
(315, 105, '2017-11-03 21:20:00', 25),
(316, 106, '2017-11-07 22:20:00', 26),
(317, 107, '2017-11-29 19:35:00', 27),
(318, 108, '2017-11-01 08:05:00', 28),
(319, 109, '2017-11-04 14:05:00', 29),
(320, 110, '2017-11-13 05:40:00', 30),
(321, 111, '2017-11-16 13:25:00', 31),
(322, 112, '2017-11-14 17:15:00', 32),
(323, 113, '2017-11-02 05:30:00', 33),
(324, 114, '2017-11-18 04:35:00', 34),
(325, 115, '2017-11-10 16:45:00', 35),
(326, 116, '2017-11-09 09:25:00', 36),
(327, 117, '2017-11-13 15:20:00', 37),
(328, 118, '2017-11-28 02:25:00', 38),
(329, 119, '2017-11-25 23:00:00', 39),
(330, 120, '2017-11-16 06:10:00', 40),
(331, 121, '2017-11-25 21:45:00', 1),
(332, 122, '2017-11-05 02:30:00', 2),
(333, 123, '2017-11-01 13:40:00', 3),
(334, 124, '2017-11-29 11:15:00', 4),
(335, 125, '2017-11-05 15:15:00', 5),
(336, 126, '0000-00-00 00:00:00', 6),
(337, 127, '2017-11-17 13:10:00', 7),
(338, 128, '2017-11-29 19:05:00', 8),
(339, 129, '2017-11-30 13:40:00', 9),
(340, 130, '2017-11-20 08:45:00', 10),
(341, 131, '2017-11-26 08:40:00', 11),
(342, 132, '2017-11-05 05:35:00', 12),
(343, 133, '2017-11-08 18:50:00', 13),
(344, 134, '2017-11-12 14:15:00', 14),
(345, 135, '2017-11-14 15:00:00', 15),
(346, 136, '2017-11-10 00:15:00', 16),
(347, 137, '2017-11-25 23:00:00', 17),
(348, 138, '2017-11-24 15:25:00', 18),
(349, 139, '2017-11-01 06:00:00', 19),
(350, 140, '2017-11-10 15:25:00', 20),
(351, 141, '2017-11-15 06:10:00', 21),
(352, 142, '2017-11-25 06:15:00', 22),
(353, 143, '2017-11-09 16:35:00', 23),
(354, 144, '2017-11-22 20:20:00', 24),
(355, 145, '2017-11-14 06:55:00', 25),
(356, 146, '2017-11-21 07:10:00', 26),
(357, 147, '2017-11-12 06:15:00', 27),
(358, 148, '2017-11-11 17:25:00', 28),
(359, 149, '2017-11-01 06:55:00', 29),
(360, 150, '2017-11-14 15:00:00', 30),
(361, 151, '2017-11-16 23:50:00', 31),
(362, 152, '2017-11-16 02:45:00', 32),
(363, 153, '2017-11-09 09:00:00', 33),
(364, 154, '2017-11-17 07:50:00', 34),
(365, 155, '2017-11-14 05:00:00', 35),
(366, 156, '2017-11-21 19:15:00', 36),
(367, 157, '2017-11-26 02:25:00', 37),
(368, 158, '2017-11-07 08:10:00', 38),
(369, 159, '0000-00-00 00:00:00', 39),
(370, 160, '2017-11-09 12:15:00', 40),
(371, 161, '2017-11-06 18:00:00', 1),
(372, 162, '2017-11-08 09:55:00', 2),
(373, 163, '2017-11-13 05:10:00', 3),
(374, 164, '2017-11-04 01:35:00', 4),
(375, 165, '2017-11-03 06:35:00', 5),
(376, 166, '2017-11-12 21:50:00', 6),
(377, 167, '2017-11-05 08:05:00', 7),
(378, 168, '2017-11-28 12:45:00', 8),
(379, 169, '2017-11-27 07:50:00', 9),
(380, 170, '2017-11-29 22:00:00', 10),
(381, 171, '2017-11-18 14:40:00', 11),
(382, 172, '2017-11-14 07:00:00', 12),
(383, 173, '2017-11-11 01:05:00', 13),
(384, 174, '2017-11-02 23:35:00', 14),
(385, 175, '2017-11-30 00:10:00', 15),
(386, 176, '2017-11-06 10:55:00', 16),
(387, 177, '2017-11-21 21:55:00', 17),
(388, 178, '2017-11-13 09:25:00', 18),
(389, 179, '2017-11-17 05:55:00', 19),
(390, 180, '2017-11-20 09:00:00', 20),
(391, 181, '0000-00-00 00:00:00', 21),
(392, 182, '2017-11-25 05:05:00', 22),
(393, 183, '2017-11-02 18:00:00', 23),
(394, 184, '2017-11-14 21:45:00', 24),
(395, 185, '2017-11-19 09:50:00', 25),
(396, 186, '2017-11-26 19:45:00', 26),
(397, 187, '2017-11-20 22:35:00', 27),
(398, 188, '2017-11-06 13:55:00', 28),
(399, 189, '2017-11-08 02:20:00', 29),
(400, 190, '2017-11-12 07:45:00', 30),
(401, 191, '2017-11-28 23:55:00', 31),
(402, 192, '2017-11-07 11:10:00', 32),
(403, 193, '2017-11-09 07:10:00', 33),
(404, 194, '2017-11-08 16:05:00', 34),
(405, 195, '2017-11-25 02:35:00', 35),
(406, 196, '2017-11-18 04:30:00', 36),
(407, 197, '2017-11-30 23:15:00', 37),
(408, 198, '2017-11-11 12:15:00', 38),
(409, 199, '2017-11-24 23:35:00', 39),
(410, 200, '2017-11-27 00:50:00', 40),
(411, 201, '2017-11-13 07:35:00', 1),
(412, 202, '2017-11-12 02:15:00', 2),
(413, 203, '2017-11-23 10:30:00', 3),
(414, 204, '2017-11-06 09:30:00', 4),
(415, 205, '2017-11-19 18:35:00', 5),
(416, 206, '2017-11-21 02:10:00', 6),
(417, 207, '2017-11-15 07:55:00', 7),
(418, 208, '2017-11-25 21:45:00', 8),
(419, 209, '2017-11-21 18:45:00', 9),
(420, 210, '2017-11-05 02:40:00', 10),
(421, 1, '2017-12-15 01:30:00', 1),
(422, 2, '2017-12-02 15:00:00', 2),
(423, 3, '2017-12-06 19:15:00', 3),
(424, 4, '2017-12-18 00:20:00', 4),
(425, 5, '2017-12-23 15:55:00', 5),
(426, 6, '2017-12-31 01:40:00', 6),
(427, 7, '2017-12-03 08:00:00', 7),
(428, 8, '2017-12-12 12:00:00', 8),
(429, 9, '2017-12-09 11:25:00', 9),
(430, 10, '2017-12-09 02:40:00', 10),
(431, 11, '2017-12-31 02:20:00', 11),
(432, 12, '2017-12-26 00:50:00', 12),
(433, 13, '2017-12-12 01:15:00', 13),
(434, 14, '2017-12-14 14:10:00', 14),
(435, 15, '2017-12-28 23:25:00', 15),
(436, 16, '2017-12-19 22:10:00', 16),
(437, 17, '2017-12-30 01:45:00', 17),
(438, 18, '2017-12-07 12:25:00', 18),
(439, 19, '2017-12-02 06:10:00', 19),
(440, 20, '2017-12-12 10:20:00', 20),
(441, 21, '2017-12-07 14:50:00', 21),
(442, 22, '2017-12-07 12:20:00', 22),
(443, 23, '2017-12-08 02:20:00', 23),
(444, 24, '2017-12-19 10:40:00', 24),
(445, 25, '2017-12-25 22:55:00', 25),
(446, 26, '2017-12-11 06:55:00', 26),
(447, 27, '2017-12-02 00:45:00', 27),
(448, 28, '2017-12-07 14:00:00', 28),
(449, 29, '2017-12-19 13:40:00', 29),
(450, 30, '2017-12-21 14:05:00', 30),
(451, 31, '2017-12-23 07:40:00', 31),
(452, 32, '2017-12-24 19:00:00', 32),
(453, 33, '2017-12-02 20:35:00', 33),
(454, 34, '2017-12-20 00:40:00', 34),
(455, 35, '2017-12-22 11:15:00', 35),
(456, 36, '2017-12-02 13:00:00', 36),
(457, 37, '2017-12-08 22:10:00', 37),
(458, 38, '2017-12-16 19:25:00', 38),
(459, 39, '2017-12-22 12:25:00', 39),
(460, 40, '2017-12-29 13:15:00', 40),
(461, 41, '2017-12-10 22:40:00', 1),
(462, 42, '2017-12-11 05:45:00', 2),
(463, 43, '2017-12-19 03:00:00', 3),
(464, 44, '2017-12-23 15:50:00', 4),
(465, 45, '2017-12-07 19:50:00', 5),
(466, 46, '2017-12-03 13:00:00', 6),
(467, 47, '2017-12-25 16:50:00', 7),
(468, 48, '2017-12-17 01:35:00', 8),
(469, 49, '2017-12-16 08:30:00', 9),
(470, 50, '2017-12-14 11:40:00', 10),
(471, 51, '2017-12-12 14:00:00', 11),
(472, 52, '2017-12-29 21:15:00', 12),
(473, 53, '2017-12-16 23:00:00', 13),
(474, 54, '2017-12-26 05:30:00', 14),
(475, 55, '2017-12-02 11:55:00', 15),
(476, 56, '2017-12-24 23:55:00', 16),
(477, 57, '2017-12-03 00:30:00', 17),
(478, 58, '2017-12-04 03:50:00', 18),
(479, 59, '2017-12-08 21:20:00', 19),
(480, 60, '2017-12-28 07:40:00', 20),
(481, 61, '2017-12-06 04:35:00', 21),
(482, 62, '2017-12-27 16:50:00', 22),
(483, 63, '2017-12-20 11:50:00', 23),
(484, 64, '2017-12-28 01:15:00', 24),
(485, 65, '2017-12-25 18:20:00', 25),
(486, 66, '2017-12-08 21:35:00', 26),
(487, 67, '2017-12-08 02:50:00', 27),
(488, 68, '2017-12-03 00:20:00', 28),
(489, 69, '2017-12-13 03:15:00', 29),
(490, 70, '2017-12-07 04:00:00', 30),
(491, 71, '2017-12-15 17:05:00', 31),
(492, 72, '2017-12-06 08:15:00', 32),
(493, 73, '2017-12-16 08:20:00', 33),
(494, 74, '2017-12-11 08:55:00', 34),
(495, 75, '2017-12-11 00:50:00', 35),
(496, 76, '2017-12-14 21:40:00', 36),
(497, 77, '2017-12-14 04:40:00', 37),
(498, 78, '2017-12-12 12:30:00', 38),
(499, 79, '2017-12-04 19:35:00', 39),
(500, 80, '2017-12-09 14:00:00', 40),
(501, 81, '2017-12-28 18:00:00', 1),
(502, 82, '2017-12-17 18:30:00', 2),
(503, 83, '2017-12-06 17:45:00', 3),
(504, 84, '2017-12-21 08:10:00', 4),
(505, 85, '2017-12-28 08:55:00', 5),
(506, 86, '2017-12-29 10:35:00', 6),
(507, 87, '2017-12-13 17:45:00', 7),
(508, 88, '2017-12-24 19:20:00', 8),
(509, 89, '2017-12-10 13:55:00', 9),
(510, 90, '2017-12-10 04:00:00', 10),
(511, 91, '2017-12-31 08:40:00', 11),
(512, 92, '2017-12-18 05:10:00', 12),
(513, 93, '2017-12-12 02:55:00', 13),
(514, 94, '2017-12-10 13:20:00', 14),
(515, 95, '2017-12-14 13:40:00', 15),
(516, 96, '2017-12-09 03:30:00', 16),
(517, 97, '2017-12-03 13:45:00', 17),
(518, 98, '2017-12-29 01:25:00', 18),
(519, 99, '2017-12-10 11:40:00', 19),
(520, 100, '2017-12-23 07:20:00', 20),
(521, 101, '2017-12-31 21:25:00', 21),
(522, 102, '2017-12-28 05:45:00', 22),
(523, 103, '2017-12-26 01:45:00', 23),
(524, 104, '2017-12-07 05:10:00', 24),
(525, 105, '2017-12-03 21:20:00', 25),
(526, 106, '2017-12-07 22:20:00', 26),
(527, 107, '2017-12-29 19:35:00', 27),
(528, 108, '2017-12-01 08:05:00', 28),
(529, 109, '2017-12-04 14:05:00', 29),
(530, 110, '2017-12-13 05:40:00', 30),
(531, 111, '2017-12-16 13:25:00', 31),
(532, 112, '2017-12-14 17:15:00', 32),
(533, 113, '2017-12-02 05:30:00', 33),
(534, 114, '2017-12-18 04:35:00', 34),
(535, 115, '2017-12-10 16:45:00', 35),
(536, 116, '2017-12-09 09:25:00', 36),
(537, 117, '2017-12-13 15:20:00', 37),
(538, 118, '2017-12-28 02:25:00', 38),
(539, 119, '2017-12-25 23:00:00', 39),
(540, 120, '2017-12-16 06:10:00', 40),
(541, 121, '2017-12-25 21:45:00', 1),
(542, 122, '2017-12-05 02:30:00', 2),
(543, 123, '2017-12-01 13:40:00', 3),
(544, 124, '2017-12-29 11:15:00', 4),
(545, 125, '2017-12-05 15:15:00', 5),
(546, 126, '2017-12-31 08:00:00', 6),
(547, 127, '2017-12-17 13:10:00', 7),
(548, 128, '2017-12-29 19:05:00', 8),
(549, 129, '2017-12-30 13:40:00', 9),
(550, 130, '2017-12-20 08:45:00', 10),
(551, 131, '2017-12-26 08:40:00', 11),
(552, 132, '2017-12-05 05:35:00', 12),
(553, 133, '2017-12-08 18:50:00', 13),
(554, 134, '2017-12-12 14:15:00', 14),
(555, 135, '2017-12-14 15:00:00', 15),
(556, 136, '2017-12-10 00:15:00', 16),
(557, 137, '2017-12-25 23:00:00', 17),
(558, 138, '2017-12-24 15:25:00', 18),
(559, 139, '2017-12-01 06:00:00', 19),
(560, 140, '2017-12-10 15:25:00', 20),
(561, 141, '2017-12-15 06:10:00', 21),
(562, 142, '2017-12-25 06:15:00', 22),
(563, 143, '2017-12-09 16:35:00', 23),
(564, 144, '2017-12-22 20:20:00', 24),
(565, 145, '2017-12-14 06:55:00', 25),
(566, 146, '2017-12-21 07:10:00', 26),
(567, 147, '2017-12-12 06:15:00', 27),
(568, 148, '2017-12-11 17:25:00', 28),
(569, 149, '2017-12-01 06:55:00', 29),
(570, 150, '2017-12-14 15:00:00', 30),
(571, 151, '2017-12-16 23:50:00', 31),
(572, 152, '2017-12-16 02:45:00', 32),
(573, 153, '2017-12-09 09:00:00', 33),
(574, 154, '2017-12-17 07:50:00', 34),
(575, 155, '2017-12-14 05:00:00', 35),
(576, 156, '2017-12-21 19:15:00', 36),
(577, 157, '2017-12-26 02:25:00', 37),
(578, 158, '2017-12-07 08:10:00', 38),
(579, 159, '2017-12-31 16:55:00', 39),
(580, 160, '2017-12-09 12:15:00', 40),
(581, 161, '2017-12-06 18:00:00', 1),
(582, 162, '2017-12-08 09:55:00', 2),
(583, 163, '2017-12-13 05:10:00', 3),
(584, 164, '2017-12-04 01:35:00', 4),
(585, 165, '2017-12-03 06:35:00', 5),
(586, 166, '2017-12-12 21:50:00', 6),
(587, 167, '2017-12-05 08:05:00', 7),
(588, 168, '2017-12-28 12:45:00', 8),
(589, 169, '2017-12-27 07:50:00', 9),
(590, 170, '2017-12-29 22:00:00', 10),
(591, 171, '2017-12-18 14:40:00', 11),
(592, 172, '2017-12-14 07:00:00', 12),
(593, 173, '2017-12-11 01:05:00', 13),
(594, 174, '2017-12-02 23:35:00', 14),
(595, 175, '2017-12-30 00:10:00', 15),
(596, 176, '2017-12-06 10:55:00', 16),
(597, 177, '2017-12-21 21:55:00', 17),
(598, 178, '2017-12-13 09:25:00', 18),
(599, 179, '2017-12-17 05:55:00', 19),
(600, 180, '2017-12-20 09:00:00', 20),
(601, 181, '2017-12-31 14:35:00', 21),
(602, 182, '2017-12-25 05:05:00', 22),
(603, 183, '2017-12-02 18:00:00', 23),
(604, 184, '2017-12-14 21:45:00', 24),
(605, 185, '2017-12-19 09:50:00', 25),
(606, 186, '2017-12-26 19:45:00', 26),
(607, 187, '2017-12-20 22:35:00', 27),
(608, 188, '2017-12-06 13:55:00', 28),
(609, 189, '2017-12-08 02:20:00', 29),
(610, 190, '2017-12-12 07:45:00', 30),
(611, 191, '2017-12-28 23:55:00', 31),
(612, 192, '2017-12-07 11:10:00', 32),
(613, 193, '2017-12-09 07:10:00', 33),
(614, 194, '2017-12-08 16:05:00', 34),
(615, 195, '2017-12-25 02:35:00', 35),
(616, 196, '2017-12-18 04:30:00', 36),
(617, 197, '2017-12-30 23:15:00', 37),
(618, 198, '2017-12-11 12:15:00', 38),
(619, 199, '2017-12-24 23:35:00', 39),
(620, 200, '2017-12-27 00:50:00', 40),
(621, 201, '2017-12-13 07:35:00', 1),
(622, 202, '2017-12-12 02:15:00', 2),
(623, 203, '2017-12-23 10:30:00', 3),
(624, 204, '2017-12-06 09:30:00', 4),
(625, 205, '2017-12-19 18:35:00', 5),
(626, 206, '2017-12-21 02:10:00', 6),
(627, 207, '2017-12-15 07:55:00', 7),
(628, 208, '2017-12-25 21:45:00', 8),
(629, 209, '2017-12-21 18:45:00', 9),
(630, 210, '2017-12-05 02:40:00', 10);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `page_id` tinyint(3) UNSIGNED NOT NULL,
  `page_title` varchar(64) NOT NULL,
  `page_slug` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`page_id`, `page_title`, `page_slug`) VALUES
(1, 'Home', 'home'),
(2, 'Error 404', 'err404'),
(3, 'Error 403', 'err403'),
(4, 'Sign In', 'signin'),
(5, 'Sign up', 'signup'),
(6, 'Main', 'main'),
(7, 'Search', 'search'),
(8, 'Booking', 'booking'),
(9, 'Checkout', 'checkout'),
(10, 'Detail', 'detail');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `price_id` int(10) UNSIGNED NOT NULL,
  `economy` int(10) UNSIGNED NOT NULL,
  `first_class` int(10) UNSIGNED NOT NULL,
  `business` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`price_id`, `economy`, `first_class`, `business`) VALUES
(1, 89, 349, 179),
(2, 75, 330, 170),
(3, 270, 680, 400),
(4, 145, 600, 360),
(5, 320, 839, 529),
(6, 125, 440, 220),
(7, 149, 580, 300),
(8, 225, 955, 540),
(9, 579, 1899, 1049),
(10, 209, 799, 400),
(11, 178, 649, 349),
(12, 219, 799, 429),
(13, 49, 249, 120),
(14, 59, 239, 110),
(15, 89, 320, 169),
(16, 119, 499, 249),
(17, 215, 745, 400),
(18, 299, 1099, 599),
(19, 69, 249, 119),
(20, 170, 750, 349),
(21, 143, 625, 299),
(22, 309, 950, 549),
(23, 119, 499, 249),
(24, 189, 749, 360),
(25, 369, 1299, 749),
(26, 249, 899, 489),
(27, 138, 499, 259),
(28, 64, 249, 119),
(29, 299, 950, 549),
(30, 104, 429, 219),
(31, 269, 999, 515),
(32, 229, 845, 429),
(33, 300, 1099, 549),
(34, 270, 929, 469),
(35, 89, 329, 175),
(36, 369, 1199, 549),
(37, 214, 800, 420),
(38, 349, 1089, 589),
(39, 279, 849, 449),
(40, 368, 1300, 719);

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `route_id` int(10) UNSIGNED NOT NULL,
  `source` char(3) NOT NULL,
  `destination` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`route_id`, `source`, `destination`) VALUES
(1, 'BKK', 'CDG'),
(2, 'BKK', 'CGK'),
(3, 'BKK', 'CWC'),
(4, 'BKK', 'DXB'),
(5, 'BKK', 'HKG'),
(6, 'BKK', 'ICN'),
(7, 'BKK', 'JFK'),
(8, 'BKK', 'KUL'),
(9, 'BKK', 'LHR'),
(10, 'BKK', 'NGS'),
(11, 'BKK', 'PEK'),
(12, 'BKK', 'RWN'),
(13, 'BKK', 'SIN'),
(14, 'BKK', 'TPE'),
(15, 'CDG', 'BKK'),
(16, 'CDG', 'CGK'),
(17, 'CDG', 'CWC'),
(18, 'CDG', 'DXB'),
(19, 'CDG', 'HKG'),
(20, 'CDG', 'ICN'),
(21, 'CDG', 'JFK'),
(22, 'CDG', 'KUL'),
(23, 'CDG', 'LHR'),
(24, 'CDG', 'NGS'),
(25, 'CDG', 'PEK'),
(26, 'CDG', 'RWN'),
(27, 'CDG', 'SIN'),
(28, 'CDG', 'TPE'),
(29, 'CGK', 'BKK'),
(30, 'CGK', 'CDG'),
(31, 'CGK', 'CWC'),
(32, 'CGK', 'DXB'),
(33, 'CGK', 'HKG'),
(34, 'CGK', 'ICN'),
(35, 'CGK', 'JFK'),
(36, 'CGK', 'KUL'),
(37, 'CGK', 'LHR'),
(38, 'CGK', 'NGS'),
(39, 'CGK', 'PEK'),
(40, 'CGK', 'RWN'),
(41, 'CGK', 'SIN'),
(42, 'CGK', 'TPE'),
(43, 'CWC', 'BKK'),
(44, 'CWC', 'CDG'),
(45, 'CWC', 'CGK'),
(46, 'CWC', 'DXB'),
(47, 'CWC', 'HKG'),
(48, 'CWC', 'ICN'),
(49, 'CWC', 'JFK'),
(50, 'CWC', 'KUL'),
(51, 'CWC', 'LHR'),
(52, 'CWC', 'NGS'),
(53, 'CWC', 'PEK'),
(54, 'CWC', 'RWN'),
(55, 'CWC', 'SIN'),
(56, 'CWC', 'TPE'),
(57, 'DXB', 'BKK'),
(58, 'DXB', 'CDG'),
(59, 'DXB', 'CGK'),
(60, 'DXB', 'CWC'),
(61, 'DXB', 'HKG'),
(62, 'DXB', 'ICN'),
(63, 'DXB', 'JFK'),
(64, 'DXB', 'KUL'),
(65, 'DXB', 'LHR'),
(66, 'DXB', 'NGS'),
(67, 'DXB', 'PEK'),
(68, 'DXB', 'RWN'),
(69, 'DXB', 'SIN'),
(70, 'DXB', 'TPE'),
(71, 'HKG', 'BKK'),
(72, 'HKG', 'CDG'),
(73, 'HKG', 'CGK'),
(74, 'HKG', 'CWC'),
(75, 'HKG', 'DXB'),
(76, 'HKG', 'ICN'),
(77, 'HKG', 'JFK'),
(78, 'HKG', 'KUL'),
(79, 'HKG', 'LHR'),
(80, 'HKG', 'NGS'),
(81, 'HKG', 'PEK'),
(82, 'HKG', 'RWN'),
(83, 'HKG', 'SIN'),
(84, 'HKG', 'TPE'),
(85, 'ICN', 'BKK'),
(86, 'ICN', 'CDG'),
(87, 'ICN', 'CGK'),
(88, 'ICN', 'CWC'),
(89, 'ICN', 'DXB'),
(90, 'ICN', 'HKG'),
(91, 'ICN', 'JFK'),
(92, 'ICN', 'KUL'),
(93, 'ICN', 'LHR'),
(94, 'ICN', 'NGS'),
(95, 'ICN', 'PEK'),
(96, 'ICN', 'RWN'),
(97, 'ICN', 'SIN'),
(98, 'ICN', 'TPE'),
(99, 'JFK', 'BKK'),
(100, 'JFK', 'CDG'),
(101, 'JFK', 'CGK'),
(102, 'JFK', 'CWC'),
(103, 'JFK', 'DXB'),
(104, 'JFK', 'HKG'),
(105, 'JFK', 'ICN'),
(106, 'JFK', 'KUL'),
(107, 'JFK', 'LHR'),
(108, 'JFK', 'NGS'),
(109, 'JFK', 'PEK'),
(110, 'JFK', 'RWN'),
(111, 'JFK', 'SIN'),
(112, 'JFK', 'TPE'),
(113, 'KUL', 'BKK'),
(114, 'KUL', 'CDG'),
(115, 'KUL', 'CGK'),
(116, 'KUL', 'CWC'),
(117, 'KUL', 'DXB'),
(118, 'KUL', 'HKG'),
(119, 'KUL', 'ICN'),
(120, 'KUL', 'JFK'),
(121, 'KUL', 'LHR'),
(122, 'KUL', 'NGS'),
(123, 'KUL', 'PEK'),
(124, 'KUL', 'RWN'),
(125, 'KUL', 'SIN'),
(126, 'KUL', 'TPE'),
(127, 'LHR', 'BKK'),
(128, 'LHR', 'CDG'),
(129, 'LHR', 'CGK'),
(130, 'LHR', 'CWC'),
(131, 'LHR', 'DXB'),
(132, 'LHR', 'HKG'),
(133, 'LHR', 'ICN'),
(134, 'LHR', 'JFK'),
(135, 'LHR', 'KUL'),
(136, 'LHR', 'NGS'),
(137, 'LHR', 'PEK'),
(138, 'LHR', 'RWN'),
(139, 'LHR', 'SIN'),
(140, 'LHR', 'TPE'),
(141, 'NGS', 'BKK'),
(142, 'NGS', 'CDG'),
(143, 'NGS', 'CGK'),
(144, 'NGS', 'CWC'),
(145, 'NGS', 'DXB'),
(146, 'NGS', 'HKG'),
(147, 'NGS', 'ICN'),
(148, 'NGS', 'JFK'),
(149, 'NGS', 'KUL'),
(150, 'NGS', 'LHR'),
(151, 'NGS', 'PEK'),
(152, 'NGS', 'RWN'),
(153, 'NGS', 'SIN'),
(154, 'NGS', 'TPE'),
(155, 'PEK', 'BKK'),
(156, 'PEK', 'CDG'),
(157, 'PEK', 'CGK'),
(158, 'PEK', 'CWC'),
(159, 'PEK', 'DXB'),
(160, 'PEK', 'HKG'),
(161, 'PEK', 'ICN'),
(162, 'PEK', 'JFK'),
(163, 'PEK', 'KUL'),
(164, 'PEK', 'LHR'),
(165, 'PEK', 'NGS'),
(166, 'PEK', 'RWN'),
(167, 'PEK', 'SIN'),
(168, 'PEK', 'TPE'),
(169, 'RWN', 'BKK'),
(170, 'RWN', 'CDG'),
(171, 'RWN', 'CGK'),
(172, 'RWN', 'CWC'),
(173, 'RWN', 'DXB'),
(174, 'RWN', 'HKG'),
(175, 'RWN', 'ICN'),
(176, 'RWN', 'JFK'),
(177, 'RWN', 'KUL'),
(178, 'RWN', 'LHR'),
(179, 'RWN', 'NGS'),
(180, 'RWN', 'PEK'),
(181, 'RWN', 'SIN'),
(182, 'RWN', 'TPE'),
(183, 'SIN', 'BKK'),
(184, 'SIN', 'CDG'),
(185, 'SIN', 'CGK'),
(186, 'SIN', 'CWC'),
(187, 'SIN', 'DXB'),
(188, 'SIN', 'HKG'),
(189, 'SIN', 'ICN'),
(190, 'SIN', 'JFK'),
(191, 'SIN', 'KUL'),
(192, 'SIN', 'LHR'),
(193, 'SIN', 'NGS'),
(194, 'SIN', 'PEK'),
(195, 'SIN', 'RWN'),
(196, 'SIN', 'TPE'),
(197, 'TPE', 'BKK'),
(198, 'TPE', 'CDG'),
(199, 'TPE', 'CGK'),
(200, 'TPE', 'CWC'),
(201, 'TPE', 'DXB'),
(202, 'TPE', 'HKG'),
(203, 'TPE', 'ICN'),
(204, 'TPE', 'JFK'),
(205, 'TPE', 'KUL'),
(206, 'TPE', 'LHR'),
(207, 'TPE', 'NGS'),
(208, 'TPE', 'PEK'),
(209, 'TPE', 'RWN'),
(210, 'TPE', 'SIN');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` char(64) NOT NULL,
  `salt` binary(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `full_name`, `email`, `password`, `salt`) VALUES
(1, 'admin', 'admin@uia.com', '541048b104fec9c4f0e4b17d379ccb17b06b3797001feaf2cbf8241e520f4134', 0xeeec663e535b36beb62fe9dcc98cff982777d9f730ab57ea7413b9ad22491ca9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booked_seat`
--
ALTER TABLE `booked_seat`
  ADD PRIMARY KEY (`booking_id`,`seat_number`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`,`flight_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flight_id`),
  ADD KEY `route_id` (`route_id`,`price_id`),
  ADD KEY `price_id` (`price_id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`),
  ADD UNIQUE KEY `page_slug` (`page_slug`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`price_id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`route_id`),
  ADD KEY `source` (`source`,`destination`),
  ADD KEY `destination` (`destination`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `flight_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=631;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `page_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `route_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booked_seat`
--
ALTER TABLE `booked_seat`
  ADD CONSTRAINT `booked_seat_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`price_id`) REFERENCES `price` (`price_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `flight_ibfk_2` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
