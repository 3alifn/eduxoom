-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2024 at 05:17 PM
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
-- Database: `eduxoomc_eduxoom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `domain` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `uuid` varchar(100) NOT NULL,
  `session` int(11) NOT NULL DEFAULT 2023,
  `find_date` varchar(100) NOT NULL,
  `at_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `name` varchar(100) NOT NULL,
  `dob_number` int(11) NOT NULL,
  `birth_date` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL DEFAULT 'Male',
  `avatar` varchar(500) NOT NULL DEFAULT 'male_avatar.png',
  `docs` varchar(200) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `blood_group` varchar(100) NOT NULL,
  `religion` varchar(100) NOT NULL DEFAULT 'Islam',
  `telephone` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `guardian_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `hobbies` varchar(100) NOT NULL,
  `last_education` varchar(100) NOT NULL,
  `admission_class` varchar(100) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`domain`, `ID`, `uuid`, `session`, `find_date`, `at_date`, `name`, `dob_number`, `birth_date`, `gender`, `avatar`, `docs`, `father_name`, `mother_name`, `blood_group`, `religion`, `telephone`, `email`, `guardian_name`, `address`, `hobbies`, `last_education`, `admission_class`, `comment`) VALUES
('localhost', 25, '123', 2023, '10/26/2023', '2023-10-26 09:08:53', 'Ratul', 2, '2010-09-09', 'male', 'male_avatar.png', '', 'Fhjcx', 'Xhjcf', 'O+ve', 'Islam', 1998031221, 'ratulmia0199@gmail.com', 'Ryffc', 'Xfhjbc', 'Cricket', 'Nine', '', 'Hjj'),
('localhost', 30, '5ee9fe8d5ce0a261', 2024, 'Sat Mar 23 2024', '2024-03-23 06:32:23', 'sufia', 1234567890, '2010-09-09', 'Female', '1711175385428_female_avatar.png', '1711175543199_application.png', 'fname', 'mname', 'B+ve', 'Islam', 124567890, 'api.saanvi.abc@gmail.com', 'gname', 'boalmari', 'Playing', 'Five', 'Six', 'admission plz'),
('localhost', 31, 'd2fe41c8a771c329', 2024, 'Thu Dec 05 2024', '2024-12-05 17:45:06', 'ujk', 645674, '2010-09-09', 'Male', '1733420697167_happy-woman-standing-with-book_23-2148095834.jpg', '1733420706818_Visa platform.pdf', 'rhreh', '346346', 'A+ve', 'Islam', 2147483647, 'api.saanvi.abc@gmail.com', 'thntn', 'trhjnn', 'Swiming', 'Five', 'Six', 'fdgrg'),
('localhost', 32, '3954349f3083a348', 2024, 'Thu Dec 05 2024', '2024-12-05 17:46:43', 'ujk', 56856467, '2010-09-09', 'Male', '1733420790002_happy-woman-standing-with-book_23-2148095834.jpg', '1733420803316_Visa platform.pdf', 'hth', 'gfhtr', 'B-ve', 'Islam', 2147483647, 'api.saanvi.abc@gmail.com', 'rther', 'rhreh', 'Reading', 'Five', 'Six', 'trhrthtrh'),
('localhost', 33, 'db61cf23b52b1ad7', 2024, 'Tue Dec 10 2024', '2024-12-09 18:01:30', 'ujk', 3245, '2010-09-09', 'Male', '1733767274903_happy-woman-standing-with-book_23-2148095834.jpg', '1733767290259_Visa platform.pdf', 'rhreh', 'wef', 'A+ve', 'Islam', 2147483647, 'api.saanvi.abc@gmail.com', 'thntn', 'trhjnn', 'Reading', 'Five', 'Six', 'sdfgsdgf');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `domain` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `session` int(11) NOT NULL DEFAULT 2023,
  `find_date` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `student_uuid` varchar(100) NOT NULL,
  `roll` int(11) NOT NULL,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `attachment` varchar(100) NOT NULL,
  `replay` text NOT NULL,
  `avatar` varchar(500) NOT NULL DEFAULT 'male_avatar.png',
  `at_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attn_record`
--

CREATE TABLE `attn_record` (
  `domain` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `menual` int(11) NOT NULL,
  `session` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `duplicate_data` varchar(200) NOT NULL,
  `class` varchar(10) DEFAULT NULL,
  `section` varchar(10) DEFAULT NULL,
  `roll` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `get_cal` varchar(100) NOT NULL,
  `find_date` varchar(100) NOT NULL,
  `attn_date` varchar(100) NOT NULL,
  `record_date` varchar(100) NOT NULL,
  `record_time` varchar(100) NOT NULL,
  `punch` varchar(10) DEFAULT NULL,
  `checkout` int(11) DEFAULT NULL,
  `at_status` varchar(10) NOT NULL,
  `overtime` varchar(100) NOT NULL,
  `latetime` varchar(100) NOT NULL,
  `take_time` int(11) DEFAULT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `at_date` varchar(100) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `attn_record`
--

INSERT INTO `attn_record` (`domain`, `id`, `menual`, `session`, `user`, `duplicate_data`, `class`, `section`, `roll`, `name`, `user_id`, `avatar`, `get_cal`, `find_date`, `attn_date`, `record_date`, `record_time`, `punch`, `checkout`, `at_status`, `overtime`, `latetime`, `take_time`, `year`, `month`, `day`, `at_date`) VALUES
('localhost', 125, 1, 2024, 'Student', '601792_Wed Nov 27 2024', 'Six', 'A', 1, '????? ??????? ', '601792', 'female_avatar.png', '10-2024', 'November-27-11-2024', 'Wed Nov 27 2024', '', '', NULL, 1, 'present', '', '', NULL, 2024, 10, 27, '2024-11-27 14:04:29'),
('localhost', 126, 1, 2024, 'Student', '134797_Wed Nov 27 2024', 'Six', 'A', 2, 'Chompa Khatun', '134797', 'female_avatar.png', '10-2024', 'November-27-11-2024', 'Wed Nov 27 2024', '', '', NULL, 0, 'absent', '', '', NULL, 2024, 10, 27, '2024-11-27 14:04:31'),
('localhost', 127, 1, 2024, 'Student', '467151_Wed Nov 27 2024', 'Six', 'A', 3, '?????? ', '467151', 'female_avatar.png', '10-2024', 'November-27-11-2024', 'Wed Nov 27 2024', '', '', NULL, 1, 'present', '', '', NULL, 2024, 10, 27, '2024-11-27 14:04:38'),
('localhost', 128, 1, 2024, 'Student', '241952_Wed Nov 27 2024', 'Six', 'A', 4, 'Karima', '241952', 'female_avatar.png', '10-2024', 'November-27-11-2024', 'Wed Nov 27 2024', '', '', NULL, 0, 'absent', '', '', NULL, 2024, 10, 27, '2024-11-27 14:04:39'),
('localhost', 129, 1, 2024, 'Student', '551763_Wed Nov 27 2024', 'Six', 'A', 5, '???? ???????', '551763', 'male_avatar.png', '10-2024', 'November-27-11-2024', 'Wed Nov 27 2024', '', '', NULL, 0, 'absent', '', '', NULL, 2024, 10, 27, '2024-11-27 23:56:41'),
('localhost', 130, 1, 2024, 'Student', '201564_Wed Nov 27 2024', 'Six', 'A', 6, 'Sarmin', '201564', 'female_avatar.png', '10-2024', 'November-27-11-2024', 'Wed Nov 27 2024', '', '', NULL, 1, 'present', '', '', NULL, 2024, 10, 27, '2024-11-27 23:56:42'),
('localhost', 131, 1, 2024, 'Student', '139041_Wed Nov 27 2024', 'Six', 'A', 7, 'Tasmim', '139041', 'female_avatar.png', '10-2024', 'November-27-11-2024', 'Wed Nov 27 2024', '', '', NULL, 0, 'absent', '', '', NULL, 2024, 10, 27, '2024-11-27 23:56:43'),
('localhost', 132, 1, 2024, 'Student', '854186_Wed Nov 27 2024', 'Six', 'A', 8, '????? ???? ', '854186', 'female_avatar.png', '10-2024', 'November-27-11-2024', 'Wed Nov 27 2024', '', '', NULL, 0, 'absent', '', '', NULL, 2024, 10, 27, '2024-11-27 23:56:45'),
('localhost', 133, 1, 2024, 'Student', '18482_Wed Nov 27 2024', 'Six', 'A', 9, 'Ivamoni', '18482', 'female_avatar.png', '10-2024', 'November-27-11-2024', 'Wed Nov 27 2024', '', '', NULL, 1, 'present', '', '', NULL, 2024, 10, 27, '2024-11-27 23:56:46'),
('localhost', 134, 1, 2024, 'Student', '601792_Wed Dec 04 2024', 'Six', 'A', 1, '????? ??????? ', '601792', 'female_avatar.png', '11-2024', 'December-4-12-2024', 'Wed Dec 04 2024', '', '', NULL, 0, 'absent', '', '', NULL, 2024, 11, 4, '2024-12-04 22:45:27'),
('localhost', 135, 1, 2024, 'Student', '134797_Wed Dec 04 2024', 'Six', 'A', 2, 'Chompa Khatun', '134797', 'female_avatar.png', '11-2024', 'December-4-12-2024', 'Wed Dec 04 2024', '', '', NULL, 0, 'absent', '', '', NULL, 2024, 11, 4, '2024-12-04 22:45:27'),
('localhost', 136, 1, 2024, 'Student', '467151_Wed Dec 04 2024', 'Six', 'A', 3, '?????? ', '467151', 'female_avatar.png', '11-2024', 'December-4-12-2024', 'Wed Dec 04 2024', '', '', NULL, 0, 'absent', '', '', NULL, 2024, 11, 4, '2024-12-04 22:45:32'),
('localhost', 137, 1, 2024, 'Student', '241952_Wed Dec 04 2024', 'Six', 'A', 4, 'Karima', '241952', 'female_avatar.png', '11-2024', 'December-4-12-2024', 'Wed Dec 04 2024', '', '', NULL, 1, 'present', '', '', NULL, 2024, 11, 4, '2024-12-04 22:45:34'),
('localhost', 138, 1, 2024, 'Student', '201564_Wed Dec 04 2024', 'Six', 'A', 6, 'Sarmin', '201564', 'female_avatar.png', '11-2024', 'December-4-12-2024', 'Wed Dec 04 2024', '', '', NULL, 1, 'present', '', '', NULL, 2024, 11, 4, '2024-12-04 22:51:59'),
('localhost', 139, 1, 2024, 'Student', '854186_Wed Dec 04 2024', 'Six', 'A', 8, '????? ???? ', '854186', 'female_avatar.png', '11-2024', 'December-4-12-2024', 'Wed Dec 04 2024', '', '', NULL, 0, 'absent', '', '', NULL, 2024, 11, 4, '2024-12-04 22:52:00'),
('localhost', 140, 1, 2024, 'Student', '723782_Wed Dec 04 2024', 'Six', 'A', 10, '??? ????? ?????? ', '723782', 'female_avatar.png', '11-2024', 'December-4-12-2024', 'Wed Dec 04 2024', '', '', NULL, 1, 'present', '', '', NULL, 2024, 11, 4, '2024-12-04 22:52:19'),
('localhost', 141, 1, 2024, 'Student', '380984_Wed Dec 04 2024', 'Six', 'A', 11, 'Arifa ', '380984', 'female_avatar.png', '11-2024', 'December-4-12-2024', 'Wed Dec 04 2024', '', '', NULL, 0, 'absent', '', '', NULL, 2024, 11, 4, '2024-12-04 22:52:20'),
('localhost', 142, 1, 2024, 'Student', '119795_Wed Dec 04 2024', 'Six', 'A', 12, '??? ??????? ???? ', '119795', 'female_avatar.png', '11-2024', 'December-4-12-2024', 'Wed Dec 04 2024', '', '', NULL, 1, 'present', '', '', NULL, 2024, 11, 4, '2024-12-04 22:52:53'),
('localhost', 143, 1, 2024, 'Student', '601792_Sat Dec 07 2024', 'Six', 'A', 1, '????? ??????? ', '601792', 'female_avatar.png', '11-2024', 'December-7-12-2024', 'Sat Dec 07 2024', '', '', NULL, 1, 'present', '', '', NULL, 2024, 11, 7, '2024-12-07 21:22:56'),
('localhost', 144, 1, 2024, 'Student', '134797_Sat Dec 07 2024', 'Six', 'A', 2, 'Chompa Khatun', '134797', 'female_avatar.png', '11-2024', 'December-7-12-2024', 'Sat Dec 07 2024', '', '', NULL, 0, 'absent', '', '', NULL, 2024, 11, 7, '2024-12-07 21:22:58'),
('localhost', 145, 1, 2024, 'Student', '467151_Sat Dec 07 2024', 'Six', 'A', 3, '?????? ', '467151', 'female_avatar.png', '11-2024', 'December-7-12-2024', 'Sat Dec 07 2024', '', '', NULL, 1, 'present', '', '', NULL, 2024, 11, 7, '2024-12-07 21:23:00'),
('localhost', 146, 1, 2024, 'Student', '241952_Sat Dec 07 2024', 'Six', 'A', 4, 'Karima', '241952', 'female_avatar.png', '11-2024', 'December-7-12-2024', 'Sat Dec 07 2024', '', '', NULL, 1, 'present', '', '', NULL, 2024, 11, 7, '2024-12-07 21:23:10'),
('localhost', 147, 1, 2024, 'Student', '601792_Mon Dec 09 2024', 'Six', 'A', 1, '????? ??????? ', '601792', 'female_avatar.png', '11-2024', 'December-9-12-2024', 'Mon Dec 09 2024', '', '', NULL, 1, 'present', '', '', NULL, 2024, 11, 9, '2024-12-09 22:06:53'),
('localhost', 148, 1, 2024, 'Student', '134797_Mon Dec 09 2024', 'Six', 'A', 2, 'Chompa Khatun', '134797', 'female_avatar.png', '11-2024', 'December-9-12-2024', 'Mon Dec 09 2024', '', '', NULL, 0, 'absent', '', '', NULL, 2024, 11, 9, '2024-12-09 22:06:58'),
('localhost', 149, 1, 2024, 'Student', '467151_Mon Dec 09 2024', 'Six', 'A', 3, '?????? ', '467151', 'female_avatar.png', '11-2024', 'December-9-12-2024', 'Mon Dec 09 2024', '', '', NULL, 1, 'present', '', '', NULL, 2024, 11, 9, '2024-12-09 22:06:59');

-- --------------------------------------------------------

--
-- Table structure for table `attn_student`
--

CREATE TABLE `attn_student` (
  `domain` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `session` int(11) NOT NULL,
  `class` varchar(10) DEFAULT NULL,
  `section` varchar(10) DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `student_id` int(11) NOT NULL,
  `roll` int(11) NOT NULL,
  `get_cal` varchar(100) NOT NULL,
  `find_date` varchar(100) NOT NULL,
  `attn_date` varchar(100) NOT NULL,
  `record_date` varchar(100) NOT NULL,
  `record_time` varchar(100) NOT NULL,
  `punch` varchar(10) DEFAULT NULL,
  `checkout` int(11) DEFAULT NULL,
  `at_status` varchar(10) NOT NULL,
  `overtime` varchar(100) NOT NULL,
  `latetime` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `take_time` int(11) DEFAULT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `at_date` varchar(100) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authentication_session`
--

CREATE TABLE `authentication_session` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `session_expires` int(10) UNSIGNED NOT NULL,
  `session_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bi_catagory`
--

CREATE TABLE `bi_catagory` (
  `domain` varchar(100) NOT NULL DEFAULT 'localhost',
  `ID` int(11) NOT NULL,
  `catagory_name` varchar(300) NOT NULL,
  `catagory_code` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bi_mark`
--

CREATE TABLE `bi_mark` (
  `domain` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `at_date` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `teacher_uuid` varchar(100) NOT NULL,
  `session` int(11) NOT NULL,
  `student_uuid` varchar(100) NOT NULL,
  `roll` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `catagory` varchar(100) NOT NULL,
  `bi` int(11) NOT NULL,
  `bi_no` int(11) NOT NULL,
  `bi_group` varchar(100) NOT NULL,
  `checkout` varchar(500) NOT NULL,
  `bg_color` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bi_mark`
--

INSERT INTO `bi_mark` (`domain`, `ID`, `at_date`, `class`, `section`, `teacher_uuid`, `session`, `student_uuid`, `roll`, `name`, `avatar`, `catagory`, `bi`, `bi_no`, `bi_group`, `checkout`, `bg_color`) VALUES
('localhost', 1, '2024-03-05 21:36:22', 'Six', 'A', '1697209362834', 2024, '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg', '1bbe2059057e84767b272d05c183a0f6', 1, 7, 'group03', '16974514310151bbe2059057e84767b272d05c183a0f6', 'bg-success'),
('localhost', 2, '2024-03-05 21:36:23', 'Six', 'A', '1697209362834', 2024, '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg', '61f9aea42c14b6b1371f0a953199c4c1', 1, 8, 'group03', '169745143101561f9aea42c14b6b1371f0a953199c4c1', 'bg-success'),
('localhost', 3, '2024-03-05 21:36:26', 'Six', 'A', '1697209362834', 2024, '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg', '97922d4ebc627fedae791cb61265875c', 0, 3, 'group02', '169745143101597922d4ebc627fedae791cb61265875c', 'bg-warning'),
('localhost', 4, '2024-03-05 21:36:30', 'Six', 'A', '1697209362834', 2024, '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg', 'e4ac9842d8a3915f9e70de239dfc32ea', 0, 4, 'group02', '1697451431015e4ac9842d8a3915f9e70de239dfc32ea', 'bg-warning'),
('localhost', 5, '2024-03-05 21:36:31', 'Six', 'A', '1697209362834', 2024, '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg', 'a7b3b2f1a7ee64888e2974199018fa4c', 0, 5, 'group02', '1697451431015a7b3b2f1a7ee64888e2974199018fa4c', 'bg-warning'),
('localhost', 6, '2024-03-05 21:36:32', 'Six', 'A', '1697209362834', 2024, '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg', 'ebf798cb22f407cf54f346a52a6ff6c0', 0, 6, 'group02', '1697451431015ebf798cb22f407cf54f346a52a6ff6c0', 'bg-warning'),
('localhost', 7, '2024-03-05 21:36:34', 'Six', 'A', '1697209362834', 2024, '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg', 'c69f61c1e76abe1ec7fa3e048c143e9b', -1, 1, 'group01', '1697451431015c69f61c1e76abe1ec7fa3e048c143e9b', 'bg-danger'),
('localhost', 8, '2024-03-05 21:36:35', 'Six', 'A', '1697209362834', 2024, '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg', '38d0e7d0b4b805e6d1c56cab12c82a50', -1, 2, 'group01', '169745143101538d0e7d0b4b805e6d1c56cab12c82a50', 'bg-danger'),
('localhost', 9, '2024-03-05 21:36:54', 'Six', 'A', '1697209362834', 2024, '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg', '57d66a6f160d25f2af6df363469d6a50', -1, 9, 'group01', '169745143101557d66a6f160d25f2af6df363469d6a50', 'bg-danger'),
('localhost', 10, '2024-03-05 21:36:54', 'Six', 'A', '1697209362834', 2024, '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg', '805730166f14b0a03407783dd4e2780f', -1, 10, 'group01', '1697451431015805730166f14b0a03407783dd4e2780f', 'bg-danger'),
('localhost', 11, '2024-03-28 10:16:13', 'Six', 'A', '1697209362834', 2024, '1698506063682', 1, 'তড়িতা অধিকারী ', 'female_avatar.png', 'c69f61c1e76abe1ec7fa3e048c143e9b', 1, 1, 'gp1', '1698506063682c69f61c1e76abe1ec7fa3e048c143e9b', 'bg-success'),
('localhost', 12, '2024-03-28 10:16:15', 'Six', 'A', '1697209362834', 2024, '1698506063682', 1, 'তড়িতা অধিকারী ', 'female_avatar.png', '38d0e7d0b4b805e6d1c56cab12c82a50', 0, 2, 'gp1', '169850606368238d0e7d0b4b805e6d1c56cab12c82a50', 'bg-warning'),
('localhost', 13, '2024-03-28 10:16:16', 'Six', 'A', '1697209362834', 2024, '1698506063682', 1, 'তড়িতা অধিকারী ', 'female_avatar.png', '97922d4ebc627fedae791cb61265875c', 0, 3, 'gp2', '169850606368297922d4ebc627fedae791cb61265875c', 'bg-warning'),
('localhost', 14, '2024-03-28 10:16:18', 'Six', 'A', '1697209362834', 2024, '1698506063682', 1, 'তড়িতা অধিকারী ', 'female_avatar.png', 'e4ac9842d8a3915f9e70de239dfc32ea', 1, 4, 'gp2', '1698506063682e4ac9842d8a3915f9e70de239dfc32ea', 'bg-success'),
('localhost', 15, '2024-03-28 10:16:19', 'Six', 'A', '1697209362834', 2024, '1698506063682', 1, 'তড়িতা অধিকারী ', 'female_avatar.png', 'a7b3b2f1a7ee64888e2974199018fa4c', 1, 5, 'gp2', '1698506063682a7b3b2f1a7ee64888e2974199018fa4c', 'bg-success'),
('localhost', 16, '2024-03-28 10:16:20', 'Six', 'A', '1697209362834', 2024, '1698506063682', 1, 'তড়িতা অধিকারী ', 'female_avatar.png', 'ebf798cb22f407cf54f346a52a6ff6c0', -1, 6, 'gp2', '1698506063682ebf798cb22f407cf54f346a52a6ff6c0', 'bg-danger'),
('localhost', 17, '2024-03-28 10:16:22', 'Six', 'A', '1697209362834', 2024, '1698506063682', 1, 'তড়িতা অধিকারী ', 'female_avatar.png', '1bbe2059057e84767b272d05c183a0f6', -1, 7, 'gp3', '16985060636821bbe2059057e84767b272d05c183a0f6', 'bg-danger'),
('localhost', 18, '2024-03-28 10:16:23', 'Six', 'A', '1697209362834', 2024, '1698506063682', 1, 'তড়িতা অধিকারী ', 'female_avatar.png', '61f9aea42c14b6b1371f0a953199c4c1', 0, 8, 'gp3', '169850606368261f9aea42c14b6b1371f0a953199c4c1', 'bg-warning'),
('localhost', 19, '2024-03-28 10:16:25', 'Six', 'A', '1697209362834', 2024, '1698506063682', 1, 'তড়িতা অধিকারী ', 'female_avatar.png', '57d66a6f160d25f2af6df363469d6a50', 0, 9, 'gp1', '169850606368257d66a6f160d25f2af6df363469d6a50', 'bg-warning'),
('localhost', 20, '2024-03-28 10:16:26', 'Six', 'A', '1697209362834', 2024, '1698506063682', 1, 'তড়িতা অধিকারী ', 'female_avatar.png', '805730166f14b0a03407783dd4e2780f', 1, 10, 'gp1', '1698506063682805730166f14b0a03407783dd4e2780f', 'bg-success');

-- --------------------------------------------------------

--
-- Table structure for table `bi_transcript`
--

CREATE TABLE `bi_transcript` (
  `domain` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `at_date` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `roll` int(11) NOT NULL,
  `teacher_uuid` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `subject_flag` varchar(100) NOT NULL,
  `subject_code` varchar(100) NOT NULL,
  `session` int(11) NOT NULL,
  `student_uuid` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `catagory` varchar(100) NOT NULL,
  `bi` int(11) NOT NULL,
  `bi_no` int(11) NOT NULL,
  `bi_group` varchar(100) NOT NULL,
  `checkout` varchar(500) NOT NULL,
  `bi_point` int(11) NOT NULL,
  `bg_color` varchar(100) NOT NULL DEFAULT 'null'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bi_transcript`
--

INSERT INTO `bi_transcript` (`domain`, `ID`, `at_date`, `class`, `section`, `roll`, `teacher_uuid`, `subject`, `subject_flag`, `subject_code`, `session`, `student_uuid`, `name`, `avatar`, `catagory`, `bi`, `bi_no`, `bi_group`, `checkout`, `bi_point`, `bg_color`) VALUES
('localhost', 1, '2024-03-05 21:36:22', 'Six', 'A', 1, '1697209362834', '', '', '', 2024, '1697451431015', 'Sumi Akter', '', '1bbe2059057e84767b272d05c183a0f6', 1, 7, 'gp3', '16974514310151bbe2059057e84767b272d05c183a0f6', 1, 'bg-success'),
('localhost', 2, '2024-03-05 21:36:23', 'Six', 'A', 1, '1697209362834', '', '', '', 2024, '1697451431015', 'Sumi Akter', '', '61f9aea42c14b6b1371f0a953199c4c1', 1, 8, 'gp3', '169745143101561f9aea42c14b6b1371f0a953199c4c1', 1, 'bg-success'),
('localhost', 3, '2024-03-05 21:36:26', 'Six', 'A', 1, '1697209362834', '', '', '', 2024, '1697451431015', 'Sumi Akter', '', '97922d4ebc627fedae791cb61265875c', 0, 3, 'gp2', '169745143101597922d4ebc627fedae791cb61265875c', 0, 'bg-warning'),
('localhost', 4, '2024-03-05 21:36:30', 'Six', 'A', 1, '1697209362834', '', '', '', 2024, '1697451431015', 'Sumi Akter', '', 'e4ac9842d8a3915f9e70de239dfc32ea', 0, 4, 'gp2', '1697451431015e4ac9842d8a3915f9e70de239dfc32ea', 0, 'bg-warning'),
('localhost', 5, '2024-03-05 21:36:31', 'Six', 'A', 1, '1697209362834', '', '', '', 2024, '1697451431015', 'Sumi Akter', '', 'a7b3b2f1a7ee64888e2974199018fa4c', 0, 5, 'gp2', '1697451431015a7b3b2f1a7ee64888e2974199018fa4c', 0, 'bg-warning'),
('localhost', 6, '2024-03-05 21:36:32', 'Six', 'A', 1, '1697209362834', '', '', '', 2024, '1697451431015', 'Sumi Akter', '', 'ebf798cb22f407cf54f346a52a6ff6c0', 0, 6, 'gp2', '1697451431015ebf798cb22f407cf54f346a52a6ff6c0', 0, 'bg-warning'),
('localhost', 7, '2024-03-05 21:36:34', 'Six', 'A', 1, '1697209362834', '', '', '', 2024, '1697451431015', 'Sumi Akter', '', 'c69f61c1e76abe1ec7fa3e048c143e9b', -1, 1, 'gp1', '1697451431015c69f61c1e76abe1ec7fa3e048c143e9b', -1, 'bg-danger'),
('localhost', 8, '2024-03-05 21:36:35', 'Six', 'A', 1, '1697209362834', '', '', '', 2024, '1697451431015', 'Sumi Akter', '', '38d0e7d0b4b805e6d1c56cab12c82a50', -1, 2, 'gp1', '169745143101538d0e7d0b4b805e6d1c56cab12c82a50', -1, 'bg-danger'),
('localhost', 9, '2024-03-05 21:36:54', 'Six', 'A', 1, '1697209362834', '', '', '', 2024, '1697451431015', 'Sumi Akter', '', '57d66a6f160d25f2af6df363469d6a50', -1, 9, 'gp1', '169745143101557d66a6f160d25f2af6df363469d6a50', -1, 'bg-danger'),
('localhost', 10, '2024-03-05 21:36:54', 'Six', 'A', 1, '1697209362834', '', '', '', 2024, '1697451431015', 'Sumi Akter', '', '805730166f14b0a03407783dd4e2780f', -1, 10, 'gp1', '1697451431015805730166f14b0a03407783dd4e2780f', -1, 'bg-danger'),
('localhost', 11, '2024-03-28 10:16:14', 'Six', 'A', 1, '1697209362834', '', '', '', 2024, '1698506063682', 'তড়িতা অধিকারী ', '', 'c69f61c1e76abe1ec7fa3e048c143e9b', 1, 1, 'gp1', '1698506063682c69f61c1e76abe1ec7fa3e048c143e9b', 1, 'bg-success'),
('localhost', 12, '2024-03-28 10:16:15', 'Six', 'A', 1, '1697209362834', '', '', '', 2024, '1698506063682', 'তড়িতা অধিকারী ', '', '38d0e7d0b4b805e6d1c56cab12c82a50', 0, 2, 'gp1', '169850606368238d0e7d0b4b805e6d1c56cab12c82a50', 0, 'bg-warning'),
('localhost', 13, '2024-03-28 10:16:16', 'Six', 'A', 1, '1697209362834', '', '', '', 2024, '1698506063682', 'তড়িতা অধিকারী ', '', '97922d4ebc627fedae791cb61265875c', 0, 3, 'gp2', '169850606368297922d4ebc627fedae791cb61265875c', 0, 'bg-warning'),
('localhost', 14, '2024-03-28 10:16:18', 'Six', 'A', 1, '1697209362834', '', '', '', 2024, '1698506063682', 'তড়িতা অধিকারী ', '', 'e4ac9842d8a3915f9e70de239dfc32ea', 1, 4, 'gp2', '1698506063682e4ac9842d8a3915f9e70de239dfc32ea', 1, 'bg-success'),
('localhost', 15, '2024-03-28 10:16:19', 'Six', 'A', 1, '1697209362834', '', '', '', 2024, '1698506063682', 'তড়িতা অধিকারী ', '', 'a7b3b2f1a7ee64888e2974199018fa4c', 1, 5, 'gp2', '1698506063682a7b3b2f1a7ee64888e2974199018fa4c', 1, 'bg-success'),
('localhost', 16, '2024-03-28 10:16:20', 'Six', 'A', 1, '1697209362834', '', '', '', 2024, '1698506063682', 'তড়িতা অধিকারী ', '', 'ebf798cb22f407cf54f346a52a6ff6c0', -1, 6, 'gp2', '1698506063682ebf798cb22f407cf54f346a52a6ff6c0', -1, 'bg-danger'),
('localhost', 17, '2024-03-28 10:16:22', 'Six', 'A', 1, '1697209362834', '', '', '', 2024, '1698506063682', 'তড়িতা অধিকারী ', '', '1bbe2059057e84767b272d05c183a0f6', -1, 7, 'gp3', '16985060636821bbe2059057e84767b272d05c183a0f6', -1, 'bg-danger'),
('localhost', 18, '2024-03-28 10:16:23', 'Six', 'A', 1, '1697209362834', '', '', '', 2024, '1698506063682', 'তড়িতা অধিকারী ', '', '61f9aea42c14b6b1371f0a953199c4c1', 0, 8, 'gp3', '169850606368261f9aea42c14b6b1371f0a953199c4c1', 0, 'bg-warning'),
('localhost', 19, '2024-03-28 10:16:25', 'Six', 'A', 1, '1697209362834', '', '', '', 2024, '1698506063682', 'তড়িতা অধিকারী ', '', '57d66a6f160d25f2af6df363469d6a50', 0, 9, 'gp1', '169850606368257d66a6f160d25f2af6df363469d6a50', 0, 'bg-warning'),
('localhost', 20, '2024-03-28 10:16:26', 'Six', 'A', 1, '1697209362834', '', '', '', 2024, '1698506063682', 'তড়িতা অধিকারী ', '', '805730166f14b0a03407783dd4e2780f', 1, 10, 'gp1', '1698506063682805730166f14b0a03407783dd4e2780f', 1, 'bg-success');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `domain` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `item_name` text NOT NULL,
  `order` int(11) NOT NULL,
  `at_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_section`
--

CREATE TABLE `class_section` (
  `domain` varchar(100) NOT NULL DEFAULT 'localhost',
  `ID` int(11) NOT NULL,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `at_status` varchar(100) NOT NULL DEFAULT 'on',
  `class_status` varchar(100) NOT NULL DEFAULT 'on'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_section`
--

INSERT INTO `class_section` (`domain`, `ID`, `class`, `section`, `at_status`, `class_status`) VALUES
('localhost', 1, 'Six', 'A', 'on', 'on'),
('localhost', 2, 'Six', 'B', 'on', 'on'),
('localhost', 3, 'Six', 'C', 'on', 'on'),
('localhost', 4, 'Seven', 'A', 'on', 'on'),
('localhost', 5, 'Seven', 'B', 'on', 'on'),
('localhost', 6, 'Seven', 'C', 'on', 'on'),
('localhost', 7, 'Eight', 'A', 'on', 'on'),
('localhost', 8, 'Eight', 'B', 'on', 'on'),
('localhost', 9, 'Eight', 'C', 'on', 'on'),
('localhost', 10, 'Nine', 'A', 'on', 'on'),
('localhost', 11, 'Nine', 'B', 'on', 'on'),
('localhost', 12, 'Nine', 'C', 'on', 'on'),
('localhost', 13, 'Ten', 'A', 'on', 'on'),
('localhost', 14, 'Ten', 'B', 'on', 'on'),
('localhost', 241, 'Ten', 'C', 'on', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `domain` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `heading` varchar(500) NOT NULL,
  `paragraph` text NOT NULL,
  `question` varchar(500) NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `domain` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `at_date` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `data_id` text NOT NULL,
  `item_type` varchar(100) NOT NULL DEFAULT 'image',
  `item_title` varchar(100) NOT NULL DEFAULT 'demo',
  `item_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `headofschool`
--

CREATE TABLE `headofschool` (
  `domain` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `at_date` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `at_status` varchar(100) NOT NULL DEFAULT 'active',
  `position` varchar(100) NOT NULL,
  `order_value` varchar(10) NOT NULL DEFAULT 'C',
  `gender` varchar(100) NOT NULL DEFAULT 'Male',
  `name` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ini_bi_catagory`
--

CREATE TABLE `ini_bi_catagory` (
  `domain` varchar(100) NOT NULL DEFAULT 'localhost',
  `ID` int(11) NOT NULL,
  `catagory_name` varchar(300) NOT NULL,
  `catagory_code` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ini_bi_catagory`
--

INSERT INTO `ini_bi_catagory` (`domain`, `ID`, `catagory_name`, `catagory_code`) VALUES
('localhost', 19, 'দলীয়-কাজে-সক্রিয়-অংশগ্রহণ-করেছে', 'c69f61c1e76abe1ec7fa3e048c143e9b'),
('localhost', 20, 'নিজের-বক্তব্য-ও-মতামত-দলের-সবার-সাথে-শেয়ার-করেছে-এবং-অন্যদের-বক্তব্য-শুনে-গঠনমূলক-আলোচনায়-অংশ-নিচ্ছে', '38d0e7d0b4b805e6d1c56cab12c82a50'),
('localhost', 21, 'নির্দিষ্ট-সমস্যা-সমাধানে-পূর্বনির্ধারিত-প্রক্রিয়া-অনুযায়ী-কাজের-ধাপসমূহ-যথাযথভাবে-অনুসরণ-করছে', '97922d4ebc627fedae791cb61265875c'),
('localhost', 23, 'পরিকল্পনা-অনুযায়ী-যথাসময়ে-নির্ধারিত-কাজ-সম্পন্ন-করছে', 'e4ac9842d8a3915f9e70de239dfc32ea'),
('localhost', 24, 'দলীয়-ও-একক-কাজের-বিভিন্ন-ধাপে-সততার-পরিচয়-দিচ্ছে', 'a7b3b2f1a7ee64888e2974199018fa4c'),
('localhost', 26, 'নিজের-দায়িত্ব-পালনের-পাশাপাশি-অন্যদের-কাজে-সহযোগিতা-করছে-এবং-দলে-সমন্বয়-সাধন-করছে', 'ebf798cb22f407cf54f346a52a6ff6c0'),
('localhost', 27, 'অন্যদের-দৃষ্টিভঙ্গির-ভিন্নতা-ও-বৈচিত্র্যের-প্রতি-শ্রদ্ধা-রেখে-তাদের-মতামতের-গঠনমূলক-সমালোচনা-করছে', '1bbe2059057e84767b272d05c183a0f6'),
('localhost', 28, 'দলের-অন্যদের-কাজের-উপর-ভিত্তি-করে-গঠনমূলক-ফিডব্যাক-দিচ্ছে', '61f9aea42c14b6b1371f0a953199c4c1'),
('localhost', 41, 'ব্যাক্তিগত-যোগাগোগ-উপস্থাপন-মডেল-তৈরি-উপকরণ-নির্বাচন-ও-ব্যবহার-ইত্যাদি-ক্ষেত্রে-পরিমিতিবোধ-বৈচিত্র্যময়তা-ও-নান্দনিকতা-বজায়-রেখে-সিদ্ধান্ত-নিচ্ছে', '57d66a6f160d25f2af6df363469d6a50'),
('localhost', 42, ' শিখন-অভিজ্ঞতাসমূহ-চলাকালে-পাঠ্যপুস্তকে-বর্ণিত-কাজগুলো-সম্পন্ন-করছে-এবং-বইয়ের-নির্ধারিত-স্থানে-প্রয়োজনীয়-ছক-অনুশীলনী-পূরণ-করছে', '805730166f14b0a03407783dd4e2780f');

-- --------------------------------------------------------

--
-- Table structure for table `ini_class_section`
--

CREATE TABLE `ini_class_section` (
  `domain` varchar(100) NOT NULL DEFAULT 'localhost',
  `ID` int(11) NOT NULL,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `at_status` varchar(100) NOT NULL DEFAULT 'on',
  `class_status` varchar(100) NOT NULL DEFAULT 'on'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ini_class_section`
--

INSERT INTO `ini_class_section` (`domain`, `ID`, `class`, `section`, `at_status`, `class_status`) VALUES
('localhost', 1, 'Six', 'A', 'on', 'on'),
('localhost', 2, 'Six', 'B', 'on', 'on'),
('localhost', 3, 'Six', 'C', 'on', 'on'),
('localhost', 4, 'Seven', 'A', 'on', 'on'),
('localhost', 5, 'Seven', 'B', 'on', 'on'),
('localhost', 6, 'Seven', 'C', 'on', 'on'),
('localhost', 7, 'Eight', 'A', 'on', 'on'),
('localhost', 8, 'Eight', 'B', 'on', 'on'),
('localhost', 9, 'Eight', 'C', 'on', 'on'),
('localhost', 10, 'Nine', 'A', 'on', 'on'),
('localhost', 11, 'Nine', 'B', 'on', 'on'),
('localhost', 12, 'Nine', 'C', 'on', 'on'),
('localhost', 13, 'Ten', 'A', 'on', 'on'),
('localhost', 14, 'Ten', 'B', 'on', 'on'),
('localhost', 15, 'Ten', 'C', 'on', 'on'),
('localhost', 16, 'Six', 'A', 'on', 'on'),
('localhost', 17, 'Six', 'B', 'on', 'on'),
('localhost', 18, 'Six', 'C', 'on', 'on'),
('localhost', 19, 'Seven', 'A', 'on', 'on'),
('localhost', 20, 'Seven', 'B', 'on', 'on'),
('localhost', 21, 'Seven', 'C', 'on', 'on'),
('localhost', 22, 'Eight', 'A', 'on', 'on'),
('localhost', 23, 'Eight', 'B', 'on', 'on'),
('localhost', 24, 'Eight', 'C', 'on', 'on'),
('localhost', 25, 'Nine', 'A', 'on', 'on'),
('localhost', 26, 'Nine', 'B', 'on', 'on'),
('localhost', 27, 'Nine', 'C', 'on', 'on'),
('localhost', 28, 'Ten', 'A', 'on', 'on'),
('localhost', 29, 'Ten', 'B', 'on', 'on'),
('localhost', 30, 'Ten', 'C', 'on', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `ini_pi`
--

CREATE TABLE `ini_pi` (
  `ID` int(11) NOT NULL,
  `class` varchar(100) NOT NULL,
  `pi_group_flag` varchar(10) NOT NULL,
  `pi_group` varchar(100) NOT NULL,
  `pi_once_no` varchar(10) NOT NULL,
  `pi_once` varchar(100) NOT NULL,
  `pi_no` varchar(10) NOT NULL,
  `pi_name` varchar(200) NOT NULL,
  `pi_value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ini_subject`
--

CREATE TABLE `ini_subject` (
  `domain` varchar(100) NOT NULL DEFAULT 'localhost',
  `ID` int(11) NOT NULL,
  `class` varchar(100) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `subject_code` varchar(100) DEFAULT NULL,
  `teacher_name` varchar(100) NOT NULL DEFAULT 'demo',
  `teacher_index` varchar(100) NOT NULL,
  `teacher_pdsid` varchar(100) NOT NULL,
  `at_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ini_subject`
--

INSERT INTO `ini_subject` (`domain`, `ID`, `class`, `subject`, `subject_code`, `teacher_name`, `teacher_index`, `teacher_pdsid`, `at_date`) VALUES
('localhost', 38, 'Eight', 'বাংলা ব্যকরন ও নির্মিতি', '9d9e1429ec3787b0dbc89ddb67bd0ecb', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 40, 'Eight', 'গণিত', '46d4f7e8cccea38395f9a23882248377', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 41, 'Eight', 'বিজ্ঞান', '3f28b1a4a559a768128e717800206de9', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 42, 'Eight', 'আনন্দ পাঠ', 'f06f225d1276c13b5521fe136aaa4df3', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 43, 'Eight', 'কৃষি শিক্ষা', '8816fe812a2a4ff68c86b053e6028d22', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 44, 'Eight', 'গার্হস্থ্য বিজ্ঞান', '3a89621121090942c4f0c5284336984e', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 45, 'Eight', 'শারীরিক শিক্ষা ও স্বাস্থ্য', '94b7da6c4cf1928e3c73791e5b3ebdde', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 46, 'Eight', 'তথ্য ও যোগাযোগ প্রযুক্তি', '3bfd90be558935b18ae6c1d6fda41c6d', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 47, 'Eight', 'ইসলাম ও নৈতিক শিক্ষা', 'b5af015ac7db8379322475130987b506', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 48, 'Eight', 'হিন্দুধর্ম শিক্ষা', 'b3ea25b1199349066452922b69e47b82', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 49, 'Eight', 'খ্রিস্ট্রাধর্ম শিক্ষা', 'ace2b12d4709d112e2663cc9312cc4b7', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 50, 'Eight', 'কর্ম ও জীবনমুখী শিক্ষা', 'ba355f3afc210a39d3bf91452d4a83ef', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 51, 'Eight', 'চারু ও কারুকলা', 'a8007de39d9f2d1d8816f0d06adec55f', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 52, 'Eight', 'English for Today', 'e73e14c815145d5e78f6bb477997b927', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 53, 'Eight', 'English Grammar and Composition', '71aad9d026eab5a2f33af07823422440', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 54, 'Eight', 'সাহিত্য কনিকা', 'f218c81a70167a8a37bc34146819f615', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 55, 'Eight', 'বাংলাদেশ ও বিশ্বপরিচয়', '160b9f736c51314c32b706160cf59d62', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 56, 'Eight', 'আরবি', 'bba1c6b8657f1fc74715badbdee7f9cb', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 57, 'Eight', 'সংস্কৃতি', '3fef48613f92e168f085e5908dfaace9', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 58, 'Eight', 'পালি', '8b2385d963d5f0d0390f68c072fe130e', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 59, 'Eight', 'সঙ্গগীত', 'bdffb3aeaf5ede3f917824dadcdcaddb', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 60, 'Nine', 'বাংলা সাহিত্য', '66e674be9f987bd17581266588c4a1ed', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 61, 'Nine', 'বাংলা সহপাঠ', '2445b2c97f689aba61a444eb74f8ac2b', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 62, 'Nine', 'বাংলা ভাষার ব্যাকরণ', 'a2fe3b556da2c793e7d14fa3cd3e4e5d', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 63, 'Nine', 'English for Toady', '48a51ea7ecf6e1bf9eb262237124fe3b', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 64, 'Nine', 'গণিত', '46d4f7e8cccea38395f9a23882248377', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 65, 'Nine', 'English Grammar and Composition', '71aad9d026eab5a2f33af07823422440', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 66, 'Nine', 'তথ্য ও যোগাযোগ প্রযুক্তি', '3bfd90be558935b18ae6c1d6fda41c6d', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 67, 'Nine', 'বিজ্ঞান', '3f28b1a4a559a768128e717800206de9', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 68, 'Nine', 'পদার্থ-বিজ্ঞান', '1b8f94cc030524310c4e828837475fc0', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 69, 'Nine', 'রসায়ন', 'c6522f3c6334d04670ad78a32c6299ef', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 70, 'Nine', 'জীব-বিজ্ঞান', '8190f7c33c786debaa8d9733c4047680', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 71, 'Nine', 'উচ্চতর গণিত', 'c3cd5398425de852d39850c77183b631', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 72, 'Nine', 'ভূগোল ও পরিবেশ', '9b050c0b99f1e254881c6d883ece04c7', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 73, 'Nine', 'অর্থনীতি', '64d0895dd4831310b83c02cfa617da15', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 74, 'Nine', 'কৃষিশিক্ষা', '8f500d8c2c1f83faf55a11418170f307', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 75, 'Nine', 'গার্হস্থ্য বিজ্ঞান', '3a89621121090942c4f0c5284336984e', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 76, 'Nine', 'পৌরনীতি ও নাগরিকতা', '72441700f630167ceae80e21444fef50', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 77, 'Nine', 'হিসাব-বিজ্ঞান', '66171a798d19c7fa7e0d4f588dc66d7d', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 78, 'Nine', 'ফিন্যান্স ও ব্যাংকিং', 'fc9e00e61c4ef9a208b276f798c7cea2', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 79, 'Nine', 'ব্যবসায় উদ্যোগ', 'bd954973d04283b1644e69f43b4fbf8c', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 80, 'Nine', 'ইসলাম ও নৈতিক শিক্ষা', 'b5af015ac7db8379322475130987b506', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 81, 'Nine', 'হিন্দুধর্ম শিক্ষা', 'b3ea25b1199349066452922b69e47b82', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 82, 'Nine', 'বৌদ্ধধর্ম শিক্ষা', '463d999cab5882c8c857c0f2e4e021f5', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 83, 'Nine', 'খ্রিষ্টধর্ম শিক্ষা', 'e8d53f94db164a5597c873a70e6f2a7c', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 84, 'Nine', 'ক্যারিয়ার এডুকেশন', 'b387614c56a590cb7252eac0dd12e728', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 85, 'Nine', 'বাংলাদেশ ও বিশ্বপরিচয়', '160b9f736c51314c32b706160cf59d62', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 86, 'Nine', 'চারু ও কারুকলা', 'a8007de39d9f2d1d8816f0d06adec55f', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 87, 'Nine', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'a16444969c9aaa182c3c050be2990063', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 88, 'Nine', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', 'd7d66ff3fd308aac314cf06baba80144', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 89, 'Nine', 'সচিত্র আরবি পাঠ', '92ce373167b2e5ad75415d79bad8c5e3', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 90, 'Nine', 'সংস্কৃত', 'c7ffe4e7dd5978368c87907996b10103', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 91, 'Nine', 'পালি', '8b2385d963d5f0d0390f68c072fe130e', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 92, 'Nine', 'সংগীত', '1df86f671271f59f9ca4996ec71b9afd', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 93, 'Ten', 'বাংলা সাহিত্য', '66e674be9f987bd17581266588c4a1ed', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 94, 'Ten', 'বাংলা সহপাঠ', '2445b2c97f689aba61a444eb74f8ac2b', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 95, 'Ten', 'বাংলা ভাষার ব্যাকরণ', 'a2fe3b556da2c793e7d14fa3cd3e4e5d', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 96, 'Ten', 'English for Toady', '48a51ea7ecf6e1bf9eb262237124fe3b', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 97, 'Ten', 'গণিত', '46d4f7e8cccea38395f9a23882248377', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 98, 'Ten', 'English Grammar and Composition', '71aad9d026eab5a2f33af07823422440', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 99, 'Ten', 'তথ্য ও যোগাযোগ প্রযুক্তি', '3bfd90be558935b18ae6c1d6fda41c6d', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 100, 'Ten', 'বিজ্ঞান', '3f28b1a4a559a768128e717800206de9', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 101, 'Ten', 'পদার্থ-বিজ্ঞান', '1b8f94cc030524310c4e828837475fc0', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 102, 'Ten', 'রসায়ন', 'c6522f3c6334d04670ad78a32c6299ef', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 103, 'Ten', 'জীব-বিজ্ঞান', '8190f7c33c786debaa8d9733c4047680', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 104, 'Ten', 'উচ্চতর গণিত', 'c3cd5398425de852d39850c77183b631', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 105, 'Ten', 'ভূগোল ও পরিবেশ', '9b050c0b99f1e254881c6d883ece04c7', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 106, 'Ten', 'অর্থনীতি', '64d0895dd4831310b83c02cfa617da15', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 107, 'Ten', 'কৃষিশিক্ষা', '8f500d8c2c1f83faf55a11418170f307', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 108, 'Ten', 'গার্হস্থ্য বিজ্ঞান', '3a89621121090942c4f0c5284336984e', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 109, 'Ten', 'পৌরনীতি ও নাগরিকতা', '72441700f630167ceae80e21444fef50', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 110, 'Ten', 'হিসাব-বিজ্ঞান', '66171a798d19c7fa7e0d4f588dc66d7d', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 111, 'Ten', 'ফিন্যান্স ও ব্যাংকিং', 'fc9e00e61c4ef9a208b276f798c7cea2', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 112, 'Ten', 'ব্যবসায় উদ্যোগ', 'bd954973d04283b1644e69f43b4fbf8c', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 113, 'Ten', 'ইসলাম ও নৈতিক শিক্ষা', 'b5af015ac7db8379322475130987b506', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 114, 'Ten', 'হিন্দুধর্ম শিক্ষা', 'b3ea25b1199349066452922b69e47b82', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 115, 'Ten', 'বৌদ্ধধর্ম শিক্ষা', '463d999cab5882c8c857c0f2e4e021f5', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 116, 'Ten', 'খ্রিষ্টধর্ম শিক্ষা', 'e8d53f94db164a5597c873a70e6f2a7c', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 117, 'Ten', 'ক্যারিয়ার এডুকেশন', 'b387614c56a590cb7252eac0dd12e728', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 118, 'Ten', 'বাংলাদেশ ও বিশ্বপরিচয়', '160b9f736c51314c32b706160cf59d62', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 119, 'Ten', 'চারু ও কারুকলা', 'a8007de39d9f2d1d8816f0d06adec55f', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 120, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'a16444969c9aaa182c3c050be2990063', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 121, 'Ten', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', 'd7d66ff3fd308aac314cf06baba80144', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 122, 'Ten', 'সচিত্র আরবি পাঠ', '92ce373167b2e5ad75415d79bad8c5e3', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 123, 'Ten', 'সংস্কৃত', 'c7ffe4e7dd5978368c87907996b10103', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 124, 'Ten', 'পালি', '8b2385d963d5f0d0390f68c072fe130e', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 125, 'Ten', 'সংগীত', '1df86f671271f59f9ca4996ec71b9afd', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 160, 'Eight', 'বাংলা ১ম', '90d8b3d9c47302ebf62e66c6d95ecd97', 'demo', '', '', '2023-02-17 14:08:52'),
('localhost', 161, 'Eight', 'বাংলা ২য়', 'fc94868c29e22af94f95faf8a5c6ee50', 'demo', '', '', '2023-02-17 14:08:52'),
('localhost', 162, 'Eight', 'ইংরেজী ১ম', '05a194a60d8be4a37a34fab0fbaa3358', 'demo', '', '', '2023-02-17 14:08:52'),
('localhost', 163, 'Eight', 'ইংরেজী ২য়', '650e0fc1ef3792dfec9b00b841d5ede7', 'demo', '', '', '2023-02-17 14:08:52'),
('localhost', 164, 'Nine', 'বাংলা ১ম', '90d8b3d9c47302ebf62e66c6d95ecd97', 'demo', '', '', '2023-02-17 14:08:56'),
('localhost', 165, 'Nine', 'বাংলা ২য়', 'fc94868c29e22af94f95faf8a5c6ee50', 'demo', '', '', '2023-02-17 14:08:56'),
('localhost', 166, 'Nine', 'ইংরেজী ১ম', '05a194a60d8be4a37a34fab0fbaa3358', 'demo', '', '', '2023-02-17 14:08:56'),
('localhost', 167, 'Nine', 'ইংরেজী ২য়', '650e0fc1ef3792dfec9b00b841d5ede7', 'demo', '', '', '2023-02-17 14:08:56'),
('localhost', 168, 'Ten', 'বাংলা ১ম', '90d8b3d9c47302ebf62e66c6d95ecd97', 'demo', '', '', '2023-02-17 14:09:03'),
('localhost', 169, 'Ten', 'বাংলা ২য়', 'fc94868c29e22af94f95faf8a5c6ee50', 'demo', '', '', '2023-02-17 14:09:03'),
('localhost', 170, 'Ten', 'ইংরেজী ১ম', '05a194a60d8be4a37a34fab0fbaa3358', 'demo', '', '', '2023-02-17 14:09:03'),
('localhost', 171, 'Ten', 'ইংরেজী ২য়', '650e0fc1ef3792dfec9b00b841d5ede7', 'demo', '', '', '2023-02-17 14:09:03'),
('localhost', 172, 'Nine', 'সামাঃ বিজ্ঞান', '8b2ec5f2dc2737a5a764487ce6045255', 'demo', '', '', '2023-02-18 07:13:42'),
('localhost', 173, 'Ten', 'সামাঃ বিজ্ঞান', '8b2ec5f2dc2737a5a764487ce6045255', 'demo', '', '', '2023-02-18 07:13:46'),
('localhost', 177, 'Eight', 'বিতর্ক', '7909604a34d7f8360b6995382a8f34c8', 'demo', '', '', '2023-02-18 08:20:21'),
('localhost', 178, 'Eight', 'ডিজিটাল প্রযুক্তি', '74986ac00a68c79dce1a06f8dc141b18', 'demo', '', '', '2023-02-18 08:56:07'),
('localhost', 182, 'Six', 'বৌদ্ধধর্ম-শিক্ষা', '11caa23d9dfe2cd67cc812eb7472b9a0', 'demo', '', '', '2023-06-17 00:23:34'),
('localhost', 183, 'Six', 'খ্রিস্ট্রধর্ম-শিক্ষা', '71b1ad7c8e18f1f9864898b5a179d573', 'demo', '', '', '2023-06-17 00:23:55'),
('localhost', 184, 'Six', 'হিন্দুধর্ম-শিক্ষা', '52aee443e615fa4edb1bb3bc970bd372', 'demo', '', '', '2023-06-17 00:24:14'),
('localhost', 185, 'Six', 'ইসলাম-শিক্ষা', '735fa2f858db7274dbc69fad832f1165', 'demo', '', '', '2023-06-17 00:24:30'),
('localhost', 186, 'Six', 'শিল্প-ও-সংস্কৃতি', '1188a0b94298adfef5c76a4c1048f776', 'demo', '', '', '2023-06-17 00:24:52'),
('localhost', 187, 'Six', 'জীবন-ও-জীবিকা', 'dd8f2c4a87ba9153c97429f80a80435b', 'demo', '', '', '2023-06-17 00:25:11'),
('localhost', 188, 'Six', 'স্বাস্থ্য-সুরক্ষা', '71c7e5e234533d9b110bf455f05371dd', 'demo', '', '', '2023-06-17 00:25:30'),
('localhost', 189, 'Six', 'ডিজিটাল-প্রযুক্তি', 'b60ca3b6c41b963b86be96b3bf449f3c', 'demo', '', '', '2023-06-17 00:25:46'),
('localhost', 190, 'Six', 'ইতিহাস-ও-সামাজিক-বিজ্ঞান-অনুশীলন-বই', '418931bdba594528818a22f5cef74236', 'demo', '', '', '2023-06-17 00:26:08'),
('localhost', 191, 'Six', 'বিজ্ঞান-অনুশীলন-বই', '5804989be6868f0c12d43525b3ed32c6', 'demo', '', '', '2023-06-17 00:26:35'),
('localhost', 197, 'Seven', 'বৌদ্ধধর্ম-শিক্ষা', '11caa23d9dfe2cd67cc812eb7472b9a0', 'demo', '', '', '2023-06-17 00:29:25'),
('localhost', 198, 'Seven', 'খ্রিস্ট্রধর্ম-শিক্ষা', '71b1ad7c8e18f1f9864898b5a179d573', 'demo', '', '', '2023-06-17 00:29:46'),
('localhost', 199, 'Seven', 'হিন্দুধর্ম-শিক্ষা', '52aee443e615fa4edb1bb3bc970bd372', 'demo', '', '', '2023-06-17 00:30:19'),
('localhost', 200, 'Seven', 'ইসলাম-শিক্ষা', '735fa2f858db7274dbc69fad832f1165', 'demo', '', '', '2023-06-17 00:30:40'),
('localhost', 201, 'Seven', 'শিল্প-ও-সংস্কৃতি', '1188a0b94298adfef5c76a4c1048f776', 'demo', '', '', '2023-06-17 00:31:00'),
('localhost', 202, 'Seven', 'জীবন-ও-জীবিকা', 'dd8f2c4a87ba9153c97429f80a80435b', 'demo', '', '', '2023-06-17 00:31:21'),
('localhost', 203, 'Seven', 'স্বাস্থ্য-সুরক্ষা', '71c7e5e234533d9b110bf455f05371dd', 'demo', '', '', '2023-06-17 00:31:40'),
('localhost', 204, 'Seven', 'ডিজিটাল-প্রযুক্তি', 'b60ca3b6c41b963b86be96b3bf449f3c', 'demo', '', '', '2023-06-17 00:32:00'),
('localhost', 205, 'Seven', 'ইতিহাস-ও-সামাজিক-বিজ্ঞান-অনুশীলন-বই', '418931bdba594528818a22f5cef74236', 'demo', '', '', '2023-06-17 00:32:25'),
('localhost', 206, 'Seven', 'বিজ্ঞান-অনুশীলন-বই', '5804989be6868f0c12d43525b3ed32c6', 'demo', '', '', '2023-06-17 00:32:46'),
('localhost', 207, 'Seven', 'বিজ্ঞান-অনুসন্ধানী-পাঠ', '86036aa776d453c5244e3ba9a302b1d6', 'demo', '', '', '2023-06-17 00:33:08'),
('localhost', 208, 'Seven', 'গণিত', '46d4f7e8cccea38395f9a23882248377', 'demo', '', '', '2023-06-17 00:33:32'),
('localhost', 209, 'Seven', 'English', 'cc3556329d4583319dca2e10ff96baf7', 'demo', '', '', '2023-06-17 00:33:54'),
('localhost', 210, 'Seven', 'বাংলা', 'cb5d1a2dcd672d11b2cd71c381eeab96', 'demo', '', '', '2023-06-17 00:34:20'),
('localhost', 220, 'Six', 'বাংলা', 'cb5d1a2dcd672d11b2cd71c381eeab96', 'demo', '', '', '2023-09-26 16:58:14'),
('localhost', 221, 'Six', 'গণিত', '46d4f7e8cccea38395f9a23882248377', 'demo', '', '', '2023-09-27 03:53:41'),
('localhost', 222, 'Six', 'English', 'cc3556329d4583319dca2e10ff96baf7', 'demo', '', '', '2023-09-26 16:58:14');

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `domain` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `year` varchar(100) NOT NULL DEFAULT '2022',
  `book_name` varchar(100) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `section_name` varchar(100) NOT NULL,
  `book_author` varchar(100) NOT NULL,
  `book_copy` int(11) NOT NULL,
  `book_image` varchar(100) NOT NULL DEFAULT 'book_avatar.png',
  `description` text NOT NULL,
  `at_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `domain` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `session` int(11) NOT NULL DEFAULT 2023,
  `find_date` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `notice_from` varchar(100) NOT NULL,
  `notice_for` varchar(100) NOT NULL,
  `attachment` varchar(100) NOT NULL,
  `attachment_type` varchar(100) NOT NULL DEFAULT 'pdf',
  `at_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`domain`, `ID`, `title`, `session`, `find_date`, `description`, `notice_from`, `notice_for`, `attachment`, `attachment_type`, `at_date`) VALUES
('saanviabc.com', 23, 'Git education', 2023, '10/21/2023', 'For new users, using the terminal view can seem a bit complicated. Don\'t worry! We will keep it really simple, and learning this way gives you a good grasp of how Git works.\r\n\r\nIn the code above, you can see commands (input) and output.\r\n\r\nLines like this are commands we input:', '', '', '1697910526545_git-cheat-sheet-education.pdf', 'application/pdf', '2023-10-21 17:48:00'),
('saanviabc.com', 24, 'hi', 2023, '10/21/2023', 'test', '', '', '1697910727918_387813432_1465556917344855_4047588190430716232_n.jpg', 'image/jpeg', '2023-10-21 17:52:07'),
('bejidangakawhs.saanviabc.com', 27, 'Annual exam 2023', 2023, '11/2/2023', 'Annual exam 2023 held on 13 november 2023.Please be prepare for exam.', '', '', 'demo.pdf', 'text', '2023-11-02 08:03:00'),
('saanviabc.com', 28, 'Our school exam notice', 2023, '11/4/2023', 'Our school annual exam held on 13 november 2023 . All our student be prepared for exam.\r\n\r\nHeadmaster\r\nRakib hossain\r\n\r\ndemo high school', '', '', 'demo.pdf', 'text', '2023-11-04 07:19:00'),
('saanviabc.com', 29, 'Exam notice', 2023, '11/5/2023', 'gfashgfdhasfhd', '', '', 'demo.pdf', 'text', '2023-11-05 05:57:00');

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `domain` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `parent_uuid` varchar(100) NOT NULL,
  `session` int(11) NOT NULL DEFAULT 2023,
  `name` varchar(100) NOT NULL,
  `gender` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL DEFAULT 'male_avatar.png',
  `password` varchar(100) NOT NULL,
  `student_uuid` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `relation` varchar(100) NOT NULL DEFAULT 'N/A',
  `permission` varchar(100) NOT NULL DEFAULT 'deny',
  `at_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pic_mark`
--

CREATE TABLE `pic_mark` (
  `domain` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `session` int(11) NOT NULL DEFAULT 2023,
  `at_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `subject_flag` varchar(100) NOT NULL,
  `subject_code` varchar(100) NOT NULL,
  `chapter` varchar(100) NOT NULL,
  `pi` varchar(10) NOT NULL,
  `pi_group` varchar(100) NOT NULL,
  `pi_no` int(11) NOT NULL,
  `checkout` varchar(200) NOT NULL,
  `bg_color` varchar(100) NOT NULL,
  `teacher_uuid` varchar(100) NOT NULL,
  `student_uuid` varchar(100) NOT NULL,
  `roll` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pic_mark`
--

INSERT INTO `pic_mark` (`domain`, `ID`, `session`, `at_date`, `class`, `section`, `subject`, `subject_flag`, `subject_code`, `chapter`, `pi`, `pi_group`, `pi_no`, `checkout`, `bg_color`, `teacher_uuid`, `student_uuid`, `roll`, `name`, `avatar`) VALUES
('localhost', 1, 2024, '2024-03-05 15:35:06', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-1', '0', 'gp1', 0, '1698845201207cc3556329d4583319dca2e10ff96baf7gp1_6-1-1', 'bg-warning', '', '1698845201207', 1, 'লিমন মিনা ', 'male_avatar.png'),
('localhost', 2, 2024, '2024-03-05 15:35:08', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-2', '0', 'gp1', 0, '1698845201207cc3556329d4583319dca2e10ff96baf7gp1_6-1-2', 'bg-warning', '', '1698845201207', 1, 'লিমন মিনা ', 'male_avatar.png'),
('localhost', 3, 2024, '2024-03-05 15:35:09', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-3', '0', 'gp1', 0, '1698845201207cc3556329d4583319dca2e10ff96baf7gp1_6-1-3', 'bg-warning', '', '1698845201207', 1, 'লিমন মিনা ', 'male_avatar.png'),
('localhost', 4, 2024, '2024-03-05 15:35:14', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-1', '-1', 'gp2', 0, '1698845201207cc3556329d4583319dca2e10ff96baf7gp2_6-2-1', 'bg-danger', '', '1698845201207', 1, 'লিমন মিনা ', 'male_avatar.png'),
('localhost', 5, 2024, '2024-03-05 15:35:15', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-2', '-1', 'gp2', 0, '1698845201207cc3556329d4583319dca2e10ff96baf7gp2_6-2-2', 'bg-danger', '', '1698845201207', 1, 'লিমন মিনা ', 'male_avatar.png'),
('localhost', 6, 2024, '2024-03-05 15:35:18', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp3_6-3-1', '1', 'gp3', 0, '1698845201207cc3556329d4583319dca2e10ff96baf7gp3_6-3-1', 'bg-success', '', '1698845201207', 1, 'লিমন মিনা ', 'male_avatar.png'),
('localhost', 7, 2024, '2024-03-05 15:35:19', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp3_6-3-2', '1', 'gp3', 0, '1698845201207cc3556329d4583319dca2e10ff96baf7gp3_6-3-2', 'bg-success', '', '1698845201207', 1, 'লিমন মিনা ', 'male_avatar.png'),
('localhost', 8, 2024, '2024-03-05 15:56:32', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-1', '-1', 'gp1', 0, '1697451431015cc3556329d4583319dca2e10ff96baf7gp1_6-1-1', 'bg-danger', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 9, 2024, '2024-03-05 15:56:34', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-2', '-1', 'gp1', 0, '1697451431015cc3556329d4583319dca2e10ff96baf7gp1_6-1-2', 'bg-danger', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 10, 2024, '2024-03-05 15:56:40', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-3', '-1', 'gp1', 0, '1697451431015cc3556329d4583319dca2e10ff96baf7gp1_6-1-3', 'bg-danger', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 11, 2024, '2024-03-05 15:56:56', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-1', '0', 'gp2', 0, '1697451431015cc3556329d4583319dca2e10ff96baf7gp2_6-2-1', 'bg-warning', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 12, 2024, '2024-03-05 15:56:56', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-2', '0', 'gp2', 0, '1697451431015cc3556329d4583319dca2e10ff96baf7gp2_6-2-2', 'bg-warning', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 13, 2024, '2024-03-05 15:57:09', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp3_6-3-1', '1', 'gp3', 0, '1697451431015cc3556329d4583319dca2e10ff96baf7gp3_6-3-1', 'bg-success', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 14, 2024, '2024-03-05 15:57:09', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp3_6-3-2', '1', 'gp3', 0, '1697451431015cc3556329d4583319dca2e10ff96baf7gp3_6-3-2', 'bg-success', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 15, 2024, '2024-03-05 17:58:45', 'Six', 'A', 'গণিত', 'Six_A_গণিত', '46d4f7e8cccea38395f9a23882248377', 'gp1_6-1-1', '1', 'gp1', 0, '169745143101546d4f7e8cccea38395f9a23882248377gp1_6-1-1', 'bg-success', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 16, 2024, '2024-03-05 17:58:46', 'Six', 'A', 'গণিত', 'Six_A_গণিত', '46d4f7e8cccea38395f9a23882248377', 'gp1_6-1-2', '1', 'gp1', 0, '169745143101546d4f7e8cccea38395f9a23882248377gp1_6-1-2', 'bg-success', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 17, 2024, '2024-03-05 17:58:47', 'Six', 'A', 'গণিত', 'Six_A_গণিত', '46d4f7e8cccea38395f9a23882248377', 'gp2_6-2-1', '-1', 'gp2', 0, '169745143101546d4f7e8cccea38395f9a23882248377gp2_6-2-1', 'bg-danger', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 18, 2024, '2024-03-05 17:58:48', 'Six', 'A', 'গণিত', 'Six_A_গণিত', '46d4f7e8cccea38395f9a23882248377', 'gp2_6-3-1', '-1', 'gp2', 0, '169745143101546d4f7e8cccea38395f9a23882248377gp2_6-3-1', 'bg-danger', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 19, 2024, '2024-03-06 05:43:29', 'Six', 'A', 'ডিজিটাল-প্রযুক্তি', 'Six_A_ডিজিটাল', 'b60ca3b6c41b963b86be96b3bf449f3c', 'gp1_6-1-1', '-1', 'gp1', 0, '1697451431015b60ca3b6c41b963b86be96b3bf449f3cgp1_6-1-1', 'bg-danger', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 20, 2024, '2024-03-06 05:43:31', 'Six', 'A', 'ডিজিটাল-প্রযুক্তি', 'Six_A_ডিজিটাল', 'b60ca3b6c41b963b86be96b3bf449f3c', 'gp1_6-4-1', '-1', 'gp1', 0, '1697451431015b60ca3b6c41b963b86be96b3bf449f3cgp1_6-4-1', 'bg-danger', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 21, 2024, '2024-03-06 05:43:33', 'Six', 'A', 'ডিজিটাল-প্রযুক্তি', 'Six_A_ডিজিটাল', 'b60ca3b6c41b963b86be96b3bf449f3c', 'gp2_6-5-1', '-1', 'gp2', 0, '1697451431015b60ca3b6c41b963b86be96b3bf449f3cgp2_6-5-1', 'bg-danger', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 22, 2024, '2024-03-06 05:43:35', 'Six', 'A', 'ডিজিটাল-প্রযুক্তি', 'Six_A_ডিজিটাল', 'b60ca3b6c41b963b86be96b3bf449f3c', 'gp3_6-2-1', '0', 'gp3', 0, '1697451431015b60ca3b6c41b963b86be96b3bf449f3cgp3_6-2-1', 'bg-warning', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 23, 2024, '2024-03-06 05:43:37', 'Six', 'A', 'ডিজিটাল-প্রযুক্তি', 'Six_A_ডিজিটাল', 'b60ca3b6c41b963b86be96b3bf449f3c', 'gp3_6-3-1', '0', 'gp3', 0, '1697451431015b60ca3b6c41b963b86be96b3bf449f3cgp3_6-3-1', 'bg-warning', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 24, 2024, '2024-03-06 05:43:38', 'Six', 'A', 'ডিজিটাল-প্রযুক্তি', 'Six_A_ডিজিটাল', 'b60ca3b6c41b963b86be96b3bf449f3c', 'gp4_6-6-1', '0', 'gp4', 0, '1697451431015b60ca3b6c41b963b86be96b3bf449f3cgp4_6-6-1', 'bg-warning', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 25, 2024, '2024-03-06 05:43:40', 'Six', 'A', 'ডিজিটাল-প্রযুক্তি', 'Six_A_ডিজিটাল', 'b60ca3b6c41b963b86be96b3bf449f3c', 'gp4_6-7-1', '1', 'gp4', 0, '1697451431015b60ca3b6c41b963b86be96b3bf449f3cgp4_6-7-1', 'bg-success', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 26, 2024, '2024-03-06 05:43:41', 'Six', 'A', 'ডিজিটাল-প্রযুক্তি', 'Six_A_ডিজিটাল', 'b60ca3b6c41b963b86be96b3bf449f3c', 'gp4_6-8-1', '1', 'gp4', 0, '1697451431015b60ca3b6c41b963b86be96b3bf449f3cgp4_6-8-1', 'bg-success', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 27, 2024, '2024-03-06 05:43:42', 'Six', 'A', 'ডিজিটাল-প্রযুক্তি', 'Six_A_ডিজিটাল', 'b60ca3b6c41b963b86be96b3bf449f3c', 'gp4_6-9-1', '1', 'gp4', 0, '1697451431015b60ca3b6c41b963b86be96b3bf449f3cgp4_6-9-1', 'bg-success', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 28, 2024, '2024-03-10 08:06:03', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp1_6-2-1', '1', 'gp1', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp1_6-2-1', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 29, 2024, '2024-03-10 08:06:05', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp1_6-2-2', '1', 'gp1', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp1_6-2-2', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 30, 2024, '2024-03-10 08:06:06', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp2_6-3-1', '1', 'gp2', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp2_6-3-1', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 31, 2024, '2024-03-10 08:06:07', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp2_6-3-2', '1', 'gp2', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp2_6-3-2', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 32, 2024, '2024-03-10 08:06:08', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp2_6-4-1', '1', 'gp2', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp2_6-4-1', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 33, 2024, '2024-03-10 08:06:09', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp2_6-4-2', '1', 'gp2', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp2_6-4-2', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 34, 2024, '2024-03-10 08:06:11', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp3_6-5-1', '1', 'gp3', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp3_6-5-1', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 35, 2024, '2024-03-10 08:06:12', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp3_6-5-2', '1', 'gp3', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp3_6-5-2', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 36, 2024, '2024-03-10 08:06:13', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp4_6-6-1', '1', 'gp4', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp4_6-6-1', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 37, 2024, '2024-03-10 08:06:15', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp4_6-6-2', '1', 'gp4', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp4_6-6-2', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 38, 2024, '2024-03-10 08:06:17', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp4_6-7-1', '1', 'gp4', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp4_6-7-1', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 39, 2024, '2024-03-10 08:06:19', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp4_6-7-2', '1', 'gp4', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp4_6-7-2', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 40, 2024, '2024-03-10 08:06:20', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp2_6-8-1', '1', 'gp2', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp2_6-8-1', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 41, 2024, '2024-03-10 08:06:22', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp2_6-8-2', '1', 'gp2', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp2_6-8-2', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 42, 2024, '2024-03-10 08:06:32', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp5_6-9-1', '1', 'gp5', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp5_6-9-1', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 43, 2024, '2024-03-10 08:06:32', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp5_6-9-2', '1', 'gp5', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp5_6-9-2', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 44, 2024, '2024-03-10 08:06:32', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp5_6-10-1', '1', 'gp5', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp5_6-10-1', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 45, 2024, '2024-03-10 08:06:32', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp5_6-10-2', '1', 'gp5', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp5_6-10-2', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 46, 2024, '2024-11-25 04:07:53', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-1', '1', 'gp1', 0, '1698506063682cc3556329d4583319dca2e10ff96baf7gp1_6-1-1', 'bg-success', '', '1698506063682', 1, 'তড়িতা অধিকারী ', 'female_avatar.png'),
('localhost', 47, 2024, '2024-11-25 04:07:54', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-2', '0', 'gp1', 0, '1698506063682cc3556329d4583319dca2e10ff96baf7gp1_6-1-2', 'bg-warning', '', '1698506063682', 1, 'তড়িতা অধিকারী ', 'female_avatar.png'),
('localhost', 48, 2024, '2024-11-25 04:07:56', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-3', '-1', 'gp1', 0, '1698506063682cc3556329d4583319dca2e10ff96baf7gp1_6-1-3', 'bg-danger', '', '1698506063682', 1, 'তড়িতা অধিকারী ', 'female_avatar.png'),
('localhost', 49, 2024, '2024-11-25 04:07:57', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-1', '0', 'gp2', 0, '1698506063682cc3556329d4583319dca2e10ff96baf7gp2_6-2-1', 'bg-warning', '', '1698506063682', 1, 'তড়িতা অধিকারী ', 'female_avatar.png'),
('localhost', 50, 2024, '2024-11-25 04:07:58', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-2', '1', 'gp2', 0, '1698506063682cc3556329d4583319dca2e10ff96baf7gp2_6-2-2', 'bg-success', '', '1698506063682', 1, 'তড়িতা অধিকারী ', 'female_avatar.png'),
('localhost', 51, 2024, '2024-11-25 04:08:00', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp3_6-3-1', '-1', 'gp3', 0, '1698506063682cc3556329d4583319dca2e10ff96baf7gp3_6-3-1', 'bg-danger', '', '1698506063682', 1, 'তড়িতা অধিকারী ', 'female_avatar.png'),
('localhost', 52, 2024, '2024-11-25 04:08:01', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-2', '-1', 'gp2', 0, '1698299881366cc3556329d4583319dca2e10ff96baf7gp2_6-2-2', 'bg-danger', '', '1698299881366', 2, 'Chompa Khatun', 'female_avatar.png'),
('localhost', 53, 2024, '2024-11-25 04:08:02', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-1', '0', 'gp2', 0, '1698299881366cc3556329d4583319dca2e10ff96baf7gp2_6-2-1', 'bg-warning', '', '1698299881366', 2, 'Chompa Khatun', 'female_avatar.png'),
('localhost', 54, 2024, '2024-11-25 04:08:03', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-3', '-1', 'gp1', 0, '1698299881366cc3556329d4583319dca2e10ff96baf7gp1_6-1-3', 'bg-danger', '', '1698299881366', 2, 'Chompa Khatun', 'female_avatar.png'),
('localhost', 55, 2024, '2024-11-25 04:08:04', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-2', '-1', 'gp1', 0, '1698299881366cc3556329d4583319dca2e10ff96baf7gp1_6-1-2', 'bg-danger', '', '1698299881366', 2, 'Chompa Khatun', 'female_avatar.png'),
('localhost', 56, 2024, '2024-11-25 04:08:06', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-1', '-1', 'gp1', 0, '1698299881366cc3556329d4583319dca2e10ff96baf7gp1_6-1-1', 'bg-danger', '', '1698299881366', 2, 'Chompa Khatun', 'female_avatar.png'),
('localhost', 57, 2024, '2024-11-25 04:08:08', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp3_6-3-1', '0', 'gp3', 0, '1698299881366cc3556329d4583319dca2e10ff96baf7gp3_6-3-1', 'bg-warning', '', '1698299881366', 2, 'Chompa Khatun', 'female_avatar.png'),
('localhost', 58, 2024, '2024-11-25 04:08:09', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp3_6-3-2', '0', 'gp3', 0, '1698299881366cc3556329d4583319dca2e10ff96baf7gp3_6-3-2', 'bg-warning', '', '1698299881366', 2, 'Chompa Khatun', 'female_avatar.png'),
('localhost', 59, 2024, '2024-11-25 04:08:11', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-1', '1', 'gp1', 0, '1698659885616cc3556329d4583319dca2e10ff96baf7gp1_6-1-1', 'bg-success', '', '1698659885616', 3, 'তানিয়া ', 'female_avatar.png'),
('localhost', 60, 2024, '2024-11-25 04:08:12', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-2', '0', 'gp1', 0, '1698659885616cc3556329d4583319dca2e10ff96baf7gp1_6-1-2', 'bg-warning', '', '1698659885616', 3, 'তানিয়া ', 'female_avatar.png'),
('localhost', 61, 2024, '2024-11-25 04:08:13', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-3', '-1', 'gp1', 0, '1698659885616cc3556329d4583319dca2e10ff96baf7gp1_6-1-3', 'bg-danger', '', '1698659885616', 3, 'তানিয়া ', 'female_avatar.png'),
('localhost', 62, 2024, '2024-11-25 04:08:14', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-1', '-1', 'gp2', 0, '1698659885616cc3556329d4583319dca2e10ff96baf7gp2_6-2-1', 'bg-danger', '', '1698659885616', 3, 'তানিয়া ', 'female_avatar.png'),
('localhost', 63, 2024, '2024-11-25 04:08:15', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-2', '1', 'gp2', 0, '1698659885616cc3556329d4583319dca2e10ff96baf7gp2_6-2-2', 'bg-success', '', '1698659885616', 3, 'তানিয়া ', 'female_avatar.png'),
('localhost', 64, 2024, '2024-11-25 04:08:17', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp3_6-3-1', '0', 'gp3', 0, '1698659885616cc3556329d4583319dca2e10ff96baf7gp3_6-3-1', 'bg-warning', '', '1698659885616', 3, 'তানিয়া ', 'female_avatar.png'),
('localhost', 65, 2024, '2024-11-25 04:08:18', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp3_6-3-2', '0', 'gp3', 0, '1698659885616cc3556329d4583319dca2e10ff96baf7gp3_6-3-2', 'bg-warning', '', '1698659885616', 3, 'তানিয়া ', 'female_avatar.png'),
('localhost', 66, 2024, '2024-11-25 04:08:20', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-1', '0', 'gp1', 0, '1698738939274cc3556329d4583319dca2e10ff96baf7gp1_6-1-1', 'bg-warning', '', '1698738939274', 4, 'Karima', 'female_avatar.png'),
('localhost', 67, 2024, '2024-11-25 04:08:21', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-2', '-1', 'gp1', 0, '1698738939274cc3556329d4583319dca2e10ff96baf7gp1_6-1-2', 'bg-danger', '', '1698738939274', 4, 'Karima', 'female_avatar.png'),
('localhost', 68, 2024, '2024-11-25 04:08:22', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-3', '1', 'gp1', 0, '1698738939274cc3556329d4583319dca2e10ff96baf7gp1_6-1-3', 'bg-success', '', '1698738939274', 4, 'Karima', 'female_avatar.png'),
('localhost', 69, 2024, '2024-11-25 04:08:23', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-1', '0', 'gp2', 0, '1698738939274cc3556329d4583319dca2e10ff96baf7gp2_6-2-1', 'bg-warning', '', '1698738939274', 4, 'Karima', 'female_avatar.png'),
('localhost', 70, 2024, '2024-11-25 04:08:23', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-2', '0', 'gp2', 0, '1698738939274cc3556329d4583319dca2e10ff96baf7gp2_6-2-2', 'bg-warning', '', '1698738939274', 4, 'Karima', 'female_avatar.png'),
('localhost', 71, 2024, '2024-11-25 04:08:25', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-1', '-1', 'gp1', 0, '1698460381556cc3556329d4583319dca2e10ff96baf7gp1_6-1-1', 'bg-danger', '', '1698460381556', 5, 'উৎসব বিশ্বাস', 'male_avatar.png'),
('localhost', 72, 2024, '2024-11-25 04:08:27', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-2', '0', 'gp1', 0, '1698460381556cc3556329d4583319dca2e10ff96baf7gp1_6-1-2', 'bg-warning', '', '1698460381556', 5, 'উৎসব বিশ্বাস', 'male_avatar.png'),
('localhost', 73, 2024, '2024-11-25 04:08:28', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-3', '1', 'gp1', 0, '1698460381556cc3556329d4583319dca2e10ff96baf7gp1_6-1-3', 'bg-success', '', '1698460381556', 5, 'উৎসব বিশ্বাস', 'male_avatar.png'),
('localhost', 74, 2024, '2024-11-25 04:08:29', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-1', '1', 'gp2', 0, '1698460381556cc3556329d4583319dca2e10ff96baf7gp2_6-2-1', 'bg-success', '', '1698460381556', 5, 'উৎসব বিশ্বাস', 'male_avatar.png'),
('localhost', 75, 2024, '2024-11-25 04:08:30', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-2', '1', 'gp2', 0, '1698460381556cc3556329d4583319dca2e10ff96baf7gp2_6-2-2', 'bg-success', '', '1698460381556', 5, 'উৎসব বিশ্বাস', 'male_avatar.png'),
('localhost', 76, 2024, '2024-11-25 04:08:31', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp3_6-3-1', '0', 'gp3', 0, '1698460381556cc3556329d4583319dca2e10ff96baf7gp3_6-3-1', 'bg-warning', '', '1698460381556', 5, 'উৎসব বিশ্বাস', 'male_avatar.png'),
('localhost', 77, 2024, '2024-11-25 04:08:33', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-1', '0', 'gp1', 0, '1698148306745cc3556329d4583319dca2e10ff96baf7gp1_6-1-1', 'bg-warning', '', '1698148306745', 6, 'Sarmin', 'female_avatar.png'),
('localhost', 78, 2024, '2024-11-25 04:08:34', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-2', '-1', 'gp1', 0, '1698148306745cc3556329d4583319dca2e10ff96baf7gp1_6-1-2', 'bg-danger', '', '1698148306745', 6, 'Sarmin', 'female_avatar.png'),
('localhost', 79, 2024, '2024-11-25 04:08:36', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-3', '1', 'gp1', 0, '1698148306745cc3556329d4583319dca2e10ff96baf7gp1_6-1-3', 'bg-success', '', '1698148306745', 6, 'Sarmin', 'female_avatar.png'),
('localhost', 80, 2024, '2024-11-25 04:08:37', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-1', '-1', 'gp2', 0, '1698148306745cc3556329d4583319dca2e10ff96baf7gp2_6-2-1', 'bg-danger', '', '1698148306745', 6, 'Sarmin', 'female_avatar.png'),
('localhost', 81, 2024, '2024-11-25 04:08:38', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-2', '0', 'gp2', 0, '1698148306745cc3556329d4583319dca2e10ff96baf7gp2_6-2-2', 'bg-warning', '', '1698148306745', 6, 'Sarmin', 'female_avatar.png'),
('localhost', 82, 2024, '2024-11-25 04:08:39', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp3_6-3-1', '1', 'gp3', 0, '1698148306745cc3556329d4583319dca2e10ff96baf7gp3_6-3-1', 'bg-success', '', '1698148306745', 6, 'Sarmin', 'female_avatar.png'),
('localhost', 83, 2024, '2024-11-27 07:42:25', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-1', '0', 'gp1', 0, '1698361986940cc3556329d4583319dca2e10ff96baf7gp1_6-1-1', 'bg-warning', '', '1698361986940', 8, 'রুদ্র বালা ', 'female_avatar.png'),
('localhost', 84, 2024, '2024-11-27 07:42:26', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-2', '1', 'gp1', 0, '1698361986940cc3556329d4583319dca2e10ff96baf7gp1_6-1-2', 'bg-success', '', '1698361986940', 8, 'রুদ্র বালা ', 'female_avatar.png'),
('localhost', 85, 2024, '2024-11-27 07:42:27', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-3', '0', 'gp1', 0, '1698361986940cc3556329d4583319dca2e10ff96baf7gp1_6-1-3', 'bg-warning', '', '1698361986940', 8, 'রুদ্র বালা ', 'female_avatar.png'),
('localhost', 86, 2024, '2024-11-27 07:42:27', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-1', '-1', 'gp2', 0, '1698361986940cc3556329d4583319dca2e10ff96baf7gp2_6-2-1', 'bg-danger', '', '1698361986940', 8, 'রুদ্র বালা ', 'female_avatar.png'),
('localhost', 87, 2024, '2024-11-27 07:42:28', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-2', '0', 'gp2', 0, '1698361986940cc3556329d4583319dca2e10ff96baf7gp2_6-2-2', 'bg-warning', '', '1698361986940', 8, 'রুদ্র বালা ', 'female_avatar.png'),
('localhost', 88, 2024, '2024-11-27 07:42:31', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-1', '1', 'gp1', 0, '1698721140415cc3556329d4583319dca2e10ff96baf7gp1_6-1-1', 'bg-success', '', '1698721140415', 7, 'Tasmim', 'female_avatar.png'),
('localhost', 89, 2024, '2024-11-27 07:42:32', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-2', '0', 'gp1', 0, '1698721140415cc3556329d4583319dca2e10ff96baf7gp1_6-1-2', 'bg-warning', '', '1698721140415', 7, 'Tasmim', 'female_avatar.png'),
('localhost', 90, 2024, '2024-11-27 07:42:33', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-3', '0', 'gp1', 0, '1698721140415cc3556329d4583319dca2e10ff96baf7gp1_6-1-3', 'bg-warning', '', '1698721140415', 7, 'Tasmim', 'female_avatar.png'),
('localhost', 91, 2024, '2024-11-27 07:42:35', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-1', '0', 'gp2', 0, '1698721140415cc3556329d4583319dca2e10ff96baf7gp2_6-2-1', 'bg-warning', '', '1698721140415', 7, 'Tasmim', 'female_avatar.png'),
('localhost', 92, 2024, '2024-11-27 07:42:36', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-2', '1', 'gp2', 0, '1698721140415cc3556329d4583319dca2e10ff96baf7gp2_6-2-2', 'bg-success', '', '1698721140415', 7, 'Tasmim', 'female_avatar.png'),
('localhost', 93, 2024, '2024-11-27 07:42:37', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp3_6-3-1', '0', 'gp3', 0, '1698721140415cc3556329d4583319dca2e10ff96baf7gp3_6-3-1', 'bg-warning', '', '1698721140415', 7, 'Tasmim', 'female_avatar.png'),
('localhost', 94, 2024, '2024-11-27 17:58:12', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-1', '0', 'gp1', 0, '1698497140420cc3556329d4583319dca2e10ff96baf7gp1_6-1-1', 'bg-warning', '', '1698497140420', 9, 'Ivamoni', 'female_avatar.png'),
('localhost', 95, 2024, '2024-11-27 17:58:14', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-2', '1', 'gp1', 0, '1698497140420cc3556329d4583319dca2e10ff96baf7gp1_6-1-2', 'bg-success', '', '1698497140420', 9, 'Ivamoni', 'female_avatar.png'),
('localhost', 96, 2024, '2024-11-27 17:58:17', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-1', '-1', 'gp2', 0, '1698497140420cc3556329d4583319dca2e10ff96baf7gp2_6-2-1', 'bg-danger', '', '1698497140420', 9, 'Ivamoni', 'female_avatar.png'),
('localhost', 97, 2024, '2024-11-27 17:58:18', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-2', '-1', 'gp2', 0, '1698497140420cc3556329d4583319dca2e10ff96baf7gp2_6-2-2', 'bg-danger', '', '1698497140420', 9, 'Ivamoni', 'female_avatar.png'),
('localhost', 98, 2024, '2024-11-27 17:58:19', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp3_6-3-1', '0', 'gp3', 0, '1698497140420cc3556329d4583319dca2e10ff96baf7gp3_6-3-1', 'bg-warning', '', '1698497140420', 9, 'Ivamoni', 'female_avatar.png'),
('localhost', 99, 2024, '2024-11-27 17:58:21', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-3', '1', 'gp1', 0, '1698851230507cc3556329d4583319dca2e10ff96baf7gp1_6-1-3', 'bg-success', '', '1698851230507', 10, 'মোঃ মারুফ মোল্যা ', 'female_avatar.png'),
('localhost', 100, 2024, '2024-11-27 17:58:22', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-3', '0', 'gp1', 0, '1698921111153cc3556329d4583319dca2e10ff96baf7gp1_6-1-3', 'bg-warning', '', '1698921111153', 11, 'Arifa ', 'female_avatar.png'),
('localhost', 101, 2024, '2024-11-27 17:58:23', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-1', '0', 'gp2', 0, '1698921111153cc3556329d4583319dca2e10ff96baf7gp2_6-2-1', 'bg-warning', '', '1698921111153', 11, 'Arifa ', 'female_avatar.png'),
('localhost', 102, 2024, '2024-11-27 17:58:25', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-2', '0', 'gp2', 0, '1698921111153cc3556329d4583319dca2e10ff96baf7gp2_6-2-2', 'bg-warning', '', '1698921111153', 11, 'Arifa ', 'female_avatar.png'),
('localhost', 103, 2024, '2024-11-27 17:58:26', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-2', '0', 'gp2', 0, '1698851230507cc3556329d4583319dca2e10ff96baf7gp2_6-2-2', 'bg-warning', '', '1698851230507', 10, 'মোঃ মারুফ মোল্যা ', 'female_avatar.png'),
('localhost', 104, 2024, '2024-11-27 17:58:27', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-1', '-1', 'gp2', 0, '1698851230507cc3556329d4583319dca2e10ff96baf7gp2_6-2-1', 'bg-danger', '', '1698851230507', 10, 'মোঃ মারুফ মোল্যা ', 'female_avatar.png'),
('localhost', 105, 2024, '2024-11-27 17:58:54', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-1', '-1', 'gp1', 0, '1698851230507cc3556329d4583319dca2e10ff96baf7gp1_6-1-1', 'bg-danger', '', '1698851230507', 10, 'মোঃ মারুফ মোল্যা ', 'female_avatar.png'),
('localhost', 106, 2024, '2024-11-27 17:58:56', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-1', '1', 'gp1', 0, '1698921111153cc3556329d4583319dca2e10ff96baf7gp1_6-1-1', 'bg-success', '', '1698921111153', 11, 'Arifa ', 'female_avatar.png'),
('localhost', 107, 2024, '2024-11-27 17:58:56', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-2', '0', 'gp1', 0, '1698274196192cc3556329d4583319dca2e10ff96baf7gp1_6-1-2', 'bg-warning', '', '1698274196192', 12, 'মোঃ রাশেদুল মিনা ', 'female_avatar.png'),
('localhost', 108, 2024, '2024-11-27 17:58:56', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-3', '1', 'gp1', 0, '1698274196192cc3556329d4583319dca2e10ff96baf7gp1_6-1-3', 'bg-success', '', '1698274196192', 12, 'মোঃ রাশেদুল মিনা ', 'female_avatar.png'),
('localhost', 109, 2024, '2024-12-04 15:40:06', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-2', '0', 'gp1', 0, '1698851230507cc3556329d4583319dca2e10ff96baf7gp1_6-1-2', 'bg-warning', '', '1698851230507', 10, 'মোঃ মারুফ মোল্যা ', 'female_avatar.png'),
('localhost', 110, 2024, '2024-12-04 15:40:08', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-2', '1', 'gp1', 0, '1698921111153cc3556329d4583319dca2e10ff96baf7gp1_6-1-2', 'bg-success', '', '1698921111153', 11, 'Arifa ', 'female_avatar.png'),
('localhost', 111, 2024, '2024-12-04 15:40:28', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp3_6-3-2', '-1', 'gp3', 0, '1698506063682cc3556329d4583319dca2e10ff96baf7gp3_6-3-2', 'bg-danger', '', '1698506063682', 1, 'তড়িতা অধিকারী ', 'female_avatar.png'),
('localhost', 112, 2024, '2024-12-04 15:41:24', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-1', '1', 'gp1', 0, '1698274196192cc3556329d4583319dca2e10ff96baf7gp1_6-1-1', 'bg-success', '', '1698274196192', 12, 'মোঃ রাশেদুল মিনা ', 'female_avatar.png'),
('localhost', 113, 2024, '2024-12-04 15:41:28', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp3_6-3-1', '1', 'gp3', 0, '1698738939274cc3556329d4583319dca2e10ff96baf7gp3_6-3-1', 'bg-success', '', '1698738939274', 4, 'Karima', 'female_avatar.png'),
('localhost', 114, 2024, '2024-12-04 15:43:27', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp3_6-3-2', '0', 'gp3', 0, '1698738939274cc3556329d4583319dca2e10ff96baf7gp3_6-3-2', 'bg-warning', '', '1698738939274', 4, 'Karima', 'female_avatar.png'),
('localhost', 115, 2024, '2024-12-04 15:43:40', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-3', '1', 'gp1', 0, '1698497140420cc3556329d4583319dca2e10ff96baf7gp1_6-1-3', 'bg-success', '', '1698497140420', 9, 'Ivamoni', 'female_avatar.png'),
('localhost', 116, 2024, '2024-12-04 15:58:44', 'Six', 'C', 'English', 'Six_C_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-1', '0', 'gp1', 0, '1697226477358cc3556329d4583319dca2e10ff96baf7gp1_6-1-1', 'bg-warning', '', '1697226477358', 1, 'MD.Tamim MIa', 'male_avatar.png');

-- --------------------------------------------------------

--
-- Table structure for table `pis_mark`
--

CREATE TABLE `pis_mark` (
  `domain` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `session` int(11) NOT NULL DEFAULT 2023,
  `at_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `subject_flag` varchar(100) NOT NULL,
  `subject_code` varchar(100) NOT NULL,
  `chapter` varchar(100) NOT NULL,
  `pi` varchar(10) NOT NULL,
  `pi_group` varchar(100) NOT NULL,
  `pi_no` int(11) NOT NULL,
  `checkout` varchar(200) NOT NULL,
  `bg_color` varchar(100) NOT NULL,
  `teacher_uuid` varchar(100) NOT NULL,
  `student_uuid` varchar(100) NOT NULL,
  `roll` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pis_mark`
--

INSERT INTO `pis_mark` (`domain`, `ID`, `session`, `at_date`, `class`, `section`, `subject`, `subject_flag`, `subject_code`, `chapter`, `pi`, `pi_group`, `pi_no`, `checkout`, `bg_color`, `teacher_uuid`, `student_uuid`, `roll`, `name`, `avatar`) VALUES
('localhost', 1, 2024, '2024-03-05 15:35:37', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-1', '0', 'gp1', 0, '1698845201207cc3556329d4583319dca2e10ff96baf7gp1_6-1-1', 'bg-warning', '', '1698845201207', 1, 'লিমন মিনা ', 'male_avatar.png'),
('localhost', 2, 2024, '2024-03-05 15:35:38', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-2', '0', 'gp1', 0, '1698845201207cc3556329d4583319dca2e10ff96baf7gp1_6-1-2', 'bg-warning', '', '1698845201207', 1, 'লিমন মিনা ', 'male_avatar.png'),
('localhost', 3, 2024, '2024-03-05 15:35:43', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-3', '0', 'gp1', 0, '1698845201207cc3556329d4583319dca2e10ff96baf7gp1_6-1-3', 'bg-warning', '', '1698845201207', 1, 'লিমন মিনা ', 'male_avatar.png'),
('localhost', 4, 2024, '2024-03-05 15:35:48', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-1', '-1', 'gp2', 0, '1698845201207cc3556329d4583319dca2e10ff96baf7gp2_6-2-1', 'bg-danger', '', '1698845201207', 1, 'লিমন মিনা ', 'male_avatar.png'),
('localhost', 5, 2024, '2024-03-05 15:35:49', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-2', '-1', 'gp2', 0, '1698845201207cc3556329d4583319dca2e10ff96baf7gp2_6-2-2', 'bg-danger', '', '1698845201207', 1, 'লিমন মিনা ', 'male_avatar.png'),
('localhost', 6, 2024, '2024-03-05 15:35:51', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp3_6-3-1', '1', 'gp3', 0, '1698845201207cc3556329d4583319dca2e10ff96baf7gp3_6-3-1', 'bg-success', '', '1698845201207', 1, 'লিমন মিনা ', 'male_avatar.png'),
('localhost', 7, 2024, '2024-03-05 15:35:52', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp3_6-3-2', '1', 'gp3', 0, '1698845201207cc3556329d4583319dca2e10ff96baf7gp3_6-3-2', 'bg-success', '', '1698845201207', 1, 'লিমন মিনা ', 'male_avatar.png'),
('localhost', 8, 2024, '2024-03-05 15:57:28', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-1', '-1', 'gp1', 0, '1697451431015cc3556329d4583319dca2e10ff96baf7gp1_6-1-1', 'bg-danger', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 9, 2024, '2024-03-05 15:57:29', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-2', '-1', 'gp1', 0, '1697451431015cc3556329d4583319dca2e10ff96baf7gp1_6-1-2', 'bg-danger', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 10, 2024, '2024-03-05 15:57:30', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-3', '-1', 'gp1', 0, '1697451431015cc3556329d4583319dca2e10ff96baf7gp1_6-1-3', 'bg-danger', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 11, 2024, '2024-03-05 15:57:32', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-1', '0', 'gp2', 0, '1697451431015cc3556329d4583319dca2e10ff96baf7gp2_6-2-1', 'bg-warning', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 12, 2024, '2024-03-05 15:57:33', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-2', '0', 'gp2', 0, '1697451431015cc3556329d4583319dca2e10ff96baf7gp2_6-2-2', 'bg-warning', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 13, 2024, '2024-03-05 15:57:35', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp3_6-3-1', '1', 'gp3', 0, '1697451431015cc3556329d4583319dca2e10ff96baf7gp3_6-3-1', 'bg-success', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 14, 2024, '2024-03-05 15:57:36', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp3_6-3-2', '1', 'gp3', 0, '1697451431015cc3556329d4583319dca2e10ff96baf7gp3_6-3-2', 'bg-success', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 15, 2024, '2024-03-05 17:58:58', 'Six', 'A', 'গণিত', 'Six_A_গণিত', '46d4f7e8cccea38395f9a23882248377', 'gp1_6-1-1', '1', 'gp1', 0, '169745143101546d4f7e8cccea38395f9a23882248377gp1_6-1-1', 'bg-success', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 16, 2024, '2024-03-05 17:58:59', 'Six', 'A', 'গণিত', 'Six_A_গণিত', '46d4f7e8cccea38395f9a23882248377', 'gp1_6-1-2', '1', 'gp1', 0, '169745143101546d4f7e8cccea38395f9a23882248377gp1_6-1-2', 'bg-success', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 17, 2024, '2024-03-05 17:59:00', 'Six', 'A', 'গণিত', 'Six_A_গণিত', '46d4f7e8cccea38395f9a23882248377', 'gp2_6-2-1', '-1', 'gp2', 0, '169745143101546d4f7e8cccea38395f9a23882248377gp2_6-2-1', 'bg-danger', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 18, 2024, '2024-03-05 17:59:01', 'Six', 'A', 'গণিত', 'Six_A_গণিত', '46d4f7e8cccea38395f9a23882248377', 'gp2_6-3-1', '-1', 'gp2', 0, '169745143101546d4f7e8cccea38395f9a23882248377gp2_6-3-1', 'bg-danger', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 19, 2024, '2024-03-06 05:43:55', 'Six', 'A', 'ডিজিটাল-প্রযুক্তি', 'Six_A_ডিজিটাল', 'b60ca3b6c41b963b86be96b3bf449f3c', 'gp1_6-1-1', '-1', 'gp1', 0, '1697451431015b60ca3b6c41b963b86be96b3bf449f3cgp1_6-1-1', 'bg-danger', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 20, 2024, '2024-03-06 05:43:56', 'Six', 'A', 'ডিজিটাল-প্রযুক্তি', 'Six_A_ডিজিটাল', 'b60ca3b6c41b963b86be96b3bf449f3c', 'gp1_6-4-1', '-1', 'gp1', 0, '1697451431015b60ca3b6c41b963b86be96b3bf449f3cgp1_6-4-1', 'bg-danger', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 21, 2024, '2024-03-06 05:43:57', 'Six', 'A', 'ডিজিটাল-প্রযুক্তি', 'Six_A_ডিজিটাল', 'b60ca3b6c41b963b86be96b3bf449f3c', 'gp2_6-5-1', '-1', 'gp2', 0, '1697451431015b60ca3b6c41b963b86be96b3bf449f3cgp2_6-5-1', 'bg-danger', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 22, 2024, '2024-03-06 05:43:59', 'Six', 'A', 'ডিজিটাল-প্রযুক্তি', 'Six_A_ডিজিটাল', 'b60ca3b6c41b963b86be96b3bf449f3c', 'gp3_6-2-1', '0', 'gp3', 0, '1697451431015b60ca3b6c41b963b86be96b3bf449f3cgp3_6-2-1', 'bg-warning', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 23, 2024, '2024-03-06 05:44:00', 'Six', 'A', 'ডিজিটাল-প্রযুক্তি', 'Six_A_ডিজিটাল', 'b60ca3b6c41b963b86be96b3bf449f3c', 'gp3_6-3-1', '0', 'gp3', 0, '1697451431015b60ca3b6c41b963b86be96b3bf449f3cgp3_6-3-1', 'bg-warning', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 24, 2024, '2024-03-06 05:44:01', 'Six', 'A', 'ডিজিটাল-প্রযুক্তি', 'Six_A_ডিজিটাল', 'b60ca3b6c41b963b86be96b3bf449f3c', 'gp4_6-6-1', '0', 'gp4', 0, '1697451431015b60ca3b6c41b963b86be96b3bf449f3cgp4_6-6-1', 'bg-warning', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 25, 2024, '2024-03-06 05:44:02', 'Six', 'A', 'ডিজিটাল-প্রযুক্তি', 'Six_A_ডিজিটাল', 'b60ca3b6c41b963b86be96b3bf449f3c', 'gp4_6-7-1', '1', 'gp4', 0, '1697451431015b60ca3b6c41b963b86be96b3bf449f3cgp4_6-7-1', 'bg-success', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 26, 2024, '2024-03-06 05:44:03', 'Six', 'A', 'ডিজিটাল-প্রযুক্তি', 'Six_A_ডিজিটাল', 'b60ca3b6c41b963b86be96b3bf449f3c', 'gp4_6-8-1', '1', 'gp4', 0, '1697451431015b60ca3b6c41b963b86be96b3bf449f3cgp4_6-8-1', 'bg-success', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 27, 2024, '2024-03-06 05:44:05', 'Six', 'A', 'ডিজিটাল-প্রযুক্তি', 'Six_A_ডিজিটাল', 'b60ca3b6c41b963b86be96b3bf449f3c', 'gp4_6-9-1', '1', 'gp4', 0, '1697451431015b60ca3b6c41b963b86be96b3bf449f3cgp4_6-9-1', 'bg-success', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 28, 2024, '2024-03-10 08:06:57', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp1_6-2-1', '1', 'gp1', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp1_6-2-1', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 29, 2024, '2024-03-10 08:06:58', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp1_6-2-2', '1', 'gp1', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp1_6-2-2', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 30, 2024, '2024-03-10 08:06:59', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp2_6-3-1', '1', 'gp2', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp2_6-3-1', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 31, 2024, '2024-03-10 08:07:00', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp2_6-3-2', '1', 'gp2', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp2_6-3-2', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 32, 2024, '2024-03-10 08:07:01', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp2_6-4-1', '1', 'gp2', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp2_6-4-1', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 33, 2024, '2024-03-10 08:07:02', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp2_6-4-2', '1', 'gp2', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp2_6-4-2', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 34, 2024, '2024-03-10 08:07:04', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp3_6-5-1', '1', 'gp3', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp3_6-5-1', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 35, 2024, '2024-03-10 08:07:05', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp3_6-5-2', '1', 'gp3', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp3_6-5-2', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 36, 2024, '2024-03-10 08:07:06', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp4_6-6-1', '1', 'gp4', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp4_6-6-1', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 37, 2024, '2024-03-10 08:07:07', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp4_6-6-2', '1', 'gp4', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp4_6-6-2', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 38, 2024, '2024-03-10 08:07:09', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp4_6-7-1', '1', 'gp4', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp4_6-7-1', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 39, 2024, '2024-03-10 08:07:10', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp4_6-7-2', '1', 'gp4', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp4_6-7-2', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 40, 2024, '2024-03-10 08:07:12', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp2_6-8-1', '1', 'gp2', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp2_6-8-1', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 41, 2024, '2024-03-10 08:07:13', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp2_6-8-2', '1', 'gp2', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp2_6-8-2', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 42, 2024, '2024-03-10 08:07:14', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp5_6-9-1', '1', 'gp5', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp5_6-9-1', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 43, 2024, '2024-03-10 08:07:15', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp5_6-9-2', '1', 'gp5', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp5_6-9-2', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 44, 2024, '2024-03-10 08:07:38', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp5_6-10-1', '1', 'gp5', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp5_6-10-1', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 45, 2024, '2024-03-10 08:07:38', 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp5_6-10-2', '1', 'gp5', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp5_6-10-2', 'bg-success', '', '1698268761255', 1, 'Amir Hamza', 'male_avatar.png'),
('localhost', 46, 2024, '2024-12-04 15:38:23', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-1', '1', 'gp1', 0, '1698506063682cc3556329d4583319dca2e10ff96baf7gp1_6-1-1', 'bg-success', '', '1698506063682', 1, 'তড়িতা অধিকারী ', 'female_avatar.png'),
('localhost', 47, 2024, '2024-12-04 15:38:24', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-2', '-1', 'gp1', 0, '1698506063682cc3556329d4583319dca2e10ff96baf7gp1_6-1-2', 'bg-danger', '', '1698506063682', 1, 'তড়িতা অধিকারী ', 'female_avatar.png'),
('localhost', 48, 2024, '2024-12-04 15:38:25', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-3', '0', 'gp1', 0, '1698506063682cc3556329d4583319dca2e10ff96baf7gp1_6-1-3', 'bg-warning', '', '1698506063682', 1, 'তড়িতা অধিকারী ', 'female_avatar.png'),
('localhost', 49, 2024, '2024-12-04 16:29:59', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-1', '0', 'gp1', 0, '1698299881366cc3556329d4583319dca2e10ff96baf7gp1_6-1-1', 'bg-warning', '', '1698299881366', 2, 'Chompa Khatun', 'female_avatar.png'),
('localhost', 50, 2024, '2024-12-04 16:30:00', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-2', '1', 'gp1', 0, '1698299881366cc3556329d4583319dca2e10ff96baf7gp1_6-1-2', 'bg-success', '', '1698299881366', 2, 'Chompa Khatun', 'female_avatar.png'),
('localhost', 51, 2024, '2024-12-04 16:30:45', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-3', '0', 'gp1', 0, '1698299881366cc3556329d4583319dca2e10ff96baf7gp1_6-1-3', 'bg-warning', '', '1698299881366', 2, 'Chompa Khatun', 'female_avatar.png'),
('localhost', 52, 2024, '2024-12-04 16:34:20', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-1', '-1', 'gp2', 0, '1698299881366cc3556329d4583319dca2e10ff96baf7gp2_6-2-1', 'bg-danger', '', '1698299881366', 2, 'Chompa Khatun', 'female_avatar.png'),
('localhost', 53, 2024, '2024-12-04 16:34:21', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-1', '-1', 'gp2', 0, '1698506063682cc3556329d4583319dca2e10ff96baf7gp2_6-2-1', 'bg-danger', '', '1698506063682', 1, 'তড়িতা অধিকারী ', 'female_avatar.png'),
('localhost', 54, 2024, '2024-12-04 16:34:52', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-1', '1', 'gp1', 0, '1698659885616cc3556329d4583319dca2e10ff96baf7gp1_6-1-1', 'bg-success', '', '1698659885616', 3, 'তানিয়া ', 'female_avatar.png'),
('localhost', 55, 2024, '2024-12-04 16:35:00', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-2', '0', 'gp1', 0, '1698659885616cc3556329d4583319dca2e10ff96baf7gp1_6-1-2', 'bg-warning', '', '1698659885616', 3, 'তানিয়া ', 'female_avatar.png'),
('localhost', 56, 2024, '2024-12-04 16:35:05', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-3', '1', 'gp1', 0, '1698659885616cc3556329d4583319dca2e10ff96baf7gp1_6-1-3', 'bg-success', '', '1698659885616', 3, 'তানিয়া ', 'female_avatar.png'),
('localhost', 57, 2024, '2024-12-04 16:36:01', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-1', '1', 'gp1', 0, '1698738939274cc3556329d4583319dca2e10ff96baf7gp1_6-1-1', 'bg-success', '', '1698738939274', 4, 'Karima', 'female_avatar.png'),
('localhost', 58, 2024, '2024-12-04 16:36:14', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-2', '0', 'gp1', 0, '1698738939274cc3556329d4583319dca2e10ff96baf7gp1_6-1-2', 'bg-warning', '', '1698738939274', 4, 'Karima', 'female_avatar.png'),
('localhost', 59, 2024, '2024-12-04 16:37:05', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-3', '1', 'gp1', 0, '1698738939274cc3556329d4583319dca2e10ff96baf7gp1_6-1-3', 'bg-success', '', '1698738939274', 4, 'Karima', 'female_avatar.png'),
('localhost', 60, 2024, '2024-12-04 16:40:50', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-1', '-1', 'gp2', 0, '1698738939274cc3556329d4583319dca2e10ff96baf7gp2_6-2-1', 'bg-danger', '', '1698738939274', 4, 'Karima', 'female_avatar.png'),
('localhost', 61, 2024, '2024-12-04 16:40:52', 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-1', '0', 'gp1', 0, '1698460381556cc3556329d4583319dca2e10ff96baf7gp1_6-1-1', 'bg-warning', '', '1698460381556', 5, 'উৎসব বিশ্বাস', 'male_avatar.png');

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policy`
--

CREATE TABLE `privacy_policy` (
  `domain` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `heading` varchar(500) NOT NULL,
  `paragraph` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `repository`
--

CREATE TABLE `repository` (
  `domain` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `at_date` varchar(100) NOT NULL,
  `e_date` varchar(100) NOT NULL,
  `datatype` varchar(100) NOT NULL DEFAULT 'eventnews',
  `dataid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `domain` varchar(100) NOT NULL DEFAULT 'eduxoom.com',
  `id` int(11) NOT NULL,
  `class` varchar(10) DEFAULT NULL,
  `section` varchar(10) DEFAULT NULL,
  `subject_name` varchar(100) DEFAULT NULL,
  `subject_code` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `roll` int(11) DEFAULT NULL,
  `suuid` varchar(100) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `real_ci_mark` int(11) NOT NULL,
  `real_fi_mark` int(11) NOT NULL,
  `ci_mark` int(11) DEFAULT NULL,
  `fi_mark` int(11) DEFAULT NULL,
  `book_mark` int(11) DEFAULT NULL,
  `output_mark` int(11) DEFAULT NULL,
  `book_status` int(11) NOT NULL DEFAULT 1,
  `tuuid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `routine`
--

CREATE TABLE `routine` (
  `domain` varchar(100) NOT NULL DEFAULT 'localhost',
  `ID` int(11) NOT NULL,
  `at_date` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `session` int(11) NOT NULL DEFAULT 2023,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `day` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `period_table` varchar(100) NOT NULL,
  `teacher_name` varchar(100) NOT NULL DEFAULT 'Jahid Hasan',
  `teacher_uuid` varchar(100) NOT NULL,
  `teacher_index` varchar(100) NOT NULL,
  `teacher_pdsid` varchar(100) NOT NULL,
  `teacher_avatar` varchar(100) NOT NULL DEFAULT 'male_avatar.png',
  `period_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `routine`
--

INSERT INTO `routine` (`domain`, `ID`, `at_date`, `session`, `class`, `section`, `day`, `subject`, `period_table`, `teacher_name`, `teacher_uuid`, `teacher_index`, `teacher_pdsid`, `teacher_avatar`, `period_time`) VALUES
('localhost', 9, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'রবিবার', 'ইংরেজী ২য়', '৩য়', 'Abdul Aziz Molla', '', '', '100251495', '1676561167056_abdul-aziz-molla-hm.png', '১১ঃ৫০ - ১২ঃ৩৫ '),
('localhost', 10, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'সোমবার', 'ইংরেজী ২য়', '৩য়', 'Abdul Aziz Molla', '', '', '100251495', '1676561167056_abdul-aziz-molla-hm.png', '১১ঃ৫০ - ১২ঃ৩৫ '),
('localhost', 12, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'বুধবার', 'গণিত', '২য়', 'MD SERAJUL ISLAM', '', '', '100250478', '1676561790154_serajul-islam-ahm.png', '১১ঃ০৫ - ১১ঃ৫০ '),
('localhost', 13, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'মঙ্গলবার', 'ইংরেজী ২য়', '৩য়', 'Abdul Aziz Molla', '', '', '100251495', '1676561167056_abdul-aziz-molla-hm.png', '১১ঃ৫০ - ১২ঃ৩৫ '),
('localhost', 14, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'ররিবার', 'গণিত', '২য়', 'MD SERAJUL ISLAM', '', '', '100250478', '1676561790154_serajul-islam-ahm.png', '১১ঃ৫০ - ১২ঃ৩৫ '),
('localhost', 15, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'সোমবার', 'গণিত', '২য়', 'MD SERAJUL ISLAM', '', '', '100250478', '1676561790154_serajul-islam-ahm.png', '১১ঃ৫০ - ১২ঃ৩৫ '),
('localhost', 16, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'মঙ্গলবার', 'গণিত', '২য়', 'MD SERAJUL ISLAM', '', '', '100250478', '1676561790154_serajul-islam-ahm.png', '১১ঃ৫০ - ১২ঃ৩৫ '),
('localhost', 17, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'মঙ্গলবার', 'পদার্থ-বিজ্ঞান', '৬ষ্ট', 'MD SERAJUL ISLAM', '', '', '100250478', '1676561790154_serajul-islam-ahm.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 18, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'বুধবার', 'পদার্থ-বিজ্ঞান', '৬ষ্ট', 'MD SERAJUL ISLAM', '', '', '100250478', '1676561790154_serajul-islam-ahm.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 19, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'বৃহস্পতিবার', 'পদার্থ-বিজ্ঞান', '৬ষ্ট', 'MD SERAJUL ISLAM', '', '', '100250478', '1676561790154_serajul-islam-ahm.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 20, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'সোমবার', 'গণিত', '৭ম', 'MD SERAJUL ISLAM', '', '', '100250478', '1676561790154_serajul-islam-ahm.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 21, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'ররিবার', 'বাংলা ১ম', '১ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 22, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'সোমবার', 'বাংলা ১ম', '১ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 23, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'মঙ্গলবার', 'বাংলা ১ম', '১ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 24, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'বুধবার', 'বাংলা ২য়', '১ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 25, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'বৃহস্পতিবার', 'বাংলা ২য়', '১ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 26, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'ররিবার', 'ইংরেজী ২য়', '৩য়', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 27, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'সোমবার', 'ইংরেজী ২য়', '৩য়', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 28, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'মঙ্গলবার', 'ইংরেজী ২য়', '৩য়', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 29, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'বুধবার', 'ইংরেজী ১ম', '৩য়', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 30, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'ইংরেজী ১ম', '৩য়', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 31, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'ররিবার', 'ইংরেজী ১ম', '৫ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 32, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'সোমবার', 'ইংরেজী ১ম', '৫ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 33, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'মঙ্গলবার', 'ইংরেজী ১ম', '৫ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 34, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'বুধবার', 'ইংরেজী ২য়', '৫ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 35, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'বৃহস্পতিবার', 'ইংরেজী ২য়', '৫ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 39, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'ররিবার', 'ইংরেজী ২য়', '৭ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 43, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'ররিবার', 'গণিত', '১ম', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 44, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'সোমবার', 'গণিত', '১ম', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 45, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'মঙ্গলবার', 'গণিত', '১ম', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 51, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'বুধবার', 'উচ্চতর গণিত', '৪র্থ', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 52, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'বৃহস্পতিবার', 'উচ্চতর গণিত', '৪র্থ', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 56, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'ররিবার', 'পদার্থ-বিজ্ঞান', '৬ষ্ট', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 57, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'সোমবার', 'পদার্থ-বিজ্ঞান', '৬ষ্ট', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 58, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'মঙ্গলবার', 'পদার্থ-বিজ্ঞান', '৬ষ্ট', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 62, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'বুধবার', 'গণিত', '৭ম', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 64, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'ররিবার', 'ইংরেজী ১ম', '১ম', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 65, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'সোমবার', 'ইংরেজী ১ম', '১ম', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 66, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'মঙ্গলবার', 'ইংরেজী ১ম', '১ম', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 69, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'ররিবার', 'ইংরেজী ১ম', '৩য়', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 70, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'সোমবার', 'ইংরেজী ১ম', '৩য়', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 71, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'মঙ্গলবার', 'ইংরেজী ১ম', '৩য়', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 91, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'ররিবার', 'ভূগোল ও পরিবেশ', '২য়', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 92, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'সোমবার', 'ভূগোল ও পরিবেশ', '২য়', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 93, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'মঙ্গলবার', 'ভূগোল ও পরিবেশ', '২য়', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 103, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'বুধবার', 'ইংরেজী ১ম', '৩য়', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 104, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'বৃহস্পতিবার', 'ইংরেজী ১ম', '৩য়', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 110, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'ররিবার', 'ইংরেজী ১ম', '৬ষ্ট', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 111, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'সোমবার', 'ইংরেজী ১ম', '৬ষ্ট', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 112, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'মঙ্গলবার', 'বাংলা ২য়', '৭ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 113, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'বুধবার', 'বাংলা ২য়', '৭ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 114, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'বৃহস্পতিবার', 'বাংলা ২য়', '৭ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 115, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'বুধবার', 'গণিত', '২য়', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 116, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'বৃহস্পতিবার', 'গণিত', '২য়', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 117, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'ররিবার', 'গণিত', '৩য়', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 118, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'সোমবার', 'গণিত', '৩য়', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 119, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'মঙ্গলবার', 'গণিত', '৩য়', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 120, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'ররিবার', 'গণিত', '৫ম', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 121, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'সোমবার', 'গণিত', '৫ম', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 122, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'মঙ্গলবার', 'গণিত', '৫ম', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 123, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'বুধবার', 'বিজ্ঞান', '৬ষ্ট', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 124, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'বৃহস্পতিবার', 'বিজ্ঞান', '৬ষ্ট', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 125, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'ররিবার', 'বিজ্ঞান', '৭ম', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 126, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'বৃহস্পতিবার', 'গণিত', '৭ম', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 127, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'বুধবার', 'ইংরেজী ২য়', '২য়', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 128, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'বৃহস্পতিবার', 'ইংরেজী ২য়', '২য়', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 129, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'বুধবার', 'ইংরেজী ২য়', '৩য়', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 130, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'বৃহস্পতিবার', 'ইংরেজী ২য়', '৩য়', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 131, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'ররিবার', 'বাংলা ২য়', '৪র্থ', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 132, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'সোমবার', 'বাংলা ২য়', '৪র্থ', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 133, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'মঙ্গলবার', 'বাংলা ২য়', '৪র্থ', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 134, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'বুধবার', 'বাংলা ১ম', '৫ম', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 135, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'বৃহস্পতিবার', 'বাংলা ১ম', '৫ম', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 136, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'ররিবার', 'ইংরেজী ১ম', '৬ষ্ট', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 137, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'সোমবার', 'ইংরেজী ১ম', '৬ষ্ট', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 138, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'মঙ্গলবার', 'ইংরেজী ১ম', '৬ষ্ট', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 139, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'ররিবার', 'ইংরেজী ২য়', '৭ম', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 140, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'সোমবার', 'ইংরেজী ২য়', '৭ম', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 141, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'মঙ্গলবার', 'বাংলা ১ম', '৭ম', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 142, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'ররিবার', 'বাংলা ১ম', '১ম', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 143, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'সোমবার', 'বাংলা ১ম', '১ম', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 144, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'মঙ্গলবার', 'বাংলা ১ম', '১ম', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 145, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'বুধবার', 'বাংলা ২য়', '১ম', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 146, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'বৃহস্পতিবার', 'বাংলা ২য়', '১ম', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 147, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'বুধবার', 'ইংরেজী ১ম', '৩য়', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 148, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'বৃহস্পতিবার', 'ইংরেজী ১ম', '৩য়', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 149, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'ররিবার', 'ইংরেজী ১ম', '৪র্থ', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 150, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'সোমবার', 'ইংরেজী ১ম', '৪র্থ', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 151, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'মঙ্গলবার', 'ইংরেজী ১ম', '৪র্থ', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 152, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'বুধবার', 'জীবন ও জীবিকা', '৫ম', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 153, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'বৃহস্পতিবার', 'জীবন ও জীবিকা', '৫ম', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 154, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'ররিবার', 'ইংরেজী ১ম', '৬ষ্ট', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 155, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'সোমবার', 'ইংরেজী ১ম', '৬ষ্ট', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 156, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'ররিবার', 'ক্যারিয়ার এডুকেশন', '৭ম', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 157, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'সোমবার', 'ইংরেজী ২য়', '৭ম', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 158, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'মঙ্গলবার', 'জীবন ও জীবিকা', '৭ম', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 159, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'ররিবার', 'বাংলা ১ম', '১ম', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 160, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'সোমবার', 'বাংলা ১ম', '১ম', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 161, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'মঙ্গলবার', 'বাংলা ১ম', '১ম', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 162, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'বুধবার', 'বাংলা ২য়', '১ম', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 163, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'বৃহস্পতিবার', 'বাংলা ২য়', '১ম', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 164, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'ররিবার', 'ইংরেজী ২য়', '২য়', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 165, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'সোমবার', 'ইংরেজী ২য়', '২য়', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 166, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'মঙ্গলবার', 'ইংরেজী ২য়', '২য়', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 167, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'বুধবার', 'ইংরেজী ২য়', '৩য়', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 168, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'বৃহস্পতিবার', 'ইংরেজী ২য়', '৩য়', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 169, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'ররিবার', 'বাংলা ২য়', '৪র্থ', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 170, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'সোমবার', 'বাংলা ২য়', '৪র্থ', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 171, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'মঙ্গলবার', 'বাংলা ২য়', '৪র্থ', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 172, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'ররিবার', 'ইংরেজী ১ম', '৫ম', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 173, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'বুধবার', 'ইংরেজী ২য়', '৫ম', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 174, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'সোমবার', 'ইংরেজী ১ম', '৬ষ্ট', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 175, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'বুধবার', 'ইংরেজী ১ম', '৬ষ্ট', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 176, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'বৃহস্পতিবার', 'ইংরেজী ১ম', '৬ষ্ট', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 177, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'মঙ্গলবার', 'শারীরিক শিক্ষা ও স্বাস্থ্য', '৬ষ্ট', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 178, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'বৃহস্পতিবার', 'শিল্প ও সংস্কৃতি', '৭ম', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 179, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'ররিবার', 'ইংরেজী ২য়', '৭ম', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 180, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'সোমবার', 'ইংরেজী ২য়', '৭ম', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 181, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'মঙ্গলবার', 'ইংরেজী ২য়', '৭ম', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 187, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'ররিবার', 'বাংলা ১ম', '১ম', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 188, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'সোমবার', 'বাংলা ১ম', '১ম', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 189, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'মঙ্গলবার', 'বাংলা ১ম', '১ম', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 190, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'বুধবার', 'বাংলা ২য়', '১ম', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 191, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'বৃহস্পতিবার', 'বাংলা ২য়', '১ম', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 192, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'বুধবার', 'ইংরেজী ১ম', '২য়', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 193, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'বৃহস্পতিবার', 'ইংরেজী ১ম', '২য়', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 194, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'ররিবার', 'ইংরেজী ২য়', '৩য়', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 195, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'সোমবার', 'ইংরেজী ২য়', '৩য়', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 196, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'মঙ্গলবার', 'ইংরেজী ২য়', '৩য়', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 197, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'ররিবার', 'ইংরেজী ১ম', '৪র্থ', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 198, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'সোমবার', 'ইংরেজী ১ম', '৪র্থ', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 199, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'মঙ্গলবার', 'ইংরেজী ১ম', '৪র্থ', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 200, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'বুধবার', 'সামাঃ বিজ্ঞান', '৪র্থ', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 201, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'বৃহস্পতিবার', 'সামাঃ বিজ্ঞান', '৪র্থ', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 202, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'ররিবার', 'ইংরেজী ১ম', '৬ষ্ট', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 203, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'সোমবার', 'ইংরেজী ১ম', '৬ষ্ট', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 204, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'ররিবার', 'ইংরেজী ১ম', '৬ষ্ট', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 205, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'সোমবার', 'ইংরেজী ১ম', '৬ষ্ট', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 206, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'ররিবার', 'সামাঃ বিজ্ঞান', '৭ম', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 207, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'সোমবার', 'শিল্প ও সংস্কৃতি', '৭ম', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 208, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'মঙ্গলবার', 'ইংরেজী ২য়', '৭ম', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 215, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'মঙ্গলবার', 'বাংলা ১ম', '১ম', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 216, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'ররিবার', 'বাংলা ১ম', '১ম', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 217, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'সোমবার', 'বাংলা ১ম', '১ম', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 218, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'ররিবার', 'ইংরেজী ২য়', '২য়', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 219, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'সোমবার', 'ইংরেজী ২য়', '২য়', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 220, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'মঙ্গলবার', 'ইংরেজী ২য়', '২য়', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 221, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'বুধবার', 'গণিত', '২য়', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 222, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'বৃহস্পতিবার', 'গণিত', '২য়', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 223, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'বুধবার', 'গণিত', '৩য়', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 224, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'বৃহস্পতিবার', 'গণিত', '৩য়', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 225, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'ররিবার', 'হিসাব-বিজ্ঞান', '৪র্থ', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 226, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'সোমবার', 'হিসাব-বিজ্ঞান', '৪র্থ', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 227, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'মঙ্গলবার', 'হিসাব-বিজ্ঞান', '৪র্থ', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 228, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'মঙ্গলবার', 'ব্যবসায় উদ্যোগ', '৫ম', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 229, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'বুধবার', 'ব্যবসায় উদ্যোগ', '৫ম', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 230, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'ব্যবসায় উদ্যোগ', '৫ম', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 231, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'ররিবার', 'গণিত', '৬ষ্ট', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 232, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'মঙ্গলবার', 'ফিন্যান্স ও ব্যাংকিং', '৬ষ্ট', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 233, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'বুধবার', 'ফিন্যান্স ও ব্যাংকিং', '৬ষ্ট', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 234, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'বৃহস্পতিবার', 'ফিন্যান্স ও ব্যাংকিং', '৬ষ্ট', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 235, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'ররিবার', 'গণিত', '৭ম', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 236, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'সোমবার', 'গণিত', '৭ম', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 237, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'বৃহস্পতিবার', 'ইংরেজী ২য়', '৭ম', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 238, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'ররিবার', 'গণিত', '১ম', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 239, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'সোমবার', 'গণিত', '১ম', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 240, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'মঙ্গলবার', 'গণিত', '১ম', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 241, '2023-10-23 17:07:42', 2023, 'Ten', 'C', 'ররিবার', 'হিসাব-বিজ্ঞান', '২য়', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 242, '2023-10-23 17:07:42', 2023, 'Ten', 'C', 'সোমবার', 'হিসাব-বিজ্ঞান', '২য়', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 243, '2023-10-23 17:07:42', 2023, 'Ten', 'C', 'মঙ্গলবার', 'হিসাব-বিজ্ঞান', '২য়', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 244, '2023-10-23 17:07:42', 2023, 'Ten', 'C', 'বুধবার', 'ফিন্যান্স ও ব্যাংকিং', '২য়', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 245, '2023-10-23 17:07:42', 2023, 'Ten', 'C', 'বৃহস্পতিবার', 'ফিন্যান্স ও ব্যাংকিং', '২য়', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 246, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'ররিবার', 'গণিত', '৪র্থ', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 247, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'সোমবার', 'গণিত', '৪র্থ', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 248, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'মঙ্গলবার', 'গণিত', '৪র্থ', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 249, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'বুধবার', 'শিল্প ও সংস্কৃতি', '৪র্থ', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 250, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'বৃহস্পতিবার', 'শিল্প ও সংস্কৃতি', '৪র্থ', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 251, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'ররিবার', 'ব্যবসায় উদ্যোগ', '৫ম', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 252, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'সোমবার', 'ব্যবসায় উদ্যোগ', '৫ম', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 253, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'মঙ্গলবার', 'বিজ্ঞান অনুসন্ধানী বই', '৫ম', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 254, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'বুধবার', 'বিজ্ঞান অনুসন্ধানী বই', '৫ম', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 255, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'বৃহস্পতিবার', 'বিজ্ঞান অনুসন্ধানী বই', '৫ম', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 256, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'বুধবার', 'জীবন ও জীবিকা', '৬ষ্ট', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 257, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'বৃহস্পতিবার', 'জীবন ও জীবিকা', '৬ষ্ট', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 258, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'মঙ্গলবার', 'শারীরিক শিক্ষা ও স্বাস্থ্য', '৭ম', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 259, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'বুধবার', 'গণিত', '৭ম', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 260, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'ররিবার', 'বাংলা ১ম', '১ম', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 261, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'সোমবার', 'বাংলা ১ম', '১ম', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 262, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'মঙ্গলবার', 'বাংলা ১ম', '১ম', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 263, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'বুধবার', 'বাংলা ২য়', '১ম', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 264, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'বৃহস্পতিবার', 'বাংলা ২য়', '১ম', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 265, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'ররিবার', 'স্বাস্থ্য সুরক্ষা', '২য়', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 266, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'সোমবার', 'স্বাস্থ্য সুরক্ষা', '২য়', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 267, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'মঙ্গলবার', 'স্বাস্থ্য সুরক্ষা', '২য়', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 268, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'বুধবার', 'অর্থনীতি', '২য়', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 269, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'অর্থনীতি', '২য়', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 270, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'ররিবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৪র্থ', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 271, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'সোমবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৪র্থ', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 272, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'মঙ্গলবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৪র্থ', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 273, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'ররিবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৫ম', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 274, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'সোমবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৫ম', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 275, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'বৃহস্পতিবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৫ম', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 276, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'মঙ্গলবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৬ষ্ট', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 277, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'বুধবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৬ষ্ট', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 278, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'ররিবার', 'অর্থনীতি', '৭ম', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 279, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'বুধবার', 'আবৃত্তি', '৭ম', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 280, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'ররিবার', 'গণিত', '১ম', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 281, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'সোমবার', 'গণিত', '১ম', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 282, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'মঙ্গলবার', 'গণিত', '১ম', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 283, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'বুধবার', 'বিজ্ঞান অনুসন্ধানী বই', '১ম', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 284, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'বৃহস্পতিবার', 'বিজ্ঞান অনুসন্ধানী বই', '১ম', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 285, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'ররিবার', 'উচ্চতর গণিত', '২য়', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 286, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'সোমবার', 'উচ্চতর গণিত', '২য়', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 287, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'মঙ্গলবার', 'উচ্চতর গণিত', '২য়', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 288, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'বুধবার', 'বিজ্ঞান', '২য়', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 289, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'বৃহস্পতিবার', 'বিজ্ঞান', '২য়', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 290, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'বুধবার', 'সামাঃ বিজ্ঞান', '২য়', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 291, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'বৃহস্পতিবার', 'সামাঃ বিজ্ঞান', '২য়', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 292, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'ররিবার', 'গণিত', '৩য়', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 293, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'সোমবার', 'গণিত', '৩য়', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 294, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'মঙ্গলবার', 'গণিত', '৩য়', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 295, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'বুধবার', 'গণিত', '৪র্থ', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 296, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'গণিত', '৪র্থ', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 297, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'ররিবার', 'গণিত', '৫ম', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 298, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'সোমবার', 'গণিত', '৫ম', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 299, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'মঙ্গলবার', 'গণিত', '৫ম', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 300, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'বুধবার', 'গণিত', '৫ম', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 301, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'বৃহস্পতিবার', 'গণিত', '৫ম', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 302, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'ররিবার', 'বিজ্ঞান অনুসন্ধানী বই', '৬ষ্ট', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 303, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'সোমবার', 'বিজ্ঞান', '৭ম', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 304, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'সোমবার', 'বিজ্ঞান', '৭ম', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 305, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'বুধবার', 'গণিত', '৭ম', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 306, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'বৃহস্পতিবার', 'গণিত', '৭ম', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 307, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'ররিবার', 'ইংরেজী ১ম', '১ম', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 308, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'সোমবার', 'ইংরেজী ১ম', '১ম', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 309, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'মঙ্গলবার', 'ইংরেজী ১ম', '১ম', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 310, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'বুধবার', 'ইংরেজী ২য়', '১ম', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 311, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'বৃহস্পতিবার', 'ইংরেজী ২য়', '১ম', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 312, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'বুধবার', 'ইংরেজী ২য়', '২য়', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 313, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'বৃহস্পতিবার', 'ইংরেজী ২য়', '২য়', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 314, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'ররিবার', 'ইংরেজী ২য়', '৩য়', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 315, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'ররিবার', 'ইংরেজী ১ম', '৪র্থ', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 316, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'সোমবার', 'ইংরেজী ১ম', '৪র্থ', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 317, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'মঙ্গলবার', 'ইংরেজী ১ম', '৪র্থ', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 318, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'বুধবার', 'বাংলা ২য়', '৪র্থ', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 319, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'বৃহস্পতিবার', 'বাংলা ২য়', '৪র্থ', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 320, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'সোমবার', 'আবৃত্তি', '৫ম', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 321, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'সোমবার', 'ইংরেজী ১ম', '৬ষ্ট', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 322, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'মঙ্গলবার', 'ইংরেজী ১ম', '৬ষ্ট', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 323, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'বুধবার', 'ইংরেজী ১ম', '৬ষ্ট', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 324, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'ররিবার', 'ইংরেজী ১ম', '৭ম', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 325, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'সোমবার', 'বাংলা ২য়', '৭ম', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 326, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'মঙ্গলবার', 'ইংরেজী ২য়', '৭ম', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 327, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'বুধবার', 'বিতর্ক', '৭ম', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 328, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'বৃহস্পতিবার', 'শিল্প ও সংস্কৃতি', '৭ম', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 329, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'ররিবার', 'বিজ্ঞান অনুসন্ধানী বই', '১ম', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 330, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'সোমবার', 'বিজ্ঞান অনুসন্ধানী বই', '১ম', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 331, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'মঙ্গলবার', 'বিজ্ঞান অনুসন্ধানী বই', '১ম', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 332, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'ররিবার', 'জীব-বিজ্ঞান', '২য়', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 333, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'সোমবার', 'জীব-বিজ্ঞান', '২য়', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 334, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'মঙ্গলবার', 'জীব-বিজ্ঞান', '২য়', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 335, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'বুধবার', 'জীব-বিজ্ঞান', '২য়', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 336, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'বৃহস্পতিবার', 'জীব-বিজ্ঞান', '২য়', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 337, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'ররিবার', 'বিজ্ঞান অনুসন্ধানী বই', '৩য়', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 338, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'সোমবার', 'বিজ্ঞান অনুসন্ধানী বই', '৩য়', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 339, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'মঙ্গলবার', 'বিজ্ঞান অনুসন্ধানী বই', '৩য়', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 340, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'বুধবার', 'কৃষিশিক্ষা', '৪র্থ', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 341, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'বৃহস্পতিবার', 'কৃষিশিক্ষা', '৪র্থ', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 342, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'বুধবার', 'কৃষিশিক্ষা', '৪র্থ', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 343, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'বৃহস্পতিবার', 'কৃষিশিক্ষা', '৪র্থ', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 344, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'ররিবার', 'কৃষি শিক্ষা', '৫ম', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ০০ - ২ঃ৪০');
INSERT INTO `routine` (`domain`, `ID`, `at_date`, `session`, `class`, `section`, `day`, `subject`, `period_table`, `teacher_name`, `teacher_uuid`, `teacher_index`, `teacher_pdsid`, `teacher_avatar`, `period_time`) VALUES
('localhost', 345, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'সোমবার', 'কৃষি শিক্ষা', '৫ম', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 346, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'মঙ্গলবার', 'কৃষি শিক্ষা', '৫ম', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 347, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'ররিবার', 'কৃষি শিক্ষা', '৫ম', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 348, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'সোমবার', 'কৃষি শিক্ষা', '৫ম', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 349, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'মঙ্গলবার', 'কৃষি শিক্ষা', '৫ম', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 350, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'বুধবার', 'জীবন ও জীবিকা', '৫ম', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 351, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'বৃহস্পতিবার', 'জীবন ও জীবিকা', '৫ম', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 352, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'ররিবার', 'কৃষিশিক্ষা', '৬ষ্ট', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 353, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'ররিবার', 'কৃষিশিক্ষা', '৬ষ্ট', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 354, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'সোমবার', 'জীব-বিজ্ঞান', '৬ষ্ট', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 355, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'মঙ্গলবার', 'কৃষিশিক্ষা', '৭ম', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 356, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'বুধবার', 'কৃষিশিক্ষা', '৭ম', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 357, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'কৃষিশিক্ষা', '৭ম', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 358, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'ররিবার', 'হিন্দু ধর্ম শিক্ষা', '২য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 359, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'সোমবার', 'হিন্দু ধর্ম শিক্ষা', '২য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 360, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'মঙ্গলবার', 'হিন্দু ধর্ম শিক্ষা', '২য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 361, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'ররিবার', 'হিন্দুধর্ম শিক্ষা', '২য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 362, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'সোমবার', 'হিন্দু ধর্ম শিক্ষা', '২য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 363, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'মঙ্গলবার', 'হিন্দুধর্ম শিক্ষা', '২য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 365, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'বুধবার', 'হিন্দুধর্ম শিক্ষা', '২য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 366, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'বৃহস্পতিবার', 'হিন্দুধর্ম  শিক্ষা', '২য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 367, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'ররিবার', 'হিন্দুধর্ম শিক্ষা', '৩য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 368, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'সোমবার', 'হিন্দুধর্ম শিক্ষা', '৩য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 369, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'মঙ্গলবার', 'হিন্দুধর্ম শিক্ষা', '৩য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 370, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'বুধবার', 'হিন্দুধর্ম শিক্ষা', '৩য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 371, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'বৃহস্পতিবার', 'হিন্দুধর্ম শিক্ষা', '৩য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 372, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'বুধবার', 'হিন্দুধর্ম শিক্ষা', '৩য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 373, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'হিন্দুধর্ম শিক্ষা', '৩য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 374, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'ররিবার', 'হিন্দুধর্ম শিক্ষা', '৫ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 375, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'সোমবার', 'হিন্দুধর্ম শিক্ষা', '৫ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 376, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'মঙ্গলবার', 'হিন্দুধর্ম শিক্ষা', '৫ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 377, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'বুধবার', 'হিন্দুধর্ম শিক্ষা', '৫ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 378, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'বৃহস্পতিবার', 'হিন্দুধর্ম শিক্ষা', '৫ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 379, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'ররিবার', 'হিন্দুধর্ম শিক্ষা', '৬ষ্ট', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 380, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'সোমবার', 'হিন্দুধর্ম শিক্ষা', '৬ষ্ট', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 381, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'মঙ্গলবার', 'হিন্দুধর্ম শিক্ষা', '৬ষ্ট', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 382, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'বুধবার', 'হিন্দুধর্ম শিক্ষা', '৬ষ্ট', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 383, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'বৃহস্পতিবার', 'হিন্দুধর্ম শিক্ষা', '৬ষ্ট', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 384, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'সোমবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 385, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'মঙ্গলবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 386, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'বুধবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 387, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'বৃহস্পতিবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 388, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'মঙ্গলবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 389, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'বুধবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 390, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'বৃহস্পতিবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 391, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'বৃহস্পতিবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 392, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'বুধবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 393, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'মঙ্গলবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 394, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'বুধবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '১ম', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 395, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'বৃহস্পতিবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '১ম', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 396, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'ররিবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '২য়', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 397, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'সোমবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '২য়', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 398, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'মঙ্গলবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '২য়', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 399, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'বুধবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৩য়', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 400, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'বৃহস্পতিবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৩য়', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 401, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'বুধবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৩য়', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 402, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'বৃহস্পতিবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৩য়', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 403, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'ররিবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৪র্থ', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 404, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'সোমবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৪র্থ', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 405, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'মঙ্গলবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৪র্থ', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 406, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'বুধবার', 'ডিজিটাল প্রযুক্তি', '৪র্থ', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 407, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'বৃহস্পতিবার', 'ডিজিটাল প্রযুক্তি', '৪র্থ', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 408, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'ররিবার', 'বিজ্ঞান অনুসন্ধানী বই', '৫ম', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 409, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'সোমবার', 'বিজ্ঞান অনুসন্ধানী বই', '৫ম', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 410, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'মঙ্গলবার', 'বিজ্ঞান অনুসন্ধানী বই', '৫ম', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 411, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'ররিবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৬ষ্ট', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 412, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'বুধবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৬ষ্ট', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 413, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৬ষ্ট', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 414, '2023-10-23 17:07:42', 2023, 'Ten', 'C', 'বুধবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৬ষ্ট', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 415, '2023-10-23 17:07:42', 2023, 'Ten', 'C', 'বৃহস্পতিবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৬ষ্ট', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 416, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'মঙ্গলবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৭ম', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 417, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'বুধবার', 'ডিজিটাল প্রযুক্তি', '৭ম', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 418, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'বৃহস্পতিবার', 'ডিজিটাল প্রযুক্তি', '৭ম', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 419, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'বুধবার', 'বাংলা ১ম', '১ম', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 420, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'বৃহস্পতিবার', 'বাংলা ১ম', '১ম', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 421, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'ররিবার', 'স্বাস্থ্য সুরক্ষা', '২য়', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 422, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'সোমবার', 'স্বাস্থ্য সুরক্ষা', '২য়', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 423, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'মঙ্গলবার', 'স্বাস্থ্য সুরক্ষা', '২য়', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 424, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'ররিবার', 'আবৃত্তি', '২য়', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 425, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'সোমবার', 'আবৃত্তি', '২য়', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 426, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'বুধবার', 'আবৃত্তি', '২য়', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 427, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'বৃহস্পতিবার', 'আবৃত্তি', '২য়', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 428, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'ররিবার', 'স্বাস্থ্য সুরক্ষা', '৩য়', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 429, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'সোমবার', 'স্বাস্থ্য সুরক্ষা', '৩য়', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 430, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'মঙ্গলবার', 'স্বাস্থ্য সুরক্ষা', '৩য়', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 431, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'বুধবার', 'স্বাস্থ্য সুরক্ষা', '৪র্থ', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 432, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'বৃহস্পতিবার', 'স্বাস্থ্য সুরক্ষা', '৪র্থ', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 433, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'সোমবার', 'স্বাস্থ্য সুরক্ষা', '৫ম', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 434, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'বুধবার', 'শারীরিক শিক্ষা ও স্বাস্থ্য', '৫ম', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 435, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'বৃহস্পতিবার', 'শারীরিক শিক্ষা ও স্বাস্থ্য', '৫ম', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 436, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'মঙ্গলবার', 'বাংলা ১ম', '৬ষ্ট', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 437, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'বৃহস্পতিবার', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '৬ষ্ট', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 438, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'ররিবার', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '৭ম', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 439, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'সোমবার', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '৭ম', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 440, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'বৃহস্পতিবার', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '৭ম', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 441, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'বুধবার', 'বাংলা ২য়', '১ম', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 442, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'বৃহস্পতিবার', 'বাংলা ২য়', '১ম', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 443, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'ররিবার', 'জীবন ও জীবিকা', '২য়', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 444, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'সোমবার', 'জীবন ও জীবিকা', '২য়', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 445, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'মঙ্গলবার', 'জীবন ও জীবিকা', '২য়', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 448, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'ররিবার', 'বাংলা ১ম', '৩য়', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 449, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'সোমবার', 'বাংলা ১ম', '৩য়', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 450, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'মঙ্গলবার', 'বাংলা ১ম', '৩য়', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 451, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'বুধবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৩য়', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 452, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'বৃহস্পতিবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৩য়', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 453, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'বৃহস্পতিবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৩য়', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 454, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'বুধবার', 'জীবন ও জীবিকা', '৪র্থ', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 455, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'বৃহস্পতিবার', 'জীবন ও জীবিকা', '৪র্থ', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 456, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'ররিবার', 'জীবন ও জীবিকা', '৫ম', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 457, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'সোমবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৫ম', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 458, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'মঙ্গলবার', 'বাংলা ২য়', '৫ম', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 459, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'মঙ্গলবার', 'বাংলা ২য়', '৫ম', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 460, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'বুধবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৫ম', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 461, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'বৃহস্পতিবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৫ম', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 462, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'ররিবার', 'স্বাস্থ্য সুরক্ষা', '৬ষ্ট', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 463, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'সোমবার', 'স্বাস্থ্য সুরক্ষা', '৬ষ্ট', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 464, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'মঙ্গলবার', 'স্বাস্থ্য সুরক্ষা', '৬ষ্ট', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 465, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'ররিবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৭ম', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 466, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'বুধবার', 'বাংলা ১ম', '৭ম', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 467, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'বুধবার', 'বাংলা ১ম', '৭ম', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 468, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'ররিবার', 'বাংলা ২য়', '১ম', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 469, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'সোমবার', 'বাংলা ২য়', '১ম', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 470, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'মঙ্গলবার', 'বাংলা ২য়', '১ম', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 471, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'বুধবার', 'বাংলা ২য়', '১ম', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 472, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'বৃহস্পতিবার', 'বাংলা ২য়', '১ম', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 473, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'ররিবার', 'ডিজিটাল প্রযুক্তি', '৩য়', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 474, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'সোমবার', 'ডিজিটাল প্রযুক্তি', '৩য়', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 475, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'মঙ্গলবার', 'ডিজিটাল প্রযুক্তি', '৩য়', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 476, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'মঙ্গলবার', 'ডিজিটাল প্রযুক্তি', '৩য়', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 477, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'বুধবার', 'বাংলা ১ম', '৩য়', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 478, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'বৃহস্পতিবার', 'বাংলা ১ম', '৩য়', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 479, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'ররিবার', 'বাংলা ২য়', '৪র্থ', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 480, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'সোমবার', 'বাংলা ২য়', '৪র্থ', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 481, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'মঙ্গলবার', 'বাংলা ২য়', '৪র্থ', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 482, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'বুধবার', 'বাংলা ২য়', '৪র্থ', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 483, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'বৃহস্পতিবার', 'বাংলা ২য়', '৪র্থ', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 484, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'ররিবার', 'অর্থনীতি', '৫ম', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 485, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'সোমবার', 'অর্থনীতি', '৫ম', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 486, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'মঙ্গলবার', 'অর্থনীতি', '৫ম', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 487, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'মঙ্গলবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৬ষ্ট', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 488, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'বুধবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৬ষ্ট', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 489, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'বৃহস্পতিবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৬ষ্ট', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 490, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'ররিবার', 'বাংলা ২য়', '৭ম', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 491, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'বুধবার', 'বাংলা ২য়', '৭ম', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 492, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'ররিবার', 'বিজ্ঞান অনুসন্ধানী বই', '১ম', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 493, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'সোমবার', 'বিজ্ঞান অনুসন্ধানী বই', '১ম', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 494, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'মঙ্গলবার', 'বিজ্ঞান অনুসন্ধানী বই', '১ম', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 495, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'বুধবার', 'ডিজিটাল প্রযুক্তি', '১ম', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 496, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'বৃহস্পতিবার', 'ডিজিটাল প্রযুক্তি', '১ম', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 497, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'ররিবার', 'গণিত', '৩য়', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 498, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'সোমবার', 'গণিত', '৩য়', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 499, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'মঙ্গলবার', 'গণিত', '৩য়', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 500, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'ররিবার', 'রসায়ন', '৪র্থ', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 501, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'সোমবার', 'রসায়ন', '৪র্থ', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 502, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'মঙ্গলবার', 'রসায়ন', '৪র্থ', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 503, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'বুধবার', 'বিজ্ঞান', '৪র্থ', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 504, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'বৃহস্পতিবার', 'বিজ্ঞান', '৪র্থ', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 505, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'ররিবার', 'ডিজিটাল প্রযুক্তি', '৫ম', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 506, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'মঙ্গলবার', 'রসায়ন', '৫ম', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 507, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'বুধবার', 'রসায়ন', '৫ম', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 508, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'বৃহস্পতিবার', 'রসায়ন', '৫ম', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 509, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'ররিবার', 'বিজ্ঞান', '৬ষ্ট', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 510, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'সোমবার', 'বিজ্ঞান', '৬ষ্ট', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 511, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'মঙ্গলবার', 'বিজ্ঞান', '৬ষ্ট', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 512, '2023-10-23 17:07:42', 2023, 'Ten', 'C', 'ররিবার', 'বিজ্ঞান', '৬ষ্ট', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 513, '2023-10-23 17:07:42', 2023, 'Ten', 'C', 'সোমবার', 'বিজ্ঞান', '৬ষ্ট', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 514, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'বুধবার', 'বিজ্ঞান', '৬ষ্ট', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 515, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'বৃহস্পতিবার', 'বিজ্ঞান', '৬ষ্ট', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 516, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'সোমবার', 'বিজ্ঞান', '৭ম', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 517, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'মঙ্গলবার', 'বিজ্ঞান', '৭ম', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 518, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'বুধবার', 'বাংলা ১ম', '১ম', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 519, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'বৃহস্পতিবার', 'বাংলা ১ম', '১ম', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 520, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'ররিবার', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '২য়', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 521, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'সোমবার', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '২য়', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 522, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'মঙ্গলবার', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '২য়', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 523, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'বুধবার', 'ডিজিটাল প্রযুক্তি', '৩য়', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 524, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'বৃহস্পতিবার', 'ডিজিটাল প্রযুক্তি', '৩য়', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 525, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'ররিবার', 'গার্হস্থ্য বিজ্ঞান', '৪র্থ', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 526, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'সোমবার', 'গার্হস্থ্য বিজ্ঞান', '৪র্থ', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 527, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'মঙ্গলবার', 'গার্হস্থ্য বিজ্ঞান', '৪র্থ', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 528, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'বুধবার', 'গার্হস্থ্য বিজ্ঞান', '৪র্থ', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 529, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'বৃহস্পতিবার', 'গার্হস্থ্য বিজ্ঞান', '৪র্থ', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 530, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'বুধবার', 'গার্হস্থ্য বিজ্ঞান', '৪র্থ', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 531, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'বৃহস্পতিবার', 'গার্হস্থ্য বিজ্ঞান', '৪র্থ', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 532, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'সোমবার', 'বাংলা ১ম', '৫ম', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 533, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'মঙ্গলবার', 'ডিজিটাল প্রযুক্তি', '৫ম', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 534, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'বুধবার', 'বাংলা ১ম', '৫ম', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 535, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'বৃহস্পতিবার', 'বাংলা ১ম', '৫ম', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 536, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'ররিবার', 'গার্হস্থ্য বিজ্ঞান', '৬ষ্ট', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 537, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'ররিবার', 'গার্হস্থ্য বিজ্ঞান', '৬ষ্ট', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 538, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'মঙ্গলবার', 'আবৃত্তি', '৬ষ্ট', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 539, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'বৃহস্পতিবার', 'শারীরিক শিক্ষা ও স্বাস্থ্য', '৬ষ্ট', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 540, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'সোমবার', 'বাংলা ১ম', '৭ম', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 541, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'সোমবার', 'বাংলা ১ম', '৭ম', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 542, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'মঙ্গলবার', 'গার্হস্থ্য বিজ্ঞান', '৭ম', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 543, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'মঙ্গলবার', 'গার্হস্থ্য বিজ্ঞান', '৭ম', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 544, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'বুধবার', 'গার্হস্থ্য বিজ্ঞান', '৭ম', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 545, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'গার্হস্থ্য বিজ্ঞান', '৭ম', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 546, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'ররিবার', 'ইংরেজী ১ম', '২য়', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 547, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'সোমবার', 'ইংরেজী ১ম', '২য়', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 548, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'মঙ্গলবার', 'ইংরেজী ১ম', '২য়', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 549, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'বুধবার', 'ইংরেজী ২য়', '২য়', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 550, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'বৃহস্পতিবার', 'ইংরেজী ২য়', '২য়', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 551, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'বুধবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৩য়', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 552, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'বৃহস্পতিবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৩য়', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 553, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'ররিবার', 'জীবন ও জীবিকা', '৪র্থ', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 554, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'সোমবার', 'জীবন ও জীবিকা', '৪র্থ', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 555, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'মঙ্গলবার', 'জীবন ও জীবিকা', '৪র্থ', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 556, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'মঙ্গলবার', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '৫ম', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 557, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'বুধবার', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '৫ম', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 558, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '৫ম', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 559, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'ররিবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৬ষ্ট', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 560, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'সোমবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৬ষ্ট', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 561, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'মঙ্গলবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৬ষ্ট', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 562, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'বুধবার', 'আবৃত্তি', '৬ষ্ট', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 563, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'ররিবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৭ম', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 564, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'সোমবার', 'ইংরেজী ২য়', '৭ম', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 565, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'মঙ্গলবার', 'ইংরেজী ২য়', '৭ম', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 566, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'বৃহস্পতিবার', 'আবৃত্তি', '৭ম', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 567, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'বুধবার', 'বাংলা ১ম', '১ম', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 568, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'বাংলা ১ম', '১ম', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 569, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'ররিবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '২য়', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 570, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'সোমবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '২য়', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 571, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'মঙ্গলবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '২য়', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 572, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'ররিবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৩য়', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 573, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'সোমবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৩য়', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 574, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'মঙ্গলবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৩য়', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 575, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'বুধবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৩য়', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 576, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'বৃহস্পতিবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৩য়', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 577, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'ররিবার', 'ভূগোল ও পরিবেশ', '৪র্থ', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 578, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'সোমবার', 'ভূগোল ও পরিবেশ', '৪র্থ', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 579, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'মঙ্গলবার', 'ভূগোল ও পরিবেশ', '৪র্থ', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 580, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'বুধবার', 'বাংলা ১ম', '৪র্থ', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 581, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'বৃহস্পতিবার', 'বাংলা ১ম', '৪র্থ', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 582, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'ররিবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৫ম', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 583, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'মঙ্গলবার', 'ডিজিটাল প্রযুক্তি', '৫ম', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 584, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'বুধবার', 'ডিজিটাল প্রযুক্তি', '৫ম', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 585, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'বৃহস্পতিবার', 'ডিজিটাল প্রযুক্তি', '৫ম', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 586, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'সোমবার', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '৬ষ্ট', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 587, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'ররিবার', 'শিল্প ও সংস্কৃতি', '৭ম', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 588, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'বৃহস্পতিবার', 'শিল্প ও সংস্কৃতি', '৭ম', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 589, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'মঙ্গলবার', 'বাংলা ১ম', '৭ম', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 590, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'বুধবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৭ম', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 591, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'ররিবার', 'ইসলাম ও নৈতিক শিক্ষা', '২য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 592, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'সোমবার', 'ইসলাম ও নৈতিক শিক্ষা', '২য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 593, '2023-10-23 17:07:42', 2023, 'Seven', 'B', 'মঙ্গলবার', 'ইসলাম ও নৈতিক শিক্ষা', '২য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 594, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'ররিবার', 'ইসলাম শিক্ষা', '২য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 595, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'সোমবার', 'ইসলাম শিক্ষা', '২য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 596, '2023-10-23 17:07:42', 2023, 'Seven', 'C', 'মঙ্গলবার', 'ইসলাম শিক্ষা', '২য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 597, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'বুধবার', 'ইসলাম ও নৈতিক শিক্ষা', '২য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 598, '2023-10-23 17:07:42', 2023, 'Eight', 'B', 'বৃহস্পতিবার', 'ইসলাম ও নৈতিক শিক্ষা', '২য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 599, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'বুধবার', 'ইসলাম ও নৈতিক শিক্ষা', '২য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 600, '2023-10-23 17:07:42', 2023, 'Eight', 'C', 'বৃহস্পতিবার', 'ইসলাম ও নৈতিক শিক্ষা', '২য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 601, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'ররিবার', 'ইসলাম শিক্ষা', '৩য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 602, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'সোমবার', 'ইসলাম শিক্ষা', '৩য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 603, '2023-10-23 17:07:42', 2023, 'Six', 'C', 'মঙ্গলবার', 'ইসলাম শিক্ষা', '৩য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 604, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'বুধবার', 'ইসলাম ও নৈতিক শিক্ষা', '৩য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 605, '2023-10-23 17:07:42', 2023, 'Ten', 'A', 'বৃহস্পতিবার', 'ইসলাম ও নৈতিক শিক্ষা', '৩য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 606, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'বুধবার', 'ইসলাম ও নৈতিক শিক্ষা', '৩য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 607, '2023-10-23 17:07:42', 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'ইসলাম ও নৈতিক শিক্ষা', '৩য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 608, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'ররিবার', 'ইসলাম ও নৈতিক শিক্ষা', '৫ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 609, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'সোমবার', 'ইসলাম ও নৈতিক শিক্ষা', '৫ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 610, '2023-10-23 17:07:42', 2023, 'Eight', 'A', 'মঙ্গলবার', 'ইসলাম ও নৈতিক শিক্ষা', '৫ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 611, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'বুধবার', 'ইসলাম ও নৈতিক শিক্ষা', '৫ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 612, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'বৃহস্পতিবার', 'ইসলাম ও নৈতিক শিক্ষা', '৫ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 613, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'ররিবার', 'ইসলাম শিক্ষা', '৬ষ্ট', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 614, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'সোমবার', 'ইসলাম শিক্ষা', '৬ষ্ট', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 615, '2023-10-23 17:07:42', 2023, 'Six', 'B', 'মঙ্গলবার', 'ইসলাম শিক্ষা', '৬ষ্ট', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০');
INSERT INTO `routine` (`domain`, `ID`, `at_date`, `session`, `class`, `section`, `day`, `subject`, `period_table`, `teacher_name`, `teacher_uuid`, `teacher_index`, `teacher_pdsid`, `teacher_avatar`, `period_time`) VALUES
('localhost', 616, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'বুধবার', 'ইসলাম শিক্ষা', '৬ষ্ট', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 617, '2023-10-23 17:07:42', 2023, 'Seven', 'A', 'বৃহস্পতিবার', 'ইসলাম শিক্ষা', '৬ষ্ট', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 618, '2023-10-23 17:07:42', 2023, 'Six', 'A', 'সোমবার', 'ইসলাম শিক্ষা', '৭ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 619, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'মঙ্গলবার', 'ইসলাম ও নৈতিক শিক্ষা', '৭ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 620, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'বুধবার', 'ইসলাম ও নৈতিক শিক্ষা', '৭ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 621, '2023-10-23 17:07:42', 2023, 'Nine', 'A', 'বৃহস্পতিবার', 'ইসলাম ও নৈতিক শিক্ষা', '৭ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 622, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'মঙ্গলবার', 'ইসলাম ও নৈতিক শিক্ষা', '৭ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 623, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'বুধবার', 'ইসলাম ও নৈতিক শিক্ষা', '৭ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 624, '2023-10-23 17:07:42', 2023, 'Nine', 'B', 'বৃহস্পতিবার', 'ইসলাম ও নৈতিক শিক্ষা', '৭ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 625, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'মঙ্গলবার', 'ইসলাম ও নৈতিক শিক্ষা', '৭ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 626, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'বুধবার', 'ইসলাম ও নৈতিক শিক্ষা', '৭ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 627, '2023-10-23 17:07:42', 2023, 'Nine', 'C', 'বৃহস্পতিবার', 'ইসলাম ও নৈতিক শিক্ষা', '৭ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 628, '2023-10-23 17:07:42', 2023, 'Ten', 'C', 'ররিবার', 'সামাঃ বিজ্ঞান', '১ম', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 629, '2023-10-23 17:07:42', 2023, 'Six', 'undefined', 'ররিবার', 'ইসলাম-শিক্ষা', '১ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 630, '2023-10-23 17:07:42', 2023, 'Ten', 'undefined', 'ররিবার', 'সামাঃ বিজ্ঞান', '১ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 631, '2023-10-23 17:07:42', 2023, 'Six', '', 'সোমবার', 'ইতিহাস-ও-সামাজিক-বিজ্ঞান-অনুশীলন-বই', '২য়', 'MOHSIN ALAM', '', 'N1072480', '', '1676563588633_mahasin-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০');

-- --------------------------------------------------------

--
-- Table structure for table `school_settings`
--

CREATE TABLE `school_settings` (
  `domain` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `at_date` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `eiin` int(100) NOT NULL,
  `logo` varchar(100) NOT NULL DEFAULT 'logo.png',
  `name` varchar(500) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `headline` text NOT NULL,
  `about` text NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT 'main_img.png',
  `video` varchar(100) NOT NULL,
  `fb_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `school_settings`
--

INSERT INTO `school_settings` (`domain`, `ID`, `at_date`, `eiin`, `logo`, `name`, `email`, `phone`, `address`, `headline`, `about`, `image`, `video`, `fb_link`) VALUES
('localhost', 1, '2024-12-04 23:02:33', 108669, 'logo740463813.0497645.png', 'Boalmari George Academy', 'nomail@abc.com', '01716453013', 'Boalmari, Faridpur, Dhaka, Bangladesh', '', 'Boalmari George Academy \'Officials Page\', Faridpur, Dhaka, Bangladesh. 3054 likes · 386 talking about this. It is the oldest high school in Boalmari...', 'image785574436.7763199.png', '', 'https://www.facebook.com/BoalmariGeorgeAcademyOfficials/');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('QP5XJKrI8_w6loA-ClxhFSNC6hwQNpAL', 1736871335, '{\"cookie\":{\"originalMaxAge\":2592000000,\"expires\":\"2025-01-08T18:06:48.487Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userid\":3733,\"teacher_uuid\":\"1697209362836\",\"user\":\"teacher\",\"userAccess\":\"privet\",\"userName\":\"SAANVI\",\"userEmail\":\"api.saanvi.abc@gmail.com\",\"usermail\":\"api.saanvi.abc@gmail.com\",\"index\":\"N1147426\",\"flash\":{},\"username\":\"api.saanvi.abc@gmail.com\",\"temp_code\":201176}');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `domain` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `index_number` varchar(100) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `joining_date` varchar(100) NOT NULL,
  `at_date` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `domain` varchar(100) NOT NULL DEFAULT 'localhost',
  `ID` int(11) NOT NULL,
  `student_uuid` varchar(100) NOT NULL,
  `session` int(11) NOT NULL DEFAULT 2023,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `roll` int(11) NOT NULL,
  `reg` varchar(100) DEFAULT 'XXXXXXXXXX',
  `birth_date` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL DEFAULT 'Male',
  `blood_group` varchar(100) NOT NULL DEFAULT 'N/A',
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL DEFAULT 'XXXXXXXXXXX',
  `father_name` varchar(100) NOT NULL DEFAULT 'N/A',
  `mother_name` varchar(100) NOT NULL DEFAULT 'N/A',
  `address` varchar(100) NOT NULL DEFAULT 'N/A',
  `religion` varchar(100) NOT NULL DEFAULT 'N/A',
  `admission_date` varchar(100) DEFAULT 'N/A',
  `hobbies` varchar(100) DEFAULT 'N/A',
  `avatar` varchar(500) NOT NULL DEFAULT 'male_avatar.png',
  `fb_link` varchar(100) NOT NULL DEFAULT 'N/A',
  `password` varchar(100) NOT NULL DEFAULT 'password',
  `quote` varchar(500) NOT NULL DEFAULT 'N/A',
  `at_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`domain`, `ID`, `student_uuid`, `session`, `class`, `section`, `name`, `student_id`, `roll`, `reg`, `birth_date`, `gender`, `blood_group`, `email`, `phone`, `telephone`, `father_name`, `mother_name`, `address`, `religion`, `admission_date`, `hobbies`, `avatar`, `fb_link`, `password`, `quote`, `at_date`) VALUES
('localhost', 137, '1697585341900', 2023, 'Six', 'C', 'Saahu Kushari', 69249, 57, 'XXXXXXXXXX', '2012-03-12', 'Male', 'undefined', '69249@abc.com', '', '01763872563', 'Sukhemdrro Nam Kushari', 'Joya Rani Kushari', 'Bandugram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 18:08:35'),
('localhost', 140, '1697544984068', 2023, 'Six', 'C', 'Nayon Paul', 66834, 58, 'XXXXXXXXXX', '2010-04-09', 'Male', 'undefined', '66834@abc.com', '', '0179206150', 'Joydev Paul', 'Shilpi paul', 'Bagura , Naderchad ghat, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 18:14:20'),
('localhost', 143, '1697274452660', 2023, 'Six', 'C', 'Md. Sajeebul Islam ', 553431, 59, 'XXXXXXXXXX', '2011-12-22', 'Male', 'undefined', '553431@abc.com', '', '01943298812', 'Md. Rejaul Karim', 'Heera', 'Omrrit Nagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 18:17:51'),
('localhost', 146, '1697683657306', 2023, 'Six', 'C', 'Md. Omidul Islam sadhin', 344175, 60, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '344175@abc.com', '', '01314208976', 'shahaful Alam ', 'Onjona', 'Kaliyand, Oyahidabad, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 18:23:02'),
('localhost', 147, '1697615915305', 2023, 'Six', 'C', 'Anif Molla', 216395, 61, 'XXXXXXXXXX', '2010-05-13', 'Male', 'undefined', '216395@abc.com', '', '01944748924', 'Helal', 'Roji Khatun', 'Solna Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 18:31:59'),
('localhost', 148, '1697734508710', 2023, 'Six', 'C', 'Avijeet Kumar Shil', 118831, 62, 'XXXXXXXXXX', '2011-01-02', 'Male', 'undefined', '118831@abc.com', '', '01713561018', 'Osok Kumar Shil', 'Konika Rani Shil', 'Kamar Gram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 18:34:32'),
('localhost', 149, '1697835814555', 2023, 'Six', 'C', 'Shah Newyaj Bin Alif ', 336093, 63, 'XXXXXXXXXX', '2011-03-24', 'Male', 'undefined', '336093@abc.com', '', '01714871345', 'Md. Shahin Miya', 'Beauty Khatun', 'Amgram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 18:38:25'),
('localhost', 150, '1697638461831', 2023, 'Six', 'C', 'Sayed Iyasin', 849850, 64, 'XXXXXXXXXX', '2011-03-24', 'Male', 'undefined', '849850@abc.com', '', '01767959584', 'Tanjila', 'Beauty Khatun', 'Bahirbag, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 19:36:59'),
('localhost', 151, '1697396230716', 2023, 'Six', 'C', 'S. M. Jakariya', 604180, 65, 'XXXXXXXXXX', '2012-05-18', 'Male', 'undefined', '604180@abc.com', '', '01706698614', 'Md. Edris Ali', 'Nasrin Aktar', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 20:02:52'),
('localhost', 154, '1697835410793', 2023, 'Six', 'C', 'Gourob Chokroborrti', 284241, 66, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '284241@abc.com', '', '01728311873', 'Joy Chokroborrti', 'Beauly Chokroborrti', 'Purbo Kamar Gram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 20:06:43'),
('localhost', 155, '1697057460673', 2023, 'Six', 'C', 'Nishan Saha', 18605, 67, 'XXXXXXXXXX', '2011-10-22', 'Male', 'undefined', '18605@abc.com', '', '01716376090', 'Nikhil Saha', 'Asima saha', 'Purbo Kamar Gram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 20:08:39'),
('localhost', 156, '1697764153915', 2023, 'Six', 'C', 'Nadeem Mahmud ', 785396, 68, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '785396@abc.com', '', '01734381048', 'Namir uddin', 'Hira Khatun', 'Posseem Kamar Gram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 20:16:20'),
('localhost', 157, '1697417026653', 2023, 'Six', 'C', 'Sehejadul Alam ', 878691, 69, 'XXXXXXXXXX', '2011-11-12', 'Male', 'undefined', '878691@abc.com', '', '01718046119', 'Md. Shahinur Alom', 'Paruli Khanam', 'D. Shibpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 21:09:04'),
('localhost', 158, '1697280940697', 2023, 'Six', 'C', 'Md. Hamjala Molla', 631621, 70, 'XXXXXXXXXX', '2010-11-12', 'Male', 'undefined', '631621@abc.com', '', '01774915747', 'Md. Mamun Molla', 'Shirina Begum', 'Banibari, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 21:12:41'),
('localhost', 159, '1697350599169', 2023, 'Six', 'C', 'Arup Kumar Shil', 501313, 71, 'XXXXXXXXXX', '2011-04-14', 'Male', 'undefined', '501313@abc.com', '', '01991349534', 'Dilip Kumar', 'Shopna Rani Shil', 'Shibpur, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 21:19:01'),
('localhost', 176, '1697497068454', 2023, 'Six', 'C', 'Saydul Islam sami', 447773, 72, 'XXXXXXXXXX', '2012-01-23', 'Male', 'undefined', '447773@abc.com', '', '01977704450', 'Md. Sohel', 'Cadni', 'Vatparar,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 05:35:14'),
('localhost', 177, '1697301138778', 2023, 'Six', 'C', 'Md. Sajeed Biswas ', 389835, 73, 'XXXXXXXXXX', '2013-09-21', 'Male', 'undefined', '389835@abc.com', '', '01791921662', 'Shahidul biswas', 'Jakiya Begum', 'Chotul,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 05:39:41'),
('localhost', 178, '1697635376897', 2023, 'Six', 'C', 'Md. Habib Shikdar Ratul', 284387, 74, 'XXXXXXXXXX', '2011-01-24', 'Male', 'undefined', '284387@abc.com', '', '01944146855', 'Md. Tarikul Islam', 'Mst. Reba Begum', 'Soto Kamar Gram,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 05:42:25'),
('localhost', 179, '1697631409821', 2023, 'Six', 'C', 'Sikdar Rohit', 713821, 75, 'XXXXXXXXXX', '2011-07-10', 'Male', 'undefined', '713821@abc.com', '', '01612708848', 'Md. Jiyap Uddin', 'Afroja Iyasmin Sheli', 'Cotul,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 05:45:17'),
('localhost', 180, '1697076453882', 2023, 'Six', 'C', 'Ferdous Rahman  Labib', 373958, 76, 'XXXXXXXXXX', '2012-09-11', 'Male', 'undefined', '373958@abc.com', '', '01852602361', 'Md. Hafijur Rahman', 'Mst. Poli Khatun', 'Raypur,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 05:50:53'),
('localhost', 181, '1697693144167', 2023, 'Six', 'C', 'Ali Hasaan', 114026, 77, 'XXXXXXXXXX', '2011-10-25', 'Male', 'undefined', '114026@abc.com', '', '01733268723', 'Md. Shajahan Molla', 'Rehena Begum', 'Solna,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 05:54:39'),
('localhost', 182, '1697230524851', 2023, 'Six', 'C', 'Md. Mujahid Ali', 58712, 78, 'XXXXXXXXXX', '2012-11-27', 'Male', 'undefined', '58712@abc.com', '', '01939303782', 'Muhammad Ali', 'Mst. Lota', 'Solna,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 05:57:28'),
('localhost', 183, '1697637805053', 2023, 'Six', 'C', 'Md. Habibullah', 363567, 79, 'XXXXXXXXXX', '2012-01-18', 'Male', 'undefined', '363567@abc.com', '', '01907388301', 'MD. Selim Mia', 'Mst. Sufiya Begum', 'Muktarpur,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 06:07:38'),
('localhost', 184, '1697533227967', 2023, 'Six', 'C', 'Md. Mostakim sheikh', 176363, 80, 'XXXXXXXXXX', '2012-01-12', 'Male', 'undefined', '176363@abc.com', '', '01997321112', 'Md. Masud Sheikh', 'Mst. Arjina Begum', 'Vatpara,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 06:20:23'),
('localhost', 185, '1697128918660', 2023, 'Six', 'C', 'Shawon Ray ', 288025, 81, 'XXXXXXXXXX', '2012-06-05', 'Male', 'undefined', '288025@abc.com', '', '01913815929', 'Sonjit Kumar Ray', 'Trrisna Ray', 'Baguan,Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 08:24:28'),
('localhost', 186, '1696993007297', 2023, 'Six', 'C', 'Md. Arafat Sheikh', 145593, 82, 'XXXXXXXXXX', '2011-06-28', 'Male', 'undefined', '145593@abc.com', '', '01762999134', 'Md. Sojol Sheikh', 'Mst. Asma Begum', 'Kaliyand,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 08:29:42'),
('localhost', 187, '1697741580212', 2023, 'Six', 'C', 'Pracurjo Paul', 887126, 83, 'XXXXXXXXXX', '2012-04-26', 'Male', 'undefined', '887126@abc.com', '', '0186293721', 'Poresh Kumar Paul', 'Osima Pal', 'Dokkhin Kamar Gram,Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 08:48:12'),
('localhost', 188, '1697594874590', 2023, 'Six', 'B', 'Mithun Sarkar', 751384, 78, 'XXXXXXXXXX', '2011-11-21', 'Male', 'undefined', '751384@abc.com', '', '01938652314', 'Komol Sardar', 'Chaina Rani', 'Pashchimkamargram', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 08:48:14'),
('localhost', 189, '1697686442006', 2023, 'Six', 'B', 'Apon Kumar', 119049, 79, 'XXXXXXXXXX', '2011-07-28', 'Male', 'undefined', '119049@abc.com', '', '01728938516', 'Milon Kumar Shil', 'Lipika Pul', 'Dakkhinshibpur, Rajbari Sadar, Rajbari', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 08:53:59'),
('localhost', 190, '1697669767371', 2023, 'Six', 'B', 'MD Arman', 171227, 80, 'XXXXXXXXXX', '2011-11-30', 'Male', 'undefined', '171227@abc.com', '', '01843493236', 'Rezaul Islam', 'Sultana Aktar', 'Shibpur,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 08:57:18'),
('localhost', 191, '1697624178636', 2023, 'Six', 'C', 'Md. Shuvo ', 158991, 84, 'XXXXXXXXXX', '2010-05-04', 'Male', 'undefined', '158991@abc.com', '', '01730159525', 'Munsi Mijanur', 'Suma Begum', 'Vatpara,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 09:08:19'),
('localhost', 192, '1697353264328', 2023, 'Six', 'B', 'MD Emon Molla ', 95074, 81, 'XXXXXXXXXX', '2011-10-01', 'Male', 'undefined', '95074@abc.com', '', '01954820197', 'MD Usuf Molla', 'Shilpi', 'Gunbaha,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 09:15:24'),
('localhost', 193, '1697436578325', 2023, 'Six', 'B', 'MD Tahsin Ahmed', 783890, 82, 'XXXXXXXXXX', '2012-05-26', 'Male', 'undefined', '783890@abc.com', '', '01306545207', 'MD Kamrul Islam', 'Mst Merina Parvin', 'Gunbaha, Mohammadpur, Magura', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 00:53:42'),
('localhost', 194, '1697540502776', 2023, 'Six', 'B', 'MD Naim Sheikh', 650056, 83, 'XXXXXXXXXX', '2010-08-15', 'Male', 'undefined', '650056@abc.com', '', '01990724383', 'MD Salam Sheikh', 'Mst Aleya Begum', 'Bahirbag, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 00:56:24'),
('localhost', 195, '1697162248091', 2023, 'Six', 'B', 'MD Syed Ariyan', 208038, 84, 'XXXXXXXXXX', '2012-03-02', 'Male', 'undefined', '208038@abc.com', '', '01712310959', 'Syed Arif', 'Syed Laki', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 00:58:56'),
('localhost', 196, '1697733720099', 2023, 'Six', 'B', 'MD Mursalin Mia', 895180, 85, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '895180@abc.com', '', '01712310959', 'MD Rofikul Islam', 'Mst Munja Islam', 'Syedpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 01:01:31'),
('localhost', 197, '1697127354128', 2023, 'Six', 'B', 'Abdullah', 269735, 86, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '269735@abc.com', '', '01773094547', 'Pikul', 'Shahanaz', 'Gurdia, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 01:03:09'),
('localhost', 198, '1697408489182', 2023, 'Six', 'B', 'Rahim Vuiya', 808467, 87, 'XXXXXXXXXX', '2012-07-12', 'Male', 'undefined', '808467@abc.com', '', '01710147365', 'MD Sajjad Hosen Vuiya', 'Mst Monihar Parvin', 'Noyanipara, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 01:05:55'),
('localhost', 199, '1697364061215', 2023, 'Six', 'B', 'Khandakar Mehedi Hasan', 686759, 88, 'XXXXXXXXXX', '2012-08-10', 'Male', 'undefined', '686759@abc.com', '', '01644547742', 'Sakendar Ali', 'Ambiya Begum', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 01:09:21'),
('localhost', 200, '1697246004413', 2023, 'Six', 'B', 'Rudra Biswas', 782625, 89, 'XXXXXXXXXX', '2012-01-03', 'Male', 'undefined', '782625@abc.com', '', '01714544674', 'Prashanta biswas', 'Minoti Biswas', 'Kamargram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 01:15:09'),
('localhost', 201, '1697195625100', 2023, 'Six', 'B', 'Moin Choudhury', 449815, 90, 'XXXXXXXXXX', '2011-10-12', 'Male', 'undefined', '449815@abc.com', '', '01736213423', 'Mizan Choudhury', 'Ayrin Aktar Rimi', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 01:24:27'),
('localhost', 202, '1697536017306', 2023, 'Six', 'B', 'MD Mahim Ikbal Faisal', 832928, 91, 'XXXXXXXXXX', '2012-03-02', 'Male', 'undefined', '832928@abc.com', '', '01868956855', 'MD Akkas Uddin Molla', 'Mst Shamima Aktar Mina', 'Kaliyand, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 01:26:55'),
('localhost', 203, '1697813319027', 2023, 'Six', 'B', 'MD Samiul Islam', 505955, 92, 'XXXXXXXXXX', '2012-11-26', 'Male', 'undefined', '505955@abc.com', '', '01937779101', 'MD Shohidul Islam', 'Nurnahar', 'Dakkhinkamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 01:29:34'),
('localhost', 204, '1697125115402', 2023, 'Six', 'B', 'MD Tamim', 330451, 93, 'XXXXXXXXXX', '2012-11-11', 'Male', 'undefined', '330451@abc.com', '', '01751728978', 'MD Saiful Islam', 'Tisha Begum', 'Shotasi, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 01:31:57'),
('localhost', 205, '1697031566651', 2023, 'Six', 'B', 'Ishan Iban Abdullah', 848208, 94, 'XXXXXXXXXX', '2011-06-15', 'Male', 'undefined', '848208@abc.com', '', '01916130165', 'MD Fosiyar Rahman', 'Chameli Aktar', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 01:54:33'),
('localhost', 206, '1696994888230', 2023, 'Six', 'B', 'MD Khalid Hasan', 731933, 95, 'XXXXXXXXXX', '2009-04-25', 'Male', 'undefined', '731933@abc.com', '', '01735333273', 'MD Humayun Sheikh', 'Mst Khadija Begum', 'Patitapara', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 02:04:23'),
('localhost', 207, '1697756045165', 2023, 'Six', 'B', 'MD Morshed Molla', 666129, 96, 'XXXXXXXXXX', '2012-10-19', 'Male', 'undefined', '666129@abc.com', '', '01939463514', 'MD Imam Molla', 'Mousumi Aktar Nasrin', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 02:06:33'),
('localhost', 208, '1697138450540', 2023, 'Six', 'B', 'Dipta Pul', 678391, 97, 'XXXXXXXXXX', '2012-10-21', 'Male', 'undefined', '678391@abc.com', '', '01734909099', 'Dilip Kumar Pul', 'Angali Kumar Pul', 'Boalmari, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 02:09:22'),
('localhost', 209, '1697806804700', 2023, 'Six', 'B', 'MD Ibrahim Choudhury', 167838, 98, 'XXXXXXXXXX', '2010-01-02', 'Male', 'undefined', '167838@abc.com', '', '01937422017', 'Robiul Choudhury', 'Mst Rehena Khatun', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 02:18:07'),
('localhost', 210, '1697124561534', 2023, 'Six', 'B', 'MD Rafi', 504552, 99, 'XXXXXXXXXX', '2011-09-29', 'Male', 'undefined', '504552@abc.com', '', '01729801602', 'MD Harun', 'Mst Reba Begum', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 00:21:06'),
('localhost', 211, '1697296977653', 2023, 'Six', 'B', 'MD Al amin Molla', 228155, 100, 'XXXXXXXXXX', '2012-03-25', 'Male', 'undefined', '228155@abc.com', '', '01733595442', 'MD Liakat Hosen', 'Mst Ferdousi Begum', 'Chalinagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 00:23:15'),
('localhost', 212, '1697699029827', 2023, 'Six', 'B', 'MD Tasin Molla', 430587, 101, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '430587@abc.com', '', '01758877790', 'MD Majed Molla', 'Mst Kabita', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 00:25:18'),
('localhost', 213, '1697749814753', 2023, 'Six', 'B', 'MD Siam', 416776, 102, 'XXXXXXXXXX', '2012-02-03', 'Male', 'undefined', '416776@abc.com', '', '01740990083', 'MD Chan Mia', 'Mst Eva Aktar', 'Rajapur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 00:27:04'),
('localhost', 214, '1697837534195', 2023, 'Six', 'B', 'MD Jakariya Mia', 34284, 103, 'XXXXXXXXXX', '2011-12-23', 'Male', 'undefined', '34284@abc.com', '', '01708118338', 'MD Abul Hasan', 'Mst Shahina Begum', 'Dighalbana, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 00:28:57'),
('localhost', 215, '1697363381613', 2023, 'Six', 'B', 'MD Sakibul Hasan', 493851, 104, 'XXXXXXXXXX', '2012-01-10', 'Male', 'undefined', '493851@abc.com', '', '01904153038', 'MD Manir Hosen', 'Mst Sagori Begum', 'Amgram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 00:30:49'),
('localhost', 216, '1697048609598', 2023, 'Six', 'B', 'Shawon Islam', 821728, 105, 'XXXXXXXXXX', '2010-12-03', 'Male', 'undefined', '821728@abc.com', '', '01775495184', 'Sohel Molla', 'Anna Begum', 'Bahirbag, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 00:32:38'),
('localhost', 217, '1697533016676', 2023, 'Six', 'B', 'MD Junayet Siddik Rasel', 675248, 106, 'XXXXXXXXXX', '2010-06-01', 'Male', 'undefined', '675248@abc.com', '', '01749136062', 'MD Ibrahim MOlla', 'Mst Rijiya Begum', 'Horiharnahar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 00:36:12'),
('localhost', 218, '1697757816858', 2023, 'Six', 'B', 'Siddharth Sharkar', 248727, 107, 'XXXXXXXXXX', '2011-11-11', 'Male', 'undefined', '248727@abc.com', '', '01752631094', 'Nanda Sharkar', 'Lipi Sharkar', 'Chatul, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 00:39:07'),
('localhost', 219, '1697003735890', 2023, 'Six', 'B', 'Ahad Sheikh ', 327122, 108, 'XXXXXXXXXX', '2011-03-29', 'Male', 'undefined', '327122@abc.com', '', '01749708397', 'Raja Mia', 'Rashida Begum', 'Amgram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 00:41:08'),
('localhost', 220, '1697686305074', 2023, 'Six', 'B', 'Jyotiska Bhowmik', 482245, 109, 'XXXXXXXXXX', '2011-12-27', 'Male', 'undefined', '482245@abc.com', '', '01712457660', 'Jayanta Kumar Bhowmik', 'Dipa Das', 'Purba Kamargram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 00:49:13'),
('localhost', 221, '1697436892048', 2023, 'Six', 'B', 'Jihad Sheikh', 526, 110, 'XXXXXXXXXX', '2011-11-12', 'Male', 'undefined', '526@abc.com', '', '01933143178', 'MD Ziaul Rahman', 'Champa Khatun', 'Purba Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 00:51:08'),
('localhost', 222, '1697328731418', 2023, 'Six', 'B', 'Anik Rajbangshi', 634228, 111, 'XXXXXXXXXX', '2010-09-11', 'Male', 'undefined', '634228@abc.com', '', '01728254991', 'Deb Kumar Rajbangshi', 'Aruna Rani Rajbangshi', 'Adharkotha, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:04:21'),
('localhost', 223, '1697740872558', 2023, 'Six', 'B', 'Rabttra Hiyero Mandal', 148382, 112, 'XXXXXXXXXX', '2012-03-08', 'Male', 'undefined', '148382@abc.com', '', '01924950136', 'Ronojit Kumar Mandal', 'Hira Sarkar', 'Kamargram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:07:53'),
('localhost', 224, '1697794110271', 2023, 'Six', 'B', 'MD Tuhin Sheikh ', 86403, 113, 'XXXXXXXXXX', '2010-12-30', 'Male', 'undefined', '86403@abc.com', '', '01971138204', 'AB Mannan Sheikh', 'Mst Sabina Yasmin', 'Uttarshibpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:09:57'),
('localhost', 225, '1696990277293', 2023, 'Six', 'B', 'Sakidul Islam', 253469, 114, 'XXXXXXXXXX', '2013-02-02', 'Male', 'undefined', '253469@abc.com', '', '01730177180', 'MD Saifur Rahman', 'Mst Shampa Islam', 'Raipur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:12:10'),
('localhost', 226, '1697105521702', 2023, 'Six', 'B', 'MD Hasibul Sheikh', 14061, 115, 'XXXXXXXXXX', '2011-06-01', 'Male', 'undefined', '14061@abc.com', '', '01750124054', 'MD Kamal Sheikh', 'Mst Ruma Begum', 'Biswaspur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:14:50'),
('localhost', 227, '1697139765703', 2023, 'Six', 'B', 'MD Azizul Haque', 102852, 116, 'XXXXXXXXXX', '2011-10-06', 'Male', 'undefined', '102852@abc.com', '', '01962440536', 'Jafar Molla', 'Mst Shorifa Begum', 'Dorihoharnagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:25:11'),
('localhost', 228, '1697841092640', 2023, 'Six', 'B', 'MD Ruhin Hosen', 479754, 117, 'XXXXXXXXXX', '2012-03-01', 'Male', 'undefined', '479754@abc.com', '', '01709746363', 'MD Babar Ali', 'Dalia Khatun', 'Bichali, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:28:36'),
('localhost', 229, '1697380524606', 2023, 'Six', 'B', 'Syed Tanvir Mahin', 238102, 118, 'XXXXXXXXXX', '2012-06-12', 'Male', 'undefined', '238102@abc.com', '', '01714366105', 'Syed Mahbubur Rashid', 'Mst Rojlin Atiya', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:32:32'),
('localhost', 230, '1697733940583', 2023, 'Six', 'B', 'Abu Bakkar', 220818, 119, 'XXXXXXXXXX', '2011-11-24', 'Male', 'undefined', '220818@abc.com', '', '01740766099', 'MD Atikur Rahman', 'Chaina Khatun', 'Moddhorgati, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:34:33'),
('localhost', 231, '1697325230987', 2023, 'Six', 'B', 'MD Shihab Molla', 670662, 120, 'XXXXXXXXXX', '2014-12-06', 'Male', 'undefined', '670662@abc.com', '', '01725281924', 'MD Mizanur Rahman', 'Shiuli Parvin', 'Chatul, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:37:10'),
('localhost', 232, '1697389214652', 2023, 'Six', 'B', 'MD Nazmul Sakib Swron', 128617, 121, 'XXXXXXXXXX', '2013-01-01', 'Male', 'undefined', '128617@abc.com', '', '01736347956', 'Mohammad Ashrafuzzaman Chunnu', 'Nurunnahar', 'FelanNagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:46:45'),
('localhost', 233, '1697335962147', 2023, 'Six', 'B', 'MD Shahdin Hosen Tutu', 408860, 122, 'XXXXXXXXXX', '2011-12-08', 'Male', 'undefined', '408860@abc.com', '', '01766366416', 'MD Sharafat  Hosen', 'Afroza Sultana', 'Boalmari, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:48:47'),
('localhost', 234, '1697481536794', 2023, 'Six', 'B', 'MD Mozibur Rahman', 888175, 123, 'XXXXXXXXXX', '2011-12-31', 'Male', 'undefined', '888175@abc.com', '', '00000000000', 'MD Aminur Rahman', 'Bilkis Sultana', 'Ramnagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:51:29'),
('localhost', 235, '1697172300759', 2023, 'Six', 'B', 'Khandakar Ariyan', 730047, 124, 'XXXXXXXXXX', '2013-07-10', 'Male', 'undefined', '730047@abc.com', '', '01405143892', 'Sohel Khandakar', 'Mst Lipi Begum', 'Shekhor, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:54:17'),
('localhost', 236, '1697510473291', 2023, 'Six', 'B', 'Alif Khan', 389520, 125, 'XXXXXXXXXX', '2012-10-31', 'Male', 'undefined', '389520@abc.com', '', '01925317838', 'Mostak', 'Mst Nipa', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:55:58'),
('localhost', 237, '1697132700927', 2023, 'Six', 'B', 'MD Shofuqul Khan', 553306, 126, 'XXXXXXXXXX', '2011-11-30', 'Male', 'undefined', '553306@abc.com', '', '01716406608', 'Mohammad Sahidul Khan', 'Subarna Aktar', 'Boalmari, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 02:09:15'),
('localhost', 238, '1697813980277', 2023, 'Six', 'B', 'Apon Biswas', 314497, 127, 'XXXXXXXXXX', '2011-10-08', 'Male', 'undefined', '314497@abc.com', '', '01731408942', 'Akhil Kundu Biswas', 'Shila Rani Mandal', 'Boalmari, Boalmari, Faridpur', 'Hinduism', '', 'N/A', '1697259606064_19 Riaj Molla.jpg', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 02:11:29'),
('localhost', 239, '1697718970826', 2023, 'Six', 'B', 'Mahim Mohammad Roni', 194592, 128, 'XXXXXXXXXX', '2012-09-14', 'Male', 'undefined', '194592@abc.com', '', '01756414314', 'Ali Afjal Hosen', 'Jesmin Khanom', 'Noderchad Ghat, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 02:14:16'),
('localhost', 240, '1697121381954', 2023, 'Six', 'B', 'Sheikh Sadi', 203692, 129, 'XXXXXXXXXX', '2013-06-01', 'Male', 'undefined', '203692@abc.com', '', '01868259617', 'MD Rofiqul Islam', 'Mst Sahera Bilkis', 'Myna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 02:17:59'),
('localhost', 241, '1697623122327', 2023, 'Six', 'B', 'Wasi Ul Islam', 343342, 130, 'XXXXXXXXXX', '2013-04-13', 'Male', 'undefined', '343342@abc.com', '', '01712310841', 'MD Mizanur Rahman', 'Tahmina Khatun', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 00:24:41'),
('localhost', 242, '1697661896978', 2023, 'Six', 'B', 'MD Maruf Molla', 823287, 131, 'XXXXXXXXXX', '2008-02-01', 'Male', 'undefined', '823287@abc.com', '', '01914226133', 'MD Faruk MOlla', 'Mst Jesmin Begum', 'Gurdia, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 00:27:46'),
('localhost', 243, '1697641917355', 2023, 'Six', 'B', 'Riyazul Sheikh', 613184, 132, 'XXXXXXXXXX', '2012-08-29', 'Male', 'undefined', '613184@abc.com', '', '01407730794', 'Mizan Sheikh', 'Keya Khanom', 'Rajapur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 00:30:45'),
('localhost', 244, '1697217179749', 2023, 'Six', 'B', 'MD Morsalin Khan', 213698, 133, 'XXXXXXXXXX', '2011-05-17', 'Male', 'undefined', '213698@abc.com', '', '01725945712', 'MD Anis Khan', 'Mst Morzina', 'Bykhir, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 00:33:40'),
('localhost', 245, '1697014422165', 2023, 'Six', 'B', 'Rifat Alom', 528050, 134, 'XXXXXXXXXX', '2011-12-26', 'Male', 'undefined', '528050@abc.com', '', '01755045831', 'MD Nowsher Alom', 'Mst Sharmin Begum', 'Kaliyand, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 00:36:56'),
('localhost', 246, '1697652074119', 2023, 'Six', 'B', 'MD Tamim', 100955, 135, 'XXXXXXXXXX', '2011-10-09', 'Male', 'undefined', '100955@abc.com', '', '01920341428', 'Masud Rana', 'Mst Esamtara Begum', 'Amritanagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 00:39:14'),
('localhost', 247, '1697010592205', 2023, 'Six', 'B', 'MD Samiul Islam', 255150, 136, 'XXXXXXXXXX', '2012-03-10', 'Male', 'undefined', '255150@abc.com', '', '01936149460', 'MS Ali Hosen', 'Mst Hayatun Nesa', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 00:42:11'),
('localhost', 248, '1697017199129', 2023, 'Six', 'B', 'MD Zihad Sheikh', 218750, 137, 'XXXXXXXXXX', '2011-11-16', 'Male', 'undefined', '218750@abc.com', '', '01403978918', 'MD Hosen Sheikh', 'Farida Khatun', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 00:44:27'),
('localhost', 249, '1697487083398', 2023, 'Six', 'B', 'AB Rahman Molla', 320870, 138, 'XXXXXXXXXX', '2012-01-03', 'Male', 'undefined', '320870@abc.com', '', '01782980088', 'MD Jafar Molla', 'Mst Lipi Begum', 'Satair, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 00:48:23'),
('localhost', 250, '1697049302252', 2023, 'Six', 'B', 'Soharda Rahman', 443998, 139, 'XXXXXXXXXX', '2011-11-08', 'Male', 'undefined', '443998@abc.com', '', '01718272789', 'Mezbaur Rahman', 'Farzana Sultana Sumi', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 00:51:20'),
('localhost', 251, '1697036149346', 2023, 'Six', 'B', 'Apan Saha', 471231, 140, 'XXXXXXXXXX', '2012-01-22', 'Male', 'undefined', '471231@abc.com', '', '01712450875', 'Priyo Nath Saha', 'Chinu Rani Saha', 'Amgram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 01:00:36'),
('localhost', 252, '1697580943774', 2023, 'Six', 'B', 'MD Masum Choudhury', 285907, 141, 'XXXXXXXXXX', '2010-03-10', 'Male', 'undefined', '285907@abc.com', '', '01313967277', 'MD AB Kaiyum', 'Mst Rekha Begum', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 01:05:13'),
('localhost', 253, '1696986200501', 2023, 'Six', 'B', 'Abu Said Choudhury', 578468, 142, 'XXXXXXXXXX', '2010-10-14', 'Male', 'undefined', '578468@abc.com', '', '01975385428', 'Mst Mintu Choudhury', 'Sabina Begum', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 01:09:24'),
('localhost', 254, '1697085197831', 2023, 'Six', 'B', 'MD Tanzim Hosen', 87928, 143, 'XXXXXXXXXX', '2012-10-25', 'Male', 'undefined', '87928@abc.com', '', '01746271625', 'MD Imran Hosen', 'Mst Aysa Siddik', 'Joydebpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 01:11:36'),
('localhost', 255, '1697605011651', 2023, 'Six', 'B', 'MD Tahsan Islam', 1324, 144, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '1324@abc.com', '', '01988909893', 'MD Delwar Hosen', 'Mst Tahmina Begum', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 01:22:16'),
('localhost', 256, '1697167918767', 2023, 'Six', 'B', 'MD Abid Rahman Alif', 864119, 1, 'XXXXXXXXXX', '2013-04-17', 'Male', 'undefined', '864119@abc.com', '', '01905519906', 'Obaidur Rahman', 'Khadija Begum', 'Rupopat, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 01:24:07'),
('localhost', 257, '1697196905199', 2023, 'Six', 'B', 'MD Mehedi Hasan', 812816, 2, 'XXXXXXXXXX', '2013-12-10', 'Male', 'undefined', '812816@abc.com', '', '01719140828', 'Hosen Mohammad Mahmudul Hasan', 'Ruma Aktar', 'Baguan, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 01:26:24'),
('localhost', 258, '1696973477911', 2023, 'Six', 'B', 'Sazzad Biswas Shakil', 56147, 3, 'XXXXXXXXXX', '2012-01-15', 'Male', 'undefined', '56147@abc.com', '', '01932516425', 'MD Faruk Biswas', 'Mst khushi Begum', 'Amgram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 01:28:06'),
('localhost', 259, '1697030536419', 2023, 'Six', 'B', 'MD Abu Ibrahim Barkati', 451831, 4, 'XXXXXXXXXX', '2011-09-20', 'Male', 'undefined', '451831@abc.com', '', '01968460413', 'MD Abu  Azad Barkati', 'Lima', 'Sotashi, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 01:30:43'),
('localhost', 260, '1697038892541', 2023, 'Six', 'B', 'Mashfin Mahin', 11325, 5, 'XXXXXXXXXX', '2012-07-16', 'Male', 'undefined', '11325@abc.com', '', '01819042712', 'MD Mojid Sheikh', 'Dulali', 'Myna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 01:33:04'),
('localhost', 261, '1697226477358', 2023, 'Six', 'C', 'MD.Tamim MIa', 204338, 1, 'XXXXXXXXXX', '2012-03-07', 'Male', 'undefined', '204338@abc.com', '', '01920406293', 'MD. Mukul Mia', 'Mst. Bina Begum', 'Kushadangga,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 05:02:26'),
('localhost', 262, '1697295547774', 2023, 'Six', 'C', 'Tanvir sheikh', 36346, 2, 'XXXXXXXXXX', '2010-07-13', 'Male', 'undefined', '36346@abc.com', '', '01311936773', 'MD.Helal Sheikh', 'Merina', 'Loknath,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 05:07:11'),
('localhost', 263, '1697769710783', 2023, 'Six', 'C', 'MD. Irteja Labib', 228156, 3, 'XXXXXXXXXX', '2012-12-01', 'Male', 'undefined', '228156@abc.com', '', '01733397720', 'MD.Abu Sait', 'Amina Aktar', 'Solna,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 05:10:50'),
('localhost', 264, '1697588555939', 2023, 'Six', 'C', 'MD. Parvej biswas', 587061, 4, 'XXXXXXXXXX', '2011-04-27', 'Male', 'undefined', '587061@abc.com', '', '01781113640', 'MD. Rubel Biswas', 'Parvin', 'Solna,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 05:18:01'),
('localhost', 265, '1697184849136', 2023, 'Six', 'C', 'MD. Jabir Ahamad', 240514, 5, 'XXXXXXXXXX', '2011-11-13', 'Male', 'undefined', '240514@abc.com', '', '01739143233', 'MD. Ohidur Rahman', 'JoliAkter', 'Cornarandia,Alfadangga,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 05:21:44'),
('localhost', 266, '1697464902151', 2023, 'Six', 'C', 'MD. Rabbi', 276967, 6, 'XXXXXXXXXX', '2012-11-11', 'Male', 'undefined', '276967@abc.com', '', '01724196515', 'MD. Ikbal Hosen', 'Lakisultana', 'Kamargram,Alfadangga,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 05:26:21'),
('localhost', 267, '1697438564785', 2023, 'Six', 'C', 'MD. Mehedi Hasan', 573611, 7, 'XXXXXXXXXX', '2011-02-01', 'Male', 'undefined', '573611@abc.com', '', '01887677354', 'Islam Mollah', 'Rojina', 'AmGram,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 05:30:17'),
('localhost', 268, '1697382438813', 2023, 'Six', 'B', 'MD Baiyat Islam Nil', 604599, 10, 'XXXXXXXXXX', '2013-01-17', 'Male', 'undefined', '604599@abc.com', '', '01713618463', 'Rakibul Islam Turan', 'Sharmin Khanom', 'Dakkhin Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-06 04:20:37'),
('localhost', 269, '1697266369681', 2023, 'Six', 'B', 'Habibur Molla', 200173, 12, 'XXXXXXXXXX', '2007-05-17', 'Male', 'undefined', '200173@abc.com', '', '01920673730', 'MD Lutfar Molla', 'Mst Bilkis Begum', 'Baguan, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-06 04:22:51'),
('localhost', 270, '1697682586109', 2023, 'Six', 'B', 'MD Ruhul Amin', 191161, 14, 'XXXXXXXXXX', '2011-09-28', 'Male', 'undefined', '191161@abc.com', '', '01613295870', 'MD Robiul Molla', 'Mst Rina Aktar', 'Thakurpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-06 04:24:49'),
('localhost', 271, '1697038434906', 2023, 'Six', 'B', 'Rifat Sheikh', 128886, 16, 'XXXXXXXXXX', '2011-01-15', 'Male', 'undefined', '128886@abc.com', '', '01994093762', 'Farid Sheikh', 'Mst Sabina Aktar', 'Kolaron, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-06 04:27:12'),
('localhost', 272, '1697223614075', 2023, 'Six', 'B', 'Abdullah', 639545, 18, 'XXXXXXXXXX', '2010-07-14', 'Male', 'undefined', '639545@abc.com', '', '0919878609', 'Nur Islam', 'Sahina Begum', 'Kolaron, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-06 04:30:38'),
('localhost', 273, '1697258165276', 2023, 'Six', 'B', 'Arijit Saha', 352741, 20, 'XXXXXXXXXX', '2012-06-24', 'Male', 'undefined', '352741@abc.com', '', '01715342157', 'Ganesh Chandra Saha', 'Tusi Saha', 'Boronagar, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-06 04:34:37'),
('localhost', 274, '1697629193617', 2023, 'Six', 'B', 'Akash Roy', 480853, 22, 'XXXXXXXXXX', '2012-02-08', 'Male', 'undefined', '480853@abc.com', '', '01750075990', 'Prashanta Kumar Roy', 'Lipa Roy', 'Baguan, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-06 04:36:21'),
('localhost', 275, '1697027270693', 2023, 'Six', 'B', 'MD Sakib Al Mahmud', 329718, 24, 'XXXXXXXXXX', '2012-12-31', 'Male', 'undefined', '329718@abc.com', '', '01918155004', 'MD Tuku Mia', 'Mst Fatema Aktar', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-06 04:39:06'),
('localhost', 276, '1697390470880', 2023, 'Six', 'B', 'Sabid Talukdar', 476690, 26, 'XXXXXXXXXX', '2012-02-14', 'Male', 'undefined', '476690@abc.com', '', '01722235502', 'MD Moklechur Rahman', 'Mst Korna Parvin', 'Adharkotha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-06 04:42:28'),
('localhost', 277, '1697842797634', 2023, 'Six', 'B', 'MD Rezwan Islam', 741155, 28, 'XXXXXXXXXX', '2011-11-03', 'Male', 'undefined', '741155@abc.com', '', '01734011406', 'MD Sohel Rana Mukul', 'Mst Nasima Parvin', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-06 04:46:30'),
('localhost', 278, '1696953883840', 2023, 'Six', 'B', 'Mynul Islam', 32838, 30, 'XXXXXXXXXX', '2011-08-20', 'Male', 'undefined', '32838@abc.com', '', '01312702326', 'Abul Hasan Roni', 'Mst Nazma Begum', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-06 04:51:30'),
('localhost', 279, '1697383761908', 2023, 'Six', 'B', 'MD Wahid ', 187143, 32, 'XXXXXXXXXX', '2011-09-06', 'Male', 'undefined', '187143@abc.com', '', '01735805478', 'MD Abdul Halim SHeikh', 'Sultana Begum', 'Chalinagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-06 04:53:06'),
('localhost', 280, '1697383093018', 2023, 'Six', 'B', 'Tamim Molla', 592972, 34, 'XXXXXXXXXX', '2010-01-05', 'Male', 'undefined', '592972@abc.com', '', '01811568615', 'Palash Molla', 'Taslima Begum', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-06 04:56:00'),
('localhost', 281, '1697716593291', 2023, 'Six', 'C', 'Navanil Mukharjee', 800134, 8, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '800134@abc.com', '', '01710586440', 'Nikhil Mukharrji', 'Roma Roy', 'HarihorNagar ,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 14:24:26'),
('localhost', 282, '1697185682636', 2023, 'Six', 'C', 'Kh.Mani Mukharjee', 818707, 9, 'XXXXXXXXXX', '2012-06-20', 'Female', 'undefined', '818707@abc.com', '', '00000000000', 'Kh.Abu Morsalin ', 'Aktari Jahan', 'Uttar Shibpur ,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 14:31:18'),
('localhost', 283, '1697171848421', 2023, 'Six', 'C', 'MD. Najmul', 132652, 10, 'XXXXXXXXXX', '2011-12-22', 'Male', 'undefined', '132652@abc.com', '', '0186741962', 'Najir Hosen', 'Mst.Khadija Sultana', 'Omrrita Nagar,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 15:06:05'),
('localhost', 284, '1697364745747', 2023, 'Six', 'C', 'Savan Kundu', 259710, 11, 'XXXXXXXXXX', '2011-07-16', 'Male', 'undefined', '259710@abc.com', '', '01714884070', 'Samal Kundu', 'Jhunu Kundu', 'RamNagar,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 15:16:45'),
('localhost', 285, '1697180344412', 2023, 'Six', 'C', 'MD.Mijan', 170927, 12, 'XXXXXXXXXX', '2009-11-07', 'Male', 'undefined', '170927@abc.com', '', '01925963697', 'MD.Habibur Rahran', 'Homneyara', 'Gunbaha,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 15:20:39'),
('localhost', 286, '1697480085764', 2023, 'Six', 'C', 'MD. Anjis Ur Rahman', 248331, 13, 'XXXXXXXXXX', '2012-07-19', 'Male', 'undefined', '248331@abc.com', '', '01796203456', 'MD.Monirul Jaman', 'Shamima Khandakar', 'Alfadangya,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 15:25:42'),
('localhost', 287, '1697717084669', 2023, 'Six', 'C', 'Md.Niyamul Hasan Parash', 157978, 14, 'XXXXXXXXXX', '2012-08-21', 'Male', 'undefined', '157978@abc.com', '', '01713548296', 'MD.Mannu Shaike', 'Sakina Khanam', 'AmGram,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 15:35:21'),
('localhost', 288, '1697666054428', 2023, 'Six', 'C', 'MD.Al Noman Khan', 288079, 15, 'XXXXXXXXXX', '2012-01-05', 'Male', 'undefined', '288079@abc.com', '', '01723146891', 'MD. Babu Khan', 'Nasrin Aktar', 'ShibGram,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 15:44:38'),
('localhost', 289, '1697236586070', 2023, 'Six', 'C', 'Apan Saha', 854861, 16, 'XXXXXXXXXX', '2012-10-19', 'Male', 'undefined', '854861@abc.com', '', '01710941024', 'Opurba Kumar Saha', 'Onjona Saha', 'AmNagar,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 15:49:45'),
('localhost', 290, '1697808371141', 2023, 'Six', 'C', 'MD.Fahim Molla ', 201667, 17, 'XXXXXXXXXX', '2012-11-01', 'Male', 'undefined', '201667@abc.com', '', '01959526543', 'MD.Maruf ', 'Mst.Dipali Begum', 'Solna,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 15:56:16'),
('localhost', 291, '1697125298033', 2023, 'Six', 'C', 'Shahriya Mafis Riday', 116111, 18, 'XXXXXXXXXX', '2012-06-18', 'Male', 'undefined', '116111@abc.com', '', '01930962841', 'MD.Shah Alam', 'Mst.Sabina Begum', 'RayPur,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 16:01:50'),
('localhost', 292, '1697389789713', 2023, 'Six', 'C', 'Abir Hasnat', 563498, 19, 'XXXXXXXXXX', '2011-07-16', 'Male', 'undefined', '563498@abc.com', '', '01747648400', 'MD.Amin biswas', 'Farjana', 'Solna,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 17:00:35'),
('localhost', 293, '1697472018745', 2023, 'Six', 'C', 'MD.Tasin Rahaman cad', 202448, 20, 'XXXXXXXXXX', '2012-06-09', 'Male', 'undefined', '202448@abc.com', '', '01722689116', 'MD.Sobur Khan', 'Mst.Reshma Parvin', 'FelanNagar,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 17:05:54'),
('localhost', 294, '1697176640993', 2023, 'Six', 'C', 'Mahin Mir', 807554, 21, 'XXXXXXXXXX', '2012-12-12', 'Male', 'undefined', '807554@abc.com', '', '01733146330', 'MD. Milan Mir', 'Mst. Rafeja Begum', 'Amgram,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 17:18:28'),
('localhost', 295, '1697108937243', 2023, 'Six', 'C', 'MD. Fajale Rabbi', 791363, 22, 'XXXXXXXXXX', '2010-01-31', 'Male', 'undefined', '791363@abc.com', '', '01716881330', 'MD.Milan Sheikh ', 'Jhorna Begum', 'Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 17:25:10'),
('localhost', 296, '1697346908957', 2023, 'Six', 'C', 'MD. Talha Ahmed', 761936, 23, 'XXXXXXXXXX', '2012-05-06', 'Male', 'undefined', '761936@abc.com', '', '01921669753', 'MD. Bulbul Ahmed', 'Resma Begum', 'Amgram,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 17:31:19'),
('localhost', 297, '1697292208751', 2023, 'Six', 'C', 'Shuvra Dash', 69941, 24, 'XXXXXXXXXX', '2019-10-21', 'Male', 'undefined', '69941@abc.com', '', '01782982401', 'Bijoy Dash', 'Mitali Dash', 'Kalaran,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 17:37:25'),
('localhost', 298, '1697585530666', 2023, 'Six', 'C', 'Junayet Islam', 701819, 25, 'XXXXXXXXXX', '2013-02-11', 'Male', 'undefined', '701819@abc.com', '', '01731307056', 'MD. Montu Molla', 'Jahanara Begum', 'Muktapur,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 17:42:01'),
('localhost', 299, '1697340545858', 2023, 'Six', 'C', 'Sudipto Loskor', 125241, 26, 'XXXXXXXXXX', '2012-07-09', 'Male', 'undefined', '125241@abc.com', '', '01978700526', 'Sumir Kumar Loskor', 'Shilpi Saha', 'Kamargram,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 17:45:54'),
('localhost', 300, '1697672302214', 2023, 'Six', 'C', 'Nayon Biswas', 498821, 27, 'XXXXXXXXXX', '2012-05-20', 'Male', 'undefined', '498821@abc.com', '', '01724249050', 'Zoges condro biswas', 'Sujata Rani Datto ', 'Cor Padmobila,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 17:52:51');
INSERT INTO `students` (`domain`, `ID`, `student_uuid`, `session`, `class`, `section`, `name`, `student_id`, `roll`, `reg`, `birth_date`, `gender`, `blood_group`, `email`, `phone`, `telephone`, `father_name`, `mother_name`, `address`, `religion`, `admission_date`, `hobbies`, `avatar`, `fb_link`, `password`, `quote`, `at_date`) VALUES
('localhost', 302, '1697574970318', 2023, 'Six', 'C', 'MD. Musa Biswas ', 267221, 28, 'XXXXXXXXXX', '2008-10-29', 'Male', 'undefined', '267221@abc.com', '', '01910299619', 'Amiriuddin Biswas', 'MRS.Sahida Begum ', 'Sotashi,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 18:01:05'),
('localhost', 303, '1697761304508', 2023, 'Six', 'C', 'Pranjit Biswas', 855841, 29, 'XXXXXXXXXX', '2010-05-16', 'Male', 'undefined', '855841@abc.com', '', '01728336387', 'Nripen Kumar Biswas', 'Pobonna Rani Biswas', 'Sotashi,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 18:04:27'),
('localhost', 304, '1697441303910', 2023, 'Six', 'C', 'MD. Rmim Molla', 693522, 30, 'XXXXXXXXXX', '2010-12-21', 'Male', 'undefined', '693522@abc.com', '', '01866769198', 'MD.Robiul Islam Molla', 'Mst. Taslima Begum', 'Tonarcor ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 02:01:16'),
('localhost', 305, '1697603948770', 2023, 'Six', 'C', 'MD. Mehedi Molla', 21656, 31, 'XXXXXXXXXX', '2012-02-02', 'Male', 'undefined', '21656@abc.com', '', '01708779973', 'MD. Milton Molla', 'Asma Begum', 'Kushadanga ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 02:03:24'),
('localhost', 306, '1697816004852', 2023, 'Six', 'C', 'Rifat Haq', 860429, 32, 'XXXXXXXXXX', '2012-02-26', 'Male', 'undefined', '860429@abc.com', '', '01933839299', 'Nayon ', 'Seli Akter', 'Raypur ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 02:05:47'),
('localhost', 307, '1697483474135', 2023, 'Six', 'C', 'MD. Hosain Miah', 348620, 33, 'XXXXXXXXXX', '2009-01-05', 'Male', 'undefined', '348620@abc.com', '', '01955207915', 'Abul Hasan', 'Mst. Sajeda akter', 'U.Cornarandia ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 02:07:49'),
('localhost', 308, '1697215086970', 2023, 'Six', 'C', 'MD. Jannatul Ferdous Molla', 456901, 34, 'XXXXXXXXXX', '2011-06-12', 'Male', 'undefined', '456901@abc.com', '', '01932398157', 'MD. Shwkat Molla', 'Jabeda Begum', 'HariharNagar ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 02:11:47'),
('localhost', 309, '1697822703445', 2023, 'Six', 'C', 'Rothi Gayali', 357876, 35, 'XXXXXXXXXX', '2011-12-16', 'Male', 'undefined', '357876@abc.com', '', '01866285000', 'Rabin Gyali', 'Sucutra Rani Gyali', 'Kamargram ,Boalmari ,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 02:16:02'),
('localhost', 310, '1697412512043', 2023, 'Six', 'C', 'Sajib Sheikh', 212629, 36, 'XXXXXXXXXX', '2010-10-02', 'Male', 'undefined', '212629@abc.com', '', '01736786420', 'MD. Juyel Sheikh', 'Kakoli Parvin', 'Amgram ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 02:19:03'),
('localhost', 311, '1697779622386', 2023, 'Six', 'C', 'Ovijeet paul', 779912, 37, 'XXXXXXXXXX', '2012-01-12', 'Male', 'undefined', '779912@abc.com', '', '01739971623', 'Ananda Kumar Paul', 'Sabita Pal', 'Myna ,Boalmari ,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 02:23:31'),
('localhost', 312, '1697848426838', 2023, 'Six', 'C', 'MD.Ruhul Amin', 135245, 38, 'XXXXXXXXXX', '2012-11-17', 'Male', 'undefined', '135245@abc.com', '', '01934955820', 'MD. Nojrul Molla', 'MD.Beauty Parvin', 'KamarGram ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 02:28:01'),
('localhost', 313, '1697467565274', 2023, 'Six', 'C', 'Sparsha Mandal', 616172, 39, 'XXXXXXXXXX', '2011-09-20', 'Male', 'undefined', '616172@abc.com', '', '0178908462', 'Parimal Mandal', 'Bandana Mandal', 'Purba Kamargram ,Boalmari ,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 02:32:41'),
('localhost', 314, '1697548432405', 2023, 'Six', 'C', 'Abir Kanti Poul', 676414, 40, 'XXXXXXXXXX', '2011-02-28', 'Male', 'undefined', '676414@abc.com', '', '01818287041', 'Mihir Kanti Pal', 'Sumitra Rani Pal', 'Fatepur ,Boalmari ,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 02:36:31'),
('localhost', 315, '1697222369739', 2023, 'Six', 'C', 'Ruhan', 701251, 41, 'XXXXXXXXXX', '2017-04-23', 'Male', 'undefined', '701251@abc.com', '', '01915906896', 'MD. Ersad Sheik', 'Mst. Lota Begum', 'Sotashi ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 02:39:47'),
('localhost', 316, '1697019890262', 2023, 'Six', 'C', 'MD. Abdullah Al Mamun', 788481, 42, 'XXXXXXXXXX', '2012-01-25', 'Male', 'undefined', '788481@abc.com', '', '01921396747', 'MD.Selim Sheik', 'Mst. Parvin Begum', 'Sotashi ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 02:43:12'),
('localhost', 317, '1697440793861', 2023, 'Six', 'C', 'Sohel Rana', 664031, 43, 'XXXXXXXXXX', '2009-05-01', 'Male', 'undefined', '664031@abc.com', '', '01983053376', 'MD. Robiul Sheikh', 'Mst. Salma Begum', 'Raypur ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 02:55:53'),
('localhost', 318, '1697079024365', 2023, 'Six', 'C', 'MD. Johan Sheik', 750218, 44, 'XXXXXXXXXX', '2011-09-08', 'Male', 'undefined', '750218@abc.com', '', '01871714421', 'MD. Ruku Sheikh', 'Mst.Rehena Begum', 'Calinagar ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 03:00:55'),
('localhost', 319, '1697771006559', 2023, 'Six', 'C', 'Simanta Mukar Bouda', 376905, 45, 'XXXXXXXXXX', '2012-08-27', 'Male', 'undefined', '376905@abc.com', '', '01951910741', 'Mnoj Kumar Bouda', 'Shamali Rani Sorkar', 'Shekhar ,Boalmari ,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 03:04:31'),
('localhost', 320, '1697008457284', 2023, 'Six', 'C', 'Abdur rahaman sheikh', 186141, 46, 'XXXXXXXXXX', '2010-12-23', 'Male', 'undefined', '186141@abc.com', '', '01983054347', 'Iliyas Sheikh', 'Mst.Runu  Begum', 'Kamaldia,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 07:26:52'),
('localhost', 321, '1697594303279', 2023, 'Six', 'C', 'Prottoy Saha', 555817, 47, 'XXXXXXXXXX', '2011-05-28', 'Male', 'undefined', '555817@abc.com', '', '01716748870', 'PongkajKumar Saha', 'Banalata Saha ', 'Shola Hati,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 07:33:03'),
('localhost', 322, '1697394481339', 2023, 'Six', 'C', 'MD. Mostafa Kamal', 292340, 48, 'XXXXXXXXXX', '2012-12-24', 'Male', 'undefined', '292340@abc.com', '', '01942507602', 'MD. Sobuj Molla', 'Mst.Smpa Khanam', 'loknath,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 07:36:29'),
('localhost', 323, '1697791412043', 2023, 'Six', 'C', 'Kisar Sarkar', 244670, 49, 'XXXXXXXXXX', '2011-11-09', 'Male', 'undefined', '244670@abc.com', '', '01754978330', 'Raj Kumar Sarkar', 'Puja Sarkar', 'loknath,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 07:38:45'),
('localhost', 324, '1697175063228', 2023, 'Six', 'C', 'Sheikh Sanbir Rahaman Tanay', 807513, 50, 'XXXXXXXXXX', '2012-11-27', 'Male', 'undefined', '807513@abc.com', '', '01712558002', 'Munjor Rahaman Tushar', 'Shefali Begum', 'Dadpur,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 07:44:09'),
('localhost', 325, '1697360316113', 2023, 'Six', 'C', 'MD. Najmul', 368724, 51, 'XXXXXXXXXX', '2010-12-22', 'Male', 'undefined', '368724@abc.com', '', '01867416962', 'MD.Najir Hosen', 'Mst.Khadija Sultana', 'Omrrita Nagar, Boa;mari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-15 12:46:54'),
('localhost', 326, '1697320279263', 2023, 'Six', 'C', 'Tousif Ahmad', 351781, 52, 'XXXXXXXXXX', '2012-02-10', 'Male', 'undefined', '351781@abc.com', '', '01713548245', 'MD.Sanu Molla', 'Taniya Sultana', 'Shukhdev Nagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-15 12:55:40'),
('localhost', 327, '1697819994710', 2023, 'Six', 'C', 'Tarmi Dash', 697344, 53, 'XXXXXXXXXX', '2012-04-29', 'Male', 'undefined', '697344@abc.com', '', '0171953985', 'Tpom Kumar Dash', 'Tiloka Rani Kar', 'Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-15 13:21:40'),
('localhost', 328, '1697088642658', 2023, 'Six', 'C', 'MD.Iyasin Sheikh', 395009, 54, 'XXXXXXXXXX', '2012-10-02', 'Male', 'undefined', '395009@abc.com', '', '01732771778', 'MD.Mijanur Rahman', 'Mst.Dipali Begom', 'Reni Nagar,Cad Ghat,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-15 13:26:05'),
('localhost', 329, '1697070639910', 2023, 'Six', 'C', 'Mirza Mayaz Hosen', 640419, 55, 'XXXXXXXXXX', '2012-07-04', 'Male', 'undefined', '640419@abc.com', '', '01718163517', 'Mirza Mahsin Hosen ', 'MRS. Shahanaz Parvin ', 'Purbo Kamargram, Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-15 16:15:25'),
('localhost', 330, '1697075259766', 2023, 'Six', 'C', 'Farhan ', 884190, 56, 'XXXXXXXXXX', '2012-03-04', 'Male', 'undefined', '884190@abc.com', '', '01768027853', 'Alif Nayon ', 'Fatema Sarkar  ', 'Zogibarat Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-15 16:24:08'),
('localhost', 380, '1697366483862', 2023, 'Seven', 'C', 'Aronnyo Joyti Paul', 808156, 1, 'XXXXXXXXXX', '', 'Male', 'N/A', '808156@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 09:57:21'),
('localhost', 381, '1697381436718', 2023, 'Seven', 'C', 'Nithor Mondol', 45838, 2, 'XXXXXXXXXX', '', 'Male', 'N/A', '45838@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 09:57:21'),
('localhost', 382, '1696965412675', 2023, 'Seven', 'C', 'Md. Sahariar Alom', 619791, 3, 'XXXXXXXXXX', '', 'Male', 'N/A', '619791@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 09:57:21'),
('localhost', 383, '1697467767130', 2023, 'Seven', 'C', 'H. M. Moaj', 19436, 4, 'XXXXXXXXXX', '', 'Male', 'N/A', '19436@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 09:57:21'),
('localhost', 384, '1697765135658', 2023, 'Seven', 'C', 'Tanjim', 781607, 5, 'XXXXXXXXXX', '', 'Male', 'N/A', '781607@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 09:57:21'),
('localhost', 385, '1697173903485', 2023, 'Seven', 'C', 'Tahmid Twha', 283175, 6, 'XXXXXXXXXX', '', 'Male', 'N/A', '283175@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 09:57:21'),
('localhost', 386, '1697498879819', 2023, 'Seven', 'C', 'Redoan Reza', 63198, 7, 'XXXXXXXXXX', '', 'Male', 'N/A', '63198@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 09:57:21'),
('localhost', 387, '1697428010077', 2023, 'Seven', 'C', 'Riad Sheikh', 120954, 8, 'XXXXXXXXXX', '', 'Male', 'N/A', '120954@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 09:57:21'),
('localhost', 388, '1697588224569', 2023, 'Seven', 'C', 'Taohid Taj', 620944, 9, 'XXXXXXXXXX', '', 'Male', 'N/A', '620944@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 09:57:21'),
('localhost', 389, '1697030921138', 2023, 'Seven', 'C', 'Tritha Achayara', 440639, 10, 'XXXXXXXXXX', '', 'Male', 'N/A', '440639@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 09:57:21'),
('localhost', 390, '1697681067927', 2023, 'Seven', 'C', 'Arif', 22959, 11, 'XXXXXXXXXX', '', 'Male', 'N/A', '22959@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 09:57:21'),
('localhost', 391, '1697166541223', 2023, 'Seven', 'C', 'Snigdhajit Paul', 16733, 12, 'XXXXXXXXXX', '', 'Male', 'N/A', '16733@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 392, '1697686281262', 2023, 'Seven', 'C', 'Md. Umayer', 307904, 13, 'XXXXXXXXXX', '', 'Male', 'N/A', '307904@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 393, '1697794127616', 2023, 'Seven', 'C', 'Md. Saimun', 683291, 14, 'XXXXXXXXXX', '', 'Male', 'N/A', '683291@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 394, '1696965444552', 2023, 'Seven', 'C', 'Ishan', 319971, 15, 'XXXXXXXXXX', '', 'Male', 'N/A', '319971@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 395, '1696953326955', 2023, 'Seven', 'C', 'Argha Kundu', 609652, 16, 'XXXXXXXXXX', '', 'Male', 'N/A', '609652@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 396, '1697775573790', 2023, 'Seven', 'C', 'Shuvo Paul', 486416, 17, 'XXXXXXXXXX', '', 'Male', 'N/A', '486416@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 397, '1697277303232', 2023, 'Seven', 'C', 'Nurshad Alif', 66872, 18, 'XXXXXXXXXX', '', 'Male', 'N/A', '66872@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 398, '1697640347918', 2023, 'Seven', 'C', 'Yuboraj Shil', 297946, 19, 'XXXXXXXXXX', '', 'Male', 'N/A', '297946@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 399, '1697424612447', 2023, 'Seven', 'C', 'Zobayer', 126687, 20, 'XXXXXXXXXX', '', 'Male', 'N/A', '126687@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 400, '1696957383247', 2023, 'Seven', 'C', 'Nil Saha', 166780, 21, 'XXXXXXXXXX', '', 'Male', 'N/A', '166780@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 401, '1697375409383', 2023, 'Seven', 'C', 'Abhijit Shil', 331850, 22, 'XXXXXXXXXX', '', 'Male', 'N/A', '331850@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 402, '1697127053562', 2023, 'Seven', 'C', 'Md. Rifat', 172491, 23, 'XXXXXXXXXX', '', 'Male', 'N/A', '172491@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 403, '1697017738637', 2023, 'Seven', 'C', 'Md. Arafat', 224744, 24, 'XXXXXXXXXX', '', 'Male', 'N/A', '224744@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 404, '1697298182893', 2023, 'Seven', 'C', 'Salman Rahman', 774769, 25, 'XXXXXXXXXX', '', 'Male', 'N/A', '774769@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 405, '1697587216933', 2023, 'Seven', 'C', 'Yasin', 815015, 26, 'XXXXXXXXXX', '', 'Male', 'N/A', '815015@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 406, '1697297152115', 2023, 'Seven', 'C', 'Amit Karmakar', 886218, 27, 'XXXXXXXXXX', '', 'Male', 'N/A', '886218@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 407, '1697574417391', 2023, 'Seven', 'C', 'Rafi', 514661, 28, 'XXXXXXXXXX', '', 'Male', 'N/A', '514661@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 408, '1697477932098', 2023, 'Seven', 'C', 'Shah Sultal', 690763, 29, 'XXXXXXXXXX', '', 'Male', 'N/A', '690763@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 409, '1697252372500', 2023, 'Seven', 'C', 'Mishkat', 44409, 30, 'XXXXXXXXXX', '', 'Male', 'N/A', '44409@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 410, '1697608697748', 2023, 'Seven', 'C', 'Khalidul', 131739, 31, 'XXXXXXXXXX', '', 'Male', 'N/A', '131739@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 411, '1697841167655', 2023, 'Seven', 'C', 'Rudra', 8335, 32, 'XXXXXXXXXX', '', 'Male', 'N/A', '8335@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 412, '1697134662148', 2023, 'Seven', 'C', 'Abu Huraira', 67197, 33, 'XXXXXXXXXX', '', 'Male', 'N/A', '67197@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 413, '1697555970016', 2023, 'Seven', 'C', 'Munna', 133489, 34, 'XXXXXXXXXX', '', 'Male', 'N/A', '133489@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 414, '1697054195456', 2023, 'Seven', 'C', 'Riaz', 75349, 35, 'XXXXXXXXXX', '', 'Male', 'N/A', '75349@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 415, '1697681359746', 2023, 'Seven', 'C', 'Samir', 391505, 36, 'XXXXXXXXXX', '', 'Male', 'N/A', '391505@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 416, '1697412882522', 2023, 'Seven', 'C', 'Siyam', 60077, 37, 'XXXXXXXXXX', '', 'Male', 'N/A', '60077@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 417, '1697284748865', 2023, 'Seven', 'C', 'Dipon Molla', 436231, 38, 'XXXXXXXXXX', '', 'Male', 'N/A', '436231@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 418, '1697200715424', 2023, 'Seven', 'C', 'Tahidul', 658945, 39, 'XXXXXXXXXX', '', 'Male', 'N/A', '658945@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 419, '1697054865526', 2023, 'Seven', 'C', 'Samiul', 557258, 40, 'XXXXXXXXXX', '', 'Male', 'N/A', '557258@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 420, '1696966673242', 2023, 'Seven', 'C', 'Rahdur Rahman', 359245, 41, 'XXXXXXXXXX', '', 'Male', 'N/A', '359245@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 421, '1697510792403', 2023, 'Seven', 'C', 'Tamim', 585472, 42, 'XXXXXXXXXX', '', 'Male', 'N/A', '585472@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 422, '1697210484266', 2023, 'Seven', 'C', 'Nur Nabi', 330297, 43, 'XXXXXXXXXX', '', 'Male', 'N/A', '330297@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 423, '1697742024535', 2023, 'Seven', 'C', 'Maruf', 342426, 44, 'XXXXXXXXXX', '', 'Male', 'N/A', '342426@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 424, '1697702793933', 2023, 'Seven', 'C', 'Soad', 549189, 45, 'XXXXXXXXXX', '', 'Male', 'N/A', '549189@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 425, '1697151749387', 2023, 'Seven', 'C', 'Sahriar', 200138, 46, 'XXXXXXXXXX', '', 'Male', 'N/A', '200138@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 426, '1697426738719', 2023, 'Seven', 'C', 'Robbani', 712791, 47, 'XXXXXXXXXX', '', 'Male', 'N/A', '712791@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 427, '1697516374889', 2023, 'Seven', 'C', 'Rizvi', 198057, 48, 'XXXXXXXXXX', '', 'Male', 'N/A', '198057@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 428, '1697554368643', 2023, 'Seven', 'C', 'Naim', 580565, 49, 'XXXXXXXXXX', '', 'Male', 'N/A', '580565@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 429, '1697790836950', 2023, 'Seven', 'C', 'Utshab Biswas', 144998, 50, 'XXXXXXXXXX', '', 'Male', 'N/A', '144998@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 430, '1697783300779', 2023, 'Seven', 'C', 'Md. Mehedi', 368003, 51, 'XXXXXXXXXX', '', 'Male', 'N/A', '368003@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 431, '1696964890395', 2023, 'Seven', 'C', 'Duranta', 496506, 52, 'XXXXXXXXXX', '', 'Male', 'N/A', '496506@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 432, '1697024701399', 2023, 'Seven', 'C', 'Rana', 721711, 53, 'XXXXXXXXXX', '', 'Male', 'N/A', '721711@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 433, '1697809929558', 2023, 'Seven', 'C', 'Rezoan', 116213, 54, 'XXXXXXXXXX', '', 'Male', 'N/A', '116213@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 434, '1697365861929', 2023, 'Seven', 'C', 'Arifuzzaman', 447532, 55, 'XXXXXXXXXX', '', 'Male', 'N/A', '447532@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 435, '1697456811612', 2023, 'Seven', 'C', 'Md. Sourav Biswas', 709529, 56, 'XXXXXXXXXX', '', 'Male', 'N/A', '709529@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 436, '1697356239343', 2023, 'Seven', 'C', 'Sakibul', 363324, 57, 'XXXXXXXXXX', '', 'Male', 'N/A', '363324@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 437, '1697306461400', 2023, 'Seven', 'C', 'Biswas Sarkar', 133324, 58, 'XXXXXXXXXX', '', 'Male', 'N/A', '133324@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 438, '1697030637131', 2023, 'Seven', 'C', 'Baijit Sheikh', 44112, 59, 'XXXXXXXXXX', '', 'Male', 'N/A', '44112@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 439, '1697654335562', 2023, 'Seven', 'C', 'Fahim Molla', 746216, 60, 'XXXXXXXXXX', '', 'Male', 'N/A', '746216@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 440, '1697752230773', 2023, 'Seven', 'C', 'Aditya Rajbongshi', 99611, 61, 'XXXXXXXXXX', '', 'Male', 'N/A', '99611@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 441, '1697335216475', 2023, 'Seven', 'C', 'Md. Moksedul ', 506337, 62, 'XXXXXXXXXX', '', 'Male', 'N/A', '506337@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 442, '1697158820081', 2023, 'Seven', 'C', 'Rifat', 170996, 63, 'XXXXXXXXXX', '', 'Male', 'N/A', '170996@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 443, '1697416672971', 2023, 'Seven', 'C', 'Partha Paul', 314747, 64, 'XXXXXXXXXX', '', 'Male', 'N/A', '314747@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 444, '1697818827883', 2023, 'Seven', 'C', 'Zaed Hossen', 412538, 65, 'XXXXXXXXXX', '', 'Male', 'N/A', '412538@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 445, '1697846386644', 2023, 'Seven', 'C', 'Badhan Rajbongshi', 530642, 66, 'XXXXXXXXXX', '', 'Male', 'N/A', '530642@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 446, '1697593885547', 2023, 'Seven', 'C', 'Tamim', 517054, 67, 'XXXXXXXXXX', '', 'Male', 'N/A', '517054@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 447, '1697805781452', 2023, 'Seven', 'C', 'Rofiqul', 622017, 68, 'XXXXXXXXXX', '', 'Male', 'N/A', '622017@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 448, '1697772916876', 2023, 'Seven', 'C', 'Soron Sarkar', 885383, 69, 'XXXXXXXXXX', '', 'Male', 'N/A', '885383@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 449, '1697182189810', 2023, 'Seven', 'C', 'Raihan Sheikh', 663490, 70, 'XXXXXXXXXX', '', 'Male', 'N/A', '663490@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 450, '1697823413820', 2023, 'Seven', 'C', 'Hanif Molla', 54137, 71, 'XXXXXXXXXX', '', 'Male', 'N/A', '54137@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 451, '1697572285964', 2023, 'Seven', 'C', 'Partha Mojumder', 397675, 72, 'XXXXXXXXXX', '', 'Male', 'N/A', '397675@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 452, '1697431360311', 2023, 'Seven', 'C', 'Amir Hamja', 74736, 73, 'XXXXXXXXXX', '', 'Male', 'N/A', '74736@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 453, '1697841054543', 2023, 'Seven', 'C', 'Abdullah', 813754, 74, 'XXXXXXXXXX', '', 'Male', 'N/A', '813754@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 454, '1697597338628', 2023, 'Seven', 'C', 'Samiul', 586256, 75, 'XXXXXXXXXX', '', 'Male', 'N/A', '586256@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 455, '1697598429342', 2023, 'Seven', 'C', 'Rifat', 507205, 76, 'XXXXXXXXXX', '', 'Male', 'N/A', '507205@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 456, '1697133653612', 2023, 'Seven', 'C', 'Saiful', 447986, 77, 'XXXXXXXXXX', '', 'Male', 'N/A', '447986@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 457, '1697243230612', 2023, 'Seven', 'C', 'Hasib', 129825, 78, 'XXXXXXXXXX', '', 'Male', 'N/A', '129825@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 458, '1697681261399', 2023, 'Seven', 'C', 'Tanzin', 382193, 79, 'XXXXXXXXXX', '', 'Male', 'N/A', '382193@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 459, '1697503672705', 2023, 'Seven', 'C', 'Samiul', 578929, 80, 'XXXXXXXXXX', '', 'Male', 'N/A', '578929@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 460, '1697783892898', 2023, 'Seven', 'C', 'Noyon', 311674, 81, 'XXXXXXXXXX', '', 'Male', 'N/A', '311674@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 461, '1697113121642', 2023, 'Seven', 'C', 'Partha Saha', 147923, 82, 'XXXXXXXXXX', '', 'Male', 'N/A', '147923@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 462, '1697756931175', 2023, 'Seven', 'C', 'Sakibul', 134792, 83, 'XXXXXXXXXX', '', 'Male', 'N/A', '134792@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 463, '1697509474668', 2023, 'Seven', 'C', 'Rezoan', 364342, 84, 'XXXXXXXXXX', '', 'Male', 'N/A', '364342@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 464, '1697665055686', 2023, 'Seven', 'C', 'Masum', 359010, 85, 'XXXXXXXXXX', '', 'Male', 'N/A', '359010@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 465, '1697285420418', 2023, 'Seven', 'C', 'Sajim', 225728, 86, 'XXXXXXXXXX', '', 'Male', 'N/A', '225728@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 466, '1697774535516', 2023, 'Seven', 'C', 'Mustakim', 114087, 87, 'XXXXXXXXXX', '', 'Male', 'N/A', '114087@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 467, '1697746520042', 2023, 'Seven', 'C', 'Sahriya', 1135, 88, 'XXXXXXXXXX', '', 'Male', 'N/A', '1135@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 468, '1697195906193', 2023, 'Seven', 'C', 'Simanata Sarkar', 627743, 89, 'XXXXXXXXXX', '', 'Male', 'N/A', '627743@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 469, '1696972235853', 2023, 'Seven', 'C', 'Piyal', 809183, 90, 'XXXXXXXXXX', '', 'Male', 'N/A', '809183@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 470, '1697681545698', 2023, 'Seven', 'C', 'Sakil', 67463, 91, 'XXXXXXXXXX', '', 'Male', 'N/A', '67463@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 471, '1697720128790', 2023, 'Seven', 'C', 'Souvik', 538010, 92, 'XXXXXXXXXX', '', 'Male', 'N/A', '538010@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 472, '1697482774273', 2023, 'Seven', 'C', 'Taj', 169645, 93, 'XXXXXXXXXX', '', 'Male', 'N/A', '169645@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 473, '1697483729485', 2023, 'Seven', 'C', 'Soyad', 274233, 94, 'XXXXXXXXXX', '', 'Male', 'N/A', '274233@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 474, '1697436571068', 2023, 'Seven', 'C', 'Simanta Kumar', 628666, 95, 'XXXXXXXXXX', '', 'Male', 'N/A', '628666@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 475, '1697013818930', 2023, 'Seven', 'C', 'Bini Amin', 530518, 96, 'XXXXXXXXXX', '', 'Male', 'N/A', '530518@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 476, '1697468419567', 2023, 'Seven', 'C', 'Mahmud', 867758, 97, 'XXXXXXXXXX', '', 'Male', 'N/A', '867758@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 477, '1697280898162', 2023, 'Seven', 'C', 'Safat', 392714, 98, 'XXXXXXXXXX', '', 'Male', 'N/A', '392714@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 478, '1697198323425', 2023, 'Seven', 'C', 'Rumin', 845355, 99, 'XXXXXXXXXX', '', 'Male', 'N/A', '845355@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 479, '1697226816081', 2023, 'Seven', 'C', 'Supta Benarjee', 764953, 100, 'XXXXXXXXXX', '', 'Male', 'N/A', '764953@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 480, '1697423543476', 2023, 'Seven', 'C', 'Nur Alom', 515624, 101, 'XXXXXXXXXX', '', 'Male', 'N/A', '515624@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 481, '1696990018806', 2023, 'Seven', 'C', 'Bayejit', 561907, 102, 'XXXXXXXXXX', '', 'Male', 'N/A', '561907@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 482, '1697472301479', 2023, 'Seven', 'C', 'Husain', 808601, 103, 'XXXXXXXXXX', '', 'Male', 'N/A', '808601@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 483, '1697698550981', 2023, 'Seven', 'C', 'Ahosanullah', 331508, 104, 'XXXXXXXXXX', '', 'Male', 'N/A', '331508@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 484, '1697786247027', 2023, 'Seven', 'C', 'Debojit Paul', 157072, 105, 'XXXXXXXXXX', '', 'Male', 'N/A', '157072@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 485, '1697195627585', 2023, 'Seven', 'C', 'Md. Shahbul', 134739, 106, 'XXXXXXXXXX', '', 'Male', 'N/A', '134739@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 486, '1697631605739', 2023, 'Seven', 'C', 'Zahid', 597921, 107, 'XXXXXXXXXX', '', 'Male', 'N/A', '597921@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 487, '1697587502260', 2023, 'Seven', 'C', 'Siyam Sheikh', 822215, 108, 'XXXXXXXXXX', '', 'Male', 'N/A', '822215@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 488, '1697651002860', 2023, 'Seven', 'C', 'Siyam Molla', 845369, 109, 'XXXXXXXXXX', '', 'Male', 'N/A', '845369@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 489, '1697497076168', 2023, 'Seven', 'C', 'Tamim', 262684, 110, 'XXXXXXXXXX', '', 'Male', 'N/A', '262684@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 490, '1696980923280', 2023, 'Seven', 'C', 'Arfin', 363949, 111, 'XXXXXXXXXX', '', 'Male', 'N/A', '363949@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 491, '1697589525283', 2023, 'Seven', 'C', 'Mamun', 85304, 112, 'XXXXXXXXXX', '', 'Male', 'N/A', '85304@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 492, '1697721347515', 2023, 'Seven', 'C', 'Tamim Hossen', 75675, 113, 'XXXXXXXXXX', '', 'Male', 'N/A', '75675@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:24:36'),
('localhost', 493, '1696994296780', 2023, 'Seven', 'B', 'Souvik Saha', 362817, 136, 'XXXXXXXXXX', '', 'Male', 'N/A', '362817@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 494, '1697323128992', 2023, 'Seven', 'B', 'Biprajit Kumar Basu', 258202, 137, 'XXXXXXXXXX', '', 'Male', 'N/A', '258202@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 495, '1697160834599', 2023, 'Seven', 'B', 'Ratul Saha', 625582, 138, 'XXXXXXXXXX', '', 'Male', 'N/A', '625582@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 496, '1697684657593', 2023, 'Seven', 'B', 'Md. Sahriyar Hossen', 52560, 139, 'XXXXXXXXXX', '', 'Male', 'N/A', '52560@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 497, '1696948870625', 2023, 'Seven', 'B', 'Syad Sadi Hossen Rafi', 324934, 140, 'XXXXXXXXXX', '', 'Male', 'N/A', '324934@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 498, '1697296536710', 2023, 'Seven', 'B', 'Md. Mehrab Hossen', 464917, 141, 'XXXXXXXXXX', '', 'Male', 'N/A', '464917@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 499, '1696991753731', 2023, 'Seven', 'B', 'Rahul Kundu', 645557, 142, 'XXXXXXXXXX', '', 'Male', 'N/A', '645557@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 500, '1697840277113', 2023, 'Seven', 'B', 'Mimtazur Rahman', 714584, 143, 'XXXXXXXXXX', '', 'Male', 'N/A', '714584@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 501, '1697280045308', 2023, 'Seven', 'B', 'Robiul Hasan', 838313, 144, 'XXXXXXXXXX', '', 'Male', 'N/A', '838313@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 502, '1697309605084', 2023, 'Seven', 'B', 'Deb Kumar Das', 449246, 145, 'XXXXXXXXXX', '', 'Male', 'N/A', '449246@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 503, '1697023934311', 2023, 'Seven', 'B', 'Md. Sohan Molla', 473617, 146, 'XXXXXXXXXX', '', 'Male', 'N/A', '473617@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 504, '1697103616003', 2023, 'Seven', 'B', 'Abid Hasan', 239899, 147, 'XXXXXXXXXX', '', 'Male', 'N/A', '239899@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 505, '1697504172192', 2023, 'Seven', 'B', 'Md. Rain Hasan', 518229, 148, 'XXXXXXXXXX', '', 'Male', 'N/A', '518229@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 506, '1697608228102', 2023, 'Seven', 'B', 'Alif Sheikh', 813273, 149, 'XXXXXXXXXX', '', 'Male', 'N/A', '813273@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 507, '1697515604610', 2023, 'Seven', 'B', 'Arafat Ariyan Toufik', 684939, 150, 'XXXXXXXXXX', '', 'Male', 'N/A', '684939@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 508, '1697723463713', 2023, 'Seven', 'B', 'Tasin Molla', 54937, 151, 'XXXXXXXXXX', '', 'Male', 'N/A', '54937@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 509, '1697122598632', 2023, 'Seven', 'B', 'Kazi Saifuddin Anokan', 375701, 152, 'XXXXXXXXXX', '', 'Male', 'N/A', '375701@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 510, '1697184555984', 2023, 'Seven', 'B', 'Abhisheikh Paul', 190725, 153, 'XXXXXXXXXX', '', 'Male', 'N/A', '190725@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 511, '1697096096267', 2023, 'Seven', 'B', 'Abu Naim Mina', 689239, 154, 'XXXXXXXXXX', '', 'Male', 'N/A', '689239@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 512, '1697303973657', 2023, 'Seven', 'B', 'Tajim Eahsan Pranta', 112599, 1, 'XXXXXXXXXX', '', 'Male', 'N/A', '112599@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 513, '1697055387197', 2023, 'Seven', 'B', 'Turaz Mia', 21477, 2, 'XXXXXXXXXX', '', 'Male', 'N/A', '21477@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 514, '1697633209735', 2023, 'Seven', 'B', 'Araf Hossein', 442187, 3, 'XXXXXXXXXX', '', 'Male', 'N/A', '442187@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 515, '1697432152699', 2023, 'Seven', 'B', 'Md. Surjanil Molla', 347199, 4, 'XXXXXXXXXX', '', 'Male', 'N/A', '347199@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 516, '1696984641137', 2023, 'Seven', 'B', 'Minajul', 301320, 5, 'XXXXXXXXXX', '', 'Male', 'N/A', '301320@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 517, '1697289619957', 2023, 'Seven', 'B', 'Saif Bin Bahar', 742294, 6, 'XXXXXXXXXX', '', 'Male', 'N/A', '742294@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33');
INSERT INTO `students` (`domain`, `ID`, `student_uuid`, `session`, `class`, `section`, `name`, `student_id`, `roll`, `reg`, `birth_date`, `gender`, `blood_group`, `email`, `phone`, `telephone`, `father_name`, `mother_name`, `address`, `religion`, `admission_date`, `hobbies`, `avatar`, `fb_link`, `password`, `quote`, `at_date`) VALUES
('localhost', 518, '1697379297275', 2023, 'Seven', 'B', 'Md. Khalidur Rahman', 895738, 7, 'XXXXXXXXXX', '', 'Male', 'N/A', '895738@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 519, '1697830421851', 2023, 'Seven', 'B', 'Md. Ibrahim Sheikh', 898121, 8, 'XXXXXXXXXX', '', 'Male', 'N/A', '898121@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 520, '1697061631090', 2023, 'Seven', 'B', 'Arka Molla', 982922, 9, 'XXXXXXXXXX', '', 'Male', 'N/A', '982922@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 521, '1697063596543', 2023, 'Seven', 'B', 'Hasibul Hasan Rifat', 753059, 10, 'XXXXXXXXXX', '', 'Male', 'N/A', '753059@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 522, '1697183514062', 2023, 'Seven', 'B', 'Md. Alif Molla', 196338, 11, 'XXXXXXXXXX', '', 'Male', 'N/A', '196338@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 523, '1697000981816', 2023, 'Seven', 'B', 'Sifat', 50711, 12, 'XXXXXXXXXX', '', 'Male', 'N/A', '50711@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 524, '1697126893298', 2023, 'Seven', 'B', 'Md. Husain Ahmmed', 840790, 13, 'XXXXXXXXXX', '', 'Male', 'N/A', '840790@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 525, '1697761003704', 2023, 'Seven', 'B', 'Hadi Jayed', 317359, 14, 'XXXXXXXXXX', '', 'Male', 'N/A', '317359@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 526, '1697396565293', 2023, 'Seven', 'B', 'Mahmud Hossen Riad', 714814, 15, 'XXXXXXXXXX', '', 'Male', 'N/A', '714814@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 527, '1697094284417', 2023, 'Seven', 'B', 'Abu Huraira', 557880, 16, 'XXXXXXXXXX', '', 'Male', 'N/A', '557880@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 528, '1697064549027', 2023, 'Seven', 'B', 'Koushik Mondal', 593, 17, 'XXXXXXXXXX', '', 'Male', 'N/A', '593@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 529, '1696997613307', 2023, 'Seven', 'B', 'Shamim Mia', 18145, 18, 'XXXXXXXXXX', '', 'Male', 'N/A', '18145@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 530, '1697528696260', 2023, 'Seven', 'B', 'Mehedi Hasan', 675223, 19, 'XXXXXXXXXX', '', 'Male', 'N/A', '675223@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 531, '1697521848098', 2023, 'Seven', 'B', 'Musa Abmmed', 252997, 20, 'XXXXXXXXXX', '', 'Male', 'N/A', '252997@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 532, '1697054261610', 2023, 'Seven', 'B', 'Ibrhim Hossein', 236213, 21, 'XXXXXXXXXX', '', 'Male', 'N/A', '236213@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 533, '1697155080207', 2023, 'Seven', 'B', 'Sawon Molla', 358809, 22, 'XXXXXXXXXX', '', 'Male', 'N/A', '358809@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 534, '1697470432474', 2023, 'Seven', 'B', 'Md. Riazul Islam Riad', 60649, 23, 'XXXXXXXXXX', '', 'Male', 'N/A', '60649@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 535, '1696977782664', 2023, 'Seven', 'B', 'Md. Sahriar Sheikh', 583492, 24, 'XXXXXXXXXX', '', 'Male', 'N/A', '583492@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 536, '1697145456239', 2023, 'Seven', 'B', 'Md. Imon Molla', 616872, 25, 'XXXXXXXXXX', '', 'Male', 'N/A', '616872@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 537, '1697605755052', 2023, 'Seven', 'B', 'Jahid', 851093, 26, 'XXXXXXXXXX', '', 'Male', 'N/A', '851093@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 538, '1697078191373', 2023, 'Seven', 'B', 'Abdul Arif', 879014, 27, 'XXXXXXXXXX', '', 'Male', 'N/A', '879014@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 539, '1697238184298', 2023, 'Seven', 'B', 'Md. Tanjid', 250997, 28, 'XXXXXXXXXX', '', 'Male', 'N/A', '250997@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 540, '1697408709616', 2023, 'Seven', 'B', 'Tajim Islam', 169236, 29, 'XXXXXXXXXX', '', 'Male', 'N/A', '169236@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 541, '1697832809692', 2023, 'Seven', 'B', 'Mahmudul', 582665, 30, 'XXXXXXXXXX', '', 'Male', 'N/A', '582665@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 542, '1697132935973', 2023, 'Seven', 'B', 'S S Azharul', 698908, 31, 'XXXXXXXXXX', '', 'Male', 'N/A', '698908@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 543, '1697234281343', 2023, 'Seven', 'B', 'Ruhul Amin', 10516, 32, 'XXXXXXXXXX', '', 'Male', 'N/A', '10516@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 544, '1697233597228', 2023, 'Seven', 'B', 'Md. Anis Molla', 310946, 33, 'XXXXXXXXXX', '', 'Male', 'N/A', '310946@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 545, '1697033863411', 2023, 'Seven', 'B', 'Simanta Rajbongshi', 401803, 34, 'XXXXXXXXXX', '', 'Male', 'N/A', '401803@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 546, '1697802273877', 2023, 'Seven', 'B', 'Md. Zobaer Molla', 534276, 35, 'XXXXXXXXXX', '', 'Male', 'N/A', '534276@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 547, '1697042156785', 2023, 'Seven', 'B', 'Tayabur Rahman', 671447, 36, 'XXXXXXXXXX', '', 'Male', 'N/A', '671447@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 548, '1697359832436', 2023, 'Seven', 'B', 'Riad Shikder', 699169, 37, 'XXXXXXXXXX', '', 'Male', 'N/A', '699169@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 549, '1697433672716', 2023, 'Seven', 'B', 'Naim Kader Khan', 185625, 38, 'XXXXXXXXXX', '', 'Male', 'N/A', '185625@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 550, '1696993957383', 2023, 'Seven', 'B', 'Md. Hamimuzzaman Hamim', 294285, 39, 'XXXXXXXXXX', '', 'Male', 'N/A', '294285@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 551, '1697624696999', 2023, 'Seven', 'B', 'Rafiz Khan', 394550, 40, 'XXXXXXXXXX', '', 'Male', 'N/A', '394550@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 552, '1697131583568', 2023, 'Seven', 'B', 'S M Amin Forhad', 769678, 41, 'XXXXXXXXXX', '', 'Male', 'N/A', '769678@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 553, '1697534658145', 2023, 'Seven', 'B', 'Sagor Rajbongshi', 577733, 42, 'XXXXXXXXXX', '', 'Male', 'N/A', '577733@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 554, '1697154917144', 2023, 'Seven', 'B', 'Md. Fahim Molla', 57355, 43, 'XXXXXXXXXX', '', 'Male', 'N/A', '57355@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 555, '1697268676615', 2023, 'Seven', 'B', 'Abhijeet Mandal', 878446, 44, 'XXXXXXXXXX', '', 'Male', 'N/A', '878446@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 556, '1697477569756', 2023, 'Seven', 'B', 'Zihad Sheikh', 761660, 45, 'XXXXXXXXXX', '', 'Male', 'N/A', '761660@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 557, '1697058397870', 2023, 'Seven', 'B', 'Md. Rabbi Sheikh', 478814, 46, 'XXXXXXXXXX', '', 'Male', 'N/A', '478814@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 558, '1697156842867', 2023, 'Seven', 'B', 'Apon Sarkar Rothin', 703911, 47, 'XXXXXXXXXX', '', 'Male', 'N/A', '703911@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 559, '1697468238002', 2023, 'Seven', 'B', 'Prodip Kumar Saha', 511046, 48, 'XXXXXXXXXX', '', 'Male', 'N/A', '511046@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 560, '1697077306985', 2023, 'Seven', 'B', 'Md. Hanzala Sheikh', 196884, 49, 'XXXXXXXXXX', '', 'Male', 'N/A', '196884@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 561, '1697673798183', 2023, 'Seven', 'B', 'Yasin Alom Rial', 375032, 50, 'XXXXXXXXXX', '', 'Male', 'N/A', '375032@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 562, '1697359679122', 2023, 'Seven', 'B', 'Md. Ruman Sikder', 137635, 51, 'XXXXXXXXXX', '', 'Male', 'N/A', '137635@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 563, '1697788204252', 2023, 'Seven', 'B', 'Arman Molla', 618927, 52, 'XXXXXXXXXX', '', 'Male', 'N/A', '618927@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 564, '1697364849166', 2023, 'Seven', 'B', 'Md. Zonayed Sheikh', 158128, 53, 'XXXXXXXXXX', '', 'Male', 'N/A', '158128@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 565, '1697422942508', 2023, 'Seven', 'B', 'Shahjahan Hasan', 252372, 54, 'XXXXXXXXXX', '', 'Male', 'N/A', '252372@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 566, '1697112427220', 2023, 'Seven', 'B', 'Arman', 801018, 55, 'XXXXXXXXXX', '', 'Male', 'N/A', '801018@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 567, '1697063184939', 2023, 'Seven', 'B', 'Shipon Dutta', 280681, 56, 'XXXXXXXXXX', '', 'Male', 'N/A', '280681@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 568, '1697060077603', 2023, 'Seven', 'B', 'Tamim Sheikh', 592729, 57, 'XXXXXXXXXX', '', 'Male', 'N/A', '592729@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 569, '1697800802210', 2023, 'Seven', 'B', 'Md. Siyam Sheikh', 146405, 58, 'XXXXXXXXXX', '', 'Male', 'N/A', '146405@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 570, '1697594669034', 2023, 'Seven', 'B', 'Gouris Kumar Roy', 781881, 59, 'XXXXXXXXXX', '', 'Male', 'N/A', '781881@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 571, '1697068051631', 2023, 'Seven', 'B', 'Md. Fahim Molla', 21644, 60, 'XXXXXXXXXX', '', 'Male', 'N/A', '21644@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 572, '1697535780582', 2023, 'Seven', 'B', 'Bijoy Mondal', 208938, 61, 'XXXXXXXXXX', '', 'Male', 'N/A', '208938@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 573, '1697526360228', 2023, 'Seven', 'B', 'Pavel Khan', 335235, 62, 'XXXXXXXXXX', '', 'Male', 'N/A', '335235@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 574, '1697219351706', 2023, 'Seven', 'B', 'Nur Islam Bappi', 189987, 63, 'XXXXXXXXXX', '', 'Male', 'N/A', '189987@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 575, '1697051678951', 2023, 'Seven', 'B', 'Sahriyar', 668248, 64, 'XXXXXXXXXX', '', 'Male', 'N/A', '668248@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 576, '1697560649144', 2023, 'Seven', 'B', 'Azim Sheikh', 272035, 65, 'XXXXXXXXXX', '', 'Male', 'N/A', '272035@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 577, '1697348462031', 2023, 'Seven', 'B', 'Arafat Biswas', 212749, 66, 'XXXXXXXXXX', '', 'Male', 'N/A', '212749@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 578, '1697817166834', 2023, 'Seven', 'B', 'Sohan Sheikh', 615205, 67, 'XXXXXXXXXX', '', 'Male', 'N/A', '615205@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 579, '1697678030796', 2023, 'Seven', 'B', 'Aridra Rajbongshi', 648686, 68, 'XXXXXXXXXX', '', 'Male', 'N/A', '648686@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 580, '1697539496018', 2023, 'Seven', 'B', 'Md. Yadul Islam', 254609, 69, 'XXXXXXXXXX', '', 'Male', 'N/A', '254609@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 581, '1697435054593', 2023, 'Seven', 'B', 'Israful Alom', 724473, 70, 'XXXXXXXXXX', '', 'Male', 'N/A', '724473@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 582, '1697500925120', 2023, 'Seven', 'B', 'Tarekh Thakur', 769646, 71, 'XXXXXXXXXX', '', 'Male', 'N/A', '769646@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 583, '1697235410732', 2023, 'Seven', 'B', 'Md. Faruk Sheikh', 568388, 72, 'XXXXXXXXXX', '', 'Male', 'N/A', '568388@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 584, '1697300888859', 2023, 'Seven', 'B', 'Sajid Islam', 693628, 73, 'XXXXXXXXXX', '', 'Male', 'N/A', '693628@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 585, '1697505405152', 2023, 'Seven', 'B', 'Md. Tamim Sheikh', 797676, 74, 'XXXXXXXXXX', '', 'Male', 'N/A', '797676@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 586, '1697130355097', 2023, 'Seven', 'B', 'Tamim', 715463, 75, 'XXXXXXXXXX', '', 'Male', 'N/A', '715463@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 587, '1697727091097', 2023, 'Seven', 'B', 'Debashish Das', 283068, 76, 'XXXXXXXXXX', '', 'Male', 'N/A', '283068@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 588, '1697354061288', 2023, 'Seven', 'B', 'Nayon Hossen', 478535, 77, 'XXXXXXXXXX', '', 'Male', 'N/A', '478535@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 589, '1697481701887', 2023, 'Seven', 'B', 'Hanjala ', 204369, 78, 'XXXXXXXXXX', '', 'Male', 'N/A', '204369@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 590, '1697408337266', 2023, 'Seven', 'B', 'Md. Ahadulla biswas', 423568, 79, 'XXXXXXXXXX', '', 'Male', 'N/A', '423568@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 591, '1697675298545', 2023, 'Seven', 'B', 'Abdullah Al Faisal', 736596, 80, 'XXXXXXXXXX', '', 'Male', 'N/A', '736596@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 592, '1697683943188', 2023, 'Seven', 'B', 'Muntasir Mahmud', 873111, 81, 'XXXXXXXXXX', '', 'Male', 'N/A', '873111@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 593, '1696993070933', 2023, 'Seven', 'B', 'Ismail Al jamil', 389691, 82, 'XXXXXXXXXX', '', 'Male', 'N/A', '389691@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 594, '1697014898661', 2023, 'Seven', 'B', 'Md. Siyam Islam', 877685, 83, 'XXXXXXXXXX', '', 'Male', 'N/A', '877685@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 595, '1697064629331', 2023, 'Seven', 'B', 'Md. Osama Sheikh', 549988, 84, 'XXXXXXXXXX', '', 'Male', 'N/A', '549988@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 596, '1697554772706', 2023, 'Seven', 'B', 'Md. Tawhid Hasan', 581806, 85, 'XXXXXXXXXX', '', 'Male', 'N/A', '581806@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 597, '1697191658486', 2023, 'Seven', 'B', 'Md. Bisal Sheikh', 339349, 86, 'XXXXXXXXXX', '', 'Male', 'N/A', '339349@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 598, '1697414152407', 2023, 'Seven', 'B', 'Moaz Ahmmed', 54606, 87, 'XXXXXXXXXX', '', 'Male', 'N/A', '54606@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 599, '1697383103617', 2023, 'Seven', 'B', 'Md. Sakib Molla', 506651, 88, 'XXXXXXXXXX', '', 'Male', 'N/A', '506651@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 600, '1697302735287', 2023, 'Seven', 'B', 'Md. Yasin Sheikh', 870941, 89, 'XXXXXXXXXX', '', 'Male', 'N/A', '870941@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 601, '1697817300060', 2023, 'Seven', 'B', 'Sandipon Sarkar', 613049, 90, 'XXXXXXXXXX', '', 'Male', 'N/A', '613049@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 602, '1697799439925', 2023, 'Seven', 'B', 'Abdullah Al Safi', 750616, 91, 'XXXXXXXXXX', '', 'Male', 'N/A', '750616@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 603, '1697846431969', 2023, 'Seven', 'B', 'Nayon Biswas', 390600, 92, 'XXXXXXXXXX', '', 'Male', 'N/A', '390600@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 604, '1696988759593', 2023, 'Seven', 'A', 'Aritri Basu', 38391, 63, 'XXXXXXXXXX', '', 'Female', 'N/A', '38391@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 605, '1697506341432', 2023, 'Seven', 'A', 'Nusrat Jahan', 603344, 65, 'XXXXXXXXXX', '', 'Female', 'N/A', '603344@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 606, '1697333400700', 2023, 'Seven', 'A', 'Afrin', 761104, 67, 'XXXXXXXXXX', '', 'Female', 'N/A', '761104@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 607, '1696954286547', 2023, 'Seven', 'A', 'Tarin Islam', 719284, 69, 'XXXXXXXXXX', '', 'Female', 'N/A', '719284@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 608, '1697033141186', 2023, 'Seven', 'A', 'Sejuti', 410722, 71, 'XXXXXXXXXX', '', 'Female', 'N/A', '410722@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 609, '1697741481528', 2023, 'Seven', 'A', 'Maliha Tasnim', 392863, 73, 'XXXXXXXXXX', '', 'Female', 'N/A', '392863@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 610, '1697349725222', 2023, 'Seven', 'A', 'Priyonti Saha', 643013, 75, 'XXXXXXXXXX', '', 'Female', 'N/A', '643013@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 611, '1697464557077', 2023, 'Seven', 'A', 'Jotirmoyee Paul', 93994, 77, 'XXXXXXXXXX', '', 'Female', 'N/A', '93994@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 612, '1697292913134', 2023, 'Seven', 'A', 'Nowshin Islam', 882850, 79, 'XXXXXXXXXX', '', 'Female', 'N/A', '882850@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 613, '1697054463725', 2023, 'Seven', 'A', 'Ankita Laskar', 333697, 81, 'XXXXXXXXXX', '', 'Female', 'N/A', '333697@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 614, '1697821617840', 2023, 'Seven', 'A', 'Ayswariya Sarkar', 728231, 83, 'XXXXXXXXXX', '', 'Female', 'N/A', '728231@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 615, '1696972163248', 2023, 'Seven', 'A', 'Faza Suzon Prionti', 121819, 85, 'XXXXXXXXXX', '', 'Female', 'N/A', '121819@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 616, '1697679812845', 2023, 'Seven', 'A', 'Jannaul Ferdous', 31333, 87, 'XXXXXXXXXX', '', 'Female', 'N/A', '31333@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 617, '1697196003642', 2023, 'Seven', 'A', 'Afifa Tasnim', 518969, 89, 'XXXXXXXXXX', '', 'Female', 'N/A', '518969@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 618, '1697321987366', 2023, 'Seven', 'A', 'Sobnom Mustari Nusrat', 864795, 91, 'XXXXXXXXXX', '', 'Female', 'N/A', '864795@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 619, '1697227569789', 2023, 'Seven', 'A', 'Toyshi Shikder', 577879, 93, 'XXXXXXXXXX', '', 'Female', 'N/A', '577879@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 620, '1697486353001', 2023, 'Seven', 'A', 'Sohana Akhter', 799095, 95, 'XXXXXXXXXX', '', 'Female', 'N/A', '799095@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 621, '1697081581504', 2023, 'Seven', 'A', 'Anya Zannat', 449566, 97, 'XXXXXXXXXX', '', 'Female', 'N/A', '449566@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 622, '1697288900481', 2023, 'Seven', 'A', 'Mst. Tayeba', 200582, 99, 'XXXXXXXXXX', '', 'Female', 'N/A', '200582@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 623, '1697767608788', 2023, 'Seven', 'A', 'Afiya', 276868, 101, 'XXXXXXXXXX', '', 'Female', 'N/A', '276868@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 624, '1697184565332', 2023, 'Seven', 'A', 'Anika Nawshin', 582286, 103, 'XXXXXXXXXX', '', 'Female', 'N/A', '582286@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 625, '1697367201672', 2023, 'Seven', 'A', 'Saswati Sarkar', 288820, 105, 'XXXXXXXXXX', '', 'Female', 'N/A', '288820@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 626, '1697428655144', 2023, 'Seven', 'A', 'Takwa Islam', 596734, 107, 'XXXXXXXXXX', '', 'Female', 'N/A', '596734@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 627, '1697170924578', 2023, 'Seven', 'A', 'Subhosree Das', 778428, 109, 'XXXXXXXXXX', '', 'Female', 'N/A', '778428@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 628, '1697812240594', 2023, 'Seven', 'A', 'Sreya Kundu', 481614, 110, 'XXXXXXXXXX', '', 'Female', 'N/A', '481614@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 629, '1697543356235', 2023, 'Seven', 'A', 'Farhana Islam Toha', 650132, 111, 'XXXXXXXXXX', '', 'Female', 'N/A', '650132@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 630, '1697118063139', 2023, 'Seven', 'A', 'Sadiya Islam', 700252, 112, 'XXXXXXXXXX', '', 'Female', 'N/A', '700252@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 631, '1697675823023', 2023, 'Seven', 'A', 'Mithila Khanam', 399629, 113, 'XXXXXXXXXX', '', 'Female', 'N/A', '399629@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 632, '1697011987941', 2023, 'Seven', 'A', 'Nusrat Amira Ira', 654504, 114, 'XXXXXXXXXX', '', 'Female', 'N/A', '654504@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 633, '1697448982167', 2023, 'Seven', 'A', 'Sumaya', 316414, 115, 'XXXXXXXXXX', '', 'Female', 'N/A', '316414@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 634, '1697382090833', 2023, 'Seven', 'A', 'Takiya Tabassum', 818120, 116, 'XXXXXXXXXX', '', 'Female', 'N/A', '818120@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 635, '1697846104854', 2023, 'Seven', 'A', 'Jannatul Ferdous', 228046, 117, 'XXXXXXXXXX', '', 'Female', 'N/A', '228046@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 636, '1697265753983', 2023, 'Seven', 'A', 'Taniya Khanom', 868618, 118, 'XXXXXXXXXX', '', 'Female', 'N/A', '868618@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 637, '1697021128885', 2023, 'Seven', 'A', 'Zubaida Afrin Zarin', 878511, 119, 'XXXXXXXXXX', '', 'Female', 'N/A', '878511@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 638, '1697285490235', 2023, 'Seven', 'A', 'Maimuna Islam', 78886, 120, 'XXXXXXXXXX', '', 'Female', 'N/A', '78886@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 639, '1697348462190', 2023, 'Seven', 'A', 'Maisha Tasniya', 279782, 121, 'XXXXXXXXXX', '', 'Female', 'N/A', '279782@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 640, '1697815952297', 2023, 'Seven', 'A', 'Sraboni Jannat Esha', 859197, 122, 'XXXXXXXXXX', '', 'Female', 'N/A', '859197@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 641, '1697695205522', 2023, 'Seven', 'A', 'Jannatul Zeba', 843637, 123, 'XXXXXXXXXX', '', 'Female', 'N/A', '843637@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 642, '1697686021383', 2023, 'Seven', 'A', 'Mahiya Sultana', 226071, 124, 'XXXXXXXXXX', '', 'Female', 'N/A', '226071@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 643, '1697589798396', 2023, 'Seven', 'A', 'Mst. Pushpita Khanam', 226777, 125, 'XXXXXXXXXX', '', 'Female', 'N/A', '226777@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 644, '1697118302812', 2023, 'Seven', 'A', 'Farhana Akter', 240067, 126, 'XXXXXXXXXX', '', 'Female', 'N/A', '240067@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 645, '1697668246421', 2023, 'Seven', 'A', 'Chayti Laskar', 538949, 127, 'XXXXXXXXXX', '', 'Female', 'N/A', '538949@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 646, '1697725298277', 2023, 'Seven', 'A', 'Mahbiya Mehjabin', 159046, 128, 'XXXXXXXXXX', '', 'Female', 'N/A', '159046@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 647, '1697594664562', 2023, 'Seven', 'A', 'Rafsana Binti', 47005, 129, 'XXXXXXXXXX', '', 'Female', 'N/A', '47005@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 648, '1697487929090', 2023, 'Seven', 'A', 'Hridika Basak', 803819, 130, 'XXXXXXXXXX', '', 'Female', 'N/A', '803819@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 649, '1697419033947', 2023, 'Seven', 'A', 'Nusrat Jahan ', 25670, 131, 'XXXXXXXXXX', '', 'Female', 'N/A', '25670@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 650, '1697385537631', 2023, 'Seven', 'A', 'Puja Sarkar', 551409, 132, 'XXXXXXXXXX', '', 'Female', 'N/A', '551409@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 651, '1697450649552', 2023, 'Seven', 'A', 'Sumaya', 209847, 133, 'XXXXXXXXXX', '', 'Female', 'N/A', '209847@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 652, '1697665821163', 2023, 'Seven', 'A', 'Jannatul Ferdous', 829004, 134, 'XXXXXXXXXX', '', 'Female', 'N/A', '829004@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 653, '1697312698358', 2023, 'Seven', 'A', 'Kotha Koli Maitra', 827839, 135, 'XXXXXXXXXX', '', 'Female', 'N/A', '827839@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 654, '1697322585475', 2023, 'Seven', 'A', 'Rukaya Khanom', 769525, 136, 'XXXXXXXXXX', '', 'Female', 'N/A', '769525@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 655, '1697452853152', 2023, 'Seven', 'A', 'Tasmiya Akter', 95655, 137, 'XXXXXXXXXX', '', 'Female', 'N/A', '95655@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 656, '1697638844487', 2023, 'Seven', 'A', 'Khadija', 280910, 138, 'XXXXXXXXXX', '', 'Female', 'N/A', '280910@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 657, '1697521082904', 2023, 'Seven', 'A', 'Nadiya Akter', 429695, 139, 'XXXXXXXXXX', '', 'Female', 'N/A', '429695@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 658, '1697632833039', 2023, 'Seven', 'A', 'Tabassum', 290660, 140, 'XXXXXXXXXX', '', 'Female', 'N/A', '290660@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 659, '1697075330276', 2023, 'Seven', 'A', 'Aysha Khanom', 434013, 141, 'XXXXXXXXXX', '', 'Female', 'N/A', '434013@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 660, '1697067350223', 2023, 'Seven', 'A', 'Mim Akter jhorna', 620714, 142, 'XXXXXXXXXX', '', 'Female', 'N/A', '620714@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 661, '1697496189937', 2023, 'Seven', 'A', 'Usha', 93016, 143, 'XXXXXXXXXX', '', 'Female', 'N/A', '93016@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 662, '1697697808350', 2023, 'Seven', 'A', 'Zobaida', 136576, 144, 'XXXXXXXXXX', '', 'Female', 'N/A', '136576@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 663, '1697572525217', 2023, 'Seven', 'A', 'Sumaiya', 277323, 145, 'XXXXXXXXXX', '', 'Female', 'N/A', '277323@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 664, '1697684169776', 2023, 'Seven', 'A', 'Oishi Karmakar', 883455, 146, 'XXXXXXXXXX', '', 'Female', 'N/A', '883455@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 665, '1697564135354', 2023, 'Seven', 'A', 'Jerin Akter', 658122, 147, 'XXXXXXXXXX', '', 'Female', 'N/A', '658122@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 666, '1697767733663', 2023, 'Seven', 'A', 'Faiza', 477382, 148, 'XXXXXXXXXX', '', 'Female', 'N/A', '477382@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 667, '1697046895224', 2023, 'Seven', 'A', 'Monalisa Akter', 379557, 149, 'XXXXXXXXXX', '', 'Female', 'N/A', '379557@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 668, '1697662503269', 2023, 'Seven', 'A', 'Sadiya Akter', 468813, 150, 'XXXXXXXXXX', '', 'Female', 'N/A', '468813@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 669, '1697207537896', 2023, 'Seven', 'A', 'Aisha', 631844, 151, 'XXXXXXXXXX', '', 'Female', 'N/A', '631844@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 670, '1697562366530', 2023, 'Seven', 'A', 'Toishi Sutradhar', 80787, 152, 'XXXXXXXXXX', '', 'Female', 'N/A', '80787@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 671, '1697819830260', 2023, 'Seven', 'A', 'Tanni Biswas', 250732, 153, 'XXXXXXXXXX', '', 'Female', 'N/A', '250732@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 672, '1697806194617', 2023, 'Seven', 'A', 'Safiya Tanha Sowa', 663243, 154, 'XXXXXXXXXX', '', 'Female', 'N/A', '63243@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 673, '1697064030653', 2023, 'Seven', 'A', 'Munni Khanam', 157745, 155, 'XXXXXXXXXX', '', 'Female', 'N/A', '157745@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 674, '1697629059968', 2023, 'Seven', 'A', 'Mst. Mafuja Sultana', 108599, 156, 'XXXXXXXXXX', '', 'Female', 'N/A', '108599@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 675, '1696962509550', 2023, 'Seven', 'A', 'Mourn Tanjum Nusrat', 270509, 157, 'XXXXXXXXXX', '', 'Female', 'N/A', '270509@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 676, '1697255410712', 2023, 'Seven', 'A', 'Umme Habiba', 376109, 158, 'XXXXXXXXXX', '', 'Female', 'N/A', '376109@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 677, '1697292788220', 2023, 'Seven', 'A', 'Meghna Roy', 889750, 159, 'XXXXXXXXXX', '', 'Female', 'N/A', '889750@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 678, '1697496898583', 2023, 'Seven', 'A', 'Sumaya', 723243, 160, 'XXXXXXXXXX', '', 'Female', 'N/A', '723243@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 679, '1697439795937', 2023, 'Seven', 'A', 'Mridula', 380329, 161, 'XXXXXXXXXX', '', 'Female', 'N/A', '380329@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 680, '1697595117963', 2023, 'Seven', 'A', 'Saima Rahman', 464960, 162, 'XXXXXXXXXX', '', 'Female', 'N/A', '464960@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 681, '1697213094990', 2023, 'Seven', 'A', 'Sharmin Akhter', 757283, 163, 'XXXXXXXXXX', '', 'Female', 'N/A', '757283@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 682, '1697752503169', 2023, 'Seven', 'A', 'Sucana Parvin', 278949, 164, 'XXXXXXXXXX', '', 'Female', 'N/A', '278949@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 683, '1697504985713', 2023, 'Seven', 'A', 'Mim Khanam', 732590, 165, 'XXXXXXXXXX', '', 'Female', 'N/A', '732590@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 684, '1697797795320', 2023, 'Seven', 'A', 'Nusrat Jahan', 208991, 166, 'XXXXXXXXXX', '', 'Female', 'N/A', '208991@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 685, '1697071180688', 2023, 'Seven', 'A', 'Mili Podder', 333871, 167, 'XXXXXXXXXX', '', 'Female', 'N/A', '333871@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 686, '1697431541697', 2023, 'Seven', 'A', 'Taskin Towa', 866185, 168, 'XXXXXXXXXX', '', 'Female', 'N/A', '866185@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 687, '1697076582685', 2023, 'Seven', 'A', 'Anika Khan', 687682, 169, 'XXXXXXXXXX', '', 'Female', 'N/A', '687682@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 688, '1697234046531', 2023, 'Seven', 'A', 'Maisha Akhter', 98835, 170, 'XXXXXXXXXX', '', 'Female', 'N/A', '98835@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14');
INSERT INTO `students` (`domain`, `ID`, `student_uuid`, `session`, `class`, `section`, `name`, `student_id`, `roll`, `reg`, `birth_date`, `gender`, `blood_group`, `email`, `phone`, `telephone`, `father_name`, `mother_name`, `address`, `religion`, `admission_date`, `hobbies`, `avatar`, `fb_link`, `password`, `quote`, `at_date`) VALUES
('localhost', 689, '1697511836465', 2023, 'Seven', 'A', 'Iva Easmin', 57223, 171, 'XXXXXXXXXX', '', 'Female', 'N/A', '57223@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 690, '1697348187455', 2023, 'Seven', 'A', 'Borsa', 525806, 172, 'XXXXXXXXXX', '', 'Female', 'N/A', '525806@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 691, '1697258210611', 2023, 'Seven', 'A', 'Mst. Jannati', 473906, 173, 'XXXXXXXXXX', '', 'Female', 'N/A', '473906@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 692, '1697362380724', 2023, 'Seven', 'A', 'Mahmuda Akhter', 876696, 174, 'XXXXXXXXXX', '', 'Female', 'N/A', '876696@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 693, '1697247347444', 2023, 'Seven', 'A', 'Brishti Akhter', 135755, 175, 'XXXXXXXXXX', '', 'Female', 'N/A', '135755@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 694, '1697636101283', 2023, 'Seven', 'A', 'Rabeya Boshri', 876102, 176, 'XXXXXXXXXX', '', 'Female', 'N/A', '876102@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 695, '1697260003429', 2023, 'Seven', 'A', 'Ankita Malo', 681787, 177, 'XXXXXXXXXX', '', 'Female', 'N/A', '681787@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 696, '1697328588282', 2023, 'Seven', 'A', 'Moriom Sultana', 689444, 178, 'XXXXXXXXXX', '', 'Female', 'N/A', '689444@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 697, '1697399317892', 2023, 'Seven', 'A', 'Umme Habiba', 213427, 179, 'XXXXXXXXXX', '', 'Female', 'N/A', '213427@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 698, '1697473661405', 2023, 'Seven', 'A', 'Keya Nandi', 931005, 180, 'XXXXXXXXXX', '', 'Female', 'N/A', '931005@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 699, '1697331295544', 2023, 'Seven', 'A', 'Sadiya Khanam', 656842, 181, 'XXXXXXXXXX', '', 'Female', 'N/A', '656842@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 700, '1697325629978', 2023, 'Seven', 'A', 'Sabiha Khanam', 264888, 182, 'XXXXXXXXXX', '', 'Female', 'N/A', '264888@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 701, '1697376444527', 2023, 'Seven', 'A', 'Asifa', 393391, 183, 'XXXXXXXXXX', '', 'Female', 'N/A', '393391@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 702, '1697030949026', 2023, 'Seven', 'A', 'Shapla', 576968, 184, 'XXXXXXXXXX', '', 'Female', 'N/A', '576968@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 703, '1697802223119', 2023, 'Seven', 'A', 'Nusrat Jahan', 658883, 185, 'XXXXXXXXXX', '', 'Female', 'N/A', '658883@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 704, '1697300762031', 2023, 'Seven', 'A', 'Mahiya Khanam', 685502, 186, 'XXXXXXXXXX', '', 'Female', 'N/A', '685502@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 705, '1697304614482', 2023, 'Seven', 'A', 'Nusrat Jahan', 167386, 187, 'XXXXXXXXXX', '', 'Female', 'N/A', '167386@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 706, '1697762505965', 2023, 'Seven', 'A', 'Athora Saha', 378496, 188, 'XXXXXXXXXX', '', 'Female', 'N/A', '378496@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 707, '1697655042015', 2023, 'Seven', 'A', 'Jikta Akhter', 797897, 189, 'XXXXXXXXXX', '', 'Female', 'N/A', '797897@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 708, '1697374914578', 2023, 'Seven', 'A', 'Raisa ', 138142, 190, 'XXXXXXXXXX', '', 'Female', 'N/A', '138142@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 709, '1697268810314', 2023, 'Seven', 'A', 'Setu Akhter', 592294, 191, 'XXXXXXXXXX', '', 'Female', 'N/A', '592294@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 710, '1697450398520', 2023, 'Seven', 'A', 'Elma', 378618, 192, 'XXXXXXXXXX', '', 'Female', 'N/A', '378618@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 711, '1697158112438', 2023, 'Seven', 'A', 'Asha Khanam', 822372, 193, 'XXXXXXXXXX', '', 'Female', 'N/A', '822372@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 712, '1697724198711', 2023, 'Seven', 'A', 'Moriom', 185184, 194, 'XXXXXXXXXX', '', 'Female', 'N/A', '185184@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 713, '1697017489587', 2023, 'Seven', 'A', 'Sumaya', 814415, 195, 'XXXXXXXXXX', '', 'Female', 'N/A', '814415@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 714, '1697290172689', 2023, 'Seven', 'A', 'Maya Das', 278411, 196, 'XXXXXXXXXX', '', 'Female', 'N/A', '278411@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 715, '1697610654837', 2023, 'Seven', 'A', 'Dipa Biswas', 162927, 197, 'XXXXXXXXXX', '', 'Female', 'N/A', '162927@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 716, '1697685459527', 2023, 'Seven', 'A', 'Suraya', 163069, 198, 'XXXXXXXXXX', '', 'Female', 'N/A', '163069@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 717, '1697701415847', 2023, 'Seven', 'A', 'Lamiya Khanam', 598952, 199, 'XXXXXXXXXX', '', 'Female', 'N/A', '598952@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 718, '1697321973897', 2023, 'Seven', 'A', 'Ishita Khanam', 795208, 200, 'XXXXXXXXXX', '', 'Female', 'N/A', '795208@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 719, '1697394444753', 2023, 'Seven', 'A', 'Eti Khanam', 690806, 201, 'XXXXXXXXXX', '', 'Female', 'N/A', '690806@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 720, '1697354963805', 2023, 'Seven', 'A', 'Fatema', 819040, 202, 'XXXXXXXXXX', '', 'Female', 'N/A', '819040@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 721, '1697804892910', 2023, 'Seven', 'A', 'Mitu Khanam', 867434, 203, 'XXXXXXXXXX', '', 'Female', 'N/A', '867434@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 722, '1697380820549', 2023, 'Seven', 'A', 'Pakhi Akhter', 799944, 204, 'XXXXXXXXXX', '', 'Female', 'N/A', '799944@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 723, '1697197429747', 2023, 'Seven', 'A', 'Fatema Akhter', 533942, 205, 'XXXXXXXXXX', '', 'Female', 'N/A', '533942@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 724, '1697356455395', 2023, 'Seven', 'A', 'Aboni Ahmmed', 60947, 206, 'XXXXXXXXXX', '', 'Female', 'N/A', '60947@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 725, '1697084574115', 2023, 'Seven', 'A', 'Jui', 90345, 207, 'XXXXXXXXXX', '', 'Female', 'N/A', '90345@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 726, '1697130773266', 2023, 'Seven', 'A', 'Swarna Karmakar', 644608, 208, 'XXXXXXXXXX', '', 'Female', 'N/A', '644608@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 727, '1697112880985', 2023, 'Seven', 'A', 'Samiya', 590758, 209, 'XXXXXXXXXX', '', 'Female', 'N/A', '590758@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 728, '1697007094964', 2023, 'Seven', 'A', 'Sneha Saha', 735438, 210, 'XXXXXXXXXX', '', 'Female', 'N/A', '735438@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 729, '1697425332639', 2023, 'Seven', 'A', 'Taslima Akhter', 557332, 211, 'XXXXXXXXXX', '', 'Female', 'N/A', '557332@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 730, '1697793226753', 2023, 'Seven', 'A', 'Rupa Khanam', 213633, 212, 'XXXXXXXXXX', '', 'Female', 'N/A', '213633@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 731, '1697176316085', 2023, 'Seven', 'A', 'Tithi Paul', 713273, 213, 'XXXXXXXXXX', '', 'Female', 'N/A', '713273@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 732, '1697267560726', 2023, 'Seven', 'A', 'Ankhi Khanam', 469398, 214, 'XXXXXXXXXX', '', 'Female', 'N/A', '469398@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 733, '1696996935834', 2023, 'Seven', 'A', 'Mithila Molla', 351834, 215, 'XXXXXXXXXX', '', 'Female', 'N/A', '351834@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 734, '1697271132907', 2023, 'Seven', 'A', 'Afsana Parvin', 119078, 216, 'XXXXXXXXXX', '', 'Female', 'N/A', '119078@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 735, '1697642806452', 2023, 'Seven', 'A', 'Khadija', 422550, 217, 'XXXXXXXXXX', '', 'Female', 'N/A', '422550@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 736, '1697560692083', 2023, 'Seven', 'A', 'Nandini Laskar', 280609, 218, 'XXXXXXXXXX', '', 'Female', 'N/A', '280609@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 737, '1697582041038', 2023, 'Seven', 'A', 'Gita Podder', 85242, 219, 'XXXXXXXXXX', '', 'Female', 'N/A', '85242@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 738, '1697488662039', 2023, 'Seven', 'A', 'Tasmiya Khanam', 578571, 220, 'XXXXXXXXXX', '', 'Female', 'N/A', '578571@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 739, '1697293391193', 2023, 'Seven', 'A', 'Jhilik', 424818, 221, 'XXXXXXXXXX', '', 'Female', 'N/A', '424818@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 740, '1697070004009', 2023, 'Seven', 'A', 'Mim Akhter', 872466, 222, 'XXXXXXXXXX', '', 'Female', 'N/A', '872466@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 741, '1697282552795', 2023, 'Seven', 'A', 'Taniya ', 317856, 223, 'XXXXXXXXXX', '', 'Female', 'N/A', '317856@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 742, '1697025989128', 2023, 'Seven', 'A', 'Jannati', 827132, 224, 'XXXXXXXXXX', '', 'Female', 'N/A', '827132@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 743, '1697690272757', 2023, 'Seven', 'A', 'Ambiya', 758964, 225, 'XXXXXXXXXX', '', 'Female', 'N/A', '758964@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 744, '1697743088515', 2023, 'Seven', 'A', 'Abida', 733380, 226, 'XXXXXXXXXX', '', 'Female', 'N/A', '733380@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 745, '1697322846358', 2023, 'Seven', 'A', 'Zubaida Islam', 720531, 227, 'XXXXXXXXXX', '', 'Female', 'N/A', '720531@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 746, '1697511865469', 2023, 'Seven', 'A', 'Rupa Khanam', 70428, 229, 'XXXXXXXXXX', '', 'Female', 'N/A', '70428@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 747, '1697447209762', 2023, 'Seven', 'A', 'Isma', 833093, 231, 'XXXXXXXXXX', '', 'Female', 'N/A', '833093@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 748, '1697325916729', 2023, 'Seven', 'A', 'Laki Akhter', 433088, 232, 'XXXXXXXXXX', '', 'Female', 'N/A', '433088@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 749, '1697383876084', 2023, 'Seven', 'A', 'Sumaya Imu', 779125, 234, 'XXXXXXXXXX', '', 'Female', 'N/A', '779125@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 750, '1697148047099', 2023, 'Seven', 'A', 'Setu Begom', 501033, 236, 'XXXXXXXXXX', '', 'Female', 'N/A', '501033@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 751, '1697532947068', 2023, 'Seven', 'A', 'Maliha Jahan', 323255, 238, 'XXXXXXXXXX', '', 'Female', 'N/A', '323255@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 752, '1697448421239', 2023, 'Seven', 'A', 'Tuli Rani', 482939, 239, 'XXXXXXXXXX', '', 'Female', 'N/A', '482939@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 753, '1697007446889', 2023, 'Seven', 'A', 'Farjana', 426285, 241, 'XXXXXXXXXX', '', 'Female', 'N/A', '426285@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 754, '1697486074299', 2023, 'Seven', 'A', 'Lamiya', 629157, 243, 'XXXXXXXXXX', '', 'Female', 'N/A', '629157@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 755, '1697116613379', 2023, 'Seven', 'A', 'Fahmida', 416665, 244, 'XXXXXXXXXX', '', 'Female', 'N/A', '416665@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 756, '1697818500657', 2023, 'Seven', 'A', 'Farhana Alom', 335125, 245, 'XXXXXXXXXX', '', 'Female', 'N/A', '335125@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 757, '1697823699838', 2023, 'Seven', 'A', 'Sadiya', 786128, 247, 'XXXXXXXXXX', '', 'Female', 'N/A', '786128@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 758, '1697808935549', 2023, 'Seven', 'A', 'Tasnim Farha', 624011, 248, 'XXXXXXXXXX', '', 'Female', 'N/A', '624011@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 759, '1697497790675', 2023, 'Seven', 'A', 'Anwesha Biswas', 784679, 249, 'XXXXXXXXXX', '', 'Female', 'N/A', '784679@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:24:39'),
('localhost', 760, '1697184971355', 2023, 'Seven', 'A', 'Ankita Dutta', 630903, 251, 'XXXXXXXXXX', '', 'Female', 'N/A', '630903@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:24:39'),
('localhost', 761, '1697104479633', 2023, 'Seven', 'A', 'Binti Saha', 845670, 253, 'XXXXXXXXXX', '', 'Female', 'N/A', '845670@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:24:39'),
('localhost', 762, '1697631131130', 2023, 'Seven', 'A', 'Zayeda Islam Porshia ', 26738, 254, 'XXXXXXXXXX', '', 'Female', 'N/A', '26738@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-26 08:07:32'),
('localhost', 788, '1697562063891', 2023, 'Eight', 'A', 'no name', 569050, 1, 'XXXXXXXXXX', '', 'Male', 'undefined', '569050@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'undefined', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 14:08:09'),
('localhost', 789, '1697451431015', 2023, 'Six', 'A', 'Sumi Akter', 202348, 21, 'XXXXXXXXXX', '', 'Female', 'undefined', '202348@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'undefined', '', 'N/A', '1697221782178_download (1).jpeg', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-13 18:29:42'),
('localhost', 790, '1697719197242', 2023, 'Six', 'A', 'Lima Sultana', 279439, 23, 'XXXXXXXXXX', '', 'Female', 'undefined', '279439@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'undefined', '', 'N/A', '1697221808622_download (2).jpeg', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-13 18:30:08'),
('localhost', 791, '1697245493778', 2023, 'Six', 'A', 'Maria Sultana', 585483, 25, 'XXXXXXXXXX', '', 'Female', 'undefined', '585483@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'undefined', '', 'N/A', '1697221831998_images (2).jpeg', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-13 18:30:32'),
('localhost', 1001, '1698825102719', 2023, 'Seven', 'A', 'মো: রবিন মিনা', 485546, 228, 'XXXXXXXXXX', '', 'Male', 'N/A', '485546@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:51:39'),
('localhost', 1002, '1698576280255', 2023, 'Seven', 'A', 'ফারজানা পারভীন', 536750, 230, 'XXXXXXXXXX', '', 'Female', 'N/A', '536750@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:50:14'),
('localhost', 1003, '1698923082496', 2023, 'Six', 'A', 'তানভির আহম্মেদ ', 712482, 83, 'XXXXXXXXXX', '', 'Male', 'N/A', '712482@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:00:18'),
('localhost', 1004, '1698233004152', 2023, 'Seven', 'A', 'অভিজিত অধিকারী', 672017, 233, 'XXXXXXXXXX', '', 'Male', 'N/A', '672017@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:55:11'),
('localhost', 1005, '1698306232769', 2023, 'Seven', 'A', 'মো: হিমেল শেখ', 490292, 235, 'XXXXXXXXXX', '', 'Male', 'N/A', '490292@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:25:53'),
('localhost', 1006, '1698763609077', 2023, 'Seven', 'A', 'চিত্রা বিশ্বাস', 462872, 237, 'XXXXXXXXXX', '', 'Female', 'N/A', '462872@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:27:43'),
('localhost', 1007, '1698738609341', 2023, 'Six', 'A', 'জ্যোতি মন্ডল ', 421895, 88, 'XXXXXXXXXX', '', 'Female', 'N/A', '421895@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1008, '1698805100616', 2023, 'Seven', 'A', 'কনা ঠাকুর', 215308, 240, 'XXXXXXXXXX', '', 'Female', 'N/A', '215308@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-08 04:38:14'),
('localhost', 1009, '1698426591210', 2023, 'Seven', 'A', 'মো: বাপ্পি শেখ', 44734, 242, 'XXXXXXXXXX', '', 'Female', 'N/A', '44734@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:26:32'),
('localhost', 1010, '1698372177494', 2023, 'Six', 'A', 'সুলতানা ', 715564, 92, 'XXXXXXXXXX', '', 'Female', 'N/A', '715564@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1011, '1698213970959', 2023, 'Six', 'A', 'নীরা ', 163991, 94, 'XXXXXXXXXX', '', 'Female', 'N/A', '163991@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1012, '1698762982623', 2023, 'Seven', 'A', 'ছিয়াম শেখ', 191715, 246, 'XXXXXXXXXX', '', 'Male', 'N/A', '191715@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:45:46'),
('localhost', 1013, '1698806787550', 2023, 'Six', 'A', 'মোঃ মাহমুদ মিনা রাব্বি', 349195, 97, 'XXXXXXXXXX', '', 'Male', 'N/A', '349195@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 04:57:43'),
('localhost', 1014, '1698048172886', 2023, 'Six', 'A', 'বাপ্পি শেখ', 185902, 99, 'XXXXXXXXXX', '', 'Male', 'N/A', '185902@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1015, '1698391364174', 2023, 'Seven', 'A', 'সপ্ন ফকির', 23630, 250, 'XXXXXXXXXX', '', 'Male', 'N/A', '23630@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-08 05:51:40'),
('localhost', 1016, '1698406744528', 2023, 'Seven', 'A', 'ঋতু মনি', 416008, 252, 'XXXXXXXXXX', '', 'Female', 'N/A', '416008@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-08 05:50:04'),
('localhost', 1017, '1698916871386', 2023, 'Six', 'A', 'জিতু বিম্বাস ', 419820, 103, 'XXXXXXXXXX', '', 'Male', 'N/A', '419820@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1018, '1698811920553', 2023, 'Seven', 'A', 'শয়ন অধিকারী', 419437, 255, 'XXXXXXXXXX', '', 'Male', 'N/A', '419437@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-08 04:37:04'),
('localhost', 1019, '1698763430140', 2023, 'Seven', 'A', 'রাকিবুল মোল্যা', 90016, 256, 'XXXXXXXXXX', '', 'Male', 'N/A', '90016@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:01:49'),
('localhost', 1020, '1698528237610', 2023, 'Seven', 'A', 'মিতা', 543659, 257, 'XXXXXXXXXX', '', 'Female', 'N/A', '543659@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:53:41'),
('localhost', 1021, '1698394514528', 2023, 'Six', 'A', 'দিব্য বিশ্বাস ', 481083, 108, 'XXXXXXXXXX', '', 'Male', 'N/A', '481083@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1022, '1698910664986', 2023, 'Seven', 'A', 'ঐতিহ্য বিশ্বাস', 113322, 258, 'XXXXXXXXXX', '', 'Male', 'N/A', '113322@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:57:10'),
('localhost', 1023, '1698793831947', 2023, 'Seven', 'A', 'মো: সিহাব শেখ', 305902, 259, 'XXXXXXXXXX', '', 'Male', 'N/A', '305902@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:29:13'),
('localhost', 1024, '1698506063682', 2023, 'Six', 'A', 'তড়িতা অধিকারী ', 601792, 1, 'XXXXXXXXXX', '', 'Female', 'N/A', '601792@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1025, '1698659885616', 2023, 'Six', 'A', 'তানিয়া ', 467151, 3, 'XXXXXXXXXX', '', 'Female', 'N/A', '467151@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1026, '1698460381556', 2023, 'Six', 'A', 'উৎসব বিশ্বাস', 551763, 5, 'XXXXXXXXXX', '', 'Male', 'N/A', '551763@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:00:18'),
('localhost', 1027, '1698167155238', 2023, 'Seven', 'A', 'রিয়া মনি', 568303, 1, 'XXXXXXXXXX', '', 'Female', 'N/A', '568303@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:49:48'),
('localhost', 1028, '1698361986940', 2023, 'Six', 'A', 'রুদ্র বালা ', 854186, 8, 'XXXXXXXXXX', '', 'Male', 'N/A', '854186@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1029, '1698851230507', 2023, 'Six', 'A', 'মোঃ মারুফ মোল্যা ', 723782, 10, 'XXXXXXXXXX', '', 'Male', 'N/A', '723782@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1030, '1698274196192', 2023, 'Six', 'A', 'মোঃ রাশেদুল মিনা ', 119795, 12, 'XXXXXXXXXX', '', 'Male', 'N/A', '119795@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1031, '1698091785667', 2023, 'Six', 'A', 'দিগন্ত বিশ্বাস ', 734885, 14, 'XXXXXXXXXX', '', 'Male', 'N/A', '734885@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 04:57:43'),
('localhost', 1032, '1698415120544', 2023, 'Seven', 'A', 'মো: হামিদুল মোল্যা', 222373, 2, 'XXXXXXXXXX', '', 'Male', 'N/A', '222373@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:29:37'),
('localhost', 1033, '1698496761059', 2023, 'Seven', 'A', 'সিনথিয়া', 30296, 3, 'XXXXXXXXXX', '', 'Female', 'N/A', '30296@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:30:06'),
('localhost', 1034, '1698702423129', 2023, 'Six', 'A', 'হাবিবুর রহমান ', 339375, 16, 'XXXXXXXXXX', '', 'Male', 'N/A', '339375@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:00:18'),
('localhost', 1035, '1698390542626', 2023, 'Seven', 'A', 'সুষ্মিতা বালা', 56416, 4, 'XXXXXXXXXX', '', 'Female', 'N/A', '56416@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:28:40'),
('localhost', 1036, '1698666063327', 2023, 'Six', 'A', 'আর্য বিশ্বাস ', 464705, 17, 'XXXXXXXXXX', '', 'Male', 'N/A', '464705@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1037, '1698483261157', 2023, 'Seven', 'A', 'শ্রাবন্তী মন্ডল', 19558, 5, 'XXXXXXXXXX', '', 'Female', 'N/A', '19558@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:58:10'),
('localhost', 1038, '1698602134369', 2023, 'Seven', 'A', 'মুক্তি রানী ঠাকুর', 65773, 6, 'XXXXXXXXXX', '', 'Female', 'N/A', '65773@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:24:44'),
('localhost', 1039, '1698057503520', 2023, 'Six', 'A', 'রওশন মাসফি ছোয়াদ ', 276344, 18, 'XXXXXXXXXX', '', 'Male', 'N/A', '276344@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:11:59'),
('localhost', 1040, '1698906249674', 2023, 'Six', 'A', 'পূজা ভদ্র', 494184, 19, 'XXXXXXXXXX', '', 'Female', 'N/A', '494184@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1041, '1698297779431', 2023, 'Seven', 'A', 'ফাতেমা আক্তার', 457018, 7, 'XXXXXXXXXX', '', 'Female', 'N/A', '457018@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:23:48'),
('localhost', 1042, '1698183908488', 2023, 'Seven', 'A', 'মো:মাহিম মিনা', 267327, 8, 'XXXXXXXXXX', '', 'Male', 'N/A', '267327@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:51:03'),
('localhost', 1043, '1698197603066', 2023, 'Seven', 'A', 'ইসরাত জাহান', 463035, 9, 'XXXXXXXXXX', '', 'Female', 'N/A', '463035@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:59:09'),
('localhost', 1044, '1698261533936', 2023, 'Six', 'A', 'আরিফা আক্তার ', 508856, 20, 'XXXXXXXXXX', '', 'Female', 'N/A', '508856@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1045, '1698646217806', 2023, 'Six', 'A', 'যুথী পারভীন ', 817181, 22, 'XXXXXXXXXX', '', 'Female', 'N/A', '817181@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1046, '1698845201207', 2023, 'Six', 'A', 'লিমন মিনা ', 47431, 24, 'XXXXXXXXXX', '', 'Male', 'N/A', '47431@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 04:49:21'),
('localhost', 1047, '1698376513467', 2023, 'Seven', 'A', 'কনিকা', 133040, 10, 'XXXXXXXXXX', '', 'Female', 'N/A', '133040@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:30:58'),
('localhost', 1048, '1698692716505', 2023, 'Six', 'A', 'সুষমা বিশ্বাস ', 661972, 26, 'XXXXXXXXXX', '', 'Female', 'N/A', '661972@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1049, '1698472671897', 2023, 'Six', 'A', 'সিমলা ভদ্র', 873724, 27, 'XXXXXXXXXX', '', 'Female', 'N/A', '873724@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1050, '1698774650269', 2023, 'Six', 'A', 'সিনথিয়া ', 602007, 28, 'XXXXXXXXXX', '', 'Female', 'N/A', '602007@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1051, '1698437459238', 2023, 'Six', 'A', 'হাজেরা ', 406477, 29, 'XXXXXXXXXX', '', 'Female', 'N/A', '406477@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1052, '1698825118439', 2023, 'Seven', 'A', 'মরিয়ম', 61997, 11, 'XXXXXXXXXX', '', 'Female', 'N/A', '61997@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-08 05:49:41'),
('localhost', 1053, '1698511074434', 2023, 'Seven', 'A', 'সাকিবুল', 779728, 12, 'XXXXXXXXXX', '', 'Male', 'N/A', '779728@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:00:06'),
('localhost', 1054, '1698193799818', 2023, 'Seven', 'A', 'তাসমিনা খানম', 864828, 13, 'XXXXXXXXXX', '', 'Female', 'N/A', '864828@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-08 05:48:47'),
('localhost', 1055, '1698695838603', 2023, 'Six', 'A', 'বিশাল বিশ্বাস ', 883048, 30, 'XXXXXXXXXX', '', 'Male', 'N/A', '883048@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 04:57:43'),
('localhost', 1056, '1698910006912', 2023, 'Six', 'A', 'রাকেশ বিশ্বাস ', 793474, 31, 'XXXXXXXXXX', '', 'Male', 'N/A', '793474@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:00:18'),
('localhost', 1057, '1698825441492', 2023, 'Six', 'A', 'নিলয় বিশ্বাস ', 767943, 32, 'XXXXXXXXXX', '', 'Male', 'N/A', '767943@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 04:57:43'),
('localhost', 1058, '1698444663705', 2023, 'Seven', 'A', '-', 578378, 14, 'XXXXXXXXXX', '', 'Female', 'N/A', '578378@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:52:30'),
('localhost', 1059, '1698590495287', 2023, 'Six', 'A', 'সাকিফা জান্নাত তিন্নি', 884037, 33, 'XXXXXXXXXX', '', 'Female', 'N/A', '884037@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 04:57:43'),
('localhost', 1060, '1698804404248', 2023, 'Six', 'A', 'অথরা ', 605580, 34, 'XXXXXXXXXX', '', 'Female', 'N/A', '605580@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1061, '1698713224988', 2023, 'Seven', 'A', 'জাকারিয়া মিনা', 40821, 15, 'XXXXXXXXXX', '', 'Male', 'N/A', '40821@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:02:07'),
('localhost', 1062, '1698812224008', 2023, 'Six', 'A', 'মাসরুফা ', 595807, 35, 'XXXXXXXXXX', '', 'Female', 'N/A', '595807@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1063, '1698845638950', 2023, 'Six', 'A', 'সুব্রত কুমার বিশ্বাস ', 289238, 36, 'XXXXXXXXXX', '', 'Male', 'N/A', '289238@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1064, '1698752968832', 2023, 'Six', 'A', 'মাসুম ', 4012, 37, 'XXXXXXXXXX', '', 'Male', 'N/A', '4012@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1065, '1698809106322', 2023, 'Six', 'A', 'পূর্নিমা মন্ডল ', 463275, 38, 'XXXXXXXXXX', '', 'Female', 'N/A', '463275@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:11:59'),
('localhost', 1066, '1698597209965', 2023, 'Seven', 'A', 'শেখ রাসেল', 413739, 16, 'XXXXXXXXXX', '', 'Male', 'N/A', '413739@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:57:38'),
('localhost', 1067, '1698204940958', 2023, 'Seven', 'A', 'মুরছালিনা', 36634, 17, 'XXXXXXXXXX', '', 'Female', 'N/A', '36634@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-18 05:56:50'),
('localhost', 1068, '1698928005917', 2023, 'Seven', 'A', 'আবির হোসেন', 423446, 18, 'XXXXXXXXXX', '', 'Female', 'N/A', '423446@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:54:11'),
('localhost', 1069, '1698350764090', 2023, 'Seven', 'A', 'জবা ঠাকুর', 887418, 19, 'XXXXXXXXXX', '', 'Female', 'N/A', '887418@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:23:23'),
('localhost', 1070, '1698456620617', 2023, 'Seven', 'A', 'পিউ বিশ্বাস', 489409, 20, 'XXXXXXXXXX', '', 'Female', 'N/A', '489409@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-08 04:29:06'),
('localhost', 1071, '1698215988083', 2023, 'Seven', 'A', 'তামিম শেখ', 790541, 21, 'XXXXXXXXXX', '', 'Male', 'N/A', '790541@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:59:30'),
('localhost', 1072, '1698541005695', 2023, 'Six', 'A', 'দিবা বালা ', 474429, 40, 'XXXXXXXXXX', '', 'Male', 'N/A', '474429@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1073, '1698712481916', 2023, 'Six', 'A', 'মোঃ শাহিন শেখ ', 373032, 41, 'XXXXXXXXXX', '', 'Male', 'N/A', '373032@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1074, '1698449662260', 2023, 'Seven', 'A', 'চামেলী', 216020, 22, 'XXXXXXXXXX', '', 'Female', 'N/A', '216020@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:45:19'),
('localhost', 1075, '1698425800940', 2023, 'Seven', 'A', 'আব্দুল্লাহ শেখ', 334069, 23, 'XXXXXXXXXX', '', 'Male', 'N/A', '334069@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:56:38'),
('localhost', 1076, '1698147213555', 2023, 'Seven', 'A', 'মো: মারুফ মিনা', 458109, 24, 'XXXXXXXXXX', '', 'Male', 'N/A', '458109@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:46:43'),
('localhost', 1077, '1698107578378', 2023, 'Six', 'A', 'রাবেয়া ', 153132, 42, 'XXXXXXXXXX', '', 'Female', 'N/A', '153132@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:00:18'),
('localhost', 1078, '1698055224949', 2023, 'Six', 'A', 'মোঃ আবু সাইদ শেখ ', 544249, 43, 'XXXXXXXXXX', '', 'Male', 'N/A', '544249@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1079, '1698302233472', 2023, 'Six', 'A', 'মোঃ রমজান সিকদার ', 784901, 44, 'XXXXXXXXXX', '', 'Male', 'N/A', '784901@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1080, '1698861480196', 2023, 'Seven', 'A', 'মেহেনাজ', 396693, 25, 'XXXXXXXXXX', '', 'Female', 'N/A', '396693@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:24:14'),
('localhost', 1081, '1698322920875', 2023, 'Seven', 'A', '-', 705247, 26, 'XXXXXXXXXX', '', 'Female', 'N/A', '705247@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:01:10'),
('localhost', 1082, '1698903520786', 2023, 'Six', 'A', 'মোঃ রহমাতুল্লাহ ', 280519, 45, 'XXXXXXXXXX', '', 'Male', 'N/A', '280519@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1083, '1698674746031', 2023, 'Seven', 'A', 'জিহাদ', 515860, 27, 'XXXXXXXXXX', '', 'Male', 'N/A', '515860@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:59:48'),
('localhost', 1084, '1698444629463', 2023, 'Six', 'A', 'প্রিয়সী বিশ্বাস ', 279493, 46, 'XXXXXXXXXX', '', 'Female', 'N/A', '279493@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:11:59'),
('localhost', 1085, '1698679377605', 2023, 'Six', 'A', 'শয়ণ অধিকারী', 127015, 47, 'XXXXXXXXXX', '', 'Male', 'N/A', '127015@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 04:49:44'),
('localhost', 1086, '1698608802241', 2023, 'Seven', 'A', 'সস্তিকা মন্ডল সপ্তামি', 436273, 28, 'XXXXXXXXXX', '', 'Female', 'N/A', '436273@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-08 05:50:46'),
('localhost', 1087, '1698832337476', 2023, 'Seven', 'A', 'মাসুমা আক্তার সুমাইয়া', 500482, 29, 'XXXXXXXXXX', '', 'Female', 'N/A', '500482@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:00:54'),
('localhost', 1088, '1698839814812', 2023, 'Six', 'A', 'চৈতি বালা ', 528913, 48, 'XXXXXXXXXX', '', 'Female', 'N/A', '528913@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1089, '1698119714171', 2023, 'Six', 'A', 'রুদ্র বিশ্বাস', 248275, 49, 'XXXXXXXXXX', '', 'Male', 'N/A', '248275@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1090, '1698743306097', 2023, 'Seven', 'A', 'জেরিন ইয়াসমিন জুই', 717104, 30, 'XXXXXXXXXX', '', 'Female', 'N/A', '717104@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:56:02'),
('localhost', 1091, '1698866161466', 2023, 'Seven', 'A', 'সৃষ্টি বিশ্বাস', 729340, 31, 'XXXXXXXXXX', '', 'Female', 'N/A', '729340@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-08 05:48:13'),
('localhost', 1092, '1698866199826', 2023, 'Six', 'A', 'জয়া রানী শীল ', 807947, 50, 'XXXXXXXXXX', '', 'Female', 'N/A', '807947@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1093, '1698088861565', 2023, 'Six', 'A', 'শ্রাবন্তী মন্ডল ', 756218, 51, 'XXXXXXXXXX', '', 'Female', 'N/A', '756218@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56');
INSERT INTO `students` (`domain`, `ID`, `student_uuid`, `session`, `class`, `section`, `name`, `student_id`, `roll`, `reg`, `birth_date`, `gender`, `blood_group`, `email`, `phone`, `telephone`, `father_name`, `mother_name`, `address`, `religion`, `admission_date`, `hobbies`, `avatar`, `fb_link`, `password`, `quote`, `at_date`) VALUES
('localhost', 1094, '1698906376238', 2023, 'Six', 'A', 'আরাধ্যা বালা ', 311790, 52, 'XXXXXXXXXX', '', 'Female', 'N/A', '311790@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1095, '1698403559524', 2023, 'Seven', 'A', 'নিঝুম অধিকারী', 550369, 36, 'XXXXXXXXXX', '', 'Female', 'N/A', '550369@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-08 05:51:06'),
('localhost', 1096, '1698651604701', 2023, 'Six', 'A', 'কথা বিশ্বাস ', 342072, 53, 'XXXXXXXXXX', '', 'Female', 'N/A', '342072@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1097, '1698137903373', 2023, 'Seven', 'A', 'স্বপ্ন বিশ্বাস', 248525, 39, 'XXXXXXXXXX', '', 'Male', 'N/A', '248525@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:58:42'),
('localhost', 1098, '1698890326243', 2023, 'Seven', 'A', 'বৃষ্টি বিশ্বাস', 32072, 41, 'XXXXXXXXXX', '', 'Female', 'N/A', '32072@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:25:22'),
('localhost', 1099, '1698320902428', 2023, 'Seven', 'A', 'মো: আলী আজম', 83278, 43, 'XXXXXXXXXX', '', 'Male', 'N/A', '83278@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-08 05:49:22'),
('localhost', 1100, '1698782813989', 2023, 'Seven', 'A', 'প্রলয় বিশ্বাস', 886474, 45, 'XXXXXXXXXX', '', 'Male', 'N/A', '886474@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:30:41'),
('localhost', 1101, '1698720394660', 2023, 'Six', 'A', 'মোঃ আবিদ ষিকদার ', 492555, 54, 'XXXXXXXXXX', '', 'Male', 'N/A', '492555@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:00:18'),
('localhost', 1102, '1698518303599', 2023, 'Six', 'A', 'মোঃ রাকিবুল ', 521856, 55, 'XXXXXXXXXX', '', 'Male', 'N/A', '521856@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:00:18'),
('localhost', 1103, '1698165044569', 2023, 'Six', 'A', 'মিথিলা মন্ডল ', 395827, 56, 'XXXXXXXXXX', '', 'Female', 'N/A', '395827@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1104, '1698561277341', 2023, 'Seven', 'A', 'পিযুষ বিশ্বাস', 877206, 50, 'XXXXXXXXXX', '', 'Male', 'N/A', '877206@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:49:18'),
('localhost', 2001, '1698540115538', 2023, 'Six', 'A', 'Sriti Akter', 89835, 57, 'XXXXXXXXXX', '', 'Female', 'N/A', '89835@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-26 08:44:04'),
('localhost', 2002, '1698163998343', 2023, 'Six', 'A', 'Khadijatul ', 788406, 58, 'XXXXXXXXXX', '', 'Female', 'N/A', '788406@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-26 08:44:35'),
('localhost', 2003, '1698641392397', 2023, 'Six', 'A', ' Mithila Biswash', 244067, 59, 'XXXXXXXXXX', '', 'Female', 'N/A', '244067@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-26 08:45:51'),
('localhost', 2004, '1698502217187', 2023, 'Six', 'A', 'Mollika Datto', 513978, 60, 'XXXXXXXXXX', '', 'Female', 'N/A', '513978@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-26 09:51:30'),
('localhost', 2005, '1698077836477', 2023, 'Six', 'A', 'Maria  Akter', 595033, 61, 'XXXXXXXXXX', '', 'Female', 'N/A', '595033@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 08:58:05'),
('localhost', 2006, '1698634835808', 2023, 'Six', 'A', 'Moumita Rani Das Tisa', 405873, 62, 'XXXXXXXXXX', '', 'Female', 'N/A', '405873@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 08:59:02'),
('localhost', 2007, '1698435390992', 2023, 'Six', 'A', 'Dighi Biswas', 401112, 63, 'XXXXXXXXXX', '', 'Female', 'N/A', '401112@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:00:03'),
('localhost', 2008, '1698628066904', 2023, 'Six', 'A', 'Mst. Aisa', 357124, 64, 'XXXXXXXXXX', '', 'Female', 'N/A', '357124@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:01:12'),
('localhost', 2009, '1698647281065', 2023, 'Six', 'A', 'Mst. Naima Akter Mim', 829137, 65, 'XXXXXXXXXX', '', 'Female', 'N/A', '829137@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:02:37'),
('localhost', 2010, '1698773985869', 2023, 'Six', 'A', 'Mun Islam', 616964, 66, 'XXXXXXXXXX', '', 'Female', 'N/A', '616964@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:03:11'),
('localhost', 2011, '1698775634131', 2023, 'Six', 'A', 'Mst. Airin Sultana', 343220, 67, 'XXXXXXXXXX', '', 'Female', 'N/A', '343220@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:04:06'),
('localhost', 2012, '1698799654190', 2023, 'Six', 'A', 'Takua', 608325, 68, 'XXXXXXXXXX', '', 'Female', 'N/A', '608325@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:04:24'),
('localhost', 2013, '1698788584601', 2023, 'Six', 'A', 'Zidni Islam Jerin', 313002, 69, 'XXXXXXXXXX', '', 'Female', 'N/A', '313002@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:04:56'),
('localhost', 2014, '1698736227662', 2023, 'Six', 'A', 'Hafsa Khatun', 255388, 70, 'XXXXXXXXXX', '', 'Female', 'N/A', '255388@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:05:33'),
('localhost', 2015, '1698661491015', 2023, 'Six', 'A', 'Megla Biswas', 41027, 71, 'XXXXXXXXXX', '', 'Female', 'N/A', '41027@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:05:56'),
('localhost', 2016, '1698083017244', 2023, 'Six', 'A', 'Nondini Malo', 231536, 72, 'XXXXXXXXXX', '', 'Female', 'N/A', '231536@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:07:33'),
('localhost', 2017, '1698718064853', 2023, 'Six', 'A', 'Anna Rani Das', 80847, 73, 'XXXXXXXXXX', '', 'Female', 'N/A', '80847@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:08:02'),
('localhost', 2018, '1698674776459', 2023, 'Six', 'A', 'Faiza ', 191935, 74, 'XXXXXXXXXX', '', 'Female', 'N/A', '191935@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:08:31'),
('localhost', 2019, '1698177695873', 2023, 'Six', 'A', 'Jannati Akter', 625929, 75, 'XXXXXXXXXX', '', 'Female', 'N/A', '625929@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:09:02'),
('localhost', 2020, '1698581808738', 2023, 'Six', 'A', 'Turki', 409848, 76, 'XXXXXXXXXX', '', 'Female', 'N/A', '409848@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:09:31'),
('localhost', 2021, '1698675619427', 2023, 'Six', 'A', 'Juthi Akter', 323905, 77, 'XXXXXXXXXX', '', 'Female', 'N/A', '323905@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:10:16'),
('localhost', 2022, '1698506249686', 2023, 'Six', 'A', 'Hanima', 553591, 78, 'XXXXXXXXXX', '', 'Female', 'N/A', '553591@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:10:45'),
('localhost', 2023, '1698235591232', 2023, 'Six', 'A', 'Mst.  Mim Akter ', 287125, 79, 'XXXXXXXXXX', '', 'Female', 'N/A', '287125@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:11:45'),
('localhost', 2024, '1698544621644', 2023, 'Six', 'A', 'Mst. Habiba  Akter', 154683, 80, 'XXXXXXXXXX', '', 'Female', 'N/A', '154683@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:12:20'),
('localhost', 2025, '1698754080197', 2023, 'Six', 'A', 'Nadira Parvin', 601504, 81, 'XXXXXXXXXX', '', 'Female', 'N/A', '601504@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:12:48'),
('localhost', 2026, '1698677602857', 2023, 'Six', 'A', 'Hafiza Sultana ', 304860, 82, 'XXXXXXXXXX', '', 'Female', 'N/A', '304860@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:13:38'),
('localhost', 2027, '1698406386695', 2023, 'Six', 'A', 'Annika ', 105789, 84, 'XXXXXXXXXX', '', 'Female', 'N/A', '105789@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:14:02'),
('localhost', 2028, '1698337658674', 2023, 'Six', 'A', 'Aisa Sultana Tapur', 614825, 85, 'XXXXXXXXXX', '', 'Female', 'N/A', '614825@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:14:47'),
('localhost', 2029, '1698803553269', 2023, 'Six', 'A', 'Krisna Sarkar', 17619, 86, 'XXXXXXXXXX', '', 'Female', 'N/A', '17619@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:15:22'),
('localhost', 2030, '1698295411225', 2023, 'Six', 'A', 'Lamia Sultana', 19934, 87, 'XXXXXXXXXX', '', 'Female', 'N/A', '19934@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:15:56'),
('localhost', 2031, '1698479650998', 2023, 'Six', 'A', 'Susuma Das', 402927, 89, 'XXXXXXXXXX', '', 'Female', 'N/A', '402927@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:16:23'),
('localhost', 2032, '1698059972119', 2023, 'Six', 'A', 'Mst. Rabeya Akter', 186548, 90, 'XXXXXXXXXX', '', 'Female', 'N/A', '186548@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:17:03'),
('localhost', 2033, '1698531993559', 2023, 'Six', 'A', 'Trisna ', 276810, 91, 'XXXXXXXXXX', '', 'Female', 'N/A', '276810@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:17:25'),
('localhost', 2034, '1698285768793', 2023, 'Six', 'A', 'Mst. Mariya Sultana', 261013, 93, 'XXXXXXXXXX', '', 'Female', 'N/A', '261013@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:18:29'),
('localhost', 2035, '1698442385224', 2023, 'Six', 'A', 'Asia Khatun', 233677, 95, 'XXXXXXXXXX', '', 'Female', 'N/A', '233677@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:18:56'),
('localhost', 2036, '1698867803651', 2023, 'Six', 'A', 'Mst. Hasora Khatun', 33897, 96, 'XXXXXXXXXX', '', 'Female', 'N/A', '33897@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:26:28'),
('localhost', 2037, '1698489876113', 2023, 'Six', 'A', 'Rotna', 673078, 98, 'XXXXXXXXXX', '', 'Female', 'N/A', '673078@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:26:55'),
('localhost', 2038, '1698192259150', 2023, 'Six', 'A', 'Toma Mondol', 789633, 100, 'XXXXXXXXXX', '', 'Female', 'N/A', '789633@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:27:19'),
('localhost', 2039, '1698374747993', 2023, 'Six', 'A', 'Maisa Akter', 592569, 101, 'XXXXXXXXXX', '', 'Female', 'N/A', '592569@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:27:45'),
('localhost', 2040, '1698103899638', 2023, 'Six', 'A', 'Muslima', 605081, 102, 'XXXXXXXXXX', '', 'Female', 'N/A', '605081@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:28:02'),
('localhost', 2041, '1698343168744', 2023, 'Six', 'A', 'Munni Khanom', 278465, 104, 'XXXXXXXXXX', '', 'Female', 'N/A', '278465@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:28:30'),
('localhost', 2042, '1698773070571', 2023, 'Six', 'A', 'Rima Akter', 622093, 105, 'XXXXXXXXXX', '', 'Female', 'N/A', '622093@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:29:01'),
('localhost', 2043, '1698619448195', 2023, 'Six', 'A', 'Naima ', 230651, 106, 'XXXXXXXXXX', '', 'Female', 'N/A', '230651@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:29:25'),
('localhost', 2044, '1698217154730', 2023, 'Six', 'A', 'Saima Akter Sathi', 461614, 107, 'XXXXXXXXXX', '', 'Female', 'N/A', '461614@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:29:56'),
('localhost', 2045, '1698646325968', 2023, 'Six', 'A', 'Moriom ', 53900, 109, 'XXXXXXXXXX', '', 'Female', 'N/A', '53900@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:30:36'),
('localhost', 2046, '1698465242281', 2023, 'Six', 'A', 'Rupa', 567872, 110, 'XXXXXXXXXX', '', 'Female', 'N/A', '567872@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:30:52'),
('localhost', 2047, '1698325184048', 2023, 'Six', 'A', 'Mst. Ummea Habiba', 597338, 111, 'XXXXXXXXXX', '', 'Female', 'N/A', '597338@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:31:31'),
('localhost', 2048, '1698299881366', 2023, 'Six', 'A', 'Chompa Khatun', 134797, 2, 'XXXXXXXXXX', '', 'Female', 'N/A', '134797@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:32:11'),
('localhost', 2049, '1698738939274', 2023, 'Six', 'A', 'Karima', 241952, 4, 'XXXXXXXXXX', '', 'Female', 'N/A', '241952@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:32:41'),
('localhost', 2050, '1698148306745', 2023, 'Six', 'A', 'Sarmin', 201564, 6, 'XXXXXXXXXX', '', 'Female', 'N/A', '201564@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:32:58'),
('localhost', 2051, '1698721140415', 2023, 'Six', 'A', 'Tasmim', 139041, 7, 'XXXXXXXXXX', '', 'Female', 'N/A', '139041@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:33:14'),
('localhost', 2052, '1698497140420', 2023, 'Six', 'A', 'Ivamoni', 18482, 9, 'XXXXXXXXXX', '', 'Female', 'N/A', '18482@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:33:51'),
('localhost', 2053, '1698921111153', 2023, 'Six', 'A', 'Arifa ', 380984, 11, 'XXXXXXXXXX', '', 'Female', 'N/A', '380984@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:34:14'),
('localhost', 2054, '1698134517482', 2023, 'Six', 'A', 'Sadia', 61221, 13, 'XXXXXXXXXX', '', 'Female', 'N/A', '61221@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:34:36'),
('localhost', 2055, '1698162667949', 2023, 'Six', 'A', 'Mst. Sadia Khanom', 21491, 15, 'XXXXXXXXXX', '', 'Female', 'N/A', '21491@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:35:07'),
('localhost', 2056, '1698268761255', 2023, 'Six', 'B', 'Amir Hamza', 268672, 6, 'XXXXXXXXXX', '', 'Male', 'N/A', '268672@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:26:27'),
('localhost', 2057, '1698474318927', 2023, 'Six', 'B', 'Md. Riazul Islam', 454693, 7, 'XXXXXXXXXX', '', 'Male', 'N/A', '454693@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:27:09'),
('localhost', 2058, '1698566208665', 2023, 'Six', 'B', 'Asikul Islam ', 331227, 8, 'XXXXXXXXXX', '', 'Male', 'N/A', '331227@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:27:40'),
('localhost', 2059, '1698616836159', 2023, 'Six', 'B', 'Rafiuzzaman ', 728596, 9, 'XXXXXXXXXX', '', 'Male', 'N/A', '728596@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:29:35'),
('localhost', 2060, '1698817021824', 2023, 'Six', 'B', 'Zia  Islam', 557551, 11, 'XXXXXXXXXX', '', 'Male', 'N/A', '557551@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:30:11'),
('localhost', 2061, '1698270309130', 2023, 'Six', 'B', 'Md. Esin ', 127447, 13, 'XXXXXXXXXX', '', 'Male', 'N/A', '127447@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:30:44'),
('localhost', 2062, '1698071175454', 2023, 'Six', 'B', 'Sakib Mina', 425495, 15, 'XXXXXXXXXX', '', 'Male', 'N/A', '425495@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:31:15'),
('localhost', 2063, '1698413506588', 2023, 'Six', 'B', 'Apurbo  Kundu', 670024, 17, 'XXXXXXXXXX', '', 'Male', 'N/A', '670024@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:31:45'),
('localhost', 2064, '1698274809611', 2023, 'Six', 'B', 'Amir  Hamza', 854462, 19, 'XXXXXXXXXX', '', 'Male', 'N/A', '854462@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:32:10'),
('localhost', 2065, '1698770159551', 2023, 'Six', 'B', 'Razon  Matubbor', 317709, 21, 'XXXXXXXXXX', '', 'Male', 'N/A', '317709@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:32:51'),
('localhost', 2066, '1698161439812', 2023, 'Six', 'B', 'Nahid Hasan ', 700726, 23, 'XXXXXXXXXX', '', 'Male', 'N/A', '700726@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:33:21'),
('localhost', 2067, '1698655428959', 2023, 'Six', 'B', 'Salman  Molla', 44492, 25, 'XXXXXXXXXX', '', 'Male', 'N/A', '44492@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:33:56'),
('localhost', 2068, '1698644194569', 2023, 'Six', 'B', 'Akash', 881719, 27, 'XXXXXXXXXX', '', 'Male', 'N/A', '881719@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:34:57'),
('localhost', 2069, '1698650451577', 2023, 'Six', 'B', 'Md. Sohan', 400244, 29, 'XXXXXXXXXX', '', 'Male', 'N/A', '400244@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:35:23'),
('localhost', 2070, '1698092123632', 2023, 'Six', 'B', 'Anik Sheikh ', 553109, 31, 'XXXXXXXXXX', '', 'Male', 'N/A', '553109@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:36:08'),
('localhost', 2071, '1698070911497', 2023, 'Six', 'B', 'Mikail  Hasan', 182649, 33, 'XXXXXXXXXX', '', 'Male', 'N/A', '182649@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:37:26'),
('localhost', 2072, '1698767516492', 2023, 'Six', 'B', 'Md. Pial Thakur ', 151624, 35, 'XXXXXXXXXX', '', 'Male', 'N/A', '151624@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:38:04'),
('localhost', 2073, '1698753114879', 2023, 'Six', 'B', 'Md. Fahim Montasir', 729509, 36, 'XXXXXXXXXX', '', 'Male', 'N/A', '729509@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:17:34'),
('localhost', 2074, '1698833018191', 2023, 'Six', 'B', 'Md. Nayim Mollik', 431417, 37, 'XXXXXXXXXX', '', 'Male', 'N/A', '431417@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:18:15'),
('localhost', 2075, '1698181140907', 2023, 'Six', 'B', 'Md. Rahul', 541874, 38, 'XXXXXXXXXX', '', 'Male', 'N/A', '541874@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:19:15'),
('localhost', 2076, '1698377889678', 2023, 'Six', 'B', 'Al-Amin', 3370, 39, 'XXXXXXXXXX', '', 'Male', 'N/A', '3370@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:20:12'),
('localhost', 2077, '1698651298205', 2023, 'Six', 'B', 'Jihadul  Islam', 612558, 40, 'XXXXXXXXXX', '', 'Male', 'N/A', '612558@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:20:39'),
('localhost', 2078, '1698501444649', 2023, 'Six', 'B', 'Md. Mahbub', 410290, 41, 'XXXXXXXXXX', '', 'Male', 'N/A', '410290@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:21:05'),
('localhost', 2079, '1698395960003', 2023, 'Six', 'B', 'Md. Mahmud Hossen', 419764, 42, 'XXXXXXXXXX', '', 'Male', 'N/A', '419764@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:21:48'),
('localhost', 2080, '1698252966135', 2023, 'Six', 'B', 'Partho Mondol', 675177, 43, 'XXXXXXXXXX', '', 'Male', 'N/A', '675177@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:22:37'),
('localhost', 2081, '1698432412394', 2023, 'Six', 'B', 'Nahidul   Islam', 676919, 44, 'XXXXXXXXXX', '', 'Male', 'N/A', '676919@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:23:28'),
('localhost', 2082, '1698409392280', 2023, 'Six', 'B', 'Mahidul  Islam', 166693, 45, 'XXXXXXXXXX', '', 'Male', 'N/A', '166693@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:23:54'),
('localhost', 2083, '1698399602029', 2023, 'Six', 'B', 'Riad Hossen', 752665, 46, 'XXXXXXXXXX', '', 'Male', 'N/A', '752665@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:24:29'),
('localhost', 2084, '1698268787670', 2023, 'Six', 'B', 'Md. Mafuj Mridha', 755870, 47, 'XXXXXXXXXX', '', 'Male', 'N/A', '755870@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:25:28'),
('localhost', 2085, '1698684842673', 2023, 'Six', 'B', 'Salman Farsi', 606663, 48, 'XXXXXXXXXX', '', 'Male', 'N/A', '606663@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:26:03'),
('localhost', 2086, '1698428252684', 2023, 'Six', 'B', 'Md. Rabbi', 271155, 49, 'XXXXXXXXXX', '', 'Male', 'N/A', '271155@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:26:28'),
('localhost', 2087, '1698257067666', 2023, 'Six', 'B', 'Md. Rakib', 255838, 50, 'XXXXXXXXXX', '', 'Male', 'N/A', '255838@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:27:01'),
('localhost', 2088, '1698439947472', 2023, 'Six', 'B', 'Moniruzzaman Munna', 718161, 51, 'XXXXXXXXXX', '', 'Male', 'N/A', '718161@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:27:51'),
('localhost', 2089, '1698792223795', 2023, 'Six', 'B', 'Md. Rony Sheikh', 845913, 52, 'XXXXXXXXXX', '', 'Male', 'N/A', '845913@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:28:32'),
('localhost', 2090, '1698812499993', 2023, 'Six', 'B', 'Bayzid Sheikh', 624658, 53, 'XXXXXXXXXX', '', 'Male', 'N/A', '624658@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:29:27'),
('localhost', 2091, '1698533245353', 2023, 'Six', 'B', 'Md. jonayed', 817965, 54, 'XXXXXXXXXX', '', 'Male', 'N/A', '817965@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:29:55'),
('localhost', 2092, '1698426247499', 2023, 'Six', 'B', 'Md. Noman', 220237, 55, 'XXXXXXXXXX', '', 'Male', 'N/A', '220237@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:30:21'),
('localhost', 2093, '1698192642175', 2023, 'Six', 'B', 'Siam Sheikh', 836094, 56, 'XXXXXXXXXX', '', 'Male', 'N/A', '836094@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:31:11'),
('localhost', 2094, '1698610491512', 2023, 'Six', 'B', 'Sayedul  Islam', 262921, 57, 'XXXXXXXXXX', '', 'Male', 'N/A', '262921@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:46:20'),
('localhost', 2095, '1698459967133', 2023, 'Six', 'B', 'Md. Nahid ', 417318, 58, 'XXXXXXXXXX', '', 'Male', 'N/A', '417318@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:46:45'),
('localhost', 2096, '1698329392320', 2023, 'Six', 'B', 'Md. Sazzad Sheikh', 837481, 59, 'XXXXXXXXXX', '', 'Male', 'N/A', '837481@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:47:17'),
('localhost', 2097, '1698893530540', 2023, 'Six', 'B', 'Md. Nazim Biswas', 184742, 60, 'XXXXXXXXXX', '', 'Male', 'N/A', '184742@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:47:51'),
('localhost', 2098, '1698077677104', 2023, 'Six', 'B', 'Md. Sakib Sheikh', 192120, 61, 'XXXXXXXXXX', '', 'Male', 'N/A', '192120@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:49:04'),
('localhost', 2099, '1698179573925', 2023, 'Six', 'B', 'Abuzor Gifari', 96309, 62, 'XXXXXXXXXX', '', 'Male', 'N/A', '96309@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:49:46'),
('localhost', 2100, '1698880860741', 2023, 'Six', 'B', 'Sajedul Islam', 578893, 63, 'XXXXXXXXXX', '', 'Male', 'N/A', '578893@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:50:16'),
('localhost', 2101, '1698391483865', 2023, 'Six', 'B', 'Indrozit', 697748, 64, 'XXXXXXXXXX', '', 'Male', 'N/A', '697748@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:50:39'),
('localhost', 2102, '1698680126737', 2023, 'Six', 'B', 'Biplob Fakir ', 123995, 65, 'XXXXXXXXXX', '', 'Male', 'N/A', '123995@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:51:06'),
('localhost', 2103, '1698539688003', 2023, 'Six', 'B', 'Baharul  Islam', 5709, 66, 'XXXXXXXXXX', '', 'Male', 'N/A', '5709@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:51:40'),
('localhost', 2104, '1698641220045', 2023, 'Six', 'B', 'Md. Sayad', 262349, 67, 'XXXXXXXXXX', '', 'Male', 'N/A', '262349@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:52:29'),
('localhost', 2105, '1698199045603', 2023, 'Six', 'B', 'Abu Taleb', 702823, 68, 'XXXXXXXXXX', '', 'Male', 'N/A', '702823@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:52:52'),
('localhost', 2106, '1698569640310', 2023, 'Six', 'B', 'Samim Khondokar', 808398, 69, 'XXXXXXXXXX', '', 'Male', 'N/A', '808398@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:53:19'),
('localhost', 2107, '1698324010460', 2023, 'Six', 'B', 'Sohag Sheikh', 766271, 70, 'XXXXXXXXXX', '', 'Male', 'N/A', '766271@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:54:05'),
('localhost', 2108, '1698897744863', 2023, 'Six', 'B', 'Khondokar Redoan', 832780, 71, 'XXXXXXXXXX', '', 'Male', 'N/A', '832780@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:54:37'),
('localhost', 2109, '1698087417390', 2023, 'Six', 'B', 'Jobayer Hossen', 524071, 72, 'XXXXXXXXXX', '', 'Male', 'N/A', '524071@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:55:07'),
('localhost', 2110, '1698158577918', 2023, 'Six', 'B', 'Tamim Sheikh', 460375, 73, 'XXXXXXXXXX', '', 'Male', 'N/A', '460375@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:55:51'),
('localhost', 2111, '1698161769351', 2023, 'Six', 'B', 'Jaber Matubbar', 643452, 74, 'XXXXXXXXXX', '', 'Male', 'N/A', '643452@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:56:38'),
('localhost', 2112, '1698261102474', 2023, 'Six', 'B', 'Md. Ismail', 774840, 75, 'XXXXXXXXXX', '', 'Male', 'N/A', '774840@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:57:01'),
('localhost', 2113, '1698792817985', 2023, 'Six', 'B', 'Tamim Bapari', 242785, 76, 'XXXXXXXXXX', '', 'Male', 'N/A', '242785@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:57:26'),
('localhost', 2114, '1698886323894', 2023, 'Six', 'B', 'Md. Mazharul', 249478, 77, 'XXXXXXXXXX', '', 'Male', 'N/A', '249478@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:58:36'),
('localhost', 2115, '1698722300263', 2023, 'Seven', 'A', 'Mohona', 426794, 32, 'XXXXXXXXXX', '', 'Female', 'N/A', '426794@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:00:32'),
('localhost', 2116, '1698635543200', 2023, 'Seven', 'A', 'Tauhida', 599417, 33, 'XXXXXXXXXX', '', 'Female', 'N/A', '599417@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:01:00'),
('localhost', 2117, '1698572144084', 2023, 'Seven', 'A', 'Eva', 49856, 34, 'XXXXXXXXXX', '', 'Female', 'N/A', '49856@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:01:56'),
('localhost', 2118, '1698838993291', 2023, 'Seven', 'A', 'Ima Khanom', 266776, 35, 'XXXXXXXXXX', '', 'Female', 'N/A', '266776@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:02:30'),
('localhost', 2119, '1698550117037', 2023, 'Seven', 'A', 'Jui', 195566, 37, 'XXXXXXXXXX', '', 'Female', 'N/A', '195566@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:02:47'),
('localhost', 2120, '1698700925510', 2023, 'Seven', 'A', 'Dola', 869983, 38, 'XXXXXXXXXX', '', 'Female', 'N/A', '869983@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:03:05'),
('localhost', 2121, '1698852967063', 2023, 'Seven', 'A', 'Rabea', 441678, 40, 'XXXXXXXXXX', '', 'Female', 'N/A', '441678@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:03:32'),
('localhost', 2122, '1698406812107', 2023, 'Seven', 'A', 'Suborna ', 344926, 42, 'XXXXXXXXXX', '', 'Female', 'N/A', '344926@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:03:52'),
('localhost', 2123, '1698830149784', 2023, 'Seven', 'A', 'Marjia', 274074, 44, 'XXXXXXXXXX', '', 'Female', 'N/A', '274074@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:04:12'),
('localhost', 2124, '1698209879961', 2023, 'Seven', 'A', 'Borsa Debnath', 642336, 46, 'XXXXXXXXXX', '', 'Female', 'N/A', '642336@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:04:39'),
('localhost', 2125, '1698070807035', 2023, 'Seven', 'A', 'Jannatul Modina', 471715, 47, 'XXXXXXXXXX', '', 'Female', 'N/A', '471715@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:05:17'),
('localhost', 2126, '1698609834227', 2023, 'Seven', 'A', 'Kanij Fatema', 892456, 48, 'XXXXXXXXXX', '', 'Female', 'N/A', '892456@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:06:00'),
('localhost', 2127, '1698512693371', 2023, 'Seven', 'A', 'Nurtaz', 585806, 49, 'XXXXXXXXXX', '', 'Female', 'N/A', '585806@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:06:18'),
('localhost', 2128, '1698083039367', 2023, 'Seven', 'A', 'Khadija', 222938, 51, 'XXXXXXXXXX', '', 'Female', 'N/A', '222938@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:16:25'),
('localhost', 2129, '1698660255247', 2023, 'Seven', 'A', 'Ummea Habiba', 635032, 52, 'XXXXXXXXXX', '', 'Female', 'N/A', '635032@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:16:51'),
('localhost', 2130, '1698652452329', 2023, 'Seven', 'A', 'Mst Samima', 316368, 53, 'XXXXXXXXXX', '', 'Female', 'N/A', '316368@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:19:03'),
('localhost', 2131, '1698599115915', 2023, 'Seven', 'A', 'Samima', 244419, 54, 'XXXXXXXXXX', '', 'Female', 'N/A', '244419@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:19:22'),
('localhost', 2132, '1698486190482', 2023, 'Seven', 'A', 'Takua', 694896, 55, 'XXXXXXXXXX', '', 'Female', 'N/A', '694896@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:21:00'),
('localhost', 2133, '1698276577277', 2023, 'Seven', 'A', 'Priti Sultana', 552540, 56, 'XXXXXXXXXX', '', 'Female', 'N/A', '552540@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:21:43'),
('localhost', 2134, '1698345298989', 2023, 'Seven', 'A', 'Ismatara Irin', 893161, 57, 'XXXXXXXXXX', '', 'Female', 'N/A', '893161@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:22:48'),
('localhost', 2135, '1698451284225', 2023, 'Seven', 'A', 'Meher Abjun Khanom', 569451, 58, 'XXXXXXXXXX', '', 'Female', 'N/A', '569451@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:23:29'),
('localhost', 2136, '1698321490414', 2023, 'Seven', 'A', 'Asia', 236670, 59, 'XXXXXXXXXX', '', 'Female', 'N/A', '236670@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:23:46'),
('localhost', 2137, '1698690716134', 2023, 'Seven', 'A', 'Sakiba Islam', 815121, 60, 'XXXXXXXXXX', '', 'Female', 'N/A', '815121@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:24:09'),
('localhost', 2138, '1698076572387', 2023, 'Seven', 'A', 'Tora Rani', 106535, 61, 'XXXXXXXXXX', '', 'Female', 'N/A', '106535@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:24:35'),
('localhost', 2139, '1698596040227', 2023, 'Seven', 'A', 'Lamia Sultana', 466802, 62, 'XXXXXXXXXX', '', 'Female', 'N/A', '466802@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:25:01'),
('localhost', 2140, '1698275252180', 2023, 'Seven', 'A', 'Firoja', 293307, 64, 'XXXXXXXXXX', '', 'Female', 'N/A', '293307@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:25:40'),
('localhost', 2141, '1698194968743', 2023, 'Seven', 'A', 'Sumaia', 695329, 66, 'XXXXXXXXXX', '', 'Female', 'N/A', '695329@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:26:18'),
('localhost', 2142, '1698714112645', 2023, 'Seven', 'A', 'Mariya Islam', 149753, 68, 'XXXXXXXXXX', '', 'Female', 'N/A', '149753@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:26:44'),
('localhost', 2143, '1698252505315', 2023, 'Seven', 'A', 'Kona Biswas', 129561, 70, 'XXXXXXXXXX', '', 'Female', 'N/A', '129561@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:28:06'),
('localhost', 2144, '1698181033774', 2023, 'Seven', 'A', 'Mursalina', 562534, 72, 'XXXXXXXXXX', '', 'Female', 'N/A', '562534@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:28:26'),
('localhost', 2145, '1698316563615', 2023, 'Seven', 'A', 'Priya', 183470, 74, 'XXXXXXXXXX', '', 'Female', 'N/A', '183470@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:28:47'),
('localhost', 2146, '1698533881507', 2023, 'Seven', 'A', 'Saima Akter', 822890, 76, 'XXXXXXXXXX', '', 'Female', 'N/A', '822890@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:29:15'),
('localhost', 2147, '1698330241301', 2023, 'Seven', 'A', 'Suraiya Akter', 171424, 78, 'XXXXXXXXXX', '', 'Female', 'N/A', '171424@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:29:42'),
('localhost', 2148, '1698409691353', 2023, 'Seven', 'A', 'Riya ', 593245, 80, 'XXXXXXXXXX', '', 'Female', 'N/A', '593245@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:31:32'),
('localhost', 2149, '1698847916679', 2023, 'Seven', 'A', 'Monika ', 406451, 82, 'XXXXXXXXXX', '', 'Female', 'N/A', '406451@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:42:09'),
('localhost', 2150, '1698420346181', 2023, 'Seven', 'A', 'Jannatul ', 703847, 84, 'XXXXXXXXXX', '', 'Female', 'N/A', '703847@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:42:37'),
('localhost', 2151, '1698419031034', 2023, 'Seven', 'A', 'Puspita Malo', 475000, 86, 'XXXXXXXXXX', '', 'Female', 'N/A', '475000@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:44:04'),
('localhost', 2152, '1698728098747', 2023, 'Seven', 'A', 'Joti Kundu', 644472, 88, 'XXXXXXXXXX', '', 'Female', 'N/A', '644472@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:44:36'),
('localhost', 2153, '1698886045723', 2023, 'Seven', 'A', 'Sagorika ', 26391, 90, 'XXXXXXXXXX', '', 'Female', 'N/A', '26391@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:45:14'),
('localhost', 2154, '1698261707909', 2023, 'Seven', 'A', 'Marjia ', 670307, 92, 'XXXXXXXXXX', '', 'Female', 'N/A', '670307@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:45:40'),
('localhost', 2155, '1698191390678', 2023, 'Seven', 'A', 'Tithi Rani ', 389514, 94, 'XXXXXXXXXX', '', 'Female', 'N/A', '389514@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:46:11'),
('localhost', 2156, '1698112948086', 2023, 'Seven', 'A', 'Suraiya Akter', 764706, 96, 'XXXXXXXXXX', '', 'Female', 'N/A', '764706@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:46:59'),
('localhost', 2157, '1698442896302', 2023, 'Seven', 'A', 'Srabonti ', 16572, 98, 'XXXXXXXXXX', '', 'Female', 'N/A', '16572@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:47:24'),
('localhost', 2158, '1698675782803', 2023, 'Seven', 'A', 'Fatema ', 61042, 100, 'XXXXXXXXXX', '', 'Female', 'N/A', '61042@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:47:56'),
('localhost', 2159, '1698605379166', 2023, 'Seven', 'A', 'Sultana Parvin', 514023, 102, 'XXXXXXXXXX', '', 'Female', 'N/A', '514023@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:49:03'),
('localhost', 2160, '1698580668873', 2023, 'Seven', 'A', 'Amena', 327797, 104, 'XXXXXXXXXX', '', 'Female', 'N/A', '327797@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:49:56'),
('localhost', 2161, '1698702420989', 2023, 'Seven', 'A', 'Nondita Sarkar', 123814, 106, 'XXXXXXXXXX', '', 'Female', 'N/A', '123814@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:50:26');
INSERT INTO `students` (`domain`, `ID`, `student_uuid`, `session`, `class`, `section`, `name`, `student_id`, `roll`, `reg`, `birth_date`, `gender`, `blood_group`, `email`, `phone`, `telephone`, `father_name`, `mother_name`, `address`, `religion`, `admission_date`, `hobbies`, `avatar`, `fb_link`, `password`, `quote`, `at_date`) VALUES
('localhost', 2162, '1698864081167', 2023, 'Seven', 'A', 'Laboni ', 563164, 108, 'XXXXXXXXXX', '', 'Female', 'N/A', '563164@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:50:59'),
('localhost', 2163, '1698475739079', 2023, 'Seven', 'B', 'Arko Roy', 356335, 93, 'XXXXXXXXXX', '', 'Female', 'N/A', '356335@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:52:40'),
('localhost', 2164, '1698081356875', 2023, 'Seven', 'B', 'Poros Kumar Sarkar', 246438, 94, 'XXXXXXXXXX', '', 'Female', 'N/A', '246438@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:53:06'),
('localhost', 2165, '1698175115930', 2023, 'Seven', 'B', 'Niloy Kumar Das', 481638, 95, 'XXXXXXXXXX', '', 'Female', 'N/A', '481638@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:53:41'),
('localhost', 2166, '1698753519237', 2023, 'Seven', 'B', 'Abir Islam', 331540, 96, 'XXXXXXXXXX', '', 'Female', 'N/A', '331540@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:54:01'),
('localhost', 2167, '1698676639775', 2023, 'Seven', 'B', 'Sottojit Kumar Biswas', 27230, 97, 'XXXXXXXXXX', '', 'Female', 'N/A', '27230@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:54:39'),
('localhost', 2168, '1698471034575', 2023, 'Seven', 'B', 'Md. Saiful Islam', 298873, 98, 'XXXXXXXXXX', '', 'Female', 'N/A', '298873@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:55:22'),
('localhost', 2169, '1698628529535', 2023, 'Seven', 'B', 'Siam Hossen Sourove', 442663, 99, 'XXXXXXXXXX', '', 'Female', 'N/A', '442663@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:57:44'),
('localhost', 2170, '1698431287207', 2023, 'Seven', 'B', 'Tasib Ahmed', 659932, 100, 'XXXXXXXXXX', '', 'Female', 'N/A', '659932@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:58:11'),
('localhost', 2171, '1698530018416', 2023, 'Seven', 'B', 'Munna Biswas', 519530, 101, 'XXXXXXXXXX', '', 'Male', 'N/A', '519530@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:04:13'),
('localhost', 2172, '1698430645821', 2023, 'Seven', 'B', 'Md. Nafi Alom', 658722, 102, 'XXXXXXXXXX', '', 'Male', 'N/A', '658722@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:04:45'),
('localhost', 2173, '1698404070491', 2023, 'Seven', 'B', 'Jamil Islam', 891289, 103, 'XXXXXXXXXX', '', 'Male', 'N/A', '891289@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:05:51'),
('localhost', 2174, '1698527424531', 2023, 'Seven', 'B', 'Sawon ', 698193, 104, 'XXXXXXXXXX', '', 'Male', 'N/A', '698193@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:06:12'),
('localhost', 2175, '1698571659519', 2023, 'Seven', 'B', 'Sabbir Ahmed', 630165, 105, 'XXXXXXXXXX', '', 'Male', 'N/A', '630165@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:06:41'),
('localhost', 2176, '1698546909072', 2023, 'Seven', 'B', 'Noyon Molla', 629112, 106, 'XXXXXXXXXX', '', 'Male', 'N/A', '629112@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:07:01'),
('localhost', 2177, '1698665025524', 2023, 'Seven', 'B', 'Loknath Acharjo', 181153, 107, 'XXXXXXXXXX', '', 'Male', 'N/A', '181153@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:07:39'),
('localhost', 2178, '1698938246294', 2023, 'Seven', 'B', 'Jakaria Mahmud', 4867, 108, 'XXXXXXXXXX', '', 'Male', 'N/A', '4867@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:08:02'),
('localhost', 2179, '1698599952676', 2023, 'Seven', 'B', 'Apon Sheikh', 759278, 109, 'XXXXXXXXXX', '', 'Male', 'N/A', '759278@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:09:02'),
('localhost', 2180, '1698396862913', 2023, 'Seven', 'B', 'Sazzad', 561402, 110, 'XXXXXXXXXX', '', 'Male', 'N/A', '561402@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:09:27'),
('localhost', 2181, '1698855812166', 2023, 'Seven', 'B', 'Sakibul Hasan ', 398194, 111, 'XXXXXXXXXX', '', 'Male', 'N/A', '398194@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:10:04'),
('localhost', 2182, '1698412986735', 2023, 'Seven', 'B', 'Anik Roy', 765556, 112, 'XXXXXXXXXX', '', 'Male', 'N/A', '765556@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:14:08'),
('localhost', 2183, '1698813582526', 2023, 'Seven', 'B', 'Md. Arafat', 776822, 113, 'XXXXXXXXXX', '', 'Male', 'N/A', '776822@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:15:18'),
('localhost', 2184, '1698106934961', 2023, 'Seven', 'B', 'Md. Alamin', 303610, 114, 'XXXXXXXXXX', '', 'Male', 'N/A', '303610@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:15:42'),
('localhost', 2185, '1698560296919', 2023, 'Seven', 'B', 'Sourove', 582537, 115, 'XXXXXXXXXX', '', 'Male', 'N/A', '582537@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:16:35'),
('localhost', 2186, '1698576287362', 2023, 'Seven', 'B', 'Md. Tauhid Islam', 330668, 116, 'XXXXXXXXXX', '', 'Male', 'N/A', '330668@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:17:39'),
('localhost', 2187, '1698284341375', 2023, 'Seven', 'B', 'Soriful Fakir', 421743, 117, 'XXXXXXXXXX', '', 'Male', 'N/A', '421743@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:18:08'),
('localhost', 2188, '1698655638625', 2023, 'Seven', 'B', 'Sonjoy Kumar Bala', 362546, 118, 'XXXXXXXXXX', '', 'Male', 'N/A', '362546@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:18:51'),
('localhost', 2189, '1698777129354', 2023, 'Seven', 'B', 'Siam Mia', 224856, 119, 'XXXXXXXXXX', '', 'Male', 'N/A', '224856@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:20:51'),
('localhost', 2190, '1698861336275', 2023, 'Seven', 'B', 'Munna Munsi', 382299, 120, 'XXXXXXXXXX', '', 'Male', 'N/A', '382299@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:21:23'),
('localhost', 2191, '1698433641928', 2023, 'Seven', 'B', 'Utpol Kumar', 217517, 121, 'XXXXXXXXXX', '', 'Male', 'N/A', '217517@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:24:02'),
('localhost', 2192, '1698055029003', 2023, 'Seven', 'B', 'Md. Foisal Hossen', 362271, 122, 'XXXXXXXXXX', '', 'Male', 'N/A', '362271@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:24:42'),
('localhost', 2193, '1698747294453', 2023, 'Seven', 'B', 'Santo Mollik', 326473, 123, 'XXXXXXXXXX', '', 'Male', 'N/A', '326473@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:25:11'),
('localhost', 2194, '1698331997183', 2023, 'Seven', 'B', 'Md. Rabbi ', 444729, 124, 'XXXXXXXXXX', '', 'Male', 'N/A', '444729@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:25:42'),
('localhost', 2195, '1698274448914', 2023, 'Seven', 'B', 'Md. Sakaut Sheikh', 149265, 125, 'XXXXXXXXXX', '', 'Male', 'N/A', '149265@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:28:15'),
('localhost', 2196, '1698152966327', 2023, 'Seven', 'B', ' Md. Rabbi Hossen', 752617, 126, 'XXXXXXXXXX', '', 'Male', 'N/A', '752617@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:28:54'),
('localhost', 2197, '1698875689869', 2023, 'Seven', 'B', 'Md. Mustak Molla', 152565, 127, 'XXXXXXXXXX', '', 'Male', 'N/A', '152565@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:29:21'),
('localhost', 2198, '1698629237519', 2023, 'Seven', 'B', 'Sajid', 739650, 128, 'XXXXXXXXXX', '', 'Male', 'N/A', '739650@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:29:57'),
('localhost', 2199, '1698732565248', 2023, 'Seven', 'B', 'Dipanto Sarkar', 672373, 129, 'XXXXXXXXXX', '', 'Male', 'N/A', '672373@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:31:02'),
('localhost', 2200, '1698769996131', 2023, 'Seven', 'B', 'Md. Rakib Sheikh', 413248, 130, 'XXXXXXXXXX', '', 'Male', 'N/A', '413248@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:31:49'),
('localhost', 2201, '1698263618407', 2023, 'Seven', 'B', 'Md. Eamin Biswas', 696821, 131, 'XXXXXXXXXX', '', 'Male', 'N/A', '696821@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:32:20'),
('localhost', 2202, '1698487710357', 2023, 'Seven', 'B', 'Abdur Rahman', 256842, 132, 'XXXXXXXXXX', '', 'Male', 'N/A', '256842@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:33:00'),
('localhost', 2203, '1698441100928', 2023, 'Seven', 'B', 'Md. Asik', 268688, 133, 'XXXXXXXXXX', '', 'Male', 'N/A', '268688@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:33:29'),
('localhost', 2204, '1698646381484', 2023, 'Seven', 'B', 'Ibrahim', 341745, 134, 'XXXXXXXXXX', '', 'Male', 'N/A', '341745@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:33:49'),
('localhost', 2205, '1698532702563', 2023, 'Seven', 'B', 'Bayzid', 268997, 135, 'XXXXXXXXXX', '', 'Male', 'N/A', '268997@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:34:08'),
('localhost', 2206, '1698246293150', 2023, 'Eight', 'A', 'Saima  Islam Simi', 201183, 2, 'XXXXXXXXXX', '', 'Female', 'N/A', '201183@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 04:52:57'),
('localhost', 2207, '1698270406472', 2023, 'Eight', 'A', 'Jannati Islam  Mohona', 77363, 3, 'XXXXXXXXXX', '', 'Female', 'N/A', '77363@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 04:53:32'),
('localhost', 2208, '1698632611128', 2023, 'Eight', 'A', 'Jannatul  Ummea Saima', 497521, 4, 'XXXXXXXXXX', '', 'Female', 'N/A', '497521@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 04:54:09'),
('localhost', 2209, '1698402257262', 2023, 'Eight', 'A', 'Simu Akter', 355216, 5, 'XXXXXXXXXX', '', 'Female', 'N/A', '355216@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 04:54:47'),
('localhost', 2210, '1698127118498', 2023, 'Eight', 'A', 'Takia Tammi Jui', 604931, 6, 'XXXXXXXXXX', '', 'Female', 'N/A', '604931@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 04:55:28'),
('localhost', 2211, '1698521207221', 2023, 'Eight', 'A', 'Sifa  Sultana', 565365, 7, 'XXXXXXXXXX', '', 'Female', 'N/A', '565365@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 04:56:01'),
('localhost', 2212, '1698869473878', 2023, 'Eight', 'A', 'Masura  Akter', 204893, 8, 'XXXXXXXXXX', '', 'Female', 'N/A', '204893@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 04:56:27'),
('localhost', 2213, '1698872080883', 2023, 'Eight', 'A', 'Faria  Islam Rafa', 166564, 9, 'XXXXXXXXXX', '', 'Female', 'N/A', '166564@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 04:56:59'),
('localhost', 2214, '1698258992031', 2023, 'Eight', 'A', 'Aisa  Akter', 729984, 10, 'XXXXXXXXXX', '', 'Female', 'N/A', '729984@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 04:57:28'),
('localhost', 2215, '1698860341355', 2023, 'Eight', 'A', 'Annika ', 641898, 11, 'XXXXXXXXXX', '', 'Female', 'N/A', '641898@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 04:58:00'),
('localhost', 2216, '1698224967423', 2023, 'Eight', 'A', 'Tithi Debnath', 696274, 12, 'XXXXXXXXXX', '', 'Female', 'N/A', '696274@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 04:58:24'),
('localhost', 2217, '1698874610605', 2023, 'Eight', 'A', 'Sumaia Akter', 491806, 13, 'XXXXXXXXXX', '', 'Female', 'N/A', '491806@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 04:58:56'),
('localhost', 2218, '1698473612996', 2023, 'Eight', 'A', 'Moriom  Sultana', 352372, 14, 'XXXXXXXXXX', '', 'Female', 'N/A', '352372@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 04:59:30'),
('localhost', 2219, '1698271613909', 2023, 'Eight', 'A', 'Bithi Acharjo', 757919, 15, 'XXXXXXXXXX', '', 'Female', 'N/A', '757919@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:00:06'),
('localhost', 2220, '1698724641141', 2023, 'Eight', 'A', 'Sanjida  Islam', 632406, 16, 'XXXXXXXXXX', '', 'Female', 'N/A', '632406@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:00:39'),
('localhost', 2221, '1698754432940', 2023, 'Eight', 'A', 'Mahmuda', 682801, 17, 'XXXXXXXXXX', '', 'Female', 'N/A', '682801@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:01:00'),
('localhost', 2222, '1698429269404', 2023, 'Eight', 'A', 'Oisi   Saha', 355053, 18, 'XXXXXXXXXX', '', 'Female', 'N/A', '355053@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:03:05'),
('localhost', 2223, '1698109677796', 2023, 'Eight', 'A', 'Taskia Sultana', 874652, 19, 'XXXXXXXXXX', '', 'Female', 'N/A', '874652@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:03:29'),
('localhost', 2224, '1698674405543', 2023, 'Eight', 'A', 'Eti', 630940, 20, 'XXXXXXXXXX', '', 'Female', 'N/A', '630940@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:11:48'),
('localhost', 2225, '1698450241320', 2023, 'Eight', 'A', 'Arifa ', 622313, 21, 'XXXXXXXXXX', '', 'Female', 'N/A', '622313@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:12:10'),
('localhost', 2226, '1698763212757', 2023, 'Eight', 'A', 'Asa  Goldar', 809737, 22, 'XXXXXXXXXX', '', 'Female', 'N/A', '809737@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:12:38'),
('localhost', 2227, '1698282509612', 2023, 'Eight', 'A', 'Bulbuli', 651018, 23, 'XXXXXXXXXX', '', 'Female', 'N/A', '651018@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:12:58'),
('localhost', 2228, '1698366405874', 2023, 'Eight', 'A', 'Dola  Parvin', 456948, 24, 'XXXXXXXXXX', '', 'Female', 'N/A', '456948@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:13:23'),
('localhost', 2229, '1698760773426', 2023, 'Eight', 'A', 'Suraia  Akter', 477296, 25, 'XXXXXXXXXX', '', 'Female', 'N/A', '477296@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:14:11'),
('localhost', 2230, '1698398897739', 2023, 'Eight', 'A', 'Rubaia Akter Badhon', 253022, 26, 'XXXXXXXXXX', '', 'Female', 'N/A', '253022@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:14:41'),
('localhost', 2231, '1698449010191', 2023, 'Eight', 'A', 'Bristi  Akter', 205032, 27, 'XXXXXXXXXX', '', 'Female', 'N/A', '205032@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:15:10'),
('localhost', 2232, '1698330563241', 2023, 'Eight', 'A', 'Laboni Akter', 207563, 28, 'XXXXXXXXXX', '', 'Female', 'N/A', '207563@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:16:04'),
('localhost', 2233, '1698257236027', 2023, 'Eight', 'A', 'Nondini  Biswas', 872438, 29, 'XXXXXXXXXX', '', 'Female', 'N/A', '872438@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:16:50'),
('localhost', 2234, '1698768343566', 2023, 'Eight', 'A', 'Ilma', 420944, 30, 'XXXXXXXXXX', '', 'Female', 'N/A', '420944@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:17:17'),
('localhost', 2235, '1698332392441', 2023, 'Eight', 'A', 'Sadia  Parvin', 4095, 31, 'XXXXXXXXXX', '', 'Female', 'N/A', '4095@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:17:45'),
('localhost', 2236, '1698391002178', 2023, 'Eight', 'A', 'Farjana  Akter', 706714, 32, 'XXXXXXXXXX', '', 'Female', 'N/A', '706714@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:18:08'),
('localhost', 2237, '1698061101864', 2023, 'Eight', 'A', 'Samima ', 701241, 33, 'XXXXXXXXXX', '', 'Female', 'N/A', '701241@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:18:33'),
('localhost', 2238, '1698625645445', 2023, 'Eight', 'A', 'Asa Akter', 246725, 34, 'XXXXXXXXXX', '', 'Female', 'N/A', '246725@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:19:10'),
('localhost', 2239, '1698438002829', 2023, 'Eight', 'A', 'Suraia', 536974, 35, 'XXXXXXXXXX', '', 'Female', 'N/A', '536974@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:19:27'),
('localhost', 2240, '1698062055186', 2023, 'Eight', 'A', 'Maria  Khatun', 333777, 36, 'XXXXXXXXXX', '', 'Female', 'N/A', '333777@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:19:57'),
('localhost', 2241, '1698461933208', 2023, 'Eight', 'A', 'Sonali  Akter', 78248, 37, 'XXXXXXXXXX', '', 'Female', 'N/A', '78248@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:22:06'),
('localhost', 2242, '1698451381923', 2023, 'Eight', 'A', 'Mst. Arifa ', 81385, 38, 'XXXXXXXXXX', '', 'Female', 'N/A', '81385@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:22:58'),
('localhost', 2243, '1698216562377', 2023, 'Eight', 'A', 'Sumaia Akter', 159049, 39, 'XXXXXXXXXX', '', 'Female', 'N/A', '159049@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:23:34'),
('localhost', 2244, '1698159160224', 2023, 'Eight', 'A', 'Soma ', 799031, 40, 'XXXXXXXXXX', '', 'Female', 'N/A', '799031@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:23:54'),
('localhost', 2245, '1698368370606', 2023, 'Eight', 'A', 'Tasmin', 102062, 41, 'XXXXXXXXXX', '', 'Female', 'N/A', '102062@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:24:16'),
('localhost', 2246, '1698258775011', 2023, 'Eight', 'A', 'Jui ', 782015, 42, 'XXXXXXXXXX', '', 'Female', 'N/A', '782015@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:24:39'),
('localhost', 2247, '1698933254140', 2023, 'Eight', 'A', 'Mahbuba  Tasmin', 221631, 43, 'XXXXXXXXXX', '', 'Female', 'N/A', '221631@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:25:05'),
('localhost', 2248, '1698735363271', 2023, 'Eight', 'A', 'Bristi  Parvin', 577212, 44, 'XXXXXXXXXX', '', 'Female', 'N/A', '577212@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:25:35'),
('localhost', 2249, '1698550093832', 2023, 'Eight', 'A', 'Setu Biswas', 277303, 45, 'XXXXXXXXXX', '', 'Female', 'N/A', '277303@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:26:06'),
('localhost', 2250, '1698481597566', 2023, 'Eight', 'A', 'Tripti  Akter', 800117, 46, 'XXXXXXXXXX', '', 'Female', 'N/A', '800117@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:26:39'),
('localhost', 2251, '1698470299065', 2023, 'Eight', 'A', 'Sumona  Parvin', 84797, 47, 'XXXXXXXXXX', '', 'Female', 'N/A', '84797@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:27:31'),
('localhost', 2252, '1698160113994', 2023, 'Eight', 'A', 'Huraia Akter', 396479, 48, 'XXXXXXXXXX', '', 'Female', 'N/A', '396479@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:28:01'),
('localhost', 2253, '1698128522096', 2023, 'Eight', 'A', 'Sraboni  Akter', 601398, 49, 'XXXXXXXXXX', '', 'Female', 'N/A', '601398@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:29:11'),
('localhost', 2254, '1698611715321', 2023, 'Eight', 'A', 'Suma ', 559780, 50, 'XXXXXXXXXX', '', 'Female', 'N/A', '559780@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:30:05'),
('localhost', 2255, '1698174847307', 2023, 'Eight', 'A', 'Jakia  Sultana', 353134, 51, 'XXXXXXXXXX', '', 'Female', 'N/A', '353134@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:31:25'),
('localhost', 2256, '1698326992344', 2023, 'Eight', 'A', 'Marjia ', 148344, 52, 'XXXXXXXXXX', '', 'Female', 'N/A', '148344@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:31:41'),
('localhost', 2257, '1698755509865', 2023, 'Eight', 'A', 'Monjila', 699791, 53, 'XXXXXXXXXX', '', 'Female', 'N/A', '699791@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:32:13'),
('localhost', 2258, '1698341552097', 2023, 'Eight', 'A', 'Muhaimina  Kona', 647154, 54, 'XXXXXXXXXX', '', 'Female', 'N/A', '647154@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:32:54'),
('localhost', 2259, '1698442143098', 2023, 'Eight', 'A', 'Jubaida Akter', 755895, 55, 'XXXXXXXXXX', '', 'Female', 'N/A', '755895@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:33:15'),
('localhost', 2260, '1698133458961', 2023, 'Eight', 'A', 'Lamia', 561525, 56, 'XXXXXXXXXX', '', 'Female', 'N/A', '561525@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:33:30'),
('localhost', 2261, '1698732617403', 2023, 'Eight', 'B', 'Swacho  Saha', 809177, 13, 'XXXXXXXXXX', '', 'Male', 'N/A', '809177@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:38:56'),
('localhost', 2262, '1698109131279', 2023, 'Eight', 'B', 'Fatin Sabat  Talha', 487582, 14, 'XXXXXXXXXX', '', 'Female', 'N/A', '487582@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:39:30'),
('localhost', 2263, '1698872000600', 2023, 'Eight', 'B', 'Md. Saim', 578462, 15, 'XXXXXXXXXX', '', 'Female', 'N/A', '578462@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:40:32'),
('localhost', 2264, '1698733794952', 2023, 'Eight', 'B', 'Md. Salman Rifat', 545519, 16, 'XXXXXXXXXX', '', 'Male', 'N/A', '545519@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:41:05'),
('localhost', 2265, '1698765151980', 2023, 'Eight', 'B', 'Kazi  Sifatulla', 701872, 17, 'XXXXXXXXXX', '', 'Male', 'N/A', '701872@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:41:36'),
('localhost', 2266, '1698647302448', 2023, 'Eight', 'B', 'Md. Alomgir  ', 692290, 18, 'XXXXXXXXXX', '', 'Male', 'N/A', '692290@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:44:20'),
('localhost', 2267, '1698121351173', 2023, 'Eight', 'B', 'Rifat ', 142260, 19, 'XXXXXXXXXX', '', 'Male', 'N/A', '142260@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:44:42'),
('localhost', 2268, '1698554473183', 2023, 'Eight', 'B', 'Tusar', 354614, 20, 'XXXXXXXXXX', '', 'Male', 'N/A', '354614@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:45:04'),
('localhost', 2269, '1698740794341', 2023, 'Eight', 'B', 'Likhon  Debnath', 388466, 21, 'XXXXXXXXXX', '', 'Male', 'N/A', '388466@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:45:50'),
('localhost', 2270, '1698719758384', 2023, 'Eight', 'B', 'MD. abu Hanif ', 314170, 22, 'XXXXXXXXXX', '', 'Male', 'N/A', '314170@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:46:32'),
('localhost', 2271, '1698908853652', 2023, 'Eight', 'B', 'Owasim ', 852835, 23, 'XXXXXXXXXX', '', 'Male', 'N/A', '852835@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:47:03'),
('localhost', 2272, '1698372581421', 2023, 'Eight', 'B', 'Md. Jaber', 41314, 24, 'XXXXXXXXXX', '', 'Male', 'N/A', '41314@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:47:26'),
('localhost', 2273, '1698291549831', 2023, 'Eight', 'B', 'Md. Imamul', 202793, 25, 'XXXXXXXXXX', '', 'Male', 'N/A', '202793@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:47:58'),
('localhost', 2274, '1698856684197', 2023, 'Eight', 'B', 'Hasib Mollik ', 806236, 26, 'XXXXXXXXXX', '', 'Male', 'N/A', '806236@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:48:32'),
('localhost', 2275, '1698343696377', 2023, 'Eight', 'B', 'Nisan', 337197, 27, 'XXXXXXXXXX', '', 'Male', 'N/A', '337197@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:48:51'),
('localhost', 2276, '1698648831033', 2023, 'Eight', 'B', 'Arifuzzaman', 160964, 28, 'XXXXXXXXXX', '', 'Male', 'N/A', '160964@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:49:17'),
('localhost', 2277, '1698182605896', 2023, 'Eight', 'B', 'Md. Fahim', 630143, 29, 'XXXXXXXXXX', '', 'Male', 'N/A', '630143@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:49:44'),
('localhost', 2278, '1698172856691', 2023, 'Eight', 'B', 'Md. Asif', 597601, 30, 'XXXXXXXXXX', '', 'Male', 'N/A', '597601@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:50:14'),
('localhost', 2279, '1698455604411', 2023, 'Eight', 'B', 'Md. Sakib ', 515464, 31, 'XXXXXXXXXX', '', 'Male', 'N/A', '515464@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:50:35'),
('localhost', 2280, '1698570533239', 2023, 'Eight', 'B', 'Md. Hamim', 894298, 32, 'XXXXXXXXXX', '', 'Male', 'N/A', '894298@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:51:20'),
('localhost', 2281, '1698378916547', 2023, 'Eight', 'B', 'Md. Siam', 530386, 33, 'XXXXXXXXXX', '', 'Male', 'N/A', '530386@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:51:49'),
('localhost', 2282, '1698276588428', 2023, 'Eight', 'B', 'Md. Abdullah', 429649, 34, 'XXXXXXXXXX', '', 'Male', 'N/A', '429649@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:52:13'),
('localhost', 2283, '1698691324258', 2023, 'Eight', 'B', 'Md. Riad', 394714, 35, 'XXXXXXXXXX', '', 'Male', 'N/A', '394714@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:52:41'),
('localhost', 2284, '1698838264190', 2023, 'Eight', 'B', 'Sojol Khan', 891837, 36, 'XXXXXXXXXX', '', 'Male', 'N/A', '891837@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:53:05'),
('localhost', 2285, '1698887756272', 2023, 'Eight', 'B', 'Md. Sahin', 422220, 37, 'XXXXXXXXXX', '', 'Male', 'N/A', '422220@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:53:34'),
('localhost', 2286, '1698869707598', 2023, 'Eight', 'B', 'Md. Rafa', 731134, 38, 'XXXXXXXXXX', '', 'Male', 'N/A', '731134@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:54:01'),
('localhost', 2287, '1698188586291', 2023, 'Eight', 'B', 'Badhon Malo ', 574493, 39, 'XXXXXXXXXX', '', 'Male', 'N/A', '574493@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:02:25'),
('localhost', 2288, '1698360331614', 2023, 'Eight', 'B', 'Badhon Malo ', 100218, 40, 'XXXXXXXXXX', '', 'Male', 'N/A', '100218@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:02:25'),
('localhost', 2289, '1698526650391', 2023, 'Eight', 'B', 'Husain ', 512005, 41, 'XXXXXXXXXX', '', 'Male', 'N/A', '512005@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:02:59'),
('localhost', 2290, '1698709925997', 2023, 'Eight', 'B', 'Md.  Jubayed', 285428, 42, 'XXXXXXXXXX', '', 'Male', 'N/A', '285428@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:04:45'),
('localhost', 2291, '1698191559782', 2023, 'Eight', 'B', 'MD. Nayim ', 826158, 43, 'XXXXXXXXXX', '', 'Male', 'N/A', '826158@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:05:31'),
('localhost', 2292, '1698647529856', 2023, 'Eight', 'B', 'Sujoi Sil ', 500485, 44, 'XXXXXXXXXX', '', 'Male', 'N/A', '500485@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:06:09'),
('localhost', 2293, '1698361853418', 2023, 'Eight', 'B', 'Bappi Biswas', 637192, 45, 'XXXXXXXXXX', '', 'Male', 'N/A', '637192@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:06:54'),
('localhost', 2294, '1698318910274', 2023, 'Eight', 'B', 'Omor Biswas ', 573410, 46, 'XXXXXXXXXX', '', 'Male', 'N/A', '573410@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:07:38'),
('localhost', 2295, '1698640369054', 2023, 'Eight', 'B', 'Md. Sazzad ', 385242, 47, 'XXXXXXXXXX', '', 'Male', 'N/A', '385242@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:08:23'),
('localhost', 2296, '1698420452144', 2023, 'Eight', 'B', 'Suyaib', 697117, 48, 'XXXXXXXXXX', '', 'Male', 'N/A', '697117@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:09:34'),
('localhost', 2297, '1698601394694', 2023, 'Eight', 'B', 'Md. Arafat', 642661, 49, 'XXXXXXXXXX', '', 'Male', 'N/A', '642661@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:10:25'),
('localhost', 2298, '1698284071379', 2023, 'Eight', 'B', 'Salman', 364945, 50, 'XXXXXXXXXX', '', 'Male', 'N/A', '364945@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:10:43'),
('localhost', 2299, '1698597467177', 2023, 'Eight', 'B', 'Alhaz Saheb', 90163, 51, 'XXXXXXXXXX', '', 'Male', 'N/A', '90163@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:13:17'),
('localhost', 2300, '1698931988303', 2023, 'Eight', 'B', 'Redoan', 15076, 52, 'XXXXXXXXXX', '', 'Male', 'N/A', '15076@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:13:53'),
('localhost', 2301, '1698482025958', 2023, 'Eight', 'B', 'Md. Nurmim ', 164954, 53, 'XXXXXXXXXX', '', 'Male', 'N/A', '164954@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:14:18'),
('localhost', 2302, '1698797418250', 2023, 'Eight', 'B', 'Md. Sagor', 891512, 54, 'XXXXXXXXXX', '', 'Male', 'N/A', '891512@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:15:31'),
('localhost', 2303, '1698371509166', 2023, 'Eight', 'B', 'Md. Mostofa', 658901, 55, 'XXXXXXXXXX', '', 'Male', 'N/A', '658901@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:15:54'),
('localhost', 2304, '1698222901138', 2023, 'Eight', 'B', 'Md. Farhan', 677558, 1, 'XXXXXXXXXX', '', 'Male', 'N/A', '677558@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:16:41'),
('localhost', 2305, '1698314893226', 2023, 'Eight', 'B', 'Sakil Khan', 29882, 2, 'XXXXXXXXXX', '', 'Male', 'N/A', '29882@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:20:50'),
('localhost', 2306, '1698185548654', 2023, 'Eight', 'B', 'Md. Rana', 321388, 3, 'XXXXXXXXXX', '', 'Male', 'N/A', '321388@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:21:10'),
('localhost', 2307, '1698906340214', 2023, 'Eight', 'B', 'Md. Hasmot', 468276, 4, 'XXXXXXXXXX', '', 'Male', 'N/A', '468276@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:21:36'),
('localhost', 2308, '1698151048843', 2023, 'Eight', 'B', 'Md. Abu Said', 861333, 5, 'XXXXXXXXXX', '', 'Male', 'N/A', '861333@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:22:54'),
('localhost', 2309, '1698899924315', 2023, 'Eight', 'B', 'Nirob Mahmud', 713377, 6, 'XXXXXXXXXX', '', 'Male', 'N/A', '713377@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:23:30'),
('localhost', 2310, '1698116170168', 2023, 'Eight', 'B', 'Nayim Munsi', 289612, 7, 'XXXXXXXXXX', '', 'Male', 'N/A', '289612@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:23:52'),
('localhost', 2311, '1698621323388', 2023, 'Eight', 'B', 'Chinmoy  Pundory', 685849, 8, 'XXXXXXXXXX', '', 'Male', 'N/A', '685849@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:24:44'),
('localhost', 2312, '1698114968072', 2023, 'Eight', 'B', 'Midul', 384139, 9, 'XXXXXXXXXX', '', 'Male', 'N/A', '384139@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:25:17'),
('localhost', 2313, '1698220483692', 2023, 'Eight', 'B', 'Ankon Roy', 837409, 10, 'XXXXXXXXXX', '', 'Male', 'N/A', '837409@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:25:42'),
('localhost', 2314, '1698824125505', 2023, 'Eight', 'B', 'Akkas Sheikh', 566938, 11, 'XXXXXXXXXX', '', 'Male', 'N/A', '566938@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:26:18'),
('localhost', 2315, '1698068595604', 2023, 'Eight', 'B', 'Riajul Islam', 599970, 12, 'XXXXXXXXXX', '', 'Male', 'N/A', '599970@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:26:48'),
('localhost', 2316, '1698784384722', 2023, 'Nine', 'A', 'Suvo  Biswas', 686802, 1, 'XXXXXXXXXX', '', 'Male', 'N/A', '686802@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:11:08'),
('localhost', 2317, '1698106096628', 2023, 'Nine', 'A', 'Suvo  Biswas', 258274, 2, 'XXXXXXXXXX', '', 'Male', 'N/A', '258274@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:11:09'),
('localhost', 2318, '1698495473658', 2023, 'Nine', 'A', 'Al-Mamun', 450001, 3, 'XXXXXXXXXX', '', 'Male', 'N/A', '450001@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:12:06'),
('localhost', 2319, '1698455881824', 2023, 'Nine', 'A', 'Md. Rony Molla', 305367, 4, 'XXXXXXXXXX', '', 'Male', 'N/A', '305367@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:12:55'),
('localhost', 2320, '1698685731295', 2023, 'Nine', 'A', 'Tausif  Rahman', 375544, 5, 'XXXXXXXXXX', '', 'Male', 'N/A', '375544@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:14:12'),
('localhost', 2321, '1698369558135', 2023, 'Nine', 'A', 'Sadhona Datta', 9232, 6, 'XXXXXXXXXX', '', 'Female', 'N/A', '9232@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:15:57'),
('localhost', 2322, '1698396192529', 2023, 'Nine', 'A', 'Nurnahar', 464504, 7, 'XXXXXXXXXX', '', 'Female', 'N/A', '464504@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:16:36'),
('localhost', 2323, '1698788014059', 2023, 'Nine', 'A', 'Sahara Akter ', 745042, 8, 'XXXXXXXXXX', '', 'Female', 'N/A', '745042@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:17:17'),
('localhost', 2324, '1698500180232', 2023, 'Nine', 'A', 'Jannati', 478234, 9, 'XXXXXXXXXX', '', 'Female', 'N/A', '478234@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:19:03'),
('localhost', 2325, '1698073282220', 2023, 'Nine', 'A', 'Jannati', 246666, 10, 'XXXXXXXXXX', '', 'Female', 'N/A', '246666@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:19:03'),
('localhost', 2326, '1698611462934', 2023, 'Nine', 'A', 'Nusrat Jahan Maria', 832152, 11, 'XXXXXXXXXX', '', 'Female', 'N/A', '832152@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:19:39'),
('localhost', 2327, '1698074433885', 2023, 'Nine', 'A', 'Riad', 523471, 12, 'XXXXXXXXXX', '', 'Male', 'N/A', '523471@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:24:07'),
('localhost', 2328, '1698575231766', 2023, 'Nine', 'A', 'Obaida Haque', 37899, 13, 'XXXXXXXXXX', '', 'Female', 'N/A', '37899@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:25:15'),
('localhost', 2329, '1698047114507', 2023, 'Nine', 'A', 'Sorozit Biswas', 419161, 14, 'XXXXXXXXXX', '', 'Male', 'N/A', '419161@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:26:03'),
('localhost', 2330, '1698720539041', 2023, 'Nine', 'A', 'Manob Biswas', 686460, 15, 'XXXXXXXXXX', '', 'Male', 'N/A', '686460@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:26:31'),
('localhost', 2331, '1698484742892', 2023, 'Nine', 'A', 'Isita Sultana', 647358, 16, 'XXXXXXXXXX', '', 'Female', 'N/A', '647358@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:26:57'),
('localhost', 2332, '1698933971219', 2023, 'Nine', 'A', 'Md. Rifat', 709562, 17, 'XXXXXXXXXX', '', 'Male', 'N/A', '709562@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:27:31'),
('localhost', 2333, '1698199667409', 2023, 'Nine', 'A', 'Samia Sultana', 809540, 18, 'XXXXXXXXXX', '', 'Female', 'N/A', '809540@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:27:57');
INSERT INTO `students` (`domain`, `ID`, `student_uuid`, `session`, `class`, `section`, `name`, `student_id`, `roll`, `reg`, `birth_date`, `gender`, `blood_group`, `email`, `phone`, `telephone`, `father_name`, `mother_name`, `address`, `religion`, `admission_date`, `hobbies`, `avatar`, `fb_link`, `password`, `quote`, `at_date`) VALUES
('localhost', 2334, '1698139276307', 2023, 'Nine', 'A', 'Hira Parvin', 68604, 19, 'XXXXXXXXXX', '', 'Female', 'N/A', '68604@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:28:23'),
('localhost', 2335, '1698099001377', 2023, 'Nine', 'A', 'Nazmul  Islam', 790892, 20, 'XXXXXXXXXX', '', 'Male', 'N/A', '790892@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:28:47'),
('localhost', 2336, '1698595097532', 2023, 'Nine', 'A', 'Md. Rakibul Islam', 421125, 21, 'XXXXXXXXXX', '', 'Male', 'N/A', '421125@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:29:14'),
('localhost', 2337, '1698219110847', 2023, 'Nine', 'A', 'Abul  Kalam Azad', 369785, 22, 'XXXXXXXXXX', '', 'Male', 'N/A', '369785@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:29:50'),
('localhost', 2338, '1698834667478', 2023, 'Nine', 'A', 'Riajul Islam', 78720, 23, 'XXXXXXXXXX', '', 'Male', 'N/A', '78720@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:30:19'),
('localhost', 2339, '1698683076438', 2023, 'Nine', 'A', 'Monira ', 503220, 24, 'XXXXXXXXXX', '', 'Female', 'N/A', '503220@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:30:36'),
('localhost', 2340, '1698374904317', 2023, 'Nine', 'A', 'Abir Hossen ', 764317, 25, 'XXXXXXXXXX', '', 'Male', 'N/A', '764317@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:31:01'),
('localhost', 2341, '1698717267194', 2023, 'Nine', 'A', 'Kotha Biswas', 319693, 26, 'XXXXXXXXXX', '', 'Female', 'N/A', '319693@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:31:26'),
('localhost', 2342, '1698207948261', 2023, 'Nine', 'A', 'Ajizul  Hakim', 251903, 27, 'XXXXXXXXXX', '', 'Male', 'N/A', '251903@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:46:14'),
('localhost', 2343, '1698280617887', 2023, 'Nine', 'A', 'Md. Parvez', 190671, 28, 'XXXXXXXXXX', '', 'Male', 'N/A', '190671@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:47:15'),
('localhost', 2344, '1698224792379', 2023, 'Nine', 'A', 'Md.  Imon', 561949, 29, 'XXXXXXXXXX', '', 'Male', 'N/A', '561949@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:48:52'),
('localhost', 2345, '1698223799950', 2023, 'Nine', 'A', 'Md. Sifat', 653901, 30, 'XXXXXXXXXX', '', 'Male', 'N/A', '653901@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:49:31'),
('localhost', 2346, '1698714494584', 2023, 'Nine', 'A', 'Nayim Biswas', 480073, 31, 'XXXXXXXXXX', '', 'Female', 'N/A', '480073@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:49:59'),
('localhost', 2347, '1698477202366', 2023, 'Nine', 'A', 'Md. Antor Biswas', 316829, 32, 'XXXXXXXXXX', '', 'Male', 'N/A', '316829@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:50:26'),
('localhost', 2348, '1698913227144', 2023, 'Six', 'A', 'Nafiza Islam', 701673, 39, 'XXXXXXXXXX', '', 'Female', 'N/A', '701673@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-11-02 08:20:27'),
('localhost', 2349, '1733719016579241527859', 2024, 'Ten', 'A', 'Maria', 809684, 324523, 'XXXXXXXXXX', '', 'Male', 'A+ve', '809684@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'Islam', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 04:36:56'),
('localhost', 2350, '1733719161320767179320', 2024, 'Ten', 'B', 'il8', 131030, 768, 'XXXXXXXXXX', '', 'Male', '', '131030@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'Islam', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 04:39:21'),
('localhost', 2351, '1733721164330716979417', 2024, 'Ten', 'A', 'Sufia', 668664, 157327, 'XXXXXXXXXX', '', 'Female', 'N/A', '668664@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 05:12:44'),
('localhost', 2352, '1733721184292509095490', 2024, 'Ten', 'A', 'Sufia', 687000, 324, 'XXXXXXXXXX', '', 'Female', 'N/A', '687000@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 05:13:04'),
('localhost', 2353, '173372118429333915605', 2024, 'Ten', 'A', 'Sufia', 629504, 45325, 'XXXXXXXXXX', '', 'Female', 'N/A', '629504@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 05:13:04'),
('localhost', 2354, '1733721196052295215072', 2024, 'Ten', 'A', 'Sufia', 855821, 1, 'XXXXXXXXXX', '', 'Female', 'N/A', '855821@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 05:13:16'),
('localhost', 2355, '173376311793938412082', 2024, 'Ten', 'A', 'Maria', 507327, 70, 'XXXXXXXXXX', '', 'Male', 'O-ve', '507327@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'Islam', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 16:51:57'),
('localhost', 2357, '1733763158335609849484', 2024, 'Ten', 'A', 'Maria', 491812, 1, 'XXXXXXXXXX', '', 'Male', '', '491812@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'Islam', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 16:52:38'),
('localhost', 2358, '1733763169846524908594', 2024, 'Ten', 'A', 'Maria', 505278, 1, 'XXXXXXXXXX', '', 'Male', '', '505278@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'Islam', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 16:52:49'),
('localhost', 2359, '173376320419516365350', 2024, 'Ten', 'A', 'Maria', 554715, 1, 'XXXXXXXXXX', '', 'Male', '', '554715@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'Islam', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 16:53:24'),
('localhost', 2360, '1733763221931419037322', 2024, 'Ten', 'A', 'Maria', 521663, 1, 'XXXXXXXXXX', '', 'Male', '', '521663@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'Islam', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 16:53:41'),
('localhost', 2361, '1733763221943279520447', 2024, 'Ten', 'A', 'Maria', 824441, 1, 'XXXXXXXXXX', '', 'Male', '', '824441@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'Islam', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 16:53:41'),
('localhost', 2362, '1733763221937363767893', 2024, 'Ten', 'A', 'Maria', 276543, 1, 'XXXXXXXXXX', '', 'Male', '', '276543@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'Islam', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 16:53:41'),
('localhost', 2363, '1733763221955594948833', 2024, 'Ten', 'A', 'Maria', 268493, 1, 'XXXXXXXXXX', '', 'Male', '', '268493@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'Islam', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 16:53:41'),
('localhost', 2364, '1733763221968192938785', 2024, 'Ten', 'A', 'Maria', 162980, 1, 'XXXXXXXXXX', '', 'Male', '', '162980@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'Islam', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 16:53:41'),
('localhost', 2365, '1733763221997889664901', 2024, 'Ten', 'A', 'Maria', 499150, 1, 'XXXXXXXXXX', '', 'Male', '', '499150@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'Islam', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 16:53:42'),
('localhost', 2366, '1733763222010494848464', 2024, 'Ten', 'A', 'Maria', 793227, 1, 'XXXXXXXXXX', '', 'Male', '', '793227@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'Islam', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 16:53:42'),
('localhost', 2367, '173376322201180175034', 2024, 'Ten', 'A', 'Maria', 598928, 1, 'XXXXXXXXXX', '', 'Male', '', '598928@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'Islam', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 16:53:42'),
('localhost', 2368, '1733763222013241615423', 2024, 'Ten', 'A', 'Maria', 357677, 1, 'XXXXXXXXXX', '', 'Male', '', '357677@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'Islam', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 16:53:42'),
('localhost', 2369, '1733763222033801679312', 2024, 'Ten', 'A', 'Maria', 167621, 1, 'XXXXXXXXXX', '', 'Male', '', '167621@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'Islam', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 16:53:42'),
('localhost', 2370, '1733763222051345566268', 2024, 'Ten', 'A', 'Maria', 556961, 12222, 'XXXXXXXXXX', '', 'Male', '', '556961@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'Islam', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 16:53:42'),
('localhost', 2371, '1733763222047425471917', 2024, 'Ten', 'A', 'Maria', 546606, 122, 'XXXXXXXXXX', '', 'Male', '', '546606@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'Islam', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 16:53:42'),
('localhost', 2372, '1733763222049779658105', 2024, 'Ten', 'A', 'Maria', 606711, 12222, 'XXXXXXXXXX', '', 'Male', '', '606711@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'Islam', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 16:53:42'),
('localhost', 2373, '1733763222071767971603', 2024, 'Ten', 'A', 'Maria', 208941, 12222, 'XXXXXXXXXX', '', 'Male', '', '208941@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'Islam', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 16:53:42'),
('localhost', 2374, '1733763222096892963075', 2024, 'Ten', 'A', 'Maria', 407499, 12222, 'XXXXXXXXXX', '', 'Male', '', '407499@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'Islam', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 16:53:42'),
('localhost', 2375, '1733763222101132220960', 2024, 'Ten', 'A', 'Maria', 343718, 12222, 'XXXXXXXXXX', '', 'Male', '', '343718@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'Islam', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 16:53:42'),
('localhost', 2376, '1733765333765190389439', 2024, 'Ten', 'A', 'Maria', 678509, 1, 'XXXXXXXXXX', '', 'Male', 'AB-ve', '678509@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'Islam', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 17:28:53'),
('localhost', 2377, '173376534627334509300', 2024, 'Ten', 'A', 'Maria', 572982, 1, 'XXXXXXXXXX', '', 'Male', '', '572982@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'Islam', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 17:29:06'),
('localhost', 2378, '1733765363137273210872', 2024, 'Ten', 'A', 'Maria', 328160, 1, 'XXXXXXXXXX', '', 'Male', '', '328160@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'Islam', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 17:29:23'),
('localhost', 2379, '1733765764181131768772', 2024, 'Ten', 'A', 'Maria', 888207, 134534, 'XXXXXXXXXX', '', 'Male', '', '888207@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'Islam', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 17:36:04');

-- --------------------------------------------------------

--
-- Table structure for table `student_rank`
--

CREATE TABLE `student_rank` (
  `domain` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `session` int(11) DEFAULT 2023,
  `find_date` varchar(100) NOT NULL,
  `rank_date` varchar(100) NOT NULL,
  `teacher_uuid` varchar(100) NOT NULL,
  `student_uuid` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `at_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `name` varchar(100) NOT NULL,
  `roll` int(11) NOT NULL,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `checkout` varchar(100) NOT NULL,
  `behavior` int(11) NOT NULL,
  `study` int(11) NOT NULL,
  `uniform` int(11) NOT NULL,
  `present` int(11) NOT NULL,
  `absent` int(11) NOT NULL,
  `poient` float NOT NULL,
  `avatar` varchar(500) NOT NULL DEFAULT 'male_avatar.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_rank`
--

INSERT INTO `student_rank` (`domain`, `ID`, `session`, `find_date`, `rank_date`, `teacher_uuid`, `student_uuid`, `student_id`, `at_date`, `name`, `roll`, `class`, `section`, `checkout`, `behavior`, `study`, `uniform`, `present`, `absent`, `poient`, `avatar`) VALUES
('localhost', 56, 2024, '3/31/2024', 'Sun Mar 31 2024', '1697209362834', '1698506063682', 601792, '2024-03-31 07:01:51', 'তড়িতা অধিকারী ', 1, 'Six', 'A', 'b3_1698506063682', 1, 0, 0, 3, 3, 7.886, 'female_avatar.png'),
('localhost', 57, 2024, '3/31/2024', 'Sun Mar 31 2024', '1697209362834', '1698506063682', 601792, '2024-03-31 07:01:52', 'তড়িতা অধিকারী ', 1, 'Six', 'A', 'u1_1698506063682', 0, 0, 1, 3, 3, 7.886, 'female_avatar.png'),
('localhost', 58, 2024, '3/31/2024', 'Sun Mar 31 2024', '1697209362834', '1698506063682', 601792, '2024-03-31 07:01:53', 'তড়িতা অধিকারী ', 1, 'Six', 'A', 's3_1698506063682', 0, 1, 0, 3, 3, 7.886, 'female_avatar.png'),
('localhost', 59, 2024, '3/31/2024', 'Sun Mar 31 2024', '1697209362834', '1698299881366', 134797, '2024-03-31 07:02:17', 'Chompa Khatun', 2, 'Six', 'A', 'b3_1698299881366', 1, 0, 0, 2, 4, 2.554, 'female_avatar.png'),
('localhost', 60, 2024, '3/31/2024', 'Sun Mar 31 2024', '1697209362834', '1698659885616', 467151, '2024-03-31 07:04:06', 'তানিয়া ', 3, 'Six', 'A', 'b3_1698659885616', 1, 0, 0, 4, 2, 3.998, 'female_avatar.png'),
('localhost', 61, 2024, '3/31/2024', 'Sun Mar 31 2024', '1697209362834', '1698299881366', 134797, '2024-03-31 07:04:32', 'Chompa Khatun', 2, 'Six', 'A', 'u1_1698299881366', 0, 0, 1, 2, 4, 2.554, 'female_avatar.png'),
('localhost', 62, 2024, '3/31/2024', 'Sun Mar 31 2024', '1697209362834', '1698299881366', 134797, '2024-03-31 07:04:40', 'Chompa Khatun', 2, 'Six', 'A', 's1_1698299881366', 0, 1, 0, 2, 4, 2.554, 'female_avatar.png'),
('localhost', 63, 2024, '3/31/2024', 'Sun Mar 31 2024', '1697209362834', '1698659885616', 467151, '2024-03-31 07:04:42', 'তানিয়া ', 3, 'Six', 'A', 'u1_1698659885616', 0, 0, 1, 4, 2, 3.998, 'female_avatar.png'),
('localhost', 64, 2024, '3/31/2024', 'Sun Mar 31 2024', '1697209362834', '1698659885616', 467151, '2024-03-31 07:04:45', 'তানিয়া ', 3, 'Six', 'A', 's2_1698659885616', 0, 1, 0, 4, 2, 3.998, 'female_avatar.png'),
('localhost', 65, 2024, '3/31/2024', 'Sun Mar 31 2024', '1697209362834', '1698738939274', 241952, '2024-03-31 07:06:36', 'Karima', 4, 'Six', 'A', 'b1_1698738939274', 1, 0, 0, 2, 1, 2.999, 'female_avatar.png'),
('localhost', 66, 2024, '3/31/2024', 'Sun Mar 31 2024', '1697209362834', '1698460381556', 551763, '2024-03-31 07:06:58', 'উৎসব বিশ্বাস', 5, 'Six', 'A', 'b1_1698460381556', 1, 0, 0, 0, 1, 1.333, 'male_avatar.png'),
('localhost', 67, 2024, '3/31/2024', 'Sun Mar 31 2024', '1697209362834', '1698738939274', 241952, '2024-03-31 07:08:11', 'Karima', 4, 'Six', 'A', 's3_1698738939274', 0, 1, 0, 2, 1, 2.999, 'female_avatar.png'),
('localhost', 68, 2024, '3/31/2024', 'Sun Mar 31 2024', '1697209362834', '1698460381556', 551763, '2024-03-31 07:08:15', 'উৎসব বিশ্বাস', 5, 'Six', 'A', 's3_1698460381556', 0, 1, 0, 0, 1, 1.333, 'male_avatar.png'),
('localhost', 69, 2024, '3/31/2024', 'Sun Mar 31 2024', '1697209362834', '1698148306745', 201564, '2024-03-31 07:13:52', 'Sarmin', 6, 'Six', 'A', 'b3_1698148306745', 1, 0, 0, 2, 0, -1.222, 'female_avatar.png'),
('localhost', 70, 2024, '3/31/2024', 'Sun Mar 31 2024', '1697209362834', '1698148306745', 201564, '2024-03-31 07:13:57', 'Sarmin', 6, 'Six', 'A', 'u1_1698148306745', 0, 0, 1, 2, 0, -1.222, 'female_avatar.png'),
('localhost', 71, 2024, '3/31/2024', 'Sun Mar 31 2024', '1697209362834', '1698148306745', 201564, '2024-03-31 07:13:58', 'Sarmin', 6, 'Six', 'A', 's1_1698148306745', 0, 1, 0, 2, 0, -1.222, 'female_avatar.png'),
('localhost', 72, 2024, '3/31/2024', 'Sun Mar 31 2024', '1697209362834', '1698721140415', 139041, '2024-03-31 07:13:59', 'Tasmim', 7, 'Six', 'A', 'b1_1698721140415', 1, 0, 0, 0, 1, -1.666, 'female_avatar.png'),
('localhost', 73, 2024, '11/27/2024', 'Wed Nov 27 2024', '1697209362834', '1698506063682', 601792, '2024-11-27 07:41:41', 'তড়িতা অধিকারী ', 1, 'Six', 'A', 'b3_1698506063682', 1, 0, 0, 3, 3, 7.886, 'female_avatar.png'),
('localhost', 74, 2024, '11/27/2024', 'Wed Nov 27 2024', '1697209362834', '1698506063682', 601792, '2024-11-27 07:41:42', 'তড়িতা অধিকারী ', 1, 'Six', 'A', 'u1_1698506063682', 0, 0, 1, 3, 3, 7.886, 'female_avatar.png'),
('localhost', 75, 2024, '11/27/2024', 'Wed Nov 27 2024', '1697209362834', '1698506063682', 601792, '2024-11-27 07:41:43', 'তড়িতা অধিকারী ', 1, 'Six', 'A', 's3_1698506063682', 0, 1, 0, 3, 3, 7.886, 'female_avatar.png'),
('localhost', 76, 2024, '11/27/2024', 'Wed Nov 27 2024', '1697209362834', '1698299881366', 134797, '2024-11-27 07:41:47', 'Chompa Khatun', 2, 'Six', 'A', 's3_1698299881366', 0, 1, 0, 2, 4, 2.554, 'female_avatar.png'),
('localhost', 77, 2024, '11/27/2024', 'Wed Nov 27 2024', '1697209362834', '1698299881366', 134797, '2024-11-27 07:41:48', 'Chompa Khatun', 2, 'Six', 'A', 'u2_1698299881366', 0, 0, 1, 2, 4, 2.554, 'female_avatar.png'),
('localhost', 78, 2024, '11/27/2024', 'Wed Nov 27 2024', '1697209362834', '1698659885616', 467151, '2024-11-27 07:41:49', 'তানিয়া ', 3, 'Six', 'A', 'u3_1698659885616', 0, 0, 1, 4, 2, 3.998, 'female_avatar.png'),
('localhost', 79, 2024, '11/27/2024', 'Wed Nov 27 2024', '1697209362834', '1698659885616', 467151, '2024-11-27 07:41:50', 'তানিয়া ', 3, 'Six', 'A', 'b3_1698659885616', 1, 0, 0, 4, 2, 3.998, 'female_avatar.png'),
('localhost', 80, 2024, '11/27/2024', 'Wed Nov 27 2024', '1697209362834', '1698659885616', 467151, '2024-11-27 07:41:51', 'তানিয়া ', 3, 'Six', 'A', 's2_1698659885616', 0, 1, 0, 4, 2, 3.998, 'female_avatar.png'),
('localhost', 81, 2024, '11/27/2024', 'Wed Nov 27 2024', '1697209362834', '1698738939274', 241952, '2024-11-27 07:41:52', 'Karima', 4, 'Six', 'A', 'b3_1698738939274', 1, 0, 0, 2, 1, 2.999, 'female_avatar.png'),
('localhost', 82, 2024, '12/4/2024', 'Wed Dec 04 2024', '1697209362834', '1698506063682', 601792, '2024-12-04 15:37:40', 'তড়িতা অধিকারী ', 1, 'Six', 'A', 'b3_1698506063682', 1, 0, 0, 3, 3, 7.886, 'female_avatar.png'),
('localhost', 83, 2024, '12/4/2024', 'Wed Dec 04 2024', '1697209362834', '1698506063682', 601792, '2024-12-04 15:37:42', 'তড়িতা অধিকারী ', 1, 'Six', 'A', 'u2_1698506063682', 0, 0, 1, 3, 3, 7.886, 'female_avatar.png'),
('localhost', 84, 2024, '12/4/2024', 'Wed Dec 04 2024', '1697209362834', '1698506063682', 601792, '2024-12-04 15:37:44', 'তড়িতা অধিকারী ', 1, 'Six', 'A', 's3_1698506063682', 0, 1, 0, 3, 3, 7.886, 'female_avatar.png'),
('localhost', 85, 2024, '12/7/2024', 'Sat Dec 07 2024', '1697209362834', '1698506063682', 601792, '2024-12-07 17:07:07', 'তড়িতা অধিকারী ', 1, 'Six', 'A', 'b3_1698506063682', 1, 0, 0, 3, 3, 7.886, 'female_avatar.png'),
('localhost', 86, 2024, '12/7/2024', 'Sat Dec 07 2024', '1697209362834', '1698506063682', 601792, '2024-12-07 17:07:08', 'তড়িতা অধিকারী ', 1, 'Six', 'A', 'u1_1698506063682', 0, 0, 1, 3, 3, 7.886, 'female_avatar.png'),
('localhost', 87, 2024, '12/7/2024', 'Sat Dec 07 2024', '1697209362834', '1698506063682', 601792, '2024-12-07 17:07:09', 'তড়িতা অধিকারী ', 1, 'Six', 'A', 's3_1698506063682', 0, 1, 0, 3, 3, 7.886, 'female_avatar.png'),
('localhost', 88, 2024, '12/7/2024', 'Sat Dec 07 2024', '1697209362834', '1698299881366', 134797, '2024-12-07 17:07:10', 'Chompa Khatun', 2, 'Six', 'A', 'b2_1698299881366', 1, 0, 0, 0, 4, 2.554, 'female_avatar.png');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `domain` varchar(100) NOT NULL DEFAULT 'localhost',
  `ID` int(11) NOT NULL,
  `class` varchar(100) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `subject_code` varchar(100) DEFAULT NULL,
  `teacher_name` varchar(100) NOT NULL DEFAULT 'demo',
  `teacher_index` varchar(100) NOT NULL,
  `teacher_pdsid` varchar(100) NOT NULL,
  `at_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `domain` varchar(100) NOT NULL DEFAULT 'localhost',
  `ID` int(11) NOT NULL,
  `teacher_uuid` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `gender` text NOT NULL,
  `education_qualification` varchar(100) NOT NULL DEFAULT 'N/A',
  `pds_id` varchar(100) NOT NULL,
  `index_number` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `position` varchar(100) NOT NULL DEFAULT 'Assistant Teacher',
  `order_value` varchar(10) NOT NULL DEFAULT 'C',
  `group_special` varchar(100) NOT NULL DEFAULT 'N/A',
  `quote` varchar(500) NOT NULL DEFAULT 'N/A',
  `telephone` varchar(100) NOT NULL DEFAULT 'XXXXXXXXXXX',
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `birth_date` varchar(100) NOT NULL DEFAULT 'N/A',
  `address` varchar(100) NOT NULL DEFAULT 'N/A',
  `blood_group` varchar(100) NOT NULL DEFAULT 'N/A',
  `joining_date` varchar(100) NOT NULL DEFAULT 'N/A',
  `avatar` varchar(500) NOT NULL DEFAULT 'male_avatar.png',
  `password` varchar(100) NOT NULL DEFAULT 'password',
  `fb_link` varchar(100) NOT NULL DEFAULT 'N/A',
  `at_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`domain`, `ID`, `teacher_uuid`, `name`, `gender`, `education_qualification`, `pds_id`, `index_number`, `teacher_id`, `position`, `order_value`, `group_special`, `quote`, `telephone`, `email`, `phone`, `religion`, `birth_date`, `address`, `blood_group`, `joining_date`, `avatar`, `password`, `fb_link`, `at_date`) VALUES
('localhost', 2, '1697690219859', 'Abdul Aziz Molla', 'Male', 'N/A', '100251495', 'D470889', 470889, 'Headmaster', 'A', 'N/A', 'N/A', '01716974937', 'azizshs07@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '1995-11-01', '1676561167056_abdul-aziz-molla-hm.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 15:26:07'),
('localhost', 3, '1697822809488', 'MD. SERAJUL ISLAM', 'Male', 'N/A', '100250478', 'D473975', 473975, 'Assistant Headmaster', 'B', 'N/A', 'N/A', '01719518322', 'mdserajul35@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '1997-10-01', '1676561790154_serajul-islam-ahm.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 15:36:30'),
('localhost', 6, '1697133611416', 'BIKASH CHANDRA BOSU', 'Male', 'N/A', '100250607', 'D479983', 479983, 'Assistant Teacher', 'C', 'N/A', 'N/A', '01712354277', 'bikash479983@gmail.com', '', 'Hinduism', 'N/A', 'N/A', 'N/A', '2000-02-02', '1676562216077_bikash-sir-at.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 15:43:36'),
('localhost', 7, '1697382804683', 'RUMANA MIZUN', 'Female', 'N/A', '100373148', 'D1020505', 1020505, 'Assistant Teacher', 'C', 'N/A', 'N/A', '01715541534', 'rumanamizun@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '2000-11-02', '1676562336505_mizun-madam-at.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 15:45:36'),
('localhost', 8, '1696952378542', 'AMENA PERVIN', 'Female', 'N/A', '100406573', 'D1041431', 1041431, 'Assistant Teacher', 'C', 'N/A', 'N/A', '01725365538', 'amenaparvin11@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '2009-12-30', '1676562454883_amena-madam-at.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 15:47:34'),
('localhost', 10, '1697589189410', 'BITHI RANI BISWAS', 'Female', 'N/A', '100432807', 'D1057634', 1057634, 'Assistant Teacher', 'C', 'N/A', 'N/A', '01717751441', 'bithiranib@gmail.com', '', 'Hinduism', 'N/A', 'N/A', 'N/A', '2011-03-24', '1676562799228_bithi-rani-biswas-madam-at.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 15:53:19'),
('localhost', 11, '1697307461121', 'SELIM SHEIKH', 'Male', 'N/A', '100432811', 'D1057636', 1057636, 'Assistant Teacher', 'C', 'N/A', 'N/A', '01728102740', 'selim03061979@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '2011-03-31', '1676562921995_selim-sir-at.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 15:55:21'),
('localhost', 12, '1697298826970', 'ANISUZZAMAN PANNU', 'Male', 'N/A', '100442732', 'N1062400', 1062400, 'Assistant Teacher', 'C', 'N/A', 'N/A', '01777390906', 'anisuzzamanpannu@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '2011-11-22', '1676563076174_anis-sir-at.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 15:57:56'),
('localhost', 13, '1697349767888', 'MASURA KHATUN', 'Female', 'N/A', '100461149', 'N1072479', 1072479, 'Assistant Teacher', 'C', 'N/A', 'N/A', '01720634412', 'masurakhatun616@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '2012-06-10', '1676563221017_masura-madam-at.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 16:00:21'),
('localhost', 14, '1697010240946', 'KRISHNA CHANDRA SAHA', 'Male', 'N/A', '100509018', 'N1123550', 1123550, 'Assistant Teacher', 'C', 'N/A', 'N/A', '01716604356', 'krishnasaha435@gmail.com', '', 'Hinduism', 'N/A', 'N/A', 'N/A', '2015-08-01', '1676563337883_krishna-sir-at.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 16:02:17'),
('localhost', 15, '1697184120953', 'MADHABIKA BISWAS', 'Female', 'N/A', '100402754', 'D1038899', 1038899, 'Assistant Teacher', 'C', 'N/A', 'N/A', '01714207353', 'ambiswas7@gmail.com', '', 'Hinduism', 'N/A', 'N/A', 'N/A', '2008-04-01', '1676563463399_madhabika-madam-at.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 16:04:23'),
('localhost', 16, '1697576944814', 'MOHSIN ALAM', 'Male', 'N/A', '100461153', 'N1072480', 1072480, 'Assistant Teacher', 'C', 'N/A', 'N/A', '01778029043', 'mohsinalammath@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '2012-07-10', '1676563588633_mahasin-sir-at.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 16:06:28'),
('localhost', 17, '1697371634552', 'RINA RANI KUNDU', 'Female', 'N/A', '100509626', 'N1123915', 1123915, 'Assistant Teacher', 'C', 'N/A', 'N/A', '01726012667', 'rinaranikundu81@gmail.com', '', 'Hinduism', 'N/A', 'N/A', 'N/A', '2015-08-01', '1676563720313_rina-rani-madam-at.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 16:08:40'),
('localhost', 18, '1697209362834', 'SOUMITRA SAHA', 'Male', 'N/A', '100555345', 'N1147428', 1147428, 'Assistant Teacher', 'C', 'N/A', 'N/A', '01743452910', 'soumitrasahatanin@gmail.com', '', 'Hinduism', 'N/A', ' Boalmari-Faridpur', 'N/A', '2019-02-03', 'male_avatar.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 16:10:32'),
('localhost', 19, '1697198926998', 'MOFIJUR RAHAMAN', 'Male', 'N/A', '100499627', 'N1117821', 1117821, 'Sports Teacher', 'C', 'N/A', 'N/A', '01854744192', 'mofijur1988@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '2019-02-20', '1676563986090_mofijur-rahman-sir.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 16:13:06'),
('localhost', 20, '1697584951834', 'USHA NANDI', 'Female', 'N/A', '100567695', 'N1156115', 1156115, 'Assistant Teacher', 'C', 'N/A', 'N/A', '01734726447', 'nandi.usha85@gmail.com', '', 'Hinduism', 'N/A', 'N/A', 'N/A', '2019-11-14', '1676564123460_usha-nandi-madam-.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 16:15:23'),
('localhost', 21, '1697147898114', 'ELIAS HOSSAN', 'Male', 'N/A', '100543362', 'N2122121', 2122121, 'Instructor', 'D', 'N/A', 'N/A', '01770559553', 'eliasmolla19870805@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '2020-02-01', '1676564247907_elias-sir-inst.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 16:17:27'),
('localhost', 22, '1697061470246', 'S. M. YOUNUS ALI', 'Male', 'N/A', '100336016', 'D179730', 179730, 'Assistant Teacher', 'C', 'N/A', 'N/A', '01835604871', 'smyounusali88@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '1989-03-20', '1676650131333_younus-sir-at.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-17 16:08:51'),
('localhost', 23, '1697730447840', 'SIDDHANTA KUMAR ROY', 'Male', 'N/A', '100491490', 'N1111934', 1111934, 'Assistant Teacher', 'C', 'N/A', 'N/A', 'N/A', 'Not@vailable.com', '', 'Hinduism', 'N/A', 'N/A', 'N/A', 'undefined', 'male_avatar.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-17 16:13:56'),
('localhost', 24, '1697426431217', 'NASIMA PARVIN', 'Female', 'N/A', '100485994', 'N1109125', 1109125, 'Assistant Teacher', 'C', 'N/A', 'N/A', '01746204293', 'Not@vailable01.com', '', 'Islam', 'N/A', 'N/A', 'N/A', 'undefined', 'female_avatar.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-17 16:18:24'),
('localhost', 26, '1697439561311', 'MST. SHAMMI AKTAR', 'Female', 'N/A', '101406837', 'N56817846', 56817846, 'Assistant Teacher', 'C', 'N/A', 'N/A', '01796504186', 'bgashammi@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', 'undefined', '1676650881819_samima-madam-at.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-17 16:21:21'),
('localhost', 27, '1697746017543', 'SHUVANGKAR ROY', 'Male', 'N/A', '101406905', 'N56816898', 56816898, 'Assistant Teacher', 'C', 'N/A', 'N/A', '01753303039', 'royshuvangkar036@gmail.com', '', 'Hinduism', 'N/A', 'N/A', 'N/A', 'undefined', '1676650992270_shuvangkar-roy-sir-at.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-17 16:23:12'),
('localhost', 28, '1697062922031', 'Anawaruzzam Jhantu', 'Male', 'N/A', '000000001', 'D000000000', 0, 'Assistant Teacher', 'C', 'N/A', 'N/A', 'N/A', 'Not@vailable05.com', '', 'Islam', 'N/A', 'N/A', 'N/A', 'undefined', 'male_avatar.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-19 08:58:49'),
('localhost', 29, '1697058269962', 'Sabuz Ghosh', 'Male', 'N/A', '000000002', 'D000000001', 1, 'Assistant Teacher', 'C', 'N/A', 'N/A', 'N/A', 'Not@vailable06.com', '', 'Hinduism', 'N/A', 'N/A', 'N/A', 'undefined', 'male_avatar.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-19 08:59:25'),
('localhost', 30, '1697118747788', 'Ali Ahmmad', 'Male', 'N/A', '000000003', 'D000000003', 3, 'Assistant Teacher', 'C', 'N/A', 'N/A', 'N/A', 'no@valueable07', '', 'Islam', 'N/A', 'N/A', 'N/A', 'undefined', 'male_avatar.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-19 09:00:31'),
('localhost', 57, '1697812990300', 'Md. Shahin sikder', 'Male', 'N/A', '2353465677', '242355', 42355, 'Assistent Teacher', 'C', 'N/A', 'N/A', 'XXXXXXXXXXX', 'Shahinsikder@gmail.com', '01998031221', 'Islam', '1984-02-08', 'Boalmari, Faridpur', 'A+ve', '2020-06-18', '1697627422592_shahin sir.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-18 11:10:22'),
('localhost', 1001, '1698399497162', 'Md Omar Mina', 'Male', 'N/A', '561728', 'D478974', 478974, 'Assistant Teacher', 'C', 'N/A', 'N/A', '0', 'omarmina1969@gmail.com', '01763966494', 'Islam', 'N/A', 'N/A', 'N/A', '24-07-1999', '1697346776309_Md. Omar Mina(AT).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-15 05:12:56'),
('localhost', 1002, '1698440168423', 'Gonesh Chandra Roy', 'Male', 'N/A', '488143', 'N1069231', 1069231, 'Assistant Teacher', 'C', 'N/A', 'N/A', '0', 'goneshroy1991@gmail.com', '01740894343', 'Hinduism', 'N/A', 'N/A', 'N/A', '12-06-2012', '1695704736851_Ganesh roy.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-26 05:05:36'),
('localhost', 1003, '1698567927842', 'Goutom Kumer Biswas', 'Male', 'N/A', '754668', 'D1048289', 1048289, 'Assistant Teacher', 'C', 'N/A', 'N/A', '0', 'goutomkumarbiswas1978@gmail.com', '01758526699', 'Hinduism', 'N/A', 'N/A', 'N/A', '01-03-2010', '1697347423174_Goutom Kumar Biswas(AT).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-15 05:23:43'),
('localhost', 1004, '1698109706600', 'BIKASH CHANDRA BALA', 'Male', 'N/A', '100252294', 'D477684', 477684, 'Headmaster', 'A', 'N/A', 'N/A', '0', 'bcb28081968@gmail.com', '01724370108', 'Hinduism', 'N/A', 'N/A', 'N/A', '01-01-1995', '1695614872367_Bikash Chandra Bala(Head Master).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 04:07:52'),
('localhost', 1005, '1698499309268', 'Mosa.Nusrat Jahan', 'Female', 'N/A', '690363', 'N56847119', 56847119, 'Assistant Teacher', 'C', 'N/A', 'N/A', '0', 'nusrat.NJ167@gmail.com', '01911075401', 'Islam', 'N/A', 'N/A', 'N/A', '01-01-2023', '1697349044280_Mst. Nusrat Jahan(AT).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-15 05:50:44'),
('localhost', 1006, '1698322655639', 'MD SAIFUDDIN SOHEL', 'Male', 'N/A', '1010101010', 'N1076783', 1076783, 'Assistant Headmaster', 'B', 'Arts', 'N/A', '0', 'saifuddinsohel84@gmail.com', '01912609171', 'Islam', 'N/A', 'N/A', 'N/A', '01/08/2023', '1695616773219_Md. Saifuddin Sohel(AHT).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 04:39:33'),
('localhost', 1007, '1698164833502', 'Md.Hamim Miah', 'Male', 'N/A', '239027', 'N56815436', 56815436, 'Assistant Teacher', 'C', 'N/A', 'N/A', '0', 'hamimmiah77@gmail.com', '01760503512', 'Islam', 'N/A', 'N/A', 'N/A', '29-01-2022', '1697348743513_Md. Hamim Miah(AT).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-15 05:45:43'),
('localhost', 1008, '1698326587047', 'Rupmala Bala', 'Female', 'N/A', '623373', 'N1104624', 1104624, 'Assistant Teacher', 'C', 'N/A', 'N/A', '0', 'rupmalabala1981@gmail.com', '01762080149', 'Hinduism', 'N/A', 'N/A', 'N/A', '18-04-2011', '1697348371621_Rupmala bala(AT).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-15 05:39:31'),
('localhost', 1010, '1698790717846', 'Tapon Kumar Mondal', 'Male', 'N/A', '490959', 'D1013839', 1013839, 'Assistant Teacher', 'C', 'N/A', 'N/A', '0', 'toponkumarmondol@gmail.com', '01781330520', 'Hinduism', 'N/A', 'N/A', 'N/A', '10-04-2000', '1697346989456_Topon Kumar Mondol(AT).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-15 05:16:29'),
('localhost', 1011, '1698763842482', 'Gita Rani Biswas', 'Female', 'N/A', '171278', 'D487798', 487798, 'Assistant Teacher', 'C', 'N/A', 'N/A', '0', 'grbiswas79@gmail.com', '01720611979', 'Hinduism', 'N/A', 'N/A', 'N/A', '10-04-2002', '1697347194873_Gita Rani Biswas(AT).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-15 05:19:54'),
('localhost', 1012, '1698619300861', 'Subodh Kumar Biswas', 'Male', 'N/A', '688812', 'D477686', 477686, 'Assistant Teacher', 'C', 'N/A', 'N/A', '0', 'subodhtamar@gmail.com', '01740592230', 'Hinduism', 'N/A', 'N/A', 'N/A', '01-01-1995', '1697344748279_Subodh Kumar Biswas(AT).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-15 04:39:08'),
('localhost', 1013, '1698282814247', 'Tushar Kumar Chakrabortty', 'Male', 'N/A', '673303', 'N1143699', 1143699, 'Assistant Teacher', 'C', 'N/A', 'N/A', '0', 'tusharchakrabortty621@gmail.com', '01745149937', 'Hinduism', 'N/A', 'N/A', 'N/A', '06-04-2014', '1697347693732_Tushar Kumar Chakrobortty(AT).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-15 05:28:13'),
('localhost', 1014, '1698328765586', 'Abdur Rahman', 'Male', 'N/A', '494979', 'N1128879', 1128879, 'Assistant Teacher', 'C', 'N/A', 'N/A', '0', 'abdurrahmanrafia@gmail.com', '01728047047', 'Islam', 'N/A', 'N/A', 'N/A', '29-11-2015', '1697347981724_Abdur Rahman(AT).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-15 05:33:01'),
('localhost', 1015, '1698120861164', 'Mita Rani Indra', 'Female', 'N/A', '472300', 'D477685', 477685, 'Assistant Teacher', 'C', 'N/A', 'N/A', '0', 'mitaraniindra92@gmail.com', '01734130263', 'Hinduism', 'N/A', 'N/A', 'N/A', '01-01-1995', '1697346501412_Mita Rani Indra(AT).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-15 05:08:21'),
('localhost', 2001, '1698198513715', 'Nurul Islam', 'Male', 'N/A', '100399406', 'D1036374', 1036374, 'Instructor', 'D', 'N/A', 'N/A', '', 'nurulislam858604@gmail.com', '01740858604', 'Islam', 'N/A', 'N/A', 'N/A', '16/09/2007', '1695713878366_14 Nurul Islam.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-26 07:37:58'),
('localhost', 2002, '1698911221882', 'Md. Sabuj Mia', 'Male', 'N/A', '583454', 'N272569', 272569, 'Instructor', 'D', 'N/A', 'N/A', '', 'sabujmia9851@gmail.com', '01772783700', 'Islam', 'N/A', 'N/A', 'N/A', '', '1695718143228_15 Md.Sabuj Mia.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-26 08:49:03'),
('localhost', 2003, '1698510917831', 'Faruk hossen', 'Male', 'N/A', '100417022', 'D2027632', 2027632, 'Assistant Teacher', 'C', 'Science', 'N/A', '', 'faruk.hos09@gmail.com', '01717556835', 'Islam', '1978-05-31', 'N/A ', 'N/A', '16/01/2011', '1695733571961_Faruk Hossen.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-26 09:19:34'),
('localhost', 2004, '1698828577674', 'Robiul ', 'Male', 'N/A', '593893', '1107999', 107999, 'Assistant Teacher', 'C', 'N/A', 'N/A', '', 'robiulislamkon@gmail.com', '01747671581', 'Islam', 'N/A', 'N/A', 'N/A', '14/01/2014', '1695720739700_8 Robiul.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-26 09:32:19'),
('localhost', 2005, '1698377430582', 'Md. Saifuddin', 'Male', 'N/A', '395247', '1113721', 113721, 'Assistant Teacher', 'C', 'N/A', 'N/A', '', 'ahmedsaifuddin388@gmail.com', '01704646009', 'Islam', 'N/A', 'N/A', 'N/A', '17/02/2014', '1695720905036_11 Md.Saifuddin.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-26 09:35:05'),
('localhost', 2006, '1698199658666', 'Gourango Mandol', 'Male', 'Masters (Economics) \r\n', '100453306', 'N1037309', 1037309, 'Assistant Teacher', 'C', 'N/A', 'N/A', '', 'gourangomandol83@gmail.com', '01739827483', 'Hinduism', '1983-05-03', 'N/A    ', 'N/A', '01/01/2012', '1695804121156_7 Gourango Mandol.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-27 08:42:01'),
('localhost', 2007, '1698167869734', 'Tahmina Nasrin', 'Male', 'N/A', '890993', 'N1145291', 1145291, 'Assistant Teacher', 'C', 'N/A', 'N/A', '', 'tnasrin1987@gmail.com', '01758323437', 'Islam', 'N/A', 'N/A', 'N/A', '', '1695820855061_12 Tahmina Nasrin.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-27 13:20:55'),
('localhost', 2008, '1698312441327', 'Pizush roy', 'Male', 'N/A', '102589', 'N1111931', 1111931, 'Assistant Teacher', 'C', 'Commerce', 'N/A', '', 'pizushroy617@gmail.com', '01982650010', 'Hinduism', 'N/A', 'N/A', 'N/A', '', '1695821026488_10 Pizush Roy.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-27 13:23:46'),
('localhost', 2009, '1698832480505', 'MOSSA. SHAHANA PERVIN', 'Female', 'N/A', '447114', 'N1062427', 1062427, 'Assistant Teacher', 'C', 'N/A', 'N/A', '', 'shahanapervin799@gmail.com', '01707040388', 'Islam', 'N/A', 'N/A', 'N/A', '', '1695824344950_6 Shahana Parvin.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-27 14:19:04'),
('localhost', 2010, '1698386879354', 'RAFEA SULTANA', 'Female', 'N/A', '460820', 'D1041430', 1041430, 'Assistant Teacher', 'C', 'N/A', 'N/A', '', 'rafeasultana81@gmail.com', '01737150963', 'Islam', 'N/A', 'N/A', 'N/A', '', '1695824501096_4 Rafea Sultana.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-27 14:21:41'),
('localhost', 2011, '1698395749087', 'MD. MASUDUR RAHMAN', 'Male', 'N/A', '367981', 'N1108000', 1108000, 'Assistant Teacher', 'C', 'Science', 'N/A', '', 'tmasudurrahman110830@gmail.com', '01848020707', 'Islam', 'N/A', 'N/A', 'N/A', '', '1695824757231_9 Md. Masudur Rahman.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-27 14:25:57'),
('localhost', 2012, '1698205030650', 'BIKAS SEN', 'Male', 'N/A', '457901', 'D489338', 489338, 'Assistant Teacher', 'C', 'N/A', 'N/A', '', 'bikashsen866@gmail.com', '01758917633', 'undefined', 'N/A', 'N/A', 'N/A', '', '1695825280622_3 Bikash Sen.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-27 14:29:52'),
('localhost', 2013, '1698416190663', 'Md. Anwar Hossain', 'Male', 'N/A', '100485967', 'N1109120', 1109120, 'Assistant Teacher', 'C', 'N/A', 'N/A', '', 'mahossain300@gmail.com', '01849790570', 'Islam', 'N/A', 'N/A', 'N/A', '16/03/2011', '1696410767177_13 Md.Anwar Hossain (1).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 09:12:47'),
('localhost', 3728, '1698912846931892351521', 'Nazrul Islam', 'Male', 'N/A', '101540889', 'N56862474', 56862474, 'Assistant Teacher ICT', 'C', 'N/A', 'N/A', 'XXXXXXXXXXX', 'nazrulislamkbf77@gmail.com', '01750076164', 'Islam', '1978-10-05', 'Boalmari, Faridpur', 'A+ve', '2004-10-14', '1698912846928_Gallery_1691899059922.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-11-02 08:14:06'),
('localhost', 3729, '169891657325875886318', 'Mohammad Moniruzzaman', 'Male', 'N/A', '101540897', 'N56851763', 56851763, 'Headmaster', 'A', 'N/A', 'N/A', 'XXXXXXXXXXX', 'bejidangaamenahs@gmail.com', '01712191666', 'Islam', '1976-09-06', 'Bejidanga, Alfadanga, Faridpur', 'B+ve', '2003-01-01', '1698916573253_FB_IMG_1698915773594.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-11-02 09:16:13'),
('localhost', 3733, '1697209362836', 'SAANVI', 'Female', 'N/A', '100555346', 'N1147426', 1147426, 'Assistant Teacher', 'C', 'N/A', 'N/A', '01743452911', 'api.saanvi.abc@gmail.com', '', 'Hinduism', 'N/A', ' Boalmari-Faridpur', 'N/A', '2019-02-15', 'female_avatar.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 16:10:32'),
('localhost', 3736, '1733765214180561196859', 'Maria', 'Male', 'N/A', '436', 'N10121316', 10121316, 'ICT Teacher', 'D', 'N/A', 'N/A', 'XXXXXXXXXXX', 'nomail@abc.comdf', '23412424', 'Islam', '', '', 'N/A', '', 'male_avatar.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 17:26:54'),
('localhost', 3737, '173376526403835730434', 'dfa', 'Male', 'N/A', '', 'N101213162345', 2147483647, 'ICT Teacher', 'D', 'N/A', 'N/A', 'XXXXXXXXXXX', 'nomail@abc.comsdfws', '432525', 'Islam', '', '', 'N/A', '', '1733765264034_happy-woman-standing-with-book_23-2148095834.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2024-12-09 17:27:44');

-- --------------------------------------------------------

--
-- Table structure for table `terms_of_use`
--

CREATE TABLE `terms_of_use` (
  `domain` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `heading` varchar(500) NOT NULL,
  `paragraph` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transcript_origin`
--

CREATE TABLE `transcript_origin` (
  `domain` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `at_date` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `session` int(11) NOT NULL DEFAULT 2023,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `student_uuid` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `roll` int(11) NOT NULL,
  `at_status` varchar(100) NOT NULL DEFAULT 'passed',
  `avatar` varchar(100) NOT NULL DEFAULT 'male_avatar.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transcript_report`
--

CREATE TABLE `transcript_report` (
  `domain` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `at_date` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `session` int(11) NOT NULL DEFAULT 2023,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `subject_flag` varchar(100) NOT NULL,
  `subject_code` varchar(100) NOT NULL,
  `chapter` varchar(100) NOT NULL,
  `pi` varchar(100) NOT NULL,
  `pi_group` varchar(200) NOT NULL,
  `pi_no` int(11) NOT NULL,
  `checkout` varchar(100) NOT NULL,
  `bg_color` varchar(100) NOT NULL,
  `teacher_uuid` varchar(100) NOT NULL,
  `student_uuid` varchar(100) NOT NULL,
  `transcript_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `roll` int(11) NOT NULL,
  `avatar` varchar(100) NOT NULL DEFAULT 'male_avatar.png',
  `at_status` varchar(100) NOT NULL DEFAULT 'incomplete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transcript_report`
--

INSERT INTO `transcript_report` (`domain`, `ID`, `at_date`, `session`, `class`, `section`, `subject`, `subject_flag`, `subject_code`, `chapter`, `pi`, `pi_group`, `pi_no`, `checkout`, `bg_color`, `teacher_uuid`, `student_uuid`, `transcript_name`, `name`, `roll`, `avatar`, `at_status`) VALUES
('localhost', 1, '2024-03-05 21:35:37', 2024, 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-1', '0', 'gp1', 0, '1698845201207cc3556329d4583319dca2e10ff96baf7gp1_6-1-1', 'bg-warning', '1697209362834', '1698845201207', '', 'লিমন মিনা ', 1, 'male_avatar.png', 'incomplete'),
('localhost', 2, '2024-03-05 21:35:38', 2024, 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-2', '0', 'gp1', 0, '1698845201207cc3556329d4583319dca2e10ff96baf7gp1_6-1-2', 'bg-warning', '1697209362834', '1698845201207', '', 'লিমন মিনা ', 1, 'male_avatar.png', 'incomplete'),
('localhost', 3, '2024-03-05 21:35:43', 2024, 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-3', '0', 'gp1', 0, '1698845201207cc3556329d4583319dca2e10ff96baf7gp1_6-1-3', 'bg-warning', '1697209362834', '1698845201207', '', 'লিমন মিনা ', 1, 'male_avatar.png', 'incomplete'),
('localhost', 4, '2024-03-05 21:35:48', 2024, 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-1', '-1', 'gp2', 0, '1698845201207cc3556329d4583319dca2e10ff96baf7gp2_6-2-1', 'bg-danger', '1697209362834', '1698845201207', '', 'লিমন মিনা ', 1, 'male_avatar.png', 'incomplete'),
('localhost', 5, '2024-03-05 21:35:49', 2024, 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-2', '-1', 'gp2', 0, '1698845201207cc3556329d4583319dca2e10ff96baf7gp2_6-2-2', 'bg-danger', '1697209362834', '1698845201207', '', 'লিমন মিনা ', 1, 'male_avatar.png', 'incomplete'),
('localhost', 6, '2024-03-05 21:35:51', 2024, 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp3_6-3-1', '1', 'gp3', 0, '1698845201207cc3556329d4583319dca2e10ff96baf7gp3_6-3-1', 'bg-success', '1697209362834', '1698845201207', '', 'লিমন মিনা ', 1, 'male_avatar.png', 'incomplete'),
('localhost', 7, '2024-03-05 21:35:52', 2024, 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp3_6-3-2', '1', 'gp3', 0, '1698845201207cc3556329d4583319dca2e10ff96baf7gp3_6-3-2', 'bg-success', '1697209362834', '1698845201207', '', 'লিমন মিনা ', 1, 'male_avatar.png', 'incomplete'),
('localhost', 8, '2024-03-05 21:57:28', 2024, 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-1', '-1', 'gp1', 0, '1697451431015cc3556329d4583319dca2e10ff96baf7gp1_6-1-1', 'bg-danger', '1697209362834', '1697451431015', '', 'Sumi Akter', 1, '1697221782178_download (1).jpeg', 'incomplete'),
('localhost', 9, '2024-03-05 21:57:29', 2024, 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-2', '-1', 'gp1', 0, '1697451431015cc3556329d4583319dca2e10ff96baf7gp1_6-1-2', 'bg-danger', '1697209362834', '1697451431015', '', 'Sumi Akter', 1, '1697221782178_download (1).jpeg', 'incomplete'),
('localhost', 10, '2024-03-05 21:57:30', 2024, 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-3', '-1', 'gp1', 0, '1697451431015cc3556329d4583319dca2e10ff96baf7gp1_6-1-3', 'bg-danger', '1697209362834', '1697451431015', '', 'Sumi Akter', 1, '1697221782178_download (1).jpeg', 'incomplete'),
('localhost', 11, '2024-03-05 21:57:32', 2024, 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-1', '0', 'gp2', 0, '1697451431015cc3556329d4583319dca2e10ff96baf7gp2_6-2-1', 'bg-warning', '1697209362834', '1697451431015', '', 'Sumi Akter', 1, '1697221782178_download (1).jpeg', 'incomplete'),
('localhost', 12, '2024-03-05 21:57:33', 2024, 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-2', '0', 'gp2', 0, '1697451431015cc3556329d4583319dca2e10ff96baf7gp2_6-2-2', 'bg-warning', '1697209362834', '1697451431015', '', 'Sumi Akter', 1, '1697221782178_download (1).jpeg', 'incomplete'),
('localhost', 13, '2024-03-05 21:57:35', 2024, 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp3_6-3-1', '1', 'gp3', 0, '1697451431015cc3556329d4583319dca2e10ff96baf7gp3_6-3-1', 'bg-success', '1697209362834', '1697451431015', '', 'Sumi Akter', 1, '1697221782178_download (1).jpeg', 'incomplete'),
('localhost', 14, '2024-03-05 21:57:36', 2024, 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp3_6-3-2', '1', 'gp3', 0, '1697451431015cc3556329d4583319dca2e10ff96baf7gp3_6-3-2', 'bg-success', '1697209362834', '1697451431015', '', 'Sumi Akter', 1, '1697221782178_download (1).jpeg', 'incomplete'),
('localhost', 15, '2024-03-05 23:58:58', 2024, 'Six', 'A', 'গণিত', 'Six_A_গণিত', '46d4f7e8cccea38395f9a23882248377', 'gp1_6-1-1', '1', 'gp1', 0, '169745143101546d4f7e8cccea38395f9a23882248377gp1_6-1-1', 'bg-success', '1697209362834', '1697451431015', '', 'Sumi Akter', 1, '1697221782178_download (1).jpeg', 'incomplete'),
('localhost', 16, '2024-03-05 23:58:59', 2024, 'Six', 'A', 'গণিত', 'Six_A_গণিত', '46d4f7e8cccea38395f9a23882248377', 'gp1_6-1-2', '1', 'gp1', 0, '169745143101546d4f7e8cccea38395f9a23882248377gp1_6-1-2', 'bg-success', '1697209362834', '1697451431015', '', 'Sumi Akter', 1, '1697221782178_download (1).jpeg', 'incomplete'),
('localhost', 17, '2024-03-05 23:59:00', 2024, 'Six', 'A', 'গণিত', 'Six_A_গণিত', '46d4f7e8cccea38395f9a23882248377', 'gp2_6-2-1', '-1', 'gp2', 0, '169745143101546d4f7e8cccea38395f9a23882248377gp2_6-2-1', 'bg-danger', '1697209362834', '1697451431015', '', 'Sumi Akter', 1, '1697221782178_download (1).jpeg', 'incomplete'),
('localhost', 18, '2024-03-05 23:59:01', 2024, 'Six', 'A', 'গণিত', 'Six_A_গণিত', '46d4f7e8cccea38395f9a23882248377', 'gp2_6-3-1', '-1', 'gp2', 0, '169745143101546d4f7e8cccea38395f9a23882248377gp2_6-3-1', 'bg-danger', '1697209362834', '1697451431015', '', 'Sumi Akter', 1, '1697221782178_download (1).jpeg', 'incomplete'),
('localhost', 19, '2024-03-06 11:43:55', 2024, 'Six', 'A', 'ডিজিটাল-প্রযুক্তি', 'Six_A_ডিজিটাল', 'b60ca3b6c41b963b86be96b3bf449f3c', 'gp1_6-1-1', '-1', 'gp1', 0, '1697451431015b60ca3b6c41b963b86be96b3bf449f3cgp1_6-1-1', 'bg-danger', '1697209362834', '1697451431015', '', 'Sumi Akter', 1, '1697221782178_download (1).jpeg', 'incomplete'),
('localhost', 20, '2024-03-06 11:43:56', 2024, 'Six', 'A', 'ডিজিটাল-প্রযুক্তি', 'Six_A_ডিজিটাল', 'b60ca3b6c41b963b86be96b3bf449f3c', 'gp1_6-4-1', '-1', 'gp1', 0, '1697451431015b60ca3b6c41b963b86be96b3bf449f3cgp1_6-4-1', 'bg-danger', '1697209362834', '1697451431015', '', 'Sumi Akter', 1, '1697221782178_download (1).jpeg', 'incomplete'),
('localhost', 21, '2024-03-06 11:43:57', 2024, 'Six', 'A', 'ডিজিটাল-প্রযুক্তি', 'Six_A_ডিজিটাল', 'b60ca3b6c41b963b86be96b3bf449f3c', 'gp2_6-5-1', '-1', 'gp2', 0, '1697451431015b60ca3b6c41b963b86be96b3bf449f3cgp2_6-5-1', 'bg-danger', '1697209362834', '1697451431015', '', 'Sumi Akter', 1, '1697221782178_download (1).jpeg', 'incomplete'),
('localhost', 22, '2024-03-06 11:43:59', 2024, 'Six', 'A', 'ডিজিটাল-প্রযুক্তি', 'Six_A_ডিজিটাল', 'b60ca3b6c41b963b86be96b3bf449f3c', 'gp3_6-2-1', '0', 'gp3', 0, '1697451431015b60ca3b6c41b963b86be96b3bf449f3cgp3_6-2-1', 'bg-warning', '1697209362834', '1697451431015', '', 'Sumi Akter', 1, '1697221782178_download (1).jpeg', 'incomplete'),
('localhost', 23, '2024-03-06 11:44:00', 2024, 'Six', 'A', 'ডিজিটাল-প্রযুক্তি', 'Six_A_ডিজিটাল', 'b60ca3b6c41b963b86be96b3bf449f3c', 'gp3_6-3-1', '0', 'gp3', 0, '1697451431015b60ca3b6c41b963b86be96b3bf449f3cgp3_6-3-1', 'bg-warning', '1697209362834', '1697451431015', '', 'Sumi Akter', 1, '1697221782178_download (1).jpeg', 'incomplete'),
('localhost', 24, '2024-03-06 11:44:01', 2024, 'Six', 'A', 'ডিজিটাল-প্রযুক্তি', 'Six_A_ডিজিটাল', 'b60ca3b6c41b963b86be96b3bf449f3c', 'gp4_6-6-1', '0', 'gp4', 0, '1697451431015b60ca3b6c41b963b86be96b3bf449f3cgp4_6-6-1', 'bg-warning', '1697209362834', '1697451431015', '', 'Sumi Akter', 1, '1697221782178_download (1).jpeg', 'incomplete'),
('localhost', 25, '2024-03-06 11:44:02', 2024, 'Six', 'A', 'ডিজিটাল-প্রযুক্তি', 'Six_A_ডিজিটাল', 'b60ca3b6c41b963b86be96b3bf449f3c', 'gp4_6-7-1', '1', 'gp4', 0, '1697451431015b60ca3b6c41b963b86be96b3bf449f3cgp4_6-7-1', 'bg-success', '1697209362834', '1697451431015', '', 'Sumi Akter', 1, '1697221782178_download (1).jpeg', 'incomplete'),
('localhost', 26, '2024-03-06 11:44:03', 2024, 'Six', 'A', 'ডিজিটাল-প্রযুক্তি', 'Six_A_ডিজিটাল', 'b60ca3b6c41b963b86be96b3bf449f3c', 'gp4_6-8-1', '1', 'gp4', 0, '1697451431015b60ca3b6c41b963b86be96b3bf449f3cgp4_6-8-1', 'bg-success', '1697209362834', '1697451431015', '', 'Sumi Akter', 1, '1697221782178_download (1).jpeg', 'incomplete'),
('localhost', 27, '2024-03-06 11:44:05', 2024, 'Six', 'A', 'ডিজিটাল-প্রযুক্তি', 'Six_A_ডিজিটাল', 'b60ca3b6c41b963b86be96b3bf449f3c', 'gp4_6-9-1', '1', 'gp4', 0, '1697451431015b60ca3b6c41b963b86be96b3bf449f3cgp4_6-9-1', 'bg-success', '1697209362834', '1697451431015', '', 'Sumi Akter', 1, '1697221782178_download (1).jpeg', 'incomplete'),
('localhost', 28, '2024-03-10 14:06:57', 2024, 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp1_6-2-1', '1', 'gp1', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp1_6-2-1', 'bg-success', '1697209362834', '1698268761255', '', 'Amir Hamza', 1, 'male_avatar.png', 'incomplete'),
('localhost', 29, '2024-03-10 14:06:58', 2024, 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp1_6-2-2', '1', 'gp1', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp1_6-2-2', 'bg-success', '1697209362834', '1698268761255', '', 'Amir Hamza', 1, 'male_avatar.png', 'incomplete'),
('localhost', 30, '2024-03-10 14:06:59', 2024, 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp2_6-3-1', '1', 'gp2', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp2_6-3-1', 'bg-success', '1697209362834', '1698268761255', '', 'Amir Hamza', 1, 'male_avatar.png', 'incomplete'),
('localhost', 31, '2024-03-10 14:07:00', 2024, 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp2_6-3-2', '1', 'gp2', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp2_6-3-2', 'bg-success', '1697209362834', '1698268761255', '', 'Amir Hamza', 1, 'male_avatar.png', 'incomplete'),
('localhost', 32, '2024-03-10 14:07:01', 2024, 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp2_6-4-1', '1', 'gp2', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp2_6-4-1', 'bg-success', '1697209362834', '1698268761255', '', 'Amir Hamza', 1, 'male_avatar.png', 'incomplete'),
('localhost', 33, '2024-03-10 14:07:02', 2024, 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp2_6-4-2', '1', 'gp2', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp2_6-4-2', 'bg-success', '1697209362834', '1698268761255', '', 'Amir Hamza', 1, 'male_avatar.png', 'incomplete'),
('localhost', 34, '2024-03-10 14:07:04', 2024, 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp3_6-5-1', '1', 'gp3', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp3_6-5-1', 'bg-success', '1697209362834', '1698268761255', '', 'Amir Hamza', 1, 'male_avatar.png', 'incomplete'),
('localhost', 35, '2024-03-10 14:07:05', 2024, 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp3_6-5-2', '1', 'gp3', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp3_6-5-2', 'bg-success', '1697209362834', '1698268761255', '', 'Amir Hamza', 1, 'male_avatar.png', 'incomplete'),
('localhost', 36, '2024-03-10 14:07:06', 2024, 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp4_6-6-1', '1', 'gp4', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp4_6-6-1', 'bg-success', '1697209362834', '1698268761255', '', 'Amir Hamza', 1, 'male_avatar.png', 'incomplete'),
('localhost', 37, '2024-03-10 14:07:08', 2024, 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp4_6-6-2', '1', 'gp4', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp4_6-6-2', 'bg-success', '1697209362834', '1698268761255', '', 'Amir Hamza', 1, 'male_avatar.png', 'incomplete'),
('localhost', 38, '2024-03-10 14:07:09', 2024, 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp4_6-7-1', '1', 'gp4', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp4_6-7-1', 'bg-success', '1697209362834', '1698268761255', '', 'Amir Hamza', 1, 'male_avatar.png', 'incomplete'),
('localhost', 39, '2024-03-10 14:07:10', 2024, 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp4_6-7-2', '1', 'gp4', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp4_6-7-2', 'bg-success', '1697209362834', '1698268761255', '', 'Amir Hamza', 1, 'male_avatar.png', 'incomplete'),
('localhost', 40, '2024-03-10 14:07:12', 2024, 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp2_6-8-1', '1', 'gp2', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp2_6-8-1', 'bg-success', '1697209362834', '1698268761255', '', 'Amir Hamza', 1, 'male_avatar.png', 'incomplete'),
('localhost', 41, '2024-03-10 14:07:13', 2024, 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp2_6-8-2', '1', 'gp2', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp2_6-8-2', 'bg-success', '1697209362834', '1698268761255', '', 'Amir Hamza', 1, 'male_avatar.png', 'incomplete'),
('localhost', 42, '2024-03-10 14:07:14', 2024, 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp5_6-9-1', '1', 'gp5', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp5_6-9-1', 'bg-success', '1697209362834', '1698268761255', '', 'Amir Hamza', 1, 'male_avatar.png', 'incomplete'),
('localhost', 43, '2024-03-10 14:07:15', 2024, 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp5_6-9-2', '1', 'gp5', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp5_6-9-2', 'bg-success', '1697209362834', '1698268761255', '', 'Amir Hamza', 1, 'male_avatar.png', 'incomplete'),
('localhost', 44, '2024-03-10 14:07:38', 2024, 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp5_6-10-1', '1', 'gp5', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp5_6-10-1', 'bg-success', '1697209362834', '1698268761255', '', 'Amir Hamza', 1, 'male_avatar.png', 'incomplete'),
('localhost', 45, '2024-03-10 14:07:38', 2024, 'Six', 'B', 'বিজ্ঞান-অনুশীলন-বই', 'Six_B_বিজ্ঞান', '5804989be6868f0c12d43525b3ed32c6', 'gp5_6-10-2', '1', 'gp5', 0, '16982687612555804989be6868f0c12d43525b3ed32c6gp5_6-10-2', 'bg-success', '1697209362834', '1698268761255', '', 'Amir Hamza', 1, 'male_avatar.png', 'incomplete'),
('localhost', 46, '2024-12-04 21:38:23', 2024, 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-1', '1', 'gp1', 0, '1698506063682cc3556329d4583319dca2e10ff96baf7gp1_6-1-1', 'bg-success', '1697209362834', '1698506063682', '', 'তড়িতা অধিকারী ', 1, 'female_avatar.png', 'incomplete'),
('localhost', 47, '2024-12-04 21:38:24', 2024, 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-2', '0', 'gp1', 0, '1698506063682cc3556329d4583319dca2e10ff96baf7gp1_6-1-2', 'bg-warning', '1697209362834', '1698506063682', '', 'তড়িতা অধিকারী ', 1, 'female_avatar.png', 'incomplete'),
('localhost', 48, '2024-12-04 21:38:25', 2024, 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-3', '0', 'gp1', 0, '1698506063682cc3556329d4583319dca2e10ff96baf7gp1_6-1-3', 'bg-warning', '1697209362834', '1698506063682', '', 'তড়িতা অধিকারী ', 1, 'female_avatar.png', 'incomplete'),
('localhost', 49, '2024-12-04 22:29:59', 2024, 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-1', '0', 'gp1', 0, '1698299881366cc3556329d4583319dca2e10ff96baf7gp1_6-1-1', 'bg-warning', '1697209362834', '1698299881366', '', 'Chompa Khatun', 2, 'female_avatar.png', 'incomplete'),
('localhost', 50, '2024-12-04 22:30:00', 2024, 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-2', '1', 'gp1', 0, '1698299881366cc3556329d4583319dca2e10ff96baf7gp1_6-1-2', 'bg-success', '1697209362834', '1698299881366', '', 'Chompa Khatun', 2, 'female_avatar.png', 'incomplete'),
('localhost', 51, '2024-12-04 22:30:45', 2024, 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-3', '0', 'gp1', 0, '1698299881366cc3556329d4583319dca2e10ff96baf7gp1_6-1-3', 'bg-warning', '1697209362834', '1698299881366', '', 'Chompa Khatun', 2, 'female_avatar.png', 'incomplete'),
('localhost', 52, '2024-12-04 22:40:50', 2024, 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp2_6-2-1', '0', 'gp2', 0, '1698738939274cc3556329d4583319dca2e10ff96baf7gp2_6-2-1', 'bg-warning', '1697209362834', '1698738939274', '', 'Karima', 4, 'female_avatar.png', 'incomplete'),
('localhost', 53, '2024-12-04 22:40:52', 2024, 'Six', 'A', 'English', 'Six_A_English', 'cc3556329d4583319dca2e10ff96baf7', 'gp1_6-1-1', '0', 'gp1', 0, '1698460381556cc3556329d4583319dca2e10ff96baf7gp1_6-1-1', 'bg-warning', '1697209362834', '1698460381556', '', 'উৎসব বিশ্বাস', 5, 'male_avatar.png', 'incomplete');

-- --------------------------------------------------------

--
-- Table structure for table `user_admin`
--

CREATE TABLE `user_admin` (
  `domain` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `at_date` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `admin_uuid` varchar(100) NOT NULL,
  `hash_username` varchar(100) NOT NULL DEFAULT 'user@admin.com',
  `hash_password` varchar(100) NOT NULL DEFAULT '905e60b34aa5eb27556e23e9a46bd144',
  `hash_name` varchar(100) NOT NULL DEFAULT 'admin',
  `hash_avatar` varchar(100) NOT NULL DEFAULT 'male_avatar.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_admin`
--

INSERT INTO `user_admin` (`domain`, `ID`, `at_date`, `admin_uuid`, `hash_username`, `hash_password`, `hash_name`, `hash_avatar`) VALUES
('localhost', 11, '2023-10-23 17:11:41', '', 'user@admin.com', '905e60b34aa5eb27556e23e9a46bd144', 'admin', 'male_avatar.png'),
('saanviabc.com', 17, '2023-10-23 17:11:41', '', 'user@admin.com', '905e60b34aa5eb27556e23e9a46bd144', 'admin', 'male_avatar.png'),
('sahasrailpphs.saanviabc.com', 18, '2023-10-23 17:11:41', '', 'user@admin.com', '905e60b34aa5eb27556e23e9a46bd144', 'admin', 'male_avatar.png'),
('gohailbarimb.saanviabc.com', 19, '2023-10-23 17:11:41', '', 'user@admin.com', '905e60b34aa5eb27556e23e9a46bd144', 'admin', 'male_avatar.png'),
('kadirdiblhs.saanviabc.com', 20, '2023-10-23 17:11:41', '', 'user@admin.com', '905e60b34aa5eb27556e23e9a46bd144', 'admin', 'male_avatar.png'),
('domain.saanviabc.com', 21, '2023-10-23 17:11:41', '', 'user@admin.com', '905e60b34aa5eb27556e23e9a46bd144', 'admin', 'male_avatar.png'),
('rangamularkandihaacademy.edu.bd', 25, '2023-10-23 17:11:41', '', 'user@admin.com', '905e60b34aa5eb27556e23e9a46bd144', 'admin', 'male_avatar.png'),
('tamarhazijmhs.edu.bd', 26, '2023-10-23 17:11:41', '', 'user@admin.com', '905e60b34aa5eb27556e23e9a46bd144', 'admin', 'male_avatar.png'),
('umarnagarcdm.edu.bd', 28, '2023-10-23 17:40:50', '', 'user@admin.com', '905e60b34aa5eb27556e23e9a46bd144', 'admin', 'male_avatar.png'),
('bga.saanviabc.com', 29, '2023-11-01 13:54:44', '', 'user@admin.com', '905e60b34aa5eb27556e23e9a46bd144', 'admin', 'male_avatar.png'),
('bejidangakawhs', 30, '2023-11-02 13:16:17', '', 'user@admin.com', '905e60b34aa5eb27556e23e9a46bd144', 'admin', 'male_avatar.png'),
('bejidangakawhs.saanviabc.com', 31, '2023-11-02 13:18:29', '', 'user@admin.com', '905e60b34aa5eb27556e23e9a46bd144', 'admin', 'male_avatar.png'),
('domainname.com', 32, '2024-12-07 23:37:23', '', 'user@admin.com', '905e60b34aa5eb27556e23e9a46bd144', 'admin', 'male_avatar.png'),
('demo.com', 35, '2024-12-08 11:43:26', '', 'user@admin.com', '905e60b34aa5eb27556e23e9a46bd144', 'admin', 'male_avatar.png');

-- --------------------------------------------------------

--
-- Table structure for table `___ini`
--

CREATE TABLE `___ini` (
  `ID` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL DEFAULT 'localhost',
  `lics` varchar(100) NOT NULL,
  `join_date` varchar(100) NOT NULL,
  `expire_date` varchar(100) NOT NULL DEFAULT 'null',
  `at_status` tinyint(1) NOT NULL DEFAULT 1,
  `checkout` tinyint(1) NOT NULL DEFAULT 0,
  `at_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `___ini`
--

INSERT INTO `___ini` (`ID`, `domain`, `lics`, `join_date`, `expire_date`, `at_status`, `checkout`, `at_date`) VALUES
(10, 'localhost', 'ABC123XYZL', '10/7/2023', '10/7/2024', 1, 1, '2023-10-07'),
(16, 'eduxoom.com', 'ABC123XYZS', '10/7/2023', '10/7/2025', 1, 1, '2023-10-07'),
(40, 'demo.com', 'EBFC0C0D1575138C2472', '12/8/2024', '8/12/2025', 1, 0, '2024-12-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `uuid` (`uuid`);

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `attn_record`
--
ALTER TABLE `attn_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attn_student`
--
ALTER TABLE `attn_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authentication_session`
--
ALTER TABLE `authentication_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `bi_catagory`
--
ALTER TABLE `bi_catagory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bi_mark`
--
ALTER TABLE `bi_mark`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bi_transcript`
--
ALTER TABLE `bi_transcript`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `class_section`
--
ALTER TABLE `class_section`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `headofschool`
--
ALTER TABLE `headofschool`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ini_bi_catagory`
--
ALTER TABLE `ini_bi_catagory`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `catagory_name` (`catagory_name`),
  ADD UNIQUE KEY `catagory_code` (`catagory_code`);

--
-- Indexes for table `ini_class_section`
--
ALTER TABLE `ini_class_section`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ini_pi`
--
ALTER TABLE `ini_pi`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ini_subject`
--
ALTER TABLE `ini_subject`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `parent_uuid` (`parent_uuid`);

--
-- Indexes for table `pic_mark`
--
ALTER TABLE `pic_mark`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pis_mark`
--
ALTER TABLE `pis_mark`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `privacy_policy`
--
ALTER TABLE `privacy_policy`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `repository`
--
ALTER TABLE `repository`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routine`
--
ALTER TABLE `routine`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `school_settings`
--
ALTER TABLE `school_settings`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `staff_id` (`staff_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `student_uuid` (`student_uuid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `student_rank`
--
ALTER TABLE `student_rank`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `teacher_id` (`teacher_id`),
  ADD UNIQUE KEY `teacher_uuid` (`teacher_uuid`);

--
-- Indexes for table `terms_of_use`
--
ALTER TABLE `terms_of_use`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `transcript_origin`
--
ALTER TABLE `transcript_origin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `transcript_report`
--
ALTER TABLE `transcript_report`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_admin`
--
ALTER TABLE `user_admin`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `domain` (`domain`);

--
-- Indexes for table `___ini`
--
ALTER TABLE `___ini`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `domain` (`domain`),
  ADD UNIQUE KEY `lics` (`lics`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admission`
--
ALTER TABLE `admission`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attn_record`
--
ALTER TABLE `attn_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `attn_student`
--
ALTER TABLE `attn_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bi_catagory`
--
ALTER TABLE `bi_catagory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bi_mark`
--
ALTER TABLE `bi_mark`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `bi_transcript`
--
ALTER TABLE `bi_transcript`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `class_section`
--
ALTER TABLE `class_section`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `headofschool`
--
ALTER TABLE `headofschool`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ini_bi_catagory`
--
ALTER TABLE `ini_bi_catagory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `ini_class_section`
--
ALTER TABLE `ini_class_section`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `ini_pi`
--
ALTER TABLE `ini_pi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ini_subject`
--
ALTER TABLE `ini_subject`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `library`
--
ALTER TABLE `library`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pic_mark`
--
ALTER TABLE `pic_mark`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `pis_mark`
--
ALTER TABLE `pis_mark`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `privacy_policy`
--
ALTER TABLE `privacy_policy`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `repository`
--
ALTER TABLE `repository`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `routine`
--
ALTER TABLE `routine`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=632;

--
-- AUTO_INCREMENT for table `school_settings`
--
ALTER TABLE `school_settings`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2380;

--
-- AUTO_INCREMENT for table `student_rank`
--
ALTER TABLE `student_rank`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3738;

--
-- AUTO_INCREMENT for table `terms_of_use`
--
ALTER TABLE `terms_of_use`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transcript_origin`
--
ALTER TABLE `transcript_origin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transcript_report`
--
ALTER TABLE `transcript_report`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `user_admin`
--
ALTER TABLE `user_admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `___ini`
--
ALTER TABLE `___ini`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
