-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2024 at 06:42 PM
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
-- Database: `saanviab_abc`
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
  `roll` int(11) NOT NULL,
  `reg` int(11) NOT NULL,
  `board` varchar(100) NOT NULL,
  `passing_year` int(11) NOT NULL,
  `join_group` varchar(100) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`domain`, `ID`, `uuid`, `session`, `find_date`, `at_date`, `name`, `dob_number`, `birth_date`, `gender`, `avatar`, `father_name`, `mother_name`, `blood_group`, `religion`, `telephone`, `email`, `guardian_name`, `address`, `hobbies`, `last_education`, `roll`, `reg`, `board`, `passing_year`, `join_group`, `comment`) VALUES
('saanviabc.com', 25, '', 2023, '10/26/2023', '2023-10-26 09:08:53', 'Ratul', 2, '2010-09-09', '', 'female_avatar.png', 'Fhjcx', 'Xhjcf', 'O+ve', 'Islam', 1998031221, 'ratulmia0199@gmail.com', 'Ryffc', 'Xfhjbc', 'Cricket', 'JSC', 66, 2586, 'Dhaka', 2021, 'Science', 'Hjj');

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
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `domain` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `session` int(11) NOT NULL,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `teacher_uuid` varchar(100) NOT NULL,
  `roll` int(11) NOT NULL,
  `student_uuid` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `avatar` varchar(500) NOT NULL DEFAULT 'male_avatar.png',
  `find_date` varchar(100) NOT NULL,
  `at_find_date` varchar(100) NOT NULL,
  `at_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `at_status` varchar(100) NOT NULL DEFAULT 'Present',
  `year` varchar(100) NOT NULL,
  `month` varchar(100) NOT NULL,
  `day` varchar(100) NOT NULL,
  `present` int(11) NOT NULL,
  `absent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authentication_session`
--

CREATE TABLE `authentication_session` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `session_expires` int(10) UNSIGNED NOT NULL,
  `session_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authentication_session`
--

INSERT INTO `authentication_session` (`session_id`, `session_expires`, `session_data`) VALUES
('ZOmQ_4XmaLPuvv8RsNAUT7PIlALHuInb', 1712129342, '{\"cookie\":{\"originalMaxAge\":2592000000,\"expires\":\"2024-04-03T07:29:01.545Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"hashUser\":\"hashAdmin\",\"admin_uuid\":\"\",\"hashUsername\":\"user@admin.com\",\"hashPassword\":\"905e60b34aa5eb27556e23e9a46bd144\",\"userAccess\":\"privet\"}');

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

--
-- Dumping data for table `bi_catagory`
--

INSERT INTO `bi_catagory` (`domain`, `ID`, `catagory_name`, `catagory_code`) VALUES
('localhost', 1, ' শিখন-অভিজ্ঞতাসমূহ-চলাকালে-পাঠ্যপুস্তকে-বর্ণিত-কাজগুলো-সম্পন্ন-করছে-এবং-বইয়ের-নির্ধারিত-স্থানে-প্রয়োজনীয়-ছক-অনুশীলনী-পূরণ-করছে', '592afcf5150e60e4f34c'),
('localhost', 2, 'দলের-অন্যদের-কাজের-উপর-ভিত্তি-করে-গঠনমূলক-ফিডব্যাক-দিচ্ছে', '9e99e13d88c1cfce7672'),
('localhost', 3, 'ব্যাক্তিগত-যোগাগোগ-উপস্থাপন-মডেল-তৈরি-উপকরণ-নির্বাচন-ও-ব্যবহার-ইত্যাদি-ক্ষেত্রে-পরিমিতিবোধ-বৈচিত্র্যময়তা-ও-নান্দনিকতা-বজায়-রেখে-সিদ্ধান্ত-নিচ্ছে', '915564f6d6d9db344cfc'),
('localhost', 4, 'অন্যদের-দৃষ্টিভঙ্গির-ভিন্নতা-ও-বৈচিত্র্যের-প্রতি-শ্রদ্ধা-রেখে-তাদের-মতামতের-গঠনমূলক-সমালোচনা-করছে', 'acd6c5d7bc680b5b6a4c'),
('localhost', 5, 'নিজের-দায়িত্ব-পালনের-পাশাপাশি-অন্যদের-কাজে-সহযোগিতা-করছে-এবং-দলে-সমন্বয়-সাধন-করছে', '4424340dac67b19f33bb'),
('localhost', 6, 'দলীয়-ও-একক-কাজের-বিভিন্ন-ধাপে-সততার-পরিচয়-দিচ্ছে', '28221c0aef817fe53c7b'),
('localhost', 7, 'পরিকল্পনা-অনুযায়ী-যথাসময়ে-নির্ধারিত-কাজ-সম্পন্ন-করছে', '8b02eac001f5d2007b36'),
('localhost', 8, 'নির্দিষ্ট-সমস্যা-সমাধানে-পূর্বনির্ধারিত-প্রক্রিয়া-অনুযায়ী-কাজের-ধাপসমূহ-যথাযথভাবে-অনুসরণ-করছে', '6f3c31bb6c0541d42896'),
('localhost', 9, 'নিজের-বক্তব্য-ও-মতামত-দলের-সবার-সাথে-শেয়ার-করেছে-এবং-অন্যদের-বক্তব্য-শুনে-গঠনমূলক-আলোচনায়-অংশ-নিচ্ছে', '91a4fdf6f7fa5e5c29dc'),
('localhost', 10, 'দলীয়-কাজে-সক্রিয়-অংশগ্রহণ-করেছে', 'e940bce32e14bd63c668');

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
('localhost', 11, '2024-03-02 14:18:51', 'Six', 'A', '1697209362834', 2024, '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg', '592afcf5150e60e4f34c', -1, 1, 'group01', '1697451431015592afcf5150e60e4f34c', 'bg-danger'),
('localhost', 12, '2024-03-02 14:18:53', 'Six', 'A', '1697209362834', 2024, '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg', '9e99e13d88c1cfce7672', 0, 2, 'group01', '16974514310159e99e13d88c1cfce7672', 'bg-warning'),
('localhost', 13, '2024-03-02 14:19:02', 'Six', 'A', '1697209362834', 2024, '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg', '91a4fdf6f7fa5e5c29dc', -1, 9, 'group01', '169745143101591a4fdf6f7fa5e5c29dc', 'bg-danger'),
('localhost', 14, '2024-03-02 14:19:03', 'Six', 'A', '1697209362834', 2024, '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg', 'e940bce32e14bd63c668', 0, 10, 'group01', '1697451431015e940bce32e14bd63c668', 'bg-warning'),
('localhost', 15, '2024-03-02 14:19:09', 'Six', 'A', '1697209362834', 2024, '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg', '915564f6d6d9db344cfc', 1, 3, 'group02', '1697451431015915564f6d6d9db344cfc', 'bg-success'),
('localhost', 16, '2024-03-02 14:19:11', 'Six', 'A', '1697209362834', 2024, '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg', 'acd6c5d7bc680b5b6a4c', 0, 4, 'group02', '1697451431015acd6c5d7bc680b5b6a4c', 'bg-warning'),
('localhost', 17, '2024-03-02 14:19:13', 'Six', 'A', '1697209362834', 2024, '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg', '4424340dac67b19f33bb', 0, 5, 'group02', '16974514310154424340dac67b19f33bb', 'bg-warning'),
('localhost', 18, '2024-03-02 14:19:16', 'Six', 'A', '1697209362834', 2024, '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg', '28221c0aef817fe53c7b', -1, 6, 'group02', '169745143101528221c0aef817fe53c7b', 'bg-danger'),
('localhost', 19, '2024-03-02 14:19:18', 'Six', 'A', '1697209362834', 2024, '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg', '8b02eac001f5d2007b36', 1, 7, 'group03', '16974514310158b02eac001f5d2007b36', 'bg-success'),
('localhost', 20, '2024-03-02 14:19:19', 'Six', 'A', '1697209362834', 2024, '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg', '6f3c31bb6c0541d42896', 1, 8, 'group03', '16974514310156f3c31bb6c0541d42896', 'bg-success');

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

INSERT INTO `bi_transcript` (`domain`, `ID`, `at_date`, `class`, `section`, `roll`, `teacher_uuid`, `session`, `student_uuid`, `name`, `avatar`, `catagory`, `bi`, `bi_no`, `bi_group`, `checkout`, `bi_point`, `bg_color`) VALUES
('localhost', 11, '2024-03-02 14:18:51', 'Six', 'A', 1, '1697209362834', 2024, '1697451431015', 'Sumi Akter', '', '592afcf5150e60e4f34c', -1, 1, 'group01', '1697451431015592afcf5150e60e4f34c', -1, 'bg-danger'),
('localhost', 12, '2024-03-02 14:18:53', 'Six', 'A', 1, '1697209362834', 2024, '1697451431015', 'Sumi Akter', '', '9e99e13d88c1cfce7672', 0, 2, 'group01', '16974514310159e99e13d88c1cfce7672', 0, 'bg-warning'),
('localhost', 13, '2024-03-02 14:19:02', 'Six', 'A', 1, '1697209362834', 2024, '1697451431015', 'Sumi Akter', '', '91a4fdf6f7fa5e5c29dc', -1, 9, 'group01', '169745143101591a4fdf6f7fa5e5c29dc', -1, 'bg-danger'),
('localhost', 14, '2024-03-02 14:19:03', 'Six', 'A', 1, '1697209362834', 2024, '1697451431015', 'Sumi Akter', '', 'e940bce32e14bd63c668', 0, 10, 'group01', '1697451431015e940bce32e14bd63c668', 0, 'bg-warning'),
('localhost', 15, '2024-03-02 14:19:09', 'Six', 'A', 1, '1697209362834', 2024, '1697451431015', 'Sumi Akter', '', '915564f6d6d9db344cfc', 1, 3, 'group02', '1697451431015915564f6d6d9db344cfc', 1, 'bg-success'),
('localhost', 16, '2024-03-02 14:19:11', 'Six', 'A', 1, '1697209362834', 2024, '1697451431015', 'Sumi Akter', '', 'acd6c5d7bc680b5b6a4c', 0, 4, 'group02', '1697451431015acd6c5d7bc680b5b6a4c', 0, 'bg-warning'),
('localhost', 17, '2024-03-02 14:19:13', 'Six', 'A', 1, '1697209362834', 2024, '1697451431015', 'Sumi Akter', '', '4424340dac67b19f33bb', 0, 5, 'group02', '16974514310154424340dac67b19f33bb', 0, 'bg-warning'),
('localhost', 18, '2024-03-02 14:19:16', 'Six', 'A', 1, '1697209362834', 2024, '1697451431015', 'Sumi Akter', '', '28221c0aef817fe53c7b', -1, 6, 'group02', '169745143101528221c0aef817fe53c7b', -1, 'bg-danger'),
('localhost', 19, '2024-03-02 14:19:18', 'Six', 'A', 1, '1697209362834', 2024, '1697451431015', 'Sumi Akter', '', '8b02eac001f5d2007b36', 1, 7, 'group03', '16974514310158b02eac001f5d2007b36', 1, 'bg-success'),
('localhost', 20, '2024-03-02 14:19:19', 'Six', 'A', 1, '1697209362834', 2024, '1697451431015', 'Sumi Akter', '', '6f3c31bb6c0541d42896', 1, 8, 'group03', '16974514310156f3c31bb6c0541d42896', 1, 'bg-success');

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
('localhost', 19, 'দলীয়-কাজে-সক্রিয়-অংশগ্রহণ-করেছে', 'e408979fb65381a88904'),
('localhost', 20, 'নিজের-বক্তব্য-ও-মতামত-দলের-সবার-সাথে-শেয়ার-করেছে-এবং-অন্যদের-বক্তব্য-শুনে-গঠনমূলক-আলোচনায়-অংশ-নিচ্ছে', 'e408979fb65381a88804'),
('localhost', 21, 'নির্দিষ্ট-সমস্যা-সমাধানে-পূর্বনির্ধারিত-প্রক্রিয়া-অনুযায়ী-কাজের-ধাপসমূহ-যথাযথভাবে-অনুসরণ-করছে', 'e408979fb65381a88704'),
('localhost', 23, 'পরিকল্পনা-অনুযায়ী-যথাসময়ে-নির্ধারিত-কাজ-সম্পন্ন-করছে', 'e408979fb65381a88604'),
('localhost', 24, 'দলীয়-ও-একক-কাজের-বিভিন্ন-ধাপে-সততার-পরিচয়-দিচ্ছে', 'e408979fb65381a88504'),
('localhost', 26, 'নিজের-দায়িত্ব-পালনের-পাশাপাশি-অন্যদের-কাজে-সহযোগিতা-করছে-এবং-দলে-সমন্বয়-সাধন-করছে', 'e408979fb65381a88404'),
('localhost', 27, 'অন্যদের-দৃষ্টিভঙ্গির-ভিন্নতা-ও-বৈচিত্র্যের-প্রতি-শ্রদ্ধা-রেখে-তাদের-মতামতের-গঠনমূলক-সমালোচনা-করছে', 'e408979fb65381a88304'),
('localhost', 28, 'দলের-অন্যদের-কাজের-উপর-ভিত্তি-করে-গঠনমূলক-ফিডব্যাক-দিচ্ছে', 'e408979fb65381a88104'),
('localhost', 41, 'ব্যাক্তিগত-যোগাগোগ-উপস্থাপন-মডেল-তৈরি-উপকরণ-নির্বাচন-ও-ব্যবহার-ইত্যাদি-ক্ষেত্রে-পরিমিতিবোধ-বৈচিত্র্যময়তা-ও-নান্দনিকতা-বজায়-রেখে-সিদ্ধান্ত-নিচ্ছে', 'e408979fb65381a88204'),
('localhost', 42, ' শিখন-অভিজ্ঞতাসমূহ-চলাকালে-পাঠ্যপুস্তকে-বর্ণিত-কাজগুলো-সম্পন্ন-করছে-এবং-বইয়ের-নির্ধারিত-স্থানে-প্রয়োজনীয়-ছক-অনুশীলনী-পূরণ-করছে', '64597dc9d59cb9685953');

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
('localhost', 38, 'Eight', 'বাংলা ব্যকরন ও নির্মিতি', '49601f115a750ec0a86a', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 40, 'Eight', 'গণিত', '5d2b9e0e0982ceeeaa67', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 41, 'Eight', 'বিজ্ঞান', 'c04bcdf44407c68beabb', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 42, 'Eight', 'আনন্দ পাঠ', 'faccd5607ea72e5ac5de', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 43, 'Eight', 'কৃষি শিক্ষা', 'a0eb41ca40eb7604913b', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 44, 'Eight', 'গার্হস্থ্য বিজ্ঞান', '3664f65ab72f0509b53a', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 45, 'Eight', 'শারীরিক শিক্ষা ও স্বাস্থ্য', '17c7d9d01f9d931d4da7', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 46, 'Eight', 'তথ্য ও যোগাযোগ প্রযুক্তি', 'e3c585a003799d9085a1', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 47, 'Eight', 'ইসলাম ও নৈতিক শিক্ষা', 'a5681e8d293b8b977083', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 48, 'Eight', 'হিন্দুধর্ম শিক্ষা', 'b0fcddf8fbc5ba1b2ac0', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 49, 'Eight', 'খ্রিস্ট্রাধর্ম শিক্ষা', '2ccde8d01eebf6759558', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 50, 'Eight', 'কর্ম ও জীবনমুখী শিক্ষা', '8d7c6ab878da348c00f7', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 51, 'Eight', 'চারু ও কারুকলা', '4b43464ee77908da12cf', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 52, 'Eight', 'English for Today', 'ad4500878cff4414c555', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 53, 'Eight', 'English Grammar and Composition', '1dbd28fea497d882cdef', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 54, 'Eight', 'সাহিত্য কনিকা', '901d4325ac4eef17b8ac', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 55, 'Eight', 'বাংলাদেশ ও বিশ্বপরিচয়', '8f127323d36d3bc74e48', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 56, 'Eight', 'আরবি', 'd292b74774f355f09eae', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 57, 'Eight', 'সংস্কৃতি', '084a64bbbe4b1d6f3817', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 58, 'Eight', 'পালি', 'dae331551126319367cd', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 59, 'Eight', 'সঙ্গগীত', '113de8f63c876aaf1349', 'demo', '', '', '2023-02-16 17:02:36'),
('localhost', 60, 'Nine', 'বাংলা সাহিত্য', '7195db48fc74c644861a', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 61, 'Nine', 'বাংলা সহপাঠ', '96c6525098099d3417a5', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 62, 'Nine', 'বাংলা ভাষার ব্যাকরণ', '69f9b9143aa280491364', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 63, 'Nine', 'English for Toady', '2e8610b6859e071dc653', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 64, 'Nine', 'গণিত', '8eed770e5aae7a0851c6', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 65, 'Nine', 'English Grammar and Composition', '3160af3c3ad88bd21332', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 66, 'Nine', 'তথ্য ও যোগাযোগ প্রযুক্তি', '27d49a127a933352d702', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 67, 'Nine', 'বিজ্ঞান', 'f5aef6cb27fb2d681c52', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 68, 'Nine', 'পদার্থ-বিজ্ঞান', '777335e40facff7020e1', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 69, 'Nine', 'রসায়ন', '48768f3ff14eff202c6a', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 70, 'Nine', 'জীব-বিজ্ঞান', 'b7e96f35721a20066cec', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 71, 'Nine', 'উচ্চতর গণিত', '7ffb1c3002f0ef380976', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 72, 'Nine', 'ভূগোল ও পরিবেশ', '64c79447b4ff66dc8e3d', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 73, 'Nine', 'অর্থনীতি', '9997566e11aeb4e0517a', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 74, 'Nine', 'কৃষিশিক্ষা', '431409c39fea0a110d4b', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 75, 'Nine', 'গার্হস্থ্য বিজ্ঞান', 'e31aeb65eadff2a32749', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 76, 'Nine', 'পৌরনীতি ও নাগরিকতা', '350839d748fea8c414aa', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 77, 'Nine', 'হিসাব-বিজ্ঞান', '8d67efe31c4585ac5b43', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 78, 'Nine', 'ফিন্যান্স ও ব্যাংকিং', 'faacbccd0f638044b8f9', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 79, 'Nine', 'ব্যবসায় উদ্যোগ', 'f6b2139460e0ebcacf52', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 80, 'Nine', 'ইসলাম ও নৈতিক শিক্ষা', 'b1a6923d913e79e905a4', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 81, 'Nine', 'হিন্দুধর্ম শিক্ষা', 'f2c4a90eabb9ce11dd24', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 82, 'Nine', 'বৌদ্ধধর্ম শিক্ষা', 'b09649538eb72505f5e7', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 83, 'Nine', 'খ্রিষ্টধর্ম শিক্ষা', 'a512d5e71076acc3840a', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 84, 'Nine', 'ক্যারিয়ার এডুকেশন', '561763a1d11170fd670b', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 85, 'Nine', 'বাংলাদেশ ও বিশ্বপরিচয়', '691c756aea9c359276c6', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 86, 'Nine', 'চারু ও কারুকলা', '0b53ce5182965072406b', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 87, 'Nine', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'c5b52557628757e0026b', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 88, 'Nine', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', 'a0d79ce3e17d1c4f4f42', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 89, 'Nine', 'সচিত্র আরবি পাঠ', 'dd852641e2dbd6aa2e72', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 90, 'Nine', 'সংস্কৃত', '4cad27f9d539662986a4', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 91, 'Nine', 'পালি', '26944a295cbf8df099bf', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 92, 'Nine', 'সংগীত', '331030e3cb331803f46f', 'demo', '', '', '2023-02-17 13:53:09'),
('localhost', 93, 'Ten', 'বাংলা সাহিত্য', 'cc4afd9d955fc0a03a21', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 94, 'Ten', 'বাংলা সহপাঠ', '8427f7afdf3e479358df', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 95, 'Ten', 'বাংলা ভাষার ব্যাকরণ', '3db7572ee573338f9a5f', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 96, 'Ten', 'English for Toady', '41b73ccb79b86e2801f2', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 97, 'Ten', 'গণিত', 'a910cb384aba0bc6ebc2', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 98, 'Ten', 'English Grammar and Composition', 'd95e9d0d93c7ccebbb91', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 99, 'Ten', 'তথ্য ও যোগাযোগ প্রযুক্তি', '0e1ebc30f0664b251d24', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 100, 'Ten', 'বিজ্ঞান', 'ad9aa8dd93db197876c5', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 101, 'Ten', 'পদার্থ-বিজ্ঞান', '3c2451672d9308386cd9', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 102, 'Ten', 'রসায়ন', '7ebb9842835d0845faf0', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 103, 'Ten', 'জীব-বিজ্ঞান', 'f2539b061e11e54fa2e1', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 104, 'Ten', 'উচ্চতর গণিত', '2fa48b9521ed5850984b', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 105, 'Ten', 'ভূগোল ও পরিবেশ', 'ebd397d9a4f0103acbd7', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 106, 'Ten', 'অর্থনীতি', '9e6da46f6306d6a31b81', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 107, 'Ten', 'কৃষিশিক্ষা', '65499c14c0c4e3e1c94d', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 108, 'Ten', 'গার্হস্থ্য বিজ্ঞান', '65f15411d619e2cdae38', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 109, 'Ten', 'পৌরনীতি ও নাগরিকতা', '9b53b11193dff17d053b', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 110, 'Ten', 'হিসাব-বিজ্ঞান', '4c744ebd5d9289009c36', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 111, 'Ten', 'ফিন্যান্স ও ব্যাংকিং', '136c184b1dd9f0c73db7', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 112, 'Ten', 'ব্যবসায় উদ্যোগ', '2960d078ca19054afe99', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 113, 'Ten', 'ইসলাম ও নৈতিক শিক্ষা', '39b11838f3672e517fa7', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 114, 'Ten', 'হিন্দুধর্ম শিক্ষা', 'fafe07222849ab16c026', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 115, 'Ten', 'বৌদ্ধধর্ম শিক্ষা', 'adce5d83acbc71a1eae7', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 116, 'Ten', 'খ্রিষ্টধর্ম শিক্ষা', '8ce033dd10bd272d5340', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 117, 'Ten', 'ক্যারিয়ার এডুকেশন', 'b6e45036ed443ac4154c', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 118, 'Ten', 'বাংলাদেশ ও বিশ্বপরিচয়', 'de6f66f8b632a07896d6', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 119, 'Ten', 'চারু ও কারুকলা', '74ce49bf4358dcb5a73e', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 120, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'e60993736b04e2d2d0da', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 121, 'Ten', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '77efcb10f9a494c305fe', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 122, 'Ten', 'সচিত্র আরবি পাঠ', '076c70b30c2b3cd8f1e3', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 123, 'Ten', 'সংস্কৃত', 'bfee8825886ea6b6e4cc', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 124, 'Ten', 'পালি', '6fff5978efaaeb224e87', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 125, 'Ten', 'সংগীত', 'e36b659011c412683cdc', 'demo', '', '', '2023-02-17 13:53:15'),
('localhost', 126, 'Nine', 'পদার্থ-বিজ্ঞান', '238f00b27ea749544f73', 'demo', '', '', '2023-02-17 13:59:47'),
('localhost', 127, 'Nine', 'রসায়ন', 'e548575b11bd7679778e', 'demo', '', '', '2023-02-17 13:59:47'),
('localhost', 128, 'Nine', 'জীব-বিজ্ঞান', 'a7b5cde9f0bc40992cfa', 'demo', '', '', '2023-02-17 13:59:47'),
('localhost', 129, 'Nine', 'উচ্চতর গণিত', '89c6a26e21d66ebdd908', 'demo', '', '', '2023-02-17 13:59:47'),
('localhost', 130, 'Ten', 'পদার্থ-বিজ্ঞান', 'b8b76136aef903edd213', 'demo', '', '', '2023-02-17 13:59:51'),
('localhost', 131, 'Ten', 'রসায়ন', '79a0886a0a1fefec5cce', 'demo', '', '', '2023-02-17 13:59:51'),
('localhost', 132, 'Ten', 'জীব-বিজ্ঞান', 'b4be09976aff0ea20522', 'demo', '', '', '2023-02-17 13:59:51'),
('localhost', 133, 'Ten', 'উচ্চতর গণিত', 'dae2e10c032a3985301d', 'demo', '', '', '2023-02-17 13:59:51'),
('localhost', 134, 'Nine', 'হিসাব-বিজ্ঞান', 'c4aa8e81e81294b6773f', 'demo', '', '', '2023-02-17 14:00:40'),
('localhost', 135, 'Nine', 'ফিন্যান্স ও ব্যাংকিং', 'c2465545bf04ae965929', 'demo', '', '', '2023-02-17 14:00:40'),
('localhost', 136, 'Nine', 'ব্যবসায় উদ্যোগ', 'c29c4767b87b74fd072a', 'demo', '', '', '2023-02-17 14:00:40'),
('localhost', 137, 'Ten', 'হিসাব-বিজ্ঞান', '343b312a99fdb0118ccf', 'demo', '', '', '2023-02-17 14:00:44'),
('localhost', 138, 'Ten', 'ফিন্যান্স ও ব্যাংকিং', '29e87e9fe7da4b39eb68', 'demo', '', '', '2023-02-17 14:00:44'),
('localhost', 139, 'Ten', 'ব্যবসায় উদ্যোগ', '472e9042bdd245137df5', 'demo', '', '', '2023-02-17 14:00:44'),
('localhost', 140, 'Nine', 'অর্থনীতি', '6cdf33d6dfca8d5e9c5d', 'demo', '', '', '2023-02-17 14:02:20'),
('localhost', 141, 'Nine', 'ভূগোল ও পরিবেশ', '82246f17f395df3e3820', 'demo', '', '', '2023-02-17 14:02:20'),
('localhost', 142, 'Nine', 'পৌরনীতি ও নাগরিকতা', 'a6254629d11107f798e7', 'demo', '', '', '2023-02-17 14:02:20'),
('localhost', 143, 'Nine', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'ff5d979953f596a6d302', 'demo', '', '', '2023-02-17 14:02:20'),
('localhost', 144, 'Ten', 'অর্থনীতি', '6f9486161fdc50305197', 'demo', '', '', '2023-02-17 14:02:45'),
('localhost', 145, 'Ten', 'ভূগোল ও পরিবেশ', '783d02013416aa38bd5e', 'demo', '', '', '2023-02-17 14:02:45'),
('localhost', 146, 'Ten', 'পৌরনীতি ও নাগরিকতা', 'f8f001a6d37f482503b7', 'demo', '', '', '2023-02-17 14:02:45'),
('localhost', 147, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'fb3919ef6b1b12ebc858', 'demo', '', '', '2023-02-17 14:02:45'),
('localhost', 148, 'Ten', 'অর্থনীতি', '4048fb9540ac33737f65', 'demo', '', '', '2023-02-17 14:02:46'),
('localhost', 149, 'Ten', 'ভূগোল ও পরিবেশ', 'af949791d932a1cbb5f9', 'demo', '', '', '2023-02-17 14:02:46'),
('localhost', 150, 'Ten', 'পৌরনীতি ও নাগরিকতা', 'b9c3e47385b40d601ccb', 'demo', '', '', '2023-02-17 14:02:46'),
('localhost', 151, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '713dfd6ede3cad7c72bc', 'demo', '', '', '2023-02-17 14:02:46'),
('localhost', 160, 'Eight', 'বাংলা ১ম', '6262fb01e3680730b103', 'demo', '', '', '2023-02-17 14:08:52'),
('localhost', 161, 'Eight', 'বাংলা ২য়', 'ed58eef002e222f25387', 'demo', '', '', '2023-02-17 14:08:52'),
('localhost', 162, 'Eight', 'ইংরেজী ১ম', 'ce839748604cd0840466', 'demo', '', '', '2023-02-17 14:08:52'),
('localhost', 163, 'Eight', 'ইংরেজী ২য়', '33653bf3907e2223e76d', 'demo', '', '', '2023-02-17 14:08:52'),
('localhost', 164, 'Nine', 'বাংলা ১ম', '1a624a5d37cfc5ff4836', 'demo', '', '', '2023-02-17 14:08:56'),
('localhost', 165, 'Nine', 'বাংলা ২য়', '1f7f6a50ca31456e685f', 'demo', '', '', '2023-02-17 14:08:56'),
('localhost', 166, 'Nine', 'ইংরেজী ১ম', '396efb7abc7a87370a3b', 'demo', '', '', '2023-02-17 14:08:56'),
('localhost', 167, 'Nine', 'ইংরেজী ২য়', 'c32f0c8a29aa5f622386', 'demo', '', '', '2023-02-17 14:08:56'),
('localhost', 168, 'Ten', 'বাংলা ১ম', '1e7820fc4a32da4be71d', 'demo', '', '', '2023-02-17 14:09:03'),
('localhost', 169, 'Ten', 'বাংলা ২য়', '8a24a08d45bcc3cd86ac', 'demo', '', '', '2023-02-17 14:09:03'),
('localhost', 170, 'Ten', 'ইংরেজী ১ম', 'cd2ff059c56014e15f48', 'demo', '', '', '2023-02-17 14:09:03'),
('localhost', 171, 'Ten', 'ইংরেজী ২য়', '2b1c3e840823e9df3441', 'demo', '', '', '2023-02-17 14:09:03'),
('localhost', 172, 'Nine', 'সামাঃ বিজ্ঞান', '7cb7eb524f59d08ddbc1', 'demo', '', '', '2023-02-18 07:13:42'),
('localhost', 173, 'Ten', 'সামাঃ বিজ্ঞান', '2c3190872d0c6b51107c', 'demo', '', '', '2023-02-18 07:13:46'),
('localhost', 177, 'Eight', 'বিতর্ক', '31a72341da6aec3d5539', 'demo', '', '', '2023-02-18 08:20:21'),
('localhost', 178, 'Eight', 'ডিজিটাল প্রযুক্তি', 'de7630314565a335a45b', 'demo', '', '', '2023-02-18 08:56:07'),
('localhost', 182, 'Six', 'বৌদ্ধধর্ম-শিক্ষা', '979371cbc8ff3f8dba70', 'demo', '', '', '2023-06-17 00:23:34'),
('localhost', 183, 'Six', 'খ্রিস্ট্রধর্ম-শিক্ষা', 'bbb17312b7e67f716fae', 'demo', '', '', '2023-06-17 00:23:55'),
('localhost', 184, 'Six', 'হিন্দুধর্ম-শিক্ষা', '5f849ca973c98cad145c', 'demo', '', '', '2023-06-17 00:24:14'),
('localhost', 185, 'Six', 'ইসলাম-শিক্ষা', '09b39bc7bbd54f1604ee', 'demo', '', '', '2023-06-17 00:24:30'),
('localhost', 186, 'Six', 'শিল্প-ও-সংস্কৃতি', 'edbda83c9ed5d1b28cd9', 'demo', '', '', '2023-06-17 00:24:52'),
('localhost', 187, 'Six', 'জীবন-ও-জীবিকা', '31107af1bafb42d2b0a3', 'demo', '', '', '2023-06-17 00:25:11'),
('localhost', 188, 'Six', 'স্বাস্থ্য-সুরক্ষা', '0c001c51e2b241945701', 'demo', '', '', '2023-06-17 00:25:30'),
('localhost', 189, 'Six', 'ডিজিটাল-প্রযুক্তি', '7d344fdbec30e1c13399', 'demo', '', '', '2023-06-17 00:25:46'),
('localhost', 190, 'Six', 'ইতিহাস-ও-সামাজিক-বিজ্ঞান-অনুশীলন-বই', '4d88ef136007b18543f1', 'demo', '', '', '2023-06-17 00:26:08'),
('localhost', 191, 'Six', 'বিজ্ঞান-অনুশীলন-বই', '0c16a4e589ee2011e005', 'demo', '', '', '2023-06-17 00:26:35'),
('localhost', 197, 'Seven', 'বৌদ্ধধর্ম-শিক্ষা', '7114b9b5d135724e12ce', 'demo', '', '', '2023-06-17 00:29:25'),
('localhost', 198, 'Seven', 'খ্রিস্ট্রধর্ম-শিক্ষা', '30aa08d1f68197d56e5c', 'demo', '', '', '2023-06-17 00:29:46'),
('localhost', 199, 'Seven', 'হিন্দুধর্ম-শিক্ষা', 'd4be695416321a2bff0e', 'demo', '', '', '2023-06-17 00:30:19'),
('localhost', 200, 'Seven', 'ইসলাম-শিক্ষা', '79bbc3ee33892bd4539f', 'demo', '', '', '2023-06-17 00:30:40'),
('localhost', 201, 'Seven', 'শিল্প-ও-সংস্কৃতি', '711d042a82448f575a5d', 'demo', '', '', '2023-06-17 00:31:00'),
('localhost', 202, 'Seven', 'জীবন-ও-জীবিকা', '2e99f2ba9fe25ec2a225', 'demo', '', '', '2023-06-17 00:31:21'),
('localhost', 203, 'Seven', 'স্বাস্থ্য-সুরক্ষা', '3b3afb32927c38e66e90', 'demo', '', '', '2023-06-17 00:31:40'),
('localhost', 204, 'Seven', 'ডিজিটাল-প্রযুক্তি', '8ac78f2625c8838f2196', 'demo', '', '', '2023-06-17 00:32:00'),
('localhost', 205, 'Seven', 'ইতিহাস-ও-সামাজিক-বিজ্ঞান-অনুশীলন-বই', '307a25a92e9c3e171a88', 'demo', '', '', '2023-06-17 00:32:25'),
('localhost', 206, 'Seven', 'বিজ্ঞান-অনুশীলন-বই', '81aefccb2a90a753a13f', 'demo', '', '', '2023-06-17 00:32:46'),
('localhost', 207, 'Seven', 'বিজ্ঞান-অনুসন্ধানী-পাঠ', '47e5d178494dd6dda48b', 'demo', '', '', '2023-06-17 00:33:08'),
('localhost', 208, 'Seven', 'গণিত', 'e2cfd7c966511c06c1d8', 'demo', '', '', '2023-06-17 00:33:32'),
('localhost', 209, 'Seven', 'English', '63ed360330de8782b0b5', 'demo', '', '', '2023-06-17 00:33:54'),
('localhost', 210, 'Seven', 'বাংলা', '9e3a48286d1eeabf3b14', 'demo', '', '', '2023-06-17 00:34:20'),
('localhost', 220, 'Six', 'Bangla', 'b0a3dc87645715517795', 'demo', '', '', '2023-09-26 16:58:14'),
('localhost', 221, 'Six', 'গণিত', 'a89b3190e031c134f0e5', 'demo', '', '', '2023-09-27 03:53:41');

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

INSERT INTO `pic_mark` (`domain`, `ID`, `session`, `at_date`, `class`, `section`, `subject`, `subject_code`, `chapter`, `pi`, `pi_group`, `pi_no`, `checkout`, `bg_color`, `teacher_uuid`, `student_uuid`, `roll`, `name`, `avatar`) VALUES
('localhost', 1, 2024, '2024-03-04 00:23:21', 'Six', 'A', 'English', '', '6_1_1', '-1', 'group04', 0, '1697451431015613ef00329fa30032ab96_1_1', 'bg-danger', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 2, 2024, '2024-03-04 00:23:22', 'Six', 'A', 'English', '', '6_1_2', '-1', 'group04', 0, '1697451431015613ef00329fa30032ab96_1_2', 'bg-danger', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 3, 2024, '2024-03-04 00:23:26', 'Six', 'A', 'English', '', '6_1_3', '0', 'group04', 0, '1697451431015613ef00329fa30032ab96_1_3', 'bg-warning', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 4, 2024, '2024-03-04 00:23:27', 'Six', 'A', 'English', '', '6_2_1', '0', 'group04', 0, '1697451431015613ef00329fa30032ab96_2_1', 'bg-warning', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 5, 2024, '2024-03-04 00:23:28', 'Six', 'A', 'English', '', '6_2_2', '1', 'group04', 0, '1697451431015613ef00329fa30032ab96_2_2', 'bg-success', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 6, 2024, '2024-03-04 00:23:29', 'Six', 'A', 'English', '', '6_3_1', '1', 'group04', 0, '1697451431015613ef00329fa30032ab96_3_1', 'bg-success', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg');

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

INSERT INTO `pis_mark` (`domain`, `ID`, `session`, `at_date`, `class`, `section`, `subject`, `subject_code`, `chapter`, `pi`, `pi_group`, `pi_no`, `checkout`, `bg_color`, `teacher_uuid`, `student_uuid`, `roll`, `name`, `avatar`) VALUES
('localhost', 1, 2024, '2024-03-04 00:23:41', 'Six', 'A', 'English', '', '6_1_1', '-1', 'group01', 0, '1697451431015613ef00329fa30032ab96_1_1', 'bg-danger', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 2, 2024, '2024-03-04 00:23:42', 'Six', 'A', 'English', '', '6_1_2', '-1', 'group01', 0, '1697451431015613ef00329fa30032ab96_1_2', 'bg-danger', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 3, 2024, '2024-03-04 00:23:43', 'Six', 'A', 'English', '', '6_1_3', '0', 'group01', 0, '1697451431015613ef00329fa30032ab96_1_3', 'bg-warning', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 4, 2024, '2024-03-04 00:23:44', 'Six', 'A', 'English', '', '6_2_1', '0', 'group02', 0, '1697451431015613ef00329fa30032ab96_2_1', 'bg-warning', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 5, 2024, '2024-03-04 00:23:45', 'Six', 'A', 'English', '', '6_2_2', '1', 'group02', 0, '1697451431015613ef00329fa30032ab96_2_2', 'bg-success', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg'),
('localhost', 6, 2024, '2024-03-04 00:23:47', 'Six', 'A', 'English', '', '6_3_1', '1', 'group03', 0, '1697451431015613ef00329fa30032ab96_3_1', 'bg-success', '', '1697451431015', 1, 'Sumi Akter', '1697221782178_download (1).jpeg');

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

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `domain` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `index_number` varchar(100) NOT NULL,
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
('localhost', 137, '1697585341900', 2023, 'Six', 'C', 'Saahu Kushari', 69249, 26, 'XXXXXXXXXX', '2012-03-12', 'Male', 'undefined', '69249@abc.com', '', '01763872563', 'Sukhemdrro Nam Kushari', 'Joya Rani Kushari', 'Bandugram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 18:08:35'),
('localhost', 140, '1697544984068', 2023, 'Six', 'C', 'Nayon Paul', 66834, 84, 'XXXXXXXXXX', '2010-04-09', 'Male', 'undefined', '66834@abc.com', '', '0179206150', 'Joydev Paul', 'Shilpi paul', 'Bagura , Naderchad ghat, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 18:14:20'),
('localhost', 143, '1697274452660', 2023, 'Six', 'C', 'Md. Sajeebul Islam ', 553431, 59, 'XXXXXXXXXX', '2011-12-22', 'Male', 'undefined', '553431@abc.com', '', '01943298812', 'Md. Rejaul Karim', 'Heera', 'Omrrit Nagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 18:17:51'),
('localhost', 146, '1697683657306', 2023, 'Six', 'C', 'Md. Omidul Islam sadhin', 344175, 44, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '344175@abc.com', '', '01314208976', 'shahaful Alam ', 'Onjona', 'Kaliyand, Oyahidabad, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 18:23:02'),
('localhost', 147, '1697615915305', 2023, 'Six', 'C', 'Anif Molla', 216395, 49, 'XXXXXXXXXX', '2010-05-13', 'Male', 'undefined', '216395@abc.com', '', '01944748924', 'Helal', 'Roji Khatun', 'Solna Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 18:31:59'),
('localhost', 148, '1697734508710', 2023, 'Six', 'C', 'Avijeet Kumar Shil', 118831, 42, 'XXXXXXXXXX', '2011-01-02', 'Male', 'undefined', '118831@abc.com', '', '01713561018', 'Osok Kumar Shil', 'Konika Rani Shil', 'Kamar Gram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 18:34:32'),
('localhost', 149, '1697835814555', 2023, 'Six', 'C', 'Shah Newyaj Bin Alif ', 336093, 81, 'XXXXXXXXXX', '2011-03-24', 'Male', 'undefined', '336093@abc.com', '', '01714871345', 'Md. Shahin Miya', 'Beauty Khatun', 'Amgram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 18:38:25'),
('localhost', 150, '1697638461831', 2023, 'Six', 'C', 'Sayed Iyasin', 849850, 31, 'XXXXXXXXXX', '2011-03-24', 'Male', 'undefined', '849850@abc.com', '', '01767959584', 'Tanjila', 'Beauty Khatun', 'Bahirbag, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 19:36:59'),
('localhost', 151, '1697396230716', 2023, 'Six', 'C', 'S. M. Jakariya', 604180, 16, 'XXXXXXXXXX', '2012-05-18', 'Male', 'undefined', '604180@abc.com', '', '01706698614', 'Md. Edris Ali', 'Nasrin Aktar', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 20:02:52'),
('localhost', 154, '1697835410793', 2023, 'Six', 'C', 'Gourob Chokroborrti', 284241, 67, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '284241@abc.com', '', '01728311873', 'Joy Chokroborrti', 'Beauly Chokroborrti', 'Purbo Kamar Gram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 20:06:43'),
('localhost', 155, '1697057460673', 2023, 'Six', 'C', 'Nishan Saha', 18605, 33, 'XXXXXXXXXX', '2011-10-22', 'Male', 'undefined', '18605@abc.com', '', '01716376090', 'Nikhil Saha', 'Asima saha', 'Purbo Kamar Gram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 20:08:39'),
('localhost', 156, '1697764153915', 2023, 'Six', 'C', 'Nadeem Mahmud ', 785396, 7, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '785396@abc.com', '', '01734381048', 'Namir uddin', 'Hira Khatun', 'Posseem Kamar Gram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 20:16:20'),
('localhost', 157, '1697417026653', 2023, 'Six', 'C', 'Sehejadul Alam ', 878691, 55, 'XXXXXXXXXX', '2011-11-12', 'Male', 'undefined', '878691@abc.com', '', '01718046119', 'Md. Shahinur Alom', 'Paruli Khanam', 'D. Shibpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 21:09:04'),
('localhost', 158, '1697280940697', 2023, 'Six', 'C', 'Md. Hamjala Molla', 631621, 4, 'XXXXXXXXXX', '2010-11-12', 'Male', 'undefined', '631621@abc.com', '', '01774915747', 'Md. Mamun Molla', 'Shirina Begum', 'Banibari, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 21:12:41'),
('localhost', 159, '1697350599169', 2023, 'Six', 'C', 'Arup Kumar Shil', 501313, 52, 'XXXXXXXXXX', '2011-04-14', 'Male', 'undefined', '501313@abc.com', '', '01991349534', 'Dilip Kumar', 'Shopna Rani Shil', 'Shibpur, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-27 21:19:01'),
('localhost', 176, '1697497068454', 2023, 'Six', 'C', 'Saydul Islam sami', 447773, 73, 'XXXXXXXXXX', '2012-01-23', 'Male', 'undefined', '447773@abc.com', '', '01977704450', 'Md. Sohel', 'Cadni', 'Vatparar,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 05:35:14'),
('localhost', 177, '1697301138778', 2023, 'Six', 'C', 'Md. Sajeed Biswas ', 389835, 14, 'XXXXXXXXXX', '2013-09-21', 'Male', 'undefined', '389835@abc.com', '', '01791921662', 'Shahidul biswas', 'Jakiya Begum', 'Chotul,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 05:39:41'),
('localhost', 178, '1697635376897', 2023, 'Six', 'C', 'Md. Habib Shikdar Ratul', 284387, 98, 'XXXXXXXXXX', '2011-01-24', 'Male', 'undefined', '284387@abc.com', '', '01944146855', 'Md. Tarikul Islam', 'Mst. Reba Begum', 'Soto Kamar Gram,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 05:42:25'),
('localhost', 179, '1697631409821', 2023, 'Six', 'C', 'Sikdar Rohit', 713821, 21, 'XXXXXXXXXX', '2011-07-10', 'Male', 'undefined', '713821@abc.com', '', '01612708848', 'Md. Jiyap Uddin', 'Afroja Iyasmin Sheli', 'Cotul,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 05:45:17'),
('localhost', 180, '1697076453882', 2023, 'Six', 'C', 'Ferdous Rahman  Labib', 373958, 58, 'XXXXXXXXXX', '2012-09-11', 'Male', 'undefined', '373958@abc.com', '', '01852602361', 'Md. Hafijur Rahman', 'Mst. Poli Khatun', 'Raypur,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 05:50:53'),
('localhost', 181, '1697693144167', 2023, 'Six', 'C', 'Ali Hasaan', 114026, 5, 'XXXXXXXXXX', '2011-10-25', 'Male', 'undefined', '114026@abc.com', '', '01733268723', 'Md. Shajahan Molla', 'Rehena Begum', 'Solna,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 05:54:39'),
('localhost', 182, '1697230524851', 2023, 'Six', 'C', 'Md. Mujahid Ali', 58712, 47, 'XXXXXXXXXX', '2012-11-27', 'Male', 'undefined', '58712@abc.com', '', '01939303782', 'Muhammad Ali', 'Mst. Lota', 'Solna,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 05:57:28'),
('localhost', 183, '1697637805053', 2023, 'Six', 'C', 'Md. Habibullah', 363567, 19, 'XXXXXXXXXX', '2012-01-18', 'Male', 'undefined', '363567@abc.com', '', '01907388301', 'MD. Selim Mia', 'Mst. Sufiya Begum', 'Muktarpur,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 06:07:38'),
('localhost', 184, '1697533227967', 2023, 'Six', 'C', 'Md. Mostakim sheikh', 176363, 86, 'XXXXXXXXXX', '2012-01-12', 'Male', 'undefined', '176363@abc.com', '', '01997321112', 'Md. Masud Sheikh', 'Mst. Arjina Begum', 'Vatpara,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 06:20:23'),
('localhost', 185, '1697128918660', 2023, 'Six', 'C', 'Shawon Ray ', 288025, 48, 'XXXXXXXXXX', '2012-06-05', 'Male', 'undefined', '288025@abc.com', '', '01913815929', 'Sonjit Kumar Ray', 'Trrisna Ray', 'Baguan,Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 08:24:28'),
('localhost', 186, '1696993007297', 2023, 'Six', 'C', 'Md. Arafat Sheikh', 145593, 50, 'XXXXXXXXXX', '2011-06-28', 'Male', 'undefined', '145593@abc.com', '', '01762999134', 'Md. Sojol Sheikh', 'Mst. Asma Begum', 'Kaliyand,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 08:29:42'),
('localhost', 187, '1697741580212', 2023, 'Six', 'C', 'Pracurjo Paul', 887126, 63, 'XXXXXXXXXX', '2012-04-26', 'Male', 'undefined', '887126@abc.com', '', '0186293721', 'Poresh Kumar Paul', 'Osima Pal', 'Dokkhin Kamar Gram,Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 08:48:12'),
('localhost', 188, '1697594874590', 2023, 'Six', 'B', 'Mithun Sarkar', 751384, 75, 'XXXXXXXXXX', '2011-11-21', 'Male', 'undefined', '751384@abc.com', '', '01938652314', 'Komol Sardar', 'Chaina Rani', 'Pashchimkamargram', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 08:48:14'),
('localhost', 189, '1697686442006', 2023, 'Six', 'B', 'Apon Kumar', 119049, 100, 'XXXXXXXXXX', '2011-07-28', 'Male', 'undefined', '119049@abc.com', '', '01728938516', 'Milon Kumar Shil', 'Lipika Pul', 'Dakkhinshibpur, Rajbari Sadar, Rajbari', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 08:53:59'),
('localhost', 190, '1697669767371', 2023, 'Six', 'B', 'MD Arman', 171227, 99, 'XXXXXXXXXX', '2011-11-30', 'Male', 'undefined', '171227@abc.com', '', '01843493236', 'Rezaul Islam', 'Sultana Aktar', 'Shibpur,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 08:57:18'),
('localhost', 191, '1697624178636', 2023, 'Six', 'C', 'Md. Shuvo ', 158991, 74, 'XXXXXXXXXX', '2010-05-04', 'Male', 'undefined', '158991@abc.com', '', '01730159525', 'Munsi Mijanur', 'Suma Begum', 'Vatpara,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 09:08:19'),
('localhost', 192, '1697353264328', 2023, 'Six', 'B', 'MD Emon Molla ', 95074, 95, 'XXXXXXXXXX', '2011-10-01', 'Male', 'undefined', '95074@abc.com', '', '01954820197', 'MD Usuf Molla', 'Shilpi', 'Gunbaha,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-28 09:15:24'),
('localhost', 193, '1697436578325', 2023, 'Six', 'B', 'MD Tahsin Ahmed', 783890, 36, 'XXXXXXXXXX', '2012-05-26', 'Male', 'undefined', '783890@abc.com', '', '01306545207', 'MD Kamrul Islam', 'Mst Merina Parvin', 'Gunbaha, Mohammadpur, Magura', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 00:53:42'),
('localhost', 194, '1697540502776', 2023, 'Six', 'B', 'MD Naim Sheikh', 650056, 12, 'XXXXXXXXXX', '2010-08-15', 'Male', 'undefined', '650056@abc.com', '', '01990724383', 'MD Salam Sheikh', 'Mst Aleya Begum', 'Bahirbag, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 00:56:24'),
('localhost', 195, '1697162248091', 2023, 'Six', 'B', 'MD Syed Ariyan', 208038, 98, 'XXXXXXXXXX', '2012-03-02', 'Male', 'undefined', '208038@abc.com', '', '01712310959', 'Syed Arif', 'Syed Laki', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 00:58:56'),
('localhost', 196, '1697733720099', 2023, 'Six', 'B', 'MD Mursalin Mia', 895180, 97, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '895180@abc.com', '', '01712310959', 'MD Rofikul Islam', 'Mst Munja Islam', 'Syedpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 01:01:31'),
('localhost', 197, '1697127354128', 2023, 'Six', 'B', 'Abdullah', 269735, 44, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '269735@abc.com', '', '01773094547', 'Pikul', 'Shahanaz', 'Gurdia, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 01:03:09'),
('localhost', 198, '1697408489182', 2023, 'Six', 'B', 'Rahim Vuiya', 808467, 7, 'XXXXXXXXXX', '2012-07-12', 'Male', 'undefined', '808467@abc.com', '', '01710147365', 'MD Sajjad Hosen Vuiya', 'Mst Monihar Parvin', 'Noyanipara, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 01:05:55'),
('localhost', 199, '1697364061215', 2023, 'Six', 'B', 'Khandakar Mehedi Hasan', 686759, 96, 'XXXXXXXXXX', '2012-08-10', 'Male', 'undefined', '686759@abc.com', '', '01644547742', 'Sakendar Ali', 'Ambiya Begum', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 01:09:21'),
('localhost', 200, '1697246004413', 2023, 'Six', 'B', 'Rudra Biswas', 782625, 18, 'XXXXXXXXXX', '2012-01-03', 'Male', 'undefined', '782625@abc.com', '', '01714544674', 'Prashanta biswas', 'Minoti Biswas', 'Kamargram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 01:15:09'),
('localhost', 201, '1697195625100', 2023, 'Six', 'B', 'Moin Choudhury', 449815, 69, 'XXXXXXXXXX', '2011-10-12', 'Male', 'undefined', '449815@abc.com', '', '01736213423', 'Mizan Choudhury', 'Ayrin Aktar Rimi', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 01:24:27'),
('localhost', 202, '1697536017306', 2023, 'Six', 'B', 'MD Mahim Ikbal Faisal', 832928, 68, 'XXXXXXXXXX', '2012-03-02', 'Male', 'undefined', '832928@abc.com', '', '01868956855', 'MD Akkas Uddin Molla', 'Mst Shamima Aktar Mina', 'Kaliyand, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 01:26:55'),
('localhost', 203, '1697813319027', 2023, 'Six', 'B', 'MD Samiul Islam', 505955, 37, 'XXXXXXXXXX', '2012-11-26', 'Male', 'undefined', '505955@abc.com', '', '01937779101', 'MD Shohidul Islam', 'Nurnahar', 'Dakkhinkamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 01:29:34'),
('localhost', 204, '1697125115402', 2023, 'Six', 'B', 'MD Tamim', 330451, 79, 'XXXXXXXXXX', '2012-11-11', 'Male', 'undefined', '330451@abc.com', '', '01751728978', 'MD Saiful Islam', 'Tisha Begum', 'Shotasi, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 01:31:57'),
('localhost', 205, '1697031566651', 2023, 'Six', 'B', 'Ishan Iban Abdullah', 848208, 9, 'XXXXXXXXXX', '2011-06-15', 'Male', 'undefined', '848208@abc.com', '', '01916130165', 'MD Fosiyar Rahman', 'Chameli Aktar', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 01:54:33'),
('localhost', 206, '1696994888230', 2023, 'Six', 'B', 'MD Khalid Hasan', 731933, 65, 'XXXXXXXXXX', '2009-04-25', 'Male', 'undefined', '731933@abc.com', '', '01735333273', 'MD Humayun Sheikh', 'Mst Khadija Begum', 'Patitapara', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 02:04:23'),
('localhost', 207, '1697756045165', 2023, 'Six', 'B', 'MD Morshed Molla', 666129, 6, 'XXXXXXXXXX', '2012-10-19', 'Male', 'undefined', '666129@abc.com', '', '01939463514', 'MD Imam Molla', 'Mousumi Aktar Nasrin', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 02:06:33'),
('localhost', 208, '1697138450540', 2023, 'Six', 'B', 'Dipta Pul', 678391, 3, 'XXXXXXXXXX', '2012-10-21', 'Male', 'undefined', '678391@abc.com', '', '01734909099', 'Dilip Kumar Pul', 'Angali Kumar Pul', 'Boalmari, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 02:09:22'),
('localhost', 209, '1697806804700', 2023, 'Six', 'B', 'MD Ibrahim Choudhury', 167838, 82, 'XXXXXXXXXX', '2010-01-02', 'Male', 'undefined', '167838@abc.com', '', '01937422017', 'Robiul Choudhury', 'Mst Rehena Khatun', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-01 02:18:07'),
('localhost', 210, '1697124561534', 2023, 'Six', 'B', 'MD Rafi', 504552, 23, 'XXXXXXXXXX', '2011-09-29', 'Male', 'undefined', '504552@abc.com', '', '01729801602', 'MD Harun', 'Mst Reba Begum', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 00:21:06'),
('localhost', 211, '1697296977653', 2023, 'Six', 'B', 'MD Al amin Molla', 228155, 86, 'XXXXXXXXXX', '2012-03-25', 'Male', 'undefined', '228155@abc.com', '', '01733595442', 'MD Liakat Hosen', 'Mst Ferdousi Begum', 'Chalinagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 00:23:15'),
('localhost', 212, '1697699029827', 2023, 'Six', 'B', 'MD Tasin Molla', 430587, 26, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '430587@abc.com', '', '01758877790', 'MD Majed Molla', 'Mst Kabita', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 00:25:18'),
('localhost', 213, '1697749814753', 2023, 'Six', 'B', 'MD Siam', 416776, 19, 'XXXXXXXXXX', '2012-02-03', 'Male', 'undefined', '416776@abc.com', '', '01740990083', 'MD Chan Mia', 'Mst Eva Aktar', 'Rajapur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 00:27:04'),
('localhost', 214, '1697837534195', 2023, 'Six', 'B', 'MD Jakariya Mia', 34284, 85, 'XXXXXXXXXX', '2011-12-23', 'Male', 'undefined', '34284@abc.com', '', '01708118338', 'MD Abul Hasan', 'Mst Shahina Begum', 'Dighalbana, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 00:28:57'),
('localhost', 215, '1697363381613', 2023, 'Six', 'B', 'MD Sakibul Hasan', 493851, 25, 'XXXXXXXXXX', '2012-01-10', 'Male', 'undefined', '493851@abc.com', '', '01904153038', 'MD Manir Hosen', 'Mst Sagori Begum', 'Amgram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 00:30:49'),
('localhost', 216, '1697048609598', 2023, 'Six', 'B', 'Shawon Islam', 821728, 43, 'XXXXXXXXXX', '2010-12-03', 'Male', 'undefined', '821728@abc.com', '', '01775495184', 'Sohel Molla', 'Anna Begum', 'Bahirbag, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 00:32:38'),
('localhost', 217, '1697533016676', 2023, 'Six', 'B', 'MD Junayet Siddik Rasel', 675248, 73, 'XXXXXXXXXX', '2010-06-01', 'Male', 'undefined', '675248@abc.com', '', '01749136062', 'MD Ibrahim MOlla', 'Mst Rijiya Begum', 'Horiharnahar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 00:36:12'),
('localhost', 218, '1697757816858', 2023, 'Six', 'B', 'Siddharth Sharkar', 248727, 81, 'XXXXXXXXXX', '2011-11-11', 'Male', 'undefined', '248727@abc.com', '', '01752631094', 'Nanda Sharkar', 'Lipi Sharkar', 'Chatul, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 00:39:07'),
('localhost', 219, '1697003735890', 2023, 'Six', 'B', 'Ahad Sheikh ', 327122, 71, 'XXXXXXXXXX', '2011-03-29', 'Male', 'undefined', '327122@abc.com', '', '01749708397', 'Raja Mia', 'Rashida Begum', 'Amgram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 00:41:08'),
('localhost', 220, '1697686305074', 2023, 'Six', 'B', 'Jyotiska Bhowmik', 482245, 39, 'XXXXXXXXXX', '2011-12-27', 'Male', 'undefined', '482245@abc.com', '', '01712457660', 'Jayanta Kumar Bhowmik', 'Dipa Das', 'Purba Kamargram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 00:49:13'),
('localhost', 221, '1697436892048', 2023, 'Six', 'B', 'Jihad Sheikh', 526, 77, 'XXXXXXXXXX', '2011-11-12', 'Male', 'undefined', '526@abc.com', '', '01933143178', 'MD Ziaul Rahman', 'Champa Khatun', 'Purba Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 00:51:08'),
('localhost', 222, '1697328731418', 2023, 'Six', 'B', 'Anik Rajbangshi', 634228, 52, 'XXXXXXXXXX', '2010-09-11', 'Male', 'undefined', '634228@abc.com', '', '01728254991', 'Deb Kumar Rajbangshi', 'Aruna Rani Rajbangshi', 'Adharkotha, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:04:21'),
('localhost', 223, '1697740872558', 2023, 'Six', 'B', 'Rabttra Hiyero Mandal', 148382, 34, 'XXXXXXXXXX', '2012-03-08', 'Male', 'undefined', '148382@abc.com', '', '01924950136', 'Ronojit Kumar Mandal', 'Hira Sarkar', 'Kamargram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:07:53'),
('localhost', 224, '1697794110271', 2023, 'Six', 'B', 'MD Tuhin Sheikh ', 86403, 20, 'XXXXXXXXXX', '2010-12-30', 'Male', 'undefined', '86403@abc.com', '', '01971138204', 'AB Mannan Sheikh', 'Mst Sabina Yasmin', 'Uttarshibpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:09:57'),
('localhost', 225, '1696990277293', 2023, 'Six', 'B', 'Sakidul Islam', 253469, 11, 'XXXXXXXXXX', '2013-02-02', 'Male', 'undefined', '253469@abc.com', '', '01730177180', 'MD Saifur Rahman', 'Mst Shampa Islam', 'Raipur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:12:10'),
('localhost', 226, '1697105521702', 2023, 'Six', 'B', 'MD Hasibul Sheikh', 14061, 40, 'XXXXXXXXXX', '2011-06-01', 'Male', 'undefined', '14061@abc.com', '', '01750124054', 'MD Kamal Sheikh', 'Mst Ruma Begum', 'Biswaspur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:14:50'),
('localhost', 227, '1697139765703', 2023, 'Six', 'B', 'MD Azizul Haque', 102852, 24, 'XXXXXXXXXX', '2011-10-06', 'Male', 'undefined', '102852@abc.com', '', '01962440536', 'Jafar Molla', 'Mst Shorifa Begum', 'Dorihoharnagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:25:11'),
('localhost', 228, '1697841092640', 2023, 'Six', 'B', 'MD Ruhin Hosen', 479754, 33, 'XXXXXXXXXX', '2012-03-01', 'Male', 'undefined', '479754@abc.com', '', '01709746363', 'MD Babar Ali', 'Dalia Khatun', 'Bichali, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:28:36'),
('localhost', 229, '1697380524606', 2023, 'Six', 'B', 'Syed Tanvir Mahin', 238102, 57, 'XXXXXXXXXX', '2012-06-12', 'Male', 'undefined', '238102@abc.com', '', '01714366105', 'Syed Mahbubur Rashid', 'Mst Rojlin Atiya', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:32:32'),
('localhost', 230, '1697733940583', 2023, 'Six', 'B', 'Abu Bakkar', 220818, 70, 'XXXXXXXXXX', '2011-11-24', 'Male', 'undefined', '220818@abc.com', '', '01740766099', 'MD Atikur Rahman', 'Chaina Khatun', 'Moddhorgati, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:34:33'),
('localhost', 231, '1697325230987', 2023, 'Six', 'B', 'MD Shihab Molla', 670662, 53, 'XXXXXXXXXX', '2014-12-06', 'Male', 'undefined', '670662@abc.com', '', '01725281924', 'MD Mizanur Rahman', 'Shiuli Parvin', 'Chatul, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:37:10'),
('localhost', 232, '1697389214652', 2023, 'Six', 'B', 'MD Nazmul Sakib Swron', 128617, 15, 'XXXXXXXXXX', '2013-01-01', 'Male', 'undefined', '128617@abc.com', '', '01736347956', 'Mohammad Ashrafuzzaman Chunnu', 'Nurunnahar', 'FelanNagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:46:45'),
('localhost', 233, '1697335962147', 2023, 'Six', 'B', 'MD Shahdin Hosen Tutu', 408860, 2, 'XXXXXXXXXX', '2011-12-08', 'Male', 'undefined', '408860@abc.com', '', '01766366416', 'MD Sharafat  Hosen', 'Afroza Sultana', 'Boalmari, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:48:47'),
('localhost', 234, '1697481536794', 2023, 'Six', 'B', 'MD Mozibur Rahman', 888175, 87, 'XXXXXXXXXX', '2011-12-31', 'Male', 'undefined', '888175@abc.com', '', '00000000000', 'MD Aminur Rahman', 'Bilkis Sultana', 'Ramnagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:51:29'),
('localhost', 235, '1697172300759', 2023, 'Six', 'B', 'Khandakar Ariyan', 730047, 59, 'XXXXXXXXXX', '2013-07-10', 'Male', 'undefined', '730047@abc.com', '', '01405143892', 'Sohel Khandakar', 'Mst Lipi Begum', 'Shekhor, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:54:17'),
('localhost', 236, '1697510473291', 2023, 'Six', 'B', 'Alif Khan', 389520, 13, 'XXXXXXXXXX', '2012-10-31', 'Male', 'undefined', '389520@abc.com', '', '01925317838', 'Mostak', 'Mst Nipa', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 01:55:58'),
('localhost', 237, '1697132700927', 2023, 'Six', 'B', 'MD Shofuqul Khan', 553306, 80, 'XXXXXXXXXX', '2011-11-30', 'Male', 'undefined', '553306@abc.com', '', '01716406608', 'Mohammad Sahidul Khan', 'Subarna Aktar', 'Boalmari, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 02:09:15'),
('localhost', 238, '1697813980277', 2023, 'Six', 'B', 'Apon Biswas', 314497, 1, 'XXXXXXXXXX', '2011-10-08', 'Male', 'undefined', '314497@abc.com', '', '01731408942', 'Akhil Kundu Biswas', 'Shila Rani Mandal', 'Boalmari, Boalmari, Faridpur', 'Hinduism', '', 'N/A', '1697259606064_19 Riaj Molla.jpg', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 02:11:29'),
('localhost', 239, '1697718970826', 2023, 'Six', 'B', 'Mahim Mohammad Roni', 194592, 47, 'XXXXXXXXXX', '2012-09-14', 'Male', 'undefined', '194592@abc.com', '', '01756414314', 'Ali Afjal Hosen', 'Jesmin Khanom', 'Noderchad Ghat, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 02:14:16'),
('localhost', 240, '1697121381954', 2023, 'Six', 'B', 'Sheikh Sadi', 203692, 17, 'XXXXXXXXXX', '2013-06-01', 'Male', 'undefined', '203692@abc.com', '', '01868259617', 'MD Rofiqul Islam', 'Mst Sahera Bilkis', 'Myna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-04 02:17:59'),
('localhost', 241, '1697623122327', 2023, 'Six', 'B', 'Wasi Ul Islam', 343342, 101, 'XXXXXXXXXX', '2013-04-13', 'Male', 'undefined', '343342@abc.com', '', '01712310841', 'MD Mizanur Rahman', 'Tahmina Khatun', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 00:24:41'),
('localhost', 242, '1697661896978', 2023, 'Six', 'B', 'MD Maruf Molla', 823287, 31, 'XXXXXXXXXX', '2008-02-01', 'Male', 'undefined', '823287@abc.com', '', '01914226133', 'MD Faruk MOlla', 'Mst Jesmin Begum', 'Gurdia, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 00:27:46'),
('localhost', 243, '1697641917355', 2023, 'Six', 'B', 'Riyazul Sheikh', 613184, 21, 'XXXXXXXXXX', '2012-08-29', 'Male', 'undefined', '613184@abc.com', '', '01407730794', 'Mizan Sheikh', 'Keya Khanom', 'Rajapur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 00:30:45'),
('localhost', 244, '1697217179749', 2023, 'Six', 'B', 'MD Morsalin Khan', 213698, 62, 'XXXXXXXXXX', '2011-05-17', 'Male', 'undefined', '213698@abc.com', '', '01725945712', 'MD Anis Khan', 'Mst Morzina', 'Bykhir, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 00:33:40'),
('localhost', 245, '1697014422165', 2023, 'Six', 'B', 'Rifat Alom', 528050, 5, 'XXXXXXXXXX', '2011-12-26', 'Male', 'undefined', '528050@abc.com', '', '01755045831', 'MD Nowsher Alom', 'Mst Sharmin Begum', 'Kaliyand, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 00:36:56'),
('localhost', 246, '1697652074119', 2023, 'Six', 'B', 'MD Tamim', 100955, 54, 'XXXXXXXXXX', '2011-10-09', 'Male', 'undefined', '100955@abc.com', '', '01920341428', 'Masud Rana', 'Mst Esamtara Begum', 'Amritanagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 00:39:14'),
('localhost', 247, '1697010592205', 2023, 'Six', 'B', 'MD Samiul Islam', 255150, 89, 'XXXXXXXXXX', '2012-03-10', 'Male', 'undefined', '255150@abc.com', '', '01936149460', 'MS Ali Hosen', 'Mst Hayatun Nesa', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 00:42:11'),
('localhost', 248, '1697017199129', 2023, 'Six', 'B', 'MD Zihad Sheikh', 218750, 58, 'XXXXXXXXXX', '2011-11-16', 'Male', 'undefined', '218750@abc.com', '', '01403978918', 'MD Hosen Sheikh', 'Farida Khatun', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 00:44:27'),
('localhost', 249, '1697487083398', 2023, 'Six', 'B', 'AB Rahman Molla', 320870, 88, 'XXXXXXXXXX', '2012-01-03', 'Male', 'undefined', '320870@abc.com', '', '01782980088', 'MD Jafar Molla', 'Mst Lipi Begum', 'Satair, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 00:48:23'),
('localhost', 250, '1697049302252', 2023, 'Six', 'B', 'Soharda Rahman', 443998, 55, 'XXXXXXXXXX', '2011-11-08', 'Male', 'undefined', '443998@abc.com', '', '01718272789', 'Mezbaur Rahman', 'Farzana Sultana Sumi', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 00:51:20'),
('localhost', 251, '1697036149346', 2023, 'Six', 'B', 'Apan Saha', 471231, 4, 'XXXXXXXXXX', '2012-01-22', 'Male', 'undefined', '471231@abc.com', '', '01712450875', 'Priyo Nath Saha', 'Chinu Rani Saha', 'Amgram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 01:00:36'),
('localhost', 252, '1697580943774', 2023, 'Six', 'B', 'MD Masum Choudhury', 285907, 84, 'XXXXXXXXXX', '2010-03-10', 'Male', 'undefined', '285907@abc.com', '', '01313967277', 'MD AB Kaiyum', 'Mst Rekha Begum', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 01:05:13'),
('localhost', 253, '1696986200501', 2023, 'Six', 'B', 'Abu Said Choudhury', 578468, 63, 'XXXXXXXXXX', '2010-10-14', 'Male', 'undefined', '578468@abc.com', '', '01975385428', 'Mst Mintu Choudhury', 'Sabina Begum', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 01:09:24'),
('localhost', 254, '1697085197831', 2023, 'Six', 'B', 'MD Tanzim Hosen', 87928, 51, 'XXXXXXXXXX', '2012-10-25', 'Male', 'undefined', '87928@abc.com', '', '01746271625', 'MD Imran Hosen', 'Mst Aysa Siddik', 'Joydebpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 01:11:36'),
('localhost', 255, '1697605011651', 2023, 'Six', 'B', 'MD Tahsan Islam', 1324, 83, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '1324@abc.com', '', '01988909893', 'MD Delwar Hosen', 'Mst Tahmina Begum', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 01:22:16'),
('localhost', 256, '1697167918767', 2023, 'Six', 'B', 'MD Abid Rahman Alif', 864119, 35, 'XXXXXXXXXX', '2013-04-17', 'Male', 'undefined', '864119@abc.com', '', '01905519906', 'Obaidur Rahman', 'Khadija Begum', 'Rupopat, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 01:24:07'),
('localhost', 257, '1697196905199', 2023, 'Six', 'B', 'MD Mehedi Hasan', 812816, 8, 'XXXXXXXXXX', '2013-12-10', 'Male', 'undefined', '812816@abc.com', '', '01719140828', 'Hosen Mohammad Mahmudul Hasan', 'Ruma Aktar', 'Baguan, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 01:26:24'),
('localhost', 258, '1696973477911', 2023, 'Six', 'B', 'Sazzad Biswas Shakil', 56147, 14, 'XXXXXXXXXX', '2012-01-15', 'Male', 'undefined', '56147@abc.com', '', '01932516425', 'MD Faruk Biswas', 'Mst khushi Begum', 'Amgram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 01:28:06'),
('localhost', 259, '1697030536419', 2023, 'Six', 'B', 'MD Abu Ibrahim Barkati', 451831, 32, 'XXXXXXXXXX', '2011-09-20', 'Male', 'undefined', '451831@abc.com', '', '01968460413', 'MD Abu  Azad Barkati', 'Lima', 'Sotashi, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 01:30:43'),
('localhost', 260, '1697038892541', 2023, 'Six', 'B', 'Mashfin Mahin', 11325, 28, 'XXXXXXXXXX', '2012-07-16', 'Male', 'undefined', '11325@abc.com', '', '01819042712', 'MD Mojid Sheikh', 'Dulali', 'Myna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 01:33:04'),
('localhost', 261, '1697226477358', 2023, 'Six', 'C', 'MD.Tamim MIa', 204338, 89, 'XXXXXXXXXX', '2012-03-07', 'Male', 'undefined', '204338@abc.com', '', '01920406293', 'MD. Mukul Mia', 'Mst. Bina Begum', 'Kushadangga,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 05:02:26'),
('localhost', 262, '1697295547774', 2023, 'Six', 'C', 'Tanvir sheikh', 36346, 87, 'XXXXXXXXXX', '2010-07-13', 'Male', 'undefined', '36346@abc.com', '', '01311936773', 'MD.Helal Sheikh', 'Merina', 'Loknath,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 05:07:11'),
('localhost', 263, '1697769710783', 2023, 'Six', 'C', 'MD. Irteja Labib', 228156, 43, 'XXXXXXXXXX', '2012-12-01', 'Male', 'undefined', '228156@abc.com', '', '01733397720', 'MD.Abu Sait', 'Amina Aktar', 'Solna,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 05:10:50'),
('localhost', 264, '1697588555939', 2023, 'Six', 'C', 'MD. Parvej biswas', 587061, 60, 'XXXXXXXXXX', '2011-04-27', 'Male', 'undefined', '587061@abc.com', '', '01781113640', 'MD. Rubel Biswas', 'Parvin', 'Solna,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 05:18:01'),
('localhost', 265, '1697184849136', 2023, 'Six', 'C', 'MD. Jabir Ahamad', 240514, 32, 'XXXXXXXXXX', '2011-11-13', 'Male', 'undefined', '240514@abc.com', '', '01739143233', 'MD. Ohidur Rahman', 'JoliAkter', 'Cornarandia,Alfadangga,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 05:21:44'),
('localhost', 266, '1697464902151', 2023, 'Six', 'C', 'MD. Rabbi', 276967, 28, 'XXXXXXXXXX', '2012-11-11', 'Male', 'undefined', '276967@abc.com', '', '01724196515', 'MD. Ikbal Hosen', 'Lakisultana', 'Kamargram,Alfadangga,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 05:26:21'),
('localhost', 267, '1697438564785', 2023, 'Six', 'C', 'MD. Mehedi Hasan', 573611, 88, 'XXXXXXXXXX', '2011-02-01', 'Male', 'undefined', '573611@abc.com', '', '01887677354', 'Islam Mollah', 'Rojina', 'AmGram,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-05 05:30:17'),
('localhost', 268, '1697382438813', 2023, 'Six', 'B', 'MD Baiyat Islam Nil', 604599, 49, 'XXXXXXXXXX', '2013-01-17', 'Male', 'undefined', '604599@abc.com', '', '01713618463', 'Rakibul Islam Turan', 'Sharmin Khanom', 'Dakkhin Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-06 04:20:37'),
('localhost', 269, '1697266369681', 2023, 'Six', 'B', 'Habibur Molla', 200173, 66, 'XXXXXXXXXX', '2007-05-17', 'Male', 'undefined', '200173@abc.com', '', '01920673730', 'MD Lutfar Molla', 'Mst Bilkis Begum', 'Baguan, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-06 04:22:51'),
('localhost', 270, '1697682586109', 2023, 'Six', 'B', 'MD Ruhul Amin', 191161, 41, 'XXXXXXXXXX', '2011-09-28', 'Male', 'undefined', '191161@abc.com', '', '01613295870', 'MD Robiul Molla', 'Mst Rina Aktar', 'Thakurpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-06 04:24:49'),
('localhost', 271, '1697038434906', 2023, 'Six', 'B', 'Rifat Sheikh', 128886, 91, 'XXXXXXXXXX', '2011-01-15', 'Male', 'undefined', '128886@abc.com', '', '01994093762', 'Farid Sheikh', 'Mst Sabina Aktar', 'Kolaron, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-06 04:27:12'),
('localhost', 272, '1697223614075', 2023, 'Six', 'B', 'Abdullah', 639545, 90, 'XXXXXXXXXX', '2010-07-14', 'Male', 'undefined', '639545@abc.com', '', '0919878609', 'Nur Islam', 'Sahina Begum', 'Kolaron, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-06 04:30:38'),
('localhost', 273, '1697258165276', 2023, 'Six', 'B', 'Arijit Saha', 352741, 42, 'XXXXXXXXXX', '2012-06-24', 'Male', 'undefined', '352741@abc.com', '', '01715342157', 'Ganesh Chandra Saha', 'Tusi Saha', 'Boronagar, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-06 04:34:37'),
('localhost', 274, '1697629193617', 2023, 'Six', 'B', 'Akash Roy', 480853, 74, 'XXXXXXXXXX', '2012-02-08', 'Male', 'undefined', '480853@abc.com', '', '01750075990', 'Prashanta Kumar Roy', 'Lipa Roy', 'Baguan, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-06 04:36:21'),
('localhost', 275, '1697027270693', 2023, 'Six', 'B', 'MD Sakib Al Mahmud', 329718, 16, 'XXXXXXXXXX', '2012-12-31', 'Male', 'undefined', '329718@abc.com', '', '01918155004', 'MD Tuku Mia', 'Mst Fatema Aktar', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-06 04:39:06'),
('localhost', 276, '1697390470880', 2023, 'Six', 'B', 'Sabid Talukdar', 476690, 30, 'XXXXXXXXXX', '2012-02-14', 'Male', 'undefined', '476690@abc.com', '', '01722235502', 'MD Moklechur Rahman', 'Mst Korna Parvin', 'Adharkotha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-06 04:42:28'),
('localhost', 277, '1697842797634', 2023, 'Six', 'B', 'MD Rezwan Islam', 741155, 10, 'XXXXXXXXXX', '2011-11-03', 'Male', 'undefined', '741155@abc.com', '', '01734011406', 'MD Sohel Rana Mukul', 'Mst Nasima Parvin', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-06 04:46:30'),
('localhost', 278, '1696953883840', 2023, 'Six', 'B', 'Mynul Islam', 32838, 92, 'XXXXXXXXXX', '2011-08-20', 'Male', 'undefined', '32838@abc.com', '', '01312702326', 'Abul Hasan Roni', 'Mst Nazma Begum', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-06 04:51:30'),
('localhost', 279, '1697383761908', 2023, 'Six', 'B', 'MD Wahid ', 187143, 93, 'XXXXXXXXXX', '2011-09-06', 'Male', 'undefined', '187143@abc.com', '', '01735805478', 'MD Abdul Halim SHeikh', 'Sultana Begum', 'Chalinagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-06 04:53:06'),
('localhost', 280, '1697383093018', 2023, 'Six', 'B', 'Tamim Molla', 592972, 61, 'XXXXXXXXXX', '2010-01-05', 'Male', 'undefined', '592972@abc.com', '', '01811568615', 'Palash Molla', 'Taslima Begum', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-06 04:56:00'),
('localhost', 281, '1697716593291', 2023, 'Six', 'C', 'Navanil Mukharjee', 800134, 62, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '800134@abc.com', '', '01710586440', 'Nikhil Mukharrji', 'Roma Roy', 'HarihorNagar ,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 14:24:26'),
('localhost', 282, '1697185682636', 2023, 'Six', 'C', 'Kh.Mani Mukharjee', 818707, 18, 'XXXXXXXXXX', '2012-06-20', 'Female', 'undefined', '818707@abc.com', '', '00000000000', 'Kh.Abu Morsalin ', 'Aktari Jahan', 'Uttar Shibpur ,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 14:31:18'),
('localhost', 283, '1697171848421', 2023, 'Six', 'C', 'MD. Najmul', 132652, 65, 'XXXXXXXXXX', '2011-12-22', 'Male', 'undefined', '132652@abc.com', '', '0186741962', 'Najir Hosen', 'Mst.Khadija Sultana', 'Omrrita Nagar,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 15:06:05'),
('localhost', 284, '1697364745747', 2023, 'Six', 'C', 'Savan Kundu', 259710, 24, 'XXXXXXXXXX', '2011-07-16', 'Male', 'undefined', '259710@abc.com', '', '01714884070', 'Samal Kundu', 'Jhunu Kundu', 'RamNagar,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 15:16:45'),
('localhost', 285, '1697180344412', 2023, 'Six', 'C', 'MD.Mijan', 170927, 83, 'XXXXXXXXXX', '2009-11-07', 'Male', 'undefined', '170927@abc.com', '', '01925963697', 'MD.Habibur Rahran', 'Homneyara', 'Gunbaha,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 15:20:39'),
('localhost', 286, '1697480085764', 2023, 'Six', 'C', 'MD. Anjis Ur Rahman', 248331, 72, 'XXXXXXXXXX', '2012-07-19', 'Male', 'undefined', '248331@abc.com', '', '01796203456', 'MD.Monirul Jaman', 'Shamima Khandakar', 'Alfadangya,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 15:25:42'),
('localhost', 287, '1697717084669', 2023, 'Six', 'C', 'Md.Niyamul Hasan Parash', 157978, 68, 'XXXXXXXXXX', '2012-08-21', 'Male', 'undefined', '157978@abc.com', '', '01713548296', 'MD.Mannu Shaike', 'Sakina Khanam', 'AmGram,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 15:35:21'),
('localhost', 288, '1697666054428', 2023, 'Six', 'C', 'MD.Al Noman Khan', 288079, 1, 'XXXXXXXXXX', '2012-01-05', 'Male', 'undefined', '288079@abc.com', '', '01723146891', 'MD. Babu Khan', 'Nasrin Aktar', 'ShibGram,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 15:44:38'),
('localhost', 289, '1697236586070', 2023, 'Six', 'C', 'Apan Saha', 854861, 12, 'XXXXXXXXXX', '2012-10-19', 'Male', 'undefined', '854861@abc.com', '', '01710941024', 'Opurba Kumar Saha', 'Onjona Saha', 'AmNagar,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 15:49:45'),
('localhost', 290, '1697808371141', 2023, 'Six', 'C', 'MD.Fahim Molla ', 201667, 36, 'XXXXXXXXXX', '2012-11-01', 'Male', 'undefined', '201667@abc.com', '', '01959526543', 'MD.Maruf ', 'Mst.Dipali Begum', 'Solna,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 15:56:16'),
('localhost', 291, '1697125298033', 2023, 'Six', 'C', 'Shahriya Mafis Riday', 116111, 37, 'XXXXXXXXXX', '2012-06-18', 'Male', 'undefined', '116111@abc.com', '', '01930962841', 'MD.Shah Alam', 'Mst.Sabina Begum', 'RayPur,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 16:01:50'),
('localhost', 292, '1697389789713', 2023, 'Six', 'C', 'Abir Hasnat', 563498, 51, 'XXXXXXXXXX', '2011-07-16', 'Male', 'undefined', '563498@abc.com', '', '01747648400', 'MD.Amin biswas', 'Farjana', 'Solna,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 17:00:35'),
('localhost', 293, '1697472018745', 2023, 'Six', 'C', 'MD.Tasin Rahaman cad', 202448, 77, 'XXXXXXXXXX', '2012-06-09', 'Male', 'undefined', '202448@abc.com', '', '01722689116', 'MD.Sobur Khan', 'Mst.Reshma Parvin', 'FelanNagar,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 17:05:54'),
('localhost', 294, '1697176640993', 2023, 'Six', 'C', 'Mahin Mir', 807554, 40, 'XXXXXXXXXX', '2012-12-12', 'Male', 'undefined', '807554@abc.com', '', '01733146330', 'MD. Milan Mir', 'Mst. Rafeja Begum', 'Amgram,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 17:18:28'),
('localhost', 295, '1697108937243', 2023, 'Six', 'C', 'MD. Fajale Rabbi', 791363, 92, 'XXXXXXXXXX', '2010-01-31', 'Male', 'undefined', '791363@abc.com', '', '01716881330', 'MD.Milan Sheikh ', 'Jhorna Begum', 'Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 17:25:10'),
('localhost', 296, '1697346908957', 2023, 'Six', 'C', 'MD. Talha Ahmed', 761936, 41, 'XXXXXXXXXX', '2012-05-06', 'Male', 'undefined', '761936@abc.com', '', '01921669753', 'MD. Bulbul Ahmed', 'Resma Begum', 'Amgram,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 17:31:19'),
('localhost', 297, '1697292208751', 2023, 'Six', 'C', 'Shuvra Dash', 69941, 93, 'XXXXXXXXXX', '2019-10-21', 'Male', 'undefined', '69941@abc.com', '', '01782982401', 'Bijoy Dash', 'Mitali Dash', 'Kalaran,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 17:37:25'),
('localhost', 298, '1697585530666', 2023, 'Six', 'C', 'Junayet Islam', 701819, 6, 'XXXXXXXXXX', '2013-02-11', 'Male', 'undefined', '701819@abc.com', '', '01731307056', 'MD. Montu Molla', 'Jahanara Begum', 'Muktapur,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 17:42:01'),
('localhost', 299, '1697340545858', 2023, 'Six', 'C', 'Sudipto Loskor', 125241, 66, 'XXXXXXXXXX', '2012-07-09', 'Male', 'undefined', '125241@abc.com', '', '01978700526', 'Sumir Kumar Loskor', 'Shilpi Saha', 'Kamargram,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 17:45:54'),
('localhost', 300, '1697672302214', 2023, 'Six', 'C', 'Nayon Biswas', 498821, 75, 'XXXXXXXXXX', '2012-05-20', 'Male', 'undefined', '498821@abc.com', '', '01724249050', 'Zoges condro biswas', 'Sujata Rani Datto ', 'Cor Padmobila,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 17:52:51');
INSERT INTO `students` (`domain`, `ID`, `student_uuid`, `session`, `class`, `section`, `name`, `student_id`, `roll`, `reg`, `birth_date`, `gender`, `blood_group`, `email`, `phone`, `telephone`, `father_name`, `mother_name`, `address`, `religion`, `admission_date`, `hobbies`, `avatar`, `fb_link`, `password`, `quote`, `at_date`) VALUES
('localhost', 302, '1697574970318', 2023, 'Six', 'C', 'MD. Musa Biswas ', 267221, 94, 'XXXXXXXXXX', '2008-10-29', 'Male', 'undefined', '267221@abc.com', '', '01910299619', 'Amiriuddin Biswas', 'MRS.Sahida Begum ', 'Sotashi,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 18:01:05'),
('localhost', 303, '1697761304508', 2023, 'Six', 'C', 'Pranjit Biswas', 855841, 56, 'XXXXXXXXXX', '2010-05-16', 'Male', 'undefined', '855841@abc.com', '', '01728336387', 'Nripen Kumar Biswas', 'Pobonna Rani Biswas', 'Sotashi,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-13 18:04:27'),
('localhost', 304, '1697441303910', 2023, 'Six', 'C', 'MD. Rmim Molla', 693522, 99, 'XXXXXXXXXX', '2010-12-21', 'Male', 'undefined', '693522@abc.com', '', '01866769198', 'MD.Robiul Islam Molla', 'Mst. Taslima Begum', 'Tonarcor ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 02:01:16'),
('localhost', 305, '1697603948770', 2023, 'Six', 'C', 'MD. Mehedi Molla', 21656, 95, 'XXXXXXXXXX', '2012-02-02', 'Male', 'undefined', '21656@abc.com', '', '01708779973', 'MD. Milton Molla', 'Asma Begum', 'Kushadanga ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 02:03:24'),
('localhost', 306, '1697816004852', 2023, 'Six', 'C', 'Rifat Haq', 860429, 35, 'XXXXXXXXXX', '2012-02-26', 'Male', 'undefined', '860429@abc.com', '', '01933839299', 'Nayon ', 'Seli Akter', 'Raypur ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 02:05:47'),
('localhost', 307, '1697483474135', 2023, 'Six', 'C', 'MD. Hosain Miah', 348620, 2, 'XXXXXXXXXX', '2009-01-05', 'Male', 'undefined', '348620@abc.com', '', '01955207915', 'Abul Hasan', 'Mst. Sajeda akter', 'U.Cornarandia ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 02:07:49'),
('localhost', 308, '1697215086970', 2023, 'Six', 'C', 'MD. Jannatul Ferdous Molla', 456901, 23, 'XXXXXXXXXX', '2011-06-12', 'Male', 'undefined', '456901@abc.com', '', '01932398157', 'MD. Shwkat Molla', 'Jabeda Begum', 'HariharNagar ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 02:11:47'),
('localhost', 309, '1697822703445', 2023, 'Six', 'C', 'Rothi Gayali', 357876, 82, 'XXXXXXXXXX', '2011-12-16', 'Male', 'undefined', '357876@abc.com', '', '01866285000', 'Rabin Gyali', 'Sucutra Rani Gyali', 'Kamargram ,Boalmari ,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 02:16:02'),
('localhost', 310, '1697412512043', 2023, 'Six', 'C', 'Sajib Sheikh', 212629, 13, 'XXXXXXXXXX', '2010-10-02', 'Male', 'undefined', '212629@abc.com', '', '01736786420', 'MD. Juyel Sheikh', 'Kakoli Parvin', 'Amgram ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 02:19:03'),
('localhost', 311, '1697779622386', 2023, 'Six', 'C', 'Ovijeet paul', 779912, 53, 'XXXXXXXXXX', '2012-01-12', 'Male', 'undefined', '779912@abc.com', '', '01739971623', 'Ananda Kumar Paul', 'Sabita Pal', 'Myna ,Boalmari ,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 02:23:31'),
('localhost', 312, '1697848426838', 2023, 'Six', 'C', 'MD.Ruhul Amin', 135245, 38, 'XXXXXXXXXX', '2012-11-17', 'Male', 'undefined', '135245@abc.com', '', '01934955820', 'MD. Nojrul Molla', 'MD.Beauty Parvin', 'KamarGram ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 02:28:01'),
('localhost', 313, '1697467565274', 2023, 'Six', 'C', 'Sparsha Mandal', 616172, 80, 'XXXXXXXXXX', '2011-09-20', 'Male', 'undefined', '616172@abc.com', '', '0178908462', 'Parimal Mandal', 'Bandana Mandal', 'Purba Kamargram ,Boalmari ,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 02:32:41'),
('localhost', 314, '1697548432405', 2023, 'Six', 'C', 'Abir Kanti Poul', 676414, 71, 'XXXXXXXXXX', '2011-02-28', 'Male', 'undefined', '676414@abc.com', '', '01818287041', 'Mihir Kanti Pal', 'Sumitra Rani Pal', 'Fatepur ,Boalmari ,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 02:36:31'),
('localhost', 315, '1697222369739', 2023, 'Six', 'C', 'Ruhan', 701251, 20, 'XXXXXXXXXX', '2017-04-23', 'Male', 'undefined', '701251@abc.com', '', '01915906896', 'MD. Ersad Sheik', 'Mst. Lota Begum', 'Sotashi ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 02:39:47'),
('localhost', 316, '1697019890262', 2023, 'Six', 'C', 'MD. Abdullah Al Mamun', 788481, 10, 'XXXXXXXXXX', '2012-01-25', 'Male', 'undefined', '788481@abc.com', '', '01921396747', 'MD.Selim Sheik', 'Mst. Parvin Begum', 'Sotashi ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 02:43:12'),
('localhost', 317, '1697440793861', 2023, 'Six', 'C', 'Sohel Rana', 664031, 11, 'XXXXXXXXXX', '2009-05-01', 'Male', 'undefined', '664031@abc.com', '', '01983053376', 'MD. Robiul Sheikh', 'Mst. Salma Begum', 'Raypur ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 02:55:53'),
('localhost', 318, '1697079024365', 2023, 'Six', 'C', 'MD. Johan Sheik', 750218, 85, 'XXXXXXXXXX', '2011-09-08', 'Male', 'undefined', '750218@abc.com', '', '01871714421', 'MD. Ruku Sheikh', 'Mst.Rehena Begum', 'Calinagar ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 03:00:55'),
('localhost', 319, '1697771006559', 2023, 'Six', 'C', 'Simanta Mukar Bouda', 376905, 90, 'XXXXXXXXXX', '2012-08-27', 'Male', 'undefined', '376905@abc.com', '', '01951910741', 'Mnoj Kumar Bouda', 'Shamali Rani Sorkar', 'Shekhar ,Boalmari ,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 03:04:31'),
('localhost', 320, '1697008457284', 2023, 'Six', 'C', 'Abdur rahaman sheikh', 186141, 9, 'XXXXXXXXXX', '2010-12-23', 'Male', 'undefined', '186141@abc.com', '', '01983054347', 'Iliyas Sheikh', 'Mst.Runu  Begum', 'Kamaldia,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 07:26:52'),
('localhost', 321, '1697594303279', 2023, 'Six', 'C', 'Prottoy Saha', 555817, 78, 'XXXXXXXXXX', '2011-05-28', 'Male', 'undefined', '555817@abc.com', '', '01716748870', 'PongkajKumar Saha', 'Banalata Saha ', 'Shola Hati,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 07:33:03'),
('localhost', 322, '1697394481339', 2023, 'Six', 'C', 'MD. Mostafa Kamal', 292340, 57, 'XXXXXXXXXX', '2012-12-24', 'Male', 'undefined', '292340@abc.com', '', '01942507602', 'MD. Sobuj Molla', 'Mst.Smpa Khanam', 'loknath,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 07:36:29'),
('localhost', 323, '1697791412043', 2023, 'Six', 'C', 'Kisar Sarkar', 244670, 39, 'XXXXXXXXXX', '2011-11-09', 'Male', 'undefined', '244670@abc.com', '', '01754978330', 'Raj Kumar Sarkar', 'Puja Sarkar', 'loknath,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 07:38:45'),
('localhost', 324, '1697175063228', 2023, 'Six', 'C', 'Sheikh Sanbir Rahaman Tanay', 807513, 64, 'XXXXXXXXXX', '2012-11-27', 'Male', 'undefined', '807513@abc.com', '', '01712558002', 'Munjor Rahaman Tushar', 'Shefali Begum', 'Dadpur,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-14 07:44:09'),
('localhost', 325, '1697360316113', 2023, 'Six', 'C', 'MD. Najmul', 368724, 65, 'XXXXXXXXXX', '2010-12-22', 'Male', 'undefined', '368724@abc.com', '', '01867416962', 'MD.Najir Hosen', 'Mst.Khadija Sultana', 'Omrrita Nagar, Boa;mari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-15 12:46:54'),
('localhost', 326, '1697320279263', 2023, 'Six', 'C', 'Tousif Ahmad', 351781, 70, 'XXXXXXXXXX', '2012-02-10', 'Male', 'undefined', '351781@abc.com', '', '01713548245', 'MD.Sanu Molla', 'Taniya Sultana', 'Shukhdev Nagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-15 12:55:40'),
('localhost', 327, '1697819994710', 2023, 'Six', 'C', 'Tarmi Dash', 697344, 27, 'XXXXXXXXXX', '2012-04-29', 'Male', 'undefined', '697344@abc.com', '', '0171953985', 'Tpom Kumar Dash', 'Tiloka Rani Kar', 'Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-15 13:21:40'),
('localhost', 328, '1697088642658', 2023, 'Six', 'C', 'MD.Iyasin Sheikh', 395009, 91, 'XXXXXXXXXX', '2012-10-02', 'Male', 'undefined', '395009@abc.com', '', '01732771778', 'MD.Mijanur Rahman', 'Mst.Dipali Begom', 'Reni Nagar,Cad Ghat,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-15 13:26:05'),
('localhost', 329, '1697070639910', 2023, 'Six', 'C', 'Mirza Mayaz Hosen', 640419, 79, 'XXXXXXXXXX', '2012-07-04', 'Male', 'undefined', '640419@abc.com', '', '01718163517', 'Mirza Mahsin Hosen ', 'MRS. Shahanaz Parvin ', 'Purbo Kamargram, Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-15 16:15:25'),
('localhost', 330, '1697075259766', 2023, 'Six', 'C', 'Farhan ', 884190, 97, 'XXXXXXXXXX', '2012-03-04', 'Male', 'undefined', '884190@abc.com', '', '01768027853', 'Alif Nayon ', 'Fatema Sarkar  ', 'Zogibarat Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-03-15 16:24:08'),
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
('localhost', 404, '1697298182893', 2023, 'Seven', 'C', 'Salman Rahman', 774769, 24, 'XXXXXXXXXX', '', 'Male', 'N/A', '774769@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:13:23'),
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
('localhost', 493, '1696994296780', 2023, 'Seven', 'B', 'Souvik Saha', 362817, 1, 'XXXXXXXXXX', '', 'Male', 'N/A', '362817@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 494, '1697323128992', 2023, 'Seven', 'B', 'Biprajit Kumar Basu', 258202, 2, 'XXXXXXXXXX', '', 'Male', 'N/A', '258202@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 495, '1697160834599', 2023, 'Seven', 'B', 'Ratul Saha', 625582, 3, 'XXXXXXXXXX', '', 'Male', 'N/A', '625582@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 496, '1697684657593', 2023, 'Seven', 'B', 'Md. Sahriyar Hossen', 52560, 4, 'XXXXXXXXXX', '', 'Male', 'N/A', '52560@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 497, '1696948870625', 2023, 'Seven', 'B', 'Syad Sadi Hossen Rafi', 324934, 5, 'XXXXXXXXXX', '', 'Male', 'N/A', '324934@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 498, '1697296536710', 2023, 'Seven', 'B', 'Md. Mehrab Hossen', 464917, 6, 'XXXXXXXXXX', '', 'Male', 'N/A', '464917@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 499, '1696991753731', 2023, 'Seven', 'B', 'Rahul Kundu', 645557, 7, 'XXXXXXXXXX', '', 'Male', 'N/A', '645557@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 500, '1697840277113', 2023, 'Seven', 'B', 'Mimtazur Rahman', 714584, 8, 'XXXXXXXXXX', '', 'Male', 'N/A', '714584@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 501, '1697280045308', 2023, 'Seven', 'B', 'Robiul Hasan', 838313, 9, 'XXXXXXXXXX', '', 'Male', 'N/A', '838313@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 502, '1697309605084', 2023, 'Seven', 'B', 'Deb Kumar Das', 449246, 10, 'XXXXXXXXXX', '', 'Male', 'N/A', '449246@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 503, '1697023934311', 2023, 'Seven', 'B', 'Md. Sohan Molla', 473617, 11, 'XXXXXXXXXX', '', 'Male', 'N/A', '473617@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 504, '1697103616003', 2023, 'Seven', 'B', 'Abid Hasan', 239899, 12, 'XXXXXXXXXX', '', 'Male', 'N/A', '239899@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 505, '1697504172192', 2023, 'Seven', 'B', 'Md. Rain Hasan', 518229, 13, 'XXXXXXXXXX', '', 'Male', 'N/A', '518229@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 506, '1697608228102', 2023, 'Seven', 'B', 'Alif Sheikh', 813273, 14, 'XXXXXXXXXX', '', 'Male', 'N/A', '813273@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 507, '1697515604610', 2023, 'Seven', 'B', 'Arafat Ariyan Toufik', 684939, 15, 'XXXXXXXXXX', '', 'Male', 'N/A', '684939@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 508, '1697723463713', 2023, 'Seven', 'B', 'Tasin Molla', 54937, 16, 'XXXXXXXXXX', '', 'Male', 'N/A', '54937@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 509, '1697122598632', 2023, 'Seven', 'B', 'Kazi Saifuddin Anokan', 375701, 17, 'XXXXXXXXXX', '', 'Male', 'N/A', '375701@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 510, '1697184555984', 2023, 'Seven', 'B', 'Abhisheikh Paul', 190725, 18, 'XXXXXXXXXX', '', 'Male', 'N/A', '190725@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 511, '1697096096267', 2023, 'Seven', 'B', 'Abu Naim Mina', 689239, 19, 'XXXXXXXXXX', '', 'Male', 'N/A', '689239@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 512, '1697303973657', 2023, 'Seven', 'B', 'Tajim Eahsan Pranta', 112599, 20, 'XXXXXXXXXX', '', 'Male', 'N/A', '112599@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 513, '1697055387197', 2023, 'Seven', 'B', 'Turaz Mia', 21477, 21, 'XXXXXXXXXX', '', 'Male', 'N/A', '21477@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 514, '1697633209735', 2023, 'Seven', 'B', 'Araf Hossein', 442187, 22, 'XXXXXXXXXX', '', 'Male', 'N/A', '442187@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 515, '1697432152699', 2023, 'Seven', 'B', 'Md. Surjanil Molla', 347199, 23, 'XXXXXXXXXX', '', 'Male', 'N/A', '347199@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 516, '1696984641137', 2023, 'Seven', 'B', 'Minajul', 301320, 24, 'XXXXXXXXXX', '', 'Male', 'N/A', '301320@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 517, '1697289619957', 2023, 'Seven', 'B', 'Saif Bin Bahar', 742294, 25, 'XXXXXXXXXX', '', 'Male', 'N/A', '742294@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33');
INSERT INTO `students` (`domain`, `ID`, `student_uuid`, `session`, `class`, `section`, `name`, `student_id`, `roll`, `reg`, `birth_date`, `gender`, `blood_group`, `email`, `phone`, `telephone`, `father_name`, `mother_name`, `address`, `religion`, `admission_date`, `hobbies`, `avatar`, `fb_link`, `password`, `quote`, `at_date`) VALUES
('localhost', 518, '1697379297275', 2023, 'Seven', 'B', 'Md. Khalidur Rahman', 895738, 26, 'XXXXXXXXXX', '', 'Male', 'N/A', '895738@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 519, '1697830421851', 2023, 'Seven', 'B', 'Md. Ibrahim Sheikh', 898121, 27, 'XXXXXXXXXX', '', 'Male', 'N/A', '898121@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 520, '1697061631090', 2023, 'Seven', 'B', 'Arka Molla', 982922, 28, 'XXXXXXXXXX', '', 'Male', 'N/A', '982922@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 521, '1697063596543', 2023, 'Seven', 'B', 'Hasibul Hasan Rifat', 753059, 29, 'XXXXXXXXXX', '', 'Male', 'N/A', '753059@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 522, '1697183514062', 2023, 'Seven', 'B', 'Md. Alif Molla', 196338, 30, 'XXXXXXXXXX', '', 'Male', 'N/A', '196338@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 523, '1697000981816', 2023, 'Seven', 'B', 'Sifat', 50711, 31, 'XXXXXXXXXX', '', 'Male', 'N/A', '50711@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 524, '1697126893298', 2023, 'Seven', 'B', 'Md. Husain Ahmmed', 840790, 32, 'XXXXXXXXXX', '', 'Male', 'N/A', '840790@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 525, '1697761003704', 2023, 'Seven', 'B', 'Hadi Jayed', 317359, 33, 'XXXXXXXXXX', '', 'Male', 'N/A', '317359@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 526, '1697396565293', 2023, 'Seven', 'B', 'Mahmud Hossen Riad', 714814, 34, 'XXXXXXXXXX', '', 'Male', 'N/A', '714814@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 527, '1697094284417', 2023, 'Seven', 'B', 'Abu Huraira', 557880, 35, 'XXXXXXXXXX', '', 'Male', 'N/A', '557880@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 528, '1697064549027', 2023, 'Seven', 'B', 'Koushik Mondal', 593, 36, 'XXXXXXXXXX', '', 'Male', 'N/A', '593@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 529, '1696997613307', 2023, 'Seven', 'B', 'Shamim Mia', 18145, 37, 'XXXXXXXXXX', '', 'Male', 'N/A', '18145@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 530, '1697528696260', 2023, 'Seven', 'B', 'Mehedi Hasan', 675223, 38, 'XXXXXXXXXX', '', 'Male', 'N/A', '675223@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 531, '1697521848098', 2023, 'Seven', 'B', 'Musa Abmmed', 252997, 39, 'XXXXXXXXXX', '', 'Male', 'N/A', '252997@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 532, '1697054261610', 2023, 'Seven', 'B', 'Ibrhim Hossein', 236213, 40, 'XXXXXXXXXX', '', 'Male', 'N/A', '236213@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 533, '1697155080207', 2023, 'Seven', 'B', 'Sawon Molla', 358809, 41, 'XXXXXXXXXX', '', 'Male', 'N/A', '358809@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 534, '1697470432474', 2023, 'Seven', 'B', 'Md. Riazul Islam Riad', 60649, 42, 'XXXXXXXXXX', '', 'Male', 'N/A', '60649@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 535, '1696977782664', 2023, 'Seven', 'B', 'Md. Sahriar Sheikh', 583492, 43, 'XXXXXXXXXX', '', 'Male', 'N/A', '583492@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 536, '1697145456239', 2023, 'Seven', 'B', 'Md. Imon Molla', 616872, 44, 'XXXXXXXXXX', '', 'Male', 'N/A', '616872@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 537, '1697605755052', 2023, 'Seven', 'B', 'Jahid', 851093, 45, 'XXXXXXXXXX', '', 'Male', 'N/A', '851093@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 538, '1697078191373', 2023, 'Seven', 'B', 'Abdul Arif', 879014, 46, 'XXXXXXXXXX', '', 'Male', 'N/A', '879014@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 539, '1697238184298', 2023, 'Seven', 'B', 'Md. Tanjid', 250997, 47, 'XXXXXXXXXX', '', 'Male', 'N/A', '250997@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 540, '1697408709616', 2023, 'Seven', 'B', 'Tajim Islam', 169236, 48, 'XXXXXXXXXX', '', 'Male', 'N/A', '169236@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 541, '1697832809692', 2023, 'Seven', 'B', 'Mahmudul', 582665, 49, 'XXXXXXXXXX', '', 'Male', 'N/A', '582665@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 542, '1697132935973', 2023, 'Seven', 'B', 'S S Azharul', 698908, 50, 'XXXXXXXXXX', '', 'Male', 'N/A', '698908@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 543, '1697234281343', 2023, 'Seven', 'B', 'Ruhul Amin', 10516, 51, 'XXXXXXXXXX', '', 'Male', 'N/A', '10516@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 544, '1697233597228', 2023, 'Seven', 'B', 'Md. Anis Molla', 310946, 52, 'XXXXXXXXXX', '', 'Male', 'N/A', '310946@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 545, '1697033863411', 2023, 'Seven', 'B', 'Simanta Rajbongshi', 401803, 53, 'XXXXXXXXXX', '', 'Male', 'N/A', '401803@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 546, '1697802273877', 2023, 'Seven', 'B', 'Md. Zobaer Molla', 534276, 54, 'XXXXXXXXXX', '', 'Male', 'N/A', '534276@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 547, '1697042156785', 2023, 'Seven', 'B', 'Tayabur Rahman', 671447, 55, 'XXXXXXXXXX', '', 'Male', 'N/A', '671447@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 548, '1697359832436', 2023, 'Seven', 'B', 'Riad Shikder', 699169, 56, 'XXXXXXXXXX', '', 'Male', 'N/A', '699169@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 549, '1697433672716', 2023, 'Seven', 'B', 'Naim Kader Khan', 185625, 57, 'XXXXXXXXXX', '', 'Male', 'N/A', '185625@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 550, '1696993957383', 2023, 'Seven', 'B', 'Md. Hamimuzzaman Hamim', 294285, 58, 'XXXXXXXXXX', '', 'Male', 'N/A', '294285@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 551, '1697624696999', 2023, 'Seven', 'B', 'Rafiz Khan', 394550, 59, 'XXXXXXXXXX', '', 'Male', 'N/A', '394550@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 552, '1697131583568', 2023, 'Seven', 'B', 'S M Amin Forhad', 769678, 60, 'XXXXXXXXXX', '', 'Male', 'N/A', '769678@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 553, '1697534658145', 2023, 'Seven', 'B', 'Sagor Rajbongshi', 577733, 61, 'XXXXXXXXXX', '', 'Male', 'N/A', '577733@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 554, '1697154917144', 2023, 'Seven', 'B', 'Md. Fahim Molla', 57355, 62, 'XXXXXXXXXX', '', 'Male', 'N/A', '57355@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 555, '1697268676615', 2023, 'Seven', 'B', 'Abhijeet Mandal', 878446, 63, 'XXXXXXXXXX', '', 'Male', 'N/A', '878446@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 556, '1697477569756', 2023, 'Seven', 'B', 'Zihad Sheikh', 761660, 64, 'XXXXXXXXXX', '', 'Male', 'N/A', '761660@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 557, '1697058397870', 2023, 'Seven', 'B', 'Md. Rabbi Sheikh', 478814, 65, 'XXXXXXXXXX', '', 'Male', 'N/A', '478814@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 558, '1697156842867', 2023, 'Seven', 'B', 'Apon Sarkar Rothin', 703911, 66, 'XXXXXXXXXX', '', 'Male', 'N/A', '703911@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 559, '1697468238002', 2023, 'Seven', 'B', 'Prodip Kumar Saha', 511046, 67, 'XXXXXXXXXX', '', 'Male', 'N/A', '511046@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 560, '1697077306985', 2023, 'Seven', 'B', 'Md. Hanzala Sheikh', 196884, 68, 'XXXXXXXXXX', '', 'Male', 'N/A', '196884@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 561, '1697673798183', 2023, 'Seven', 'B', 'Yasin Alom Rial', 375032, 69, 'XXXXXXXXXX', '', 'Male', 'N/A', '375032@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 562, '1697359679122', 2023, 'Seven', 'B', 'Md. Ruman Sikder', 137635, 70, 'XXXXXXXXXX', '', 'Male', 'N/A', '137635@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 563, '1697788204252', 2023, 'Seven', 'B', 'Arman Molla', 618927, 71, 'XXXXXXXXXX', '', 'Male', 'N/A', '618927@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 564, '1697364849166', 2023, 'Seven', 'B', 'Md. Zonayed Sheikh', 158128, 72, 'XXXXXXXXXX', '', 'Male', 'N/A', '158128@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 565, '1697422942508', 2023, 'Seven', 'B', 'Shahjahan Hasan', 252372, 73, 'XXXXXXXXXX', '', 'Male', 'N/A', '252372@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 566, '1697112427220', 2023, 'Seven', 'B', 'Arman', 801018, 74, 'XXXXXXXXXX', '', 'Male', 'N/A', '801018@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 567, '1697063184939', 2023, 'Seven', 'B', 'Shipon Dutta', 280681, 75, 'XXXXXXXXXX', '', 'Male', 'N/A', '280681@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 568, '1697060077603', 2023, 'Seven', 'B', 'Tamim Sheikh', 592729, 76, 'XXXXXXXXXX', '', 'Male', 'N/A', '592729@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 569, '1697800802210', 2023, 'Seven', 'B', 'Md. Siyam Sheikh', 146405, 77, 'XXXXXXXXXX', '', 'Male', 'N/A', '146405@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 570, '1697594669034', 2023, 'Seven', 'B', 'Gouris Kumar Roy', 781881, 78, 'XXXXXXXXXX', '', 'Male', 'N/A', '781881@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 571, '1697068051631', 2023, 'Seven', 'B', 'Md. Fahim Molla', 21644, 79, 'XXXXXXXXXX', '', 'Male', 'N/A', '21644@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 572, '1697535780582', 2023, 'Seven', 'B', 'Bijoy Mondal', 208938, 80, 'XXXXXXXXXX', '', 'Male', 'N/A', '208938@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 573, '1697526360228', 2023, 'Seven', 'B', 'Pavel Khan', 335235, 81, 'XXXXXXXXXX', '', 'Male', 'N/A', '335235@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 574, '1697219351706', 2023, 'Seven', 'B', 'Nur Islam Bappi', 189987, 82, 'XXXXXXXXXX', '', 'Male', 'N/A', '189987@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 575, '1697051678951', 2023, 'Seven', 'B', 'Sahriyar', 668248, 83, 'XXXXXXXXXX', '', 'Male', 'N/A', '668248@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 576, '1697560649144', 2023, 'Seven', 'B', 'Azim Sheikh', 272035, 84, 'XXXXXXXXXX', '', 'Male', 'N/A', '272035@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 577, '1697348462031', 2023, 'Seven', 'B', 'Arafat Biswas', 212749, 85, 'XXXXXXXXXX', '', 'Male', 'N/A', '212749@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 578, '1697817166834', 2023, 'Seven', 'B', 'Sohan Sheikh', 615205, 86, 'XXXXXXXXXX', '', 'Male', 'N/A', '615205@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 579, '1697678030796', 2023, 'Seven', 'B', 'Aridra Rajbongshi', 648686, 87, 'XXXXXXXXXX', '', 'Male', 'N/A', '648686@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 580, '1697539496018', 2023, 'Seven', 'B', 'Md. Yadul Islam', 254609, 88, 'XXXXXXXXXX', '', 'Male', 'N/A', '254609@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 581, '1697435054593', 2023, 'Seven', 'B', 'Israful Alom', 724473, 89, 'XXXXXXXXXX', '', 'Male', 'N/A', '724473@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 582, '1697500925120', 2023, 'Seven', 'B', 'Tarekh Thakur', 769646, 90, 'XXXXXXXXXX', '', 'Male', 'N/A', '769646@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 583, '1697235410732', 2023, 'Seven', 'B', 'Md. Faruk Sheikh', 568388, 91, 'XXXXXXXXXX', '', 'Male', 'N/A', '568388@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 584, '1697300888859', 2023, 'Seven', 'B', 'Sajid Islam', 693628, 92, 'XXXXXXXXXX', '', 'Male', 'N/A', '693628@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 585, '1697505405152', 2023, 'Seven', 'B', 'Md. Tamim Sheikh', 797676, 93, 'XXXXXXXXXX', '', 'Male', 'N/A', '797676@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 586, '1697130355097', 2023, 'Seven', 'B', 'Tamim', 715463, 94, 'XXXXXXXXXX', '', 'Male', 'N/A', '715463@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 587, '1697727091097', 2023, 'Seven', 'B', 'Debashish Das', 283068, 95, 'XXXXXXXXXX', '', 'Male', 'N/A', '283068@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 588, '1697354061288', 2023, 'Seven', 'B', 'Nayon Hossen', 478535, 96, 'XXXXXXXXXX', '', 'Male', 'N/A', '478535@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 589, '1697481701887', 2023, 'Seven', 'B', 'Hanjala ', 204369, 97, 'XXXXXXXXXX', '', 'Male', 'N/A', '204369@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 590, '1697408337266', 2023, 'Seven', 'B', 'Md. Ahadulla biswas', 423568, 98, 'XXXXXXXXXX', '', 'Male', 'N/A', '423568@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 591, '1697675298545', 2023, 'Seven', 'B', 'Abdullah Al Faisal', 736596, 99, 'XXXXXXXXXX', '', 'Male', 'N/A', '736596@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 592, '1697683943188', 2023, 'Seven', 'B', 'Muntasir Mahmud', 873111, 100, 'XXXXXXXXXX', '', 'Male', 'N/A', '873111@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 593, '1696993070933', 2023, 'Seven', 'B', 'Ismail Al jamil', 389691, 101, 'XXXXXXXXXX', '', 'Male', 'N/A', '389691@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 594, '1697014898661', 2023, 'Seven', 'B', 'Md. Siyam Islam', 877685, 102, 'XXXXXXXXXX', '', 'Male', 'N/A', '877685@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 595, '1697064629331', 2023, 'Seven', 'B', 'Md. Osama Sheikh', 549988, 103, 'XXXXXXXXXX', '', 'Male', 'N/A', '549988@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 596, '1697554772706', 2023, 'Seven', 'B', 'Md. Tawhid Hasan', 581806, 104, 'XXXXXXXXXX', '', 'Male', 'N/A', '581806@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 597, '1697191658486', 2023, 'Seven', 'B', 'Md. Bisal Sheikh', 339349, 105, 'XXXXXXXXXX', '', 'Male', 'N/A', '339349@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 598, '1697414152407', 2023, 'Seven', 'B', 'Moaz Ahmmed', 54606, 106, 'XXXXXXXXXX', '', 'Male', 'N/A', '54606@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 599, '1697383103617', 2023, 'Seven', 'B', 'Md. Sakib Molla', 506651, 107, 'XXXXXXXXXX', '', 'Male', 'N/A', '506651@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 600, '1697302735287', 2023, 'Seven', 'B', 'Md. Yasin Sheikh', 870941, 108, 'XXXXXXXXXX', '', 'Male', 'N/A', '870941@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 601, '1697817300060', 2023, 'Seven', 'B', 'Sandipon Sarkar', 613049, 109, 'XXXXXXXXXX', '', 'Male', 'N/A', '613049@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 602, '1697799439925', 2023, 'Seven', 'B', 'Abdullah Al Safi', 750616, 110, 'XXXXXXXXXX', '', 'Male', 'N/A', '750616@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 603, '1697846431969', 2023, 'Seven', 'B', 'Nayon Biswas', 390600, 111, 'XXXXXXXXXX', '', 'Male', 'N/A', '390600@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 11:44:41'),
('localhost', 604, '1696988759593', 2023, 'Seven', 'A', 'Aritri Basu', 38391, 1, 'XXXXXXXXXX', '', 'Female', 'N/A', '38391@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 605, '1697506341432', 2023, 'Seven', 'A', 'Nusrat Jahan', 603344, 2, 'XXXXXXXXXX', '', 'Female', 'N/A', '603344@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 606, '1697333400700', 2023, 'Seven', 'A', 'Afrin', 761104, 3, 'XXXXXXXXXX', '', 'Female', 'N/A', '761104@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 607, '1696954286547', 2023, 'Seven', 'A', 'Tarin Islam', 719284, 4, 'XXXXXXXXXX', '', 'Female', 'N/A', '719284@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 608, '1697033141186', 2023, 'Seven', 'A', 'Sejuti', 410722, 5, 'XXXXXXXXXX', '', 'Female', 'N/A', '410722@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 609, '1697741481528', 2023, 'Seven', 'A', 'Maliha Tasnim', 392863, 6, 'XXXXXXXXXX', '', 'Female', 'N/A', '392863@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 610, '1697349725222', 2023, 'Seven', 'A', 'Priyonti Saha', 643013, 7, 'XXXXXXXXXX', '', 'Female', 'N/A', '643013@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 611, '1697464557077', 2023, 'Seven', 'A', 'Jotirmoyee Paul', 93994, 8, 'XXXXXXXXXX', '', 'Female', 'N/A', '93994@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 612, '1697292913134', 2023, 'Seven', 'A', 'Nowshin Islam', 882850, 9, 'XXXXXXXXXX', '', 'Female', 'N/A', '882850@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 613, '1697054463725', 2023, 'Seven', 'A', 'Ankita Laskar', 333697, 10, 'XXXXXXXXXX', '', 'Female', 'N/A', '333697@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 614, '1697821617840', 2023, 'Seven', 'A', 'Ayswariya Sarkar', 728231, 11, 'XXXXXXXXXX', '', 'Female', 'N/A', '728231@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 615, '1696972163248', 2023, 'Seven', 'A', 'Faza Suzon Prionti', 121819, 12, 'XXXXXXXXXX', '', 'Female', 'N/A', '121819@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 616, '1697679812845', 2023, 'Seven', 'A', 'Jannaul Ferdous', 31333, 13, 'XXXXXXXXXX', '', 'Female', 'N/A', '31333@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 617, '1697196003642', 2023, 'Seven', 'A', 'Afifa Tasnim', 518969, 14, 'XXXXXXXXXX', '', 'Female', 'N/A', '518969@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 618, '1697321987366', 2023, 'Seven', 'A', 'Sobnom Mustari Nusrat', 864795, 15, 'XXXXXXXXXX', '', 'Female', 'N/A', '864795@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 619, '1697227569789', 2023, 'Seven', 'A', 'Toyshi Shikder', 577879, 16, 'XXXXXXXXXX', '', 'Female', 'N/A', '577879@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 620, '1697486353001', 2023, 'Seven', 'A', 'Sohana Akhter', 799095, 17, 'XXXXXXXXXX', '', 'Female', 'N/A', '799095@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 621, '1697081581504', 2023, 'Seven', 'A', 'Anya Zannat', 449566, 18, 'XXXXXXXXXX', '', 'Female', 'N/A', '449566@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 622, '1697288900481', 2023, 'Seven', 'A', 'Mst. Tayeba', 200582, 19, 'XXXXXXXXXX', '', 'Female', 'N/A', '200582@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 623, '1697767608788', 2023, 'Seven', 'A', 'Afiya', 276868, 20, 'XXXXXXXXXX', '', 'Female', 'N/A', '276868@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 624, '1697184565332', 2023, 'Seven', 'A', 'Anika Nawshin', 582286, 21, 'XXXXXXXXXX', '', 'Female', 'N/A', '582286@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 625, '1697367201672', 2023, 'Seven', 'A', 'Saswati Sarkar', 288820, 22, 'XXXXXXXXXX', '', 'Female', 'N/A', '288820@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 626, '1697428655144', 2023, 'Seven', 'A', 'Takwa Islam', 596734, 23, 'XXXXXXXXXX', '', 'Female', 'N/A', '596734@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 627, '1697170924578', 2023, 'Seven', 'A', 'Subhosree Das', 778428, 24, 'XXXXXXXXXX', '', 'Female', 'N/A', '778428@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 628, '1697812240594', 2023, 'Seven', 'A', 'Sreya Kundu', 481614, 25, 'XXXXXXXXXX', '', 'Female', 'N/A', '481614@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 629, '1697543356235', 2023, 'Seven', 'A', 'Farhana Islam Toha', 650132, 26, 'XXXXXXXXXX', '', 'Female', 'N/A', '650132@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 630, '1697118063139', 2023, 'Seven', 'A', 'Sadiya Islam', 700252, 27, 'XXXXXXXXXX', '', 'Female', 'N/A', '700252@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 631, '1697675823023', 2023, 'Seven', 'A', 'Mithila Khanam', 399629, 28, 'XXXXXXXXXX', '', 'Female', 'N/A', '399629@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 632, '1697011987941', 2023, 'Seven', 'A', 'Nusrat Amira Ira', 654504, 29, 'XXXXXXXXXX', '', 'Female', 'N/A', '654504@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 633, '1697448982167', 2023, 'Seven', 'A', 'Sumaya', 316414, 30, 'XXXXXXXXXX', '', 'Female', 'N/A', '316414@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 634, '1697382090833', 2023, 'Seven', 'A', 'Takiya Tabassum', 818120, 31, 'XXXXXXXXXX', '', 'Female', 'N/A', '818120@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 635, '1697846104854', 2023, 'Seven', 'A', 'Jannatul Ferdous', 228046, 32, 'XXXXXXXXXX', '', 'Female', 'N/A', '228046@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 636, '1697265753983', 2023, 'Seven', 'A', 'Taniya Khanom', 868618, 33, 'XXXXXXXXXX', '', 'Female', 'N/A', '868618@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 637, '1697021128885', 2023, 'Seven', 'A', 'Zubaida Afrin Zarin', 878511, 34, 'XXXXXXXXXX', '', 'Female', 'N/A', '878511@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 638, '1697285490235', 2023, 'Seven', 'A', 'Maimuna Islam', 78886, 35, 'XXXXXXXXXX', '', 'Female', 'N/A', '78886@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 639, '1697348462190', 2023, 'Seven', 'A', 'Maisha Tasniya', 279782, 36, 'XXXXXXXXXX', '', 'Female', 'N/A', '279782@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 640, '1697815952297', 2023, 'Seven', 'A', 'Sraboni Jannat Esha', 859197, 37, 'XXXXXXXXXX', '', 'Female', 'N/A', '859197@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 641, '1697695205522', 2023, 'Seven', 'A', 'Jannatul Zeba', 843637, 38, 'XXXXXXXXXX', '', 'Female', 'N/A', '843637@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 642, '1697686021383', 2023, 'Seven', 'A', 'Mahiya Sultana', 226071, 39, 'XXXXXXXXXX', '', 'Female', 'N/A', '226071@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 643, '1697589798396', 2023, 'Seven', 'A', 'Mst. Pushpita Khanam', 226777, 40, 'XXXXXXXXXX', '', 'Female', 'N/A', '226777@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 644, '1697118302812', 2023, 'Seven', 'A', 'Farhana Akter', 240067, 41, 'XXXXXXXXXX', '', 'Female', 'N/A', '240067@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 645, '1697668246421', 2023, 'Seven', 'A', 'Chayti Laskar', 538949, 42, 'XXXXXXXXXX', '', 'Female', 'N/A', '538949@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 646, '1697725298277', 2023, 'Seven', 'A', 'Mahbiya Mehjabin', 159046, 43, 'XXXXXXXXXX', '', 'Female', 'N/A', '159046@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 647, '1697594664562', 2023, 'Seven', 'A', 'Rafsana Binti', 47005, 44, 'XXXXXXXXXX', '', 'Female', 'N/A', '47005@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 648, '1697487929090', 2023, 'Seven', 'A', 'Hridika Basak', 803819, 45, 'XXXXXXXXXX', '', 'Female', 'N/A', '803819@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 649, '1697419033947', 2023, 'Seven', 'A', 'Nusrat Jahan ', 25670, 46, 'XXXXXXXXXX', '', 'Female', 'N/A', '25670@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 650, '1697385537631', 2023, 'Seven', 'A', 'Puja Sarkar', 551409, 47, 'XXXXXXXXXX', '', 'Female', 'N/A', '551409@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 651, '1697450649552', 2023, 'Seven', 'A', 'Sumaya', 209847, 48, 'XXXXXXXXXX', '', 'Female', 'N/A', '209847@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 652, '1697665821163', 2023, 'Seven', 'A', 'Jannatul Ferdous', 829004, 49, 'XXXXXXXXXX', '', 'Female', 'N/A', '829004@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 653, '1697312698358', 2023, 'Seven', 'A', 'Kotha Koli Maitra', 827839, 50, 'XXXXXXXXXX', '', 'Female', 'N/A', '827839@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 654, '1697322585475', 2023, 'Seven', 'A', 'Rukaya Khanom', 769525, 51, 'XXXXXXXXXX', '', 'Female', 'N/A', '769525@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 655, '1697452853152', 2023, 'Seven', 'A', 'Tasmiya Akter', 95655, 52, 'XXXXXXXXXX', '', 'Female', 'N/A', '95655@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 656, '1697638844487', 2023, 'Seven', 'A', 'Khadija', 280910, 53, 'XXXXXXXXXX', '', 'Female', 'N/A', '280910@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 657, '1697521082904', 2023, 'Seven', 'A', 'Nadiya Akter', 429695, 54, 'XXXXXXXXXX', '', 'Female', 'N/A', '429695@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 658, '1697632833039', 2023, 'Seven', 'A', 'Tabassum', 290660, 55, 'XXXXXXXXXX', '', 'Female', 'N/A', '290660@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 659, '1697075330276', 2023, 'Seven', 'A', 'Aysha Khanom', 434013, 56, 'XXXXXXXXXX', '', 'Female', 'N/A', '434013@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 660, '1697067350223', 2023, 'Seven', 'A', 'Mim Akter jhorna', 620714, 57, 'XXXXXXXXXX', '', 'Female', 'N/A', '620714@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 661, '1697496189937', 2023, 'Seven', 'A', 'Usha', 93016, 58, 'XXXXXXXXXX', '', 'Female', 'N/A', '93016@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 662, '1697697808350', 2023, 'Seven', 'A', 'Zobaida', 136576, 59, 'XXXXXXXXXX', '', 'Female', 'N/A', '136576@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 663, '1697572525217', 2023, 'Seven', 'A', 'Sumaiya', 277323, 60, 'XXXXXXXXXX', '', 'Female', 'N/A', '277323@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 664, '1697684169776', 2023, 'Seven', 'A', 'Oishi Karmakar', 883455, 61, 'XXXXXXXXXX', '', 'Female', 'N/A', '883455@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 665, '1697564135354', 2023, 'Seven', 'A', 'Jerin Akter', 658122, 62, 'XXXXXXXXXX', '', 'Female', 'N/A', '658122@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 666, '1697767733663', 2023, 'Seven', 'A', 'Faiza', 477382, 63, 'XXXXXXXXXX', '', 'Female', 'N/A', '477382@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 667, '1697046895224', 2023, 'Seven', 'A', 'Monalisa Akter', 379557, 64, 'XXXXXXXXXX', '', 'Female', 'N/A', '379557@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 668, '1697662503269', 2023, 'Seven', 'A', 'Sadiya Akter', 468813, 65, 'XXXXXXXXXX', '', 'Female', 'N/A', '468813@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 669, '1697207537896', 2023, 'Seven', 'A', 'Aisha', 631844, 66, 'XXXXXXXXXX', '', 'Female', 'N/A', '631844@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 670, '1697562366530', 2023, 'Seven', 'A', 'Toishi Sutradhar', 80787, 67, 'XXXXXXXXXX', '', 'Female', 'N/A', '80787@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 671, '1697819830260', 2023, 'Seven', 'A', 'Tanni Biswas', 250732, 68, 'XXXXXXXXXX', '', 'Female', 'N/A', '250732@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 672, '1697806194617', 2023, 'Seven', 'A', 'Safiya Tanha Sowa', 663243, 69, 'XXXXXXXXXX', '', 'Female', 'N/A', '63243@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 673, '1697064030653', 2023, 'Seven', 'A', 'Munni Khanam', 157745, 70, 'XXXXXXXXXX', '', 'Female', 'N/A', '157745@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 674, '1697629059968', 2023, 'Seven', 'A', 'Mst. Mafuja Sultana', 108599, 71, 'XXXXXXXXXX', '', 'Female', 'N/A', '108599@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 675, '1696962509550', 2023, 'Seven', 'A', 'Mourn Tanjum Nusrat', 270509, 72, 'XXXXXXXXXX', '', 'Female', 'N/A', '270509@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 676, '1697255410712', 2023, 'Seven', 'A', 'Umme Habiba', 376109, 73, 'XXXXXXXXXX', '', 'Female', 'N/A', '376109@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 677, '1697292788220', 2023, 'Seven', 'A', 'Meghna Roy', 889750, 74, 'XXXXXXXXXX', '', 'Female', 'N/A', '889750@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 678, '1697496898583', 2023, 'Seven', 'A', 'Sumaya', 723243, 75, 'XXXXXXXXXX', '', 'Female', 'N/A', '723243@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 679, '1697439795937', 2023, 'Seven', 'A', 'Mridula', 380329, 76, 'XXXXXXXXXX', '', 'Female', 'N/A', '380329@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 680, '1697595117963', 2023, 'Seven', 'A', 'Saima Rahman', 464960, 77, 'XXXXXXXXXX', '', 'Female', 'N/A', '464960@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 681, '1697213094990', 2023, 'Seven', 'A', 'Sharmin Akhter', 757283, 78, 'XXXXXXXXXX', '', 'Female', 'N/A', '757283@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 682, '1697752503169', 2023, 'Seven', 'A', 'Sucana Parvin', 278949, 79, 'XXXXXXXXXX', '', 'Female', 'N/A', '278949@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 683, '1697504985713', 2023, 'Seven', 'A', 'Mim Khanam', 732590, 80, 'XXXXXXXXXX', '', 'Female', 'N/A', '732590@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 684, '1697797795320', 2023, 'Seven', 'A', 'Nusrat Jahan', 208991, 81, 'XXXXXXXXXX', '', 'Female', 'N/A', '208991@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 685, '1697071180688', 2023, 'Seven', 'A', 'Mili Podder', 333871, 82, 'XXXXXXXXXX', '', 'Female', 'N/A', '333871@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 686, '1697431541697', 2023, 'Seven', 'A', 'Taskin Towa', 866185, 83, 'XXXXXXXXXX', '', 'Female', 'N/A', '866185@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 687, '1697076582685', 2023, 'Seven', 'A', 'Anika Khan', 687682, 84, 'XXXXXXXXXX', '', 'Female', 'N/A', '687682@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 688, '1697234046531', 2023, 'Seven', 'A', 'Maisha Akhter', 98835, 85, 'XXXXXXXXXX', '', 'Female', 'N/A', '98835@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14');
INSERT INTO `students` (`domain`, `ID`, `student_uuid`, `session`, `class`, `section`, `name`, `student_id`, `roll`, `reg`, `birth_date`, `gender`, `blood_group`, `email`, `phone`, `telephone`, `father_name`, `mother_name`, `address`, `religion`, `admission_date`, `hobbies`, `avatar`, `fb_link`, `password`, `quote`, `at_date`) VALUES
('localhost', 689, '1697511836465', 2023, 'Seven', 'A', 'Iva Easmin', 57223, 86, 'XXXXXXXXXX', '', 'Female', 'N/A', '57223@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 690, '1697348187455', 2023, 'Seven', 'A', 'Borsa', 525806, 87, 'XXXXXXXXXX', '', 'Female', 'N/A', '525806@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 691, '1697258210611', 2023, 'Seven', 'A', 'Mst. Jannati', 473906, 88, 'XXXXXXXXXX', '', 'Female', 'N/A', '473906@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 692, '1697362380724', 2023, 'Seven', 'A', 'Mahmuda Akhter', 876696, 89, 'XXXXXXXXXX', '', 'Female', 'N/A', '876696@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 693, '1697247347444', 2023, 'Seven', 'A', 'Brishti Akhter', 135755, 90, 'XXXXXXXXXX', '', 'Female', 'N/A', '135755@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 694, '1697636101283', 2023, 'Seven', 'A', 'Rabeya Boshri', 876102, 91, 'XXXXXXXXXX', '', 'Female', 'N/A', '876102@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 695, '1697260003429', 2023, 'Seven', 'A', 'Ankita Malo', 681787, 92, 'XXXXXXXXXX', '', 'Female', 'N/A', '681787@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 696, '1697328588282', 2023, 'Seven', 'A', 'Moriom Sultana', 689444, 93, 'XXXXXXXXXX', '', 'Female', 'N/A', '689444@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 697, '1697399317892', 2023, 'Seven', 'A', 'Umme Habiba', 213427, 94, 'XXXXXXXXXX', '', 'Female', 'N/A', '213427@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 698, '1697473661405', 2023, 'Seven', 'A', 'Keya Nandi', 931005, 95, 'XXXXXXXXXX', '', 'Female', 'N/A', '931005@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 699, '1697331295544', 2023, 'Seven', 'A', 'Sadiya Khanam', 656842, 96, 'XXXXXXXXXX', '', 'Female', 'N/A', '656842@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 700, '1697325629978', 2023, 'Seven', 'A', 'Sabiha Khanam', 264888, 97, 'XXXXXXXXXX', '', 'Female', 'N/A', '264888@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 701, '1697376444527', 2023, 'Seven', 'A', 'Asifa', 393391, 98, 'XXXXXXXXXX', '', 'Female', 'N/A', '393391@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 702, '1697030949026', 2023, 'Seven', 'A', 'Shapla', 576968, 99, 'XXXXXXXXXX', '', 'Female', 'N/A', '576968@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 703, '1697802223119', 2023, 'Seven', 'A', 'Nusrat Jahan', 658883, 100, 'XXXXXXXXXX', '', 'Female', 'N/A', '658883@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 704, '1697300762031', 2023, 'Seven', 'A', 'Mahiya Khanam', 685502, 101, 'XXXXXXXXXX', '', 'Female', 'N/A', '685502@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 705, '1697304614482', 2023, 'Seven', 'A', 'Nusrat Jahan', 167386, 102, 'XXXXXXXXXX', '', 'Female', 'N/A', '167386@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 706, '1697762505965', 2023, 'Seven', 'A', 'Athora Saha', 378496, 103, 'XXXXXXXXXX', '', 'Female', 'N/A', '378496@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 707, '1697655042015', 2023, 'Seven', 'A', 'Jikta Akhter', 797897, 104, 'XXXXXXXXXX', '', 'Female', 'N/A', '797897@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 708, '1697374914578', 2023, 'Seven', 'A', 'Raisa ', 138142, 105, 'XXXXXXXXXX', '', 'Female', 'N/A', '138142@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 709, '1697268810314', 2023, 'Seven', 'A', 'Setu Akhter', 592294, 106, 'XXXXXXXXXX', '', 'Female', 'N/A', '592294@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 710, '1697450398520', 2023, 'Seven', 'A', 'Elma', 378618, 107, 'XXXXXXXXXX', '', 'Female', 'N/A', '378618@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 711, '1697158112438', 2023, 'Seven', 'A', 'Asha Khanam', 822372, 108, 'XXXXXXXXXX', '', 'Female', 'N/A', '822372@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 712, '1697724198711', 2023, 'Seven', 'A', 'Moriom', 185184, 109, 'XXXXXXXXXX', '', 'Female', 'N/A', '185184@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 713, '1697017489587', 2023, 'Seven', 'A', 'Sumaya', 814415, 110, 'XXXXXXXXXX', '', 'Female', 'N/A', '814415@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 714, '1697290172689', 2023, 'Seven', 'A', 'Maya Das', 278411, 111, 'XXXXXXXXXX', '', 'Female', 'N/A', '278411@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 715, '1697610654837', 2023, 'Seven', 'A', 'Dipa Biswas', 162927, 112, 'XXXXXXXXXX', '', 'Female', 'N/A', '162927@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 716, '1697685459527', 2023, 'Seven', 'A', 'Suraya', 163069, 113, 'XXXXXXXXXX', '', 'Female', 'N/A', '163069@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 717, '1697701415847', 2023, 'Seven', 'A', 'Lamiya Khanam', 598952, 114, 'XXXXXXXXXX', '', 'Female', 'N/A', '598952@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 718, '1697321973897', 2023, 'Seven', 'A', 'Ishita Khanam', 795208, 115, 'XXXXXXXXXX', '', 'Female', 'N/A', '795208@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 719, '1697394444753', 2023, 'Seven', 'A', 'Eti Khanam', 690806, 116, 'XXXXXXXXXX', '', 'Female', 'N/A', '690806@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 720, '1697354963805', 2023, 'Seven', 'A', 'Fatema', 819040, 117, 'XXXXXXXXXX', '', 'Female', 'N/A', '819040@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 721, '1697804892910', 2023, 'Seven', 'A', 'Mitu Khanam', 867434, 118, 'XXXXXXXXXX', '', 'Female', 'N/A', '867434@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 722, '1697380820549', 2023, 'Seven', 'A', 'Pakhi Akhter', 799944, 119, 'XXXXXXXXXX', '', 'Female', 'N/A', '799944@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 723, '1697197429747', 2023, 'Seven', 'A', 'Fatema Akhter', 533942, 120, 'XXXXXXXXXX', '', 'Female', 'N/A', '533942@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 724, '1697356455395', 2023, 'Seven', 'A', 'Aboni Ahmmed', 60947, 121, 'XXXXXXXXXX', '', 'Female', 'N/A', '60947@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 725, '1697084574115', 2023, 'Seven', 'A', 'Jui', 90345, 122, 'XXXXXXXXXX', '', 'Female', 'N/A', '90345@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 726, '1697130773266', 2023, 'Seven', 'A', 'Swarna Karmakar', 644608, 123, 'XXXXXXXXXX', '', 'Female', 'N/A', '644608@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 727, '1697112880985', 2023, 'Seven', 'A', 'Samiya', 590758, 124, 'XXXXXXXXXX', '', 'Female', 'N/A', '590758@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 728, '1697007094964', 2023, 'Seven', 'A', 'Sneha Saha', 735438, 125, 'XXXXXXXXXX', '', 'Female', 'N/A', '735438@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 729, '1697425332639', 2023, 'Seven', 'A', 'Taslima Akhter', 557332, 126, 'XXXXXXXXXX', '', 'Female', 'N/A', '557332@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 730, '1697793226753', 2023, 'Seven', 'A', 'Rupa Khanam', 213633, 127, 'XXXXXXXXXX', '', 'Female', 'N/A', '213633@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 731, '1697176316085', 2023, 'Seven', 'A', 'Tithi Paul', 713273, 128, 'XXXXXXXXXX', '', 'Female', 'N/A', '713273@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 732, '1697267560726', 2023, 'Seven', 'A', 'Ankhi Khanam', 469398, 129, 'XXXXXXXXXX', '', 'Female', 'N/A', '469398@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 733, '1696996935834', 2023, 'Seven', 'A', 'Mithila Molla', 351834, 130, 'XXXXXXXXXX', '', 'Female', 'N/A', '351834@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 734, '1697271132907', 2023, 'Seven', 'A', 'Afsana Parvin', 119078, 131, 'XXXXXXXXXX', '', 'Female', 'N/A', '119078@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 735, '1697642806452', 2023, 'Seven', 'A', 'Khadija', 422550, 132, 'XXXXXXXXXX', '', 'Female', 'N/A', '422550@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 736, '1697560692083', 2023, 'Seven', 'A', 'Nandini Laskar', 280609, 133, 'XXXXXXXXXX', '', 'Female', 'N/A', '280609@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 737, '1697582041038', 2023, 'Seven', 'A', 'Gita Podder', 85242, 134, 'XXXXXXXXXX', '', 'Female', 'N/A', '85242@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 738, '1697488662039', 2023, 'Seven', 'A', 'Tasmiya Khanam', 578571, 135, 'XXXXXXXXXX', '', 'Female', 'N/A', '578571@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 739, '1697293391193', 2023, 'Seven', 'A', 'Jhilik', 424818, 136, 'XXXXXXXXXX', '', 'Female', 'N/A', '424818@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 740, '1697070004009', 2023, 'Seven', 'A', 'Mim Akhter', 872466, 137, 'XXXXXXXXXX', '', 'Female', 'N/A', '872466@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 741, '1697282552795', 2023, 'Seven', 'A', 'Taniya ', 317856, 138, 'XXXXXXXXXX', '', 'Female', 'N/A', '317856@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 742, '1697025989128', 2023, 'Seven', 'A', 'Jannati', 827132, 139, 'XXXXXXXXXX', '', 'Female', 'N/A', '827132@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 743, '1697690272757', 2023, 'Seven', 'A', 'Ambiya', 758964, 140, 'XXXXXXXXXX', '', 'Female', 'N/A', '758964@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 744, '1697743088515', 2023, 'Seven', 'A', 'Abida', 733380, 141, 'XXXXXXXXXX', '', 'Female', 'N/A', '733380@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 745, '1697322846358', 2023, 'Seven', 'A', 'Zubaida Islam', 720531, 142, 'XXXXXXXXXX', '', 'Female', 'N/A', '720531@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 746, '1697511865469', 2023, 'Seven', 'A', 'Rupa Khanam', 70428, 143, 'XXXXXXXXXX', '', 'Female', 'N/A', '70428@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 747, '1697447209762', 2023, 'Seven', 'A', 'Isma', 833093, 144, 'XXXXXXXXXX', '', 'Female', 'N/A', '833093@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 748, '1697325916729', 2023, 'Seven', 'A', 'Laki Akhter', 433088, 145, 'XXXXXXXXXX', '', 'Female', 'N/A', '433088@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 749, '1697383876084', 2023, 'Seven', 'A', 'Sumaya Imu', 779125, 146, 'XXXXXXXXXX', '', 'Female', 'N/A', '779125@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 750, '1697148047099', 2023, 'Seven', 'A', 'Setu Begom', 501033, 147, 'XXXXXXXXXX', '', 'Female', 'N/A', '501033@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 751, '1697532947068', 2023, 'Seven', 'A', 'Maliha Jahan', 323255, 148, 'XXXXXXXXXX', '', 'Female', 'N/A', '323255@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 752, '1697448421239', 2023, 'Seven', 'A', 'Tuli Rani', 482939, 149, 'XXXXXXXXXX', '', 'Female', 'N/A', '482939@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 753, '1697007446889', 2023, 'Seven', 'A', 'Farjana', 426285, 150, 'XXXXXXXXXX', '', 'Female', 'N/A', '426285@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 754, '1697486074299', 2023, 'Seven', 'A', 'Lamiya', 629157, 151, 'XXXXXXXXXX', '', 'Female', 'N/A', '629157@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 755, '1697116613379', 2023, 'Seven', 'A', 'Fahmida', 416665, 152, 'XXXXXXXXXX', '', 'Female', 'N/A', '416665@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 756, '1697818500657', 2023, 'Seven', 'A', 'Farhana Alom', 335125, 153, 'XXXXXXXXXX', '', 'Female', 'N/A', '335125@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 757, '1697823699838', 2023, 'Seven', 'A', 'Sadiya', 786128, 154, 'XXXXXXXXXX', '', 'Female', 'N/A', '786128@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 758, '1697808935549', 2023, 'Seven', 'A', 'Tasnim Farha', 624011, 155, 'XXXXXXXXXX', '', 'Female', 'N/A', '624011@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 759, '1697497790675', 2023, 'Seven', 'A', 'Anwesha Biswas', 784679, 156, 'XXXXXXXXXX', '', 'Female', 'N/A', '784679@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:24:39'),
('localhost', 760, '1697184971355', 2023, 'Seven', 'A', 'Ankita Dutta', 630903, 157, 'XXXXXXXXXX', '', 'Female', 'N/A', '630903@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:24:39'),
('localhost', 761, '1697104479633', 2023, 'Seven', 'A', 'Binti Saha', 845670, 158, 'XXXXXXXXXX', '', 'Female', 'N/A', '845670@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-08-15 12:24:39'),
('localhost', 762, '1697631131130', 2023, 'Seven', 'A', 'Zayeda Islam Porshia ', 26738, 201, 'XXXXXXXXXX', '', 'Female', 'N/A', '26738@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-26 08:07:32'),
('localhost', 788, '1697562063891', 2023, 'Eight', 'A', 'no name', 569050, 2345, 'XXXXXXXXXX', '', 'Male', 'undefined', '569050@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'undefined', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 14:08:09'),
('localhost', 789, '1697451431015', 2023, 'Six', 'A', 'Sumi Akter', 202348, 1, 'XXXXXXXXXX', '', 'Female', 'undefined', '202348@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'undefined', '', 'N/A', '1697221782178_download (1).jpeg', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-13 18:29:42'),
('localhost', 790, '1697719197242', 2023, 'Six', 'A', 'Lima Sultana', 279439, 2, 'XXXXXXXXXX', '', 'Female', 'undefined', '279439@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'undefined', '', 'N/A', '1697221808622_download (2).jpeg', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-13 18:30:08'),
('localhost', 791, '1697245493778', 2023, 'Six', 'A', 'Maria Sultana', 585483, 3, 'XXXXXXXXXX', '', 'Female', 'undefined', '585483@abc.com', '', 'XXXXXXXXXXX', '', '', '', 'undefined', '', 'N/A', '1697221831998_images (2).jpeg', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-13 18:30:32'),
('localhost', 1001, '1698825102719', 2023, 'Seven', 'A', 'মো: রবিন মিনা', 485546, 33, 'XXXXXXXXXX', '', 'Male', 'N/A', '485546@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:51:39'),
('localhost', 1002, '1698576280255', 2023, 'Seven', 'A', 'ফারজানা পারভীন', 536750, 31, 'XXXXXXXXXX', '', 'Female', 'N/A', '536750@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:50:14'),
('localhost', 1003, '1698923082496', 2023, 'Six', 'A', 'তানভির আহম্মেদ ', 712482, 12, 'XXXXXXXXXX', '', 'Male', 'N/A', '712482@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:00:18'),
('localhost', 1004, '1698233004152', 2023, 'Seven', 'A', 'অভিজিত অধিকারী', 672017, 37, 'XXXXXXXXXX', '', 'Male', 'N/A', '672017@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:55:11'),
('localhost', 1005, '1698306232769', 2023, 'Seven', 'A', 'মো: হিমেল শেখ', 490292, 17, 'XXXXXXXXXX', '', 'Male', 'N/A', '490292@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:25:53'),
('localhost', 1006, '1698763609077', 2023, 'Seven', 'A', 'চিত্রা বিশ্বাস', 462872, 19, 'XXXXXXXXXX', '', 'Female', 'N/A', '462872@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:27:43'),
('localhost', 1007, '1698738609341', 2023, 'Six', 'A', 'জ্যোতি মন্ডল ', 421895, 25, 'XXXXXXXXXX', '', 'Female', 'N/A', '421895@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1008, '1698805100616', 2023, 'Seven', 'A', 'কনা ঠাকুর', 215308, 3, 'XXXXXXXXXX', '', 'Female', 'N/A', '215308@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-08 04:38:14'),
('localhost', 1009, '1698426591210', 2023, 'Seven', 'A', 'মো: বাপ্পি শেখ', 44734, 18, 'XXXXXXXXXX', '', 'Female', 'N/A', '44734@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:26:32'),
('localhost', 1010, '1698372177494', 2023, 'Six', 'A', 'সুলতানা ', 715564, 43, 'XXXXXXXXXX', '', 'Female', 'N/A', '715564@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1011, '1698213970959', 2023, 'Six', 'A', 'নীরা ', 163991, 34, 'XXXXXXXXXX', '', 'Female', 'N/A', '163991@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1012, '1698762982623', 2023, 'Seven', 'A', 'ছিয়াম শেখ', 191715, 27, 'XXXXXXXXXX', '', 'Male', 'N/A', '191715@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:45:46'),
('localhost', 1013, '1698806787550', 2023, 'Six', 'A', 'মোঃ মাহমুদ মিনা রাব্বি', 349195, 3, 'XXXXXXXXXX', '', 'Male', 'N/A', '349195@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 04:57:43'),
('localhost', 1014, '1698048172886', 2023, 'Six', 'A', 'বাপ্পি শেখ', 185902, 42, 'XXXXXXXXXX', '', 'Male', 'N/A', '185902@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1015, '1698391364174', 2023, 'Seven', 'A', 'সপ্ন ফকির', 23630, 11, 'XXXXXXXXXX', '', 'Male', 'N/A', '23630@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-08 05:51:40'),
('localhost', 1016, '1698406744528', 2023, 'Seven', 'A', 'ঋতু মনি', 416008, 8, 'XXXXXXXXXX', '', 'Female', 'N/A', '416008@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-08 05:50:04'),
('localhost', 1017, '1698916871386', 2023, 'Six', 'A', 'জিতু বিম্বাস ', 419820, 27, 'XXXXXXXXXX', '', 'Male', 'N/A', '419820@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1018, '1698811920553', 2023, 'Seven', 'A', 'শয়ন অধিকারী', 419437, 2, 'XXXXXXXXXX', '', 'Male', 'N/A', '419437@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-08 04:37:04'),
('localhost', 1019, '1698763430140', 2023, 'Seven', 'A', 'রাকিবুল মোল্যা', 90016, 51, 'XXXXXXXXXX', '', 'Male', 'N/A', '90016@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:01:49'),
('localhost', 1020, '1698528237610', 2023, 'Seven', 'A', 'মিতা', 543659, 35, 'XXXXXXXXXX', '', 'Female', 'N/A', '543659@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:53:41'),
('localhost', 1021, '1698394514528', 2023, 'Six', 'A', 'দিব্য বিশ্বাস ', 481083, 24, 'XXXXXXXXXX', '', 'Male', 'N/A', '481083@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1022, '1698910664986', 2023, 'Seven', 'A', 'ঐতিহ্য বিশ্বাস', 113322, 40, 'XXXXXXXXXX', '', 'Male', 'N/A', '113322@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:57:10'),
('localhost', 1023, '1698793831947', 2023, 'Seven', 'A', 'মো: সিহাব শেখ', 305902, 21, 'XXXXXXXXXX', '', 'Male', 'N/A', '305902@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:29:13'),
('localhost', 1024, '1698506063682', 2023, 'Six', 'A', 'তড়িতা অধিকারী ', 601792, 37, 'XXXXXXXXXX', '', 'Female', 'N/A', '601792@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1025, '1698659885616', 2023, 'Six', 'A', 'তানিয়া ', 467151, 36, 'XXXXXXXXXX', '', 'Female', 'N/A', '467151@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1026, '1698460381556', 2023, 'Six', 'A', 'উৎসব বিশ্বাস', 551763, 14, 'XXXXXXXXXX', '', 'Male', 'N/A', '551763@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:00:18'),
('localhost', 1027, '1698167155238', 2023, 'Seven', 'A', 'রিয়া মনি', 568303, 30, 'XXXXXXXXXX', '', 'Female', 'N/A', '568303@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:49:48'),
('localhost', 1028, '1698361986940', 2023, 'Six', 'A', 'রুদ্র বালা ', 854186, 20, 'XXXXXXXXXX', '', 'Male', 'N/A', '854186@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1029, '1698851230507', 2023, 'Six', 'A', 'মোঃ মারুফ মোল্যা ', 723782, 41, 'XXXXXXXXXX', '', 'Male', 'N/A', '723782@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1030, '1698274196192', 2023, 'Six', 'A', 'মোঃ রাশেদুল মিনা ', 119795, 48, 'XXXXXXXXXX', '', 'Male', 'N/A', '119795@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1031, '1698091785667', 2023, 'Six', 'A', 'দিগন্ত বিশ্বাস ', 734885, 7, 'XXXXXXXXXX', '', 'Male', 'N/A', '734885@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 04:57:43'),
('localhost', 1032, '1698415120544', 2023, 'Seven', 'A', 'মো: হামিদুল মোল্যা', 222373, 22, 'XXXXXXXXXX', '', 'Male', 'N/A', '222373@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:29:37'),
('localhost', 1033, '1698496761059', 2023, 'Seven', 'A', 'সিনথিয়া', 30296, 23, 'XXXXXXXXXX', '', 'Female', 'N/A', '30296@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:30:06'),
('localhost', 1034, '1698702423129', 2023, 'Six', 'A', 'হাবিবুর রহমান ', 339375, 9, 'XXXXXXXXXX', '', 'Male', 'N/A', '339375@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:00:18'),
('localhost', 1035, '1698390542626', 2023, 'Seven', 'A', 'সুষ্মিতা বালা', 56416, 20, 'XXXXXXXXXX', '', 'Female', 'N/A', '56416@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:28:40'),
('localhost', 1036, '1698666063327', 2023, 'Six', 'A', 'আর্য বিশ্বাস ', 464705, 23, 'XXXXXXXXXX', '', 'Male', 'N/A', '464705@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1037, '1698483261157', 2023, 'Seven', 'A', 'শ্রাবন্তী মন্ডল', 19558, 42, 'XXXXXXXXXX', '', 'Female', 'N/A', '19558@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:58:10'),
('localhost', 1038, '1698602134369', 2023, 'Seven', 'A', 'মুক্তি রানী ঠাকুর', 65773, 15, 'XXXXXXXXXX', '', 'Female', 'N/A', '65773@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:24:44'),
('localhost', 1039, '1698057503520', 2023, 'Six', 'A', 'রওশন মাসফি ছোয়াদ ', 276344, 52, 'XXXXXXXXXX', '', 'Male', 'N/A', '276344@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:11:59'),
('localhost', 1040, '1698906249674', 2023, 'Six', 'A', 'পূজা ভদ্র', 494184, 39, 'XXXXXXXXXX', '', 'Female', 'N/A', '494184@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1041, '1698297779431', 2023, 'Seven', 'A', 'ফাতেমা আক্তার', 457018, 13, 'XXXXXXXXXX', '', 'Female', 'N/A', '457018@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:23:48'),
('localhost', 1042, '1698183908488', 2023, 'Seven', 'A', 'মো:মাহিম মিনা', 267327, 32, 'XXXXXXXXXX', '', 'Male', 'N/A', '267327@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:51:03'),
('localhost', 1043, '1698197603066', 2023, 'Seven', 'A', 'ইসরাত জাহান', 463035, 44, 'XXXXXXXXXX', '', 'Female', 'N/A', '463035@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:59:09'),
('localhost', 1044, '1698261533936', 2023, 'Six', 'A', 'আরিফা আক্তার ', 508856, 18, 'XXXXXXXXXX', '', 'Female', 'N/A', '508856@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1045, '1698646217806', 2023, 'Six', 'A', 'যুথী পারভীন ', 817181, 35, 'XXXXXXXXXX', '', 'Female', 'N/A', '817181@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1046, '1698845201207', 2023, 'Six', 'A', 'লিমন মিনা ', 47431, 1, 'XXXXXXXXXX', '', 'Male', 'N/A', '47431@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 04:49:21'),
('localhost', 1047, '1698376513467', 2023, 'Seven', 'A', 'কনিকা', 133040, 25, 'XXXXXXXXXX', '', 'Female', 'N/A', '133040@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:30:58'),
('localhost', 1048, '1698692716505', 2023, 'Six', 'A', 'সুষমা বিশ্বাস ', 661972, 28, 'XXXXXXXXXX', '', 'Female', 'N/A', '661972@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1049, '1698472671897', 2023, 'Six', 'A', 'সিমলা ভদ্র', 873724, 49, 'XXXXXXXXXX', '', 'Female', 'N/A', '873724@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1050, '1698774650269', 2023, 'Six', 'A', 'সিনথিয়া ', 602007, 44, 'XXXXXXXXXX', '', 'Female', 'N/A', '602007@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1051, '1698437459238', 2023, 'Six', 'A', 'হাজেরা ', 406477, 16, 'XXXXXXXXXX', '', 'Female', 'N/A', '406477@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1052, '1698825118439', 2023, 'Seven', 'A', 'মরিয়ম', 61997, 7, 'XXXXXXXXXX', '', 'Female', 'N/A', '61997@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-08 05:49:41'),
('localhost', 1053, '1698511074434', 2023, 'Seven', 'A', 'সাকিবুল', 779728, 47, 'XXXXXXXXXX', '', 'Male', 'N/A', '779728@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:00:06'),
('localhost', 1054, '1698193799818', 2023, 'Seven', 'A', 'তাসমিনা খানম', 864828, 5, 'XXXXXXXXXX', '', 'Female', 'N/A', '864828@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-08 05:48:47'),
('localhost', 1055, '1698695838603', 2023, 'Six', 'A', 'বিশাল বিশ্বাস ', 883048, 5, 'XXXXXXXXXX', '', 'Male', 'N/A', '883048@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 04:57:43'),
('localhost', 1056, '1698910006912', 2023, 'Six', 'A', 'রাকেশ বিশ্বাস ', 793474, 8, 'XXXXXXXXXX', '', 'Male', 'N/A', '793474@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:00:18'),
('localhost', 1057, '1698825441492', 2023, 'Six', 'A', 'নিলয় বিশ্বাস ', 767943, 4, 'XXXXXXXXXX', '', 'Male', 'N/A', '767943@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 04:57:43'),
('localhost', 1058, '1698444663705', 2023, 'Seven', 'A', '-', 578378, 34, 'XXXXXXXXXX', '', 'Female', 'N/A', '578378@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:52:30'),
('localhost', 1059, '1698590495287', 2023, 'Six', 'A', 'সাকিফা জান্নাত তিন্নি', 884037, 6, 'XXXXXXXXXX', '', 'Female', 'N/A', '884037@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 04:57:43'),
('localhost', 1060, '1698804404248', 2023, 'Six', 'A', 'অথরা ', 605580, 15, 'XXXXXXXXXX', '', 'Female', 'N/A', '605580@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1061, '1698713224988', 2023, 'Seven', 'A', 'জাকারিয়া মিনা', 40821, 52, 'XXXXXXXXXX', '', 'Male', 'N/A', '40821@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:02:07'),
('localhost', 1062, '1698812224008', 2023, 'Six', 'A', 'মাসরুফা ', 595807, 30, 'XXXXXXXXXX', '', 'Female', 'N/A', '595807@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1063, '1698845638950', 2023, 'Six', 'A', 'সুব্রত কুমার বিশ্বাস ', 289238, 46, 'XXXXXXXXXX', '', 'Male', 'N/A', '289238@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1064, '1698752968832', 2023, 'Six', 'A', 'মাসুম ', 4012, 32, 'XXXXXXXXXX', '', 'Male', 'N/A', '4012@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1065, '1698809106322', 2023, 'Six', 'A', 'পূর্নিমা মন্ডল ', 463275, 51, 'XXXXXXXXXX', '', 'Female', 'N/A', '463275@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:11:59'),
('localhost', 1066, '1698597209965', 2023, 'Seven', 'A', 'শেখ রাসেল', 413739, 41, 'XXXXXXXXXX', '', 'Male', 'N/A', '413739@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:57:38'),
('localhost', 1067, '1698204940958', 2023, 'Seven', 'A', 'মুরছালিনা', 36634, 50, 'XXXXXXXXXX', '', 'Female', 'N/A', '36634@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-18 05:56:50'),
('localhost', 1068, '1698928005917', 2023, 'Seven', 'A', 'আবির হোসেন', 423446, 36, 'XXXXXXXXXX', '', 'Female', 'N/A', '423446@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:54:11'),
('localhost', 1069, '1698350764090', 2023, 'Seven', 'A', 'জবা ঠাকুর', 887418, 12, 'XXXXXXXXXX', '', 'Female', 'N/A', '887418@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:23:23'),
('localhost', 1070, '1698456620617', 2023, 'Seven', 'A', 'পিউ বিশ্বাস', 489409, 1, 'XXXXXXXXXX', '', 'Female', 'N/A', '489409@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-08 04:29:06'),
('localhost', 1071, '1698215988083', 2023, 'Seven', 'A', 'তামিম শেখ', 790541, 45, 'XXXXXXXXXX', '', 'Male', 'N/A', '790541@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:59:30'),
('localhost', 1072, '1698541005695', 2023, 'Six', 'A', 'দিবা বালা ', 474429, 21, 'XXXXXXXXXX', '', 'Male', 'N/A', '474429@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1073, '1698712481916', 2023, 'Six', 'A', 'মোঃ শাহিন শেখ ', 373032, 45, 'XXXXXXXXXX', '', 'Male', 'N/A', '373032@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1074, '1698449662260', 2023, 'Seven', 'A', 'চামেলী', 216020, 26, 'XXXXXXXXXX', '', 'Female', 'N/A', '216020@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:45:19'),
('localhost', 1075, '1698425800940', 2023, 'Seven', 'A', 'আব্দুল্লাহ শেখ', 334069, 39, 'XXXXXXXXXX', '', 'Male', 'N/A', '334069@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:56:38'),
('localhost', 1076, '1698147213555', 2023, 'Seven', 'A', 'মো: মারুফ মিনা', 458109, 28, 'XXXXXXXXXX', '', 'Male', 'N/A', '458109@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:46:43'),
('localhost', 1077, '1698107578378', 2023, 'Six', 'A', 'রাবেয়া ', 153132, 13, 'XXXXXXXXXX', '', 'Female', 'N/A', '153132@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:00:18'),
('localhost', 1078, '1698055224949', 2023, 'Six', 'A', 'মোঃ আবু সাইদ শেখ ', 544249, 19, 'XXXXXXXXXX', '', 'Male', 'N/A', '544249@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1079, '1698302233472', 2023, 'Six', 'A', 'মোঃ রমজান সিকদার ', 784901, 47, 'XXXXXXXXXX', '', 'Male', 'N/A', '784901@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1080, '1698861480196', 2023, 'Seven', 'A', 'মেহেনাজ', 396693, 14, 'XXXXXXXXXX', '', 'Female', 'N/A', '396693@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:24:14'),
('localhost', 1081, '1698322920875', 2023, 'Seven', 'A', '-', 705247, 49, 'XXXXXXXXXX', '', 'Female', 'N/A', '705247@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:01:10'),
('localhost', 1082, '1698903520786', 2023, 'Six', 'A', 'মোঃ রহমাতুল্লাহ ', 280519, 17, 'XXXXXXXXXX', '', 'Male', 'N/A', '280519@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1083, '1698674746031', 2023, 'Seven', 'A', 'জিহাদ', 515860, 46, 'XXXXXXXXXX', '', 'Male', 'N/A', '515860@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:59:48'),
('localhost', 1084, '1698444629463', 2023, 'Six', 'A', 'প্রিয়সী বিশ্বাস ', 279493, 50, 'XXXXXXXXXX', '', 'Female', 'N/A', '279493@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:11:59'),
('localhost', 1085, '1698679377605', 2023, 'Six', 'A', 'শয়ণ অধিকারী', 127015, 2, 'XXXXXXXXXX', '', 'Male', 'N/A', '127015@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 04:49:44'),
('localhost', 1086, '1698608802241', 2023, 'Seven', 'A', 'সস্তিকা মন্ডল সপ্তামি', 436273, 9, 'XXXXXXXXXX', '', 'Female', 'N/A', '436273@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-08 05:50:46'),
('localhost', 1087, '1698832337476', 2023, 'Seven', 'A', 'মাসুমা আক্তার সুমাইয়া', 500482, 48, 'XXXXXXXXXX', '', 'Female', 'N/A', '500482@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:00:54'),
('localhost', 1088, '1698839814812', 2023, 'Six', 'A', 'চৈতি বালা ', 528913, 33, 'XXXXXXXXXX', '', 'Female', 'N/A', '528913@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1089, '1698119714171', 2023, 'Six', 'A', 'রুদ্র বিশ্বাস', 248275, 29, 'XXXXXXXXXX', '', 'Male', 'N/A', '248275@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1090, '1698743306097', 2023, 'Seven', 'A', 'জেরিন ইয়াসমিন জুই', 717104, 38, 'XXXXXXXXXX', '', 'Female', 'N/A', '717104@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:56:02'),
('localhost', 1091, '1698866161466', 2023, 'Seven', 'A', 'সৃষ্টি বিশ্বাস', 729340, 4, 'XXXXXXXXXX', '', 'Female', 'N/A', '729340@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-08 05:48:13'),
('localhost', 1092, '1698866199826', 2023, 'Six', 'A', 'জয়া রানী শীল ', 807947, 22, 'XXXXXXXXXX', '', 'Female', 'N/A', '807947@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1093, '1698088861565', 2023, 'Six', 'A', 'শ্রাবন্তী মন্ডল ', 756218, 38, 'XXXXXXXXXX', '', 'Female', 'N/A', '756218@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56');
INSERT INTO `students` (`domain`, `ID`, `student_uuid`, `session`, `class`, `section`, `name`, `student_id`, `roll`, `reg`, `birth_date`, `gender`, `blood_group`, `email`, `phone`, `telephone`, `father_name`, `mother_name`, `address`, `religion`, `admission_date`, `hobbies`, `avatar`, `fb_link`, `password`, `quote`, `at_date`) VALUES
('localhost', 1094, '1698906376238', 2023, 'Six', 'A', 'আরাধ্যা বালা ', 311790, 31, 'XXXXXXXXXX', '', 'Female', 'N/A', '311790@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1095, '1698403559524', 2023, 'Seven', 'A', 'নিঝুম অধিকারী', 550369, 10, 'XXXXXXXXXX', '', 'Female', 'N/A', '550369@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-08 05:51:06'),
('localhost', 1096, '1698651604701', 2023, 'Six', 'A', 'কথা বিশ্বাস ', 342072, 26, 'XXXXXXXXXX', '', 'Female', 'N/A', '342072@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:05:48'),
('localhost', 1097, '1698137903373', 2023, 'Seven', 'A', 'স্বপ্ন বিশ্বাস', 248525, 43, 'XXXXXXXXXX', '', 'Male', 'N/A', '248525@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:58:42'),
('localhost', 1098, '1698890326243', 2023, 'Seven', 'A', 'বৃষ্টি বিশ্বাস', 32072, 16, 'XXXXXXXXXX', '', 'Female', 'N/A', '32072@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:25:22'),
('localhost', 1099, '1698320902428', 2023, 'Seven', 'A', 'মো: আলী আজম', 83278, 6, 'XXXXXXXXXX', '', 'Male', 'N/A', '83278@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-08 05:49:22'),
('localhost', 1100, '1698782813989', 2023, 'Seven', 'A', 'প্রলয় বিশ্বাস', 886474, 24, 'XXXXXXXXXX', '', 'Male', 'N/A', '886474@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:30:41'),
('localhost', 1101, '1698720394660', 2023, 'Six', 'A', 'মোঃ আবিদ ষিকদার ', 492555, 10, 'XXXXXXXXXX', '', 'Male', 'N/A', '492555@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:00:18'),
('localhost', 1102, '1698518303599', 2023, 'Six', 'A', 'মোঃ রাকিবুল ', 521856, 11, 'XXXXXXXXXX', '', 'Male', 'N/A', '521856@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:00:18'),
('localhost', 1103, '1698165044569', 2023, 'Six', 'A', 'মিথিলা মন্ডল ', 395827, 40, 'XXXXXXXXXX', '', 'Female', 'N/A', '395827@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 05:10:56'),
('localhost', 1104, '1698561277341', 2023, 'Seven', 'A', 'পিযুষ বিশ্বাস', 877206, 29, 'XXXXXXXXXX', '', 'Male', 'N/A', '877206@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:49:18'),
('localhost', 2001, '1698540115538', 2023, 'Six', 'A', 'Sriti Akter', 89835, 1, 'XXXXXXXXXX', '', 'Female', 'N/A', '89835@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-26 08:44:04'),
('localhost', 2002, '1698163998343', 2023, 'Six', 'A', 'Khadijatul ', 788406, 2, 'XXXXXXXXXX', '', 'Female', 'N/A', '788406@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-26 08:44:35'),
('localhost', 2003, '1698641392397', 2023, 'Six', 'A', ' Mithila Biswash', 244067, 3, 'XXXXXXXXXX', '', 'Female', 'N/A', '244067@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-26 08:45:51'),
('localhost', 2004, '1698502217187', 2023, 'Six', 'A', 'Mollika Datto', 513978, 4, 'XXXXXXXXXX', '', 'Female', 'N/A', '513978@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-26 09:51:30'),
('localhost', 2005, '1698077836477', 2023, 'Six', 'A', 'Maria  Akter', 595033, 5, 'XXXXXXXXXX', '', 'Female', 'N/A', '595033@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 08:58:05'),
('localhost', 2006, '1698634835808', 2023, 'Six', 'A', 'Moumita Rani Das Tisa', 405873, 6, 'XXXXXXXXXX', '', 'Female', 'N/A', '405873@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 08:59:02'),
('localhost', 2007, '1698435390992', 2023, 'Six', 'A', 'Dighi Biswas', 401112, 7, 'XXXXXXXXXX', '', 'Female', 'N/A', '401112@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:00:03'),
('localhost', 2008, '1698628066904', 2023, 'Six', 'A', 'Mst. Aisa', 357124, 8, 'XXXXXXXXXX', '', 'Female', 'N/A', '357124@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:01:12'),
('localhost', 2009, '1698647281065', 2023, 'Six', 'A', 'Mst. Naima Akter Mim', 829137, 9, 'XXXXXXXXXX', '', 'Female', 'N/A', '829137@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:02:37'),
('localhost', 2010, '1698773985869', 2023, 'Six', 'A', 'Mun Islam', 616964, 10, 'XXXXXXXXXX', '', 'Female', 'N/A', '616964@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:03:11'),
('localhost', 2011, '1698775634131', 2023, 'Six', 'A', 'Mst. Airin Sultana', 343220, 11, 'XXXXXXXXXX', '', 'Female', 'N/A', '343220@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:04:06'),
('localhost', 2012, '1698799654190', 2023, 'Six', 'A', 'Takua', 608325, 12, 'XXXXXXXXXX', '', 'Female', 'N/A', '608325@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:04:24'),
('localhost', 2013, '1698788584601', 2023, 'Six', 'A', 'Zidni Islam Jerin', 313002, 13, 'XXXXXXXXXX', '', 'Female', 'N/A', '313002@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:04:56'),
('localhost', 2014, '1698736227662', 2023, 'Six', 'A', 'Hafsa Khatun', 255388, 14, 'XXXXXXXXXX', '', 'Female', 'N/A', '255388@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:05:33'),
('localhost', 2015, '1698661491015', 2023, 'Six', 'A', 'Megla Biswas', 41027, 15, 'XXXXXXXXXX', '', 'Female', 'N/A', '41027@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:05:56'),
('localhost', 2016, '1698083017244', 2023, 'Six', 'A', 'Nondini Malo', 231536, 16, 'XXXXXXXXXX', '', 'Female', 'N/A', '231536@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:07:33'),
('localhost', 2017, '1698718064853', 2023, 'Six', 'A', 'Anna Rani Das', 80847, 17, 'XXXXXXXXXX', '', 'Female', 'N/A', '80847@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:08:02'),
('localhost', 2018, '1698674776459', 2023, 'Six', 'A', 'Faiza ', 191935, 18, 'XXXXXXXXXX', '', 'Female', 'N/A', '191935@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:08:31'),
('localhost', 2019, '1698177695873', 2023, 'Six', 'A', 'Jannati Akter', 625929, 19, 'XXXXXXXXXX', '', 'Female', 'N/A', '625929@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:09:02'),
('localhost', 2020, '1698581808738', 2023, 'Six', 'A', 'Turki', 409848, 20, 'XXXXXXXXXX', '', 'Female', 'N/A', '409848@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:09:31'),
('localhost', 2021, '1698675619427', 2023, 'Six', 'A', 'Juthi Akter', 323905, 21, 'XXXXXXXXXX', '', 'Female', 'N/A', '323905@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:10:16'),
('localhost', 2022, '1698506249686', 2023, 'Six', 'A', 'Hanima', 553591, 22, 'XXXXXXXXXX', '', 'Female', 'N/A', '553591@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:10:45'),
('localhost', 2023, '1698235591232', 2023, 'Six', 'A', 'Mst.  Mim Akter ', 287125, 23, 'XXXXXXXXXX', '', 'Female', 'N/A', '287125@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:11:45'),
('localhost', 2024, '1698544621644', 2023, 'Six', 'A', 'Mst. Habiba  Akter', 154683, 24, 'XXXXXXXXXX', '', 'Female', 'N/A', '154683@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:12:20'),
('localhost', 2025, '1698754080197', 2023, 'Six', 'A', 'Nadira Parvin', 601504, 25, 'XXXXXXXXXX', '', 'Female', 'N/A', '601504@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:12:48'),
('localhost', 2026, '1698677602857', 2023, 'Six', 'A', 'Hafiza Sultana ', 304860, 26, 'XXXXXXXXXX', '', 'Female', 'N/A', '304860@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:13:38'),
('localhost', 2027, '1698406386695', 2023, 'Six', 'A', 'Annika ', 105789, 27, 'XXXXXXXXXX', '', 'Female', 'N/A', '105789@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:14:02'),
('localhost', 2028, '1698337658674', 2023, 'Six', 'A', 'Aisa Sultana Tapur', 614825, 28, 'XXXXXXXXXX', '', 'Female', 'N/A', '614825@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:14:47'),
('localhost', 2029, '1698803553269', 2023, 'Six', 'A', 'Krisna Sarkar', 17619, 29, 'XXXXXXXXXX', '', 'Female', 'N/A', '17619@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:15:22'),
('localhost', 2030, '1698295411225', 2023, 'Six', 'A', 'Lamia Sultana', 19934, 30, 'XXXXXXXXXX', '', 'Female', 'N/A', '19934@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:15:56'),
('localhost', 2031, '1698479650998', 2023, 'Six', 'A', 'Susuma Das', 402927, 31, 'XXXXXXXXXX', '', 'Female', 'N/A', '402927@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:16:23'),
('localhost', 2032, '1698059972119', 2023, 'Six', 'A', 'Mst. Rabeya Akter', 186548, 32, 'XXXXXXXXXX', '', 'Female', 'N/A', '186548@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:17:03'),
('localhost', 2033, '1698531993559', 2023, 'Six', 'A', 'Trisna ', 276810, 33, 'XXXXXXXXXX', '', 'Female', 'N/A', '276810@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:17:25'),
('localhost', 2034, '1698285768793', 2023, 'Six', 'A', 'Mst. Mariya Sultana', 261013, 34, 'XXXXXXXXXX', '', 'Female', 'N/A', '261013@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:18:29'),
('localhost', 2035, '1698442385224', 2023, 'Six', 'A', 'Asia Khatun', 233677, 35, 'XXXXXXXXXX', '', 'Female', 'N/A', '233677@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:18:56'),
('localhost', 2036, '1698867803651', 2023, 'Six', 'A', 'Mst. Hasora Khatun', 33897, 36, 'XXXXXXXXXX', '', 'Female', 'N/A', '33897@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:26:28'),
('localhost', 2037, '1698489876113', 2023, 'Six', 'A', 'Rotna', 673078, 37, 'XXXXXXXXXX', '', 'Female', 'N/A', '673078@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:26:55'),
('localhost', 2038, '1698192259150', 2023, 'Six', 'A', 'Toma Mondol', 789633, 38, 'XXXXXXXXXX', '', 'Female', 'N/A', '789633@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:27:19'),
('localhost', 2039, '1698374747993', 2023, 'Six', 'A', 'Maisa Akter', 592569, 39, 'XXXXXXXXXX', '', 'Female', 'N/A', '592569@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:27:45'),
('localhost', 2040, '1698103899638', 2023, 'Six', 'A', 'Muslima', 605081, 40, 'XXXXXXXXXX', '', 'Female', 'N/A', '605081@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:28:02'),
('localhost', 2041, '1698343168744', 2023, 'Six', 'A', 'Munni Khanom', 278465, 41, 'XXXXXXXXXX', '', 'Female', 'N/A', '278465@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:28:30'),
('localhost', 2042, '1698773070571', 2023, 'Six', 'A', 'Rima Akter', 622093, 42, 'XXXXXXXXXX', '', 'Female', 'N/A', '622093@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:29:01'),
('localhost', 2043, '1698619448195', 2023, 'Six', 'A', 'Naima ', 230651, 43, 'XXXXXXXXXX', '', 'Female', 'N/A', '230651@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:29:25'),
('localhost', 2044, '1698217154730', 2023, 'Six', 'A', 'Saima Akter Sathi', 461614, 44, 'XXXXXXXXXX', '', 'Female', 'N/A', '461614@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:29:56'),
('localhost', 2045, '1698646325968', 2023, 'Six', 'A', 'Moriom ', 53900, 45, 'XXXXXXXXXX', '', 'Female', 'N/A', '53900@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:30:36'),
('localhost', 2046, '1698465242281', 2023, 'Six', 'A', 'Rupa', 567872, 46, 'XXXXXXXXXX', '', 'Female', 'N/A', '567872@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:30:52'),
('localhost', 2047, '1698325184048', 2023, 'Six', 'A', 'Mst. Ummea Habiba', 597338, 47, 'XXXXXXXXXX', '', 'Female', 'N/A', '597338@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:31:31'),
('localhost', 2048, '1698299881366', 2023, 'Six', 'A', 'Chompa Khatun', 134797, 48, 'XXXXXXXXXX', '', 'Female', 'N/A', '134797@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:32:11'),
('localhost', 2049, '1698738939274', 2023, 'Six', 'A', 'Karima', 241952, 49, 'XXXXXXXXXX', '', 'Female', 'N/A', '241952@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:32:41'),
('localhost', 2050, '1698148306745', 2023, 'Six', 'A', 'Sarmin', 201564, 50, 'XXXXXXXXXX', '', 'Female', 'N/A', '201564@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:32:58'),
('localhost', 2051, '1698721140415', 2023, 'Six', 'A', 'Tasmim', 139041, 51, 'XXXXXXXXXX', '', 'Female', 'N/A', '139041@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:33:14'),
('localhost', 2052, '1698497140420', 2023, 'Six', 'A', 'Ivamoni', 18482, 52, 'XXXXXXXXXX', '', 'Female', 'N/A', '18482@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:33:51'),
('localhost', 2053, '1698921111153', 2023, 'Six', 'A', 'Arifa ', 380984, 53, 'XXXXXXXXXX', '', 'Female', 'N/A', '380984@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:34:14'),
('localhost', 2054, '1698134517482', 2023, 'Six', 'A', 'Sadia', 61221, 54, 'XXXXXXXXXX', '', 'Female', 'N/A', '61221@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:34:36'),
('localhost', 2055, '1698162667949', 2023, 'Six', 'A', 'Mst. Sadia Khanom', 21491, 55, 'XXXXXXXXXX', '', 'Female', 'N/A', '21491@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-02 09:35:07'),
('localhost', 2056, '1698268761255', 2023, 'Six', 'B', 'Amir Hamza', 268672, 1, 'XXXXXXXXXX', '', 'Male', 'N/A', '268672@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:26:27'),
('localhost', 2057, '1698474318927', 2023, 'Six', 'B', 'Md. Riazul Islam', 454693, 2, 'XXXXXXXXXX', '', 'Male', 'N/A', '454693@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:27:09'),
('localhost', 2058, '1698566208665', 2023, 'Six', 'B', 'Asikul Islam ', 331227, 3, 'XXXXXXXXXX', '', 'Male', 'N/A', '331227@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:27:40'),
('localhost', 2059, '1698616836159', 2023, 'Six', 'B', 'Rafiuzzaman ', 728596, 4, 'XXXXXXXXXX', '', 'Male', 'N/A', '728596@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:29:35'),
('localhost', 2060, '1698817021824', 2023, 'Six', 'B', 'Zia  Islam', 557551, 6, 'XXXXXXXXXX', '', 'Male', 'N/A', '557551@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:30:11'),
('localhost', 2061, '1698270309130', 2023, 'Six', 'B', 'Md. Esin ', 127447, 7, 'XXXXXXXXXX', '', 'Male', 'N/A', '127447@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:30:44'),
('localhost', 2062, '1698071175454', 2023, 'Six', 'B', 'Sakib Mina', 425495, 8, 'XXXXXXXXXX', '', 'Male', 'N/A', '425495@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:31:15'),
('localhost', 2063, '1698413506588', 2023, 'Six', 'B', 'Apurbo  Kundu', 670024, 9, 'XXXXXXXXXX', '', 'Male', 'N/A', '670024@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:31:45'),
('localhost', 2064, '1698274809611', 2023, 'Six', 'B', 'Amir  Hamza', 854462, 10, 'XXXXXXXXXX', '', 'Male', 'N/A', '854462@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:32:10'),
('localhost', 2065, '1698770159551', 2023, 'Six', 'B', 'Razon  Matubbor', 317709, 11, 'XXXXXXXXXX', '', 'Male', 'N/A', '317709@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:32:51'),
('localhost', 2066, '1698161439812', 2023, 'Six', 'B', 'Nahid Hasan ', 700726, 12, 'XXXXXXXXXX', '', 'Male', 'N/A', '700726@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:33:21'),
('localhost', 2067, '1698655428959', 2023, 'Six', 'B', 'Salman  Molla', 44492, 13, 'XXXXXXXXXX', '', 'Male', 'N/A', '44492@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:33:56'),
('localhost', 2068, '1698644194569', 2023, 'Six', 'B', 'Akash', 881719, 14, 'XXXXXXXXXX', '', 'Male', 'N/A', '881719@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:34:57'),
('localhost', 2069, '1698650451577', 2023, 'Six', 'B', 'Md. Sohan', 400244, 15, 'XXXXXXXXXX', '', 'Male', 'N/A', '400244@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:35:23'),
('localhost', 2070, '1698092123632', 2023, 'Six', 'B', 'Anik Sheikh ', 553109, 16, 'XXXXXXXXXX', '', 'Male', 'N/A', '553109@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:36:08'),
('localhost', 2071, '1698070911497', 2023, 'Six', 'B', 'Mikail  Hasan', 182649, 17, 'XXXXXXXXXX', '', 'Male', 'N/A', '182649@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:37:26'),
('localhost', 2072, '1698767516492', 2023, 'Six', 'B', 'Md. Pial Thakur ', 151624, 18, 'XXXXXXXXXX', '', 'Male', 'N/A', '151624@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 04:38:04'),
('localhost', 2073, '1698753114879', 2023, 'Six', 'B', 'Md. Fahim Montasir', 729509, 19, 'XXXXXXXXXX', '', 'Male', 'N/A', '729509@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:17:34'),
('localhost', 2074, '1698833018191', 2023, 'Six', 'B', 'Md. Nayim Mollik', 431417, 20, 'XXXXXXXXXX', '', 'Male', 'N/A', '431417@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:18:15'),
('localhost', 2075, '1698181140907', 2023, 'Six', 'B', 'Md. Rahul', 541874, 21, 'XXXXXXXXXX', '', 'Male', 'N/A', '541874@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:19:15'),
('localhost', 2076, '1698377889678', 2023, 'Six', 'B', 'Al-Amin', 3370, 22, 'XXXXXXXXXX', '', 'Male', 'N/A', '3370@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:20:12'),
('localhost', 2077, '1698651298205', 2023, 'Six', 'B', 'Jihadul  Islam', 612558, 23, 'XXXXXXXXXX', '', 'Male', 'N/A', '612558@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:20:39'),
('localhost', 2078, '1698501444649', 2023, 'Six', 'B', 'Md. Mahbub', 410290, 24, 'XXXXXXXXXX', '', 'Male', 'N/A', '410290@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:21:05'),
('localhost', 2079, '1698395960003', 2023, 'Six', 'B', 'Md. Mahmud Hossen', 419764, 25, 'XXXXXXXXXX', '', 'Male', 'N/A', '419764@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:21:48'),
('localhost', 2080, '1698252966135', 2023, 'Six', 'B', 'Partho Mondol', 675177, 26, 'XXXXXXXXXX', '', 'Male', 'N/A', '675177@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:22:37'),
('localhost', 2081, '1698432412394', 2023, 'Six', 'B', 'Nahidul   Islam', 676919, 27, 'XXXXXXXXXX', '', 'Male', 'N/A', '676919@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:23:28'),
('localhost', 2082, '1698409392280', 2023, 'Six', 'B', 'Mahidul  Islam', 166693, 28, 'XXXXXXXXXX', '', 'Male', 'N/A', '166693@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:23:54'),
('localhost', 2083, '1698399602029', 2023, 'Six', 'B', 'Riad Hossen', 752665, 29, 'XXXXXXXXXX', '', 'Male', 'N/A', '752665@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:24:29'),
('localhost', 2084, '1698268787670', 2023, 'Six', 'B', 'Md. Mafuj Mridha', 755870, 31, 'XXXXXXXXXX', '', 'Male', 'N/A', '755870@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:25:28'),
('localhost', 2085, '1698684842673', 2023, 'Six', 'B', 'Salman Farsi', 606663, 32, 'XXXXXXXXXX', '', 'Male', 'N/A', '606663@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:26:03'),
('localhost', 2086, '1698428252684', 2023, 'Six', 'B', 'Md. Rabbi', 271155, 33, 'XXXXXXXXXX', '', 'Male', 'N/A', '271155@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:26:28'),
('localhost', 2087, '1698257067666', 2023, 'Six', 'B', 'Md. Rakib', 255838, 34, 'XXXXXXXXXX', '', 'Male', 'N/A', '255838@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:27:01'),
('localhost', 2088, '1698439947472', 2023, 'Six', 'B', 'Moniruzzaman Munna', 718161, 35, 'XXXXXXXXXX', '', 'Male', 'N/A', '718161@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:27:51'),
('localhost', 2089, '1698792223795', 2023, 'Six', 'B', 'Md. Rony Sheikh', 845913, 36, 'XXXXXXXXXX', '', 'Male', 'N/A', '845913@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:28:32'),
('localhost', 2090, '1698812499993', 2023, 'Six', 'B', 'Bayzid Sheikh', 624658, 37, 'XXXXXXXXXX', '', 'Male', 'N/A', '624658@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:29:27'),
('localhost', 2091, '1698533245353', 2023, 'Six', 'B', 'Md. jonayed', 817965, 38, 'XXXXXXXXXX', '', 'Male', 'N/A', '817965@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:29:55'),
('localhost', 2092, '1698426247499', 2023, 'Six', 'B', 'Md. Noman', 220237, 39, 'XXXXXXXXXX', '', 'Male', 'N/A', '220237@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:30:21'),
('localhost', 2093, '1698192642175', 2023, 'Six', 'B', 'Siam Sheikh', 836094, 40, 'XXXXXXXXXX', '', 'Male', 'N/A', '836094@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:31:11'),
('localhost', 2094, '1698610491512', 2023, 'Six', 'B', 'Sayedul  Islam', 262921, 41, 'XXXXXXXXXX', '', 'Male', 'N/A', '262921@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:46:20'),
('localhost', 2095, '1698459967133', 2023, 'Six', 'B', 'Md. Nahid ', 417318, 42, 'XXXXXXXXXX', '', 'Male', 'N/A', '417318@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:46:45'),
('localhost', 2096, '1698329392320', 2023, 'Six', 'B', 'Md. Sazzad Sheikh', 837481, 43, 'XXXXXXXXXX', '', 'Male', 'N/A', '837481@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:47:17'),
('localhost', 2097, '1698893530540', 2023, 'Six', 'B', 'Md. Nazim Biswas', 184742, 44, 'XXXXXXXXXX', '', 'Male', 'N/A', '184742@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:47:51'),
('localhost', 2098, '1698077677104', 2023, 'Six', 'B', 'Md. Sakib Sheikh', 192120, 45, 'XXXXXXXXXX', '', 'Male', 'N/A', '192120@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:49:04'),
('localhost', 2099, '1698179573925', 2023, 'Six', 'B', 'Abuzor Gifari', 96309, 46, 'XXXXXXXXXX', '', 'Male', 'N/A', '96309@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:49:46'),
('localhost', 2100, '1698880860741', 2023, 'Six', 'B', 'Sajedul Islam', 578893, 47, 'XXXXXXXXXX', '', 'Male', 'N/A', '578893@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:50:16'),
('localhost', 2101, '1698391483865', 2023, 'Six', 'B', 'Indrozit', 697748, 48, 'XXXXXXXXXX', '', 'Male', 'N/A', '697748@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:50:39'),
('localhost', 2102, '1698680126737', 2023, 'Six', 'B', 'Biplob Fakir ', 123995, 49, 'XXXXXXXXXX', '', 'Male', 'N/A', '123995@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:51:06'),
('localhost', 2103, '1698539688003', 2023, 'Six', 'B', 'Baharul  Islam', 5709, 50, 'XXXXXXXXXX', '', 'Male', 'N/A', '5709@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:51:40'),
('localhost', 2104, '1698641220045', 2023, 'Six', 'B', 'Md. Sayad', 262349, 51, 'XXXXXXXXXX', '', 'Male', 'N/A', '262349@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:52:29'),
('localhost', 2105, '1698199045603', 2023, 'Six', 'B', 'Abu Taleb', 702823, 52, 'XXXXXXXXXX', '', 'Male', 'N/A', '702823@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:52:52'),
('localhost', 2106, '1698569640310', 2023, 'Six', 'B', 'Samim Khondokar', 808398, 53, 'XXXXXXXXXX', '', 'Male', 'N/A', '808398@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:53:19'),
('localhost', 2107, '1698324010460', 2023, 'Six', 'B', 'Sohag Sheikh', 766271, 54, 'XXXXXXXXXX', '', 'Male', 'N/A', '766271@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:54:05'),
('localhost', 2108, '1698897744863', 2023, 'Six', 'B', 'Khondokar Redoan', 832780, 55, 'XXXXXXXXXX', '', 'Male', 'N/A', '832780@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:54:37'),
('localhost', 2109, '1698087417390', 2023, 'Six', 'B', 'Jobayer Hossen', 524071, 56, 'XXXXXXXXXX', '', 'Male', 'N/A', '524071@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:55:07'),
('localhost', 2110, '1698158577918', 2023, 'Six', 'B', 'Tamim Sheikh', 460375, 57, 'XXXXXXXXXX', '', 'Male', 'N/A', '460375@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:55:51'),
('localhost', 2111, '1698161769351', 2023, 'Six', 'B', 'Jaber Matubbar', 643452, 58, 'XXXXXXXXXX', '', 'Male', 'N/A', '643452@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:56:38'),
('localhost', 2112, '1698261102474', 2023, 'Six', 'B', 'Md. Ismail', 774840, 59, 'XXXXXXXXXX', '', 'Male', 'N/A', '774840@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:57:01'),
('localhost', 2113, '1698792817985', 2023, 'Six', 'B', 'Tamim Bapari', 242785, 60, 'XXXXXXXXXX', '', 'Male', 'N/A', '242785@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:57:26'),
('localhost', 2114, '1698886323894', 2023, 'Six', 'B', 'Md. Mazharul', 249478, 61, 'XXXXXXXXXX', '', 'Male', 'N/A', '249478@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 06:58:36'),
('localhost', 2115, '1698722300263', 2023, 'Seven', 'A', 'Mohona', 426794, 1, 'XXXXXXXXXX', '', 'Female', 'N/A', '426794@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:00:32'),
('localhost', 2116, '1698635543200', 2023, 'Seven', 'A', 'Tauhida', 599417, 2, 'XXXXXXXXXX', '', 'Female', 'N/A', '599417@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:01:00'),
('localhost', 2117, '1698572144084', 2023, 'Seven', 'A', 'Eva', 49856, 3, 'XXXXXXXXXX', '', 'Female', 'N/A', '49856@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:01:56'),
('localhost', 2118, '1698838993291', 2023, 'Seven', 'A', 'Ima Khanom', 266776, 4, 'XXXXXXXXXX', '', 'Female', 'N/A', '266776@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:02:30'),
('localhost', 2119, '1698550117037', 2023, 'Seven', 'A', 'Jui', 195566, 5, 'XXXXXXXXXX', '', 'Female', 'N/A', '195566@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:02:47'),
('localhost', 2120, '1698700925510', 2023, 'Seven', 'A', 'Dola', 869983, 6, 'XXXXXXXXXX', '', 'Female', 'N/A', '869983@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:03:05'),
('localhost', 2121, '1698852967063', 2023, 'Seven', 'A', 'Rabea', 441678, 7, 'XXXXXXXXXX', '', 'Female', 'N/A', '441678@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:03:32'),
('localhost', 2122, '1698406812107', 2023, 'Seven', 'A', 'Suborna ', 344926, 8, 'XXXXXXXXXX', '', 'Female', 'N/A', '344926@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:03:52'),
('localhost', 2123, '1698830149784', 2023, 'Seven', 'A', 'Marjia', 274074, 9, 'XXXXXXXXXX', '', 'Female', 'N/A', '274074@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:04:12'),
('localhost', 2124, '1698209879961', 2023, 'Seven', 'A', 'Borsa Debnath', 642336, 10, 'XXXXXXXXXX', '', 'Female', 'N/A', '642336@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:04:39'),
('localhost', 2125, '1698070807035', 2023, 'Seven', 'A', 'Jannatul Modina', 471715, 11, 'XXXXXXXXXX', '', 'Female', 'N/A', '471715@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:05:17'),
('localhost', 2126, '1698609834227', 2023, 'Seven', 'A', 'Kanij Fatema', 892456, 12, 'XXXXXXXXXX', '', 'Female', 'N/A', '892456@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:06:00'),
('localhost', 2127, '1698512693371', 2023, 'Seven', 'A', 'Nurtaz', 585806, 13, 'XXXXXXXXXX', '', 'Female', 'N/A', '585806@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:06:18'),
('localhost', 2128, '1698083039367', 2023, 'Seven', 'A', 'Khadija', 222938, 14, 'XXXXXXXXXX', '', 'Female', 'N/A', '222938@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:16:25'),
('localhost', 2129, '1698660255247', 2023, 'Seven', 'A', 'Ummea Habiba', 635032, 15, 'XXXXXXXXXX', '', 'Female', 'N/A', '635032@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:16:51'),
('localhost', 2130, '1698652452329', 2023, 'Seven', 'A', 'Mst Samima', 316368, 16, 'XXXXXXXXXX', '', 'Female', 'N/A', '316368@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:19:03'),
('localhost', 2131, '1698599115915', 2023, 'Seven', 'A', 'Samima', 244419, 17, 'XXXXXXXXXX', '', 'Female', 'N/A', '244419@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:19:22'),
('localhost', 2132, '1698486190482', 2023, 'Seven', 'A', 'Takua', 694896, 18, 'XXXXXXXXXX', '', 'Female', 'N/A', '694896@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:21:00'),
('localhost', 2133, '1698276577277', 2023, 'Seven', 'A', 'Priti Sultana', 552540, 19, 'XXXXXXXXXX', '', 'Female', 'N/A', '552540@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:21:43'),
('localhost', 2134, '1698345298989', 2023, 'Seven', 'A', 'Ismatara Irin', 893161, 20, 'XXXXXXXXXX', '', 'Female', 'N/A', '893161@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:22:48'),
('localhost', 2135, '1698451284225', 2023, 'Seven', 'A', 'Meher Abjun Khanom', 569451, 21, 'XXXXXXXXXX', '', 'Female', 'N/A', '569451@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:23:29'),
('localhost', 2136, '1698321490414', 2023, 'Seven', 'A', 'Asia', 236670, 22, 'XXXXXXXXXX', '', 'Female', 'N/A', '236670@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:23:46'),
('localhost', 2137, '1698690716134', 2023, 'Seven', 'A', 'Sakiba Islam', 815121, 23, 'XXXXXXXXXX', '', 'Female', 'N/A', '815121@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:24:09'),
('localhost', 2138, '1698076572387', 2023, 'Seven', 'A', 'Tora Rani', 106535, 24, 'XXXXXXXXXX', '', 'Female', 'N/A', '106535@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:24:35'),
('localhost', 2139, '1698596040227', 2023, 'Seven', 'A', 'Lamia Sultana', 466802, 25, 'XXXXXXXXXX', '', 'Female', 'N/A', '466802@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:25:01'),
('localhost', 2140, '1698275252180', 2023, 'Seven', 'A', 'Firoja', 293307, 26, 'XXXXXXXXXX', '', 'Female', 'N/A', '293307@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:25:40'),
('localhost', 2141, '1698194968743', 2023, 'Seven', 'A', 'Sumaia', 695329, 27, 'XXXXXXXXXX', '', 'Female', 'N/A', '695329@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:26:18'),
('localhost', 2142, '1698714112645', 2023, 'Seven', 'A', 'Mariya Islam', 149753, 28, 'XXXXXXXXXX', '', 'Female', 'N/A', '149753@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:26:44'),
('localhost', 2143, '1698252505315', 2023, 'Seven', 'A', 'Kona Biswas', 129561, 29, 'XXXXXXXXXX', '', 'Female', 'N/A', '129561@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:28:06'),
('localhost', 2144, '1698181033774', 2023, 'Seven', 'A', 'Mursalina', 562534, 30, 'XXXXXXXXXX', '', 'Female', 'N/A', '562534@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:28:26'),
('localhost', 2145, '1698316563615', 2023, 'Seven', 'A', 'Priya', 183470, 31, 'XXXXXXXXXX', '', 'Female', 'N/A', '183470@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:28:47'),
('localhost', 2146, '1698533881507', 2023, 'Seven', 'A', 'Saima Akter', 822890, 32, 'XXXXXXXXXX', '', 'Female', 'N/A', '822890@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:29:15'),
('localhost', 2147, '1698330241301', 2023, 'Seven', 'A', 'Suraiya Akter', 171424, 33, 'XXXXXXXXXX', '', 'Female', 'N/A', '171424@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:29:42'),
('localhost', 2148, '1698409691353', 2023, 'Seven', 'A', 'Riya ', 593245, 34, 'XXXXXXXXXX', '', 'Female', 'N/A', '593245@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:31:32'),
('localhost', 2149, '1698847916679', 2023, 'Seven', 'A', 'Monika ', 406451, 35, 'XXXXXXXXXX', '', 'Female', 'N/A', '406451@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:42:09'),
('localhost', 2150, '1698420346181', 2023, 'Seven', 'A', 'Jannatul ', 703847, 36, 'XXXXXXXXXX', '', 'Female', 'N/A', '703847@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:42:37'),
('localhost', 2151, '1698419031034', 2023, 'Seven', 'A', 'Puspita Malo', 475000, 37, 'XXXXXXXXXX', '', 'Female', 'N/A', '475000@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:44:04'),
('localhost', 2152, '1698728098747', 2023, 'Seven', 'A', 'Joti Kundu', 644472, 58, 'XXXXXXXXXX', '', 'Female', 'N/A', '644472@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:44:36'),
('localhost', 2153, '1698886045723', 2023, 'Seven', 'A', 'Sagorika ', 26391, 39, 'XXXXXXXXXX', '', 'Female', 'N/A', '26391@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:45:14'),
('localhost', 2154, '1698261707909', 2023, 'Seven', 'A', 'Marjia ', 670307, 40, 'XXXXXXXXXX', '', 'Female', 'N/A', '670307@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:45:40'),
('localhost', 2155, '1698191390678', 2023, 'Seven', 'A', 'Tithi Rani ', 389514, 41, 'XXXXXXXXXX', '', 'Female', 'N/A', '389514@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:46:11'),
('localhost', 2156, '1698112948086', 2023, 'Seven', 'A', 'Suraiya Akter', 764706, 42, 'XXXXXXXXXX', '', 'Female', 'N/A', '764706@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:46:59'),
('localhost', 2157, '1698442896302', 2023, 'Seven', 'A', 'Srabonti ', 16572, 43, 'XXXXXXXXXX', '', 'Female', 'N/A', '16572@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:47:24'),
('localhost', 2158, '1698675782803', 2023, 'Seven', 'A', 'Fatema ', 61042, 44, 'XXXXXXXXXX', '', 'Female', 'N/A', '61042@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:47:56'),
('localhost', 2159, '1698605379166', 2023, 'Seven', 'A', 'Sultana Parvin', 514023, 45, 'XXXXXXXXXX', '', 'Female', 'N/A', '514023@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:49:03'),
('localhost', 2160, '1698580668873', 2023, 'Seven', 'A', 'Amena', 327797, 46, 'XXXXXXXXXX', '', 'Female', 'N/A', '327797@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:49:56'),
('localhost', 2161, '1698702420989', 2023, 'Seven', 'A', 'Nondita Sarkar', 123814, 47, 'XXXXXXXXXX', '', 'Female', 'N/A', '123814@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:50:26');
INSERT INTO `students` (`domain`, `ID`, `student_uuid`, `session`, `class`, `section`, `name`, `student_id`, `roll`, `reg`, `birth_date`, `gender`, `blood_group`, `email`, `phone`, `telephone`, `father_name`, `mother_name`, `address`, `religion`, `admission_date`, `hobbies`, `avatar`, `fb_link`, `password`, `quote`, `at_date`) VALUES
('localhost', 2162, '1698864081167', 2023, 'Seven', 'A', 'Laboni ', 563164, 48, 'XXXXXXXXXX', '', 'Female', 'N/A', '563164@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:50:59'),
('localhost', 2163, '1698475739079', 2023, 'Seven', 'B', 'Arko Roy', 356335, 1, 'XXXXXXXXXX', '', 'Female', 'N/A', '356335@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:52:40'),
('localhost', 2164, '1698081356875', 2023, 'Seven', 'B', 'Poros Kumar Sarkar', 246438, 2, 'XXXXXXXXXX', '', 'Female', 'N/A', '246438@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:53:06'),
('localhost', 2165, '1698175115930', 2023, 'Seven', 'B', 'Niloy Kumar Das', 481638, 3, 'XXXXXXXXXX', '', 'Female', 'N/A', '481638@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:53:41'),
('localhost', 2166, '1698753519237', 2023, 'Seven', 'B', 'Abir Islam', 331540, 4, 'XXXXXXXXXX', '', 'Female', 'N/A', '331540@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:54:01'),
('localhost', 2167, '1698676639775', 2023, 'Seven', 'B', 'Sottojit Kumar Biswas', 27230, 5, 'XXXXXXXXXX', '', 'Female', 'N/A', '27230@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:54:39'),
('localhost', 2168, '1698471034575', 2023, 'Seven', 'B', 'Md. Saiful Islam', 298873, 6, 'XXXXXXXXXX', '', 'Female', 'N/A', '298873@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:55:22'),
('localhost', 2169, '1698628529535', 2023, 'Seven', 'B', 'Siam Hossen Sourove', 442663, 7, 'XXXXXXXXXX', '', 'Female', 'N/A', '442663@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:57:44'),
('localhost', 2170, '1698431287207', 2023, 'Seven', 'B', 'Tasib Ahmed', 659932, 8, 'XXXXXXXXXX', '', 'Female', 'N/A', '659932@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 04:58:11'),
('localhost', 2171, '1698530018416', 2023, 'Seven', 'B', 'Munna Biswas', 519530, 9, 'XXXXXXXXXX', '', 'Male', 'N/A', '519530@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:04:13'),
('localhost', 2172, '1698430645821', 2023, 'Seven', 'B', 'Md. Nafi Alom', 658722, 10, 'XXXXXXXXXX', '', 'Male', 'N/A', '658722@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:04:45'),
('localhost', 2173, '1698404070491', 2023, 'Seven', 'B', 'Jamil Islam', 891289, 11, 'XXXXXXXXXX', '', 'Male', 'N/A', '891289@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:05:51'),
('localhost', 2174, '1698527424531', 2023, 'Seven', 'B', 'Sawon ', 698193, 12, 'XXXXXXXXXX', '', 'Male', 'N/A', '698193@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:06:12'),
('localhost', 2175, '1698571659519', 2023, 'Seven', 'B', 'Sabbir Ahmed', 630165, 13, 'XXXXXXXXXX', '', 'Male', 'N/A', '630165@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:06:41'),
('localhost', 2176, '1698546909072', 2023, 'Seven', 'B', 'Noyon Molla', 629112, 14, 'XXXXXXXXXX', '', 'Male', 'N/A', '629112@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:07:01'),
('localhost', 2177, '1698665025524', 2023, 'Seven', 'B', 'Loknath Acharjo', 181153, 15, 'XXXXXXXXXX', '', 'Male', 'N/A', '181153@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:07:39'),
('localhost', 2178, '1698938246294', 2023, 'Seven', 'B', 'Jakaria Mahmud', 4867, 16, 'XXXXXXXXXX', '', 'Male', 'N/A', '4867@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:08:02'),
('localhost', 2179, '1698599952676', 2023, 'Seven', 'B', 'Apon Sheikh', 759278, 17, 'XXXXXXXXXX', '', 'Male', 'N/A', '759278@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:09:02'),
('localhost', 2180, '1698396862913', 2023, 'Seven', 'B', 'Sazzad', 561402, 18, 'XXXXXXXXXX', '', 'Male', 'N/A', '561402@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:09:27'),
('localhost', 2181, '1698855812166', 2023, 'Seven', 'B', 'Sakibul Hasan ', 398194, 19, 'XXXXXXXXXX', '', 'Male', 'N/A', '398194@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:10:04'),
('localhost', 2182, '1698412986735', 2023, 'Seven', 'B', 'Anik Roy', 765556, 20, 'XXXXXXXXXX', '', 'Male', 'N/A', '765556@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:14:08'),
('localhost', 2183, '1698813582526', 2023, 'Seven', 'B', 'Md. Arafat', 776822, 21, 'XXXXXXXXXX', '', 'Male', 'N/A', '776822@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:15:18'),
('localhost', 2184, '1698106934961', 2023, 'Seven', 'B', 'Md. Alamin', 303610, 22, 'XXXXXXXXXX', '', 'Male', 'N/A', '303610@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:15:42'),
('localhost', 2185, '1698560296919', 2023, 'Seven', 'B', 'Sourove', 582537, 23, 'XXXXXXXXXX', '', 'Male', 'N/A', '582537@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:16:35'),
('localhost', 2186, '1698576287362', 2023, 'Seven', 'B', 'Md. Tauhid Islam', 330668, 24, 'XXXXXXXXXX', '', 'Male', 'N/A', '330668@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:17:39'),
('localhost', 2187, '1698284341375', 2023, 'Seven', 'B', 'Soriful Fakir', 421743, 25, 'XXXXXXXXXX', '', 'Male', 'N/A', '421743@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:18:08'),
('localhost', 2188, '1698655638625', 2023, 'Seven', 'B', 'Sonjoy Kumar Bala', 362546, 26, 'XXXXXXXXXX', '', 'Male', 'N/A', '362546@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:18:51'),
('localhost', 2189, '1698777129354', 2023, 'Seven', 'B', 'Siam Mia', 224856, 27, 'XXXXXXXXXX', '', 'Male', 'N/A', '224856@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:20:51'),
('localhost', 2190, '1698861336275', 2023, 'Seven', 'B', 'Munna Munsi', 382299, 28, 'XXXXXXXXXX', '', 'Male', 'N/A', '382299@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:21:23'),
('localhost', 2191, '1698433641928', 2023, 'Seven', 'B', 'Utpol Kumar', 217517, 29, 'XXXXXXXXXX', '', 'Male', 'N/A', '217517@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:24:02'),
('localhost', 2192, '1698055029003', 2023, 'Seven', 'B', 'Md. Foisal Hossen', 362271, 30, 'XXXXXXXXXX', '', 'Male', 'N/A', '362271@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:24:42'),
('localhost', 2193, '1698747294453', 2023, 'Seven', 'B', 'Santo Mollik', 326473, 31, 'XXXXXXXXXX', '', 'Male', 'N/A', '326473@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:25:11'),
('localhost', 2194, '1698331997183', 2023, 'Seven', 'B', 'Md. Rabbi ', 444729, 32, 'XXXXXXXXXX', '', 'Male', 'N/A', '444729@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:25:42'),
('localhost', 2195, '1698274448914', 2023, 'Seven', 'B', 'Md. Sakaut Sheikh', 149265, 34, 'XXXXXXXXXX', '', 'Male', 'N/A', '149265@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:28:15'),
('localhost', 2196, '1698152966327', 2023, 'Seven', 'B', ' Md. Rabbi Hossen', 752617, 35, 'XXXXXXXXXX', '', 'Male', 'N/A', '752617@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:28:54'),
('localhost', 2197, '1698875689869', 2023, 'Seven', 'B', 'Md. Mustak Molla', 152565, 36, 'XXXXXXXXXX', '', 'Male', 'N/A', '152565@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:29:21'),
('localhost', 2198, '1698629237519', 2023, 'Seven', 'B', 'Sajid', 739650, 37, 'XXXXXXXXXX', '', 'Male', 'N/A', '739650@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:29:57'),
('localhost', 2199, '1698732565248', 2023, 'Seven', 'B', 'Dipanto Sarkar', 672373, 38, 'XXXXXXXXXX', '', 'Male', 'N/A', '672373@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:31:02'),
('localhost', 2200, '1698769996131', 2023, 'Seven', 'B', 'Md. Rakib Sheikh', 413248, 39, 'XXXXXXXXXX', '', 'Male', 'N/A', '413248@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:31:49'),
('localhost', 2201, '1698263618407', 2023, 'Seven', 'B', 'Md. Eamin Biswas', 696821, 40, 'XXXXXXXXXX', '', 'Male', 'N/A', '696821@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:32:20'),
('localhost', 2202, '1698487710357', 2023, 'Seven', 'B', 'Abdur Rahman', 256842, 41, 'XXXXXXXXXX', '', 'Male', 'N/A', '256842@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:33:00'),
('localhost', 2203, '1698441100928', 2023, 'Seven', 'B', 'Md. Asik', 268688, 42, 'XXXXXXXXXX', '', 'Male', 'N/A', '268688@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:33:29'),
('localhost', 2204, '1698646381484', 2023, 'Seven', 'B', 'Ibrahim', 341745, 43, 'XXXXXXXXXX', '', 'Male', 'N/A', '341745@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:33:49'),
('localhost', 2205, '1698532702563', 2023, 'Seven', 'B', 'Bayzid', 268997, 44, 'XXXXXXXXXX', '', 'Male', 'N/A', '268997@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 05:34:08'),
('localhost', 2206, '1698246293150', 2023, 'Eight', 'A', 'Saima  Islam Simi', 201183, 1, 'XXXXXXXXXX', '', 'Female', 'N/A', '201183@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 04:52:57'),
('localhost', 2207, '1698270406472', 2023, 'Eight', 'A', 'Jannati Islam  Mohona', 77363, 2, 'XXXXXXXXXX', '', 'Female', 'N/A', '77363@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 04:53:32'),
('localhost', 2208, '1698632611128', 2023, 'Eight', 'A', 'Jannatul  Ummea Saima', 497521, 3, 'XXXXXXXXXX', '', 'Female', 'N/A', '497521@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 04:54:09'),
('localhost', 2209, '1698402257262', 2023, 'Eight', 'A', 'Simu Akter', 355216, 4, 'XXXXXXXXXX', '', 'Female', 'N/A', '355216@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 04:54:47'),
('localhost', 2210, '1698127118498', 2023, 'Eight', 'A', 'Takia Tammi Jui', 604931, 5, 'XXXXXXXXXX', '', 'Female', 'N/A', '604931@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 04:55:28'),
('localhost', 2211, '1698521207221', 2023, 'Eight', 'A', 'Sifa  Sultana', 565365, 6, 'XXXXXXXXXX', '', 'Female', 'N/A', '565365@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 04:56:01'),
('localhost', 2212, '1698869473878', 2023, 'Eight', 'A', 'Masura  Akter', 204893, 7, 'XXXXXXXXXX', '', 'Female', 'N/A', '204893@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 04:56:27'),
('localhost', 2213, '1698872080883', 2023, 'Eight', 'A', 'Faria  Islam Rafa', 166564, 8, 'XXXXXXXXXX', '', 'Female', 'N/A', '166564@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 04:56:59'),
('localhost', 2214, '1698258992031', 2023, 'Eight', 'A', 'Aisa  Akter', 729984, 9, 'XXXXXXXXXX', '', 'Female', 'N/A', '729984@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 04:57:28'),
('localhost', 2215, '1698860341355', 2023, 'Eight', 'A', 'Annika ', 641898, 10, 'XXXXXXXXXX', '', 'Female', 'N/A', '641898@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 04:58:00'),
('localhost', 2216, '1698224967423', 2023, 'Eight', 'A', 'Tithi Debnath', 696274, 11, 'XXXXXXXXXX', '', 'Female', 'N/A', '696274@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 04:58:24'),
('localhost', 2217, '1698874610605', 2023, 'Eight', 'A', 'Sumaia Akter', 491806, 12, 'XXXXXXXXXX', '', 'Female', 'N/A', '491806@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 04:58:56'),
('localhost', 2218, '1698473612996', 2023, 'Eight', 'A', 'Moriom  Sultana', 352372, 13, 'XXXXXXXXXX', '', 'Female', 'N/A', '352372@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 04:59:30'),
('localhost', 2219, '1698271613909', 2023, 'Eight', 'A', 'Bithi Acharjo', 757919, 14, 'XXXXXXXXXX', '', 'Female', 'N/A', '757919@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:00:06'),
('localhost', 2220, '1698724641141', 2023, 'Eight', 'A', 'Sanjida  Islam', 632406, 15, 'XXXXXXXXXX', '', 'Female', 'N/A', '632406@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:00:39'),
('localhost', 2221, '1698754432940', 2023, 'Eight', 'A', 'Mahmuda', 682801, 16, 'XXXXXXXXXX', '', 'Female', 'N/A', '682801@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:01:00'),
('localhost', 2222, '1698429269404', 2023, 'Eight', 'A', 'Oisi   Saha', 355053, 17, 'XXXXXXXXXX', '', 'Female', 'N/A', '355053@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:03:05'),
('localhost', 2223, '1698109677796', 2023, 'Eight', 'A', 'Taskia Sultana', 874652, 18, 'XXXXXXXXXX', '', 'Female', 'N/A', '874652@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:03:29'),
('localhost', 2224, '1698674405543', 2023, 'Eight', 'A', 'Eti', 630940, 19, 'XXXXXXXXXX', '', 'Female', 'N/A', '630940@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:11:48'),
('localhost', 2225, '1698450241320', 2023, 'Eight', 'A', 'Arifa ', 622313, 20, 'XXXXXXXXXX', '', 'Female', 'N/A', '622313@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:12:10'),
('localhost', 2226, '1698763212757', 2023, 'Eight', 'A', 'Asa  Goldar', 809737, 21, 'XXXXXXXXXX', '', 'Female', 'N/A', '809737@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:12:38'),
('localhost', 2227, '1698282509612', 2023, 'Eight', 'A', 'Bulbuli', 651018, 22, 'XXXXXXXXXX', '', 'Female', 'N/A', '651018@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:12:58'),
('localhost', 2228, '1698366405874', 2023, 'Eight', 'A', 'Dola  Parvin', 456948, 23, 'XXXXXXXXXX', '', 'Female', 'N/A', '456948@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:13:23'),
('localhost', 2229, '1698760773426', 2023, 'Eight', 'A', 'Suraia  Akter', 477296, 24, 'XXXXXXXXXX', '', 'Female', 'N/A', '477296@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:14:11'),
('localhost', 2230, '1698398897739', 2023, 'Eight', 'A', 'Rubaia Akter Badhon', 253022, 25, 'XXXXXXXXXX', '', 'Female', 'N/A', '253022@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:14:41'),
('localhost', 2231, '1698449010191', 2023, 'Eight', 'A', 'Bristi  Akter', 205032, 26, 'XXXXXXXXXX', '', 'Female', 'N/A', '205032@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:15:10'),
('localhost', 2232, '1698330563241', 2023, 'Eight', 'A', 'Laboni Akter', 207563, 27, 'XXXXXXXXXX', '', 'Female', 'N/A', '207563@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:16:04'),
('localhost', 2233, '1698257236027', 2023, 'Eight', 'A', 'Nondini  Biswas', 872438, 28, 'XXXXXXXXXX', '', 'Female', 'N/A', '872438@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:16:50'),
('localhost', 2234, '1698768343566', 2023, 'Eight', 'A', 'Ilma', 420944, 29, 'XXXXXXXXXX', '', 'Female', 'N/A', '420944@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:17:17'),
('localhost', 2235, '1698332392441', 2023, 'Eight', 'A', 'Sadia  Parvin', 4095, 30, 'XXXXXXXXXX', '', 'Female', 'N/A', '4095@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:17:45'),
('localhost', 2236, '1698391002178', 2023, 'Eight', 'A', 'Farjana  Akter', 706714, 31, 'XXXXXXXXXX', '', 'Female', 'N/A', '706714@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:18:08'),
('localhost', 2237, '1698061101864', 2023, 'Eight', 'A', 'Samima ', 701241, 32, 'XXXXXXXXXX', '', 'Female', 'N/A', '701241@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:18:33'),
('localhost', 2238, '1698625645445', 2023, 'Eight', 'A', 'Asa Akter', 246725, 33, 'XXXXXXXXXX', '', 'Female', 'N/A', '246725@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:19:10'),
('localhost', 2239, '1698438002829', 2023, 'Eight', 'A', 'Suraia', 536974, 34, 'XXXXXXXXXX', '', 'Female', 'N/A', '536974@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:19:27'),
('localhost', 2240, '1698062055186', 2023, 'Eight', 'A', 'Maria  Khatun', 333777, 35, 'XXXXXXXXXX', '', 'Female', 'N/A', '333777@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:19:57'),
('localhost', 2241, '1698461933208', 2023, 'Eight', 'A', 'Sonali  Akter', 78248, 36, 'XXXXXXXXXX', '', 'Female', 'N/A', '78248@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:22:06'),
('localhost', 2242, '1698451381923', 2023, 'Eight', 'A', 'Mst. Arifa ', 81385, 37, 'XXXXXXXXXX', '', 'Female', 'N/A', '81385@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:22:58'),
('localhost', 2243, '1698216562377', 2023, 'Eight', 'A', 'Sumaia Akter', 159049, 38, 'XXXXXXXXXX', '', 'Female', 'N/A', '159049@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:23:34'),
('localhost', 2244, '1698159160224', 2023, 'Eight', 'A', 'Soma ', 799031, 39, 'XXXXXXXXXX', '', 'Female', 'N/A', '799031@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:23:54'),
('localhost', 2245, '1698368370606', 2023, 'Eight', 'A', 'Tasmin', 102062, 40, 'XXXXXXXXXX', '', 'Female', 'N/A', '102062@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:24:16'),
('localhost', 2246, '1698258775011', 2023, 'Eight', 'A', 'Jui ', 782015, 41, 'XXXXXXXXXX', '', 'Female', 'N/A', '782015@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:24:39'),
('localhost', 2247, '1698933254140', 2023, 'Eight', 'A', 'Mahbuba  Tasmin', 221631, 42, 'XXXXXXXXXX', '', 'Female', 'N/A', '221631@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:25:05'),
('localhost', 2248, '1698735363271', 2023, 'Eight', 'A', 'Bristi  Parvin', 577212, 43, 'XXXXXXXXXX', '', 'Female', 'N/A', '577212@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:25:35'),
('localhost', 2249, '1698550093832', 2023, 'Eight', 'A', 'Setu Biswas', 277303, 44, 'XXXXXXXXXX', '', 'Female', 'N/A', '277303@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:26:06'),
('localhost', 2250, '1698481597566', 2023, 'Eight', 'A', 'Tripti  Akter', 800117, 45, 'XXXXXXXXXX', '', 'Female', 'N/A', '800117@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:26:39'),
('localhost', 2251, '1698470299065', 2023, 'Eight', 'A', 'Sumona  Parvin', 84797, 46, 'XXXXXXXXXX', '', 'Female', 'N/A', '84797@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:27:31'),
('localhost', 2252, '1698160113994', 2023, 'Eight', 'A', 'Huraia Akter', 396479, 47, 'XXXXXXXXXX', '', 'Female', 'N/A', '396479@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:28:01'),
('localhost', 2253, '1698128522096', 2023, 'Eight', 'A', 'Sraboni  Akter', 601398, 48, 'XXXXXXXXXX', '', 'Female', 'N/A', '601398@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:29:11'),
('localhost', 2254, '1698611715321', 2023, 'Eight', 'A', 'Suma ', 559780, 49, 'XXXXXXXXXX', '', 'Female', 'N/A', '559780@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:30:05'),
('localhost', 2255, '1698174847307', 2023, 'Eight', 'A', 'Jakia  Sultana', 353134, 50, 'XXXXXXXXXX', '', 'Female', 'N/A', '353134@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:31:25'),
('localhost', 2256, '1698326992344', 2023, 'Eight', 'A', 'Marjia ', 148344, 51, 'XXXXXXXXXX', '', 'Female', 'N/A', '148344@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:31:41'),
('localhost', 2257, '1698755509865', 2023, 'Eight', 'A', 'Monjila', 699791, 52, 'XXXXXXXXXX', '', 'Female', 'N/A', '699791@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:32:13'),
('localhost', 2258, '1698341552097', 2023, 'Eight', 'A', 'Muhaimina  Kona', 647154, 53, 'XXXXXXXXXX', '', 'Female', 'N/A', '647154@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:32:54'),
('localhost', 2259, '1698442143098', 2023, 'Eight', 'A', 'Jubaida Akter', 755895, 54, 'XXXXXXXXXX', '', 'Female', 'N/A', '755895@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:33:15'),
('localhost', 2260, '1698133458961', 2023, 'Eight', 'A', 'Lamia', 561525, 55, 'XXXXXXXXXX', '', 'Female', 'N/A', '561525@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:33:30'),
('localhost', 2261, '1698732617403', 2023, 'Eight', 'B', 'Swacho  Saha', 809177, 1, 'XXXXXXXXXX', '', 'Male', 'N/A', '809177@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:38:56'),
('localhost', 2262, '1698109131279', 2023, 'Eight', 'B', 'Fatin Sabat  Talha', 487582, 2, 'XXXXXXXXXX', '', 'Female', 'N/A', '487582@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:39:30'),
('localhost', 2263, '1698872000600', 2023, 'Eight', 'B', 'Md. Saim', 578462, 3, 'XXXXXXXXXX', '', 'Female', 'N/A', '578462@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:40:32'),
('localhost', 2264, '1698733794952', 2023, 'Eight', 'B', 'Md. Salman Rifat', 545519, 4, 'XXXXXXXXXX', '', 'Male', 'N/A', '545519@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:41:05'),
('localhost', 2265, '1698765151980', 2023, 'Eight', 'B', 'Kazi  Sifatulla', 701872, 5, 'XXXXXXXXXX', '', 'Male', 'N/A', '701872@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:41:36'),
('localhost', 2266, '1698647302448', 2023, 'Eight', 'B', 'Md. Alomgir  ', 692290, 10, 'XXXXXXXXXX', '', 'Male', 'N/A', '692290@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:44:20'),
('localhost', 2267, '1698121351173', 2023, 'Eight', 'B', 'Rifat ', 142260, 11, 'XXXXXXXXXX', '', 'Male', 'N/A', '142260@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:44:42'),
('localhost', 2268, '1698554473183', 2023, 'Eight', 'B', 'Tusar', 354614, 12, 'XXXXXXXXXX', '', 'Male', 'N/A', '354614@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:45:04'),
('localhost', 2269, '1698740794341', 2023, 'Eight', 'B', 'Likhon  Debnath', 388466, 13, 'XXXXXXXXXX', '', 'Male', 'N/A', '388466@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:45:50'),
('localhost', 2270, '1698719758384', 2023, 'Eight', 'B', 'MD. abu Hanif ', 314170, 14, 'XXXXXXXXXX', '', 'Male', 'N/A', '314170@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:46:32'),
('localhost', 2271, '1698908853652', 2023, 'Eight', 'B', 'Owasim ', 852835, 15, 'XXXXXXXXXX', '', 'Male', 'N/A', '852835@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:47:03'),
('localhost', 2272, '1698372581421', 2023, 'Eight', 'B', 'Md. Jaber', 41314, 16, 'XXXXXXXXXX', '', 'Male', 'N/A', '41314@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:47:26'),
('localhost', 2273, '1698291549831', 2023, 'Eight', 'B', 'Md. Imamul', 202793, 17, 'XXXXXXXXXX', '', 'Male', 'N/A', '202793@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:47:58'),
('localhost', 2274, '1698856684197', 2023, 'Eight', 'B', 'Hasib Mollik ', 806236, 18, 'XXXXXXXXXX', '', 'Male', 'N/A', '806236@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:48:32'),
('localhost', 2275, '1698343696377', 2023, 'Eight', 'B', 'Nisan', 337197, 19, 'XXXXXXXXXX', '', 'Male', 'N/A', '337197@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:48:51'),
('localhost', 2276, '1698648831033', 2023, 'Eight', 'B', 'Arifuzzaman', 160964, 20, 'XXXXXXXXXX', '', 'Male', 'N/A', '160964@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:49:17'),
('localhost', 2277, '1698182605896', 2023, 'Eight', 'B', 'Md. Fahim', 630143, 21, 'XXXXXXXXXX', '', 'Male', 'N/A', '630143@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:49:44'),
('localhost', 2278, '1698172856691', 2023, 'Eight', 'B', 'Md. Asif', 597601, 22, 'XXXXXXXXXX', '', 'Male', 'N/A', '597601@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:50:14'),
('localhost', 2279, '1698455604411', 2023, 'Eight', 'B', 'Md. Sakib ', 515464, 23, 'XXXXXXXXXX', '', 'Male', 'N/A', '515464@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:50:35'),
('localhost', 2280, '1698570533239', 2023, 'Eight', 'B', 'Md. Hamim', 894298, 24, 'XXXXXXXXXX', '', 'Male', 'N/A', '894298@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:51:20'),
('localhost', 2281, '1698378916547', 2023, 'Eight', 'B', 'Md. Siam', 530386, 25, 'XXXXXXXXXX', '', 'Male', 'N/A', '530386@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:51:49'),
('localhost', 2282, '1698276588428', 2023, 'Eight', 'B', 'Md. Abdullah', 429649, 26, 'XXXXXXXXXX', '', 'Male', 'N/A', '429649@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:52:13'),
('localhost', 2283, '1698691324258', 2023, 'Eight', 'B', 'Md. Riad', 394714, 27, 'XXXXXXXXXX', '', 'Male', 'N/A', '394714@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:52:41'),
('localhost', 2284, '1698838264190', 2023, 'Eight', 'B', 'Sojol Khan', 891837, 28, 'XXXXXXXXXX', '', 'Male', 'N/A', '891837@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:53:05'),
('localhost', 2285, '1698887756272', 2023, 'Eight', 'B', 'Md. Sahin', 422220, 29, 'XXXXXXXXXX', '', 'Male', 'N/A', '422220@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:53:34'),
('localhost', 2286, '1698869707598', 2023, 'Eight', 'B', 'Md. Rafa', 731134, 30, 'XXXXXXXXXX', '', 'Male', 'N/A', '731134@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 05:54:01'),
('localhost', 2287, '1698188586291', 2023, 'Eight', 'B', 'Badhon Malo ', 574493, 31, 'XXXXXXXXXX', '', 'Male', 'N/A', '574493@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:02:25'),
('localhost', 2288, '1698360331614', 2023, 'Eight', 'B', 'Badhon Malo ', 100218, 31, 'XXXXXXXXXX', '', 'Male', 'N/A', '100218@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:02:25'),
('localhost', 2289, '1698526650391', 2023, 'Eight', 'B', 'Husain ', 512005, 32, 'XXXXXXXXXX', '', 'Male', 'N/A', '512005@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:02:59'),
('localhost', 2290, '1698709925997', 2023, 'Eight', 'B', 'Md.  Jubayed', 285428, 33, 'XXXXXXXXXX', '', 'Male', 'N/A', '285428@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:04:45'),
('localhost', 2291, '1698191559782', 2023, 'Eight', 'B', 'MD. Nayim ', 826158, 34, 'XXXXXXXXXX', '', 'Male', 'N/A', '826158@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:05:31'),
('localhost', 2292, '1698647529856', 2023, 'Eight', 'B', 'Sujoi Sil ', 500485, 35, 'XXXXXXXXXX', '', 'Male', 'N/A', '500485@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:06:09'),
('localhost', 2293, '1698361853418', 2023, 'Eight', 'B', 'Bappi Biswas', 637192, 36, 'XXXXXXXXXX', '', 'Male', 'N/A', '637192@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:06:54'),
('localhost', 2294, '1698318910274', 2023, 'Eight', 'B', 'Omor Biswas ', 573410, 37, 'XXXXXXXXXX', '', 'Male', 'N/A', '573410@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:07:38'),
('localhost', 2295, '1698640369054', 2023, 'Eight', 'B', 'Md. Sazzad ', 385242, 38, 'XXXXXXXXXX', '', 'Male', 'N/A', '385242@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:08:23'),
('localhost', 2296, '1698420452144', 2023, 'Eight', 'B', 'Suyaib', 697117, 39, 'XXXXXXXXXX', '', 'Male', 'N/A', '697117@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:09:34'),
('localhost', 2297, '1698601394694', 2023, 'Eight', 'B', 'Md. Arafat', 642661, 40, 'XXXXXXXXXX', '', 'Male', 'N/A', '642661@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:10:25'),
('localhost', 2298, '1698284071379', 2023, 'Eight', 'B', 'Salman', 364945, 41, 'XXXXXXXXXX', '', 'Male', 'N/A', '364945@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:10:43'),
('localhost', 2299, '1698597467177', 2023, 'Eight', 'B', 'Alhaz Saheb', 90163, 42, 'XXXXXXXXXX', '', 'Male', 'N/A', '90163@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:13:17'),
('localhost', 2300, '1698931988303', 2023, 'Eight', 'B', 'Redoan', 15076, 43, 'XXXXXXXXXX', '', 'Male', 'N/A', '15076@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:13:53'),
('localhost', 2301, '1698482025958', 2023, 'Eight', 'B', 'Md. Nurmim ', 164954, 44, 'XXXXXXXXXX', '', 'Male', 'N/A', '164954@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:14:18'),
('localhost', 2302, '1698797418250', 2023, 'Eight', 'B', 'Md. Sagor', 891512, 45, 'XXXXXXXXXX', '', 'Male', 'N/A', '891512@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:15:31'),
('localhost', 2303, '1698371509166', 2023, 'Eight', 'B', 'Md. Mostofa', 658901, 46, 'XXXXXXXXXX', '', 'Male', 'N/A', '658901@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:15:54'),
('localhost', 2304, '1698222901138', 2023, 'Eight', 'B', 'Md. Farhan', 677558, 47, 'XXXXXXXXXX', '', 'Male', 'N/A', '677558@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:16:41'),
('localhost', 2305, '1698314893226', 2023, 'Eight', 'B', 'Sakil Khan', 29882, 48, 'XXXXXXXXXX', '', 'Male', 'N/A', '29882@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:20:50'),
('localhost', 2306, '1698185548654', 2023, 'Eight', 'B', 'Md. Rana', 321388, 49, 'XXXXXXXXXX', '', 'Male', 'N/A', '321388@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:21:10'),
('localhost', 2307, '1698906340214', 2023, 'Eight', 'B', 'Md. Hasmot', 468276, 50, 'XXXXXXXXXX', '', 'Male', 'N/A', '468276@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:21:36'),
('localhost', 2308, '1698151048843', 2023, 'Eight', 'B', 'Md. Abu Said', 861333, 51, 'XXXXXXXXXX', '', 'Male', 'N/A', '861333@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:22:54'),
('localhost', 2309, '1698899924315', 2023, 'Eight', 'B', 'Nirob Mahmud', 713377, 52, 'XXXXXXXXXX', '', 'Male', 'N/A', '713377@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:23:30'),
('localhost', 2310, '1698116170168', 2023, 'Eight', 'B', 'Nayim Munsi', 289612, 53, 'XXXXXXXXXX', '', 'Male', 'N/A', '289612@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:23:52'),
('localhost', 2311, '1698621323388', 2023, 'Eight', 'B', 'Chinmoy  Pundory', 685849, 54, 'XXXXXXXXXX', '', 'Male', 'N/A', '685849@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:24:44'),
('localhost', 2312, '1698114968072', 2023, 'Eight', 'B', 'Midul', 384139, 55, 'XXXXXXXXXX', '', 'Male', 'N/A', '384139@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:25:17'),
('localhost', 2313, '1698220483692', 2023, 'Eight', 'B', 'Ankon Roy', 837409, 56, 'XXXXXXXXXX', '', 'Male', 'N/A', '837409@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:25:42'),
('localhost', 2314, '1698824125505', 2023, 'Eight', 'B', 'Akkas Sheikh', 566938, 57, 'XXXXXXXXXX', '', 'Male', 'N/A', '566938@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:26:18'),
('localhost', 2315, '1698068595604', 2023, 'Eight', 'B', 'Riajul Islam', 599970, 58, 'XXXXXXXXXX', '', 'Male', 'N/A', '599970@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-11 06:26:48'),
('localhost', 2316, '1698784384722', 2023, 'Nine', 'A', 'Suvo  Biswas', 686802, 101, 'XXXXXXXXXX', '', 'Male', 'N/A', '686802@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:11:08'),
('localhost', 2317, '1698106096628', 2023, 'Nine', 'A', 'Suvo  Biswas', 258274, 101, 'XXXXXXXXXX', '', 'Male', 'N/A', '258274@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:11:09'),
('localhost', 2318, '1698495473658', 2023, 'Nine', 'A', 'Al-Mamun', 450001, 102, 'XXXXXXXXXX', '', 'Male', 'N/A', '450001@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:12:06'),
('localhost', 2319, '1698455881824', 2023, 'Nine', 'A', 'Md. Rony Molla', 305367, 103, 'XXXXXXXXXX', '', 'Male', 'N/A', '305367@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:12:55'),
('localhost', 2320, '1698685731295', 2023, 'Nine', 'A', 'Tausif  Rahman', 375544, 104, 'XXXXXXXXXX', '', 'Male', 'N/A', '375544@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:14:12'),
('localhost', 2321, '1698369558135', 2023, 'Nine', 'A', 'Sadhona Datta', 9232, 105, 'XXXXXXXXXX', '', 'Female', 'N/A', '9232@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:15:57'),
('localhost', 2322, '1698396192529', 2023, 'Nine', 'A', 'Nurnahar', 464504, 106, 'XXXXXXXXXX', '', 'Female', 'N/A', '464504@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:16:36'),
('localhost', 2323, '1698788014059', 2023, 'Nine', 'A', 'Sahara Akter ', 745042, 107, 'XXXXXXXXXX', '', 'Female', 'N/A', '745042@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:17:17'),
('localhost', 2324, '1698500180232', 2023, 'Nine', 'A', 'Jannati', 478234, 108, 'XXXXXXXXXX', '', 'Female', 'N/A', '478234@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:19:03'),
('localhost', 2325, '1698073282220', 2023, 'Nine', 'A', 'Jannati', 246666, 108, 'XXXXXXXXXX', '', 'Female', 'N/A', '246666@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:19:03'),
('localhost', 2326, '1698611462934', 2023, 'Nine', 'A', 'Nusrat Jahan Maria', 832152, 109, 'XXXXXXXXXX', '', 'Female', 'N/A', '832152@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:19:39'),
('localhost', 2327, '1698074433885', 2023, 'Nine', 'A', 'Riad', 523471, 110, 'XXXXXXXXXX', '', 'Male', 'N/A', '523471@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:24:07'),
('localhost', 2328, '1698575231766', 2023, 'Nine', 'A', 'Obaida Haque', 37899, 111, 'XXXXXXXXXX', '', 'Female', 'N/A', '37899@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:25:15'),
('localhost', 2329, '1698047114507', 2023, 'Nine', 'A', 'Sorozit Biswas', 419161, 112, 'XXXXXXXXXX', '', 'Male', 'N/A', '419161@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:26:03'),
('localhost', 2330, '1698720539041', 2023, 'Nine', 'A', 'Manob Biswas', 686460, 113, 'XXXXXXXXXX', '', 'Male', 'N/A', '686460@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:26:31'),
('localhost', 2331, '1698484742892', 2023, 'Nine', 'A', 'Isita Sultana', 647358, 114, 'XXXXXXXXXX', '', 'Female', 'N/A', '647358@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:26:57'),
('localhost', 2332, '1698933971219', 2023, 'Nine', 'A', 'Md. Rifat', 709562, 115, 'XXXXXXXXXX', '', 'Male', 'N/A', '709562@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:27:31'),
('localhost', 2333, '1698199667409', 2023, 'Nine', 'A', 'Samia Sultana', 809540, 116, 'XXXXXXXXXX', '', 'Female', 'N/A', '809540@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:27:57');
INSERT INTO `students` (`domain`, `ID`, `student_uuid`, `session`, `class`, `section`, `name`, `student_id`, `roll`, `reg`, `birth_date`, `gender`, `blood_group`, `email`, `phone`, `telephone`, `father_name`, `mother_name`, `address`, `religion`, `admission_date`, `hobbies`, `avatar`, `fb_link`, `password`, `quote`, `at_date`) VALUES
('localhost', 2334, '1698139276307', 2023, 'Nine', 'A', 'Hira Parvin', 68604, 117, 'XXXXXXXXXX', '', 'Female', 'N/A', '68604@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:28:23'),
('localhost', 2335, '1698099001377', 2023, 'Nine', 'A', 'Nazmul  Islam', 790892, 118, 'XXXXXXXXXX', '', 'Male', 'N/A', '790892@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:28:47'),
('localhost', 2336, '1698595097532', 2023, 'Nine', 'A', 'Md. Rakibul Islam', 421125, 119, 'XXXXXXXXXX', '', 'Male', 'N/A', '421125@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:29:14'),
('localhost', 2337, '1698219110847', 2023, 'Nine', 'A', 'Abul  Kalam Azad', 369785, 120, 'XXXXXXXXXX', '', 'Male', 'N/A', '369785@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:29:50'),
('localhost', 2338, '1698834667478', 2023, 'Nine', 'A', 'Riajul Islam', 78720, 201, 'XXXXXXXXXX', '', 'Male', 'N/A', '78720@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:30:19'),
('localhost', 2339, '1698683076438', 2023, 'Nine', 'A', 'Monira ', 503220, 202, 'XXXXXXXXXX', '', 'Female', 'N/A', '503220@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:30:36'),
('localhost', 2340, '1698374904317', 2023, 'Nine', 'A', 'Abir Hossen ', 764317, 203, 'XXXXXXXXXX', '', 'Male', 'N/A', '764317@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:31:01'),
('localhost', 2341, '1698717267194', 2023, 'Nine', 'A', 'Kotha Biswas', 319693, 204, 'XXXXXXXXXX', '', 'Female', 'N/A', '319693@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:31:26'),
('localhost', 2342, '1698207948261', 2023, 'Nine', 'A', 'Ajizul  Hakim', 251903, 205, 'XXXXXXXXXX', '', 'Male', 'N/A', '251903@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:46:14'),
('localhost', 2343, '1698280617887', 2023, 'Nine', 'A', 'Md. Parvez', 190671, 206, 'XXXXXXXXXX', '', 'Male', 'N/A', '190671@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:47:15'),
('localhost', 2344, '1698224792379', 2023, 'Nine', 'A', 'Md.  Imon', 561949, 207, 'XXXXXXXXXX', '', 'Male', 'N/A', '561949@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:48:52'),
('localhost', 2345, '1698223799950', 2023, 'Nine', 'A', 'Md. Sifat', 653901, 208, 'XXXXXXXXXX', '', 'Male', 'N/A', '653901@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:49:31'),
('localhost', 2346, '1698714494584', 2023, 'Nine', 'A', 'Nayim Biswas', 480073, 209, 'XXXXXXXXXX', '', 'Female', 'N/A', '480073@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:49:59'),
('localhost', 2347, '1698477202366', 2023, 'Nine', 'A', 'Md. Antor Biswas', 316829, 210, 'XXXXXXXXXX', '', 'Male', 'N/A', '316829@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-12 05:50:26'),
('localhost', 2348, '1698913227144709208212', 2023, 'Six', 'A', 'Nafiza Islam', 701673, 1, 'XXXXXXXXXX', '', 'Female', 'N/A', '701673@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-11-02 08:20:27');

-- --------------------------------------------------------

--
-- Table structure for table `student_rank`
--

CREATE TABLE `student_rank` (
  `domain` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `session` int(11) DEFAULT 2023,
  `find_date` varchar(100) NOT NULL,
  `teacher_uuid` varchar(100) NOT NULL,
  `student_uuid` varchar(100) NOT NULL,
  `at_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `today` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `roll` int(11) NOT NULL,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `behavior` int(11) NOT NULL,
  `study` int(11) NOT NULL,
  `uniform` int(11) NOT NULL,
  `present` int(11) NOT NULL,
  `poient` float NOT NULL,
  `avatar` varchar(500) NOT NULL DEFAULT 'male_avatar.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `teacher_uuid` varchar(100) NOT NULL,
  `at_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`domain`, `ID`, `class`, `subject`, `subject_code`, `teacher_name`, `teacher_index`, `teacher_uuid`, `at_date`) VALUES
('localhost', 1, 'Eight', 'বাংলা ব্যকরন ও নির্মিতি', '78d5ab73dd0df771750a', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 2, 'Eight', 'গণিত', '1fdc46c6cd83bad251f8', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 3, 'Eight', 'বিজ্ঞান', '01dd1d5726786344648f', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 4, 'Eight', 'আনন্দ পাঠ', '317e28da249534578cfd', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 5, 'Eight', 'কৃষি শিক্ষা', 'bebe982ef540bbadb5c4', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 6, 'Eight', 'গার্হস্থ্য বিজ্ঞান', '0225175e3c46821d0adb', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 7, 'Eight', 'শারীরিক শিক্ষা ও স্বাস্থ্য', '0b88c955c6117e9bb683', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 8, 'Eight', 'তথ্য ও যোগাযোগ প্রযুক্তি', '8528726bd7b212ea7dea', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 9, 'Eight', 'ইসলাম ও নৈতিক শিক্ষা', '346de77ed83b1161d4fb', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 10, 'Eight', 'হিন্দুধর্ম শিক্ষা', '5ab0d0599bab99abaf2c', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 11, 'Eight', 'খ্রিস্ট্রাধর্ম শিক্ষা', '0d99cdf4295328d1c000', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 12, 'Eight', 'কর্ম ও জীবনমুখী শিক্ষা', '2b9f4f287504c5adce6f', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 13, 'Eight', 'চারু ও কারুকলা', '6ebc266f2406a45548f0', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 14, 'Eight', 'English for Today', '35b6a25b7fb46f2b731b', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 15, 'Eight', 'English Grammar and Composition', '26c60c15a61ed39869ff', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 16, 'Eight', 'সাহিত্য কনিকা', 'c52997caf04a0a508285', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 17, 'Eight', 'বাংলাদেশ ও বিশ্বপরিচয়', '0a051ade1793c20cc332', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 18, 'Eight', 'আরবি', '98e8f54ef468a58a96ae', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 19, 'Eight', 'সংস্কৃতি', '4664a8f369acf99bf8ec', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 20, 'Eight', 'পালি', '02ce40815ae961e41f31', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 21, 'Eight', 'সঙ্গগীত', '69c3b49c49ed9e7cccc8', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 22, 'Nine', 'বাংলা সাহিত্য', 'd517ea3e0593350fbd68', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 23, 'Nine', 'বাংলা সহপাঠ', '7cc33d98fcc4c469788b', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 24, 'Nine', 'বাংলা ভাষার ব্যাকরণ', '5a8608477f6842ee7386', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 25, 'Nine', 'English for Toady', '2bca0a3ae15a7f402ed3', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 26, 'Nine', 'গণিত', 'd2e6d88c462e0928ebca', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 27, 'Nine', 'English Grammar and Composition', 'a7c66dfae2b02dcf5a51', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 28, 'Nine', 'তথ্য ও যোগাযোগ প্রযুক্তি', 'f5421f2dbb26081b5b81', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 29, 'Nine', 'বিজ্ঞান', 'f19d4934259700e43de7', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 30, 'Nine', 'পদার্থ-বিজ্ঞান', '64ae0b7f530589d2cf1b', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 31, 'Nine', 'রসায়ন', 'd6a362e964d150dc2a7d', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 32, 'Nine', 'জীব-বিজ্ঞান', '37afd6943abca3ac2c0c', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 33, 'Nine', 'উচ্চতর গণিত', 'c767b16238189500fe5e', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 34, 'Nine', 'ভূগোল ও পরিবেশ', 'c3ac00c64740fab45b15', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 35, 'Nine', 'অর্থনীতি', 'a5d698b06f153217095d', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 36, 'Nine', 'কৃষিশিক্ষা', '7a9ab039601a6b61c568', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 37, 'Nine', 'গার্হস্থ্য বিজ্ঞান', 'f1f4c45e7712e2045b67', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 38, 'Nine', 'পৌরনীতি ও নাগরিকতা', 'd1d96590b2e5d72995b3', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 39, 'Nine', 'হিসাব-বিজ্ঞান', '39aeee8e19800dd5d1d3', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 40, 'Nine', 'ফিন্যান্স ও ব্যাংকিং', 'f74b9e033d8e8287bca1', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 41, 'Nine', 'ব্যবসায় উদ্যোগ', '1cdda8172e69ffdbbcae', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 42, 'Nine', 'ইসলাম ও নৈতিক শিক্ষা', 'f5d2d06d6a43a055afa0', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 43, 'Nine', 'হিন্দুধর্ম শিক্ষা', 'f687b81057373ab96d43', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 44, 'Nine', 'বৌদ্ধধর্ম শিক্ষা', '10a993ab9e44d078a3f8', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 45, 'Nine', 'খ্রিষ্টধর্ম শিক্ষা', 'fd27827a516146cd6b86', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 46, 'Nine', 'ক্যারিয়ার এডুকেশন', 'cc5e5905326baf259a87', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 47, 'Nine', 'বাংলাদেশ ও বিশ্বপরিচয়', '612201c67835a30cff82', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 48, 'Nine', 'চারু ও কারুকলা', 'b10f988126ffff85045a', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 49, 'Nine', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'bf48967289ba43bcfb70', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 50, 'Nine', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', 'd9f0b2fc1689645cd65b', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 51, 'Nine', 'সচিত্র আরবি পাঠ', 'ffcb12e87b63183c9604', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 52, 'Nine', 'সংস্কৃত', 'be127febf1d9dc60ce7d', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 53, 'Nine', 'পালি', 'f70cded2deaca8a35133', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 54, 'Nine', 'সংগীত', 'fb64e41ef22c432c3e21', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 55, 'Ten', 'বাংলা সাহিত্য', '692d962bc935e858e0a9', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 56, 'Ten', 'বাংলা সহপাঠ', '3655367112a57cc90b49', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 57, 'Ten', 'বাংলা ভাষার ব্যাকরণ', '5d448c804bd0ad2adf3a', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 58, 'Ten', 'English for Toady', '8abec46db3663607c8bc', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 59, 'Ten', 'গণিত', '5b46d1ffebc1b61bd4e8', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 60, 'Ten', 'English Grammar and Composition', 'ee7ea77c0cd3d4371c53', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 61, 'Ten', 'তথ্য ও যোগাযোগ প্রযুক্তি', 'd4f3898da1c1d549b8b4', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 62, 'Ten', 'বিজ্ঞান', 'ee9e934001d970d78cdd', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 63, 'Ten', 'পদার্থ-বিজ্ঞান', '99259cffbd6d855e6bb8', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 64, 'Ten', 'রসায়ন', '8457809f717cc98d62fe', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 65, 'Ten', 'জীব-বিজ্ঞান', 'a4d2a0768551a5eed2be', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 66, 'Ten', 'উচ্চতর গণিত', '85d1839e18c45fbaade0', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 67, 'Ten', 'ভূগোল ও পরিবেশ', 'e9bb18b1ee352a716427', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 68, 'Ten', 'অর্থনীতি', 'c7373a0fcc50bc733592', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 69, 'Ten', 'কৃষিশিক্ষা', '0b8f7d33d993f10c224b', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 70, 'Ten', 'গার্হস্থ্য বিজ্ঞান', 'd8b1d0f34e83edd39daa', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 71, 'Ten', 'পৌরনীতি ও নাগরিকতা', 'a43450f36ac90a042d20', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 72, 'Ten', 'হিসাব-বিজ্ঞান', '0080c1204bc859ad1c9f', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 73, 'Ten', 'ফিন্যান্স ও ব্যাংকিং', 'fb61c36cf1a07f26de11', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 74, 'Ten', 'ব্যবসায় উদ্যোগ', '3171b877b6269c463eef', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 75, 'Ten', 'ইসলাম ও নৈতিক শিক্ষা', '037ae65ba23f76b75d7b', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 76, 'Ten', 'হিন্দুধর্ম শিক্ষা', '732fd2fc12da16889606', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 77, 'Ten', 'বৌদ্ধধর্ম শিক্ষা', '58e390a8a79c5f86e997', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 78, 'Ten', 'খ্রিষ্টধর্ম শিক্ষা', 'c23a1b1e4b753b077387', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 79, 'Ten', 'ক্যারিয়ার এডুকেশন', 'a3b09916f9580c4eff26', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 80, 'Ten', 'বাংলাদেশ ও বিশ্বপরিচয়', 'fc41bd4168928f910fcd', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 81, 'Ten', 'চারু ও কারুকলা', '4301482abc1aa0cdaf78', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 82, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '8a140078d89c4fec58af', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 83, 'Ten', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', 'd7ae9bd088c9addb48f6', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 84, 'Ten', 'সচিত্র আরবি পাঠ', 'e71158280956020b93c0', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 85, 'Ten', 'সংস্কৃত', '8f3bbed9598e976b3d03', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 86, 'Ten', 'পালি', '1e1aaffcb8efe54258cc', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 87, 'Ten', 'সংগীত', '047abb85a079fa8f9873', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 88, 'Nine', 'পদার্থ-বিজ্ঞান', '49b417948765e3748222', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 89, 'Nine', 'রসায়ন', 'd9971a51225aca27de99', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 90, 'Nine', 'জীব-বিজ্ঞান', 'a2888e8945fdaef13202', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 91, 'Nine', 'উচ্চতর গণিত', 'ec1f03b2297d6eb1ecd4', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 92, 'Ten', 'পদার্থ-বিজ্ঞান', '25268f55cba1dbbf326d', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 93, 'Ten', 'রসায়ন', '63f200184ca936d16681', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 94, 'Ten', 'জীব-বিজ্ঞান', '5efef9814b4e3e0aefb8', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 95, 'Ten', 'উচ্চতর গণিত', 'cf603e30d45b6cf6770a', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 96, 'Nine', 'হিসাব-বিজ্ঞান', '8c26dfa6df1f3278a29e', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 97, 'Nine', 'ফিন্যান্স ও ব্যাংকিং', '1bbe566a61d7a204ce6a', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 98, 'Nine', 'ব্যবসায় উদ্যোগ', '149dcf182f08f0dcc2a1', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 99, 'Ten', 'হিসাব-বিজ্ঞান', '8e770cc085209c87d5ff', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 100, 'Ten', 'ফিন্যান্স ও ব্যাংকিং', 'aa8b0009c23c93048ef3', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 101, 'Ten', 'ব্যবসায় উদ্যোগ', '0c1545fd8d496583b499', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 102, 'Nine', 'অর্থনীতি', '6c1e1fa31598684a1c09', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 103, 'Nine', 'ভূগোল ও পরিবেশ', 'db8884c2a2860a0fca4e', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 104, 'Nine', 'পৌরনীতি ও নাগরিকতা', '34208f77e62a11ebe2c5', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 105, 'Nine', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '579b721818a48b01c63c', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 106, 'Ten', 'অর্থনীতি', '3b0fe841baf15dffb1ae', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 107, 'Ten', 'ভূগোল ও পরিবেশ', 'e07cf3d268c4a720cb8e', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 108, 'Ten', 'পৌরনীতি ও নাগরিকতা', '447faffc07a59d302e3b', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 109, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '5199db255f770afe0dc3', 'demo', '', '', '2023-10-12 14:55:06'),
('localhost', 110, 'Ten', 'অর্থনীতি', '242d840c1787e0e42049', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 111, 'Ten', 'ভূগোল ও পরিবেশ', 'c9ed5927ed037bbdf9e8', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 112, 'Ten', 'পৌরনীতি ও নাগরিকতা', 'a6699847c5185283a393', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 113, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'a00479963c996c986996', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 114, 'Eight', 'বাংলা ১ম', '7af8339dec4dde40664f', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 115, 'Eight', 'বাংলা ২য়', 'ab5237e6ad619f0c4837', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 116, 'Eight', 'ইংরেজী ১ম', 'db1586812f6edee6b253', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 117, 'Eight', 'ইংরেজী ২য়', '32281b647f980d994d62', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 118, 'Nine', 'বাংলা ১ম', '56354880c02a57f85609', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 119, 'Nine', 'বাংলা ২য়', 'db1eab97ae73feecb17d', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 120, 'Nine', 'ইংরেজী ১ম', '3a53b678501175736de3', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 121, 'Nine', 'ইংরেজী ২য়', 'c56dc4c8edf480a6e75e', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 122, 'Ten', 'বাংলা ১ম', '02278efcabd14c698cde', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 123, 'Ten', 'বাংলা ২য়', 'bd28819c919259173a6a', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 124, 'Ten', 'ইংরেজী ১ম', '7e6b4fb3e2d80fbe728a', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 125, 'Ten', 'ইংরেজী ২য়', 'd26ec3378d05e94a17cb', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 126, 'Nine', 'সামাঃ বিজ্ঞান', 'f11191e10f8fb687c7e0', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 127, 'Ten', 'সামাঃ বিজ্ঞান', '5d0d53bf9311f88f6f55', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 128, 'Eight', 'বিতর্ক', '2bba20163515ffb828a4', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 129, 'Eight', 'ডিজিটাল প্রযুক্তি', '5afd9791e35ae1cd93e6', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 130, 'Six', 'বৌদ্ধধর্ম-শিক্ষা', '72c40b6ea100675e9710', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 131, 'Six', 'খ্রিস্ট্রধর্ম-শিক্ষা', '589546c576620aa17ae4', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 132, 'Six', 'হিন্দুধর্ম-শিক্ষা', 'f63987bd73ac4d70d643', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 133, 'Six', 'ইসলাম-শিক্ষা', 'ac76fc1ab5116a695ae8', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 134, 'Six', 'শিল্প-ও-সংস্কৃতি', '071fb7c44ffca9053f64', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 135, 'Six', 'জীবন-ও-জীবিকা', '61e97dae56785b136e04', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 136, 'Six', 'স্বাস্থ্য-সুরক্ষা', 'df20d953e61465078f96', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 137, 'Six', 'ডিজিটাল-প্রযুক্তি', '111bb1bc1b4300dcc0b0', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 138, 'Six', 'ইতিহাস-ও-সামাজিক-বিজ্ঞান-অনুশীলন-বই', '19cf16ba2760999aba7a', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 139, 'Six', 'বিজ্ঞান-অনুশীলন-বই', '1b8c091a6ef351fdf32c', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 140, 'Seven', 'বৌদ্ধধর্ম-শিক্ষা', '7929bef93b7cf5af9a36', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 141, 'Seven', 'খ্রিস্ট্রধর্ম-শিক্ষা', 'cc483c5beb8161fb4431', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 142, 'Seven', 'হিন্দুধর্ম-শিক্ষা', 'eaa5f2cebe53e1193693', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 143, 'Seven', 'ইসলাম-শিক্ষা', 'bba737bb18af4c0ea893', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 144, 'Seven', 'শিল্প-ও-সংস্কৃতি', '9dad9b117645d1cef113', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 145, 'Seven', 'জীবন-ও-জীবিকা', '7605df9e0efe9091a65e', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 146, 'Seven', 'স্বাস্থ্য-সুরক্ষা', '32d3529ee2415c4aeac6', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 147, 'Seven', 'ডিজিটাল-প্রযুক্তি', 'dfa4c880989d97135f14', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 148, 'Seven', 'ইতিহাস-ও-সামাজিক-বিজ্ঞান-অনুশীলন-বই', '3eab9ed4ab94af4542c0', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 149, 'Seven', 'বিজ্ঞান-অনুশীলন-বই', '2136593b80d79774b196', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 150, 'Seven', 'বিজ্ঞান-অনুসন্ধানী-পাঠ', '93ea33c02eccdacfc1ea', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 151, 'Seven', 'গণিত', '88c462bd876897562b6e', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 152, 'Seven', 'English', '957df3e318d1fd782454', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 153, 'Seven', 'বাংলা', '970e9e777874462a7d31', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 154, 'Six', 'Bangla', 'ad35a42b19ca41ac335c', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 155, 'Six', 'গণিত', '06a9b003c34fc9a85ae6', 'demo', '', '', '2023-10-12 14:55:07'),
('localhost', 156, 'Eight', 'বাংলা ব্যকরন ও নির্মিতি', 'b79ce33db6713c79601e', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 157, 'Eight', 'গণিত', '0977586a305a5e3ad757', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 158, 'Eight', 'বিজ্ঞান', '87ab873049d5e5ca0a61', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 159, 'Eight', 'আনন্দ পাঠ', 'b7968cd0163934b3544e', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 160, 'Eight', 'কৃষি শিক্ষা', '17d55a80dd5f1d034e8e', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 161, 'Eight', 'গার্হস্থ্য বিজ্ঞান', '1def52af31e48395a46a', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 162, 'Eight', 'শারীরিক শিক্ষা ও স্বাস্থ্য', 'fd200e39ebbbb8d398a5', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 163, 'Eight', 'তথ্য ও যোগাযোগ প্রযুক্তি', '230a42e3be986854cca7', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 164, 'Eight', 'ইসলাম ও নৈতিক শিক্ষা', '4a3ea60e951d601751e0', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 165, 'Eight', 'হিন্দুধর্ম শিক্ষা', '9295ff678ebf067a0418', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 166, 'Eight', 'খ্রিস্ট্রাধর্ম শিক্ষা', '339b04ff5513e0e3edd4', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 167, 'Eight', 'কর্ম ও জীবনমুখী শিক্ষা', '08bf67dbdc427e41bb61', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 168, 'Eight', 'চারু ও কারুকলা', '66192518d7d1d111b352', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 169, 'Eight', 'English for Today', '81657dd060fec7822248', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 170, 'Eight', 'English Grammar and Composition', 'ff102b5628890c373add', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 171, 'Eight', 'সাহিত্য কনিকা', 'efef9c26b8f7d29e83f0', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 172, 'Eight', 'বাংলাদেশ ও বিশ্বপরিচয়', '1c1ce55b9a078ae3567f', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 173, 'Eight', 'আরবি', '05632f0ff49e3cc9ca59', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 174, 'Eight', 'সংস্কৃতি', 'd711ec8280901a5b569d', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 175, 'Eight', 'পালি', 'b296cbbcfc6acbbe35c8', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 176, 'Eight', 'সঙ্গগীত', 'd909038f7ec01b41a42b', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 177, 'Nine', 'বাংলা সাহিত্য', '7fc001bc82a5bf5616e4', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 178, 'Nine', 'বাংলা সহপাঠ', 'a29746cfd528fc5c9b30', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 179, 'Nine', 'বাংলা ভাষার ব্যাকরণ', '1d137dc242829fa117de', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 180, 'Nine', 'English for Toady', 'e9ec3d54732d484928c9', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 181, 'Nine', 'গণিত', '411d97a9f9742f78300c', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 182, 'Nine', 'English Grammar and Composition', '8ba7f5efa962d7149205', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 183, 'Nine', 'তথ্য ও যোগাযোগ প্রযুক্তি', 'c0dee03f93207994a3dc', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 184, 'Nine', 'বিজ্ঞান', 'd63b9e8bec3369a439c8', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 185, 'Nine', 'পদার্থ-বিজ্ঞান', '5c69ff8766fe3996eb4f', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 186, 'Nine', 'রসায়ন', '14227d833770c0e7b400', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 187, 'Nine', 'জীব-বিজ্ঞান', '94b97d34d61988dc61e6', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 188, 'Nine', 'উচ্চতর গণিত', '3c3360f677968034c760', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 189, 'Nine', 'ভূগোল ও পরিবেশ', '2bca7dea9d5ff5741251', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 190, 'Nine', 'অর্থনীতি', '79eff2d7db2efd1fa980', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 191, 'Nine', 'কৃষিশিক্ষা', '27358bcdb4dacb2e4662', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 192, 'Nine', 'গার্হস্থ্য বিজ্ঞান', '35fdae0a2391fe55136a', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 193, 'Nine', 'পৌরনীতি ও নাগরিকতা', '1dc14aa0c26035e381b8', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 194, 'Nine', 'হিসাব-বিজ্ঞান', '75e6d30ca40f670a23b8', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 195, 'Nine', 'ফিন্যান্স ও ব্যাংকিং', '0a709c418a322645dcf2', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 196, 'Nine', 'ব্যবসায় উদ্যোগ', 'b208841694ae706afa5a', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 197, 'Nine', 'ইসলাম ও নৈতিক শিক্ষা', 'd82aa93eafed92e4f78f', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 198, 'Nine', 'হিন্দুধর্ম শিক্ষা', '9ce17e8def38b02e9484', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 199, 'Nine', 'বৌদ্ধধর্ম শিক্ষা', 'b7229a3ec1a6d8045fb9', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 200, 'Nine', 'খ্রিষ্টধর্ম শিক্ষা', '16fddfdb6da88c9f64a5', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 201, 'Nine', 'ক্যারিয়ার এডুকেশন', 'f2006ba3836e3054a2bf', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 202, 'Nine', 'বাংলাদেশ ও বিশ্বপরিচয়', '8df30f23c42093634cf0', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 203, 'Nine', 'চারু ও কারুকলা', '0b5ec215907df99445c1', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 204, 'Nine', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '91df86c22fcbf8d8e2f4', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 205, 'Nine', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', 'd76c65286e8b2b8c1eec', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 206, 'Nine', 'সচিত্র আরবি পাঠ', '48b1cb3b580926a8b4dd', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 207, 'Nine', 'সংস্কৃত', '31252c279d822417963f', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 208, 'Nine', 'পালি', '4df38ea84732af98eb1d', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 209, 'Nine', 'সংগীত', '137bef033972b9d99995', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 210, 'Ten', 'বাংলা সাহিত্য', '03836d021abeea43514b', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 211, 'Ten', 'বাংলা সহপাঠ', '5a298761e335e06fb6ed', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 212, 'Ten', 'বাংলা ভাষার ব্যাকরণ', '737c4650b765d5a90d89', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 213, 'Ten', 'English for Toady', 'ef1129f25796d2835c8f', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 214, 'Ten', 'গণিত', 'dfa948641361417f710d', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 215, 'Ten', 'English Grammar and Composition', '2eba1020c202bde8cfa8', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 216, 'Ten', 'তথ্য ও যোগাযোগ প্রযুক্তি', 'ef45ce99c1ad3dc09d3b', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 217, 'Ten', 'বিজ্ঞান', '5f5aaa8f66d4b9fdd824', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 218, 'Ten', 'পদার্থ-বিজ্ঞান', 'b5980aa13fd9d8e7b9cd', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 219, 'Ten', 'রসায়ন', '93bd7d3d3267d2f4cedc', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 220, 'Ten', 'জীব-বিজ্ঞান', 'c978aaf00ceb2cf5ac8e', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 221, 'Ten', 'উচ্চতর গণিত', '67d91c61b5a99eafedaa', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 222, 'Ten', 'ভূগোল ও পরিবেশ', '931abb22857ed3f7fa56', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 223, 'Ten', 'অর্থনীতি', 'b7e08c34423de5e66851', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 224, 'Ten', 'কৃষিশিক্ষা', '35294bc8d127a50aa08e', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 225, 'Ten', 'গার্হস্থ্য বিজ্ঞান', '2a775c33ae0dcd8dd40a', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 226, 'Ten', 'পৌরনীতি ও নাগরিকতা', 'd67e198fe930f4503228', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 227, 'Ten', 'হিসাব-বিজ্ঞান', '96fad5f206c432640914', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 228, 'Ten', 'ফিন্যান্স ও ব্যাংকিং', 'c64150fbedb12aa60d0f', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 229, 'Ten', 'ব্যবসায় উদ্যোগ', 'ad2617e6e35e519990f5', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 230, 'Ten', 'ইসলাম ও নৈতিক শিক্ষা', '190daf9c0b2ba901c9cc', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 231, 'Ten', 'হিন্দুধর্ম শিক্ষা', 'faa50598335021a9c875', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 232, 'Ten', 'বৌদ্ধধর্ম শিক্ষা', '602a4a6ac8638e3b37be', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 233, 'Ten', 'খ্রিষ্টধর্ম শিক্ষা', '2d3591a0df57246cbb48', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 234, 'Ten', 'ক্যারিয়ার এডুকেশন', 'e23b4da236fa66de0b97', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 235, 'Ten', 'বাংলাদেশ ও বিশ্বপরিচয়', '975fcea49cf4149d2662', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 236, 'Ten', 'চারু ও কারুকলা', '32749b52c5281f209665', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 237, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'fad4ab93cb13c6f27ae5', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 238, 'Ten', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '68870b926cb4eb460987', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 239, 'Ten', 'সচিত্র আরবি পাঠ', '74d1cab571a888413d98', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 240, 'Ten', 'সংস্কৃত', '9428a4ab9aff69f854e4', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 241, 'Ten', 'পালি', 'f3658d72eddae5168844', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 242, 'Ten', 'সংগীত', 'eed509259c6642fe6ede', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 243, 'Nine', 'পদার্থ-বিজ্ঞান', 'f9404a56ef20dd004f8a', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 244, 'Nine', 'রসায়ন', '008440d145654c04891e', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 245, 'Nine', 'জীব-বিজ্ঞান', 'b0b107b795dc917d534a', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 246, 'Nine', 'উচ্চতর গণিত', '406b9738666d4e61513e', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 247, 'Ten', 'পদার্থ-বিজ্ঞান', 'bc94b5c656b77a701dfb', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 248, 'Ten', 'রসায়ন', 'b5398e9c447a23d8829c', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 249, 'Ten', 'জীব-বিজ্ঞান', '0dab6cf5bf3799c7aee5', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 250, 'Ten', 'উচ্চতর গণিত', 'c6e9c13209d74fe392aa', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 251, 'Nine', 'হিসাব-বিজ্ঞান', 'bd75dfdbdafba073655d', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 252, 'Nine', 'ফিন্যান্স ও ব্যাংকিং', '516c976b1611c894f9f6', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 253, 'Nine', 'ব্যবসায় উদ্যোগ', '4b0a3b8368ddaad2f6b5', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 254, 'Ten', 'হিসাব-বিজ্ঞান', '88072be0abf65aa13720', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 255, 'Ten', 'ফিন্যান্স ও ব্যাংকিং', '757ab86099add0e8f00f', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 256, 'Ten', 'ব্যবসায় উদ্যোগ', '53cfa3caf46d277ce6a6', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 257, 'Nine', 'অর্থনীতি', '6f90a887e0cc5d46e0b7', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 258, 'Nine', 'ভূগোল ও পরিবেশ', 'e294309c9ead0d4cad73', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 259, 'Nine', 'পৌরনীতি ও নাগরিকতা', 'fc47e146aa5422e7d195', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 260, 'Nine', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '39e413573e3ec34ddbd2', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 261, 'Ten', 'অর্থনীতি', '72c7e5d4d0115aed8ce7', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 262, 'Ten', 'ভূগোল ও পরিবেশ', '5915480e3737be424801', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 263, 'Ten', 'পৌরনীতি ও নাগরিকতা', '19725408947ef179e350', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 264, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '7716d6e51a3bc59d9c01', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 265, 'Ten', 'অর্থনীতি', 'd49058460b995a531476', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 266, 'Ten', 'ভূগোল ও পরিবেশ', 'd1304c71a6fca4613c86', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 267, 'Ten', 'পৌরনীতি ও নাগরিকতা', '654f591a55f791423048', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 268, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '7fda325c824b631b73ae', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 269, 'Eight', 'বাংলা ১ম', '0b46067c7d9a1a071b98', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 270, 'Eight', 'বাংলা ২য়', '9655a634c672eb8795d5', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 271, 'Eight', 'ইংরেজী ১ম', 'ec92d5aa794a8874d034', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 272, 'Eight', 'ইংরেজী ২য়', 'acc9002c068e8477c7ac', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 273, 'Nine', 'বাংলা ১ম', '611e11d085f399a78623', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 274, 'Nine', 'বাংলা ২য়', '776827f5ea004e4842ea', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 275, 'Nine', 'ইংরেজী ১ম', 'c3fd2cc3da71fc58339e', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 276, 'Nine', 'ইংরেজী ২য়', '552b6da2745b16fb46f7', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 277, 'Ten', 'বাংলা ১ম', 'cfb929703418d34f85fb', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 278, 'Ten', 'বাংলা ২য়', 'fd0caf56eac56a000edc', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 279, 'Ten', 'ইংরেজী ১ম', 'f408d6026772bb9bf350', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 280, 'Ten', 'ইংরেজী ২য়', '9c9a3262acdf4e76be02', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 281, 'Nine', 'সামাঃ বিজ্ঞান', 'c3e2962b3a47e2100f3d', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 282, 'Ten', 'সামাঃ বিজ্ঞান', '9b65b7aff32229fc7fd0', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 283, 'Eight', 'বিতর্ক', 'a494485f0d09cb8ddfb2', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 284, 'Eight', 'ডিজিটাল প্রযুক্তি', '0c9ccdc4340fab62d614', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 285, 'Six', 'বৌদ্ধধর্ম-শিক্ষা', '8bb05c9dc6e3bcab361c', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 286, 'Six', 'খ্রিস্ট্রধর্ম-শিক্ষা', 'b2d597ad92b994e66c99', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 287, 'Six', 'হিন্দুধর্ম-শিক্ষা', '2f4e39275bf392204f09', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 288, 'Six', 'ইসলাম-শিক্ষা', '9ca6a3b84ed4b798f31f', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 289, 'Six', 'শিল্প-ও-সংস্কৃতি', '7654e87aa0d4e897726a', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 290, 'Six', 'জীবন-ও-জীবিকা', '53081041dc1f81f00482', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 291, 'Six', 'স্বাস্থ্য-সুরক্ষা', '9da30dd1882934ec857f', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 292, 'Six', 'ডিজিটাল-প্রযুক্তি', '61eb55d5cb251ac14ace', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 293, 'Six', 'ইতিহাস-ও-সামাজিক-বিজ্ঞান-অনুশীলন-বই', 'e511095ced07ac7a5c56', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 294, 'Six', 'বিজ্ঞান-অনুশীলন-বই', '8a0d2523341c42f61b71', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 295, 'Seven', 'বৌদ্ধধর্ম-শিক্ষা', '8a24944307609dc86320', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 296, 'Seven', 'খ্রিস্ট্রধর্ম-শিক্ষা', 'c3f87f09404f2ec930a5', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 297, 'Seven', 'হিন্দুধর্ম-শিক্ষা', '137c390f823adf4c39e8', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 298, 'Seven', 'ইসলাম-শিক্ষা', '47fba96ec779ee3748bc', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 299, 'Seven', 'শিল্প-ও-সংস্কৃতি', '0d33a2f587314cd1720e', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 300, 'Seven', 'জীবন-ও-জীবিকা', '4d2da230ee60518b59f6', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 301, 'Seven', 'স্বাস্থ্য-সুরক্ষা', '606e24f768edff4e3b04', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 302, 'Seven', 'ডিজিটাল-প্রযুক্তি', 'e8e8ef183b43d1910706', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 303, 'Seven', 'ইতিহাস-ও-সামাজিক-বিজ্ঞান-অনুশীলন-বই', '4e4b72e7d08cdc62b96a', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 304, 'Seven', 'বিজ্ঞান-অনুশীলন-বই', '6f3167a4ba97d86edad1', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 305, 'Seven', 'বিজ্ঞান-অনুসন্ধানী-পাঠ', '578c926b02ccd9bca99f', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 306, 'Seven', 'গণিত', 'c1a9b55fbbbf0f5ce6a7', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 307, 'Seven', 'English', '27ae13adf404b68a2d51', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 308, 'Seven', 'বাংলা', '891f8f747022013e573d', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 309, 'Six', 'Bangla', '22cf2923922ddb7b1758', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 310, 'Six', 'গণিত', 'd3a1ba5b1e961ef264ae', 'demo', '', '', '2023-10-14 05:06:12'),
('localhost', 311, 'Eight', 'বাংলা ব্যকরন ও নির্মিতি', '740e5c40def0f16ed2eb', 'demo', '', '', '2023-10-15 17:27:37'),
('localhost', 312, 'Eight', 'গণিত', '1f3f29d9b3280a4c35b3', 'demo', '', '', '2023-10-15 17:27:37'),
('localhost', 313, 'Eight', 'বিজ্ঞান', 'a5eb5c80b2e533877ddc', 'demo', '', '', '2023-10-15 17:27:37'),
('localhost', 314, 'Eight', 'আনন্দ পাঠ', '15936d4c4bf1428bbc73', 'demo', '', '', '2023-10-15 17:27:37'),
('localhost', 315, 'Eight', 'কৃষি শিক্ষা', '2aa8fb73c5c8f334992f', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 316, 'Eight', 'গার্হস্থ্য বিজ্ঞান', '069c990d56220d750c64', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 317, 'Eight', 'শারীরিক শিক্ষা ও স্বাস্থ্য', 'fb6c52e0492e0cd12cab', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 318, 'Eight', 'তথ্য ও যোগাযোগ প্রযুক্তি', 'a9529c472c347ab9823a', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 319, 'Eight', 'ইসলাম ও নৈতিক শিক্ষা', '1acb7094f11bb0bc9b06', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 320, 'Eight', 'হিন্দুধর্ম শিক্ষা', 'a651bff30e2bfdf8ac9a', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 321, 'Eight', 'খ্রিস্ট্রাধর্ম শিক্ষা', 'a43041c49ac30fb4775a', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 322, 'Eight', 'কর্ম ও জীবনমুখী শিক্ষা', 'd5407d97916818eac48d', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 323, 'Eight', 'চারু ও কারুকলা', '6a11b1c51002f7717d8d', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 324, 'Eight', 'English for Today', '80a1891334c8737b1985', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 325, 'Eight', 'English Grammar and Composition', 'ea691d4b51c3cf4349a9', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 326, 'Eight', 'সাহিত্য কনিকা', 'd1fa2fce4121e4417e69', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 327, 'Eight', 'বাংলাদেশ ও বিশ্বপরিচয়', 'dd50a33d61384ffc601b', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 328, 'Eight', 'আরবি', 'ead68db3605044343353', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 329, 'Eight', 'সংস্কৃতি', '85e23712bbc2057a9f79', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 330, 'Eight', 'পালি', '3a881cf988de710b7872', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 331, 'Eight', 'সঙ্গগীত', 'd07d7cf941e465379b9b', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 332, 'Nine', 'বাংলা সাহিত্য', '1d46beaf134a8d8f85f2', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 333, 'Nine', 'বাংলা সহপাঠ', 'ade3c61ffa346d716513', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 334, 'Nine', 'বাংলা ভাষার ব্যাকরণ', '9934f3a9a0049d88e3f4', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 335, 'Nine', 'English for Toady', 'd12fc3056ce8d917983f', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 336, 'Nine', 'গণিত', '42804b7b6a610ae3fc57', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 337, 'Nine', 'English Grammar and Composition', 'a1069e446481df8ac03a', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 338, 'Nine', 'তথ্য ও যোগাযোগ প্রযুক্তি', 'ee8b07495782cd4fb075', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 339, 'Nine', 'বিজ্ঞান', '6d3bbd6992f69b0e0a8a', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 340, 'Nine', 'পদার্থ-বিজ্ঞান', '2d98c496be373c1e6cd7', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 341, 'Nine', 'রসায়ন', '3f4326b36602bf5faf99', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 342, 'Nine', 'জীব-বিজ্ঞান', '7e35401c4d1b877257bb', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 343, 'Nine', 'উচ্চতর গণিত', '84fdcefcfaf6e5f9de3c', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 344, 'Nine', 'ভূগোল ও পরিবেশ', '1ca4bed18344576210ff', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 345, 'Nine', 'অর্থনীতি', '2d103fe67abcc1e64249', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 346, 'Nine', 'কৃষিশিক্ষা', '1a120d11fa1ecbf7b7ac', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 347, 'Nine', 'গার্হস্থ্য বিজ্ঞান', 'a0cf6c17764d3b990684', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 348, 'Nine', 'পৌরনীতি ও নাগরিকতা', 'e9a9cee5ee7de2cd5010', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 349, 'Nine', 'হিসাব-বিজ্ঞান', 'ddbb664905c60056c4df', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 350, 'Nine', 'ফিন্যান্স ও ব্যাংকিং', '8765610283bce7c69dec', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 351, 'Nine', 'ব্যবসায় উদ্যোগ', '1a4324edbb1e28357ce3', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 352, 'Nine', 'ইসলাম ও নৈতিক শিক্ষা', '42b262de97bb9c443b1f', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 353, 'Nine', 'হিন্দুধর্ম শিক্ষা', '403822ed07ed6a8a944f', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 354, 'Nine', 'বৌদ্ধধর্ম শিক্ষা', '078d47d86db8db40f731', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 355, 'Nine', 'খ্রিষ্টধর্ম শিক্ষা', '4e4204dafa1010939f9b', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 356, 'Nine', 'ক্যারিয়ার এডুকেশন', 'd5ecd2c0194f1bf761e6', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 357, 'Nine', 'বাংলাদেশ ও বিশ্বপরিচয়', '058d6ab9ea6de3ff09e7', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 358, 'Nine', 'চারু ও কারুকলা', '7a39c98bdb1bd0d1a0e2', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 359, 'Nine', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '1d8c3df15f76bef6518d', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 360, 'Nine', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '28be1b1da29777c6d927', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 361, 'Nine', 'সচিত্র আরবি পাঠ', '388da07c6742e5036fee', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 362, 'Nine', 'সংস্কৃত', '43120c9870ceedafc9c7', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 363, 'Nine', 'পালি', 'a4ee827216763d57767c', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 364, 'Nine', 'সংগীত', '1d9d2c328ab6bc0e091d', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 365, 'Ten', 'বাংলা সাহিত্য', '3f0c4fc9b041340a7af5', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 366, 'Ten', 'বাংলা সহপাঠ', '2b62faef09a100ab3dae', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 367, 'Ten', 'বাংলা ভাষার ব্যাকরণ', '4f4440bd8b8616f2ca7e', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 368, 'Ten', 'English for Toady', '816a42fb57097d7f8f6c', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 369, 'Ten', 'গণিত', 'd657a3a68226c9423ff0', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 370, 'Ten', 'English Grammar and Composition', 'd047dc79a02ac8354ce7', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 371, 'Ten', 'তথ্য ও যোগাযোগ প্রযুক্তি', '42b401071dc032bc0d93', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 372, 'Ten', 'বিজ্ঞান', 'c558f5659a50dadb68ac', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 373, 'Ten', 'পদার্থ-বিজ্ঞান', 'acae51b0480bba9abd58', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 374, 'Ten', 'রসায়ন', '11399c4ba5d3cba6e6f7', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 375, 'Ten', 'জীব-বিজ্ঞান', '91ea81dcf73f49ce27e0', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 376, 'Ten', 'উচ্চতর গণিত', 'bb82c47ffab5064be390', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 377, 'Ten', 'ভূগোল ও পরিবেশ', '441405a411251f86374d', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 378, 'Ten', 'অর্থনীতি', '6c98ca5a8e3368eb16fd', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 379, 'Ten', 'কৃষিশিক্ষা', 'cad6ce4b156f9a31269c', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 380, 'Ten', 'গার্হস্থ্য বিজ্ঞান', '64ae33d18a5e984d26cb', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 381, 'Ten', 'পৌরনীতি ও নাগরিকতা', '1a34cebce9ab51a75c68', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 382, 'Ten', 'হিসাব-বিজ্ঞান', '76a7450e4f0bf4f0b284', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 383, 'Ten', 'ফিন্যান্স ও ব্যাংকিং', '5df5a0ff2714ecb83e36', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 384, 'Ten', 'ব্যবসায় উদ্যোগ', '3bd1e703f3b9335c7e02', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 385, 'Ten', 'ইসলাম ও নৈতিক শিক্ষা', '06416339aa5493a585ea', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 386, 'Ten', 'হিন্দুধর্ম শিক্ষা', '5aed0f8a95ef239647b9', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 387, 'Ten', 'বৌদ্ধধর্ম শিক্ষা', '067befdd1986c1086df7', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 388, 'Ten', 'খ্রিষ্টধর্ম শিক্ষা', '1a84568ba48ddbf909bb', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 389, 'Ten', 'ক্যারিয়ার এডুকেশন', '4ae32bd701ee6f8cefb2', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 390, 'Ten', 'বাংলাদেশ ও বিশ্বপরিচয়', 'eb2c9d23901eae05bd7b', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 391, 'Ten', 'চারু ও কারুকলা', '9f9b2971494e764379ac', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 392, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '0749a08d06c984ca0740', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 393, 'Ten', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '1dd59c575b75f2223d60', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 394, 'Ten', 'সচিত্র আরবি পাঠ', '2c59243721801a4f37aa', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 395, 'Ten', 'সংস্কৃত', 'c5f0af52d463782651be', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 396, 'Ten', 'পালি', 'fe1fe3f0f0ad4cefa8d2', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 397, 'Ten', 'সংগীত', '0a1f36ee3f1c2b2d28e9', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 398, 'Nine', 'পদার্থ-বিজ্ঞান', '2a6bd5765c925a91244a', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 399, 'Nine', 'রসায়ন', '7d9fd6fdfb009c5ba29a', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 400, 'Nine', 'জীব-বিজ্ঞান', 'a873e22fa1b1a59b05fd', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 401, 'Nine', 'উচ্চতর গণিত', '0270cc9f5fd2c6cbff58', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 402, 'Ten', 'পদার্থ-বিজ্ঞান', '2dd80da641c9578c0b36', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 403, 'Ten', 'রসায়ন', '01c4ff10167bd0435f94', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 404, 'Ten', 'জীব-বিজ্ঞান', '7edfb08a9b6e95cd5ab2', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 405, 'Ten', 'উচ্চতর গণিত', '6a414945b1554c469d1e', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 406, 'Nine', 'হিসাব-বিজ্ঞান', '68cfecaf2dff79d4dfa2', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 407, 'Nine', 'ফিন্যান্স ও ব্যাংকিং', '5cbbb0fabce495447e1c', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 408, 'Nine', 'ব্যবসায় উদ্যোগ', 'e4ebe4c1f927ea36f326', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 409, 'Ten', 'হিসাব-বিজ্ঞান', 'ad94ebb732cdacf1dcef', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 410, 'Ten', 'ফিন্যান্স ও ব্যাংকিং', '1e79ed6fe0ad927b121c', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 411, 'Ten', 'ব্যবসায় উদ্যোগ', '4bbd7bb46efb54eeb7b7', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 412, 'Nine', 'অর্থনীতি', '9c6c03233a6f45f1fe73', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 413, 'Nine', 'ভূগোল ও পরিবেশ', '57c9d09327c5118914b1', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 414, 'Nine', 'পৌরনীতি ও নাগরিকতা', '6f65d348df9758b184ec', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 415, 'Nine', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '7965bb46158d8d41149d', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 416, 'Ten', 'অর্থনীতি', '78e0bf51752290ae5d37', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 417, 'Ten', 'ভূগোল ও পরিবেশ', 'e151433e3cc40a41fed8', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 418, 'Ten', 'পৌরনীতি ও নাগরিকতা', 'f6294f0e507aec9b71ab', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 419, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '02d4dea817a9fe443bd5', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 420, 'Ten', 'অর্থনীতি', '01363cd6159eb09d240e', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 421, 'Ten', 'ভূগোল ও পরিবেশ', '43ec69b6a76cf2af47b2', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 422, 'Ten', 'পৌরনীতি ও নাগরিকতা', 'bf2731ee71343abac12c', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 423, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '5d394bd66ff3338d42eb', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 424, 'Eight', 'বাংলা ১ম', 'a5a20a870a2e4f059a11', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 425, 'Eight', 'বাংলা ২য়', 'cd6838792c2f4400b398', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 426, 'Eight', 'ইংরেজী ১ম', '91bd5cceb544851e7a3b', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 427, 'Eight', 'ইংরেজী ২য়', 'cba4a889d088ea79c921', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 428, 'Nine', 'বাংলা ১ম', 'ef424796b649ed2b09a8', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 429, 'Nine', 'বাংলা ২য়', '369ea43a88a60202cc46', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 430, 'Nine', 'ইংরেজী ১ম', 'b06b774270733d21adfd', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 431, 'Nine', 'ইংরেজী ২য়', '5b8b2f4f15fd22a71c54', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 432, 'Ten', 'বাংলা ১ম', 'e38b2941f2ecb51ceb4a', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 433, 'Ten', 'বাংলা ২য়', 'c94d041baf17f52511c8', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 434, 'Ten', 'ইংরেজী ১ম', '8b43cf7c0793352b0d68', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 435, 'Ten', 'ইংরেজী ২য়', '3e113f6d1680665518d5', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 436, 'Nine', 'সামাঃ বিজ্ঞান', '4b331adf881ceb002b35', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 437, 'Ten', 'সামাঃ বিজ্ঞান', 'f7fd3b760642c6bcd328', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 438, 'Eight', 'বিতর্ক', '4b915cfa5bf7adc71623', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 439, 'Eight', 'ডিজিটাল প্রযুক্তি', 'dbc57fdf245bcca0a3a5', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 440, 'Six', 'বৌদ্ধধর্ম-শিক্ষা', 'a79afebb8901e59a5c72', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 441, 'Six', 'খ্রিস্ট্রধর্ম-শিক্ষা', 'b155ddb15023f25259a3', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 442, 'Six', 'হিন্দুধর্ম-শিক্ষা', '6d0aff6e8f9411770d93', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 443, 'Six', 'ইসলাম-শিক্ষা', '97f740c874ee3416b569', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 444, 'Six', 'শিল্প-ও-সংস্কৃতি', '39ee5936b21fe5df974b', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 445, 'Six', 'জীবন-ও-জীবিকা', '8965a0768ae1f6907492', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 446, 'Six', 'স্বাস্থ্য-সুরক্ষা', 'f73dcc579a7fe4915bee', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 447, 'Six', 'ডিজিটাল-প্রযুক্তি', '3aa86e002ea90d339e2d', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 448, 'Six', 'ইতিহাস-ও-সামাজিক-বিজ্ঞান-অনুশীলন-বই', '07f5380a3bbd03460a5a', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 449, 'Six', 'বিজ্ঞান-অনুশীলন-বই', 'ae8698d4bb46eedaaa22', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 450, 'Seven', 'বৌদ্ধধর্ম-শিক্ষা', '20faacd91ba306f31394', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 451, 'Seven', 'খ্রিস্ট্রধর্ম-শিক্ষা', '163914676330e98b988b', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 452, 'Seven', 'হিন্দুধর্ম-শিক্ষা', '57a8f9dba3d5baedbec4', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 453, 'Seven', 'ইসলাম-শিক্ষা', '24e8f922c547d98133d4', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 454, 'Seven', 'শিল্প-ও-সংস্কৃতি', '01011d82f05a2e64de6d', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 455, 'Seven', 'জীবন-ও-জীবিকা', 'bc4d679280deacafe55a', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 456, 'Seven', 'স্বাস্থ্য-সুরক্ষা', '78be8650e5d80a616b3d', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 457, 'Seven', 'ডিজিটাল-প্রযুক্তি', 'f584b6c10c3bfc78de5a', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 458, 'Seven', 'ইতিহাস-ও-সামাজিক-বিজ্ঞান-অনুশীলন-বই', '4cc89e8a9e495383b2ce', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 459, 'Seven', 'বিজ্ঞান-অনুশীলন-বই', '79141477ec5eb4217ad8', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 460, 'Seven', 'বিজ্ঞান-অনুসন্ধানী-পাঠ', '4721a91bd1028320cf83', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 461, 'Seven', 'গণিত', 'c2c7001718135c4bc057', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 462, 'Seven', 'English', 'c7fb4b0518fc185edba3', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 463, 'Seven', 'বাংলা', 'fc1436f91119e5df13df', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 464, 'Six', 'Bangla', '0fc23e1fa1490ce81e01', 'demo', '', '', '2023-10-15 17:27:38');
INSERT INTO `subject` (`domain`, `ID`, `class`, `subject`, `subject_code`, `teacher_name`, `teacher_index`, `teacher_uuid`, `at_date`) VALUES
('localhost', 465, 'Six', 'গণিত', '26739649cc61b92c7b17', 'demo', '', '', '2023-10-15 17:27:38'),
('localhost', 466, 'Eight', 'বাংলা ব্যকরন ও নির্মিতি', '5840aebfc100fb97a57d', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 467, 'Eight', 'গণিত', '43e44bab8ddfbfd12fec', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 468, 'Eight', 'বিজ্ঞান', '3ad649feb252a7620791', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 469, 'Eight', 'আনন্দ পাঠ', 'd8fe6b9e5e98b03bf3f6', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 470, 'Eight', 'কৃষি শিক্ষা', '4649f1a862578d369ced', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 471, 'Eight', 'গার্হস্থ্য বিজ্ঞান', '7e44191690cbb0db25f2', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 472, 'Eight', 'শারীরিক শিক্ষা ও স্বাস্থ্য', 'dc0dd382270769071f4f', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 473, 'Eight', 'তথ্য ও যোগাযোগ প্রযুক্তি', '8ed465a87488da414f61', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 474, 'Eight', 'ইসলাম ও নৈতিক শিক্ষা', 'a354dcea0acf86a85d34', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 475, 'Eight', 'হিন্দুধর্ম শিক্ষা', 'da1dd8fe0ad6f87905c6', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 476, 'Eight', 'খ্রিস্ট্রাধর্ম শিক্ষা', '999fe76cf5285849939c', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 477, 'Eight', 'কর্ম ও জীবনমুখী শিক্ষা', 'b3e53b1c4616960ce157', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 478, 'Eight', 'চারু ও কারুকলা', '4368901c9f935e34327e', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 479, 'Eight', 'English for Today', '8a10109da656181668d1', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 480, 'Eight', 'English Grammar and Composition', 'afcba6dbcd89247812da', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 481, 'Eight', 'সাহিত্য কনিকা', 'e6e5c80c2232fb8b690f', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 482, 'Eight', 'বাংলাদেশ ও বিশ্বপরিচয়', 'a0d5dac2a5cb5c0389c8', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 483, 'Eight', 'আরবি', 'fe56db62028ad8acb48b', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 484, 'Eight', 'সংস্কৃতি', '6d391582d0ea4603d3c6', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 485, 'Eight', 'পালি', '419351ef5b8ae46a507b', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 486, 'Eight', 'সঙ্গগীত', '4f6b1fc6d4432313e431', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 487, 'Nine', 'বাংলা সাহিত্য', '38cc794ade771c3c023a', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 488, 'Nine', 'বাংলা সহপাঠ', '9f19b86a53e417bcb374', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 489, 'Nine', 'বাংলা ভাষার ব্যাকরণ', '0b215cc164495e425666', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 490, 'Nine', 'English for Toady', '632a3404c806035a7d23', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 491, 'Nine', 'গণিত', '553b6258902a2648c6a1', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 492, 'Nine', 'English Grammar and Composition', '1bb3edf462d22a8961c1', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 493, 'Nine', 'তথ্য ও যোগাযোগ প্রযুক্তি', '587d660473b3d8c8be71', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 494, 'Nine', 'বিজ্ঞান', '1aae879989959cb0c30e', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 495, 'Nine', 'পদার্থ-বিজ্ঞান', 'a82b70bdfe20bc66b357', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 496, 'Nine', 'রসায়ন', '9004ecaa6d812f735a00', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 497, 'Nine', 'জীব-বিজ্ঞান', '8696a3479392ea1bb742', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 498, 'Nine', 'উচ্চতর গণিত', '39390470dc0ac803e4b0', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 499, 'Nine', 'ভূগোল ও পরিবেশ', '6948c0c763e722cb2f5d', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 500, 'Nine', 'অর্থনীতি', '6df58e77e53d823650b0', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 501, 'Nine', 'কৃষিশিক্ষা', '6dc9f7747628c57ca8fd', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 502, 'Nine', 'গার্হস্থ্য বিজ্ঞান', '52dfae410327ee20f322', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 503, 'Nine', 'পৌরনীতি ও নাগরিকতা', '0f94acd6e84018431277', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 504, 'Nine', 'হিসাব-বিজ্ঞান', '2758a09e688918ac3ca2', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 505, 'Nine', 'ফিন্যান্স ও ব্যাংকিং', 'fb4ad93f1b4b5416a5df', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 506, 'Nine', 'ব্যবসায় উদ্যোগ', '0be0d1816cd82b838288', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 507, 'Nine', 'ইসলাম ও নৈতিক শিক্ষা', '607e5982875a535fbf37', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 508, 'Nine', 'হিন্দুধর্ম শিক্ষা', '9880d145d8dd50ee6845', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 509, 'Nine', 'বৌদ্ধধর্ম শিক্ষা', 'db77fef25d3425132120', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 510, 'Nine', 'খ্রিষ্টধর্ম শিক্ষা', 'ea2027e77c367f762b2f', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 511, 'Nine', 'ক্যারিয়ার এডুকেশন', 'c3a99a3e5de6df8db043', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 512, 'Nine', 'বাংলাদেশ ও বিশ্বপরিচয়', '8ec9a490d53c815c73f7', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 513, 'Nine', 'চারু ও কারুকলা', '5e4b9dbbf336b0e72379', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 514, 'Nine', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '4990515a3e15d6106dad', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 515, 'Nine', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '57d89775a00b6a722b18', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 516, 'Nine', 'সচিত্র আরবি পাঠ', '0d5f018f1c81d67ab5e2', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 517, 'Nine', 'সংস্কৃত', '210b76806d9d3cfefd84', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 518, 'Nine', 'পালি', 'd55be946e101ac0086b5', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 519, 'Nine', 'সংগীত', '688b1908ca6a0b11d761', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 520, 'Ten', 'বাংলা সাহিত্য', '2e860f9e6b02a7639abe', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 521, 'Ten', 'বাংলা সহপাঠ', 'e1428da1566dafafecae', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 522, 'Ten', 'বাংলা ভাষার ব্যাকরণ', 'cd5ebafd3033a93993b9', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 523, 'Ten', 'English for Toady', '5ae0e7f61fdff78e70a0', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 524, 'Ten', 'গণিত', '0c4208d4fa6976c15cc8', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 525, 'Ten', 'English Grammar and Composition', 'f21e0d6b24b8064cf016', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 526, 'Ten', 'তথ্য ও যোগাযোগ প্রযুক্তি', '53dd7dc8e149e3dc2ab6', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 527, 'Ten', 'বিজ্ঞান', '749fd2f0e3b6ef6b3364', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 528, 'Ten', 'পদার্থ-বিজ্ঞান', 'c0d6885ea35a7553781f', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 529, 'Ten', 'রসায়ন', '0950c6b3a38ee6b6f09c', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 530, 'Ten', 'জীব-বিজ্ঞান', '80af1eef20c807791c4e', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 531, 'Ten', 'উচ্চতর গণিত', '5208c52a6896670bbfd6', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 532, 'Ten', 'ভূগোল ও পরিবেশ', '1fc96bc04212793d1f21', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 533, 'Ten', 'অর্থনীতি', '400b4c9840cb0ebd8f6f', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 534, 'Ten', 'কৃষিশিক্ষা', '5a9730cca0fa82f30d20', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 535, 'Ten', 'গার্হস্থ্য বিজ্ঞান', '4bfcc9070e1b1b01ee9a', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 536, 'Ten', 'পৌরনীতি ও নাগরিকতা', '75bc1fe219c411f56191', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 537, 'Ten', 'হিসাব-বিজ্ঞান', '244fcfd4a3ecf0e8b17b', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 538, 'Ten', 'ফিন্যান্স ও ব্যাংকিং', '9773e170206c982bc967', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 539, 'Ten', 'ব্যবসায় উদ্যোগ', 'db02f4d982595d6e109c', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 540, 'Ten', 'ইসলাম ও নৈতিক শিক্ষা', 'ee07f113ed5da4e392ab', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 541, 'Ten', 'হিন্দুধর্ম শিক্ষা', 'c3edff6b7b9ade401e89', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 542, 'Ten', 'বৌদ্ধধর্ম শিক্ষা', 'd0c14a794da8a1df5373', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 543, 'Ten', 'খ্রিষ্টধর্ম শিক্ষা', '67146b9b256e97a62c78', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 544, 'Ten', 'ক্যারিয়ার এডুকেশন', '83658f8f4d076db35232', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 545, 'Ten', 'বাংলাদেশ ও বিশ্বপরিচয়', 'aa7f6938d6dc4e80cce7', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 546, 'Ten', 'চারু ও কারুকলা', 'b295ef8ce56d81dcae2b', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 547, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '2651de07d542d8c58876', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 548, 'Ten', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', 'dcf25393bfd8afb7c48c', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 549, 'Ten', 'সচিত্র আরবি পাঠ', '8ead5b90f052119252e5', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 550, 'Ten', 'সংস্কৃত', '3056be7b7f6348905fa2', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 551, 'Ten', 'পালি', '4a26b21fdffba7311473', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 552, 'Ten', 'সংগীত', '83c9702c999eb8770941', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 553, 'Nine', 'পদার্থ-বিজ্ঞান', '9d0123611541ffa4c790', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 554, 'Nine', 'রসায়ন', 'c104e52e0d720a6d9748', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 555, 'Nine', 'জীব-বিজ্ঞান', '0c8c025eeddf60d0c185', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 556, 'Nine', 'উচ্চতর গণিত', 'e17a288fd92813c01600', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 557, 'Ten', 'পদার্থ-বিজ্ঞান', 'de5646171e5b9ed7331c', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 558, 'Ten', 'রসায়ন', '8016da42ba28554f08a8', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 559, 'Ten', 'জীব-বিজ্ঞান', '27e082a8b2bc32dbbf66', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 560, 'Ten', 'উচ্চতর গণিত', '9952ef6ce27111f972a2', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 561, 'Nine', 'হিসাব-বিজ্ঞান', 'dc3704d167eca02317d1', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 562, 'Nine', 'ফিন্যান্স ও ব্যাংকিং', '8b5111fabce53fc590d0', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 563, 'Nine', 'ব্যবসায় উদ্যোগ', 'bca232a712b1cf6c92c5', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 564, 'Ten', 'হিসাব-বিজ্ঞান', '7017a37a5dc46bdf0ce7', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 565, 'Ten', 'ফিন্যান্স ও ব্যাংকিং', '1cb97559bfc815aa4e0c', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 566, 'Ten', 'ব্যবসায় উদ্যোগ', '96f0bf92a30d7650aa50', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 567, 'Nine', 'অর্থনীতি', 'dca2f6ddcc385978def6', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 568, 'Nine', 'ভূগোল ও পরিবেশ', '4e0da2800c0c433e2ba6', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 569, 'Nine', 'পৌরনীতি ও নাগরিকতা', 'ab8beaa6939b99a5a225', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 570, 'Nine', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'a25f8dd7696c100b0f74', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 571, 'Ten', 'অর্থনীতি', 'c20c5dc70179d40b4aec', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 572, 'Ten', 'ভূগোল ও পরিবেশ', '5241835b70dc446017cc', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 573, 'Ten', 'পৌরনীতি ও নাগরিকতা', 'f649d46f85ae64a9d730', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 574, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '4fa33fbd8fc8427ac56c', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 575, 'Ten', 'অর্থনীতি', 'd59ebe8d5065ebfd0f5c', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 576, 'Ten', 'ভূগোল ও পরিবেশ', 'c808fa300b50b5e50b7c', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 577, 'Ten', 'পৌরনীতি ও নাগরিকতা', 'beb3b50021248658dae7', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 578, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '3e3560f5fc095fcf662f', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 579, 'Eight', 'বাংলা ১ম', '3752b17d586db6202de1', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 580, 'Eight', 'বাংলা ২য়', '36a077a690298b4bbe6b', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 581, 'Eight', 'ইংরেজী ১ম', '716b088474448b091814', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 582, 'Eight', 'ইংরেজী ২য়', 'dfc8d49c82e4b8108916', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 583, 'Nine', 'বাংলা ১ম', '92d1c61ec139244c56b7', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 584, 'Nine', 'বাংলা ২য়', '401ec5e4f5abfca325fe', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 585, 'Nine', 'ইংরেজী ১ম', 'afa407817ef1c0e19119', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 586, 'Nine', 'ইংরেজী ২য়', 'f198aa76fa641ae7f603', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 587, 'Ten', 'বাংলা ১ম', '1beea9885a2993a418e7', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 588, 'Ten', 'বাংলা ২য়', '6b28edd7f139bab6a12d', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 589, 'Ten', 'ইংরেজী ১ম', '0a47406cd61529dfc27a', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 590, 'Ten', 'ইংরেজী ২য়', '43a8d04d370edb456776', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 591, 'Nine', 'সামাঃ বিজ্ঞান', '15a585e5d0d345f6ad31', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 592, 'Ten', 'সামাঃ বিজ্ঞান', 'ec3d69e5c91a53a36fde', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 593, 'Eight', 'বিতর্ক', '6adcbe3ef8631f5997d7', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 594, 'Eight', 'ডিজিটাল প্রযুক্তি', '4c7ccffbc37bd84b5ac0', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 595, 'Six', 'বৌদ্ধধর্ম-শিক্ষা', '536192c0c9ee91fa657a', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 596, 'Six', 'খ্রিস্ট্রধর্ম-শিক্ষা', '4ff27cd36a47ad24e596', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 597, 'Six', 'হিন্দুধর্ম-শিক্ষা', 'b6ed95768afed0610b8b', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 598, 'Six', 'ইসলাম-শিক্ষা', 'b4e2ce347bc8dfaef90f', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 599, 'Six', 'শিল্প-ও-সংস্কৃতি', 'e4dd3a13f490faee4e80', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 600, 'Six', 'জীবন-ও-জীবিকা', 'dc7c7cd41e1d61316020', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 601, 'Six', 'স্বাস্থ্য-সুরক্ষা', '3c655cf52671d9839090', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 602, 'Six', 'ডিজিটাল-প্রযুক্তি', '1f6749ade35424d452a3', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 603, 'Six', 'ইতিহাস-ও-সামাজিক-বিজ্ঞান-অনুশীলন-বই', '482b4783624f3be17b7e', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 604, 'Six', 'বিজ্ঞান-অনুশীলন-বই', '291b12ce6074020310d0', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 605, 'Seven', 'বৌদ্ধধর্ম-শিক্ষা', '6a206bdf9b840f6158d2', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 606, 'Seven', 'খ্রিস্ট্রধর্ম-শিক্ষা', '5550cafd7210ddce6a7f', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 607, 'Seven', 'হিন্দুধর্ম-শিক্ষা', 'e6a480216cc05cef173f', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 608, 'Seven', 'ইসলাম-শিক্ষা', '144e8e94847a83e8e0f4', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 609, 'Seven', 'শিল্প-ও-সংস্কৃতি', '0b416c7149e28c076ed5', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 610, 'Seven', 'জীবন-ও-জীবিকা', 'c407ec36d5d5df4ea50d', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 611, 'Seven', 'স্বাস্থ্য-সুরক্ষা', '630daa68b5f48c0e18f7', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 612, 'Seven', 'ডিজিটাল-প্রযুক্তি', 'e8e1822d193a34b2ac94', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 613, 'Seven', 'ইতিহাস-ও-সামাজিক-বিজ্ঞান-অনুশীলন-বই', '21e6fa008424aad1f3d2', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 614, 'Seven', 'বিজ্ঞান-অনুশীলন-বই', '85a6eb016c6c13ade388', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 615, 'Seven', 'বিজ্ঞান-অনুসন্ধানী-পাঠ', '143570259359913819a4', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 616, 'Seven', 'গণিত', '768bac9281fc8c50da02', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 617, 'Seven', 'English', '7b5b728c7fa2538c6e76', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 618, 'Seven', 'বাংলা', '3f9adb546826246e32bb', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 619, 'Six', 'Bangla', '24ffc0cf08abc9491b04', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 620, 'Six', 'গণিত', '752794b5579c72dc6bf4', 'demo', '', '', '2023-10-19 17:42:30'),
('localhost', 621, 'Eight', 'বাংলা ব্যকরন ও নির্মিতি', 'd2c69f160b046a8128e1', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 622, 'Eight', 'গণিত', '957b5770099786570ea8', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 623, 'Eight', 'বিজ্ঞান', 'ec39f38f6b7006af9d28', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 624, 'Eight', 'আনন্দ পাঠ', '936b2365d553b1b917a9', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 625, 'Eight', 'কৃষি শিক্ষা', '4a602794b8d7bf486030', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 626, 'Eight', 'গার্হস্থ্য বিজ্ঞান', 'c12c846ad82d41d20007', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 627, 'Eight', 'শারীরিক শিক্ষা ও স্বাস্থ্য', '567aa9d6bf7e2fc4b85b', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 628, 'Eight', 'তথ্য ও যোগাযোগ প্রযুক্তি', 'd0647524700d07dcd8ae', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 629, 'Eight', 'ইসলাম ও নৈতিক শিক্ষা', 'd1cc86c5c16b6539035d', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 630, 'Eight', 'হিন্দুধর্ম শিক্ষা', '71b7f060010e42169c61', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 631, 'Eight', 'খ্রিস্ট্রাধর্ম শিক্ষা', 'e602f20b3d77568f0edd', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 632, 'Eight', 'কর্ম ও জীবনমুখী শিক্ষা', '7de84d8f6d14660dce0c', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 633, 'Eight', 'চারু ও কারুকলা', '7d28a801b336614f6701', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 634, 'Eight', 'English for Today', '8f8c53f10482b2928f81', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 635, 'Eight', 'English Grammar and Composition', 'fe91dbcd2fcf5000c01a', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 636, 'Eight', 'সাহিত্য কনিকা', 'f6a841d0aca57e98417c', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 637, 'Eight', 'বাংলাদেশ ও বিশ্বপরিচয়', '31dce3f5f7c792f60804', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 638, 'Eight', 'আরবি', '884cef45c98eefea3505', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 639, 'Eight', 'সংস্কৃতি', '22cdad346d2a02a42d82', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 640, 'Eight', 'পালি', '541f97bbaa6299627a03', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 641, 'Eight', 'সঙ্গগীত', 'b67593f6cf676a2a1703', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 642, 'Nine', 'বাংলা সাহিত্য', 'c0700fae307bcb52a835', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 643, 'Nine', 'বাংলা সহপাঠ', 'fc7c633d9b4020b398e5', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 644, 'Nine', 'বাংলা ভাষার ব্যাকরণ', '5d47fbb87417d638a3e8', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 645, 'Nine', 'English for Toady', '466c85dfa32755da2b46', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 646, 'Nine', 'গণিত', 'e9acd95e92ce962f3e46', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 647, 'Nine', 'English Grammar and Composition', 'cd252b2021c815c8115d', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 648, 'Nine', 'তথ্য ও যোগাযোগ প্রযুক্তি', 'acb26e5a757aeb9cd387', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 649, 'Nine', 'বিজ্ঞান', '50fffb7d59df095ca2ab', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 650, 'Nine', 'পদার্থ-বিজ্ঞান', '9d2f4f0b34709c5fc630', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 651, 'Nine', 'রসায়ন', '7079777aebfc295a3577', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 652, 'Nine', 'জীব-বিজ্ঞান', '507af5b25f846f93b06a', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 653, 'Nine', 'উচ্চতর গণিত', 'a6dcf10e6638821cfca1', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 654, 'Nine', 'ভূগোল ও পরিবেশ', 'e58bec8a5ea829ebc9ed', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 655, 'Nine', 'অর্থনীতি', '1e6d5c7f7bc7caf8998a', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 656, 'Nine', 'কৃষিশিক্ষা', 'f8f12d80b705cd918972', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 657, 'Nine', 'গার্হস্থ্য বিজ্ঞান', '9ac66cbb65ed2ad90ad5', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 658, 'Nine', 'পৌরনীতি ও নাগরিকতা', '5151c889f78f2c7ce1f8', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 659, 'Nine', 'হিসাব-বিজ্ঞান', 'cceed85639a2a0d26380', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 660, 'Nine', 'ফিন্যান্স ও ব্যাংকিং', '6b8797f38714017225ae', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 661, 'Nine', 'ব্যবসায় উদ্যোগ', '8d37e8d784b77d92f55d', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 662, 'Nine', 'ইসলাম ও নৈতিক শিক্ষা', '956d868c3ee24e05ba09', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 663, 'Nine', 'হিন্দুধর্ম শিক্ষা', '5383d66cd3750abd4408', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 664, 'Nine', 'বৌদ্ধধর্ম শিক্ষা', '5778f5d699771b9fea4d', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 665, 'Nine', 'খ্রিষ্টধর্ম শিক্ষা', 'f6135c0a5b61cf6098c9', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 666, 'Nine', 'ক্যারিয়ার এডুকেশন', 'e074661f080ed5e24aef', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 667, 'Nine', 'বাংলাদেশ ও বিশ্বপরিচয়', '0f10c7a9401b42e37e60', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 668, 'Nine', 'চারু ও কারুকলা', '62bb9b34b2a8d6e99ac9', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 669, 'Nine', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'c39f57e5d447d9be35c6', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 670, 'Nine', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '66548ed4df7f19e418e1', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 671, 'Nine', 'সচিত্র আরবি পাঠ', 'e106bc1135bd160d1be8', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 672, 'Nine', 'সংস্কৃত', '910ff618a90952711923', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 673, 'Nine', 'পালি', 'da856e285333074dbb44', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 674, 'Nine', 'সংগীত', '1c04eac405a74d0b1df1', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 675, 'Ten', 'বাংলা সাহিত্য', '14c3d09975f95758dc6f', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 676, 'Ten', 'বাংলা সহপাঠ', '3cfebb2259e861ffed13', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 677, 'Ten', 'বাংলা ভাষার ব্যাকরণ', '0981200eba08561f0ae4', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 678, 'Ten', 'English for Toady', '8426c5ef1007eccbd970', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 679, 'Ten', 'গণিত', 'f0daae68c4940d88513e', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 680, 'Ten', 'English Grammar and Composition', '76f90a2524ebad60dbcf', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 681, 'Ten', 'তথ্য ও যোগাযোগ প্রযুক্তি', '9a5b55b6f6817659174c', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 682, 'Ten', 'বিজ্ঞান', '54a146023e980c2e205b', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 683, 'Ten', 'পদার্থ-বিজ্ঞান', '3d82c2e2855ae3211528', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 684, 'Ten', 'রসায়ন', 'ee2bbda17b64e9943cb8', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 685, 'Ten', 'জীব-বিজ্ঞান', '4960eae255287e8790fd', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 686, 'Ten', 'উচ্চতর গণিত', '19bd85dea94d5ba42fb0', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 687, 'Ten', 'ভূগোল ও পরিবেশ', 'c7ccb5ebd25b58d826f6', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 688, 'Ten', 'অর্থনীতি', '2194e9144b5625b76da2', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 689, 'Ten', 'কৃষিশিক্ষা', '1e80a36c67620e7d9b26', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 690, 'Ten', 'গার্হস্থ্য বিজ্ঞান', '80067885882ccbcd1ed7', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 691, 'Ten', 'পৌরনীতি ও নাগরিকতা', '25abed45327e0833ebf2', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 692, 'Ten', 'হিসাব-বিজ্ঞান', 'b4e1db1c6cb5394f45c7', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 693, 'Ten', 'ফিন্যান্স ও ব্যাংকিং', '1078b3db894e522eb82d', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 694, 'Ten', 'ব্যবসায় উদ্যোগ', '480cbdbf938b0bcda365', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 695, 'Ten', 'ইসলাম ও নৈতিক শিক্ষা', '22dd741ca338a6648a58', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 696, 'Ten', 'হিন্দুধর্ম শিক্ষা', '9b87393753a08806529f', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 697, 'Ten', 'বৌদ্ধধর্ম শিক্ষা', 'dfc17ad16b82abec949b', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 698, 'Ten', 'খ্রিষ্টধর্ম শিক্ষা', 'c4e0d080f108ad0c3711', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 699, 'Ten', 'ক্যারিয়ার এডুকেশন', '39bdf97fccc458bb89c0', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 700, 'Ten', 'বাংলাদেশ ও বিশ্বপরিচয়', 'e4d350eea3d7f44e0144', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 701, 'Ten', 'চারু ও কারুকলা', '241a88be194da202ff1c', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 702, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'bca32f356b9ee2d8f7e0', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 703, 'Ten', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', 'f6079c33de557329f5bd', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 704, 'Ten', 'সচিত্র আরবি পাঠ', '767a464c06815cd67d20', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 705, 'Ten', 'সংস্কৃত', 'ebe01816c1ed673d942d', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 706, 'Ten', 'পালি', 'd3999ae2061c40e75a1d', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 707, 'Ten', 'সংগীত', '7a3796ef8efa2a8e64e9', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 708, 'Nine', 'পদার্থ-বিজ্ঞান', 'efe8fc53a9c9495fb580', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 709, 'Nine', 'রসায়ন', 'c7e3ea1919a6675bc2b7', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 710, 'Nine', 'জীব-বিজ্ঞান', '4c174d8bead916d3b9de', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 711, 'Nine', 'উচ্চতর গণিত', 'ca0f0297a019e3235163', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 712, 'Ten', 'পদার্থ-বিজ্ঞান', '83d0f36c844d718e00aa', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 713, 'Ten', 'রসায়ন', '561757b0fdaa4e3a8c96', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 714, 'Ten', 'জীব-বিজ্ঞান', '12d81f51e128ab6fc4c8', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 715, 'Ten', 'উচ্চতর গণিত', '46ca9c03eb77a9a19ff5', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 716, 'Nine', 'হিসাব-বিজ্ঞান', 'a57149f67e493383ba5e', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 717, 'Nine', 'ফিন্যান্স ও ব্যাংকিং', 'ecd49be38fadc3d2e18f', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 718, 'Nine', 'ব্যবসায় উদ্যোগ', '8d100d2db1d8e013f9b4', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 719, 'Ten', 'হিসাব-বিজ্ঞান', 'd7e82a146ffaa0831dcb', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 720, 'Ten', 'ফিন্যান্স ও ব্যাংকিং', '4ec8468598ad87a0139e', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 721, 'Ten', 'ব্যবসায় উদ্যোগ', '5a4962440520e75c54c0', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 722, 'Nine', 'অর্থনীতি', 'b59a8d9ec31b9a89625a', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 723, 'Nine', 'ভূগোল ও পরিবেশ', 'c2a82507adb6d9f70576', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 724, 'Nine', 'পৌরনীতি ও নাগরিকতা', 'b24808b3a9252ef1b2e7', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 725, 'Nine', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '876cd6ff3760a4160783', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 726, 'Ten', 'অর্থনীতি', 'd2537fe98d9c528f7786', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 727, 'Ten', 'ভূগোল ও পরিবেশ', '596130cc936862ab8379', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 728, 'Ten', 'পৌরনীতি ও নাগরিকতা', '9b40e223e2184d79299a', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 729, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'e9b007a967b26fef400e', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 730, 'Ten', 'অর্থনীতি', 'fc8f7fc2dc68ef0ef1d2', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 731, 'Ten', 'ভূগোল ও পরিবেশ', '0febf9eb658b8a3f6201', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 732, 'Ten', 'পৌরনীতি ও নাগরিকতা', 'cb5ebe608a69af78b060', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 733, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '25135558b6d596b1a42b', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 734, 'Eight', 'বাংলা ১ম', 'b8454e800c5c9c935c50', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 735, 'Eight', 'বাংলা ২য়', '2f82b856e421ed06cc78', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 736, 'Eight', 'ইংরেজী ১ম', 'e85064f8cfda93e2c648', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 737, 'Eight', 'ইংরেজী ২য়', 'ad0310ac3ce14d66f82a', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 738, 'Nine', 'বাংলা ১ম', '0a5dcc4f8e2403a9f288', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 739, 'Nine', 'বাংলা ২য়', '030a6e1f26ae6d30e862', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 740, 'Nine', 'ইংরেজী ১ম', 'ac7d2fbd44723c584b64', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 741, 'Nine', 'ইংরেজী ২য়', '51add3905954bc147afe', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 742, 'Ten', 'বাংলা ১ম', '3aba6f839b8c28667146', 'demo', '', '', '2023-10-23 11:43:45'),
('localhost', 743, 'Ten', 'বাংলা ২য়', '3c694af2280fbf7737ee', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 744, 'Ten', 'ইংরেজী ১ম', 'aa3ed7719f513e954c8b', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 745, 'Ten', 'ইংরেজী ২য়', 'f6b5b43f410e04d140f0', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 746, 'Nine', 'সামাঃ বিজ্ঞান', 'efb9cee56a95c018c41d', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 747, 'Ten', 'সামাঃ বিজ্ঞান', '4540c36bc8244b07b97c', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 748, 'Eight', 'বিতর্ক', '642f6aac901b67b1e196', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 749, 'Eight', 'ডিজিটাল প্রযুক্তি', '5f179fd5f5da1d8c3a38', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 750, 'Six', 'বৌদ্ধধর্ম-শিক্ষা', '021cc9454b3232958864', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 751, 'Six', 'খ্রিস্ট্রধর্ম-শিক্ষা', 'e3a8b8f702f37f406ef4', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 752, 'Six', 'হিন্দুধর্ম-শিক্ষা', 'b63a23ef4a006829dc1f', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 753, 'Six', 'ইসলাম-শিক্ষা', 'e27187e8bea074cac495', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 754, 'Six', 'শিল্প-ও-সংস্কৃতি', 'bc8001a4ee67d4a4abb5', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 755, 'Six', 'জীবন-ও-জীবিকা', '5b308d58f7e8cdb27df0', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 756, 'Six', 'স্বাস্থ্য-সুরক্ষা', 'c0468f2736f77062f501', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 757, 'Six', 'ডিজিটাল-প্রযুক্তি', 'f4f798e8118f4b0ea673', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 758, 'Six', 'ইতিহাস-ও-সামাজিক-বিজ্ঞান-অনুশীলন-বই', '989178f1f5b74c2be9a3', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 759, 'Six', 'বিজ্ঞান-অনুশীলন-বই', 'b6ab470c3d89d7ae9003', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 760, 'Seven', 'বৌদ্ধধর্ম-শিক্ষা', '643f7fa7cd05dbb8b66f', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 761, 'Seven', 'খ্রিস্ট্রধর্ম-শিক্ষা', 'bc33ce35733330eebdc5', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 762, 'Seven', 'হিন্দুধর্ম-শিক্ষা', '75ccdaa0aa6a0b407db8', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 763, 'Seven', 'ইসলাম-শিক্ষা', '84d7794cf47a9179d1ed', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 764, 'Seven', 'শিল্প-ও-সংস্কৃতি', 'a5ae097614ce80d40ab2', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 765, 'Seven', 'জীবন-ও-জীবিকা', 'c2e692f918fedcb351c8', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 766, 'Seven', 'স্বাস্থ্য-সুরক্ষা', '7e5aacfa1d97f8bd025d', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 767, 'Seven', 'ডিজিটাল-প্রযুক্তি', '594c0893766e96f2dd2b', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 768, 'Seven', 'ইতিহাস-ও-সামাজিক-বিজ্ঞান-অনুশীলন-বই', '163ca46379ccf7410185', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 769, 'Seven', 'বিজ্ঞান-অনুশীলন-বই', '263d903001c953806048', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 770, 'Seven', 'বিজ্ঞান-অনুসন্ধানী-পাঠ', '631492f27203a2dc7c0f', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 771, 'Seven', 'গণিত', '51fe67a3205c1535b3f8', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 772, 'Seven', 'English', 'd58701aa493f032d6ccd', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 773, 'Seven', 'বাংলা', '36506d018ce5cd5e154a', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 774, 'Six', 'Bangla', '66ed9d27dea979bfd11c', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 775, 'Six', 'গণিত', '4010afcd1b72efa00a30', 'demo', '', '', '2023-10-23 11:43:46'),
('localhost', 776, 'Eight', 'বাংলা ব্যকরন ও নির্মিতি', '1b1db4714f80ca749d57', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 777, 'Eight', 'গণিত', 'b34ede4c98818f65db75', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 778, 'Eight', 'বিজ্ঞান', 'ce7f576a26f7ee12905f', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 779, 'Eight', 'আনন্দ পাঠ', 'dfaf69192868a24a37c9', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 780, 'Eight', 'কৃষি শিক্ষা', 'c13f6d0bd98cf24c2e37', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 781, 'Eight', 'গার্হস্থ্য বিজ্ঞান', '21a109b735d3b6e53204', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 782, 'Eight', 'শারীরিক শিক্ষা ও স্বাস্থ্য', 'da0410f91bc6d003e3e8', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 783, 'Eight', 'তথ্য ও যোগাযোগ প্রযুক্তি', 'ae3266f698011e718b2d', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 784, 'Eight', 'ইসলাম ও নৈতিক শিক্ষা', 'b97177cf105d046fc832', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 785, 'Eight', 'হিন্দুধর্ম শিক্ষা', 'a1e1ff441147a4356fdf', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 786, 'Eight', 'খ্রিস্ট্রাধর্ম শিক্ষা', '227568ae3f2d82c84e24', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 787, 'Eight', 'কর্ম ও জীবনমুখী শিক্ষা', '472f50add77974511b48', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 788, 'Eight', 'চারু ও কারুকলা', '07a036fa8286fa032a2c', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 789, 'Eight', 'English for Today', 'a655101320061c275f97', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 790, 'Eight', 'English Grammar and Composition', 'a145788c8123e7b8f56a', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 791, 'Eight', 'সাহিত্য কনিকা', '818f1f91be28e41a434b', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 792, 'Eight', 'বাংলাদেশ ও বিশ্বপরিচয়', 'f1a5b9c06653e4a69175', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 793, 'Eight', 'আরবি', 'c4e9486286b4a1a79c2d', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 794, 'Eight', 'সংস্কৃতি', '964dba4a749deb89064f', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 795, 'Eight', 'পালি', 'a38154ff81e7b3aad3f9', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 796, 'Eight', 'সঙ্গগীত', '09c88889860199f6ea09', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 797, 'Nine', 'বাংলা সাহিত্য', '995c38b10f91a5aa31d4', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 798, 'Nine', 'বাংলা সহপাঠ', '4dcdc910af6e67bb6dcb', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 799, 'Nine', 'বাংলা ভাষার ব্যাকরণ', '595427f0c080cf436cba', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 800, 'Nine', 'English for Toady', '43087868288ede7b3679', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 801, 'Nine', 'গণিত', 'ce360b2bcc54d9873ef4', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 802, 'Nine', 'English Grammar and Composition', '383c7007bb9e75c61881', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 803, 'Nine', 'তথ্য ও যোগাযোগ প্রযুক্তি', '9f01ebdd20cceeaadf3e', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 804, 'Nine', 'বিজ্ঞান', '16f90bad8a5bb3a4510a', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 805, 'Nine', 'পদার্থ-বিজ্ঞান', '65f45a708d0c38bd03fe', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 806, 'Nine', 'রসায়ন', '5947939d96ef8aa6cd21', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 807, 'Nine', 'জীব-বিজ্ঞান', 'b1d5fabba4c71f4f8fc1', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 808, 'Nine', 'উচ্চতর গণিত', '8e0e58393f64ecc9a957', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 809, 'Nine', 'ভূগোল ও পরিবেশ', 'fb5da18b12c13f7dd63e', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 810, 'Nine', 'অর্থনীতি', '1249f8068aa767d5d6fd', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 811, 'Nine', 'কৃষিশিক্ষা', '6f9f06bc61eb98d909b3', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 812, 'Nine', 'গার্হস্থ্য বিজ্ঞান', '46000973c4c00f74e939', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 813, 'Nine', 'পৌরনীতি ও নাগরিকতা', '248a520c974c48f301ed', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 814, 'Nine', 'হিসাব-বিজ্ঞান', 'aa4b9c4712791029e494', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 815, 'Nine', 'ফিন্যান্স ও ব্যাংকিং', '174b503fffb7d7e6f00a', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 816, 'Nine', 'ব্যবসায় উদ্যোগ', '8e56e4509dc968b8350a', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 817, 'Nine', 'ইসলাম ও নৈতিক শিক্ষা', '38e9efc9ed35b3434a64', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 818, 'Nine', 'হিন্দুধর্ম শিক্ষা', '9e43eb709ccdd035a0e9', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 819, 'Nine', 'বৌদ্ধধর্ম শিক্ষা', '55d74db0f375a8188f13', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 820, 'Nine', 'খ্রিষ্টধর্ম শিক্ষা', '68b69562ae8213e6bc98', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 821, 'Nine', 'ক্যারিয়ার এডুকেশন', '9c1da25edbfa2ad34673', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 822, 'Nine', 'বাংলাদেশ ও বিশ্বপরিচয়', 'db124511aa1b69e3f0ce', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 823, 'Nine', 'চারু ও কারুকলা', '4f0e0d9e6a3ff4025c2c', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 824, 'Nine', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '65ef9e5e11596a9aa8dd', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 825, 'Nine', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '82cef59f6999becc5c75', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 826, 'Nine', 'সচিত্র আরবি পাঠ', 'c0b6a3ea44337e94a7dc', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 827, 'Nine', 'সংস্কৃত', '1ce7c11316cfb87b47ce', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 828, 'Nine', 'পালি', '7560837c73dbd2afc6d9', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 829, 'Nine', 'সংগীত', 'ee43194f069d7bdb1b6a', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 830, 'Ten', 'বাংলা সাহিত্য', 'c4dd2146bc2ec1bab95c', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 831, 'Ten', 'বাংলা সহপাঠ', '0c1c77944b7025bd1098', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 832, 'Ten', 'বাংলা ভাষার ব্যাকরণ', '4334fe77ec007297130f', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 833, 'Ten', 'English for Toady', 'd01b459bf22af588559a', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 834, 'Ten', 'গণিত', '385785e3d7cd826c8bfd', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 835, 'Ten', 'English Grammar and Composition', '7c8e8294546a1d4df20c', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 836, 'Ten', 'তথ্য ও যোগাযোগ প্রযুক্তি', 'a1dc529c495105a3a79d', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 837, 'Ten', 'বিজ্ঞান', '3fdd760687f45edee2a6', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 838, 'Ten', 'পদার্থ-বিজ্ঞান', 'd768abfd404bdea27f1e', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 839, 'Ten', 'রসায়ন', '39b6716e50fdcbf09a1e', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 840, 'Ten', 'জীব-বিজ্ঞান', '1ea574a61b9d2e0bebd6', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 841, 'Ten', 'উচ্চতর গণিত', 'eec62879e4100671743a', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 842, 'Ten', 'ভূগোল ও পরিবেশ', '126d266c5422b99d2087', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 843, 'Ten', 'অর্থনীতি', '5a8ccf2a6e003288b12c', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 844, 'Ten', 'কৃষিশিক্ষা', '2942a3ef671f350cb9d0', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 845, 'Ten', 'গার্হস্থ্য বিজ্ঞান', '232dd5ae602780c42f02', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 846, 'Ten', 'পৌরনীতি ও নাগরিকতা', 'b1d1267cc306117fdb52', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 847, 'Ten', 'হিসাব-বিজ্ঞান', '5de9270b72ff3c6b1db7', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 848, 'Ten', 'ফিন্যান্স ও ব্যাংকিং', 'e3fe34bf0205cbedec26', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 849, 'Ten', 'ব্যবসায় উদ্যোগ', '9e8c7961859a93817e8b', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 850, 'Ten', 'ইসলাম ও নৈতিক শিক্ষা', '72566022181a14f013a1', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 851, 'Ten', 'হিন্দুধর্ম শিক্ষা', '68e2e4778a4996c1eeb7', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 852, 'Ten', 'বৌদ্ধধর্ম শিক্ষা', '7706fdcaf3e0aec3476a', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 853, 'Ten', 'খ্রিষ্টধর্ম শিক্ষা', 'ec0670fe29410115591f', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 854, 'Ten', 'ক্যারিয়ার এডুকেশন', '79e8689bde2d551dc410', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 855, 'Ten', 'বাংলাদেশ ও বিশ্বপরিচয়', '06e81fcb4156b77cf061', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 856, 'Ten', 'চারু ও কারুকলা', '0327015a2327e13d67af', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 857, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'b055c7957fd38072890f', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 858, 'Ten', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '39b090769d5bdd13e1cd', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 859, 'Ten', 'সচিত্র আরবি পাঠ', 'daf573b42f4618d6358c', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 860, 'Ten', 'সংস্কৃত', 'c57d4432c3ffd54f2139', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 861, 'Ten', 'পালি', '56037b63b75a41a39b91', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 862, 'Ten', 'সংগীত', '73229365dcb0c72b496c', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 863, 'Nine', 'পদার্থ-বিজ্ঞান', 'f8d4de76c047b1186e7e', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 864, 'Nine', 'রসায়ন', '90db79e3ca9105203dec', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 865, 'Nine', 'জীব-বিজ্ঞান', 'f6b0ba6a89c209d2031f', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 866, 'Nine', 'উচ্চতর গণিত', '483b69647c18520f1b73', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 867, 'Ten', 'পদার্থ-বিজ্ঞান', '4c2ecc8807f7065e98f9', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 868, 'Ten', 'রসায়ন', 'e3c2e7db54857d4b8676', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 869, 'Ten', 'জীব-বিজ্ঞান', '6f6868c348934fcb109c', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 870, 'Ten', 'উচ্চতর গণিত', 'a238fc091cd59f4c5281', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 871, 'Nine', 'হিসাব-বিজ্ঞান', '77db5b3a776d37d5e284', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 872, 'Nine', 'ফিন্যান্স ও ব্যাংকিং', '0a5491b403eb48adbf9f', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 873, 'Nine', 'ব্যবসায় উদ্যোগ', '59f8d5dd6d9540f89f2a', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 874, 'Ten', 'হিসাব-বিজ্ঞান', '2e296cd4c36322153e33', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 875, 'Ten', 'ফিন্যান্স ও ব্যাংকিং', '3d952b18bf108e6eb387', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 876, 'Ten', 'ব্যবসায় উদ্যোগ', '5df48d56b67388540817', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 877, 'Nine', 'অর্থনীতি', 'ee5ab2b12b4a0b4f22d9', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 878, 'Nine', 'ভূগোল ও পরিবেশ', '588b02f521e6793ad376', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 879, 'Nine', 'পৌরনীতি ও নাগরিকতা', 'f02a48c267df96671396', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 880, 'Nine', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'f8b65bfefe533bc396ba', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 881, 'Ten', 'অর্থনীতি', 'da654e8ba6286f4edb0a', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 882, 'Ten', 'ভূগোল ও পরিবেশ', '3bdf4d953a6c3cf07338', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 883, 'Ten', 'পৌরনীতি ও নাগরিকতা', '421a9cb3d5decd17a832', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 884, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '828fcca987d4126dd795', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 885, 'Ten', 'অর্থনীতি', 'afcae5ea5f2abec5eadd', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 886, 'Ten', 'ভূগোল ও পরিবেশ', 'f31ac68390c418ee1d21', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 887, 'Ten', 'পৌরনীতি ও নাগরিকতা', '63dbfaf0ea821333bcbb', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 888, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'aa6dabc9af0a32685ec6', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 889, 'Eight', 'বাংলা ১ম', 'd7e3aa5bcd239a675148', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 890, 'Eight', 'বাংলা ২য়', '5c5903425c9e864eccf4', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 891, 'Eight', 'ইংরেজী ১ম', 'ba451c747dc1c856b03a', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 892, 'Eight', 'ইংরেজী ২য়', 'dc3329264ceea784a73e', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 893, 'Nine', 'বাংলা ১ম', '4204d93f64250bb06b06', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 894, 'Nine', 'বাংলা ২য়', '956f53e679abe6fb1b80', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 895, 'Nine', 'ইংরেজী ১ম', '59bf0a88c12c6593574e', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 896, 'Nine', 'ইংরেজী ২য়', '153e402634bbe781578f', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 897, 'Ten', 'বাংলা ১ম', '1bc7e563c7758a5a7f13', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 898, 'Ten', 'বাংলা ২য়', '01eff5100bee2c93aac1', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 899, 'Ten', 'ইংরেজী ১ম', '1174490f75e5f6b025da', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 900, 'Ten', 'ইংরেজী ২য়', 'c154d4049b82e7f9c34d', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 901, 'Nine', 'সামাঃ বিজ্ঞান', 'ff5190572831359c798c', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 902, 'Ten', 'সামাঃ বিজ্ঞান', '144b2e6d0175bdd9e787', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 903, 'Eight', 'বিতর্ক', 'f508614591f762305af4', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 904, 'Eight', 'ডিজিটাল প্রযুক্তি', 'bfe65bfa91a46dad504f', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 905, 'Six', 'বৌদ্ধধর্ম-শিক্ষা', '5c9a54e8b3ed22c4e00c', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 906, 'Six', 'খ্রিস্ট্রধর্ম-শিক্ষা', '46f4878d29b288959f78', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 907, 'Six', 'হিন্দুধর্ম-শিক্ষা', 'a2c1ca9cc5a4c0e97fb9', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 908, 'Six', 'ইসলাম-শিক্ষা', '3bccae19b57f7bd58181', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 909, 'Six', 'শিল্প-ও-সংস্কৃতি', '74cefb0e92a47a07237f', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 910, 'Six', 'জীবন-ও-জীবিকা', 'd0bc5b56fe9bd50a9e80', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 911, 'Six', 'স্বাস্থ্য-সুরক্ষা', '0b155112ccb6bd6c7195', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 912, 'Six', 'ডিজিটাল-প্রযুক্তি', '454c258ea6a3100197bf', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 913, 'Six', 'ইতিহাস-ও-সামাজিক-বিজ্ঞান-অনুশীলন-বই', 'fa6fdf9c05c3fd31f88a', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 914, 'Six', 'বিজ্ঞান-অনুশীলন-বই', 'b43fef03094556378680', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 915, 'Seven', 'বৌদ্ধধর্ম-শিক্ষা', '0310eedeb7293d64f025', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 916, 'Seven', 'খ্রিস্ট্রধর্ম-শিক্ষা', 'edca8bde9b4e16980d98', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 917, 'Seven', 'হিন্দুধর্ম-শিক্ষা', 'df3a301588dea0974655', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 918, 'Seven', 'ইসলাম-শিক্ষা', '41892b5193b355495e56', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 919, 'Seven', 'শিল্প-ও-সংস্কৃতি', 'e19768af89fa1bf5f1f4', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 920, 'Seven', 'জীবন-ও-জীবিকা', 'c22c39bbd99f4566a644', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 921, 'Seven', 'স্বাস্থ্য-সুরক্ষা', '396c2d2bb9376c057cbb', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 922, 'Seven', 'ডিজিটাল-প্রযুক্তি', '5a54bfe2c106e49a996d', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 923, 'Seven', 'ইতিহাস-ও-সামাজিক-বিজ্ঞান-অনুশীলন-বই', 'e4301cc52d99d5f4f46b', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 924, 'Seven', 'বিজ্ঞান-অনুশীলন-বই', '9ba5e7ebbe0b594a7b2e', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 925, 'Seven', 'বিজ্ঞান-অনুসন্ধানী-পাঠ', '970367ebcbde596f7d83', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 926, 'Seven', 'গণিত', 'e8b0318fb1c9febf044d', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 927, 'Seven', 'English', '81efc573c99141d1db0c', 'demo', '', '', '2023-10-23 11:44:08');
INSERT INTO `subject` (`domain`, `ID`, `class`, `subject`, `subject_code`, `teacher_name`, `teacher_index`, `teacher_uuid`, `at_date`) VALUES
('localhost', 928, 'Seven', 'বাংলা', 'b562ca3faeaddf4fc997', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 930, 'Six', 'গণিত', '938507c0812e16d2ca6d', 'demo', '', '', '2023-10-23 11:44:08'),
('localhost', 931, 'Eight', 'বাংলা ব্যকরন ও নির্মিতি', 'caa883a3bf2c8ae8008b', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 932, 'Eight', 'গণিত', 'c2e2970d8b3b0b87b8b0', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 933, 'Eight', 'বিজ্ঞান', '5dda030a617954f685a1', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 934, 'Eight', 'আনন্দ পাঠ', '888f5927e7bb7206dcf4', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 935, 'Eight', 'কৃষি শিক্ষা', '267ca6f0d3c4a21b7bcb', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 936, 'Eight', 'গার্হস্থ্য বিজ্ঞান', '7d714f88ae6d26584fa5', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 937, 'Eight', 'শারীরিক শিক্ষা ও স্বাস্থ্য', '818d9e027e0b0e75f48e', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 938, 'Eight', 'তথ্য ও যোগাযোগ প্রযুক্তি', '21cbc0d1068d8506ea98', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 939, 'Eight', 'ইসলাম ও নৈতিক শিক্ষা', '26bd8439f90f31126d5a', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 940, 'Eight', 'হিন্দুধর্ম শিক্ষা', '223551a6f912a90ed704', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 941, 'Eight', 'খ্রিস্ট্রাধর্ম শিক্ষা', '6eb13881e1d4cf232d20', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 942, 'Eight', 'কর্ম ও জীবনমুখী শিক্ষা', 'b79be9fc087589e7b922', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 943, 'Eight', 'চারু ও কারুকলা', '6a073d25640fe82c45fa', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 944, 'Eight', 'English for Today', 'b7e1cd6c6f8dc4008d51', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 945, 'Eight', 'English Grammar and Composition', '2f51b4fbaefbff0aec7e', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 946, 'Eight', 'সাহিত্য কনিকা', '0fade250e5e455e50d2a', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 947, 'Eight', 'বাংলাদেশ ও বিশ্বপরিচয়', '49b6a8ffe30d45eac5e1', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 948, 'Eight', 'আরবি', 'dad39fac1e3b40cd4193', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 949, 'Eight', 'সংস্কৃতি', 'd9d11650800ac64d1b4d', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 950, 'Eight', 'পালি', '3ccd05aadb26f4bb7fb1', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 951, 'Eight', 'সঙ্গগীত', 'fa4f0f24d22c805f3d09', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 952, 'Nine', 'বাংলা সাহিত্য', '15acfd999375b8fc5ca4', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 953, 'Nine', 'বাংলা সহপাঠ', '51e14c28f6304a9c7340', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 954, 'Nine', 'বাংলা ভাষার ব্যাকরণ', '0fab679df2fe31e4ebf4', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 955, 'Nine', 'English for Toady', 'abd980037f2405ef1e51', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 956, 'Nine', 'গণিত', '17ccf54463953e1d98ed', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 957, 'Nine', 'English Grammar and Composition', 'b990aef01507aafba84a', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 958, 'Nine', 'তথ্য ও যোগাযোগ প্রযুক্তি', '3162d23cf720a7945f48', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 959, 'Nine', 'বিজ্ঞান', '0a2d103c5033c0d6970e', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 960, 'Nine', 'পদার্থ-বিজ্ঞান', 'a4aad8949c4bdfe8ebf2', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 961, 'Nine', 'রসায়ন', 'ce2704d56bace314a966', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 962, 'Nine', 'জীব-বিজ্ঞান', 'b458ec49e2954f036e13', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 963, 'Nine', 'উচ্চতর গণিত', '1623120c25f672b5358f', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 964, 'Nine', 'ভূগোল ও পরিবেশ', '90ce693df09ae2e403ea', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 965, 'Nine', 'অর্থনীতি', '7e5b2073964119a67357', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 966, 'Nine', 'কৃষিশিক্ষা', 'da5103d2e205885eb4bd', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 967, 'Nine', 'গার্হস্থ্য বিজ্ঞান', '1ad843acfea222af277a', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 968, 'Nine', 'পৌরনীতি ও নাগরিকতা', 'c602a594cc3448875e47', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 969, 'Nine', 'হিসাব-বিজ্ঞান', '3f41a4b93805ff433f70', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 970, 'Nine', 'ফিন্যান্স ও ব্যাংকিং', 'af81bb329c23d36d61b7', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 971, 'Nine', 'ব্যবসায় উদ্যোগ', 'c315b175a0555054b424', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 972, 'Nine', 'ইসলাম ও নৈতিক শিক্ষা', '30c8ee070b0235b39083', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 973, 'Nine', 'হিন্দুধর্ম শিক্ষা', 'f4f37a61929fc95b2434', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 974, 'Nine', 'বৌদ্ধধর্ম শিক্ষা', 'a28ca6549a9db639cf04', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 975, 'Nine', 'খ্রিষ্টধর্ম শিক্ষা', 'cc095ce7f60474cb19ed', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 976, 'Nine', 'ক্যারিয়ার এডুকেশন', '8b740e8281330a580fe2', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 977, 'Nine', 'বাংলাদেশ ও বিশ্বপরিচয়', 'b769887f40b514cd27fd', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 978, 'Nine', 'চারু ও কারুকলা', '7836e09407c11838fae8', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 979, 'Nine', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '05be554dbaabc544a69f', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 980, 'Nine', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', 'a94f068035a32a488a97', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 981, 'Nine', 'সচিত্র আরবি পাঠ', 'ab634e550ba7b09f4c32', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 982, 'Nine', 'সংস্কৃত', 'ac867e9c630e28fd91bf', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 983, 'Nine', 'পালি', 'e63765ac14e204147c7a', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 984, 'Nine', 'সংগীত', '27fb757f010be95b037a', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 985, 'Ten', 'বাংলা সাহিত্য', 'a12304033117989b74b2', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 986, 'Ten', 'বাংলা সহপাঠ', '300e80dff7a11afa423b', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 987, 'Ten', 'বাংলা ভাষার ব্যাকরণ', '4d7a69c11f29e11b4bfc', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 988, 'Ten', 'English for Toady', 'ffd011720c210afad5aa', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 989, 'Ten', 'গণিত', 'c9170bae8610a7b8be9c', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 990, 'Ten', 'English Grammar and Composition', 'a18bf06a30a8d02a8388', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 991, 'Ten', 'তথ্য ও যোগাযোগ প্রযুক্তি', '2c268b7ae11224dfda09', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 992, 'Ten', 'বিজ্ঞান', '8b71b248e2992a7ad21e', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 993, 'Ten', 'পদার্থ-বিজ্ঞান', 'efd0a58cda1c5cf6fbf1', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 994, 'Ten', 'রসায়ন', 'c9bc2b7d2ed12d068c22', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 995, 'Ten', 'জীব-বিজ্ঞান', '7ca91be0267bf7590263', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 996, 'Ten', 'উচ্চতর গণিত', '8757df1da0edde3b9c24', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 997, 'Ten', 'ভূগোল ও পরিবেশ', '12234626491ef173ad67', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 998, 'Ten', 'অর্থনীতি', '2fe508dcee55a09b59c6', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 999, 'Ten', 'কৃষিশিক্ষা', '06ae2bdc9253b7f2d4d6', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1000, 'Ten', 'গার্হস্থ্য বিজ্ঞান', 'b3441911f0083a3fac17', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1001, 'Ten', 'পৌরনীতি ও নাগরিকতা', 'ba3bc162181824631b9e', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1002, 'Ten', 'হিসাব-বিজ্ঞান', 'caa036228cc2557532b4', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1003, 'Ten', 'ফিন্যান্স ও ব্যাংকিং', 'a9f14d7478e193e36591', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1004, 'Ten', 'ব্যবসায় উদ্যোগ', 'd1f767bd5113f833aa33', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1005, 'Ten', 'ইসলাম ও নৈতিক শিক্ষা', '9b27c61a694f02a048c7', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1006, 'Ten', 'হিন্দুধর্ম শিক্ষা', '356711a6531afbaafcad', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1007, 'Ten', 'বৌদ্ধধর্ম শিক্ষা', '91553748d961d294752d', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1008, 'Ten', 'খ্রিষ্টধর্ম শিক্ষা', '3b7fbd544021ef894f53', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1009, 'Ten', 'ক্যারিয়ার এডুকেশন', '3b914835adec15d70dec', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1010, 'Ten', 'বাংলাদেশ ও বিশ্বপরিচয়', '116630d27d87ca571b1b', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1011, 'Ten', 'চারু ও কারুকলা', 'e5a889b1ac37d3b57a05', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1012, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '1fe712edb322faec10be', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1013, 'Ten', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '8c7125daba72010ae0e6', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1014, 'Ten', 'সচিত্র আরবি পাঠ', 'bce70d8e1793f3f87634', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1015, 'Ten', 'সংস্কৃত', '40dcfbaf34a6ad81e531', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1016, 'Ten', 'পালি', 'badaa3dab47e06492792', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1017, 'Ten', 'সংগীত', 'f6d6fc4f42143cb1d761', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1018, 'Nine', 'পদার্থ-বিজ্ঞান', 'f3ddbdb99872b02b8a63', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1019, 'Nine', 'রসায়ন', '63bd0ac5b0c6c18ac58b', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1020, 'Nine', 'জীব-বিজ্ঞান', '99568d54159214be522d', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1021, 'Nine', 'উচ্চতর গণিত', 'dbd65b231996a105d676', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1022, 'Ten', 'পদার্থ-বিজ্ঞান', 'b3c8662f42f5110b1653', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1023, 'Ten', 'রসায়ন', '89b0e231390a154f337f', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1024, 'Ten', 'জীব-বিজ্ঞান', 'a663a0f9ec4c95e46b34', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1025, 'Ten', 'উচ্চতর গণিত', '204d7978ca4d99ceb22b', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1026, 'Nine', 'হিসাব-বিজ্ঞান', '6359cf79328b8e8913eb', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1027, 'Nine', 'ফিন্যান্স ও ব্যাংকিং', 'b597b3148950005ba075', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1028, 'Nine', 'ব্যবসায় উদ্যোগ', 'f0314be1f6a6aa801f84', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1029, 'Ten', 'হিসাব-বিজ্ঞান', 'e1f10e8af9fe04d58422', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1030, 'Ten', 'ফিন্যান্স ও ব্যাংকিং', '798f09a3a0834306c271', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1031, 'Ten', 'ব্যবসায় উদ্যোগ', '93b59442ee9b4035f544', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1032, 'Nine', 'অর্থনীতি', 'ab0717c7eb28d19c9e89', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1033, 'Nine', 'ভূগোল ও পরিবেশ', '2a939ace2bab8f7ca08e', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1034, 'Nine', 'পৌরনীতি ও নাগরিকতা', '8465809d81217b70e6b7', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1035, 'Nine', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'c306559bf4f9472a78d5', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1036, 'Ten', 'অর্থনীতি', '6866c83106a07b7ddacb', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1037, 'Ten', 'ভূগোল ও পরিবেশ', '2e8ecf06144760b0e9cf', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1038, 'Ten', 'পৌরনীতি ও নাগরিকতা', 'c992e2a6c60c8d494d96', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1039, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '8433bc7954978e97d245', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1040, 'Ten', 'অর্থনীতি', '20dcb5832d7153b70e33', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1041, 'Ten', 'ভূগোল ও পরিবেশ', '4800856013ad086aa385', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1042, 'Ten', 'পৌরনীতি ও নাগরিকতা', 'f385e210696f61035adf', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1043, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'ed29b66e3cb1dd6fd32a', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1044, 'Eight', 'বাংলা ১ম', 'a31d52ffebbc3768cdc6', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1045, 'Eight', 'বাংলা ২য়', 'd65cc228f8e1354a4a72', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1046, 'Eight', 'ইংরেজী ১ম', 'bb16f36a8d0700c2d2db', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1047, 'Eight', 'ইংরেজী ২য়', '8e867aff504cdec8b1dc', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1048, 'Nine', 'বাংলা ১ম', '44ad13c3c5120d051f4f', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1049, 'Nine', 'বাংলা ২য়', 'f4b22f37d76f58c844cc', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1050, 'Nine', 'ইংরেজী ১ম', 'eac9be209c78ff951753', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1051, 'Nine', 'ইংরেজী ২য়', '9b3746a0d826f5c5a513', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1052, 'Ten', 'বাংলা ১ম', '080447fe558a59aa1d7c', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1053, 'Ten', 'বাংলা ২য়', 'c32ef125d5a354f276c6', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1054, 'Ten', 'ইংরেজী ১ম', '66ed00988a834faea219', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1055, 'Ten', 'ইংরেজী ২য়', 'd479da651875996d31da', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1056, 'Nine', 'সামাঃ বিজ্ঞান', 'e039b429c9b9a1e18616', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1057, 'Ten', 'সামাঃ বিজ্ঞান', '7697ebfd28dcbf7ff075', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1058, 'Eight', 'বিতর্ক', 'c2c40d3f5007b3519e0d', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1059, 'Eight', 'ডিজিটাল প্রযুক্তি', 'cd9e50a5a83edc4aced4', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1060, 'Six', 'বৌদ্ধধর্ম-শিক্ষা', '4e3fcd4088387b6691ac', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1061, 'Six', 'খ্রিস্ট্রধর্ম-শিক্ষা', '560148aceb72479ced33', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1062, 'Six', 'হিন্দুধর্ম-শিক্ষা', '595047dabdc821cb8db3', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1063, 'Six', 'ইসলাম-শিক্ষা', 'e72553d9cf9e87d09dd9', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1064, 'Six', 'শিল্প-ও-সংস্কৃতি', '2c56dcf7f0e86e9cd3b4', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1065, 'Six', 'জীবন-ও-জীবিকা', '4b1868cd060f04b7831a', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1066, 'Six', 'স্বাস্থ্য-সুরক্ষা', '611160568cb0a407ecc2', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1067, 'Six', 'ডিজিটাল-প্রযুক্তি', 'b51512057cd8303e0eba', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1068, 'Six', 'ইতিহাস-ও-সামাজিক-বিজ্ঞান-অনুশীলন-বই', 'f0d2fa05f9c7ebe9ff31', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1069, 'Six', 'বিজ্ঞান-অনুশীলন-বই', '30df968c3e25b3f169e3', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1070, 'Seven', 'বৌদ্ধধর্ম-শিক্ষা', '9b5644e563dc33681337', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1071, 'Seven', 'খ্রিস্ট্রধর্ম-শিক্ষা', '6f022aefe1affca10ccf', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1072, 'Seven', 'হিন্দুধর্ম-শিক্ষা', 'a5e400453116a9dbaa30', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1073, 'Seven', 'ইসলাম-শিক্ষা', '962c7719b1e53a3c8cfb', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1074, 'Seven', 'শিল্প-ও-সংস্কৃতি', '84c453726ffaf0d7ddcf', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1075, 'Seven', 'জীবন-ও-জীবিকা', '52f4849e15175eeac198', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1076, 'Seven', 'স্বাস্থ্য-সুরক্ষা', 'cc647811c115d0de913f', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1077, 'Seven', 'ডিজিটাল-প্রযুক্তি', '20ee03ec9330d274cee5', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1078, 'Seven', 'ইতিহাস-ও-সামাজিক-বিজ্ঞান-অনুশীলন-বই', 'c97a9f9a36b76cf66923', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1079, 'Seven', 'বিজ্ঞান-অনুশীলন-বই', '836b63fbcb1fb0f645b5', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1080, 'Seven', 'বিজ্ঞান-অনুসন্ধানী-পাঠ', '146c5b5721152091a8a9', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1081, 'Seven', 'গণিত', 'c781e73fbd9d84f701c2', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1082, 'Seven', 'English', 'dddd9c63d1e97624e312', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1083, 'Seven', 'বাংলা', 'e154ef9deca03254f628', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1084, 'Six', 'Bangla', '9b8f57a3302e55d26e80', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1085, 'Six', 'গণিত', 'e82fdb46c351f82bef0b', 'demo', '', '', '2023-10-23 11:44:46'),
('localhost', 1086, 'Six', 'English', '613ef00329fa30032ab9', 'demo', '', '', '2023-10-23 13:12:40'),
('localhost', 1087, 'Six', 'বাংলা', '7e8f7e9ec9c4eaef6fa1', 'demo', '', '', '2023-10-23 13:13:34'),
('localhost', 1088, 'Eight', 'বাংলা ব্যকরন ও নির্মিতি', '27333b26d121f04c0912', 'demo', '', '', '2023-11-02 07:21:14'),
('localhost', 1089, 'Eight', 'গণিত', '910fcfa069e4d3cf4c8d', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1090, 'Eight', 'বিজ্ঞান', 'b3916e66240c7721fde6', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1091, 'Eight', 'আনন্দ পাঠ', '315fe516a8841800dc57', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1092, 'Eight', 'কৃষি শিক্ষা', '766fee29d996563ed3b2', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1093, 'Eight', 'গার্হস্থ্য বিজ্ঞান', '5649419abc4053f5e087', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1094, 'Eight', 'শারীরিক শিক্ষা ও স্বাস্থ্য', '62dfdf4d61b5f9efd80e', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1095, 'Eight', 'তথ্য ও যোগাযোগ প্রযুক্তি', '406d1bacc5277f39bb32', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1096, 'Eight', 'ইসলাম ও নৈতিক শিক্ষা', '2838dbcd6a0a4e3b8cbd', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1097, 'Eight', 'হিন্দুধর্ম শিক্ষা', '7a1bb42e16dfd2f92d89', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1098, 'Eight', 'খ্রিস্ট্রাধর্ম শিক্ষা', '6b6cd53fb56ccc056e4e', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1099, 'Eight', 'কর্ম ও জীবনমুখী শিক্ষা', '2184bbe1d07fe20cfe87', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1100, 'Eight', 'চারু ও কারুকলা', 'e6671be83db8bb2907ed', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1101, 'Eight', 'English for Today', '1594e5b96d9279e255de', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1102, 'Eight', 'English Grammar and Composition', 'c34106879d5a543eae61', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1103, 'Eight', 'সাহিত্য কনিকা', '194206dd10b67544efcc', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1104, 'Eight', 'বাংলাদেশ ও বিশ্বপরিচয়', 'fa20ece5711584be567e', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1105, 'Eight', 'আরবি', '0a05783237359540bb24', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1106, 'Eight', 'সংস্কৃতি', '6ee4307bdc829d875c91', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1107, 'Eight', 'পালি', '2e35981338a83cbfb927', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1108, 'Eight', 'সঙ্গগীত', '4ae6af0536093eab96d4', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1109, 'Nine', 'বাংলা সাহিত্য', '04404e165d0b0ced7e20', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1110, 'Nine', 'বাংলা সহপাঠ', 'd573216d183a4263d236', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1111, 'Nine', 'বাংলা ভাষার ব্যাকরণ', '4cafe9af2c72b48a46b5', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1112, 'Nine', 'English for Toady', '91c1e9033cc8838ad266', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1113, 'Nine', 'গণিত', '61cf80ef1abb3b1bd3d1', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1114, 'Nine', 'English Grammar and Composition', 'c1d7e7041b8dfb9dcb34', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1115, 'Nine', 'তথ্য ও যোগাযোগ প্রযুক্তি', 'd29d87748633c47623f4', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1116, 'Nine', 'বিজ্ঞান', '625cf980224c46975434', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1117, 'Nine', 'পদার্থ-বিজ্ঞান', '6019f87f194c8b0e7a0a', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1118, 'Nine', 'রসায়ন', '9383fe423a1162ae2302', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1119, 'Nine', 'জীব-বিজ্ঞান', '04028bb1a3e273f0bc7d', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1120, 'Nine', 'উচ্চতর গণিত', '68961a55eb55a460c58e', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1121, 'Nine', 'ভূগোল ও পরিবেশ', '73a4239f6769819ba668', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1122, 'Nine', 'অর্থনীতি', '7ffaf19ad115aa5b8260', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1123, 'Nine', 'কৃষিশিক্ষা', '7f2dd3bbf6b549959a45', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1124, 'Nine', 'গার্হস্থ্য বিজ্ঞান', '870f45955356af951dcc', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1125, 'Nine', 'পৌরনীতি ও নাগরিকতা', '7157737c02e2db90db96', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1126, 'Nine', 'হিসাব-বিজ্ঞান', '44a62b98a1eb991a40ad', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1127, 'Nine', 'ফিন্যান্স ও ব্যাংকিং', '5c3ed0a726a416ab4db2', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1128, 'Nine', 'ব্যবসায় উদ্যোগ', '3d1976e969b90ca25705', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1129, 'Nine', 'ইসলাম ও নৈতিক শিক্ষা', '0a2d04b4f5934cd8eae0', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1130, 'Nine', 'হিন্দুধর্ম শিক্ষা', '209bc545074cecb446f9', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1131, 'Nine', 'বৌদ্ধধর্ম শিক্ষা', 'cd5ccd97fe53e4ddba5c', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1132, 'Nine', 'খ্রিষ্টধর্ম শিক্ষা', '602ba616912a980a1610', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1133, 'Nine', 'ক্যারিয়ার এডুকেশন', 'f1bf4085a2d66b750539', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1134, 'Nine', 'বাংলাদেশ ও বিশ্বপরিচয়', 'ff118b1b4f94b44621cc', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1135, 'Nine', 'চারু ও কারুকলা', '4d0d8a6911bec9089125', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1136, 'Nine', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '915eefd74b8cdeca2571', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1137, 'Nine', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', 'cb25af5379d403351eec', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1138, 'Nine', 'সচিত্র আরবি পাঠ', 'c5e5a29d14d8995dcf37', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1139, 'Nine', 'সংস্কৃত', '9bb4abcae31ae137be68', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1140, 'Nine', 'পালি', '2a56bfbc44bbbc817419', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1141, 'Nine', 'সংগীত', '6aaa9005037995c68e88', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1142, 'Ten', 'বাংলা সাহিত্য', '12e09a9c6f1138868767', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1143, 'Ten', 'বাংলা সহপাঠ', 'f9f443e1ba4d70ec485e', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1144, 'Ten', 'বাংলা ভাষার ব্যাকরণ', 'd4095486d90b0a76761f', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1145, 'Ten', 'English for Toady', '42582bd1de0a527c0361', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1146, 'Ten', 'গণিত', 'c9a94fe4934d03fa890c', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1147, 'Ten', 'English Grammar and Composition', '437c18d7ebb55e92bae5', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1148, 'Ten', 'তথ্য ও যোগাযোগ প্রযুক্তি', '94bf2295473b3270d079', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1149, 'Ten', 'বিজ্ঞান', '8cb675136ff246e267de', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1150, 'Ten', 'পদার্থ-বিজ্ঞান', '81d6428261e0f6c134da', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1151, 'Ten', 'রসায়ন', 'af0f02bca45f7d0d498b', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1152, 'Ten', 'জীব-বিজ্ঞান', '76fcc58b0ee9c6afefe6', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1153, 'Ten', 'উচ্চতর গণিত', '208aa23ecb930615dbc3', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1154, 'Ten', 'ভূগোল ও পরিবেশ', 'feaad18c1df6ea50db70', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1155, 'Ten', 'অর্থনীতি', '23cfc1ea122b100d87e3', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1156, 'Ten', 'কৃষিশিক্ষা', '7f1d1cc8c444fb32c251', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1157, 'Ten', 'গার্হস্থ্য বিজ্ঞান', '724334a66c4cdf26df83', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1158, 'Ten', 'পৌরনীতি ও নাগরিকতা', '41b88f4733200915fbc9', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1159, 'Ten', 'হিসাব-বিজ্ঞান', '08ddceb1dc64f1d0e8f8', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1160, 'Ten', 'ফিন্যান্স ও ব্যাংকিং', '7d55974009f07290e1b1', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1161, 'Ten', 'ব্যবসায় উদ্যোগ', 'def0804931b5259c961d', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1162, 'Ten', 'ইসলাম ও নৈতিক শিক্ষা', '87db40a20849e074a08b', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1163, 'Ten', 'হিন্দুধর্ম শিক্ষা', 'aef36b2e0db5122e037e', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1164, 'Ten', 'বৌদ্ধধর্ম শিক্ষা', '423fc2c1b05497dceb86', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1165, 'Ten', 'খ্রিষ্টধর্ম শিক্ষা', 'edbfef8bf2a5e5201241', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1166, 'Ten', 'ক্যারিয়ার এডুকেশন', 'b8eeec825f1d777a7e18', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1167, 'Ten', 'বাংলাদেশ ও বিশ্বপরিচয়', 'b7811a16b411a3c50f80', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1168, 'Ten', 'চারু ও কারুকলা', 'b637c480b3655f48cc91', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1169, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '3083b25da40727e795d4', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1170, 'Ten', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '4a6019f389f09a35c4b2', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1171, 'Ten', 'সচিত্র আরবি পাঠ', '94c2792dfdc988909f13', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1172, 'Ten', 'সংস্কৃত', '191996cee7f1d850082f', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1173, 'Ten', 'পালি', '71092370fff823971860', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1174, 'Ten', 'সংগীত', '809940f3faf11412f1b6', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1175, 'Nine', 'পদার্থ-বিজ্ঞান', 'da1570590665eddf0d7a', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1176, 'Nine', 'রসায়ন', '45d8321578e9ccf2667d', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1177, 'Nine', 'জীব-বিজ্ঞান', 'bb55c5a71bc7c4e3f3b7', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1178, 'Nine', 'উচ্চতর গণিত', '6451abfc48a9746bbb12', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1179, 'Ten', 'পদার্থ-বিজ্ঞান', '703cc05cc16760ee4824', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1180, 'Ten', 'রসায়ন', '5af59246dd4b24cba43c', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1181, 'Ten', 'জীব-বিজ্ঞান', 'ba931c719768916b28b5', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1182, 'Ten', 'উচ্চতর গণিত', '2c2b01571d737e927c88', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1183, 'Nine', 'হিসাব-বিজ্ঞান', '2cc0f4e3e07e02153d6b', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1184, 'Nine', 'ফিন্যান্স ও ব্যাংকিং', 'cbb580f63c21fe7a1666', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1185, 'Nine', 'ব্যবসায় উদ্যোগ', '0e4c7bd308ce1a500ad3', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1186, 'Ten', 'হিসাব-বিজ্ঞান', 'eda587b47304ba1c4e40', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1187, 'Ten', 'ফিন্যান্স ও ব্যাংকিং', '67f8a0d1c8afc5e23488', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1188, 'Ten', 'ব্যবসায় উদ্যোগ', '311265e3ae57403d13ef', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1189, 'Nine', 'অর্থনীতি', 'eb1af01a853b4929b270', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1190, 'Nine', 'ভূগোল ও পরিবেশ', 'e799c266ebe073632c19', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1191, 'Nine', 'পৌরনীতি ও নাগরিকতা', 'fa3e1a907819c817d656', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1192, 'Nine', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'ea3917b67bc0a31f6c69', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1193, 'Ten', 'অর্থনীতি', 'c2dcb616ebfb1d84b5ca', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1194, 'Ten', 'ভূগোল ও পরিবেশ', '5de2523fc569581b6bba', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1195, 'Ten', 'পৌরনীতি ও নাগরিকতা', '3f743a05be2d9f2cd2ac', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1196, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'ab1d50e970598a33fdb0', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1197, 'Ten', 'অর্থনীতি', 'd8992169bd00f17a7c60', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1198, 'Ten', 'ভূগোল ও পরিবেশ', 'b787dda87b7f1b89eabb', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1199, 'Ten', 'পৌরনীতি ও নাগরিকতা', 'a3def3f79a5f790e56fd', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1200, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'abd33b18061169e4f557', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1201, 'Eight', 'বাংলা ১ম', 'c33b04b21c3c7a1e142a', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1202, 'Eight', 'বাংলা ২য়', '671dc8b2b4ba8a2ba170', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1203, 'Eight', 'ইংরেজী ১ম', 'f60a02ce3cd45472f631', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1204, 'Eight', 'ইংরেজী ২য়', '0249d0f98e9f385919a8', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1205, 'Nine', 'বাংলা ১ম', 'a327386c7d4256a6b973', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1206, 'Nine', 'বাংলা ২য়', '160fbeb5cad8bd9f6780', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1207, 'Nine', 'ইংরেজী ১ম', '30bfa71173e7ee79f8b5', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1208, 'Nine', 'ইংরেজী ২য়', '4ec9de0f3f67ff169175', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1209, 'Ten', 'বাংলা ১ম', '48c430f6d5290fc4ea55', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1210, 'Ten', 'বাংলা ২য়', 'becf7c23f3f97af29da5', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1211, 'Ten', 'ইংরেজী ১ম', '8a0e8500bff458fc66d2', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1212, 'Ten', 'ইংরেজী ২য়', '42e025ba5f115e4f33da', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1213, 'Nine', 'সামাঃ বিজ্ঞান', '7c49ef39038d775f7fa8', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1214, 'Ten', 'সামাঃ বিজ্ঞান', '5603179f64978dd6948a', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1215, 'Eight', 'বিতর্ক', '52b0481ea595d1cceda3', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1216, 'Eight', 'ডিজিটাল প্রযুক্তি', '6d0b46d461bbaa8ef4e8', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1217, 'Six', 'বৌদ্ধধর্ম-শিক্ষা', '52fa3d9d5e73655c1f73', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1218, 'Six', 'খ্রিস্ট্রধর্ম-শিক্ষা', 'c8f0f8170206a80e8f87', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1219, 'Six', 'হিন্দুধর্ম-শিক্ষা', '5fd74002ef0f28744625', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1220, 'Six', 'ইসলাম-শিক্ষা', '00da393180e8fe924a34', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1221, 'Six', 'শিল্প-ও-সংস্কৃতি', '3f4caf6bb06bd46082d9', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1222, 'Six', 'জীবন-ও-জীবিকা', '29da2eee8863a86d559d', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1223, 'Six', 'স্বাস্থ্য-সুরক্ষা', '3e2b4bba9de299064531', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1224, 'Six', 'ডিজিটাল-প্রযুক্তি', '218b3f01f771e2130a39', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1225, 'Six', 'ইতিহাস-ও-সামাজিক-বিজ্ঞান-অনুশীলন-বই', '07ceefd14952fea81781', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1226, 'Six', 'বিজ্ঞান-অনুশীলন-বই', '378689a5ee00c7840501', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1227, 'Seven', 'বৌদ্ধধর্ম-শিক্ষা', 'f01c2df0174351354392', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1228, 'Seven', 'খ্রিস্ট্রধর্ম-শিক্ষা', 'e678f33865f02ea81623', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1229, 'Seven', 'হিন্দুধর্ম-শিক্ষা', 'e4ef15b72b6445ec0897', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1230, 'Seven', 'ইসলাম-শিক্ষা', '56e871eb618d688fe0ef', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1231, 'Seven', 'শিল্প-ও-সংস্কৃতি', '4c22eda032b834ab292a', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1232, 'Seven', 'জীবন-ও-জীবিকা', '907216bf1ad6fc5db98c', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1233, 'Seven', 'স্বাস্থ্য-সুরক্ষা', 'a808016ada890506cf0b', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1234, 'Seven', 'ডিজিটাল-প্রযুক্তি', '9b1cf74c794b5536fff0', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1235, 'Seven', 'ইতিহাস-ও-সামাজিক-বিজ্ঞান-অনুশীলন-বই', 'f63346b24d062e3e4085', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1236, 'Seven', 'বিজ্ঞান-অনুশীলন-বই', '1bf7800ee2427cb73040', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1237, 'Seven', 'বিজ্ঞান-অনুসন্ধানী-পাঠ', 'e2aebaf2b0cf23438b2a', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1238, 'Seven', 'গণিত', '9cd462738a56035552b9', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1239, 'Seven', 'English', 'bc433cdf63812c42635d', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1240, 'Seven', 'বাংলা', 'e54bb6b6d2a0506791e4', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1241, 'Six', 'Bangla', '12e0ed5ada44b43b0020', 'demo', '', '', '2023-11-02 07:21:15'),
('localhost', 1242, 'Six', 'গণিত', '56e5ac7027d21715353e', 'demo', '', '', '2023-11-02 07:21:15');

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

INSERT INTO `teachers` (`domain`, `ID`, `teacher_uuid`, `name`, `gender`, `education_qualification`, `pds_id`, `index_number`, `position`, `order_value`, `group_special`, `quote`, `telephone`, `email`, `phone`, `religion`, `birth_date`, `address`, `blood_group`, `joining_date`, `avatar`, `password`, `fb_link`, `at_date`) VALUES
('localhost', 2, '1697690219859', 'Abdul Aziz Molla', 'Male', 'N/A', '100251495', 'D470889', 'Headmaster', 'A', 'N/A', 'N/A', '01716974937', 'azizshs07@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '1995-11-01', '1676561167056_abdul-aziz-molla-hm.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 15:26:07'),
('localhost', 3, '1697822809488', 'MD. SERAJUL ISLAM', 'Male', 'N/A', '100250478', 'D473975', 'Assistant Headmaster', 'B', 'N/A', 'N/A', '01719518322', 'mdserajul35@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '1997-10-01', '1676561790154_serajul-islam-ahm.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 15:36:30'),
('localhost', 6, '1697133611416', 'BIKASH CHANDRA BOSU', 'Male', 'N/A', '100250607', 'D479983', 'Assistant Teacher', 'C', 'N/A', 'N/A', '01712354277', 'bikash479983@gmail.com', '', 'Hinduism', 'N/A', 'N/A', 'N/A', '2000-02-02', '1676562216077_bikash-sir-at.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 15:43:36'),
('localhost', 7, '1697382804683', 'RUMANA MIZUN', 'Female', 'N/A', '100373148', 'D1020505', 'Assistant Teacher', 'C', 'N/A', 'N/A', '01715541534', 'rumanamizun@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '2000-11-02', '1676562336505_mizun-madam-at.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 15:45:36'),
('localhost', 8, '1696952378542', 'AMENA PERVIN', 'Female', 'N/A', '100406573', 'D1041431', 'Assistant Teacher', 'C', 'N/A', 'N/A', '01725365538', 'amenaparvin11@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '2009-12-30', '1676562454883_amena-madam-at.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 15:47:34'),
('localhost', 10, '1697589189410', 'BITHI RANI BISWAS', 'Female', 'N/A', '100432807', 'D1057634', 'Assistant Teacher', 'C', 'N/A', 'N/A', '01717751441', 'bithiranib@gmail.com', '', 'Hinduism', 'N/A', 'N/A', 'N/A', '2011-03-24', '1676562799228_bithi-rani-biswas-madam-at.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 15:53:19'),
('localhost', 11, '1697307461121', 'SELIM SHEIKH', 'Male', 'N/A', '100432811', 'D1057636', 'Assistant Teacher', 'C', 'N/A', 'N/A', '01728102740', 'selim03061979@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '2011-03-31', '1676562921995_selim-sir-at.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 15:55:21'),
('localhost', 12, '1697298826970', 'ANISUZZAMAN PANNU', 'Male', 'N/A', '100442732', 'N1062400', 'Assistant Teacher', 'C', 'N/A', 'N/A', '01777390906', 'anisuzzamanpannu@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '2011-11-22', '1676563076174_anis-sir-at.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 15:57:56'),
('localhost', 13, '1697349767888', 'MASURA KHATUN', 'Female', 'N/A', '100461149', 'N1072479', 'Assistant Teacher', 'C', 'N/A', 'N/A', '01720634412', 'masurakhatun616@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '2012-06-10', '1676563221017_masura-madam-at.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 16:00:21'),
('localhost', 14, '1697010240946', 'KRISHNA CHANDRA SAHA', 'Male', 'N/A', '100509018', 'N1123550', 'Assistant Teacher', 'C', 'N/A', 'N/A', '01716604356', 'krishnasaha435@gmail.com', '', 'Hinduism', 'N/A', 'N/A', 'N/A', '2015-08-01', '1676563337883_krishna-sir-at.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 16:02:17'),
('localhost', 15, '1697184120953', 'MADHABIKA BISWAS', 'Female', 'N/A', '100402754', 'D1038899', 'Assistant Teacher', 'C', 'N/A', 'N/A', '01714207353', 'ambiswas7@gmail.com', '', 'Hinduism', 'N/A', 'N/A', 'N/A', '2008-04-01', '1676563463399_madhabika-madam-at.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 16:04:23'),
('localhost', 16, '1697576944814', 'MOHSIN ALAM', 'Male', 'N/A', '100461153', 'N1072480', 'Assistant Teacher', 'C', 'N/A', 'N/A', '01778029043', 'mohsinalammath@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '2012-07-10', '1676563588633_mahasin-sir-at.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 16:06:28'),
('localhost', 17, '1697371634552', 'RINA RANI KUNDU', 'Female', 'N/A', '100509626', 'N1123915', 'Assistant Teacher', 'C', 'N/A', 'N/A', '01726012667', 'rinaranikundu81@gmail.com', '', 'Hinduism', 'N/A', 'N/A', 'N/A', '2015-08-01', '1676563720313_rina-rani-madam-at.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 16:08:40'),
('localhost', 18, '1697209362834', 'SOUMITRA SAHA', 'Male', 'N/A', '100555345', 'N1147428', 'Assistant Teacher', 'C', 'N/A', 'N/A', '01743452910', 'soumitrasahatanin@gmail.com', '', 'Hinduism', 'N/A', ' Boalmari-Faridpur', 'N/A', '2019-02-03', '1697003982308_382232475.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 16:10:32'),
('localhost', 19, '1697198926998', 'MOFIJUR RAHAMAN', 'Male', 'N/A', '100499627', 'N1117821', 'Sports Teacher', 'C', 'N/A', 'N/A', '01854744192', 'mofijur1988@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '2019-02-20', '1676563986090_mofijur-rahman-sir.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 16:13:06'),
('localhost', 20, '1697584951834', 'USHA NANDI', 'Female', 'N/A', '100567695', 'N1156115', 'Assistant Teacher', 'C', 'N/A', 'N/A', '01734726447', 'nandi.usha85@gmail.com', '', 'Hinduism', 'N/A', 'N/A', 'N/A', '2019-11-14', '1676564123460_usha-nandi-madam-.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 16:15:23'),
('localhost', 21, '1697147898114', 'ELIAS HOSSAN', 'Male', 'N/A', '100543362', 'N2122121', 'Instructor', 'D', 'N/A', 'N/A', '01770559553', 'eliasmolla19870805@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '2020-02-01', '1676564247907_elias-sir-inst.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-16 16:17:27'),
('localhost', 22, '1697061470246', 'S. M. YOUNUS ALI', 'Male', 'N/A', '100336016', 'D179730', 'Assistant Teacher', 'C', 'N/A', 'N/A', '01835604871', 'smyounusali88@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '1989-03-20', '1676650131333_younus-sir-at.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-17 16:08:51'),
('localhost', 23, '1697730447840', 'SIDDHANTA KUMAR ROY', 'Male', 'N/A', '100491490', 'N1111934', 'Assistant Teacher', 'C', 'N/A', 'N/A', 'N/A', 'Not@vailable.com', '', 'Hinduism', 'N/A', 'N/A', 'N/A', 'undefined', 'male_avatar.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-17 16:13:56'),
('localhost', 24, '1697426431217', 'NASIMA PARVIN', 'Female', 'N/A', '100485994', 'N1109125', 'Assistant Teacher', 'C', 'N/A', 'N/A', '01746204293', 'Not@vailable01.com', '', 'Islam', 'N/A', 'N/A', 'N/A', 'undefined', 'female_avatar.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-17 16:18:24'),
('localhost', 26, '1697439561311', 'MST. SHAMMI AKTAR', 'Female', 'N/A', '101406837', 'N56817846', 'Assistant Teacher', 'C', 'N/A', 'N/A', '01796504186', 'bgashammi@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', 'undefined', '1676650881819_samima-madam-at.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-17 16:21:21'),
('localhost', 27, '1697746017543', 'SHUVANGKAR ROY', 'Male', 'N/A', '101406905', 'N56816898', 'Assistant Teacher', 'C', 'N/A', 'N/A', '01753303039', 'royshuvangkar036@gmail.com', '', 'Hinduism', 'N/A', 'N/A', 'N/A', 'undefined', '1676650992270_shuvangkar-roy-sir-at.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-17 16:23:12'),
('localhost', 28, '1697062922031', 'Anawaruzzam Jhantu', 'Male', 'N/A', '000000001', 'D000000000', 'Assistant Teacher', 'C', 'N/A', 'N/A', 'N/A', 'Not@vailable05.com', '', 'Islam', 'N/A', 'N/A', 'N/A', 'undefined', 'male_avatar.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-19 08:58:49'),
('localhost', 29, '1697058269962', 'Sabuz Ghosh', 'Male', 'N/A', '000000002', 'D000000001', 'Assistant Teacher', 'C', 'N/A', 'N/A', 'N/A', 'Not@vailable06.com', '', 'Hinduism', 'N/A', 'N/A', 'N/A', 'undefined', 'male_avatar.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-19 08:59:25'),
('localhost', 30, '1697118747788', 'Ali Ahmmad', 'Male', 'N/A', '000000003', 'D000000003', 'Assistant Teacher', 'C', 'N/A', 'N/A', 'N/A', 'no@valueable07', '', 'Islam', 'N/A', 'N/A', 'N/A', 'undefined', 'male_avatar.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-02-19 09:00:31'),
('localhost', 31, '1697593897626', 'no name', 'Female', 'N/A', '', 'n123456', 'Assistent Teacher', 'C', 'N/A', 'N/A', 'XXXXXXXXXXX', 'api.saanvi.abc@gmail.com', '2345678901', 'undefined', '', '', 'undefined', '', '1697385522631_profile3.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-15 15:58:42'),
('localhost', 57, '1697812990300', 'Md. Shahin sikder', 'Male', 'N/A', '2353465677', '242355', 'Assistent Teacher', 'C', 'N/A', 'N/A', 'XXXXXXXXXXX', 'Shahinsikder@gmail.com', '01998031221', 'Islam', '1984-02-08', 'Boalmari, Faridpur', 'A+ve', '2020-06-18', '1697627422592_shahin sir.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-18 11:10:22'),
('localhost', 1001, '1698399497162', 'Md Omar Mina', 'Male', 'N/A', '561728', 'D478974', 'Assistant Teacher', 'C', 'N/A', 'N/A', '0', 'omarmina1969@gmail.com', '01763966494', 'Islam', 'N/A', 'N/A', 'N/A', '24-07-1999', '1697346776309_Md. Omar Mina(AT).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-15 05:12:56'),
('localhost', 1002, '1698440168423', 'Gonesh Chandra Roy', 'Male', 'N/A', '488143', 'N1069231', 'Assistant Teacher', 'C', 'N/A', 'N/A', '0', 'goneshroy1991@gmail.com', '01740894343', 'Hinduism', 'N/A', 'N/A', 'N/A', '12-06-2012', '1695704736851_Ganesh roy.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-26 05:05:36'),
('localhost', 1003, '1698567927842', 'Goutom Kumer Biswas', 'Male', 'N/A', '754668', 'D1048289', 'Assistant Teacher', 'C', 'N/A', 'N/A', '0', 'goutomkumarbiswas1978@gmail.com', '01758526699', 'Hinduism', 'N/A', 'N/A', 'N/A', '01-03-2010', '1697347423174_Goutom Kumar Biswas(AT).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-15 05:23:43'),
('localhost', 1004, '1698109706600', 'BIKASH CHANDRA BALA', 'Male', 'N/A', '100252294', 'D477684', 'Headmaster', 'A', 'N/A', 'N/A', '0', 'bcb28081968@gmail.com', '01724370108', 'Hinduism', 'N/A', 'N/A', 'N/A', '01-01-1995', '1695614872367_Bikash Chandra Bala(Head Master).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 04:07:52'),
('localhost', 1005, '1698499309268', 'Mosa.Nusrat Jahan', 'Female', 'N/A', '690363', 'N56847119', 'Assistant Teacher', 'C', 'N/A', 'N/A', '0', 'nusrat.NJ167@gmail.com', '01911075401', 'Islam', 'N/A', 'N/A', 'N/A', '01-01-2023', '1697349044280_Mst. Nusrat Jahan(AT).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-15 05:50:44'),
('localhost', 1006, '1698322655639', 'MD SAIFUDDIN SOHEL', 'Male', 'N/A', '1010101010', 'N1076783', 'Assistant Headmaster', 'B', 'Arts', 'N/A', '0', 'saifuddinsohel84@gmail.com', '01912609171', 'Islam', 'N/A', 'N/A', 'N/A', '01/08/2023', '1695616773219_Md. Saifuddin Sohel(AHT).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-25 04:39:33'),
('localhost', 1007, '1698164833502', 'Md.Hamim Miah', 'Male', 'N/A', '239027', 'N56815436', 'Assistant Teacher', 'C', 'N/A', 'N/A', '0', 'hamimmiah77@gmail.com', '01760503512', 'Islam', 'N/A', 'N/A', 'N/A', '29-01-2022', '1697348743513_Md. Hamim Miah(AT).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-15 05:45:43'),
('localhost', 1008, '1698326587047', 'Rupmala Bala', 'Female', 'N/A', '623373', 'N1104624', 'Assistant Teacher', 'C', 'N/A', 'N/A', '0', 'rupmalabala1981@gmail.com', '01762080149', 'Hinduism', 'N/A', 'N/A', 'N/A', '18-04-2011', '1697348371621_Rupmala bala(AT).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-15 05:39:31'),
('localhost', 1009, '1698328578523', 'undefined', 'Male', 'N/A', '175832', 'N56816376', 'Assistant Teacher', 'C', 'N/A', 'N/A', '0', 'swarupkumar2007@gmail.com', '01795502544', 'Hinduism', '1992-10-25', 'N/A   ', 'N/A', '29-01-2022', '1697348565413_Swarup Kumar Shil(AT).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-15 05:42:45'),
('localhost', 1010, '1698790717846', 'Tapon Kumar Mondal', 'Male', 'N/A', '490959', 'D1013839', 'Assistant Teacher', 'C', 'N/A', 'N/A', '0', 'toponkumarmondol@gmail.com', '01781330520', 'Hinduism', 'N/A', 'N/A', 'N/A', '10-04-2000', '1697346989456_Topon Kumar Mondol(AT).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-15 05:16:29'),
('localhost', 1011, '1698763842482', 'Gita Rani Biswas', 'Female', 'N/A', '171278', 'D487798', 'Assistant Teacher', 'C', 'N/A', 'N/A', '0', 'grbiswas79@gmail.com', '01720611979', 'Hinduism', 'N/A', 'N/A', 'N/A', '10-04-2002', '1697347194873_Gita Rani Biswas(AT).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-15 05:19:54'),
('localhost', 1012, '1698619300861', 'Subodh Kumar Biswas', 'Male', 'N/A', '688812', 'D477686', 'Assistant Teacher', 'C', 'N/A', 'N/A', '0', 'subodhtamar@gmail.com', '01740592230', 'Hinduism', 'N/A', 'N/A', 'N/A', '01-01-1995', '1697344748279_Subodh Kumar Biswas(AT).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-15 04:39:08'),
('localhost', 1013, '1698282814247', 'Tushar Kumar Chakrabortty', 'Male', 'N/A', '673303', 'N1143699', 'Assistant Teacher', 'C', 'N/A', 'N/A', '0', 'tusharchakrabortty621@gmail.com', '01745149937', 'Hinduism', 'N/A', 'N/A', 'N/A', '06-04-2014', '1697347693732_Tushar Kumar Chakrobortty(AT).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-15 05:28:13'),
('localhost', 1014, '1698328765586', 'Abdur Rahman', 'Male', 'N/A', '494979', 'N1128879', 'Assistant Teacher', 'C', 'N/A', 'N/A', '0', 'abdurrahmanrafia@gmail.com', '01728047047', 'Islam', 'N/A', 'N/A', 'N/A', '29-11-2015', '1697347981724_Abdur Rahman(AT).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-15 05:33:01'),
('localhost', 1015, '1698120861164', 'Mita Rani Indra', 'Female', 'N/A', '472300', 'D477685', 'Assistant Teacher', 'C', 'N/A', 'N/A', '0', 'mitaraniindra92@gmail.com', '01734130263', 'Hinduism', 'N/A', 'N/A', 'N/A', '01-01-1995', '1697346501412_Mita Rani Indra(AT).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-15 05:08:21'),
('localhost', 2001, '1698198513715', 'Nurul Islam', 'Male', 'N/A', '100399406', 'D1036374', 'Instructor', 'D', 'N/A', 'N/A', '', 'nurulislam858604@gmail.com', '01740858604', 'Islam', 'N/A', 'N/A', 'N/A', '16/09/2007', '1695713878366_14 Nurul Islam.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-26 07:37:58'),
('localhost', 2002, '1698911221882', 'Md. Sabuj Mia', 'Male', 'N/A', '583454', 'N272569', 'Instructor', 'D', 'N/A', 'N/A', '', 'sabujmia9851@gmail.com', '01772783700', 'Islam', 'N/A', 'N/A', 'N/A', '', '1695718143228_15 Md.Sabuj Mia.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-26 08:49:03'),
('localhost', 2003, '1698510917831', 'Faruk hossen', 'Male', 'N/A', '100417022', 'D2027632', 'Assistant Teacher', 'C', 'Science', 'N/A', '', 'faruk.hos09@gmail.com', '01717556835', 'Islam', '1978-05-31', 'N/A ', 'N/A', '16/01/2011', '1695733571961_Faruk Hossen.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-26 09:19:34'),
('localhost', 2004, '1698828577674', 'Robiul ', 'Male', 'N/A', '593893', '1107999', 'Assistant Teacher', 'C', 'N/A', 'N/A', '', 'robiulislamkon@gmail.com', '01747671581', 'Islam', 'N/A', 'N/A', 'N/A', '14/01/2014', '1695720739700_8 Robiul.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-26 09:32:19'),
('localhost', 2005, '1698377430582', 'Md. Saifuddin', 'Male', 'N/A', '395247', '1113721', 'Assistant Teacher', 'C', 'N/A', 'N/A', '', 'ahmedsaifuddin388@gmail.com', '01704646009', 'Islam', 'N/A', 'N/A', 'N/A', '17/02/2014', '1695720905036_11 Md.Saifuddin.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-26 09:35:05'),
('localhost', 2006, '1698199658666', 'Gourango Mandol', 'Male', 'Masters (Economics) \r\n', '100453306', 'N1037309', 'Assistant Teacher', 'C', 'N/A', 'N/A', '', 'gourangomandol83@gmail.com', '01739827483', 'Hinduism', '1983-05-03', 'N/A    ', 'N/A', '01/01/2012', '1695804121156_7 Gourango Mandol.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-27 08:42:01'),
('localhost', 2007, '1698167869734', 'Tahmina Nasrin', 'Male', 'N/A', '890993', 'N1145291', 'Assistant Teacher', 'C', 'N/A', 'N/A', '', 'tnasrin1987@gmail.com', '01758323437', 'Islam', 'N/A', 'N/A', 'N/A', '', '1695820855061_12 Tahmina Nasrin.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-27 13:20:55'),
('localhost', 2008, '1698312441327', 'Pizush roy', 'Male', 'N/A', '102589', 'N1111931', 'Assistant Teacher', 'C', 'Commerce', 'N/A', '', 'pizushroy617@gmail.com', '01982650010', 'Hinduism', 'N/A', 'N/A', 'N/A', '', '1695821026488_10 Pizush Roy.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-27 13:23:46'),
('localhost', 2009, '1698832480505', 'MOSSA. SHAHANA PERVIN', 'Female', 'N/A', '447114', 'N1062427', 'Assistant Teacher', 'C', 'N/A', 'N/A', '', 'shahanapervin799@gmail.com', '01707040388', 'Islam', 'N/A', 'N/A', 'N/A', '', '1695824344950_6 Shahana Parvin.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-27 14:19:04'),
('localhost', 2010, '1698386879354', 'RAFEA SULTANA', 'Female', 'N/A', '460820', 'D1041430', 'Assistant Teacher', 'C', 'N/A', 'N/A', '', 'rafeasultana81@gmail.com', '01737150963', 'Islam', 'N/A', 'N/A', 'N/A', '', '1695824501096_4 Rafea Sultana.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-27 14:21:41'),
('localhost', 2011, '1698395749087', 'MD. MASUDUR RAHMAN', 'Male', 'N/A', '367981', 'N1108000', 'Assistant Teacher', 'C', 'Science', 'N/A', '', 'tmasudurrahman110830@gmail.com', '01848020707', 'Islam', 'N/A', 'N/A', 'N/A', '', '1695824757231_9 Md. Masudur Rahman.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-27 14:25:57'),
('localhost', 2012, '1698205030650', 'BIKAS SEN', 'Male', 'N/A', '457901', 'D489338', 'Assistant Teacher', 'C', 'N/A', 'N/A', '', 'bikashsen866@gmail.com', '01758917633', 'undefined', 'N/A', 'N/A', 'N/A', '', '1695825280622_3 Bikash Sen.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-09-27 14:29:52'),
('localhost', 2013, '1698416190663', 'Md. Anwar Hossain', 'Male', 'N/A', '100485967', 'N1109120', 'Assistant Teacher', 'C', 'N/A', 'N/A', '', 'mahossain300@gmail.com', '01849790570', 'Islam', 'N/A', 'N/A', 'N/A', '16/03/2011', '1696410767177_13 Md.Anwar Hossain (1).jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-04 09:12:47'),
('localhost', 3728, '1698912846931892351521', 'Nazrul Islam', 'Male', 'N/A', '101540889', 'N56862474', 'Assistant Teacher ICT', 'C', 'N/A', 'N/A', 'XXXXXXXXXXX', 'nazrulislamkbf77@gmail.com', '01750076164', 'Islam', '1978-10-05', 'Boalmari, Faridpur', 'A+ve', '2004-10-14', '1698912846928_Gallery_1691899059922.png', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-11-02 08:14:06'),
('localhost', 3729, '169891657325875886318', 'Mohammad Moniruzzaman', 'Male', 'N/A', '101540897', 'N56851763', 'Headmaster', 'A', 'N/A', 'N/A', 'XXXXXXXXXXX', 'bejidangaamenahs@gmail.com', '01712191666', 'Islam', '1976-09-06', 'Bejidanga, Alfadanga, Faridpur', 'B+ve', '2003-01-01', '1698916573253_FB_IMG_1698915773594.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-11-02 09:16:13');

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

INSERT INTO `transcript_report` (`domain`, `ID`, `at_date`, `session`, `class`, `section`, `subject`, `subject_code`, `chapter`, `pi`, `pi_group`, `pi_no`, `checkout`, `bg_color`, `teacher_uuid`, `student_uuid`, `transcript_name`, `name`, `roll`, `avatar`, `at_status`) VALUES
('localhost', 1, '2024-03-03 16:23:41', 2024, 'Six', 'A', 'English', '', '6_1_1', '-1', 'group01', 0, '1697451431015613ef00329fa30032ab96_1_1', 'bg-danger', '1697209362834', '1697451431015', '', 'Sumi Akter', 1, '1697221782178_download (1).jpeg', 'incomplete'),
('localhost', 2, '2024-03-03 16:23:42', 2024, 'Six', 'A', 'English', '', '6_1_2', '-1', 'group01', 0, '1697451431015613ef00329fa30032ab96_1_2', 'bg-danger', '1697209362834', '1697451431015', '', 'Sumi Akter', 1, '1697221782178_download (1).jpeg', 'incomplete'),
('localhost', 3, '2024-03-03 16:23:43', 2024, 'Six', 'A', 'English', '', '6_1_3', '0', 'group01', 0, '1697451431015613ef00329fa30032ab96_1_3', 'bg-warning', '1697209362834', '1697451431015', '', 'Sumi Akter', 1, '1697221782178_download (1).jpeg', 'incomplete'),
('localhost', 4, '2024-03-03 16:23:44', 2024, 'Six', 'A', 'English', '', '6_2_1', '0', 'group02', 0, '1697451431015613ef00329fa30032ab96_2_1', 'bg-warning', '1697209362834', '1697451431015', '', 'Sumi Akter', 1, '1697221782178_download (1).jpeg', 'incomplete'),
('localhost', 5, '2024-03-03 16:23:45', 2024, 'Six', 'A', 'English', '', '6_2_2', '1', 'group02', 0, '1697451431015613ef00329fa30032ab96_2_2', 'bg-success', '1697209362834', '1697451431015', '', 'Sumi Akter', 1, '1697221782178_download (1).jpeg', 'incomplete'),
('localhost', 6, '2024-03-03 16:23:47', 2024, 'Six', 'A', 'English', '', '6_3_1', '1', 'group03', 0, '1697451431015613ef00329fa30032ab96_3_1', 'bg-success', '1697209362834', '1697451431015', '', 'Sumi Akter', 1, '1697221782178_download (1).jpeg', 'incomplete');

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
('bejidangakawhs.saanviabc.com', 31, '2023-11-02 13:18:29', '', 'user@admin.com', '905e60b34aa5eb27556e23e9a46bd144', 'admin', 'male_avatar.png');

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
(16, 'saanviabc.com', 'ABC123XYZS', '10/7/2023', '10/7/2024', 1, 1, '2023-10-07'),
(17, 'sahasrailpphs.saanviabc.com', 'ABC123XYZSS', '14/10/2023', '14/10/2024', 1, 1, '2023-10-07'),
(18, 'gohailbarimb.saanviabc.com', 'ABC123XYZG', '14/10/2023', '14/10/2024', 1, 1, '2023-10-07'),
(19, 'kadirdiblhs.saanviabc.com', 'ABC123XYZK', '14/10/2023', '14/10/2024', 1, 1, '2023-10-07'),
(20, 'domain.saanviabc.com', 'ABC-123-XYZ', '10/19/2023', '10/5/2024', 1, 0, '2023-10-19'),
(30, 'rangamularkandihaacademy.edu.bd', 'ABC-123-XYZR', '10/19/2023', '10/5/2024', 1, 1, '2023-10-19'),
(31, 'tamarhazijmhs.edu.bd', '5BE76C0E625E1E3C7041', '10/23/2023', '23/10/2024', 1, 1, '2023-10-23'),
(33, 'umarnagarcdm.edu.bd', '08F4192CBB12BB06F145', '10/23/2023', '23/10/2024', 1, 1, '2023-10-23'),
(34, 'bga.saanviabc.com', 'D39416EC1BA991C31C6A', '11/1/2023', '1/11/2024', 0, 1, '2023-11-01'),
(36, 'bejidangakawhs.saanviabc.com', 'C6E1A447CB3B40D3AA86', '11/2/2023', '2/11/2024', 1, 1, '2023-11-02');

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
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `authentication_session`
--
ALTER TABLE `authentication_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `bi_catagory`
--
ALTER TABLE `bi_catagory`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `catagory_code` (`catagory_code`);

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
-- Indexes for table `ini_subject`
--
ALTER TABLE `ini_subject`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `catagory_code` (`subject_code`);

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
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `student_uuid` (`student_uuid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `student_rank`
--
ALTER TABLE `student_rank`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `catagory_code` (`subject_code`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `email` (`email`),
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bi_catagory`
--
ALTER TABLE `bi_catagory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `ini_subject`
--
ALTER TABLE `ini_subject`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pis_mark`
--
ALTER TABLE `pis_mark`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT for table `routine`
--
ALTER TABLE `routine`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=632;

--
-- AUTO_INCREMENT for table `school_settings`
--
ALTER TABLE `school_settings`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2349;

--
-- AUTO_INCREMENT for table `student_rank`
--
ALTER TABLE `student_rank`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1243;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3731;

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_admin`
--
ALTER TABLE `user_admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `___ini`
--
ALTER TABLE `___ini`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
