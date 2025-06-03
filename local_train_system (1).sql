-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2025 at 11:45 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `local_train_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `train_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seat_class` varchar(50) NOT NULL,
  `seat_number` varchar(10) NOT NULL,
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `seat_id` int(11) NOT NULL,
  `train_id` int(11) DEFAULT NULL,
  `seat_class` enum('AC','Non-AC','Cabin') DEFAULT NULL,
  `seat_number` varchar(10) DEFAULT NULL,
  `status` enum('Available','Booked') DEFAULT 'Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`seat_id`, `train_id`, `seat_class`, `seat_number`, `status`) VALUES
(3, 2, 'AC', '50', 'Available'),
(4, 2, 'Non-AC', '60', 'Available'),
(5, 2, 'AC', '1', 'Booked'),
(6, 2, 'AC', '2', 'Available'),
(7, 2, 'AC', '3', 'Available'),
(8, 2, 'AC', '4', 'Available'),
(9, 2, 'AC', '5', 'Available'),
(10, 2, 'AC', '6', 'Available'),
(11, 2, 'AC', '7', 'Available'),
(12, 2, 'AC', '8', 'Available'),
(13, 2, 'AC', '9', 'Available'),
(14, 2, 'AC', '10', 'Available'),
(15, 2, 'AC', '11', 'Available'),
(16, 2, 'AC', '12', 'Available'),
(17, 2, 'AC', '13', 'Available'),
(18, 2, 'AC', '14', 'Available'),
(19, 2, 'AC', '15', 'Available'),
(20, 2, 'AC', '16', 'Available'),
(21, 2, 'AC', '17', 'Available'),
(22, 2, 'AC', '18', 'Available'),
(23, 2, 'AC', '19', 'Available'),
(24, 2, 'AC', '20', 'Available'),
(25, 2, 'AC', '21', 'Available'),
(26, 2, 'AC', '22', 'Available'),
(27, 2, 'AC', '23', 'Available'),
(28, 2, 'AC', '24', 'Available'),
(29, 2, 'AC', '25', 'Available'),
(30, 2, 'AC', '26', 'Available'),
(31, 2, 'AC', '27', 'Available'),
(32, 2, 'AC', '28', 'Available'),
(33, 2, 'AC', '29', 'Available'),
(34, 2, 'AC', '30', 'Available'),
(35, 2, 'AC', '31', 'Available'),
(36, 2, 'AC', '32', 'Available'),
(37, 2, 'AC', '33', 'Available'),
(38, 2, 'AC', '34', 'Available'),
(39, 2, 'AC', '35', 'Available'),
(40, 2, 'AC', '36', 'Available'),
(41, 2, 'AC', '37', 'Available'),
(42, 2, 'AC', '38', 'Available'),
(43, 2, 'AC', '39', 'Available'),
(44, 2, 'AC', '40', 'Available'),
(45, 2, 'AC', '41', 'Available'),
(46, 2, 'AC', '42', 'Available'),
(47, 2, 'AC', '43', 'Available'),
(48, 2, 'AC', '44', 'Available'),
(49, 2, 'AC', '45', 'Available'),
(50, 2, 'AC', '46', 'Available'),
(51, 2, 'AC', '47', 'Available'),
(52, 2, 'AC', '48', 'Available'),
(53, 2, 'AC', '49', 'Available'),
(54, 2, 'AC', '50', 'Available'),
(55, 3, 'AC', '1', 'Available'),
(56, 3, 'AC', '2', 'Available'),
(57, 3, 'AC', '3', 'Available'),
(58, 3, 'AC', '4', 'Available'),
(59, 3, 'AC', '5', 'Available'),
(60, 3, 'AC', '6', 'Available'),
(61, 3, 'AC', '7', 'Available'),
(62, 3, 'AC', '8', 'Available'),
(63, 3, 'AC', '9', 'Available'),
(64, 3, 'AC', '10', 'Available'),
(65, 3, 'AC', '11', 'Available'),
(66, 3, 'AC', '12', 'Available'),
(67, 3, 'AC', '13', 'Available'),
(68, 3, 'AC', '14', 'Available'),
(69, 3, 'AC', '15', 'Available'),
(70, 3, 'AC', '16', 'Available'),
(71, 3, 'AC', '17', 'Available'),
(72, 3, 'AC', '18', 'Available'),
(73, 3, 'AC', '19', 'Available'),
(74, 3, 'AC', '20', 'Available'),
(75, 3, 'AC', '21', 'Available'),
(76, 3, 'AC', '22', 'Available'),
(77, 3, 'AC', '23', 'Available'),
(78, 3, 'AC', '24', 'Available'),
(79, 3, 'AC', '25', 'Available'),
(80, 3, 'AC', '26', 'Available'),
(81, 3, 'AC', '27', 'Available'),
(82, 3, 'AC', '28', 'Available'),
(83, 3, 'AC', '29', 'Available'),
(84, 3, 'AC', '30', 'Available'),
(85, 3, 'AC', '31', 'Available'),
(86, 3, 'AC', '32', 'Available'),
(87, 3, 'AC', '33', 'Available'),
(88, 3, 'AC', '34', 'Available'),
(89, 3, 'AC', '35', 'Available'),
(90, 3, 'AC', '36', 'Available'),
(91, 3, 'AC', '37', 'Available'),
(92, 3, 'AC', '38', 'Available'),
(93, 3, 'AC', '39', 'Available'),
(94, 3, 'AC', '40', 'Available'),
(95, 3, 'AC', '41', 'Available'),
(96, 3, 'AC', '42', 'Available'),
(97, 3, 'AC', '43', 'Available'),
(98, 3, 'AC', '44', 'Available'),
(99, 3, 'AC', '45', 'Available'),
(100, 3, 'AC', '46', 'Available'),
(101, 3, 'AC', '47', 'Available'),
(102, 3, 'AC', '48', 'Available'),
(103, 3, 'AC', '49', 'Available'),
(104, 3, 'AC', '50', 'Available'),
(105, 3, 'AC', '51', 'Available'),
(106, 3, 'AC', '52', 'Available'),
(107, 3, 'AC', '53', 'Available'),
(108, 3, 'AC', '54', 'Available'),
(109, 3, 'AC', '55', 'Available'),
(110, 3, 'AC', '56', 'Available'),
(111, 3, 'AC', '57', 'Available'),
(112, 3, 'AC', '58', 'Available'),
(113, 3, 'AC', '59', 'Available'),
(114, 3, 'AC', '60', 'Available'),
(115, 3, 'AC', '61', 'Available'),
(116, 3, 'AC', '62', 'Available'),
(117, 3, 'AC', '63', 'Available'),
(118, 3, 'AC', '64', 'Available'),
(119, 3, 'AC', '65', 'Available'),
(120, 3, 'AC', '66', 'Available'),
(121, 3, 'AC', '67', 'Available'),
(122, 3, 'AC', '68', 'Available'),
(123, 3, 'AC', '69', 'Available'),
(124, 3, 'AC', '70', 'Available'),
(125, 3, 'AC', '71', 'Available'),
(126, 3, 'AC', '72', 'Available'),
(127, 3, 'AC', '73', 'Available'),
(128, 3, 'AC', '74', 'Available'),
(129, 3, 'AC', '75', 'Available'),
(130, 3, 'AC', '76', 'Available'),
(131, 3, 'AC', '77', 'Available'),
(132, 3, 'AC', '78', 'Available'),
(133, 3, 'AC', '79', 'Available'),
(134, 3, 'AC', '80', 'Available'),
(135, 3, 'AC', '81', 'Available'),
(136, 3, 'AC', '82', 'Available'),
(137, 3, 'AC', '83', 'Available'),
(138, 3, 'AC', '84', 'Available'),
(139, 3, 'AC', '85', 'Available'),
(140, 3, 'AC', '86', 'Available'),
(141, 3, 'AC', '87', 'Available'),
(142, 3, 'AC', '88', 'Available'),
(143, 3, 'AC', '89', 'Available'),
(144, 3, 'AC', '90', 'Available'),
(145, 3, 'AC', '91', 'Available'),
(146, 3, 'AC', '92', 'Available'),
(147, 3, 'AC', '93', 'Available'),
(148, 3, 'AC', '94', 'Available'),
(149, 3, 'AC', '95', 'Available'),
(150, 3, 'AC', '96', 'Available'),
(151, 3, 'AC', '97', 'Available'),
(152, 3, 'AC', '98', 'Available'),
(153, 3, 'AC', '99', 'Available'),
(154, 3, 'AC', '100', 'Available'),
(155, 3, 'Non-AC', '1', 'Available'),
(156, 3, 'Non-AC', '2', 'Available'),
(157, 3, 'Non-AC', '3', 'Available'),
(158, 3, 'Non-AC', '4', 'Available'),
(159, 3, 'Non-AC', '5', 'Available'),
(160, 3, 'Non-AC', '6', 'Available'),
(161, 3, 'Non-AC', '7', 'Available'),
(162, 3, 'Non-AC', '8', 'Available'),
(163, 3, 'Non-AC', '9', 'Available'),
(164, 3, 'Non-AC', '10', 'Available'),
(165, 3, 'Non-AC', '11', 'Available'),
(166, 3, 'Non-AC', '12', 'Available'),
(167, 3, 'Non-AC', '13', 'Available'),
(168, 3, 'Non-AC', '14', 'Available'),
(169, 3, 'Non-AC', '15', 'Available'),
(170, 3, 'Non-AC', '16', 'Available'),
(171, 3, 'Non-AC', '17', 'Available'),
(172, 3, 'Non-AC', '18', 'Available'),
(173, 3, 'Non-AC', '19', 'Available'),
(174, 3, 'Non-AC', '20', 'Available'),
(175, 3, 'Non-AC', '21', 'Available'),
(176, 3, 'Non-AC', '22', 'Available'),
(177, 3, 'Non-AC', '23', 'Available'),
(178, 3, 'Non-AC', '24', 'Available'),
(179, 3, 'Non-AC', '25', 'Available'),
(180, 3, 'Non-AC', '26', 'Available'),
(181, 3, 'Non-AC', '27', 'Available'),
(182, 3, 'Non-AC', '28', 'Available'),
(183, 3, 'Non-AC', '29', 'Available'),
(184, 3, 'Non-AC', '30', 'Available'),
(185, 3, 'Non-AC', '31', 'Available'),
(186, 3, 'Non-AC', '32', 'Available'),
(187, 3, 'Non-AC', '33', 'Available'),
(188, 3, 'Non-AC', '34', 'Available'),
(189, 3, 'Non-AC', '35', 'Available'),
(190, 3, 'Non-AC', '36', 'Available'),
(191, 3, 'Non-AC', '37', 'Available'),
(192, 3, 'Non-AC', '38', 'Available'),
(193, 3, 'Non-AC', '39', 'Available'),
(194, 3, 'Non-AC', '40', 'Available'),
(195, 3, 'Non-AC', '41', 'Available'),
(196, 3, 'Non-AC', '42', 'Available'),
(197, 3, 'Non-AC', '43', 'Available'),
(198, 3, 'Non-AC', '44', 'Available'),
(199, 3, 'Non-AC', '45', 'Available'),
(200, 3, 'Non-AC', '46', 'Available'),
(201, 3, 'Non-AC', '47', 'Available'),
(202, 3, 'Non-AC', '48', 'Available'),
(203, 3, 'Non-AC', '49', 'Available'),
(204, 3, 'Non-AC', '50', 'Available'),
(205, 3, 'Non-AC', '51', 'Available'),
(206, 3, 'Non-AC', '52', 'Available'),
(207, 3, 'Non-AC', '53', 'Available'),
(208, 3, 'Non-AC', '54', 'Available'),
(209, 3, 'Non-AC', '55', 'Available'),
(210, 3, 'Non-AC', '56', 'Available'),
(211, 3, 'Non-AC', '57', 'Available'),
(212, 3, 'Non-AC', '58', 'Available'),
(213, 3, 'Non-AC', '59', 'Available'),
(214, 3, 'Non-AC', '60', 'Available'),
(215, 3, 'Non-AC', '61', 'Available'),
(216, 3, 'Non-AC', '62', 'Available'),
(217, 3, 'Non-AC', '63', 'Available'),
(218, 3, 'Non-AC', '64', 'Available'),
(219, 3, 'Non-AC', '65', 'Available'),
(220, 3, 'Non-AC', '66', 'Available'),
(221, 3, 'Non-AC', '67', 'Available'),
(222, 3, 'Non-AC', '68', 'Available'),
(223, 3, 'Non-AC', '69', 'Available'),
(224, 3, 'Non-AC', '70', 'Available'),
(225, 3, 'Non-AC', '71', 'Available'),
(226, 3, 'Non-AC', '72', 'Available'),
(227, 3, 'Non-AC', '73', 'Available'),
(228, 3, 'Non-AC', '74', 'Available'),
(229, 3, 'Non-AC', '75', 'Available'),
(230, 3, 'Non-AC', '76', 'Available'),
(231, 3, 'Non-AC', '77', 'Available'),
(232, 3, 'Non-AC', '78', 'Available'),
(233, 3, 'Non-AC', '79', 'Available'),
(234, 3, 'Non-AC', '80', 'Available'),
(235, 3, 'Non-AC', '81', 'Available'),
(236, 3, 'Non-AC', '82', 'Available'),
(237, 3, 'Non-AC', '83', 'Available'),
(238, 3, 'Non-AC', '84', 'Available'),
(239, 3, 'Non-AC', '85', 'Available'),
(240, 3, 'Non-AC', '86', 'Available'),
(241, 3, 'Non-AC', '87', 'Available'),
(242, 3, 'Non-AC', '88', 'Available'),
(243, 3, 'Non-AC', '89', 'Available'),
(244, 3, 'Non-AC', '90', 'Available'),
(245, 3, 'Non-AC', '91', 'Available'),
(246, 3, 'Non-AC', '92', 'Available'),
(247, 3, 'Non-AC', '93', 'Available'),
(248, 3, 'Non-AC', '94', 'Available'),
(249, 3, 'Non-AC', '95', 'Available'),
(250, 3, 'Non-AC', '96', 'Available'),
(251, 3, 'Non-AC', '97', 'Available'),
(252, 3, 'Non-AC', '98', 'Available'),
(253, 3, 'Non-AC', '99', 'Available'),
(254, 3, 'Non-AC', '100', 'Available'),
(255, 3, 'Non-AC', '101', 'Available'),
(256, 3, 'Non-AC', '102', 'Available'),
(257, 3, 'Non-AC', '103', 'Available'),
(258, 3, 'Non-AC', '104', 'Available'),
(259, 3, 'Non-AC', '105', 'Available'),
(260, 3, 'Non-AC', '106', 'Available'),
(261, 3, 'Non-AC', '107', 'Available'),
(262, 3, 'Non-AC', '108', 'Available'),
(263, 3, 'Non-AC', '109', 'Available'),
(264, 3, 'Non-AC', '110', 'Available'),
(265, 3, 'Non-AC', '111', 'Available'),
(266, 3, 'Non-AC', '112', 'Available'),
(267, 3, 'Non-AC', '113', 'Available'),
(268, 3, 'Non-AC', '114', 'Available'),
(269, 3, 'Non-AC', '115', 'Available'),
(270, 3, 'Non-AC', '116', 'Available'),
(271, 3, 'Non-AC', '117', 'Available'),
(272, 3, 'Non-AC', '118', 'Available'),
(273, 3, 'Non-AC', '119', 'Available'),
(274, 3, 'Non-AC', '120', 'Available'),
(275, 3, 'Non-AC', '121', 'Available'),
(276, 3, 'Non-AC', '122', 'Available'),
(277, 3, 'Non-AC', '123', 'Available'),
(278, 3, 'Non-AC', '124', 'Available'),
(279, 3, 'Non-AC', '125', 'Available'),
(280, 3, 'Non-AC', '126', 'Available'),
(281, 3, 'Non-AC', '127', 'Available'),
(282, 3, 'Non-AC', '128', 'Available'),
(283, 3, 'Non-AC', '129', 'Available'),
(284, 3, 'Non-AC', '130', 'Available'),
(285, 3, 'Non-AC', '131', 'Available'),
(286, 3, 'Non-AC', '132', 'Available'),
(287, 3, 'Non-AC', '133', 'Available'),
(288, 3, 'Non-AC', '134', 'Available'),
(289, 3, 'Non-AC', '135', 'Available'),
(290, 3, 'Non-AC', '136', 'Available'),
(291, 3, 'Non-AC', '137', 'Available'),
(292, 3, 'Non-AC', '138', 'Available'),
(293, 3, 'Non-AC', '139', 'Available'),
(294, 3, 'Non-AC', '140', 'Available'),
(295, 3, 'Non-AC', '141', 'Available'),
(296, 3, 'Non-AC', '142', 'Available'),
(297, 3, 'Non-AC', '143', 'Available'),
(298, 3, 'Non-AC', '144', 'Available'),
(299, 3, 'Non-AC', '145', 'Available'),
(300, 3, 'Non-AC', '146', 'Available'),
(301, 3, 'Non-AC', '147', 'Available'),
(302, 3, 'Non-AC', '148', 'Available'),
(303, 3, 'Non-AC', '149', 'Available'),
(304, 3, 'Non-AC', '150', 'Available'),
(305, 3, 'Non-AC', '151', 'Available'),
(306, 3, 'Non-AC', '152', 'Available'),
(307, 3, 'Non-AC', '153', 'Available'),
(308, 3, 'Non-AC', '154', 'Available'),
(309, 3, 'Non-AC', '155', 'Available'),
(310, 3, 'Non-AC', '156', 'Available'),
(311, 3, 'Non-AC', '157', 'Available'),
(312, 3, 'Non-AC', '158', 'Available'),
(313, 3, 'Non-AC', '159', 'Available'),
(314, 3, 'Non-AC', '160', 'Available'),
(315, 3, 'Non-AC', '161', 'Available'),
(316, 3, 'Non-AC', '162', 'Available'),
(317, 3, 'Non-AC', '163', 'Available'),
(318, 3, 'Non-AC', '164', 'Available'),
(319, 3, 'Non-AC', '165', 'Available'),
(320, 3, 'Non-AC', '166', 'Available'),
(321, 3, 'Non-AC', '167', 'Available'),
(322, 3, 'Non-AC', '168', 'Available'),
(323, 3, 'Non-AC', '169', 'Available'),
(324, 3, 'Non-AC', '170', 'Available'),
(325, 3, 'Non-AC', '171', 'Available'),
(326, 3, 'Non-AC', '172', 'Available'),
(327, 3, 'Non-AC', '173', 'Available'),
(328, 3, 'Non-AC', '174', 'Available'),
(329, 3, 'Non-AC', '175', 'Available'),
(330, 3, 'Non-AC', '176', 'Available'),
(331, 3, 'Non-AC', '177', 'Available'),
(332, 3, 'Non-AC', '178', 'Available'),
(333, 3, 'Non-AC', '179', 'Available'),
(334, 3, 'Non-AC', '180', 'Available'),
(335, 3, 'Non-AC', '181', 'Available'),
(336, 3, 'Non-AC', '182', 'Available'),
(337, 3, 'Non-AC', '183', 'Available'),
(338, 3, 'Non-AC', '184', 'Available'),
(339, 3, 'Non-AC', '185', 'Available'),
(340, 3, 'Non-AC', '186', 'Available'),
(341, 3, 'Non-AC', '187', 'Available'),
(342, 3, 'Non-AC', '188', 'Available'),
(343, 3, 'Non-AC', '189', 'Available'),
(344, 3, 'Non-AC', '190', 'Available'),
(345, 3, 'Non-AC', '191', 'Available'),
(346, 3, 'Non-AC', '192', 'Available'),
(347, 3, 'Non-AC', '193', 'Available'),
(348, 3, 'Non-AC', '194', 'Available'),
(349, 3, 'Non-AC', '195', 'Available'),
(350, 3, 'Non-AC', '196', 'Available'),
(351, 3, 'Non-AC', '197', 'Available'),
(352, 3, 'Non-AC', '198', 'Available'),
(353, 3, 'Non-AC', '199', 'Available'),
(354, 3, 'Non-AC', '200', 'Available'),
(355, 3, 'Cabin', '1', 'Available'),
(356, 3, 'Cabin', '2', 'Available'),
(357, 3, 'Cabin', '3', 'Available'),
(358, 3, 'Cabin', '4', 'Available'),
(359, 3, 'Cabin', '5', 'Available'),
(360, 3, 'Cabin', '6', 'Available'),
(361, 3, 'Cabin', '7', 'Available'),
(362, 3, 'Cabin', '8', 'Available'),
(363, 3, 'Cabin', '9', 'Available'),
(364, 3, 'Cabin', '10', 'Available'),
(365, 3, 'Cabin', '11', 'Available'),
(366, 3, 'Cabin', '12', 'Available'),
(367, 3, 'Cabin', '13', 'Available'),
(368, 3, 'Cabin', '14', 'Available'),
(369, 3, 'Cabin', '15', 'Available'),
(370, 3, 'Cabin', '16', 'Available'),
(371, 3, 'Cabin', '17', 'Available'),
(372, 3, 'Cabin', '18', 'Available'),
(373, 3, 'Cabin', '19', 'Available'),
(374, 3, 'Cabin', '20', 'Available'),
(375, 3, 'Cabin', '21', 'Available'),
(376, 3, 'Cabin', '22', 'Available'),
(377, 3, 'Cabin', '23', 'Available'),
(378, 3, 'Cabin', '24', 'Available'),
(379, 3, 'Cabin', '25', 'Available'),
(380, 3, 'Cabin', '26', 'Available'),
(381, 3, 'Cabin', '27', 'Available'),
(382, 3, 'Cabin', '28', 'Available'),
(383, 3, 'Cabin', '29', 'Available'),
(384, 3, 'Cabin', '30', 'Available'),
(385, 3, 'Cabin', '1', 'Available'),
(386, 3, 'Cabin', '2', 'Available'),
(387, 3, 'Cabin', '3', 'Available'),
(388, 3, 'Cabin', '4', 'Available'),
(389, 3, 'Cabin', '5', 'Available'),
(390, 3, 'Cabin', '6', 'Available'),
(391, 3, 'Cabin', '7', 'Available'),
(392, 3, 'Cabin', '8', 'Available'),
(393, 3, 'Cabin', '9', 'Available'),
(394, 3, 'Cabin', '10', 'Available'),
(395, 3, 'Cabin', '11', 'Available'),
(396, 3, 'Cabin', '12', 'Available'),
(397, 3, 'Cabin', '13', 'Available'),
(398, 3, 'Cabin', '14', 'Available'),
(399, 3, 'Cabin', '15', 'Available'),
(400, 3, 'Cabin', '16', 'Available'),
(401, 3, 'Cabin', '17', 'Available'),
(402, 3, 'Cabin', '18', 'Available'),
(403, 3, 'Cabin', '19', 'Available'),
(404, 3, 'Cabin', '20', 'Available'),
(405, 3, 'Cabin', '1', 'Available'),
(406, 3, 'Cabin', '2', 'Available'),
(407, 3, 'Cabin', '3', 'Available'),
(408, 3, 'Cabin', '4', 'Available'),
(409, 3, 'Cabin', '5', 'Available'),
(410, 3, 'Cabin', '6', 'Available'),
(411, 3, 'Cabin', '7', 'Available'),
(412, 3, 'Cabin', '8', 'Available'),
(413, 3, 'Cabin', '9', 'Available'),
(414, 3, 'Cabin', '10', 'Available'),
(415, 3, 'Cabin', '11', 'Available'),
(416, 3, 'Cabin', '12', 'Available'),
(417, 3, 'Cabin', '13', 'Available'),
(418, 3, 'Cabin', '14', 'Available'),
(419, 3, 'Cabin', '15', 'Available'),
(420, 3, 'Cabin', '16', 'Available'),
(421, 3, 'Cabin', '17', 'Available'),
(422, 3, 'Cabin', '18', 'Available'),
(423, 3, 'Cabin', '19', 'Available'),
(424, 3, 'Cabin', '20', 'Available'),
(425, 3, 'Cabin', '21', 'Available'),
(426, 3, 'Cabin', '22', 'Available'),
(427, 3, 'Cabin', '23', 'Available'),
(428, 3, 'Cabin', '24', 'Available'),
(429, 3, 'Cabin', '25', 'Available'),
(430, 3, 'Cabin', '26', 'Available'),
(431, 3, 'Cabin', '27', 'Available'),
(432, 3, 'Cabin', '28', 'Available'),
(433, 3, 'Cabin', '29', 'Available'),
(434, 3, 'Cabin', '30', 'Available'),
(435, 3, 'Cabin', '31', 'Available'),
(436, 3, 'Cabin', '32', 'Available'),
(437, 3, 'Cabin', '33', 'Available'),
(438, 3, 'Cabin', '34', 'Available'),
(439, 3, 'Cabin', '35', 'Available'),
(440, 3, 'Cabin', '36', 'Available'),
(441, 3, 'Cabin', '37', 'Available'),
(442, 3, 'Cabin', '38', 'Available'),
(443, 3, 'Cabin', '39', 'Available'),
(444, 3, 'Cabin', '40', 'Available'),
(445, 3, 'Cabin', '41', 'Available'),
(446, 3, 'Cabin', '42', 'Available'),
(447, 3, 'Cabin', '43', 'Available'),
(448, 3, 'Cabin', '44', 'Available'),
(449, 3, 'Cabin', '45', 'Available'),
(450, 3, 'Cabin', '46', 'Available'),
(451, 3, 'Cabin', '47', 'Available'),
(452, 3, 'Cabin', '48', 'Available'),
(453, 3, 'Cabin', '49', 'Available'),
(454, 3, 'Cabin', '50', 'Available'),
(455, 4, 'AC', '1', 'Available'),
(456, 4, 'AC', '2', 'Booked'),
(457, 4, 'AC', '3', 'Booked'),
(458, 4, 'AC', '4', 'Available'),
(459, 4, 'AC', '5', 'Available'),
(460, 4, 'AC', '6', 'Available'),
(461, 4, 'AC', '7', 'Available'),
(462, 4, 'AC', '8', 'Available'),
(463, 4, 'AC', '9', 'Available'),
(464, 4, 'AC', '10', 'Available'),
(465, 4, 'AC', '11', 'Available'),
(466, 4, 'AC', '12', 'Available'),
(467, 4, 'AC', '13', 'Available'),
(468, 4, 'AC', '14', 'Available'),
(469, 4, 'AC', '15', 'Available'),
(470, 4, 'AC', '16', 'Available'),
(471, 4, 'AC', '17', 'Available'),
(472, 4, 'AC', '18', 'Available'),
(473, 4, 'AC', '19', 'Available'),
(474, 4, 'AC', '20', 'Available'),
(475, 4, 'AC', '21', 'Available'),
(476, 4, 'AC', '22', 'Available'),
(477, 4, 'AC', '23', 'Available'),
(478, 4, 'AC', '24', 'Available'),
(479, 4, 'AC', '25', 'Available'),
(480, 4, 'AC', '26', 'Available'),
(481, 4, 'AC', '27', 'Available'),
(482, 4, 'AC', '28', 'Available'),
(483, 4, 'AC', '29', 'Available'),
(484, 4, 'AC', '30', 'Available'),
(485, 4, 'AC', '31', 'Available'),
(486, 4, 'AC', '32', 'Available'),
(487, 4, 'AC', '33', 'Available'),
(488, 4, 'AC', '34', 'Available'),
(489, 4, 'AC', '35', 'Available'),
(490, 4, 'AC', '36', 'Available'),
(491, 4, 'AC', '37', 'Available'),
(492, 4, 'AC', '38', 'Available'),
(493, 4, 'AC', '39', 'Available'),
(494, 4, 'AC', '40', 'Available'),
(495, 4, 'AC', '41', 'Available'),
(496, 4, 'AC', '42', 'Available'),
(497, 4, 'AC', '43', 'Available'),
(498, 4, 'AC', '44', 'Available'),
(499, 4, 'AC', '45', 'Available'),
(500, 4, 'Non-AC', '1', 'Available'),
(501, 4, 'Non-AC', '2', 'Available'),
(502, 4, 'Non-AC', '3', 'Available'),
(503, 4, 'Non-AC', '4', 'Available'),
(504, 4, 'Non-AC', '5', 'Available'),
(505, 4, 'Non-AC', '6', 'Available'),
(506, 4, 'Non-AC', '7', 'Available'),
(507, 4, 'Non-AC', '8', 'Available'),
(508, 4, 'Non-AC', '9', 'Available'),
(509, 4, 'Non-AC', '10', 'Available'),
(510, 4, 'Non-AC', '11', 'Available'),
(511, 4, 'Non-AC', '12', 'Available'),
(512, 4, 'Non-AC', '13', 'Available'),
(513, 4, 'Non-AC', '14', 'Available'),
(514, 4, 'Non-AC', '15', 'Available'),
(515, 4, 'Non-AC', '16', 'Available'),
(516, 4, 'Non-AC', '17', 'Available'),
(517, 4, 'Non-AC', '18', 'Available'),
(518, 4, 'Non-AC', '19', 'Available'),
(519, 4, 'Non-AC', '20', 'Available'),
(520, 4, 'Non-AC', '21', 'Available'),
(521, 4, 'Non-AC', '22', 'Available'),
(522, 4, 'Non-AC', '23', 'Available'),
(523, 4, 'Non-AC', '24', 'Available'),
(524, 4, 'Non-AC', '25', 'Available'),
(525, 4, 'Non-AC', '26', 'Available'),
(526, 4, 'Non-AC', '27', 'Available'),
(527, 4, 'Non-AC', '28', 'Available'),
(528, 4, 'Non-AC', '29', 'Available'),
(529, 4, 'Non-AC', '30', 'Available'),
(530, 4, 'Non-AC', '31', 'Available'),
(531, 4, 'Non-AC', '32', 'Available'),
(532, 4, 'Non-AC', '33', 'Available'),
(533, 4, 'Non-AC', '34', 'Available'),
(534, 4, 'Non-AC', '35', 'Available'),
(535, 4, 'Non-AC', '36', 'Available'),
(536, 4, 'Non-AC', '37', 'Available'),
(537, 4, 'Non-AC', '38', 'Available'),
(538, 4, 'Non-AC', '39', 'Available'),
(539, 4, 'Non-AC', '40', 'Available'),
(540, 4, 'Non-AC', '41', 'Available'),
(541, 4, 'Non-AC', '42', 'Available'),
(542, 4, 'Non-AC', '43', 'Available'),
(543, 4, 'Non-AC', '44', 'Available'),
(544, 4, 'Non-AC', '45', 'Available'),
(545, 4, 'Non-AC', '46', 'Available'),
(546, 4, 'Non-AC', '47', 'Available'),
(547, 4, 'Non-AC', '48', 'Available'),
(548, 4, 'Non-AC', '49', 'Available'),
(549, 4, 'Non-AC', '50', 'Available'),
(550, 4, 'Non-AC', '51', 'Available'),
(551, 4, 'Non-AC', '52', 'Available'),
(552, 4, 'Non-AC', '53', 'Available'),
(553, 4, 'Non-AC', '54', 'Available'),
(554, 4, 'Non-AC', '55', 'Available'),
(555, 4, 'Non-AC', '56', 'Available'),
(556, 4, 'Non-AC', '57', 'Available'),
(557, 4, 'Non-AC', '58', 'Available'),
(558, 4, 'Non-AC', '59', 'Available'),
(559, 4, 'Non-AC', '60', 'Available'),
(560, 4, 'Cabin', '1', 'Available'),
(561, 4, 'Cabin', '2', 'Available'),
(562, 4, 'Cabin', '3', 'Available'),
(563, 4, 'Cabin', '4', 'Available'),
(564, 4, 'Cabin', '5', 'Available'),
(565, 4, 'Cabin', '6', 'Available'),
(566, 4, 'Cabin', '7', 'Available'),
(567, 4, 'Cabin', '8', 'Available'),
(568, 4, 'Cabin', '9', 'Available'),
(569, 4, 'Cabin', '10', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `train_id` int(11) DEFAULT NULL,
  `seat_id` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`ticket_id`, `user_id`, `train_id`, `seat_id`, `price`, `booking_date`, `created_at`) VALUES
(16, 1, 4, 456, 500.00, '2025-04-21 21:14:32', '2025-04-22 03:14:32'),
(17, 1, 4, 457, 500.00, '2025-04-21 21:14:36', '2025-04-22 03:14:36'),
(19, 1, 2, 5, 500.00, '2025-04-29 13:37:26', '2025-04-29 19:37:26');

-- --------------------------------------------------------

--
-- Table structure for table `trains`
--

CREATE TABLE `trains` (
  `train_id` int(11) NOT NULL,
  `train_name` varchar(255) NOT NULL,
  `departure_time` time NOT NULL,
  `arrival_time` time NOT NULL,
  `start_station` varchar(255) NOT NULL,
  `end_station` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trains`
