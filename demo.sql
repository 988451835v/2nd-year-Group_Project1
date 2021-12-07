-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2021 at 01:02 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `gid` char(5) NOT NULL,
  `g_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`gid`, `g_name`) VALUES
('G1', 'Grade 1'),
('G2', 'Grade 2'),
('G3', 'Grade 3'),
('G4', 'Grade 4'),
('G5', 'Grade 5');

-- --------------------------------------------------------

--
-- Table structure for table `grade_teacher`
--

CREATE TABLE `grade_teacher` (
  `teacher_id` int(11) NOT NULL,
  `gid` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL DEFAULT '0',
  `last_name` varchar(255) NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '0',
  `password` varchar(255) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `type` varchar(255) NOT NULL DEFAULT '0',
  `status` varchar(20) NOT NULL,
  `img` varchar(255) NOT NULL,
  `c_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `first_name`, `last_name`, `email`, `password`, `created_at`, `updated_at`, `type`, `status`, `img`, `c_status`) VALUES
(33, 'Esari', 'Vithana', 'esariupendri1997@gmail.com', '$2y$04$aOfzWy0Eg6w0fu1doT1Fh.LrX8W4fu76I6Y62ne7kxgRecNoiiukS', '2021-09-30 18:58:10', '2021-09-30 18:58:10', 'student', '', '0', '0'),
(34, 'Samadi', 'Bhagya', 'samadi@gmail.com', '$2y$04$oUy2Mk8wi1O3SCszQND2dOwbzXqYzGjJtmKkdGfCmvMRzltNOr8qa', '2021-09-30 19:21:37', '2021-09-30 19:21:37', 'student', '', '0', '0'),
(35, 'Samadi', 'fernando', 'buddhima12@gmail.com', '$2y$04$vimo83TbuCyAPMbVzodNleFsFf88kyx6LBV1gVNg0RrVFmnWlZY62', '2021-10-02 19:03:22', '2021-10-02 19:03:22', 'student', '', '0', '0'),
(36, 'Samadi', 'Bhagya', 'sam@gmail.com', '$2y$04$Eu.fzx21XNm7htwP0pif9.FCdpBSLoMwImwM2rKgswr9I8yg4TBMa', '2021-10-02 19:13:13', '2021-10-02 19:13:13', 'student', '', '0', '0'),
(37, 'Neeta', 'Perera', 'neeta@gmail.com', '$2y$04$raEAtGLAEwvQC8jCOCP5R.JjBKt8NXq/e.EM.m1m7R.QiT/A/FUxC', '2021-10-03 05:59:19', '2021-10-03 05:59:19', 'student', '', '0', '0'),
(38, 'Jane', 'Fernando', 'jane@gmail.com', '$2y$04$gy98a7fVPyciyBpchS22Yu61JdsZtMcqDPlV91gzTAccTXW0v0CXW', '2021-10-03 06:06:59', '2021-10-03 06:06:59', 'student', '', '0', '0'),
(39, 'Senuli', 'Perera', 'piyumi@gmail.com', '$2y$04$DFIjS7Xi78KqlbeoI2wgwOtJdItSOWLb3TYaSTKqsAVrIphtDdytm', '2021-10-03 06:25:12', '2021-10-03 06:25:12', 'student', '', '0', '0'),
(40, 'Hashani', 'Gunarathna', 'hashani@gmail.com', '$2y$04$hRNGYFr.05rWxJ6u6nIuX.FswSqnWLkqBYyKC/ZoNLXV.52/ccoRW', '2021-10-03 06:38:32', '2021-10-03 06:38:32', 'student', '', '0', '0'),
(41, 'Shaini', 'Perera', 'shaini@gmail.com', '$2y$04$0TC6oOMtxGqgLcsJd2fWGuLVSagpngVlJ9xiMZiHCuZd.PUp.Ffcm', '2021-10-03 09:40:52', '2021-10-03 09:40:52', 'student', '', '0', '0'),
(42, 'Shalini', 'Perera', 'shalini@gmail.com', '$2y$04$ZPVixpgIXrBLQhMoOOIddO2lG9Ajk/.d3xPZzVF5ydCrD/Ak7Brl.', '2021-10-03 09:45:55', '2021-10-03 09:45:55', 'student', '', '0', '0'),
(43, 'Anne', 'Thisera', 'anne@gmail.com', '$2y$04$zHU04VtAZ/rzVA1rvWngjOM5eiahZp4nslRyQn0jQrJiJxIebzxui', '2021-10-03 09:52:32', '2021-10-03 09:52:32', 'student', '', '0', '0'),
(44, 'Anne', 'Thisera', 'anny@gmail.com', '$2y$04$fZFXaZpB6KEiE0wXtx56tejetonWGwj0QRHAelJIrY3/MAOOoufk2', '2021-10-03 09:53:46', '2021-10-03 09:53:46', 'student', '', '0', '0'),
(45, 'Janul', 'Kumar', 'Janul@gmail.com', '$2y$04$bG1K9Uinq.OZp10mGXiOuuRg69nDz6.TiUBZvlXThir.ySEbbs7xa', '2021-10-03 18:59:00', '2021-10-03 18:59:00', 'student', '', '0', '0'),
(46, 'Harry', 'Perera', 'har@gmail.com', '$2y$04$BNJhaxMFIoiWqWBBS8lu6.nV3FnrzZKi2lai5FKm7cxznzACz8Pbq', '2021-10-05 10:03:04', '2021-10-05 10:03:04', 'student', '', '0', '0'),
(47, 'tina', 'yong', 'tina@gmail.com', '$2y$04$aE0aQn593I0nFuuWh7hzQuQJSqz0yXJXj9eX1pdQc8eEvdvHzXPOO', '2021-10-08 17:45:53', '2021-10-08 17:45:53', 'teacher', 'accepted', '0', '0'),
(48, 'Yeeni', 'Kumari', 'Yeeni@gmail.com', '$2y$04$epJ1iHDYZdrj8SeCv9kO6.R4tTn8LVRXbto6/tI4Cg5gg2IOh4Kze', '2021-10-09 09:33:47', '2021-10-09 09:33:47', 'teacher', '', '0', '0'),
(49, 'Teena', 'Polari', 'Teena@gmail.com', '$2y$04$HzHv6nk7kMwRhirSL3wDBeos6sKE6XcltWDRTo9xrU9lQXKRC5gJy', '2021-10-09 13:48:37', '2021-10-09 13:48:37', 'teacher', '', '0', '0'),
(50, 'Ronali', 'Perera', 'Ronali@gmail.com', '$2y$04$0cTaIvrlXY1w4v7AOtNDPeORjl47MKw8m8ERpjRTbf1v9WqQLl6XO', '2021-10-10 05:26:08', '2021-10-10 05:26:08', 'teacher', '', '0', '0'),
(51, 'Ruwani', 'Perera', 'Ruwani@gmail.com', '$2y$04$VBeJ8qXUGZ6TG/JdSwG4t.sdZx5Q4F8PUE5BniTGHaMvnX4x9.fCq', '2021-10-10 08:36:58', '2021-10-10 08:36:58', 'teacher', '', '0', '0'),
(52, 'Teesha', 'Kumari', 'Teema@gmail.com', '$2y$04$lDopG/jLeWuAPHG7brwsOeNZp8ZSSX9a82Ravs39dUGZFq6z447aO', '2021-10-10 10:10:04', '2021-10-10 10:10:04', 'teacher', '', '0', '0'),
(53, 'Ruvini', 'Perera', 'Ruvini@gmail.com', '$2y$04$4l7l/vPTcLhwoDoJ/T1LdunZD0u6j4kfdpXjbo2QsYM/5CIbaPqgu', '2021-10-10 12:10:35', '2021-10-10 12:10:35', 'teacher', '', '0', '0'),
(54, 'Kamali', 'Perera', 'Kamali@gmail.com', '$2y$04$edxQkvwYt4YmfcpRnlh1Ju1rSyR9NRcIbIA/4FNtBcVnKzyDYmqR2', '2021-10-10 12:37:03', '2021-10-10 12:37:03', 'teacher', '', '0', '0'),
(55, 'Reesha', 'Olara', 'Reesha@gmail.com', '$2y$04$9sTrE8r.drqQ8Iz/iQLUquRuaa51hKu2HcLhM8x9usf7mjhH3OHv2', '2021-10-13 09:41:24', '2021-10-13 09:41:24', 'teacher', '', '0', '0'),
(56, 'Sara', 'Pitza', 'Sara@gmail.com', '$2y$04$Ch..bnQXZkPM9EcvCMTwtehf3XvLSLIc4hEJfSSgqTUxJjRlb1dbO', '2021-10-15 05:51:18', '2021-10-15 05:51:18', 'teacher', '', '0', '0'),
(57, 'Masha', 'Perera', 'Masha@gmail.com', '$2y$04$GOXCaLjrh/6s/k0ePwvpIewFaCVLubyKe/R76IFBWG9AY8Y3/krq6', '2021-10-15 12:06:21', '2021-10-15 12:06:21', 'teacher', '', '0', '0'),
(58, 'Geethani', 'Perera', 'Geethani@gmail.com', '$2y$04$35dAm7SESK12LEGZeBSEReROObWZS4XQCypBhdsfUF1NlWO/mPyvS', '2021-10-15 13:34:17', '2021-10-15 13:34:17', 'teacher', '', '0', '0'),
(59, 'Sanali', 'Janul', 'Sanali@gmail.com', '$2y$04$izREhjdRGCQBZH4GEkxoqeBdGbhktMtghFYGCVrK/8Mc0Gz7K.bYK', '2021-10-15 13:47:14', '2021-10-15 13:47:14', 'teacher', '', '0', '0'),
(60, 'Treena', 'Perera', 'Treena@gmail.com', '$2y$04$3GydGUaU6jrqNsdS/L/h2uOO7m5xTkn7uA.9GFcXp/cDn.LRK7aye', '2021-10-15 13:59:22', '2021-10-15 13:59:22', 'teacher', '', '0', '0'),
(61, 'Heema', 'Kamali', 'Heema@gmail.com', '$2y$04$Z8CSJUkesBGj2fVf7bYDheBxdJF4ygPcigE.rHS7ibISIZSH32OnS', '2021-10-15 14:01:39', '2021-10-15 14:01:39', 'teacher', '', '0', '0'),
(62, 'Weenai', 'Perera', 'Weenai@gmail.com', '$2y$04$Dme8uTlsf9cT9hY8CxS8QO/rrZhK57eeYDUYp1SEKQJSw/sSNppcW', '2021-10-15 14:23:49', '2021-10-15 14:23:49', 'teacher', '', '0', '0'),
(63, 'Havini', 'Perera', 'Havini@gmail.com', '$2y$04$3dEUiP6tIR48k2oK42Mp.OgBnXpg5M6rWc7MemSWwDlPEgK2v6YnK', '2021-10-15 14:33:12', '2021-10-15 14:33:12', 'teacher', 'accepted', 'teacher2.jpg', 'Offline now'),
(64, 'Nisha', 'Perera', 'Nishani@gmail.com', '$2y$04$1u3AuFS.0rxo6mc7URlW/eM9KgA4.Xyi5W9wNIlqYzT0eH3ER6kLy', '2021-10-15 14:40:12', '2021-10-15 14:40:12', 'teacher', '', '0', '0'),
(65, 'Samali', 'Perera', 'Samali@gmail.com', '$2y$04$MLX5iN8wmG8KvhIEzAMIheY00cBK0u4DqsHFdsmFxZQ2sI0j2buCq', '2021-10-15 14:54:09', '2021-10-15 14:54:09', 'admin', '', '0', 'Offline now'),
(66, 'Pasani', 'Lakmal', 'Pasani@gmail.com', '$2y$04$s.cZDrP7uVn0BPeYdQjq..d6UbXsV4LleMT9XLJL6OcablK0KwSym', '2021-10-18 05:00:49', '2021-10-18 05:00:49', 'teacher', '', '0', '0'),
(67, 'Error', 'Perera', 'Error@gmail.com', '$2y$04$W6wtWCrrucwnninf1Q0qme9rJuH48AsE5qj9dm/147SlzechvyVQq', '2021-10-18 09:05:11', '2021-10-18 09:05:11', 'teacher', '', '0', '0'),
(68, 'Risini', 'Perera', 'Risini@gmail.com', '$2y$04$J6O0XVZSc/VkcB4fATOYS.rmO3aa.g2k2d5hVdaunAYZX/0Vcc1zu', '2021-10-18 09:26:32', '2021-10-18 09:26:32', 'teacher', '', '0', '0'),
(69, 'Budi', 'Perera', 'Budi@gmail.com', '$2y$04$McUNA2RWkbHVcBYumGK3VOzWgW7TkGrhxgxERUuJFo8gHBLbCVDsW', '2021-10-18 09:44:11', '2021-10-18 09:44:11', 'teacher', '', '0', '0'),
(70, 'Geetha', 'Perera', 'Geethma@gmali.com', '$2y$04$CfPdM/jFxF9gqITRqCRLv.iT91cD/0AN9R.n17gdZShAl.vWZOMHy', '2021-10-18 11:00:14', '2021-10-18 11:00:14', 'teacher', '', '0', '0'),
(71, 'Yosa', 'Perera', 'Yosa@gmail.com', '$2y$04$94vzx2cH0Hn.7Vb/TMFApeHnDG7/jU0rJuxlsx6JQF8ftEOF.W85e', '2021-10-18 12:33:54', '2021-10-18 12:33:54', 'teacher', '', '0', '0'),
(72, 'Quala', 'Perera', 'Quala@gmail.com', '$2y$04$ykffFXxa1qO5LCq9HB1KPORKDVuGQT7nyjes0.HtMUZEFRwH28HaK', '2021-10-18 14:08:56', '2021-10-18 14:08:56', 'teacher', '', '0', '0'),
(73, 'Seena', 'Perera', 'Seena@gmail.com', '$2y$04$St3ovYz4efpHoM6yEz4F2e7XKrn6lUqbmTZaLMGwu.0PhlyKeZRXW', '2021-10-19 05:56:06', '2021-10-19 05:56:06', 'teacher', '', '0', '0'),
(74, 'Sriya', 'Monali', 'Sriya@gmail.com', '$2y$04$yERJChVKe0xNtBOjNSbuOOw9bfQM/adN4OhbOZwFnr/LRVIzgeoc.', '2021-10-19 06:41:43', '2021-10-19 06:41:43', 'teacher', '', '0', '0'),
(75, 'Tee', 'Kamali', 'Tissa@gmail.com', '$2y$04$kTBQZL9fHwEd4f4iV6iwhuQer8B4qCTSwXSMF3cOGTPe27EWirPLi', '2021-10-19 06:55:14', '2021-10-19 06:55:14', 'teacher', '', '0', '0'),
(76, 'Rala', 'Kamali', 'Rala@gmail.com', '$2y$04$R2cKhGvZH3zGrb65w6qDQ.jZpggKbUGHFo7UMejMS2UVOxGyXdRv6', '2021-10-19 07:01:37', '2021-10-19 07:01:37', 'teacher', '', '0', '0'),
(77, 'Ramri', 'Muwana', 'Ramri@gmail.com', '$2y$04$Y6WpStuODzEvAfxK8VV6vuGQ7zbPV5qqeih1eBP7R6VWYNu6P1TU2', '2021-10-19 10:06:03', '2021-10-19 10:06:03', 'teacher', '', '0', '0'),
(78, 'Sriyani', 'Perera', 'Sriyani@gmail.com', '$2y$04$.PbSekagDCO6AiKauxSEpuBhmR7riJX/LJAtRPVc4cnrtKHuapuOG', '2021-10-19 15:23:43', '2021-10-19 15:23:43', 'teacher', '', '0', '0'),
(79, 'Esa', 'Perera', 'Esari@gmail.com', '$2y$04$91ELB93.4.TGI9zFUz960.YgcI08JqFypnjk7F7CsryOe/f0L/8za', '2021-10-20 08:45:47', '2021-10-20 08:45:47', 'teacher', '', '0', '0'),
(81, 'Jaanu', 'Perera', 'Jaanu@gmail.com', '$2y$04$R//l772iw90bnswVLKGzfeTM3EiKnmts.ZFNHMHI1PA12eGArMY9W', '2021-10-21 07:32:45', '2021-10-21 07:32:45', 'teacher', '', '0', '0'),
(82, 'Teenal', 'Kumari', 'Teenal@gmail.com', '$2y$04$.lYXzV9UO.5Wo3QKE0q5oeg43H2KGgc0S5nE8v9o.Qp/62GDKhe/i', '2021-10-21 09:47:15', '2021-10-21 09:47:15', 'teacher', '', '0', '0'),
(83, 'Piyum', 'Perera', 'piyum@gmail.com', '$2y$04$qfADi2faENkew2EW3Qm55O2Opwyq4/ux3dh14uInQMiZ/SbEuoPV.', '2021-10-21 11:11:12', '2021-10-21 11:11:12', 'teacher', 'pending', '0', '0'),
(84, 'Seera', 'Perera', 'Seera@gmail.com', '$2y$04$FE3X5cqMwNIdkfluZp/uneTpO6mlqimGq7xVATtpYw1y1BP5VHpiK', '2021-10-21 11:25:50', '2021-10-21 11:25:50', 'teacher', 'accepted', '0', '0'),
(85, 'Reena', 'Perera', 'Reena@gmail.com', '$2y$04$qkxCTOBafIbKO8bKsFFqceM.je9v462fRRrhhxnffh/vuGGlmQTmm', '2021-10-21 16:52:52', '2021-10-21 16:52:52', 'teacher', 'pending', '0', '0'),
(86, 'Deela', 'Perera', 'Deela@gmail.com', '$2y$04$jL/CLWOgOHYc0AuPb/xPPOGdlIVl0XXFsnX5HB6tvAClscL4mIlzy', '2021-10-21 17:25:16', '2021-10-21 17:25:16', 'teacher', 'accepted', '0', '0'),
(87, 'Uma', 'Kamali', 'Uma@gmail.com', '$2y$04$8QHRsJCknNDHQkwuQ1sPtOc6zL8b33punu6txiVlpHuHbWrQ3S./W', '2021-10-21 17:47:22', '2021-10-21 17:47:22', 'teacher', 'accepted', '0', '0'),
(88, 'Tera', 'Perera', 'Tera@gmail.com', '$2y$04$3um8v3B22YPfDGm5QLkxXe2XBbCRAK.VyfESEhhOnBosEBRx33TGW', '2021-10-21 17:58:54', '2021-10-21 17:58:54', 'teacher', 'pending', '0', '0'),
(89, 'Geeth', 'Perera', 'Geeth@gmail.com', '$2y$04$lpCIe1tGzmCTrJcy62KwOejAE2jDavnJkAaB7p6UYBS1aW/gf9Nf6', '2021-10-21 18:08:27', '2021-10-21 18:08:27', 'teacher', 'accepted', '0', '0'),
(90, 'Seeni', 'Kamali', 'Seeni@gmail.com', '$2y$04$TdodUo3e.wx5FLmZ1wrTduhQbYu7htSH6aeNL7rVqPohNOhEP7Ske', '2021-10-21 18:59:20', '2021-10-21 18:59:20', 'teacher', 'pending', '0', '0'),
(91, 'Geema', 'Perera', 'Geema@gmail.com', '$2y$04$aiYnl4/CzuwQ3avvRIqODu0.np9rcuf1jeluG3N32D2elQ.n4VhU6', '2021-10-21 20:13:14', '2021-10-21 20:13:14', 'teacher', 'pending', '0', '0'),
(92, 'Yeema', 'Perera', 'Yeema@gmail.com', '$2y$04$D5vccZESFrfVbcGHax.0d.8SSYCmBTXyfrtX.3KPCLqFn3IqSTEb.', '2021-10-21 21:31:21', '2021-10-21 21:31:21', 'teacher', 'pending', '0', '0'),
(93, 'Reni', 'Perera', 'Reni@gmail.com', '$2y$04$zmrI7xJdLUD8w.or221Sr.CU5U2KUnBVzumqcE8Eq5YRO1CrwXNS2', '2021-10-22 04:36:37', '2021-10-22 04:36:37', 'teacher', 'accepted', '0', '0'),
(94, 'Seera', 'Perera', 'Seerani@gmail.com', '$2y$04$hu8uIhKsa/W8J64HrQbt1.O9hD4DpGLBKq/7QIgigrfsWgGC10g/u', '2021-10-22 06:15:17', '2021-10-22 06:15:17', 'teacher', 'pending', '0', '0'),
(95, 'Yonal', 'Perera', 'Yonal@gmail.com', '$2y$04$73AI9ltBXA43uhVxEmn9cOgAE8xRB/blpaSKVlXRny6b7YQKZd3IG', '2021-10-22 06:57:45', '2021-10-22 06:57:45', 'teacher', 'pending', '0', '0'),
(96, 'Eran', 'Perera', 'Eran@gmail.com', '$2y$04$162OJ8sZFpWLr/5CbrsELuoQVK6ugXc3CkGQHfTWh9ULsBqqxCu56', '2021-10-22 07:29:38', '2021-10-22 07:29:38', 'teacher', 'pending', '0', '0'),
(97, 'Samal', 'Perera', 'Samal@gmail.com', '$2y$04$VWqRmeTKqXW.X8YTCkiXDO4PV1gT0JacaKe6x/GMAQOajcjzpvIZK', '2021-10-22 08:04:03', '2021-10-22 08:04:03', 'teacher', 'pending', '0', '0'),
(98, 'Samani', 'Perera', 'Samani@gmail.com', '$2y$04$XMONUIz.1WFZ0qRYEmeFfeh5o2CuRORJQ.jyR5NS1RPxrj6SFQy9S', '2021-10-22 09:32:16', '2021-10-22 09:32:16', 'teacher', 'pending', '0', '0'),
(99, 'Amara', 'Perera', 'Amara@gmail.com', '$2y$04$pgMAhvIA8Kap6T7JivO/S.kN1L9o8lq8IOh7MxcsCcEMfBiHo0J1G', '2021-10-22 09:55:31', '2021-10-22 09:55:31', 'teacher', 'pending', '0', '0'),
(100, 'Resini', 'Perera', 'Resini@gmail.com', '$2y$04$.kVdsKVwil015Smq1V.GGuSgGrwwD1EtD/N.Ab3Z/Oq/9RjJc.Uty', '2021-10-22 10:56:22', '2021-10-22 10:56:22', 'teacher', 'pending', '0', '0'),
(101, 'Reesa', 'Perera', 'Reesa@gmail.com', '$2y$04$3EGKmydiyIcPplhq97DFxeoq2I8vsHFarjvTu0KFLyt6UoK36l/kO', '2021-10-22 11:09:14', '2021-10-22 11:09:14', 'teacher', 'pending', 'Ellipse 33.png', '0'),
(102, 'Jalu', 'Perera', 'Jalu@gmail.com', '$2y$04$/C9JTQNh8e6bbn7ObRck2.rseCBF7VGjMWZ0rd9sOL0l8f/Jpe93i', '2021-11-10 19:43:02', '2021-11-10 19:43:02', 'teacher', 'accepted', 't2.jpg', '0'),
(103, 'Geena', 'Perera', 'Geena@gmail.com', '$2y$04$s5Riu4DvSdQX90vOE9ZmH.szqNumy1nsjaNLWV0Vs5dYFOp/D43zS', '2021-11-19 19:20:34', '2021-11-19 19:20:34', 'teacher', 'accepted', 't3.jpg', 'Offline now');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(5, 63, 103, 'Hi'),
(6, 103, 63, 'Hello'),
(7, 103, 63, 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `qqid` int(11) NOT NULL,
  `qid` char(5) NOT NULL,
  `q_desc` varchar(1000) NOT NULL,
  `op1` varchar(500) NOT NULL,
  `op2` varchar(500) NOT NULL,
  `op3` varchar(500) NOT NULL,
  `op4` varchar(255) NOT NULL,
  `ans` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`qqid`, `qid`, `q_desc`, `op1`, `op2`, `op3`, `op4`, `ans`) VALUES
(1, '36', 'dmfkdflvgfdmfm', 'fnd', 'dfnf', 'dfn', 'dmf', 'dfnf'),
(1, 'nfk', 'dkmdfklv', 'kf', 'kfdk', 'fmkmf', '', 'kfkvdklfvn'),
(1, 'Q1', 'How much is 24X2?', '21', '22', '48', '', '48'),
(1, 'Q10', 'cdvdv', 'dfdvv', 'vfv', 'vdfv', '', 'vdfv'),
(1, 'Q101', 'vn', 'vbv', 'vb', 'vb', 'vb', 'vb'),
(1, 'Q2', 'What is the answer for 2*3?', '3', '6', '2', '', '6'),
(1, 'Q20', 'jdsjgdbn wendwejfnerjgin erbfrgljebtglkjnbk ernfoetghntphnrohb tetntohnrohngohngohnoghnmonmhn;', 'osffjhrgengnjbnjgb', 'fjjrnergjnejgbngjkng', 'jjfjnrejgnegjkegkn', '', 'osffjhrgengnjbnjgb'),
(1, 'Q21', 'k', '1', '2', '3', '', '1'),
(1, 'Q22', 'sdkfmdlkgbg', '2', '3', '4', '5', '3'),
(1, 'Q23', 'mfklgm', '1', '2', '3', '4', '1'),
(1, 'Q24', 'g;lgbhmgf', 'fgdfgb', 'ffgfdg', 'gf', 'dfg', 'fgdfgb'),
(1, 'Q25', 'gkgmghb', '1', '2', '3', '4', '1'),
(1, 'Q26', 'gggf', 'f', 'fdf', 'r', 'fdfg', 'fdf'),
(1, 'Q28', 'fmvkv', 'fkm', 'kmf', 'kmf', 'emf', 'kmf'),
(1, 'Q29', 'vbb', 'd', 'df', 'df', 'vf', 'd'),
(1, 'Q3', 'sdss', 'd', 'df', 'df', '', 'df'),
(1, 'Q31', 'sddfds', 'vdfvvfdvdfv', 'vdfv', 'vfdv', 'fvfv', 'vfdv'),
(1, 'Q32', 'asfjsdvf;vnfd', 'sdbkjvb', 'dncfsfkjn', 'ldcnsdlkvn', 'lkdcnsjdvnf', 'dncfsfkjn'),
(1, 'Q33', 'asfjsdvf;vnfd', 'sdbkjvb', 'dncfsfkjn', 'ldcnsdlkvn', 'lkdcnsjdvnf', 'dncfsfkjn'),
(1, 'Q34', 'dofjdf', 'bngb', 'fnfdkj', 'fvvfdn', 'fvkvf', 'fnfdkj'),
(1, 'Q36', 'dre', 'f', 'df', 'dfg', 'dfg', 'df'),
(1, 'Q37', 'dfg', 'dfgg', 'bgg', 'dfgdfg', 'dfg', 'bgg'),
(1, 'Q39', 'dfg', 'dfgg', 'dncfsfkjn', 'ldcnsdlkvn', 'emf', 'ldcnsdlkvn'),
(1, 'Q4', 'How much is 24X2?', '21', '48', '34', '', '48'),
(1, 'Q40', 'erej', 'dg', 'jfr', 'rjg', 'rjf', 'rjg'),
(1, 'Q41', 'fbg', 'fdg', 'fbgb', 'dfb', 'h', 'dfb'),
(1, 'Q45', 'fggfnfg', 'fgbhfg', 'ghn', 'hg', 'hg', 'hg'),
(1, 'Q46', 'tjkjjk', 'fgfh', 'hjkh', 'jkj', 'iuk', 'jkj'),
(1, 'Q47', '1?', 'one', 'two', 'three', 'four', 'one'),
(1, 'Q49', 'fgggf', 'ghgfgh', 'fhg', 'h', 'hg', 'h'),
(1, 'Q5', 'How much is 24X2?', '21', '48', '21', '', '48'),
(1, 'Q56', 'sdsvfd', 'dfd', 'ffd', 'df', 'df', 'ffd'),
(1, 'Q57', '1?', 'one', 'two', 'three', 'four', 'one'),
(1, 'Q58', '1?', 'one', 'two', 'three', 'four', 'one'),
(1, 'Q59', '2?', 'one', 'two', 'three', 'four', 'two'),
(1, 'Q6', 'How much is 24X2?', '21', '48', '56', '', '48'),
(1, 'Q60', 'sdlkfjd', 'df', 'cv', 'fv', 'vb', 'fv'),
(1, 'Q62', 'cbb', 'vb', 'b', 'vb', 'vb', 'vb'),
(1, 'Q67', 'xcv', 'f', 'v', 'cv', 'cv', 'cv'),
(1, 'Q68', 'd', 'd', 'd', 'g', 't', 'g'),
(1, 'Q69', 'df', 'ff', 'h', 'h', 'g', 'h'),
(1, 'Q7', 'How much is 24X3?', '72', '48', '34', '', '72'),
(1, 'Q71', 'bg', 'fgb', 'gbg', 'gbg', 'gb', 'gbg'),
(1, 'Q78', 'ddf', 'ff', 'vv', 'fbf', 'fg', 'fbf'),
(1, 'Q8', 'How much is 24X2?', '21', '48', '34', '', '48'),
(1, 'Q80', 'ssfj', 'xc', 'cvv', 'd', 'cv', 'cvv'),
(1, 'Q86', 'fghgf', 'd', 'fg', 'fg', 'fg', 'fg'),
(1, 'rtr', 't', 'rtrt', 'rg', 'rgh', 'rg', 'rgh'),
(2, '36', 'nldvf', 'd', 'dmcnd', 'cd', 'd', 'dmcnd'),
(2, 'nfk', 'kfvdflvnfd', 'fn', 'vnfv', 'nv', '', 'nfvn'),
(2, 'Q1', '0.75 is same as?', '75%', '23%', '750', '', '75%'),
(2, 'Q10', 'vfvf', 'vfvvfv', 'dcfv', 'fvf', '', 'fvffv'),
(2, 'Q101', 'fgn', 'vb', 'bv', 'b', 'bv', 'bv'),
(2, 'Q2', 'What is the answer for 0.7*10?', '7', '4', '6', '', '7'),
(2, 'Q22', '', '', '', '', '', ''),
(2, 'Q23', 'sfkdgfghfghmfhm', '5', '6', '7', '8', '6'),
(2, 'Q24', 'vdfb', 'a', 'fb', 'b', 'b', 'fb'),
(2, 'Q25', 'fpogghpob', '46', '34', 'r', '7', '34'),
(2, 'Q26', 'fgfg', '3', '5', '6', '4', '6'),
(2, 'Q28', 'ffv', 'f', '23%', '0,75', '8', '0,75'),
(2, 'Q29', 'dvfddfb', 'f', 'f', 'dfd', 'fvfd', 'dfd'),
(2, 'Q3', 'dfd', 'dfd', 'sds', 'dcd', '', 'dd'),
(2, 'Q31', 'vbgbgfb gf', 'fvdfv', 'dfdfvd', 'fvfv', 'fvfd', 'fvfd'),
(2, 'Q32', 'dchsd;vn', 'dchnsdvn', 'dkncdskj', 'dbcd', 'sihdcdskcn', 'dchnsdvn'),
(2, 'Q33', 'dchsd;vn', 'dchnsdvn', 'dkncdskj', 'dbcd', 'sihdcdskcn', 'dchnsdvn'),
(2, 'Q34', 'fpvjdfibj', 'fjvmfdlm', 'fjf', 'fvjfjv', 'fhv', 'fjvmfdlm'),
(2, 'Q36', 'dfdg', 'dfg', 'fg', 'fg', 'dfg', 'dfg'),
(2, 'Q37', 'dfg', 'dfgg', 'fbgf', 'dfgdfdg', 'dfg', 'fbgf'),
(2, 'Q39', 'What is the answer for 0.7*10?', 'we', 'wnd w', '0,75', 'fvfd', '0,75'),
(2, 'Q4', '0.75 is same as?', '75%', '34%', '0,75', '', '75%'),
(2, 'Q40', 'rkkorp', 'djgdf', 'fjoj', 'rjr', 'rjg', 'fjoj'),
(2, 'Q41', 'hn', 'ghn', 'h', 'ki', 'uj', 'ghn'),
(2, 'Q45', 'h', 'gh', 'ghgh', 'uj', 'hthj', 'uj'),
(2, 'Q46', 'kl', 'ujyu', 'ioi', 'jkj', 'kj', 'jkj'),
(2, 'Q47', '5?', 'one', 'five', 'three', 'four', 'five'),
(2, 'Q49', 'ytuy', 'ytju', 'yhjty', 'hytj', 'hyhyt', 'yhjty'),
(2, 'Q5', '0.75 is same as?', '75%', '23%', '34%', '', '75%'),
(2, 'Q56', 'dfgfd', 'df', 'df', 'dsf', 'df', 'df'),
(2, 'Q57', '2?', 'one', 'two', 'three', 'four', 'two'),
(2, 'Q58', '2?', 'one', 'two', 'three', 'four', 'two'),
(2, 'Q59', 'dfjdfklg', 'ffdfd', 'vf', 'v', 'v', 'vf'),
(2, 'Q6', '0.75 is same as?', '75%', '23%', '0,75', '', '75%'),
(2, 'Q60', 'fb', 'bv', 'vb', 'gbbgb', 'b', 'b'),
(2, 'Q62', 'vb', 'b', 'vb', 'bv', 'vb', 'bv'),
(2, 'Q67', 'fgf', 'cb', 'cvb', 'vb', 'b', 'b'),
(2, 'Q68', 'u', 't', 'l', 'r', 'g', 'g'),
(2, 'Q69', 'j', 'j', 'h', 'h', 'h', 'h'),
(2, 'Q7', '0.76 is same as?', '75%', '23%', '76%', '', '76%'),
(2, 'Q71', 'fbgf', 't', 'gfg', 'fgf', 'g', 'fgf'),
(2, 'Q78', 'fgfgh', 'dfg', 'fg', 'df', 'v', 'v'),
(2, 'Q8', '0.75 is same as?', '75%', '23%', '6', '', '75%'),
(2, 'Q80', 'sd', 'df', 'cvb', 'vb', 'cv', 'vb'),
(2, 'Q86', 'fghhg', 'fg', 'fg', 'fg', 'fg', 'fg'),
(2, 'rtr', 'rtyr', 'rty', 'tr', 'tg', 'g', 'g'),
(3, '36', 'dpjfd', 'asd', 's', 'sasd', 'w', 'w'),
(3, 'nfk', 'lfmvf', 'fmvmdfkl', 'fvnf', 'fkvknf', '', 'fvkf'),
(3, 'Q1', 'The Next Primer number after 7 is?', '10', '11', '8', '', '11'),
(3, 'Q10', 'vfvf', 'vv', 'fvfv', 'fvf', '', 'fvfv'),
(3, 'Q101', 'fgn', 'fb', 'b', 'fb', 'bf', 'bf'),
(3, 'Q2', 'The Next Primer number after 7 is?', '10', '11', '8', '', '11'),
(3, 'Q23', '', '', '', '', '', ''),
(3, 'Q24', 'ddfv', '4', '6', '3', '6', '6'),
(3, 'Q25', 'erkepog', '2', '5', '7', 'rttyg', '5'),
(3, 'Q26', '4r', '3', '6', '1', '5', '1'),
(3, 'Q28', 'The Next Primer number after 6 is?', 'vv', 'df', '8', '6', '8'),
(3, 'Q29', 'fvfvfv', 'fv', 'fvf', 'fv', 'fvf', 'fv'),
(3, 'Q3', 'dfd', 'df', 'd', 'df', '', 'dfd'),
(3, 'Q31', 'ggfh', 'vdfbvvdfb', 'fvdb', 'fbdg', 'fggdfb', 'fggdfb'),
(3, 'Q32', 'dspjcivf', 'nvjcvn', 'cncvn', 'dcknfkv', 'cnds', ''),
(3, 'Q33', 'dspjcivf', 'nvjcvn', 'cncvn', 'dcknfkv', 'cnds', 'cnds'),
(3, 'Q34', 'jfdfi', 'fvn', 'fvnf', 'fjbvf.', 'jdfvnfd', 'jdfvnfd'),
(3, 'Q36', 'dfg', 'f', 'fg', 'dg', 'frg', 'dg'),
(3, 'Q37', 'thg', 'dfgfd', 'dfg', 'fgdf', 'dfdgdf', 'fgdf'),
(3, 'Q39', 'dfgdfgh', 'sdknffd', 'fvnf', 'dcknfkv', 'rttyg', 'sdknffd'),
(3, 'Q4', 'The Next Primer number after 7 is?', '10', '11', '8', '', '11'),
(3, 'Q40', 'rjg', 'gth', 'rgrg', 'dfdg', 'fg', 'dfdg'),
(3, 'Q41', 'yuj', 'uj', 'hjju', 'uj', 'j', 'j'),
(3, 'Q45', 'fggh', 'hgj', 'j', 'ukkuyj', 'th', 'th'),
(3, 'Q46', ';p', 'yuu', 'uilu', 'li', 'uikiu', 'li'),
(3, 'Q47', '1+2?', '3', '1', '4', '5', '3'),
(3, 'Q49', '7i86', 'tyuut', 'thty', 'tytj', 'tyj', 'thty'),
(3, 'Q5', 'The Next Primer number after 7 is?', '10', '11', '8', '', '11'),
(3, 'Q56', 'fdg', 'fg', 'fg', 'fg', 'fdg', 'fg'),
(3, 'Q57', '1+2?', '3', '4', '6', '7', '3'),
(3, 'Q58', '1+2?', 'three', 'one', 'four', 'five', 'three'),
(3, 'Q59', 'bvb', 'vbv', 'cvbvc', 'bvb', 'bv', 'cvbvc'),
(3, 'Q6', 'The Next Primer number after 7 is?', '10', '11', '8', '', '11'),
(3, 'Q60', 'cbv', 'b', 'fd', 'b', 'cvb', 'cvb'),
(3, 'Q62', 'fgb', 'vb', 'b', 'vb', 'b', 'vb'),
(3, 'Q67', 'cvb', 'bdgb', 'b', 'b', 'b', 'b'),
(3, 'Q68', 'p', 'y', 'y', 'y', 'k', 'y'),
(3, 'Q69', 'j', 'h', 'h', 'o', 'k', 'o'),
(3, 'Q7', 'The Next Primer number after 6 is?', '10', '7', '2', '', '7'),
(3, 'Q71', 'ghh', 'fgfbg', 'sd', 'df', 'fd', 'df'),
(3, 'Q78', 'fg', 'fhg', 'vdf', 'bgf', 'fdg', 'bgf'),
(3, 'Q8', 'The Next Primer number after 7 is?', '10', '11', '8', '', '11'),
(3, 'Q80', 'n', 'bbn', 'vb', 'bv', 'vb', 'vb'),
(3, 'Q86', 'cvb', 'fgh', 'fg', 'gg', 'fg', 'fg'),
(3, 'rtr', 'rth', 'rth', 'rt', 'rt', 'th', 'rt'),
(4, '36', 'fbf', 'bgb', 'gb', 'gnh', 'hnh', 'gnh'),
(4, 'nfk', 'vkfvm', 'nfv', 'fnvnf', 'fv', '', 'fvf'),
(4, 'Q1', 'Square root of 144?', '12', '11', '32', '', '12'),
(4, 'Q10', 'vfv', 'fvfv', 'vfv', 'fvvfv', '', 'vfv'),
(4, 'Q101', 'fgbb', 'fbg', 'fb', 'b', 'b', 'b'),
(4, 'Q2', 'Square root of 25?', '12', '5', '4', '', '5'),
(4, 'Q24', '', '', '', '', '', ''),
(4, 'Q25', 'ergrth', '', '', '', '', ''),
(4, 'Q26', 'rgt', '2', '5', '3', '7', '7'),
(4, 'Q28', 'dsfd', '5', '6', '32', '7', '32'),
(4, 'Q29', 'fv', 'fvf', 'vfdv', 'vf', '7', 'vfdv'),
(4, 'Q3', 'df', 'dfd', 'df', 'df', '', 'dd'),
(4, 'Q31', 'gbgbfg', 'fdf', 'bggfv', 'bfg', 'gfb', 'gfb'),
(4, 'Q32', 'jfijf', 'cndc', 'kdncd,', 'ncc', 'cdn', 'cndc'),
(4, 'Q33', 'jfijf', 'cndc', 'kdncd,', 'ncc', 'cdn', 'cndc'),
(4, 'Q34', 'jfish', 'ifvf', 'dknfvf', 'kfhl', 'nfk', 'kfhl'),
(4, 'Q36', 'df', 'dg', 'fg', 'fg', 'fdg', 'fg'),
(4, 'Q37', 'dfgd', 'fdgf', 'dfg', 'fgg', 'dfd', 'dfg'),
(4, 'Q39', 'sgdf', 'sdfv', 'sdg', 'fffg', 'df', 'sdg'),
(4, 'Q4', 'Square root of 25?', '12', '11', '5', '', '5'),
(4, 'Q40', 'rhy', 'ghhg', 'g', 'g', 'dgrg', 'g'),
(4, 'Q41', 'k,k', 'uk', 'yuk', 'yuyk', 'yuj', 'uk'),
(4, 'Q45', 'ghjg', 'gjghj', 'uj', 'ju', 'yk', 'yk'),
(4, 'Q46', 'popo', 'uku', 'o;oi', 'iol', 'olo', 'iol'),
(4, 'Q47', '3+3?', '6', '7', '2', '7', '6'),
(4, 'Q49', 'uyu', 'yukyu', 'yju', 'yuu', 'yjy', 'yju'),
(4, 'Q5', 'Square root of 25?', '12', '5', '4', '', '5'),
(4, 'Q56', 'fgdf', 'dfdgdf', 'ff', 'fg', 'dfg', 'dfg'),
(4, 'Q57', '2+2?', '5', '4', '6', '2', '4'),
(4, 'Q58', '1+1?', 'two', 'r', 'four', 'dfdfv', 'two'),
(4, 'Q59', 'bn', 'vf', 'cb', 'b', 'b', 'cb'),
(4, 'Q6', 'Square root of 144?', '12', '11', '4', '', '12'),
(4, 'Q60', 'fgbb', 'b', 'bv', 'bv', 'bv', 'bv'),
(4, 'Q62', 'fgh', 'bn', 'bv', 'bvn', 'bv', 'bvn'),
(4, 'Q67', 'cvb', 'cv', 'vc', 'cv', 'df', 'cv'),
(4, 'Q68', 'i', 'g', 'u', 'k', 'e', 'k'),
(4, 'Q69', 'h', 'h', 'h', 'e', 'i', 'e'),
(4, 'Q7', 'Square root of 25?', '5', '6', '2', '', '5'),
(4, 'Q71', 'fg', 'dff', 'gf', 'f', 'f', 'f'),
(4, 'Q78', 'ghjg', 'fdgf', 'dfg', 'dfgf', 'df', 'df'),
(4, 'Q8', 'Square root of 25?', '12', '11', '5', '', '5'),
(4, 'Q80', 'bgn', 'bv', 'b', 'vbv', 'b', 'vbv'),
(4, 'Q86', 'fg', 'fgh', 'gh', 'fg', 'fgf', 'fgf'),
(4, 'rtr', 'rth', 'th', 'rt', 'tr', 'trh', 'tr'),
(5, '36', 'nhmjh', 'gh', 'nh', 'nh', 'b', 'nh'),
(5, 'nfk', 'fkvf', 'vf', 'fvmf', 'fvk', '', 'klfvm'),
(5, 'Q1', 'How much is 222+83?', '305', '23', '456', '', '305'),
(5, 'Q10', 'vv', 'vfv', 'vv', 'vfv', '', 'fvf'),
(5, 'Q101', 'gn', 'fb', 'b', 'vbv', 'vb', 'vb'),
(5, 'Q2', 'How much is 221+83?', '304', '343', '321', '', '304'),
(5, 'Q25', 'hfhnghnh', '5', '7', '8', '', '9'),
(5, 'Q26', 'rr', '14', '5', '3', '6', '14'),
(5, 'Q28', 'fkvf', 'f', 'fvfd', '321', 'dfdv', 'dfdv'),
(5, 'Q29', 'fdd', 'fv', 'dfv', 'vv', 'vf', 'vv'),
(5, 'Q3', 'fdd', 'd', 'vfv', 'dfd', '', 'vfd'),
(5, 'Q31', 'frg', 'fsdfvdfb', 'gfbg', 'fvfv', 'fvvf', 'fvvf'),
(5, 'Q32', 'dcsvfhnv', 'cndlcncv /', 'cndcklnc', 'kdcnkcv', 'dcdkjvbc', ''),
(5, 'Q33', 'dcsvfhnv', 'cndlcncv /', 'cndcklnc', 'kdcnkcv', 'dcdkjvbc', ''),
(5, 'Q34', 'vnf/klbn', 'nff', 'fjvf', 'nf', 'fjvfd', 'nff'),
(5, 'Q36', 'dfg', 'dfgd', 'dfgfg', 'dfg', 'gf', 'dfgfg'),
(5, 'Q37', 'fgfg', 'fg', 'fgfg', 'fg', 'fgfg', 'fg'),
(5, 'Q39', 'dfg', 'sg', 'df', '456', 'dfgf', '456'),
(5, 'Q4', 'How much is 221+83?', '304', '23', '123', '', '304'),
(5, 'Q40', 'dfdgh', 'ereg', 'gdf', 'dg', 'hgfh', 'dg'),
(5, 'Q41', 'kjh', 'yuj', 'yuju', 'yuj', 'uj', 'yuj'),
(5, 'Q45', 'iki', 'wrewr', 'll;', 'iopio', 'uiuk', 'll;'),
(5, 'Q46', 'jytjtuk', 'yju', 'juj', 'kjj', 'k', 'juj'),
(5, 'Q47', '1+4?', '5', '6', '7', '2', '5'),
(5, 'Q49', 'tytyu', 'tytr', 'tyt', 'th', 'tyy', 'tyt'),
(5, 'Q5', 'How much is 221+83?', '304', '343', '321', '', '304'),
(5, 'Q56', 'fg', 'dfgf', 'dfdg', 'dfg', 'r', 'r'),
(5, 'Q57', '5?', 'one', 'two', 'three', 'five', 'five'),
(5, 'Q58', '4?', 'one', 'two', 'three', 'four', 'four'),
(5, 'Q59', 'fghgf', 'gbfgf', 'b', 'bgv', 'bv', 'bgv'),
(5, 'Q6', 'How much is 221+83?', '305', '23', '123', '', '304'),
(5, 'Q60', 'vb', 'bv', 'b', 'vb', 'b', 'vb'),
(5, 'Q62', 'fgbb', 'b', 'bv', 'b', 'vb', 'b'),
(5, 'Q67', 'cvb', 'b', 'b', 'ed', 'fb', 'ed'),
(5, 'Q68', 'o', 'h', 'h', 'e', 'u', 'e'),
(5, 'Q69', 'l', 'h', 'o', 'd', ',uu', 'd'),
(5, 'Q7', 'How much is 221+20?', '241', '234', '231', '', '241'),
(5, 'Q71', 'g', 'f', 'fg', 'f', 'gtt', 'gtt'),
(5, 'Q78', 'dfg', 'fgf', 'dgf', 'vf', 'cv', 'vf'),
(5, 'Q8', 'How much is 221+83?', '304', '343', '456', '', '304'),
(5, 'Q80', 'fb', 'hn', 'ghh', 'fgh', 'fgfh', 'fgfh'),
(5, 'Q86', 'gh', 'fgh', 'gh', 'fg', 'fg', 'fg'),
(5, 'rtr', 't', 'rt', 'th', 't', 'rtr', 't');