--

INSERT INTO `trains` (`train_id`, `train_name`, `departure_time`, `arrival_time`, `start_station`, `end_station`) VALUES
(2, 'titash', '01:05:00', '01:05:00', 'Komolapur', 'Brahmanbaria'),
(3, 'UPABAN', '19:20:00', '19:15:00', 'Dhaka', 'Sylhet'),
(4, 'Nusrat Express', '22:15:00', '22:10:00', 'Dhaka', 'Dinajpur');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`) VALUES
(1, 'Md.Iftekhar Uddin', 'iftek155@gmail.com', '$2y$10$2Xm8PGEikOgzNie3IDEw9.iYdk3x.O.kwkJK77QfekbFs/I1kYHiq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `train_id` (`train_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`seat_id`),
  ADD KEY `train_id` (`train_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `train_id` (`train_id`),
  ADD KEY `seat_id` (`seat_id`);

--
-- Indexes for table `trains`
--
ALTER TABLE `trains`
  ADD PRIMARY KEY (`train_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `seat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=570;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `trains`
--
ALTER TABLE `trains`
  MODIFY `train_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`train_id`) REFERENCES `trains` (`train_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `seats`
--
ALTER TABLE `seats`
  ADD CONSTRAINT `seats_ibfk_1` FOREIGN KEY (`train_id`) REFERENCES `trains` (`train_id`) ON DELETE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`train_id`) REFERENCES `trains` (`train_id`),
  ADD CONSTRAINT `tickets_ibfk_3` FOREIGN KEY (`seat_id`) REFERENCES `seats` (`seat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