-- --------------------------------------------------------

--
-- Table structure for table `quizz`
--

CREATE TABLE `quizz` (
  `qid` char(5) NOT NULL,
  `sid` char(5) NOT NULL,
  `gid` char(5) NOT NULL,
  `uid` char(5) NOT NULL,
  `q_title` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `uploaded_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quizz`
--

INSERT INTO `quizz` (`qid`, `sid`, `gid`, `uid`, `q_title`, `teacher_id`, `uploaded_date`) VALUES
('', 'S1', 'G1', 'U1', '', 65, '0000-00-00'),
('36', 'S1', 'G1', 'U1', 'Maths-25', 65, '2021-10-18'),
('nfk', 'S1', 'G1', 'U1', 'dmdsl', 65, '2021-10-16'),
('Q1', 'S1', 'G1', 'U1', 'Nuber', 48, '2021-10-09'),
('Q10', 'S1', 'G1', 'U1', 'Nuber', 65, '2021-10-16'),
('Q101', 'S1', 'G1', 'U1', 'dfhd', 63, '2021-10-22'),
('Q12', 'S1', 'G1', 'U1', 'Maths-12', 65, '2021-10-16'),
('Q2', 'S1', 'G1', 'U1', 'Multiplication', 49, '2021-10-09'),
('Q20', 'S1', 'G1', 'U1', 'lastquizinmyversion', 65, '2021-10-16'),
('Q21', 'S1', 'G1', 'U1', 'tr', 65, '2021-10-16'),
('Q22', 'S1', 'G1', 'U1', 'jfghgn', 65, '2021-10-16'),
('Q23', 'S1', 'G1', 'U1', 'fvdbkkmdgb', 65, '2021-10-16'),
('Q24', 'S1', 'G1', 'U1', 'sdml mbfn', 65, '2021-10-16'),
('Q25', 'S1', 'G1', 'U1', 'dfgknfkndgkgd', 65, '2021-10-16'),
('Q26', 'S1', 'G1', 'U1', 'efkorgohb', 65, '2021-10-16'),
('Q28', 'S1', 'G1', 'U1', 'wjfigjf', 65, '2021-10-16'),
('Q29', 'S1', 'G1', 'U1', 'sjfdlgjdf', 65, '2021-10-16'),
('Q3', 'S1', 'G1', 'U1', 'dsfdkn', 48, '2021-10-10'),
('Q31', 'S1', 'G1', 'U1', 'Maths-21', 65, '2021-10-17'),
('Q32', 'S1', 'G1', 'U1', 'Maths-22', 66, '2021-10-18'),
('Q33', 'S1', 'G1', 'U1', 'Maths-23', 66, '2021-10-18'),
('Q34', 'S1', 'G1', 'U1', 'Maths-24', 66, '2021-10-18'),
('Q36', 'S1', 'G1', 'U1', 'B', 65, '2021-10-18'),
('Q37', 'S1', 'G1', 'U1', 'dfjd', 65, '2021-10-18'),
('Q39', 'S1', 'G1', 'U1', 'mkzcnd', 72, '2021-10-18'),
('Q4', 'S1', 'G1', 'U1', 'Maths-2', 52, '2021-10-10'),
('Q40', 'S1', 'G1', 'U1', 'Addition2', 65, '2021-10-18'),
('Q41', 'S1', 'G1', 'U1', 'Addition3', 65, '2021-10-18'),
('Q45', 'S1', 'G1', 'U1', 'sdfdkg', 65, '2021-10-19'),
('Q46', 'S1', 'G1', 'U1', 'ghgjkj', 65, '2021-10-19'),
('Q47', 'S1', 'G1', 'U1', 'Number', 78, '2021-10-19'),
('Q49', 'S1', 'G1', 'U1', 'fgfh', 65, '2021-10-20'),
('Q5', 'S1', 'G1', 'U1', 'Maths-3', 53, '2021-10-10'),
('Q56', 'S1', 'G1', 'U1', 'Addition', 65, '2021-10-18'),
('Q57', 'S1', 'G1', 'U1', 'Maths-45', 65, '2021-10-20'),
('Q58', 'S1', 'G1', 'U1', 'Maths-50', 81, '2021-10-21'),
('Q59', 'S1', 'G1', 'U1', 'Number3', 63, '2021-10-21'),
('Q6', 'S1', 'G1', 'U1', 'Maths-4', 56, '2021-10-15'),
('Q60', 'S1', 'G1', 'U1', 'sdfjd', 63, '2021-10-21'),
('Q62', 'S1', 'G1', 'U1', 'dfdf', 63, '2021-10-21'),
('Q67', 'S1', 'G1', 'U1', 'eh', 63, '2021-10-21'),
('Q68', 'S1', 'G1', 'U1', 'fgjgjdf', 63, '2021-10-21'),
('Q69', 'S1', 'G1', 'U1', 'dghdf', 63, '2021-10-22'),
('Q7', 'S1', 'G1', 'U1', 'Maths-5', 57, '2021-10-15'),
('Q71', 'S1', 'G1', 'U1', 'fhfh', 63, '2021-10-22'),
('Q78', 'S1', 'G1', 'U1', 'jfd', 63, '2021-10-22'),
('Q8', 'S1', 'G1', 'U1', 'Maths-7', 59, '2021-10-15'),
('Q80', 'S1', 'G1', 'U1', 'gfjg', 63, '2021-10-22'),
('Q86', 'S1', 'G1', 'U1', 'duh', 63, '2021-10-22'),
('rtr', 'S1', 'G1', 'U1', 'rtr', 63, '2021-10-21');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `g_name` varchar(100) DEFAULT NULL,
  `g_mobile` char(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `g_name`, `g_mobile`, `dob`, `updated_at`) VALUES
(33, NULL, NULL, NULL, NULL),
(38, 'Fernando', '0784567890', '2016-09-06', '2021-10-20 16:22:46'),
(39, 'Darshana', '0712345678', '2016-10-11', '2021-10-20 16:14:26'),
(40, 'Saduni ', '0112455455', '2008-08-06', '2021-10-05 10:10:36'),
(44, 'Nishani ', '0112455455', '0000-00-00', NULL),
(45, 'Vimal', '0112455455', '2021-01-16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `sid` char(5) NOT NULL,
  `s_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sid`, `s_title`) VALUES
('S1', 'MATHEMATICS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_events`
--

CREATE TABLE `tbl_events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_events`
--

INSERT INTO `tbl_events` (`id`, `title`, `start`, `end`) VALUES
(1, 'Zoom meeting', '2022-05-06 00:00:00', '2022-05-07 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `NIC` varchar(20) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `mobile` char(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `NIC`, `status`, `mobile`, `updated_at`) VALUES
(47, NULL, 'accepted', NULL, NULL),
(48, '987645234v', 'pending', '0723456789', '2021-10-10 10:01:39'),
(49, '892345678v', 'pending', '0789645345', '2021-10-09 13:51:56'),
(50, '988451835v', 'pending', '0712345678', '2021-10-10 06:03:44'),
(51, NULL, 'pending', NULL, NULL),
(52, '678945345v', 'pending', '0712345678', '2021-10-10 10:10:47'),
(53, '678934123v', 'pending', '0765678456', '2021-10-10 12:31:49'),
(54, '567894345v', 'pending', '0712345678', '2021-10-10 13:06:09'),
(55, NULL, 'pending', NULL, NULL),
(56, '786756789v', 'pending', '0798656456', '2021-10-15 07:26:29'),
(57, '786956789v', 'pending', '0987656456', '2021-10-15 12:07:13'),
(58, '785678456v', 'pending', '0712345678', '2021-10-15 13:39:04'),
(59, '786789567v', 'pending', '0723456789', '2021-10-15 13:51:28'),
(60, NULL, 'pending', NULL, NULL),
(61, NULL, 'pending', NULL, NULL),
(62, NULL, 'pending', NULL, NULL),
(63, '986745678v', 'accepted', '0783422345', '2021-10-21 07:16:34'),
(64, NULL, 'pending', NULL, NULL),
(65, '98843456789v', 'pending', '0213456788', '2021-10-17 04:09:40'),
(66, NULL, 'pending', NULL, NULL),
(67, '456789234v', 'pending', '0112345678', '2021-10-18 09:05:51'),
(68, NULL, 'pending', NULL, NULL),
(69, '567834567v', 'pending', '0986756789', NULL),
(70, '200675345v', 'pending', '0975678453', '2021-10-07 14:46:36'),
(71, NULL, 'pending', NULL, NULL),
(72, NULL, 'pending', NULL, NULL),
(73, NULL, 'pending', NULL, NULL),
(74, NULL, 'pending', NULL, NULL),
(75, NULL, 'pending', NULL, NULL),
(76, NULL, 'pending', NULL, NULL),
(77, '107854345V', 'pending', '0712345234', NULL),
(78, '34567891V', 'pending', '0675678345', NULL),
(79, NULL, 'pending', NULL, NULL),
(81, '45678967v', 'accepted', '0723456345', NULL),
(82, '7856784561v', 'pending', '0712345232', NULL),
(83, NULL, 'pending', NULL, NULL),
(84, '7869567897v', 'pending', '0875678456', NULL),
(85, NULL, 'pending', NULL, NULL),
(86, NULL, 'pending', NULL, NULL),
(87, '786956745v', 'pending', '0884567897', NULL),
(88, '567845671v', 'pending', '0894567897', NULL),
(89, '678945678v', 'pending', '0897856345', NULL),
(90, '678967890v', 'pending', '0788456789', NULL),
(91, '675678456v', 'accepted', '0785678456', NULL),
(92, '675834567v', 'pending', '0784512345', NULL),
(93, '786956781v', 'pending', '0786789567', NULL),
(94, '677845678v', 'accepted', '0785678450', NULL),
(95, '678956789v', 'accepted', '0893456781', NULL),
(96, '988456234v', 'accepted', '0784567812', NULL),
(97, '78697896787v', 'accepted', '0895678112', NULL),
(98, '788934567v', 'accepted', '0785645341', NULL),
(99, '6758456706v', 'accepted', '0234567445', NULL),
(100, '782345666v', 'accepted', '0732345677', NULL),
(101, NULL, 'pending', NULL, NULL),
(102, NULL, 'pending', NULL, NULL),
(103, NULL, 'pending', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_grade_subject`
--

CREATE TABLE `teacher_grade_subject` (
  `teacher_id` int(11) NOT NULL,
  `gid` char(5) NOT NULL,
  `sid` char(5) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_grade_subject`
--

INSERT INTO `teacher_grade_subject` (`teacher_id`, `gid`, `sid`, `updated_date`) VALUES
(12, 'G2', 'S1', '2021-10-19 16:12:26'),
(65, 'G1', 'S1', '2021-10-20 08:34:08'),
(65, 'G1', 'S2', '2021-10-20 08:36:37'),
(65, 'G1', 'S3', '2021-10-20 08:42:46'),
(65, 'G1', 'S4', '2021-10-20 08:42:46'),
(65, 'G5', 'S2', '2021-10-20 08:36:37'),
(81, 'G1', 'S1', '2021-10-21 07:39:30'),
(81, 'G1', 'S2', '2021-10-21 07:39:30'),
(81, 'G5', 'S2', '2021-10-21 07:39:30'),
(82, 'G1', 'S1', '2021-10-21 09:49:07'),
(82, 'G1', 'S4', '2021-10-21 09:49:07'),
(84, 'G1', 'S1', '2021-10-21 11:27:05'),
(84, 'G1', 'S2', '2021-10-21 11:27:05'),
(84, 'G5', 'S2', '2021-10-21 11:27:05'),
(85, 'G1', 'S1', '2021-10-21 16:54:08'),
(85, 'G1', 'S2', '2021-10-21 16:54:08'),
(85, 'G5', 'S2', '2021-10-21 16:54:08'),
(87, 'G1', 'S1', '2021-10-21 17:48:40'),
(87, 'G1', 'S4', '2021-10-21 17:48:40'),
(88, 'G2', 'S1', '2021-10-21 18:00:00'),
(88, 'G2', 'S3', '2021-10-21 18:00:00'),
(88, 'G3', 'S1', '2021-10-21 18:00:00'),
(88, 'G3', 'S3', '2021-10-21 18:00:00'),
(89, 'G4', 'S2', '2021-10-21 18:09:20'),
(90, 'G3', 'S2', '2021-10-21 19:00:24'),
(91, 'G1', 'S1', '2021-10-21 20:14:47'),
(91, 'G1', 'S4', '2021-10-21 20:14:47'),
(92, 'G1', 'S1', '2021-10-21 21:32:27'),
(92, 'G1', 'S2', '2021-10-21 21:32:27'),
(92, 'G2', 'S1', '2021-10-21 21:32:27'),
(92, 'G2', 'S2', '2021-10-21 21:32:27'),
(92, 'G5', 'S2', '2021-10-21 21:32:27'),
(93, 'G2', 'S1', '2021-10-22 04:37:48'),
(93, 'G2', 'S4', '2021-10-22 04:37:48'),
(94, 'G2', 'S1', '2021-10-22 06:16:11'),
(94, 'G2', 'S2', '2021-10-22 06:16:11'),
(95, 'G2', 'S1', '2021-10-22 06:58:48'),
(95, 'G2', 'S2', '2021-10-22 06:58:48'),
(96, 'G1', 'S1', '2021-10-22 07:30:36'),
(96, 'G1', 'S2', '2021-10-22 07:30:36'),
(96, 'G5', 'S2', '2021-10-22 07:30:36'),
(97, 'G2', 'S1', '2021-10-22 08:04:49'),
(97, 'G2', 'S2', '2021-10-22 08:04:49'),
(98, 'G1', 'S1', '2021-10-22 09:32:56'),
(98, 'G1', 'S2', '2021-10-22 09:32:56'),
(98, 'G5', 'S2', '2021-10-22 09:32:56'),
(99, 'G1', 'S1', '2021-10-22 09:56:11'),
(100, 'G1', 'S1', '2021-10-22 10:57:22'),
(100, 'G1', 'S2', '2021-10-22 10:57:22'),
(100, 'G5', 'S2', '2021-10-22 10:57:22');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_qualification`
--

CREATE TABLE `teacher_qualification` (
  `teacher_id` int(11) NOT NULL,
  `qualification` varchar(200) NOT NULL,
  `q_proof` mediumblob DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_qualification`
--

INSERT INTO `teacher_qualification` (`teacher_id`, `qualification`, `q_proof`, `updated_at`) VALUES
(47, '', NULL, NULL),
(48, 'bvb', NULL, '2021-10-10 10:01:39'),
(49, 'PhD in English', NULL, '2021-10-09 13:51:56'),
(50, 'phd', NULL, '2021-10-10 06:03:45'),
(51, '', NULL, NULL),
(52, 'PHD', NULL, '2021-10-10 10:10:47'),
(53, 'DIploma', NULL, '2021-10-10 12:31:49'),
(54, 'Zxzcvf esgdjhetb ghkjghjhbjb', NULL, '2021-10-10 13:06:09'),
(55, '', NULL, NULL),
(56, 'Diploma in English and Sinhala', NULL, '2021-10-15 12:04:33'),
(57, 'Diploma in Maths', NULL, '2021-10-15 12:07:13'),
(58, 'Diploma in English', NULL, '2021-10-15 13:39:04'),
(59, 'Diploma in Sinhala', NULL, '2021-10-15 13:51:28'),
(60, '', NULL, NULL),
(61, '', NULL, NULL),
(62, 'Diploma in Sinahala', NULL, '2021-10-15 14:25:59'),
(63, 'xbbvbb', NULL, '2021-10-15 14:33:49'),
(64, 'Diploma in Sinhala', NULL, '2021-10-15 14:41:02'),
(65, 'ddfgd', NULL, '2021-10-18 09:00:39'),
(66, 'Diploma in Sinhala', NULL, '2021-10-18 05:31:23'),
(67, 'werreee', NULL, '2021-10-18 09:08:16'),
(68, 'xgfdg', NULL, NULL),
(69, 'd', NULL, NULL),
(70, 'w', NULL, NULL),
(71, '', NULL, NULL),
(72, '', NULL, NULL),
(73, '', NULL, NULL),
(74, '', NULL, NULL),
(75, '', NULL, NULL),
(76, '', NULL, NULL),
(77, 'fskdglnsfb', NULL, NULL),
(78, 'seddt', NULL, NULL),
(79, '', NULL, NULL),
(81, 'Diploma in Maths', NULL, NULL),
(82, 'Diploma', NULL, NULL),
(83, '', NULL, NULL),
(84, 'Diploma in English', NULL, NULL),
(85, 'Diploma in Sinhala', NULL, NULL),
(86, '', NULL, NULL),
(87, 'Diploma in Aesthetic', NULL, NULL),
(88, 'Diploma', NULL, NULL),
(89, 'ejoiewrje', NULL, NULL),
(90, 'Diploma for English', NULL, NULL),
(91, 'sdsdfkn', NULL, NULL),
(92, 'nfdkjfg kjgnd', NULL, NULL),
(93, 'dhffd f', NULL, NULL),
(94, 'rghhg', NULL, NULL),
(95, 'sfnsdkjfnfsf', NULL, NULL),
(96, 'sdfjkdkfgn', NULL, NULL),
(97, 'xxcbxvbv', NULL, NULL),
(98, 'bcvbn', NULL, NULL),
(99, 'xcvb', NULL, NULL),
(100, 'dbfgnbn', NULL, NULL),
(101, '', NULL, NULL),
(102, '', NULL, NULL),
(103, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `uid` char(5) NOT NULL,
  `sid` char(5) NOT NULL,
  `u_title` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`uid`, `sid`, `u_title`) VALUES
('U1', 'S1', 'Numbers'),
('U2', 'S1', 'Addition'),
('U3', 'S1', 'Subtraction'),
('U4', 'S1', 'Multiplication');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(1, 1355220997, 'Samali', 'Perera', 'Samali@gmail.com', 'f3b4fc1683a0cdd7d5b26b7ed7d91e6a', '1634691693teacher2.jpg', 'Offline now'),
(2, 532218639, 'Anoja', 'Perera', 'Anoja@gmail.com', 'cdaa4bc752c1af2feb66d9426e1920b9', '1634691891t3.jpg', 'Offline now');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gid` varchar(10) NOT NULL,
  `sid` varchar(10) NOT NULL,
  `uid` varchar(10) NOT NULL,
  `content_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `name`, `gid`, `sid`, `uid`, `content_type`) VALUES
(2, 'presentation.pdf', '', '', 'U2', ''),
(6, '19000936_PC_A2.pdf', 'G1', 'S1', 'U2', 'Pdf'),
(7, '19000936_PC_A2.pdf', '', '', 'U2', ''),
(8, '19000936_PC_A2.pdf', '', '', 'U2', ''),
(9, '19000936_PC_A2.pdf', '', '', 'U2', ''),
(10, '19000936_PC_A2.pdf', '', '', 'U2', ''),
(11, 'BiWeeklyReport12_CS36.pdf', '', '', 'U2', ''),
(12, 'BiWeeklyReport12_CS36.pdf', '', '', 'U2', ''),
(13, 'lecture2.pdf', '', '', 'U2', ''),
(15, '19000822.pdf', '', '', 'U2', ''),
(16, '19000822.pdf', '', '', 'U2', ''),
(17, 'Lecture 2.pdf', '', '', 'U2', ''),
(18, 'SCS 2211 Lecture 3.pdf', '', '', 'U2', ''),
(20, 'SCS 2211 Lecture 3.pdf', '', '', 'U2', ''),
(22, 'SCS 2211 Lecture 3.pdf', '', '', 'U2', ''),
(24, 'SCS 2211 Lecture 3.pdf', '', '', 'U2', ''),
(25, 'SCS 2211 Lecture 3.pdf', 'G1', 'S1', 'U2', ''),
(28, '19000822.pdf', 'G1', 'S1', 'U2', ''),
(29, 'L5(KeyDistribution).pdf', 'G1', 'S1', 'U2', ''),
(30, 'L5(KeyDistribution).pdf', 'G1', 'S1', 'U2', ''),
(31, 'L5(KeyDistribution).pdf', 'G1', 'S1', 'U2', ''),
(32, '18000322.pdf', 'G1', 'S1', 'U2', 'Pdf'),
(33, '18000322.pdf', 'G1', 'S1', 'U2', ''),
(40, 'Addition for kids - Learning to add with Dinosaurs - Mathematics for kids.mp4', 'G1', 'S1', 'U1', 'Video'),
(60, 'Transaction Management - part III.pptx', 'G1', 'S1', 'U1', 'PPT'),
(61, 'lecture2.pdf', 'G1', 'S1', 'U2', 'Pdf'),
(64, 'Transaction Management - part I.pdf', 'G1', 'S1', 'U1', 'Pdf'),
(65, 'Transaction Management - part II.pptx', 'G1', 'S1', 'U1', 'Pdf'),
(66, '6_RL-I.pdf', 'G1', 'S1', 'U1', 'Pdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `grade_teacher`
--
ALTER TABLE `grade_teacher`
  ADD PRIMARY KEY (`teacher_id`,`gid`),
  ADD KEY `gid` (`gid`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`qqid`,`qid`),
  ADD KEY `qid` (`qid`);

--
-- Indexes for table `quizz`
--
ALTER TABLE `quizz`
  ADD PRIMARY KEY (`qid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `gid` (`gid`),
  ADD KEY `quizz_ibfk_4` (`teacher_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`sid`) USING BTREE;

--
-- Indexes for table `tbl_events`
--
ALTER TABLE `tbl_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD UNIQUE KEY `NIC` (`NIC`);

--
-- Indexes for table `teacher_grade_subject`
--
ALTER TABLE `teacher_grade_subject`
  ADD PRIMARY KEY (`teacher_id`,`gid`,`sid`) USING BTREE;

--
-- Indexes for table `teacher_qualification`
--
ALTER TABLE `teacher_qualification`
  ADD PRIMARY KEY (`teacher_id`,`qualification`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`uid`,`sid`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_events`
--
ALTER TABLE `tbl_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `grade_teacher`
--
ALTER TABLE `grade_teacher`
  ADD CONSTRAINT `grade_teacher_ibfk_1` FOREIGN KEY (`gid`) REFERENCES `grade` (`gid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `grade_teacher_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`qid`) REFERENCES `quizz` (`qid`);

--
-- Constraints for table `quizz`
--
ALTER TABLE `quizz`
  ADD CONSTRAINT `quizz_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `unit` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quizz_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `subject` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quizz_ibfk_3` FOREIGN KEY (`gid`) REFERENCES `grade` (`gid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quizz_ibfk_4` FOREIGN KEY (`teacher_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `members` (`id`);

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `members` (`id`);

--
-- Constraints for table `teacher_qualification`
--
ALTER TABLE `teacher_qualification`
  ADD CONSTRAINT `teacher_qualification_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `members` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
