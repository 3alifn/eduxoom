-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2023 at 10:35 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saanvi`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `ID` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `heading` varchar(500) NOT NULL,
  `paragraph` text NOT NULL,
  `photos` varchar(500) NOT NULL,
  `video` varchar(500) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `ID` int(11) NOT NULL,
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
  `yearly_income` int(11) NOT NULL,
  `last_education` varchar(100) NOT NULL,
  `roll` int(11) NOT NULL,
  `reg` int(11) NOT NULL,
  `board` varchar(100) NOT NULL,
  `passing_year` int(11) NOT NULL,
  `join_group` varchar(100) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `ID` int(11) NOT NULL,
  `session` int(11) NOT NULL DEFAULT 2023,
  `find_date` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `roll` int(11) NOT NULL,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `attachment` varchar(100) NOT NULL,
  `replay` text NOT NULL,
  `avatar` varchar(500) NOT NULL DEFAULT 'male_avatar.png',
  `at_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`ID`, `session`, `find_date`, `subject`, `comment`, `name`, `student_id`, `roll`, `class`, `section`, `attachment`, `replay`, `avatar`, `at_date`) VALUES
(1, 2023, '', 'sadad', 'fgewrg', 'Nusrat Jahan', 715661, 1, 'Six', 'A', '1684999482927_git-cheat-sheet.pdf', '', 'female_avatar.png', '2023-05-25 07:24:42'),
(2, 2023, '', 'as', 'assa', 'Nusrat Jahan', 715661, 1, 'Six', 'A', '1686761085762_git-cheat-sheet.pdf', '', 'female_avatar.png', '2023-06-14 16:44:45'),
(3, 2023, '', 'sdw', 'wef', 'Nusrat Jahan', 715661, 1, 'Six', 'A', '1686761214893_git-cheat-sheet.pdf', 'done', 'female_avatar.png', '2023-06-14 16:46:54');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `ID` int(11) NOT NULL,
  `session` int(11) NOT NULL,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `roll` int(11) NOT NULL,
  `student_uuid` int(11) NOT NULL,
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

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`ID`, `session`, `class`, `section`, `student_id`, `roll`, `student_uuid`, `name`, `avatar`, `find_date`, `at_find_date`, `at_date`, `at_status`, `year`, `month`, `day`, `present`, `absent`) VALUES
(9, 0, 'Six', 'A', 715661, 1, 117, 'Nusrat Jahan', 'female_avatar.png', '5/2/2023', '2023/5/2', '2023-05-02 06:44:11', 'Present', '2023', 'May', 'Tue 2', 0, 0),
(10, 0, 'Six', 'A', 116735, 3, 141, 'Mst Samia Islam Asha', 'female_avatar.png', '5/2/2023', '2023/5/2', '2023-05-02 06:44:11', 'Absent', '2023', 'May', 'Tue 2', 0, 0),
(11, 0, 'Six', 'A', 543278, 4, 134, 'Priyonti Saha', 'female_avatar.png', '5/2/2023', '2023/5/2', '2023-05-02 06:44:12', 'Present', '2023', 'May', 'Tue 2', 0, 0),
(12, 0, 'Six', 'A', 803058, 6, 78, 'Fatima choya', 'female_avatar.png', '5/2/2023', '2023/5/2', '2023-05-02 06:44:14', 'Absent', '2023', 'May', 'Tue 2', 0, 0),
(13, 0, 'Six', 'A', 285783, 7, 127, 'Jilfa Tanjum', 'female_avatar.png', '5/2/2023', '2023/5/2', '2023-05-02 06:44:15', 'Present', '2023', 'May', 'Tue 2', 0, 0),
(14, 2023, 'Six', 'A', 715661, 1, 117, 'Nusrat Jahan', 'female_avatar.png', '5/25/2023', '2023/5/25', '2023-05-25 06:53:51', 'Absent', '', 'May', 'Thu 25', 0, 0),
(15, 2023, 'Six', 'A', 116735, 3, 141, 'Mst Samia Islam Asha', 'female_avatar.png', '5/25/2023', '2023/5/25', '2023-05-25 06:53:52', 'Present', '', 'May', 'Thu 25', 0, 0),
(16, 2023, 'Six', 'A', 543278, 4, 134, 'Priyonti Saha', 'female_avatar.png', '5/25/2023', '2023/5/25', '2023-05-25 06:53:53', 'Present', '', 'May', 'Thu 25', 0, 0),
(17, 2023, 'Six', 'A', 803058, 6, 78, 'Fatima choya', 'female_avatar.png', '5/25/2023', '2023/5/25', '2023-05-25 06:53:54', 'Absent', '', 'May', 'Thu 25', 0, 0),
(18, 2023, 'Six', 'A', 285783, 7, 127, 'Jilfa Tanjum', 'female_avatar.png', '5/25/2023', '2023/5/25', '2023-05-25 06:53:55', 'Present', '', 'May', 'Thu 25', 0, 0),
(19, 2023, 'Six', 'A', 813382, 8, 94, 'Samapti Biswas', 'female_avatar.png', '5/25/2023', '2023/5/25', '2023-05-25 06:53:56', 'Absent', '', 'May', 'Thu 25', 0, 0),
(20, 2023, 'Six', 'A', 727473, 9, 132, 'Gina Tahmida Titir', 'female_avatar.png', '5/25/2023', '2023/5/25', '2023-05-25 06:53:57', 'Present', '', 'May', 'Thu 25', 0, 0),
(21, 2023, 'Six', 'A', 548902, 11, 131, 'Raisa Rahman Jikra', 'female_avatar.png', '5/25/2023', '2023/5/25', '2023-05-25 06:53:59', 'Absent', '', 'May', 'Thu 25', 0, 0),
(22, 2023, 'Six', 'A', 715661, 1, 117, 'Nusrat Jahan', 'female_avatar.png', '6/2/2023', '2023/6/2', '2023-06-02 17:13:49', 'Absent', '', 'Jun', 'Fri 2', 0, 0),
(23, 2023, 'Six', 'A', 116735, 3, 141, 'Mst Samia Islam Asha', 'female_avatar.png', '6/2/2023', '2023/6/2', '2023-06-02 17:13:52', 'Absent', '', 'Jun', 'Fri 2', 0, 0),
(24, 2023, 'Six', 'A', 723583, 12, 145, 'Israt Jahan', 'female_avatar.png', '6/2/2023', '2023/6/2', '2023-06-02 17:17:46', 'Present', '', 'Jun', 'Fri 2', 0, 0),
(25, 2023, 'Six', 'A', 548902, 11, 131, 'Raisa Rahman Jikra', 'female_avatar.png', '6/2/2023', '2023/6/2', '2023-06-02 17:17:48', 'Absent', '', 'Jun', 'Fri 2', 0, 0),
(26, 2023, 'Six', 'A', 12687, 13, 84, 'Oishorjo Sharkar', 'female_avatar.png', '6/2/2023', '2023/6/2', '2023-06-02 17:19:24', 'Present', '', 'Jun', 'Fri 2', 0, 0),
(27, 2023, 'Six', 'A', 406635, 14, 135, 'Tonu Pul', 'female_avatar.png', '6/2/2023', '2023/6/2', '2023-06-02 17:19:33', 'Absent', '', 'Jun', 'Fri 2', 0, 0),
(28, 2023, 'Six', 'A', 103345, 15, 81, 'Nusrat Jahan Nowrin ', 'female_avatar.png', '6/2/2023', '2023/6/2', '2023-06-02 17:19:34', 'Absent', '', 'Jun', 'Fri 2', 0, 0),
(29, 2023, 'Six', 'A', 715661, 1, 117, 'Nusrat Jahan', 'female_avatar.png', '6/7/2023', '2023/6/7', '2023-06-07 06:28:50', 'Present', '', 'Jun', 'Wed 7', 0, 0),
(30, 2023, 'Six', 'A', 116735, 3, 141, 'Mst Samia Islam Asha', 'female_avatar.png', '6/7/2023', '2023/6/7', '2023-06-07 06:28:51', 'Absent', '', 'Jun', 'Wed 7', 0, 0),
(31, 2023, 'Six', 'A', 543278, 4, 134, 'Priyonti Saha', 'female_avatar.png', '6/7/2023', '2023/6/7', '2023-06-07 06:28:52', 'Present', '', 'Jun', 'Wed 7', 0, 0),
(32, 2023, 'Six', 'A', 803058, 6, 78, 'Fatima choya', 'female_avatar.png', '6/7/2023', '2023/6/7', '2023-06-07 06:28:53', 'Absent', '', 'Jun', 'Wed 7', 0, 0),
(33, 2023, 'Six', 'A', 285783, 7, 127, 'Jilfa Tanjum', 'female_avatar.png', '6/7/2023', '2023/6/7', '2023-06-07 06:28:55', 'Present', '', 'Jun', 'Wed 7', 0, 0),
(34, 2023, 'Six', 'A', 813382, 8, 94, 'Samapti Biswas', 'female_avatar.png', '6/7/2023', '2023/6/7', '2023-06-07 06:28:56', 'Absent', '', 'Jun', 'Wed 7', 0, 0),
(35, 2023, 'Six', 'A', 727473, 9, 132, 'Gina Tahmida Titir', 'female_avatar.png', '6/7/2023', '2023/6/7', '2023-06-07 06:28:57', 'Present', '', 'Jun', 'Wed 7', 0, 0),
(36, 2023, 'Six', 'A', 779396, 10, 77, 'Jannati Khanom', 'female_avatar.png', '6/7/2023', '2023/6/7', '2023-06-07 06:29:04', 'Present', '', 'Jun', 'Wed 7', 0, 0),
(37, 2023, 'Six', 'A', 548902, 11, 131, 'Raisa Rahman Jikra', 'female_avatar.png', '6/7/2023', '2023/6/7', '2023-06-07 06:29:05', 'Absent', '', 'Jun', 'Wed 7', 0, 0),
(38, 2023, 'Six', 'A', 723583, 12, 145, 'Israt Jahan', 'female_avatar.png', '6/7/2023', '2023/6/7', '2023-06-07 06:29:06', 'Present', '', 'Jun', 'Wed 7', 0, 0),
(39, 2023, 'Six', 'A', 12687, 13, 84, 'Oishorjo Sharkar', 'female_avatar.png', '6/7/2023', '2023/6/7', '2023-06-07 06:29:07', 'Absent', '', 'Jun', 'Wed 7', 0, 0),
(40, 2023, 'Six', 'A', 406635, 14, 135, 'Tonu Pul', 'female_avatar.png', '6/7/2023', '2023/6/7', '2023-06-07 06:29:09', 'Present', '', 'Jun', 'Wed 7', 0, 0),
(41, 2023, 'Six', 'A', 103345, 15, 81, 'Nusrat Jahan Nowrin ', 'female_avatar.png', '6/7/2023', '2023/6/7', '2023-06-07 06:29:11', 'Absent', '', 'Jun', 'Wed 7', 0, 0),
(42, 2023, 'Six', 'A', 347998, 17, 133, 'Shayma Mitra', 'female_avatar.png', '6/7/2023', '2023/6/7', '2023-06-07 06:29:12', 'Present', '', 'Jun', 'Wed 7', 0, 0),
(43, 2023, 'Six', 'A', 715661, 1, 117, 'Nusrat Jahan', '1686761579121_female_avatar.png', '6/16/2023', '2023/6/16', '2023-06-16 13:08:30', 'Absent', '', 'Jun', 'Fri 16', 0, 0),
(44, 2023, 'Six', 'A', 116735, 3, 141, 'Mst Samia Islam Asha', 'female_avatar.png', '6/16/2023', '2023/6/16', '2023-06-16 13:08:31', 'Present', '', 'Jun', 'Fri 16', 0, 0);

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
('Y8VKnEjX1qMET-mI1XCPtfwCig249Ukf', 1687941320, '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-06-28T08:35:19.940Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `bi_catagory`
--

CREATE TABLE `bi_catagory` (
  `ID` int(11) NOT NULL,
  `catagory_name` varchar(300) NOT NULL,
  `catagory_code` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bi_catagory`
--

INSERT INTO `bi_catagory` (`ID`, `catagory_name`, `catagory_code`) VALUES
(19, 'দলীয়-কাজে-সক্রিয়-অংশগ্রহণ-করেছে', 'e408979fb65381a88904'),
(20, 'নিজের-বক্তব্য-ও-মতামত-দলের-সবার-সাথে-শেয়ার-করেছে-এবং-অন্যদের-বক্তব্য-শুনে-গঠনমূলক-আলোচনায়-অংশ-নিচ্ছে', 'e408979fb65381a88804'),
(21, 'নির্দিষ্ট-সমস্যা-সমাধানে-পূর্বনির্ধারিত-প্রক্রিয়া-অনুযায়ী-কাজের-ধাপসমূহ-যথাযথভাবে-অনুসরণ-করছে', 'e408979fb65381a88704'),
(23, 'পরিকল্পনা-অনুযায়ী-যথাসময়ে-নির্ধারিত-কাজ-সম্পন্ন-করছে', 'e408979fb65381a88604'),
(24, 'দলীয়-ও-একক-কাজের-বিভিন্ন-ধাপে-সততার-পরিচয়-দিচ্ছে', 'e408979fb65381a88504'),
(26, 'নিজের-দায়িত্ব-পালনের-পাশাপাশি-অন্যদের-কাজে-সহযোগিতা-করছে-এবং-দলে-সমন্বয়-সাধন-করছে', 'e408979fb65381a88404'),
(27, 'অন্যদের-দৃষ্টিভঙ্গির-ভিন্নতা-ও-বৈচিত্র্যের-প্রতি-শ্রদ্ধা-রেখে-তাদের-মতামতের-গঠনমূলক-সমালোচনা-করছে', 'e408979fb65381a88304'),
(28, 'দলের-অন্যদের-কাজের-উপর-ভিত্তি-করে-গঠনমূলক-ফিডব্যাক-দিচ্ছে', 'e408979fb65381a88104'),
(41, 'ব্যাক্তিগত-যোগাগোগ-উপস্থাপন-মডেল-তৈরি-উপকরণ-নির্বাচন-ও-ব্যবহার-ইত্যাদি-ক্ষেত্রে-পরিমিতিবোধ-বৈচিত্র্যময়তা-ও-নান্দনিকতা-বজায়-রেখে-সিদ্ধান্ত-নিচ্ছে', 'e408979fb65381a88204'),
(42, ' শিখন-অভিজ্ঞতাসমূহ-চলাকালে-পাঠ্যপুস্তকে-বর্ণিত-কাজগুলো-সম্পন্ন-করছে-এবং-বইয়ের-নির্ধারিত-স্থানে-প্রয়োজনীয়-ছক-অনুশীলনী-পূরণ-করছে', '64597dc9d59cb9685953');

-- --------------------------------------------------------

--
-- Table structure for table `bi_mark`
--

CREATE TABLE `bi_mark` (
  `ID` int(11) NOT NULL,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `teacher_pdsid` int(11) NOT NULL,
  `session` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `roll` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `catagory` varchar(100) NOT NULL,
  `bi` int(11) NOT NULL,
  `checkout` varchar(500) NOT NULL,
  `bg_color` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bi_transcript`
--

CREATE TABLE `bi_transcript` (
  `ID` int(11) NOT NULL,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `teacher_pdsid` int(11) NOT NULL,
  `session` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `catagory` varchar(100) NOT NULL,
  `bi` int(11) NOT NULL,
  `checkout` varchar(500) NOT NULL,
  `bi_point` int(11) NOT NULL,
  `bg_color` varchar(100) NOT NULL DEFAULT 'null'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `ID` int(11) NOT NULL,
  `item_name` text NOT NULL,
  `order` int(11) NOT NULL,
  `at_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`ID`, `item_name`, `order`, `at_date`) VALUES
(4, '1676390540741_IMG_7134.jpg', 0, '2023-02-14 16:02:21'),
(5, '1676390540876_IMG_7135.jpg', 0, '2023-02-14 16:02:21'),
(6, '1676390540920_IMG_7137.jpg', 0, '2023-02-14 16:02:21'),
(8, '1676390540959_IMG_7152.jpg', 0, '2023-02-14 16:02:21'),
(10, '1676390541014_IMG_7156.jpg', 0, '2023-02-14 16:02:21'),
(11, '1676390541036_IMG_7157.jpg', 0, '2023-02-14 16:02:21'),
(12, '1676390541059_IMG_7158.jpg', 0, '2023-02-14 16:02:21'),
(13, '1676390541078_IMG_7167.jpg', 0, '2023-02-14 16:02:21'),
(15, '1676390577623_campus-02.jpg', 0, '2023-02-14 16:02:57'),
(17, '1676390577633_campus-04.jpg', 0, '2023-02-14 16:02:57'),
(19, '1676390660522_campus-01.jpg', 0, '2023-02-14 16:04:20'),
(20, '1678003950770_photo_2023-03-05_13-24-26.jpg', 0, '2023-03-05 08:12:30'),
(22, '1678003950789_photo_2023-03-05_13-24-45.jpg', 0, '2023-03-05 08:12:30'),
(25, '1678004004197_photo_2023-03-05_13-24-31.jpg', 0, '2023-03-05 08:13:24'),
(26, '1678004011709_photo_2023-03-05_13-24-06.jpg', 0, '2023-03-05 08:13:31');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `ID` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `heading` varchar(500) NOT NULL,
  `paragraph` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `cellphone` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `ID` int(11) NOT NULL,
  `data_id` text NOT NULL,
  `item_type` varchar(100) NOT NULL DEFAULT 'image',
  `item_title` varchar(100) NOT NULL DEFAULT 'demo',
  `item_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`ID`, `data_id`, `item_type`, `item_title`, `item_name`) VALUES
(19, 'Teachers Photos849181.6628629937', 'image', 'Teachers Photos', '1676390816526_160562939_258876012536532_4771389012432626729_n.jpg'),
(20, 'Teachers Photos849181.6628629937', 'image', 'Teachers Photos', '1676390816530_246544880_399575168466615_8724356589975183994_n.jpg'),
(21, 'Teachers Photos849181.6628629937', 'image', 'Teachers Photos', '1676390816530_274311949_477295037361294_3002649854318473515_n.jpg'),
(22, 'Teachers Photos849181.6628629937', 'image', 'Teachers Photos', '1676390816533_274592783_479528350471296_9013161525133088413_n.jpg'),
(23, 'Teachers Photos849181.6628629937', 'image', 'Teachers Photos', '1676390816536_274778837_481738476916950_5127839849507078417_n.jpg'),
(24, 'Teachers Photos849181.6628629937', 'image', 'Teachers Photos', '1676390816539_274789341_481739406916857_4646450783554639950_n.jpg'),
(25, 'Teachers Photos849181.6628629937', 'image', 'Teachers Photos', '1676390816542_274806611_481739126916885_4035213937466226697_n.jpg'),
(26, 'Teachers Photos849181.6628629937', 'image', 'Teachers Photos', '1676390816544_274812909_481738566916941_6323217433591090201_n.jpg'),
(27, 'Teachers Photos849181.6628629937', 'image', 'Teachers Photos', '1676390816546_274818440_481738746916923_7822528082370847134_n.jpg'),
(28, 'Teachers Photos849181.6628629937', 'image', 'Teachers Photos', '1676390816549_274819202_481739323583532_9008617594855248515_n.jpg'),
(29, 'Teachers Photos849181.6628629937', 'image', 'Teachers Photos', '1676390816552_274924627_482891923468272_8625178152559883061_n.jpg'),
(30, 'Teachers Photos849181.6628629937', 'image', 'Teachers Photos', '1676390816556_274928016_482891480134983_7386022076394898131_n.jpg'),
(31, 'Teachers Photos849181.6628629937', 'image', 'Teachers Photos', '1676390816560_274931489_482891983468266_7677174755519683474_n.jpg'),
(32, 'Teachers Photos849181.6628629937', 'image', 'Teachers Photos', '1676390816563_274932002_482891606801637_3059100974107554096_n.jpg'),
(33, 'Teachers Photos849181.6628629937', 'image', 'Teachers Photos', '1676390816566_274933574_482891896801608_6234432120780520908_n.jpg'),
(34, 'Teachers Photos849181.6628629937', 'image', 'Teachers Photos', '1676390816569_275211410_485529629871168_939100947318109580_n.jpg'),
(35, 'Teachers Photos849181.6628629937', 'image', 'Teachers Photos', '1676390816572_275267552_486040129820118_2067959220377101069_n.jpg'),
(36, 'Students Photos431735.4250736833', 'image', 'Students Photos', '1676390830412_254739681_413151173775681_2379299107710377038_n.jpg'),
(37, 'Students Photos431735.4250736833', 'image', 'Students Photos', '1676390830416_275283378_486040316486766_2613310678506526423_n.jpg'),
(38, 'Students Photos431735.4250736833', 'image', 'Students Photos', '1676390830420_321652220_739918747078893_7165220673843302775_n.jpg'),
(39, 'Students Photos431735.4250736833', 'image', 'Students Photos', '1676390830430_323136294_3103735449772691_3874189911242441605_n.jpg'),
(40, 'Students Photos431735.4250736833', 'image', 'Students Photos', '1676390830437_323917262_536061755138562_197837421049024903_n.jpg'),
(41, 'Events Photos711811.9513222919', 'image', 'Events Photos', '1676390845099_117359538_141366314287503_2834147239263642972_n.jpg'),
(42, 'Events Photos711811.9513222919', 'image', 'Events Photos', '1676390845103_117645810_141366554287479_4313937401987113365_n.jpg'),
(43, 'Events Photos711811.9513222919', 'image', 'Events Photos', '1676390845107_159795690_258876132536520_8752995061774270241_n.jpg'),
(44, 'Events Photos711811.9513222919', 'image', 'Events Photos', '1676390845116_186564429_307161694374630_2250305025064520104_n.jpg'),
(45, 'Events Photos711811.9513222919', 'image', 'Events Photos', '1676390845120_236141443_357944632629669_8676072964809044905_n.jpg'),
(46, 'Events Photos711811.9513222919', 'image', 'Events Photos', '1676390845122_236644761_357944675962998_9045203153391484101_n.jpg'),
(47, 'Events Photos711811.9513222919', 'image', 'Events Photos', '1676390845123_236927928_357944802629652_5364755012775998827_n.jpg'),
(48, 'Events Photos711811.9513222919', 'image', 'Events Photos', '1676390845126_237069251_357944905962975_7205885622003238823_n.jpg'),
(49, 'Events Photos711811.9513222919', 'image', 'Events Photos', '1676390845129_237791403_357944552629677_2233631275523979534_n.jpg'),
(50, 'Events Photos711811.9513222919', 'image', 'Events Photos', '1676390845133_238294558_357944942629638_7036513676884509119_n.jpg'),
(51, 'Events Photos711811.9513222919', 'image', 'Events Photos', '1676390845135_238893714_357944855962980_7234742075520558650_n.jpg'),
(52, 'Events Photos711811.9513222919', 'image', 'Events Photos', '1676390845168_246529568_399575115133287_3505241995395797830_n.jpg'),
(53, 'Events Photos711811.9513222919', 'image', 'Events Photos', '1676390845172_274339357_477294984027966_1439929268345298072_n.jpg'),
(54, 'Events Photos711811.9513222919', 'image', 'Events Photos', '1676390845178_275293691_486039916486806_1887725246070063981_n.jpg'),
(55, 'Events Photos711811.9513222919', 'image', 'Events Photos', '1676390845179_284396756_545383147219149_5892662898680257277_n.jpg'),
(56, 'Spoken English Tips667874.9855518858', 'video', 'Spoken English Tips', 'https://www.youtube.com/embed/PO58e0Z4dbE'),
(57, 'Spoken English Tips667874.9855518858', 'video', 'Spoken English Tips', 'https://www.youtube.com/embed/RsZ0WGHIipw'),
(58, 'Spoken English Tips667874.9855518858', 'video', 'Spoken English Tips', 'https://www.youtube.com/embed/nStkNk_inmM'),
(59, 'Spoken English Tips667874.9855518858', 'video', 'Spoken English Tips', 'https://www.youtube.com/embed/FhJ-aG3kKT0'),
(60, 'Spoken English Tips667874.9855518858', 'video', 'Spoken English Tips', 'https://www.youtube.com/embed/AErb4X8VAEQ'),
(61, 'Spoken English Tips667874.9855518858', 'video', 'Spoken English Tips', 'https://www.youtube.com/embed/qnaoyB06ACg'),
(62, 'Spoken English Tips667874.9855518858', 'video', 'Spoken English Tips', 'https://www.youtube.com/embed/9-keFrPAMTk'),
(135, 'Campus Photos113963.42820085537', 'image', 'Campus Photos', '1678012814329_1676390788197_campus-01.jpg'),
(136, 'Campus Photos113963.42820085537', 'image', 'Campus Photos', '1678012814335_1676390788199_campus-02.jpg'),
(137, 'Campus Photos113963.42820085537', 'image', 'Campus Photos', '1678012814349_1676390788206_campus-04.jpg'),
(138, 'Campus Photos113963.42820085537', 'image', 'Campus Photos', '1678012814362_1676390788214_campus-05.jpg'),
(139, 'Campus Photos113963.42820085537', 'image', 'Campus Photos', '1678012814372_1676390788218_campus-06.jpg'),
(140, 'Campus Photos113963.42820085537', 'image', 'Campus Photos', '1678012814396_1676390788229_campus-07.jpg'),
(141, 'Campus Photos113963.42820085537', 'image', 'Campus Photos', '1678012814405_1676390788235_campus-08.jpg'),
(142, 'Campus Photos113963.42820085537', 'image', 'Campus Photos', '1678012814415_1676390788246_IMG_7134.jpg'),
(143, 'Campus Photos113963.42820085537', 'image', 'Campus Photos', '1678012814487_1676390788291_IMG_7135.jpg'),
(144, 'Campus Photos113963.42820085537', 'image', 'Campus Photos', '1678012814546_1676390788349_IMG_7137.jpg'),
(145, 'Campus Photos113963.42820085537', 'image', 'Campus Photos', '1678012814573_1676390788400_IMG_7145.jpg'),
(146, 'Campus Photos113963.42820085537', 'image', 'Campus Photos', '1678012814608_1676390788451_IMG_7152.jpg'),
(147, 'Campus Photos113963.42820085537', 'image', 'Campus Photos', '1678012814630_1676390788466_IMG_7155.jpg'),
(148, 'Campus Photos113963.42820085537', 'image', 'Campus Photos', '1678012814662_1676390788522_IMG_7156.jpg'),
(149, 'Campus Photos113963.42820085537', 'image', 'Campus Photos', '1678012814690_1676390788555_IMG_7157.jpg'),
(150, 'Campus Photos113963.42820085537', 'image', 'Campus Photos', '1678012814746_1676390788634_IMG_7158.jpg'),
(151, 'Campus Photos113963.42820085537', 'image', 'Campus Photos', '1678012814769_1676390788693_IMG_7167.jpg'),
(152, 'Campus Photos113963.42820085537', 'image', 'Campus Photos', '1678012814794_photo_2023-03-05_13-24-06.jpg'),
(153, 'Campus Photos113963.42820085537', 'image', 'Campus Photos', '1678012814799_photo_2023-03-05_13-24-26.jpg'),
(154, 'Campus Photos113963.42820085537', 'image', 'Campus Photos', '1678012814801_photo_2023-03-05_13-24-31.jpg'),
(155, 'Campus Photos113963.42820085537', 'image', 'Campus Photos', '1678012814805_photo_2023-03-05_13-24-36.jpg'),
(156, 'Campus Photos113963.42820085537', 'image', 'Campus Photos', '1678012814815_photo_2023-03-05_13-24-41.jpg'),
(157, 'Campus Photos113963.42820085537', 'image', 'Campus Photos', '1678012814818_photo_2023-03-05_13-24-45.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `ID` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `heading` varchar(500) NOT NULL,
  `paragraph` text NOT NULL,
  `question` varchar(500) NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `ID` int(11) NOT NULL,
  `session` int(11) NOT NULL DEFAULT 2023,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `roll` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` varchar(100) NOT NULL,
  `fees_type` varchar(100) NOT NULL,
  `discount` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `paid` int(11) NOT NULL,
  `due` int(11) NOT NULL,
  `at_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_system`
--

CREATE TABLE `grade_system` (
  `ID` int(11) NOT NULL,
  `grade` varchar(100) DEFAULT NULL,
  `start_mark` int(11) DEFAULT NULL,
  `end_mark` int(11) DEFAULT NULL,
  `percent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grade_system`
--

INSERT INTO `grade_system` (`ID`, `grade`, `start_mark`, `end_mark`, `percent`) VALUES
(1, 'A+', 80, 100, 0),
(3, 'A', 70, 79, 0),
(4, 'A-', 60, 69, 0),
(5, 'B', 50, 59, 0),
(6, 'C', 40, 49, 0),
(7, 'D', 33, 39, 0);

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `ID` int(11) NOT NULL,
  `year` varchar(100) NOT NULL DEFAULT '2022',
  `book_name` varchar(100) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `section_name` varchar(100) NOT NULL,
  `book_author` varchar(100) NOT NULL,
  `book_copy` int(11) NOT NULL,
  `book_photos` varchar(100) NOT NULL DEFAULT 'book_avatar.png',
  `description` text NOT NULL,
  `at_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`ID`, `year`, `book_name`, `class_name`, `section_name`, `book_author`, `book_copy`, `book_photos`, `description`, `at_date`) VALUES
(5, '2022', 'NodeJs-II', 'Ten', 'A', 'Ryan Dahl', 30, 'book_avatar.png', 'web programming skill development.', '2023-06-14 17:57:25');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `ID` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `session` int(11) NOT NULL DEFAULT 2023,
  `find_date` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `notice_from` varchar(100) NOT NULL,
  `notice_for` varchar(100) NOT NULL,
  `attachment` varchar(100) NOT NULL,
  `at_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`ID`, `title`, `session`, `find_date`, `description`, `notice_from`, `notice_for`, `attachment`, `at_date`) VALUES
(6, 'Exam Notice', 2023, '', 'Attention all student for next exam!', '', '', 'demo.pdf', '2023-06-14 18:00:11'),
(7, 'Exam Notice', 2023, '', 'Attention all student for next exam!', '', '', 'demo.pdf', '2023-06-14 18:03:48'),
(8, 'Exam Notice', 2023, '', 'Attention all student for next exam!', '', '', 'demo.pdf', '2023-06-14 18:04:31'),
(9, 'Exam Notice', 2023, '', 'Attention all student for next exam!', '', '', 'demo.pdf', '2023-06-14 18:04:59'),
(10, 'Exam Notice', 2023, '', 'Attention all student for next exam!', '', '', '1686765979589_demo.pdf', '2023-06-14 18:06:19');

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `ID` int(11) NOT NULL,
  `session` int(11) NOT NULL DEFAULT 2023,
  `name` varchar(100) NOT NULL,
  `gender` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL DEFAULT 'male_avatar.png',
  `password` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `relation` varchar(100) NOT NULL DEFAULT 'N/A',
  `permission` varchar(100) NOT NULL DEFAULT 'deny',
  `at_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`ID`, `session`, `name`, `gender`, `email`, `telephone`, `avatar`, `password`, `student_id`, `class`, `section`, `relation`, `permission`, `at_date`) VALUES
(2, 2023, 'mr.demo', 'Male', 'alifnayon30@gmail.com', '01739446327', '1686939240284_Screenshot 2023-06-04 160540.png', 'password', 715661, 'undefined', 'undefined', 'Father', 'allow', '2023-06-16 17:31:06'),
(3, 2023, 'mr.demo', 'Male', 'seawebit@gmail.com', '01739446327', 'male_avatar.png', 'password', 715661, 'undefined', 'undefined', 'N/A', 'allow', '2023-06-17 18:46:10');

-- --------------------------------------------------------

--
-- Table structure for table `pic_mark`
--

CREATE TABLE `pic_mark` (
  `ID` int(11) NOT NULL,
  `session` int(11) NOT NULL DEFAULT 2023,
  `at_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `chapter` varchar(100) NOT NULL,
  `pi` varchar(10) NOT NULL,
  `checkout` varchar(200) NOT NULL,
  `bg_color` varchar(100) NOT NULL,
  `teacher_pdsid` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `roll` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pis_mark`
--

CREATE TABLE `pis_mark` (
  `ID` int(11) NOT NULL,
  `session` int(11) NOT NULL DEFAULT 2023,
  `at_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `chapter` varchar(100) NOT NULL,
  `pi` varchar(10) NOT NULL,
  `checkout` varchar(200) NOT NULL,
  `bg_color` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `roll` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policy`
--

CREATE TABLE `privacy_policy` (
  `ID` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `heading` varchar(500) NOT NULL,
  `paragraph` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `ID` int(11) NOT NULL,
  `session` int(11) NOT NULL DEFAULT 2023,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `roll` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `marks` int(11) NOT NULL,
  `point` double NOT NULL,
  `grade` varchar(100) NOT NULL,
  `rank` int(11) NOT NULL,
  `avatar` varchar(500) NOT NULL DEFAULT 'male_avatar.png',
  `at_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`ID`, `session`, `class`, `section`, `roll`, `student_id`, `name`, `subject`, `marks`, `point`, `grade`, `rank`, `avatar`, `at_date`) VALUES
(10, 2023, 'Six', 'A', 0, 456094, '', 'গণিত', 50, 0, '', 0, 'male_avatar.png', '2023-06-13 05:55:22'),
(11, 2023, 'Six', 'A', 0, 456094, '', 'বিজ্ঞান অনুসন্ধানী বই', 60, 0, '', 0, 'male_avatar.png', '2023-06-13 05:55:22'),
(12, 2023, 'Six', 'A', 0, 456094, '', 'ইতিহাস ও সামাজিক বিজ্ঞান', 33, 0, '', 0, 'male_avatar.png', '2023-06-13 05:55:22'),
(13, 2023, 'Six', 'A', 0, 456094, '', 'ডিজিটাল প্রযুক্তি', 77, 0, '', 0, 'male_avatar.png', '2023-06-13 05:55:22'),
(14, 2023, 'Six', 'A', 0, 456094, '', 'স্বাস্থ্য সুরক্ষা', 44, 0, '', 0, 'male_avatar.png', '2023-06-13 05:55:22'),
(15, 2023, 'Six', 'A', 0, 456094, '', 'শিল্প ও সংস্কৃতি', 88, 0, '', 0, 'male_avatar.png', '2023-06-13 05:55:22'),
(16, 2023, 'Six', 'A', 0, 456094, '', 'ইসলাম শিক্ষা', 99, 0, '', 0, 'male_avatar.png', '2023-06-13 05:55:22'),
(17, 2023, 'Six', 'A', 0, 456094, '', 'বাংলা ১ম', 35, 0, '', 0, 'male_avatar.png', '2023-06-13 05:55:22'),
(18, 2023, 'Six', 'A', 0, 259083, '', 'বিজ্ঞান অনুসন্ধানী বই', 55, 0, '', 0, 'male_avatar.png', '2023-06-15 10:02:18');

-- --------------------------------------------------------

--
-- Table structure for table `routine`
--

CREATE TABLE `routine` (
  `ID` int(11) NOT NULL,
  `year` int(11) NOT NULL DEFAULT 2023,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `day` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `period_table` varchar(100) NOT NULL,
  `teacher_name` varchar(100) NOT NULL DEFAULT 'Jahid Hasan',
  `teacher_pdsid` varchar(100) NOT NULL,
  `teacher_avatar` varchar(100) NOT NULL DEFAULT 'male_avatar.png',
  `period_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `routine`
--

INSERT INTO `routine` (`ID`, `year`, `class`, `section`, `day`, `subject`, `period_table`, `teacher_name`, `teacher_pdsid`, `teacher_avatar`, `period_time`) VALUES
(9, 2023, 'Ten', 'A', 'রবিবার', 'ইংরেজী ২য়', '৩য়', 'Abdul Aziz Molla', '100251495', '1676561167056_abdul-aziz-molla-hm.png', '১১ঃ৫০ - ১২ঃ৩৫ '),
(10, 2023, 'Ten', 'A', 'সোমবার', 'ইংরেজী ২য়', '৩য়', 'Abdul Aziz Molla', '100251495', '1676561167056_abdul-aziz-molla-hm.png', '১১ঃ৫০ - ১২ঃ৩৫ '),
(12, 2023, 'Nine', 'A', 'বুধবার', 'গণিত', '২য়', 'MD SERAJUL ISLAM', '100250478', '1676561790154_serajul-islam-ahm.png', '১১ঃ০৫ - ১১ঃ৫০ '),
(13, 2023, 'Ten', 'A', 'মঙ্গলবার', 'ইংরেজী ২য়', '৩য়', 'Abdul Aziz Molla', '100251495', '1676561167056_abdul-aziz-molla-hm.png', '১১ঃ৫০ - ১২ঃ৩৫ '),
(14, 2023, 'Nine', 'B', 'ররিবার', 'গণিত', '২য়', 'MD SERAJUL ISLAM', '100250478', '1676561790154_serajul-islam-ahm.png', '১১ঃ৫০ - ১২ঃ৩৫ '),
(15, 2023, 'Nine', 'B', 'সোমবার', 'গণিত', '২য়', 'MD SERAJUL ISLAM', '100250478', '1676561790154_serajul-islam-ahm.png', '১১ঃ৫০ - ১২ঃ৩৫ '),
(16, 2023, 'Nine', 'B', 'মঙ্গলবার', 'গণিত', '২য়', 'MD SERAJUL ISLAM', '100250478', '1676561790154_serajul-islam-ahm.png', '১১ঃ৫০ - ১২ঃ৩৫ '),
(17, 2023, 'Ten', 'A', 'মঙ্গলবার', 'পদার্থ-বিজ্ঞান', '৬ষ্ট', 'MD SERAJUL ISLAM', '100250478', '1676561790154_serajul-islam-ahm.png', '২ঃ৪০ - ৩ঃ২০'),
(18, 2023, 'Ten', 'A', 'বুধবার', 'পদার্থ-বিজ্ঞান', '৬ষ্ট', 'MD SERAJUL ISLAM', '100250478', '1676561790154_serajul-islam-ahm.png', '২ঃ৪০ - ৩ঃ২০'),
(19, 2023, 'Ten', 'A', 'বৃহস্পতিবার', 'পদার্থ-বিজ্ঞান', '৬ষ্ট', 'MD SERAJUL ISLAM', '100250478', '1676561790154_serajul-islam-ahm.png', '২ঃ৪০ - ৩ঃ২০'),
(20, 2023, 'Nine', 'A', 'সোমবার', 'গণিত', '৭ম', 'MD SERAJUL ISLAM', '100250478', '1676561790154_serajul-islam-ahm.png', '৩ঃ২০ - ৪ঃ১০'),
(21, 2023, 'Nine', 'C', 'ররিবার', 'বাংলা ১ম', '১ম', 'S. M. YOUNUS ALI', '100336016', '1676650131333_younus-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(22, 2023, 'Nine', 'C', 'সোমবার', 'বাংলা ১ম', '১ম', 'S. M. YOUNUS ALI', '100336016', '1676650131333_younus-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(23, 2023, 'Nine', 'C', 'মঙ্গলবার', 'বাংলা ১ম', '১ম', 'S. M. YOUNUS ALI', '100336016', '1676650131333_younus-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(24, 2023, 'Nine', 'C', 'বুধবার', 'বাংলা ২য়', '১ম', 'S. M. YOUNUS ALI', '100336016', '1676650131333_younus-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(25, 2023, 'Nine', 'C', 'বৃহস্পতিবার', 'বাংলা ২য়', '১ম', 'S. M. YOUNUS ALI', '100336016', '1676650131333_younus-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(26, 2023, 'Ten', 'B', 'ররিবার', 'ইংরেজী ২য়', '৩য়', 'S. M. YOUNUS ALI', '100336016', '1676650131333_younus-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(27, 2023, 'Ten', 'B', 'সোমবার', 'ইংরেজী ২য়', '৩য়', 'S. M. YOUNUS ALI', '100336016', '1676650131333_younus-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(28, 2023, 'Ten', 'B', 'মঙ্গলবার', 'ইংরেজী ২য়', '৩য়', 'S. M. YOUNUS ALI', '100336016', '1676650131333_younus-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(29, 2023, 'Ten', 'B', 'বুধবার', 'ইংরেজী ১ম', '৩য়', 'S. M. YOUNUS ALI', '100336016', '1676650131333_younus-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(30, 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'ইংরেজী ১ম', '৩য়', 'S. M. YOUNUS ALI', '100336016', '1676650131333_younus-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(31, 2023, 'Ten', 'A', 'ররিবার', 'ইংরেজী ১ম', '৫ম', 'S. M. YOUNUS ALI', '100336016', '1676650131333_younus-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(32, 2023, 'Ten', 'A', 'সোমবার', 'ইংরেজী ১ম', '৫ম', 'S. M. YOUNUS ALI', '100336016', '1676650131333_younus-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(33, 2023, 'Ten', 'A', 'মঙ্গলবার', 'ইংরেজী ১ম', '৫ম', 'S. M. YOUNUS ALI', '100336016', '1676650131333_younus-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(34, 2023, 'Nine', 'B', 'বুধবার', 'ইংরেজী ২য়', '৫ম', 'S. M. YOUNUS ALI', '100336016', '1676650131333_younus-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(35, 2023, 'Nine', 'B', 'বৃহস্পতিবার', 'ইংরেজী ২য়', '৫ম', 'S. M. YOUNUS ALI', '100336016', '1676650131333_younus-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(39, 2023, 'Nine', 'B', 'ররিবার', 'ইংরেজী ২য়', '৭ম', 'S. M. YOUNUS ALI', '100336016', '1676650131333_younus-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
(43, 2023, 'Ten', 'A', 'ররিবার', 'গণিত', '১ম', 'BIKASH CHANDRA BOSU', '100250607', '1676562216077_bikash-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(44, 2023, 'Ten', 'A', 'সোমবার', 'গণিত', '১ম', 'BIKASH CHANDRA BOSU', '100250607', '1676562216077_bikash-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(45, 2023, 'Ten', 'A', 'মঙ্গলবার', 'গণিত', '১ম', 'BIKASH CHANDRA BOSU', '100250607', '1676562216077_bikash-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(51, 2023, 'Nine', 'A', 'বুধবার', 'উচ্চতর গণিত', '৪র্থ', 'BIKASH CHANDRA BOSU', '100250607', '1676562216077_bikash-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(52, 2023, 'Nine', 'A', 'বৃহস্পতিবার', 'উচ্চতর গণিত', '৪র্থ', 'BIKASH CHANDRA BOSU', '100250607', '1676562216077_bikash-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(56, 2023, 'Nine', 'A', 'ররিবার', 'পদার্থ-বিজ্ঞান', '৬ষ্ট', 'BIKASH CHANDRA BOSU', '100250607', '1676562216077_bikash-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
(57, 2023, 'Nine', 'A', 'সোমবার', 'পদার্থ-বিজ্ঞান', '৬ষ্ট', 'BIKASH CHANDRA BOSU', '100250607', '1676562216077_bikash-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
(58, 2023, 'Nine', 'A', 'মঙ্গলবার', 'পদার্থ-বিজ্ঞান', '৬ষ্ট', 'BIKASH CHANDRA BOSU', '100250607', '1676562216077_bikash-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
(62, 2023, 'Ten', 'A', 'বুধবার', 'গণিত', '৭ম', 'BIKASH CHANDRA BOSU', '100250607', '1676562216077_bikash-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
(64, 2023, 'Ten', 'B', 'ররিবার', 'ইংরেজী ১ম', '১ম', 'RUMANA MIZUN', '100373148', '1676562336505_mizun-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(65, 2023, 'Ten', 'B', 'সোমবার', 'ইংরেজী ১ম', '১ম', 'RUMANA MIZUN', '100373148', '1676562336505_mizun-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(66, 2023, 'Ten', 'B', 'মঙ্গলবার', 'ইংরেজী ১ম', '১ম', 'RUMANA MIZUN', '100373148', '1676562336505_mizun-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(69, 2023, 'Nine', 'A', 'ররিবার', 'ইংরেজী ১ম', '৩য়', 'RUMANA MIZUN', '100373148', '1676562336505_mizun-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(70, 2023, 'Nine', 'A', 'সোমবার', 'ইংরেজী ১ম', '৩য়', 'RUMANA MIZUN', '100373148', '1676562336505_mizun-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(71, 2023, 'Nine', 'A', 'মঙ্গলবার', 'ইংরেজী ১ম', '৩য়', 'RUMANA MIZUN', '100373148', '1676562336505_mizun-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(91, 2023, 'Ten', 'B', 'ররিবার', 'ভূগোল ও পরিবেশ', '২য়', 'AMENA PERVIN', '100406573', '1676562454883_amena-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(92, 2023, 'Ten', 'B', 'সোমবার', 'ভূগোল ও পরিবেশ', '২য়', 'AMENA PERVIN', '100406573', '1676562454883_amena-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(93, 2023, 'Ten', 'B', 'মঙ্গলবার', 'ভূগোল ও পরিবেশ', '২য়', 'AMENA PERVIN', '100406573', '1676562454883_amena-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(103, 2023, 'Eight', 'B', 'বুধবার', 'ইংরেজী ১ম', '৩য়', 'S. M. YOUNUS ALI', '100336016', '1676650131333_younus-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(104, 2023, 'Eight', 'B', 'বৃহস্পতিবার', 'ইংরেজী ১ম', '৩য়', 'S. M. YOUNUS ALI', '100336016', '1676650131333_younus-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(110, 2023, 'Eight', 'B', 'ররিবার', 'ইংরেজী ১ম', '৬ষ্ট', 'S. M. YOUNUS ALI', '100336016', '1676650131333_younus-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
(111, 2023, 'Eight', 'B', 'সোমবার', 'ইংরেজী ১ম', '৬ষ্ট', 'S. M. YOUNUS ALI', '100336016', '1676650131333_younus-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
(112, 2023, 'Seven', 'B', 'মঙ্গলবার', 'বাংলা ২য়', '৭ম', 'S. M. YOUNUS ALI', '100336016', '1676650131333_younus-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
(113, 2023, 'Seven', 'B', 'বুধবার', 'বাংলা ২য়', '৭ম', 'S. M. YOUNUS ALI', '100336016', '1676650131333_younus-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
(114, 2023, 'Seven', 'B', 'বৃহস্পতিবার', 'বাংলা ২য়', '৭ম', 'S. M. YOUNUS ALI', '100336016', '1676650131333_younus-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
(115, 2023, 'Six', 'A', 'বুধবার', 'গণিত', '২য়', 'BIKASH CHANDRA BOSU', '100250607', '1676562216077_bikash-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(116, 2023, 'Six', 'A', 'বৃহস্পতিবার', 'গণিত', '২য়', 'BIKASH CHANDRA BOSU', '100250607', '1676562216077_bikash-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(117, 2023, 'Eight', 'B', 'ররিবার', 'গণিত', '৩য়', 'BIKASH CHANDRA BOSU', '100250607', '1676562216077_bikash-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(118, 2023, 'Eight', 'B', 'সোমবার', 'গণিত', '৩য়', 'BIKASH CHANDRA BOSU', '100250607', '1676562216077_bikash-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(119, 2023, 'Eight', 'B', 'মঙ্গলবার', 'গণিত', '৩য়', 'BIKASH CHANDRA BOSU', '100250607', '1676562216077_bikash-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(120, 2023, 'Six', 'A', 'ররিবার', 'গণিত', '৫ম', 'BIKASH CHANDRA BOSU', '100250607', '1676562216077_bikash-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(121, 2023, 'Six', 'A', 'সোমবার', 'গণিত', '৫ম', 'BIKASH CHANDRA BOSU', '100250607', '1676562216077_bikash-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(122, 2023, 'Six', 'A', 'মঙ্গলবার', 'গণিত', '৫ম', 'BIKASH CHANDRA BOSU', '100250607', '1676562216077_bikash-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(123, 2023, 'Eight', 'C', 'বুধবার', 'বিজ্ঞান', '৬ষ্ট', 'BIKASH CHANDRA BOSU', '100250607', '1676562216077_bikash-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
(124, 2023, 'Eight', 'C', 'বৃহস্পতিবার', 'বিজ্ঞান', '৬ষ্ট', 'BIKASH CHANDRA BOSU', '100250607', '1676562216077_bikash-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
(125, 2023, 'Eight', 'C', 'ররিবার', 'বিজ্ঞান', '৭ম', 'BIKASH CHANDRA BOSU', '100250607', '1676562216077_bikash-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
(126, 2023, 'Eight', 'B', 'বৃহস্পতিবার', 'গণিত', '৭ম', 'BIKASH CHANDRA BOSU', '100250607', '1676562216077_bikash-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
(127, 2023, 'Seven', 'B', 'বুধবার', 'ইংরেজী ২য়', '২য়', 'RUMANA MIZUN', '100373148', '1676562336505_mizun-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(128, 2023, 'Seven', 'B', 'বৃহস্পতিবার', 'ইংরেজী ২য়', '২য়', 'RUMANA MIZUN', '100373148', '1676562336505_mizun-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(129, 2023, 'Eight', 'A', 'বুধবার', 'ইংরেজী ২য়', '৩য়', 'RUMANA MIZUN', '100373148', '1676562336505_mizun-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(130, 2023, 'Eight', 'A', 'বৃহস্পতিবার', 'ইংরেজী ২য়', '৩য়', 'RUMANA MIZUN', '100373148', '1676562336505_mizun-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(131, 2023, 'Seven', 'C', 'ররিবার', 'বাংলা ২য়', '৪র্থ', 'RUMANA MIZUN', '100373148', '1676562336505_mizun-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(132, 2023, 'Seven', 'C', 'সোমবার', 'বাংলা ২য়', '৪র্থ', 'RUMANA MIZUN', '100373148', '1676562336505_mizun-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(133, 2023, 'Seven', 'C', 'মঙ্গলবার', 'বাংলা ২য়', '৪র্থ', 'RUMANA MIZUN', '100373148', '1676562336505_mizun-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(134, 2023, 'Six', 'B', 'বুধবার', 'বাংলা ১ম', '৫ম', 'RUMANA MIZUN', '100373148', '1676562336505_mizun-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
(135, 2023, 'Six', 'B', 'বৃহস্পতিবার', 'বাংলা ১ম', '৫ম', 'RUMANA MIZUN', '100373148', '1676562336505_mizun-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
(136, 2023, 'Six', 'C', 'ররিবার', 'ইংরেজী ১ম', '৬ষ্ট', 'RUMANA MIZUN', '100373148', '1676562336505_mizun-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
(137, 2023, 'Six', 'C', 'সোমবার', 'ইংরেজী ১ম', '৬ষ্ট', 'RUMANA MIZUN', '100373148', '1676562336505_mizun-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
(138, 2023, 'Six', 'C', 'মঙ্গলবার', 'ইংরেজী ১ম', '৬ষ্ট', 'RUMANA MIZUN', '100373148', '1676562336505_mizun-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
(139, 2023, 'Seven', 'B', 'ররিবার', 'ইংরেজী ২য়', '৭ম', 'RUMANA MIZUN', '100373148', '1676562336505_mizun-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(140, 2023, 'Eight', 'A', 'সোমবার', 'ইংরেজী ২য়', '৭ম', 'RUMANA MIZUN', '100373148', '1676562336505_mizun-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(141, 2023, 'Six', 'B', 'মঙ্গলবার', 'বাংলা ১ম', '৭ম', 'RUMANA MIZUN', '100373148', '1676562336505_mizun-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(142, 2023, 'Eight', 'A', 'ররিবার', 'বাংলা ১ম', '১ম', 'AMENA PERVIN', '100406573', '1676562454883_amena-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(143, 2023, 'Eight', 'A', 'সোমবার', 'বাংলা ১ম', '১ম', 'AMENA PERVIN', '100406573', '1676562454883_amena-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(144, 2023, 'Eight', 'A', 'মঙ্গলবার', 'বাংলা ১ম', '১ম', 'AMENA PERVIN', '100406573', '1676562454883_amena-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(145, 2023, 'Eight', 'A', 'বুধবার', 'বাংলা ২য়', '১ম', 'AMENA PERVIN', '100406573', '1676562454883_amena-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(146, 2023, 'Eight', 'A', 'বৃহস্পতিবার', 'বাংলা ২য়', '১ম', 'AMENA PERVIN', '100406573', '1676562454883_amena-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(147, 2023, 'Eight', 'C', 'বুধবার', 'ইংরেজী ১ম', '৩য়', 'AMENA PERVIN', '100406573', '1676562454883_amena-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(148, 2023, 'Eight', 'C', 'বৃহস্পতিবার', 'ইংরেজী ১ম', '৩য়', 'AMENA PERVIN', '100406573', '1676562454883_amena-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(149, 2023, 'Six', 'A', 'ররিবার', 'ইংরেজী ১ম', '৪র্থ', 'AMENA PERVIN', '100406573', '1676562454883_amena-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(150, 2023, 'Six', 'A', 'সোমবার', 'ইংরেজী ১ম', '৪র্থ', 'AMENA PERVIN', '100406573', '1676562454883_amena-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(151, 2023, 'Six', 'A', 'মঙ্গলবার', 'ইংরেজী ১ম', '৪র্থ', 'AMENA PERVIN', '100406573', '1676562454883_amena-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(152, 2023, 'Seven', 'A', 'বুধবার', 'জীবন ও জীবিকা', '৫ম', 'AMENA PERVIN', '100406573', '1676562454883_amena-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
(153, 2023, 'Seven', 'A', 'বৃহস্পতিবার', 'জীবন ও জীবিকা', '৫ম', 'AMENA PERVIN', '100406573', '1676562454883_amena-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
(154, 2023, 'Eight', 'C', 'ররিবার', 'ইংরেজী ১ম', '৬ষ্ট', 'AMENA PERVIN', '100406573', '1676562454883_amena-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
(155, 2023, 'Eight', 'C', 'সোমবার', 'ইংরেজী ১ম', '৬ষ্ট', 'AMENA PERVIN', '100406573', '1676562454883_amena-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
(156, 2023, 'Nine', 'C', 'ররিবার', 'ক্যারিয়ার এডুকেশন', '৭ম', 'AMENA PERVIN', '100406573', '1676562454883_amena-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(157, 2023, 'Six', 'C', 'সোমবার', 'ইংরেজী ২য়', '৭ম', 'AMENA PERVIN', '100406573', '1676562454883_amena-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(158, 2023, 'Seven', 'A', 'মঙ্গলবার', 'জীবন ও জীবিকা', '৭ম', 'AMENA PERVIN', '100406573', '1676562454883_amena-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(159, 2023, 'Six', 'A', 'ররিবার', 'বাংলা ১ম', '১ম', 'MADHABIKA BISWAS', '100402754', '1676563463399_madhabika-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(160, 2023, 'Six', 'A', 'সোমবার', 'বাংলা ১ম', '১ম', 'MADHABIKA BISWAS', '100402754', '1676563463399_madhabika-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(161, 2023, 'Six', 'A', 'মঙ্গলবার', 'বাংলা ১ম', '১ম', 'MADHABIKA BISWAS', '100402754', '1676563463399_madhabika-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(162, 2023, 'Six', 'A', 'বুধবার', 'বাংলা ২য়', '১ম', 'MADHABIKA BISWAS', '100402754', '1676563463399_madhabika-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(163, 2023, 'Six', 'A', 'বৃহস্পতিবার', 'বাংলা ২য়', '১ম', 'MADHABIKA BISWAS', '100402754', '1676563463399_madhabika-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(164, 2023, 'Eight', 'C', 'ররিবার', 'ইংরেজী ২য়', '২য়', 'MADHABIKA BISWAS', '100402754', '1676563463399_madhabika-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(165, 2023, 'Eight', 'C', 'সোমবার', 'ইংরেজী ২য়', '২য়', 'MADHABIKA BISWAS', '100402754', '1676563463399_madhabika-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(166, 2023, 'Eight', 'C', 'মঙ্গলবার', 'ইংরেজী ২য়', '২য়', 'MADHABIKA BISWAS', '100402754', '1676563463399_madhabika-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(167, 2023, 'Seven', 'A', 'বুধবার', 'ইংরেজী ২য়', '৩য়', 'MADHABIKA BISWAS', '100402754', '1676563463399_madhabika-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(168, 2023, 'Seven', 'A', 'বৃহস্পতিবার', 'ইংরেজী ২য়', '৩য়', 'MADHABIKA BISWAS', '100402754', '1676563463399_madhabika-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(169, 2023, 'Ten', 'B', 'ররিবার', 'বাংলা ২য়', '৪র্থ', 'MADHABIKA BISWAS', '100402754', '1676563463399_madhabika-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(170, 2023, 'Ten', 'B', 'সোমবার', 'বাংলা ২য়', '৪র্থ', 'MADHABIKA BISWAS', '100402754', '1676563463399_madhabika-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(171, 2023, 'Ten', 'B', 'মঙ্গলবার', 'বাংলা ২য়', '৪র্থ', 'MADHABIKA BISWAS', '100402754', '1676563463399_madhabika-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(172, 2023, 'Seven', 'C', 'ররিবার', 'ইংরেজী ১ম', '৫ম', 'MADHABIKA BISWAS', '100402754', '1676563463399_madhabika-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
(173, 2023, 'Eight', 'C', 'বুধবার', 'ইংরেজী ২য়', '৫ম', 'MADHABIKA BISWAS', '100402754', '1676563463399_madhabika-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
(174, 2023, 'Seven', 'C', 'সোমবার', 'ইংরেজী ১ম', '৬ষ্ট', 'MADHABIKA BISWAS', '100402754', '1676563463399_madhabika-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
(175, 2023, 'Seven', 'C', 'বুধবার', 'ইংরেজী ১ম', '৬ষ্ট', 'MADHABIKA BISWAS', '100402754', '1676563463399_madhabika-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
(176, 2023, 'Seven', 'C', 'বৃহস্পতিবার', 'ইংরেজী ১ম', '৬ষ্ট', 'MADHABIKA BISWAS', '100402754', '1676563463399_madhabika-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
(177, 2023, 'Eight', 'A', 'মঙ্গলবার', 'শারীরিক শিক্ষা ও স্বাস্থ্য', '৬ষ্ট', 'MADHABIKA BISWAS', '100402754', '1676563463399_madhabika-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
(178, 2023, 'Six', 'C', 'বৃহস্পতিবার', 'শিল্প ও সংস্কৃতি', '৭ম', 'MADHABIKA BISWAS', '100402754', '1676563463399_madhabika-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(179, 2023, 'Seven', 'A', 'ররিবার', 'ইংরেজী ২য়', '৭ম', 'MADHABIKA BISWAS', '100402754', '1676563463399_madhabika-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(180, 2023, 'Seven', 'A', 'সোমবার', 'ইংরেজী ২য়', '৭ম', 'MADHABIKA BISWAS', '100402754', '1676563463399_madhabika-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(181, 2023, 'Seven', 'A', 'মঙ্গলবার', 'ইংরেজী ২য়', '৭ম', 'MADHABIKA BISWAS', '100402754', '1676563463399_madhabika-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(187, 2023, 'Seven', 'A', 'ররিবার', 'বাংলা ১ম', '১ম', 'BITHI RANI BISWAS', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(188, 2023, 'Seven', 'A', 'সোমবার', 'বাংলা ১ম', '১ম', 'BITHI RANI BISWAS', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(189, 2023, 'Seven', 'A', 'মঙ্গলবার', 'বাংলা ১ম', '১ম', 'BITHI RANI BISWAS', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(190, 2023, 'Seven', 'A', 'বুধবার', 'বাংলা ২য়', '১ম', 'BITHI RANI BISWAS', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(191, 2023, 'Seven', 'A', 'বৃহস্পতিবার', 'বাংলা ২য়', '১ম', 'BITHI RANI BISWAS', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(192, 2023, 'Eight', 'A', 'বুধবার', 'ইংরেজী ১ম', '২য়', 'BITHI RANI BISWAS', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(193, 2023, 'Eight', 'A', 'বৃহস্পতিবার', 'ইংরেজী ১ম', '২য়', 'BITHI RANI BISWAS', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(194, 2023, 'Nine', 'C', 'ররিবার', 'ইংরেজী ২য়', '৩য়', 'BITHI RANI BISWAS', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(195, 2023, 'Nine', 'C', 'সোমবার', 'ইংরেজী ২য়', '৩য়', 'BITHI RANI BISWAS', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(196, 2023, 'Nine', 'C', 'মঙ্গলবার', 'ইংরেজী ২য়', '৩য়', 'BITHI RANI BISWAS', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(197, 2023, 'Seven', 'B', 'ররিবার', 'ইংরেজী ১ম', '৪র্থ', 'BITHI RANI BISWAS', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(198, 2023, 'Seven', 'B', 'সোমবার', 'ইংরেজী ১ম', '৪র্থ', 'BITHI RANI BISWAS', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(199, 2023, 'Seven', 'B', 'মঙ্গলবার', 'ইংরেজী ১ম', '৪র্থ', 'BITHI RANI BISWAS', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(200, 2023, 'Ten', 'A', 'বুধবার', 'সামাঃ বিজ্ঞান', '৪র্থ', 'BITHI RANI BISWAS', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(201, 2023, 'Ten', 'A', 'বৃহস্পতিবার', 'সামাঃ বিজ্ঞান', '৪র্থ', 'BITHI RANI BISWAS', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(202, 2023, 'Eight', 'A', 'ররিবার', 'ইংরেজী ১ম', '৬ষ্ট', 'BITHI RANI BISWAS', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
(203, 2023, 'Eight', 'A', 'সোমবার', 'ইংরেজী ১ম', '৬ষ্ট', 'BITHI RANI BISWAS', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
(204, 2023, 'Six', 'A', 'ররিবার', 'ইংরেজী ১ম', '৬ষ্ট', 'BITHI RANI BISWAS', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
(205, 2023, 'Six', 'A', 'সোমবার', 'ইংরেজী ১ম', '৬ষ্ট', 'BITHI RANI BISWAS', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
(206, 2023, 'Ten', 'A', 'ররিবার', 'সামাঃ বিজ্ঞান', '৭ম', 'BITHI RANI BISWAS', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(207, 2023, 'Six', 'B', 'সোমবার', 'শিল্প ও সংস্কৃতি', '৭ম', 'BITHI RANI BISWAS', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(208, 2023, 'Six', 'A', 'মঙ্গলবার', 'ইংরেজী ২য়', '৭ম', 'BITHI RANI BISWAS', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(215, 2023, 'Eight', 'B', 'মঙ্গলবার', 'বাংলা ১ম', '১ম', 'SELIM SHEIKH', '100432811', '1676562921995_selim-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(216, 2023, 'Eight', 'B', 'ররিবার', 'বাংলা ১ম', '১ম', 'SELIM SHEIKH', '100432811', '1676562921995_selim-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(217, 2023, 'Eight', 'B', 'সোমবার', 'বাংলা ১ম', '১ম', 'SELIM SHEIKH', '100432811', '1676562921995_selim-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(218, 2023, 'Six', 'B', 'ররিবার', 'ইংরেজী ২য়', '২য়', 'SELIM SHEIKH', '100432811', '1676562921995_selim-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(219, 2023, 'Six', 'B', 'সোমবার', 'ইংরেজী ২য়', '২য়', 'SELIM SHEIKH', '100432811', '1676562921995_selim-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(220, 2023, 'Six', 'B', 'মঙ্গলবার', 'ইংরেজী ২য়', '২য়', 'SELIM SHEIKH', '100432811', '1676562921995_selim-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(221, 2023, 'Six', 'C', 'বুধবার', 'গণিত', '২য়', 'SELIM SHEIKH', '100432811', '1676562921995_selim-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(222, 2023, 'Six', 'C', 'বৃহস্পতিবার', 'গণিত', '২য়', 'SELIM SHEIKH', '100432811', '1676562921995_selim-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(223, 2023, 'Seven', 'B', 'বুধবার', 'গণিত', '৩য়', 'SELIM SHEIKH', '100432811', '1676562921995_selim-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(224, 2023, 'Seven', 'B', 'বৃহস্পতিবার', 'গণিত', '৩য়', 'SELIM SHEIKH', '100432811', '1676562921995_selim-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(225, 2023, 'Nine', 'C', 'ররিবার', 'হিসাব-বিজ্ঞান', '৪র্থ', 'SELIM SHEIKH', '100432811', '1676562921995_selim-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(226, 2023, 'Nine', 'C', 'সোমবার', 'হিসাব-বিজ্ঞান', '৪র্থ', 'SELIM SHEIKH', '100432811', '1676562921995_selim-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(227, 2023, 'Nine', 'C', 'মঙ্গলবার', 'হিসাব-বিজ্ঞান', '৪র্থ', 'SELIM SHEIKH', '100432811', '1676562921995_selim-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(228, 2023, 'Ten', 'B', 'মঙ্গলবার', 'ব্যবসায় উদ্যোগ', '৫ম', 'SELIM SHEIKH', '100432811', '1676562921995_selim-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(229, 2023, 'Ten', 'B', 'বুধবার', 'ব্যবসায় উদ্যোগ', '৫ম', 'SELIM SHEIKH', '100432811', '1676562921995_selim-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(230, 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'ব্যবসায় উদ্যোগ', '৫ম', 'SELIM SHEIKH', '100432811', '1676562921995_selim-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(231, 2023, 'Seven', 'B', 'ররিবার', 'গণিত', '৬ষ্ট', 'SELIM SHEIKH', '100432811', '1676562921995_selim-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
(232, 2023, 'Nine', 'C', 'মঙ্গলবার', 'ফিন্যান্স ও ব্যাংকিং', '৬ষ্ট', 'SELIM SHEIKH', '100432811', '1676562921995_selim-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
(233, 2023, 'Nine', 'C', 'বুধবার', 'ফিন্যান্স ও ব্যাংকিং', '৬ষ্ট', 'SELIM SHEIKH', '100432811', '1676562921995_selim-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
(234, 2023, 'Nine', 'C', 'বৃহস্পতিবার', 'ফিন্যান্স ও ব্যাংকিং', '৬ষ্ট', 'SELIM SHEIKH', '100432811', '1676562921995_selim-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
(235, 2023, 'Six', 'C', 'ররিবার', 'গণিত', '৭ম', 'SELIM SHEIKH', '100432811', '1676562921995_selim-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
(236, 2023, 'Seven', 'B', 'সোমবার', 'গণিত', '৭ম', 'SELIM SHEIKH', '100432811', '1676562921995_selim-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
(237, 2023, 'Six', 'B', 'বৃহস্পতিবার', 'ইংরেজী ২য়', '৭ম', 'SELIM SHEIKH', '100432811', '1676562921995_selim-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
(238, 2023, 'Seven', 'C', 'ররিবার', 'গণিত', '১ম', 'ANISUZZAMAN PANNU', '100442732', '1676563076174_anis-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(239, 2023, 'Seven', 'C', 'সোমবার', 'গণিত', '১ম', 'ANISUZZAMAN PANNU', '100442732', '1676563076174_anis-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(240, 2023, 'Seven', 'C', 'মঙ্গলবার', 'গণিত', '১ম', 'ANISUZZAMAN PANNU', '100442732', '1676563076174_anis-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(241, 2023, 'Ten', 'C', 'ররিবার', 'হিসাব-বিজ্ঞান', '২য়', 'ANISUZZAMAN PANNU', '100442732', '1676563076174_anis-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(242, 2023, 'Ten', 'C', 'সোমবার', 'হিসাব-বিজ্ঞান', '২য়', 'ANISUZZAMAN PANNU', '100442732', '1676563076174_anis-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(243, 2023, 'Ten', 'C', 'মঙ্গলবার', 'হিসাব-বিজ্ঞান', '২য়', 'ANISUZZAMAN PANNU', '100442732', '1676563076174_anis-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(244, 2023, 'Ten', 'C', 'বুধবার', 'ফিন্যান্স ও ব্যাংকিং', '২য়', 'ANISUZZAMAN PANNU', '100442732', '1676563076174_anis-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(245, 2023, 'Ten', 'C', 'বৃহস্পতিবার', 'ফিন্যান্স ও ব্যাংকিং', '২য়', 'ANISUZZAMAN PANNU', '100442732', '1676563076174_anis-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(246, 2023, 'Six', 'B', 'ররিবার', 'গণিত', '৪র্থ', 'ANISUZZAMAN PANNU', '100442732', '1676563076174_anis-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(247, 2023, 'Six', 'B', 'সোমবার', 'গণিত', '৪র্থ', 'ANISUZZAMAN PANNU', '100442732', '1676563076174_anis-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(248, 2023, 'Six', 'B', 'মঙ্গলবার', 'গণিত', '৪র্থ', 'ANISUZZAMAN PANNU', '100442732', '1676563076174_anis-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(249, 2023, 'Seven', 'A', 'বুধবার', 'শিল্প ও সংস্কৃতি', '৪র্থ', 'ANISUZZAMAN PANNU', '100442732', '1676563076174_anis-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(250, 2023, 'Seven', 'A', 'বৃহস্পতিবার', 'শিল্প ও সংস্কৃতি', '৪র্থ', 'ANISUZZAMAN PANNU', '100442732', '1676563076174_anis-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(251, 2023, 'Nine', 'C', 'ররিবার', 'ব্যবসায় উদ্যোগ', '৫ম', 'ANISUZZAMAN PANNU', '100442732', '1676563076174_anis-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(252, 2023, 'Nine', 'C', 'সোমবার', 'ব্যবসায় উদ্যোগ', '৫ম', 'ANISUZZAMAN PANNU', '100442732', '1676563076174_anis-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(253, 2023, 'Six', 'C', 'মঙ্গলবার', 'বিজ্ঞান অনুসন্ধানী বই', '৫ম', 'ANISUZZAMAN PANNU', '100442732', '1676563076174_anis-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(254, 2023, 'Six', 'C', 'বুধবার', 'বিজ্ঞান অনুসন্ধানী বই', '৫ম', 'ANISUZZAMAN PANNU', '100442732', '1676563076174_anis-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(255, 2023, 'Six', 'C', 'বৃহস্পতিবার', 'বিজ্ঞান অনুসন্ধানী বই', '৫ম', 'ANISUZZAMAN PANNU', '100442732', '1676563076174_anis-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(256, 2023, 'Six', 'B', 'বুধবার', 'জীবন ও জীবিকা', '৬ষ্ট', 'ANISUZZAMAN PANNU', '100442732', '1676563076174_anis-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
(257, 2023, 'Six', 'B', 'বৃহস্পতিবার', 'জীবন ও জীবিকা', '৬ষ্ট', 'ANISUZZAMAN PANNU', '100442732', '1676563076174_anis-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
(258, 2023, 'Eight', 'C', 'মঙ্গলবার', 'শারীরিক শিক্ষা ও স্বাস্থ্য', '৭ম', 'ANISUZZAMAN PANNU', '100442732', '1676563076174_anis-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
(259, 2023, 'Six', 'B', 'বুধবার', 'গণিত', '৭ম', 'ANISUZZAMAN PANNU', '100442732', '1676563076174_anis-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
(260, 2023, 'Nine', 'B', 'ররিবার', 'বাংলা ১ম', '১ম', 'MASURA KHATUN', '100461149', '1676563221017_masura-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(261, 2023, 'Nine', 'B', 'সোমবার', 'বাংলা ১ম', '১ম', 'MASURA KHATUN', '100461149', '1676563221017_masura-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(262, 2023, 'Nine', 'B', 'মঙ্গলবার', 'বাংলা ১ম', '১ম', 'MASURA KHATUN', '100461149', '1676563221017_masura-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(263, 2023, 'Nine', 'B', 'বুধবার', 'বাংলা ২য়', '১ম', 'MASURA KHATUN', '100461149', '1676563221017_masura-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(264, 2023, 'Nine', 'B', 'বৃহস্পতিবার', 'বাংলা ২য়', '১ম', 'MASURA KHATUN', '100461149', '1676563221017_masura-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(265, 2023, 'Seven', 'A', 'ররিবার', 'স্বাস্থ্য সুরক্ষা', '২য়', 'MASURA KHATUN', '100461149', '1676563221017_masura-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(266, 2023, 'Seven', 'A', 'সোমবার', 'স্বাস্থ্য সুরক্ষা', '২য়', 'MASURA KHATUN', '100461149', '1676563221017_masura-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(267, 2023, 'Seven', 'A', 'মঙ্গলবার', 'স্বাস্থ্য সুরক্ষা', '২য়', 'MASURA KHATUN', '100461149', '1676563221017_masura-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(268, 2023, 'Ten', 'B', 'বুধবার', 'অর্থনীতি', '২য়', 'MASURA KHATUN', '100461149', '1676563221017_masura-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(269, 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'অর্থনীতি', '২য়', 'MASURA KHATUN', '100461149', '1676563221017_masura-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(270, 2023, 'Eight', 'C', 'ররিবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৪র্থ', 'MASURA KHATUN', '100461149', '1676563221017_masura-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(271, 2023, 'Eight', 'C', 'সোমবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৪র্থ', 'MASURA KHATUN', '100461149', '1676563221017_masura-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(272, 2023, 'Eight', 'C', 'মঙ্গলবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৪র্থ', 'MASURA KHATUN', '100461149', '1676563221017_masura-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(273, 2023, 'Nine', 'A', 'ররিবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৫ম', 'MASURA KHATUN', '100461149', '1676563221017_masura-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
(274, 2023, 'Nine', 'A', 'সোমবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৫ম', 'MASURA KHATUN', '100461149', '1676563221017_masura-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
(275, 2023, 'Eight', 'C', 'বৃহস্পতিবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৫ম', 'MASURA KHATUN', '100461149', '1676563221017_masura-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
(276, 2023, 'Seven', 'C', 'মঙ্গলবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৬ষ্ট', 'MASURA KHATUN', '100461149', '1676563221017_masura-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
(277, 2023, 'Nine', 'A', 'বুধবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৬ষ্ট', 'MASURA KHATUN', '100461149', '1676563221017_masura-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
(278, 2023, 'Ten', 'B', 'ররিবার', 'অর্থনীতি', '৭ম', 'MASURA KHATUN', '100461149', '1676563221017_masura-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(279, 2023, 'Six', 'A', 'বুধবার', 'আবৃত্তি', '৭ম', 'MASURA KHATUN', '100461149', '1676563221017_masura-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(280, 2023, 'Eight', 'C', 'ররিবার', 'গণিত', '১ম', 'MOHSIN ALAM', '100461153', '1676563588633_mahasin-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(281, 2023, 'Eight', 'C', 'সোমবার', 'গণিত', '১ম', 'MOHSIN ALAM', '100461153', '1676563588633_mahasin-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(282, 2023, 'Eight', 'C', 'মঙ্গলবার', 'গণিত', '১ম', 'MOHSIN ALAM', '100461153', '1676563588633_mahasin-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(283, 2023, 'Seven', 'C', 'বুধবার', 'বিজ্ঞান অনুসন্ধানী বই', '১ম', 'MOHSIN ALAM', '100461153', '1676563588633_mahasin-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(284, 2023, 'Seven', 'C', 'বৃহস্পতিবার', 'বিজ্ঞান অনুসন্ধানী বই', '১ম', 'MOHSIN ALAM', '100461153', '1676563588633_mahasin-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(285, 2023, 'Ten', 'A', 'ররিবার', 'উচ্চতর গণিত', '২য়', 'MOHSIN ALAM', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(286, 2023, 'Ten', 'A', 'সোমবার', 'উচ্চতর গণিত', '২য়', 'MOHSIN ALAM', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(287, 2023, 'Ten', 'A', 'মঙ্গলবার', 'উচ্চতর গণিত', '২য়', 'MOHSIN ALAM', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(288, 2023, 'Nine', 'C', 'বুধবার', 'বিজ্ঞান', '২য়', 'MOHSIN ALAM', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(289, 2023, 'Nine', 'C', 'বৃহস্পতিবার', 'বিজ্ঞান', '২য়', 'MOHSIN ALAM', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(290, 2023, 'Nine', 'B', 'বুধবার', 'সামাঃ বিজ্ঞান', '২য়', 'MOHSIN ALAM', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(291, 2023, 'Nine', 'B', 'বৃহস্পতিবার', 'সামাঃ বিজ্ঞান', '২য়', 'MOHSIN ALAM', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(292, 2023, 'Eight', 'A', 'ররিবার', 'গণিত', '৩য়', 'MOHSIN ALAM', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(293, 2023, 'Eight', 'A', 'সোমবার', 'গণিত', '৩য়', 'MOHSIN ALAM', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(294, 2023, 'Eight', 'A', 'মঙ্গলবার', 'গণিত', '৩য়', 'MOHSIN ALAM', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(295, 2023, 'Ten', 'B', 'বুধবার', 'গণিত', '৪র্থ', 'MOHSIN ALAM', '100461153', '1676563588633_mahasin-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(296, 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'গণিত', '৪র্থ', 'MOHSIN ALAM', '100461153', '1676563588633_mahasin-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(297, 2023, 'Ten', 'B', 'ররিবার', 'গণিত', '৫ম', 'MOHSIN ALAM', '100461153', '1676563588633_mahasin-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(298, 2023, 'Ten', 'B', 'সোমবার', 'গণিত', '৫ম', 'MOHSIN ALAM', '100461153', '1676563588633_mahasin-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(299, 2023, 'Nine', 'C', 'মঙ্গলবার', 'গণিত', '৫ম', 'MOHSIN ALAM', '100461153', '1676563588633_mahasin-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(300, 2023, 'Nine', 'C', 'বুধবার', 'গণিত', '৫ম', 'MOHSIN ALAM', '100461153', '1676563588633_mahasin-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(301, 2023, 'Nine', 'C', 'বৃহস্পতিবার', 'গণিত', '৫ম', 'MOHSIN ALAM', '100461153', '1676563588633_mahasin-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(302, 2023, 'Seven', 'C', 'ররিবার', 'বিজ্ঞান অনুসন্ধানী বই', '৬ষ্ট', 'MOHSIN ALAM', '100461153', '1676563588633_mahasin-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
(303, 2023, 'Nine', 'B', 'সোমবার', 'বিজ্ঞান', '৭ম', 'MOHSIN ALAM', '100461153', '1676563588633_mahasin-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
(304, 2023, 'Nine', 'C', 'সোমবার', 'বিজ্ঞান', '৭ম', 'MOHSIN ALAM', '100461153', '1676563588633_mahasin-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
(305, 2023, 'Eight', 'C', 'বুধবার', 'গণিত', '৭ম', 'MOHSIN ALAM', '100461153', '1676563588633_mahasin-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
(306, 2023, 'Eight', 'A', 'বৃহস্পতিবার', 'গণিত', '৭ম', 'MOHSIN ALAM', '100461153', '1676563588633_mahasin-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
(307, 2023, 'Nine', 'A', 'ররিবার', 'ইংরেজী ১ম', '১ম', 'SIDDHANTA KUMAR ROY', '100491490', 'male_avatar.png', '১০ঃ১৫ - ১১ঃ০৫'),
(308, 2023, 'Nine', 'A', 'সোমবার', 'ইংরেজী ১ম', '১ম', 'SIDDHANTA KUMAR ROY', '100491490', 'male_avatar.png', '১০ঃ১৫ - ১১ঃ০৫'),
(309, 2023, 'Nine', 'A', 'মঙ্গলবার', 'ইংরেজী ১ম', '১ম', 'SIDDHANTA KUMAR ROY', '100491490', 'male_avatar.png', '১০ঃ১৫ - ১১ঃ০৫'),
(310, 2023, 'Eight', 'B', 'বুধবার', 'ইংরেজী ২য়', '১ম', 'SIDDHANTA KUMAR ROY', '100491490', 'male_avatar.png', '১০ঃ১৫ - ১১ঃ০৫'),
(311, 2023, 'Eight', 'B', 'বৃহস্পতিবার', 'ইংরেজী ২য়', '১ম', 'SIDDHANTA KUMAR ROY', '100491490', 'male_avatar.png', '১০ঃ১৫ - ১১ঃ০৫'),
(312, 2023, 'Six', 'B', 'বুধবার', 'ইংরেজী ২য়', '২য়', 'SIDDHANTA KUMAR ROY', '100491490', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
(313, 2023, 'Six', 'B', 'বৃহস্পতিবার', 'ইংরেজী ২য়', '২য়', 'SIDDHANTA KUMAR ROY', '100491490', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
(314, 2023, 'Ten', 'A', 'ররিবার', 'ইংরেজী ২য়', '৩য়', 'SIDDHANTA KUMAR ROY', '100491490', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(315, 2023, 'Seven', 'A', 'ররিবার', 'ইংরেজী ১ম', '৪র্থ', 'SIDDHANTA KUMAR ROY', '100491490', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
(316, 2023, 'Seven', 'A', 'সোমবার', 'ইংরেজী ১ম', '৪র্থ', 'SIDDHANTA KUMAR ROY', '100491490', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
(317, 2023, 'Seven', 'A', 'মঙ্গলবার', 'ইংরেজী ১ম', '৪র্থ', 'SIDDHANTA KUMAR ROY', '100491490', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
(318, 2023, 'Eight', 'C', 'বুধবার', 'বাংলা ২য়', '৪র্থ', 'SIDDHANTA KUMAR ROY', '100491490', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
(319, 2023, 'Eight', 'C', 'বৃহস্পতিবার', 'বাংলা ২য়', '৪র্থ', 'SIDDHANTA KUMAR ROY', '100491490', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
(320, 2023, 'Seven', 'C', 'সোমবার', 'আবৃত্তি', '৫ম', 'SIDDHANTA KUMAR ROY', '100491490', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
(321, 2023, 'Nine', 'B', 'সোমবার', 'ইংরেজী ১ম', '৬ষ্ট', 'SIDDHANTA KUMAR ROY', '100491490', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
(322, 2023, 'Nine', 'B', 'মঙ্গলবার', 'ইংরেজী ১ম', '৬ষ্ট', 'SIDDHANTA KUMAR ROY', '100491490', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
(323, 2023, 'Nine', 'B', 'বুধবার', 'ইংরেজী ১ম', '৬ষ্ট', 'SIDDHANTA KUMAR ROY', '100491490', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
(324, 2023, 'Six', 'B', 'ররিবার', 'ইংরেজী ১ম', '৭ম', 'SIDDHANTA KUMAR ROY', '100491490', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
(325, 2023, 'Eight', 'C', 'সোমবার', 'বাংলা ২য়', '৭ম', 'SIDDHANTA KUMAR ROY', '100491490', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
(326, 2023, 'Eight', 'B', 'মঙ্গলবার', 'ইংরেজী ২য়', '৭ম', 'SIDDHANTA KUMAR ROY', '100491490', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
(327, 2023, 'Eight', 'A', 'বুধবার', 'বিতর্ক', '৭ম', 'SIDDHANTA KUMAR ROY', '100491490', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
(328, 2023, 'Six', 'A', 'বৃহস্পতিবার', 'শিল্প ও সংস্কৃতি', '৭ম', 'SIDDHANTA KUMAR ROY', '100491490', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
(329, 2023, 'Seven', 'B', 'ররিবার', 'বিজ্ঞান অনুসন্ধানী বই', '১ম', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(330, 2023, 'Seven', 'B', 'সোমবার', 'বিজ্ঞান অনুসন্ধানী বই', '১ম', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(331, 2023, 'Seven', 'B', 'মঙ্গলবার', 'বিজ্ঞান অনুসন্ধানী বই', '১ম', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(332, 2023, 'Nine', 'A', 'ররিবার', 'জীব-বিজ্ঞান', '২য়', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(333, 2023, 'Nine', 'A', 'সোমবার', 'জীব-বিজ্ঞান', '২য়', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(334, 2023, 'Nine', 'A', 'মঙ্গলবার', 'জীব-বিজ্ঞান', '২য়', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(335, 2023, 'Ten', 'A', 'বুধবার', 'জীব-বিজ্ঞান', '২য়', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(336, 2023, 'Ten', 'A', 'বৃহস্পতিবার', 'জীব-বিজ্ঞান', '২য়', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(337, 2023, 'Six', 'A', 'ররিবার', 'বিজ্ঞান অনুসন্ধানী বই', '৩য়', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(338, 2023, 'Six', 'A', 'সোমবার', 'বিজ্ঞান অনুসন্ধানী বই', '৩য়', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(339, 2023, 'Six', 'A', 'মঙ্গলবার', 'বিজ্ঞান অনুসন্ধানী বই', '৩য়', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(340, 2023, 'Nine', 'B', 'বুধবার', 'কৃষিশিক্ষা', '৪র্থ', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(341, 2023, 'Nine', 'B', 'বৃহস্পতিবার', 'কৃষিশিক্ষা', '৪র্থ', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(342, 2023, 'Nine', 'C', 'বুধবার', 'কৃষিশিক্ষা', '৪র্থ', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(343, 2023, 'Nine', 'C', 'বৃহস্পতিবার', 'কৃষিশিক্ষা', '৪র্থ', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(344, 2023, 'Eight', 'B', 'ররিবার', 'কৃষি শিক্ষা', '৫ম', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(345, 2023, 'Eight', 'B', 'সোমবার', 'কৃষি শিক্ষা', '৫ম', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(346, 2023, 'Eight', 'B', 'মঙ্গলবার', 'কৃষি শিক্ষা', '৫ম', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(347, 2023, 'Eight', 'C', 'ররিবার', 'কৃষি শিক্ষা', '৫ম', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(348, 2023, 'Eight', 'C', 'সোমবার', 'কৃষি শিক্ষা', '৫ম', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(349, 2023, 'Eight', 'C', 'মঙ্গলবার', 'কৃষি শিক্ষা', '৫ম', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(350, 2023, 'Seven', 'C', 'বুধবার', 'জীবন ও জীবিকা', '৫ম', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(351, 2023, 'Seven', 'C', 'বৃহস্পতিবার', 'জীবন ও জীবিকা', '৫ম', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(352, 2023, 'Nine', 'B', 'ররিবার', 'কৃষিশিক্ষা', '৬ষ্ট', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
(353, 2023, 'Nine', 'C', 'ররিবার', 'কৃষিশিক্ষা', '৬ষ্ট', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
(354, 2023, 'Ten', 'A', 'সোমবার', 'জীব-বিজ্ঞান', '৬ষ্ট', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
(355, 2023, 'Ten', 'B', 'মঙ্গলবার', 'কৃষিশিক্ষা', '৭ম', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
(356, 2023, 'Ten', 'B', 'বুধবার', 'কৃষিশিক্ষা', '৭ম', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
(357, 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'কৃষিশিক্ষা', '৭ম', 'KRISHNA CHANDRA SAHA', '100509018', '1676563337883_krishna-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
(358, 2023, 'Seven', 'B', 'ররিবার', 'হিন্দু ধর্ম শিক্ষা', '২য়', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(359, 2023, 'Seven', 'B', 'সোমবার', 'হিন্দু ধর্ম শিক্ষা', '২য়', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(360, 2023, 'Seven', 'B', 'মঙ্গলবার', 'হিন্দু ধর্ম শিক্ষা', '২য়', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(361, 2023, 'Seven', 'C', 'ররিবার', 'হিন্দুধর্ম শিক্ষা', '২য়', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(362, 2023, 'Seven', 'C', 'সোমবার', 'হিন্দু ধর্ম শিক্ষা', '২য়', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(363, 2023, 'Seven', 'C', 'মঙ্গলবার', 'হিন্দুধর্ম শিক্ষা', '২য়', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(365, 2023, 'Eight', 'B', 'বুধবার', 'হিন্দুধর্ম শিক্ষা', '২য়', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(366, 2023, 'Eight', 'B', 'বৃহস্পতিবার', 'হিন্দুধর্ম  শিক্ষা', '২য়', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(367, 2023, 'Six', 'C', 'ররিবার', 'হিন্দুধর্ম শিক্ষা', '৩য়', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(368, 2023, 'Six', 'C', 'সোমবার', 'হিন্দুধর্ম শিক্ষা', '৩য়', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(369, 2023, 'Six', 'C', 'মঙ্গলবার', 'হিন্দুধর্ম শিক্ষা', '৩য়', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(370, 2023, 'Ten', 'A', 'বুধবার', 'হিন্দুধর্ম শিক্ষা', '৩য়', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(371, 2023, 'Ten', 'A', 'বৃহস্পতিবার', 'হিন্দুধর্ম শিক্ষা', '৩য়', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(372, 2023, 'Ten', 'B', 'বুধবার', 'হিন্দুধর্ম শিক্ষা', '৩য়', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(373, 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'হিন্দুধর্ম শিক্ষা', '৩য়', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(374, 2023, 'Eight', 'A', 'ররিবার', 'হিন্দুধর্ম শিক্ষা', '৫ম', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
(375, 2023, 'Eight', 'A', 'সোমবার', 'হিন্দুধর্ম শিক্ষা', '৫ম', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
(376, 2023, 'Eight', 'A', 'মঙ্গলবার', 'হিন্দুধর্ম শিক্ষা', '৫ম', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
(377, 2023, 'Six', 'A', 'বুধবার', 'হিন্দুধর্ম শিক্ষা', '৫ম', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
(378, 2023, 'Six', 'A', 'বৃহস্পতিবার', 'হিন্দুধর্ম শিক্ষা', '৫ম', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
(379, 2023, 'Six', 'B', 'ররিবার', 'হিন্দুধর্ম শিক্ষা', '৬ষ্ট', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
(380, 2023, 'Six', 'B', 'সোমবার', 'হিন্দুধর্ম শিক্ষা', '৬ষ্ট', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
(381, 2023, 'Six', 'B', 'মঙ্গলবার', 'হিন্দুধর্ম শিক্ষা', '৬ষ্ট', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
(382, 2023, 'Seven', 'A', 'বুধবার', 'হিন্দুধর্ম শিক্ষা', '৬ষ্ট', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
(383, 2023, 'Seven', 'A', 'বৃহস্পতিবার', 'হিন্দুধর্ম শিক্ষা', '৬ষ্ট', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
(384, 2023, 'Six', 'A', 'সোমবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(385, 2023, 'Nine', 'A', 'মঙ্গলবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(386, 2023, 'Nine', 'A', 'বুধবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(387, 2023, 'Nine', 'A', 'বৃহস্পতিবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(388, 2023, 'Nine', 'B', 'মঙ্গলবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(389, 2023, 'Nine', 'B', 'বুধবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(390, 2023, 'Nine', 'B', 'বৃহস্পতিবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(391, 2023, 'Nine', 'C', 'বৃহস্পতিবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(392, 2023, 'Nine', 'C', 'বুধবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(393, 2023, 'Nine', 'C', 'মঙ্গলবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(394, 2023, 'Nine', 'A', 'বুধবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '১ম', 'SOUMITRA SAHA', '100555345', '1676563832731_soumitra-saha-sir.png', '১০ঃ১৫ - ১১ঃ০৫'),
(395, 2023, 'Nine', 'A', 'বৃহস্পতিবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '১ম', 'SOUMITRA SAHA', '100555345', '1676563832731_soumitra-saha-sir.png', '১০ঃ১৫ - ১১ঃ০৫'),
(396, 2023, 'Eight', 'A', 'ররিবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '২য়', 'SOUMITRA SAHA', '100555345', '1676563832731_soumitra-saha-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
(397, 2023, 'Eight', 'A', 'সোমবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '২য়', 'SOUMITRA SAHA', '100555345', '1676563832731_soumitra-saha-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
(398, 2023, 'Eight', 'A', 'মঙ্গলবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '২য়', 'SOUMITRA SAHA', '100555345', '1676563832731_soumitra-saha-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
(399, 2023, 'Nine', 'B', 'বুধবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৩য়', 'SOUMITRA SAHA', '100555345', '1676563832731_soumitra-saha-sir.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(400, 2023, 'Nine', 'B', 'বৃহস্পতিবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৩য়', 'SOUMITRA SAHA', '100555345', '1676563832731_soumitra-saha-sir.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(401, 2023, 'Nine', 'C', 'বুধবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৩য়', 'SOUMITRA SAHA', '100555345', '1676563832731_soumitra-saha-sir.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(402, 2023, 'Nine', 'C', 'বৃহস্পতিবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৩য়', 'SOUMITRA SAHA', '100555345', '1676563832731_soumitra-saha-sir.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(403, 2023, 'Eight', 'B', 'ররিবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৪র্থ', 'SOUMITRA SAHA', '100555345', '1676563832731_soumitra-saha-sir.png', '১২ঃ৩৫ - ১ঃ২০'),
(404, 2023, 'Eight', 'B', 'সোমবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৪র্থ', 'SOUMITRA SAHA', '100555345', '1676563832731_soumitra-saha-sir.png', '১২ঃ৩৫ - ১ঃ২০'),
(405, 2023, 'Eight', 'B', 'মঙ্গলবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৪র্থ', 'SOUMITRA SAHA', '100555345', '1676563832731_soumitra-saha-sir.png', '১২ঃ৩৫ - ১ঃ২০'),
(406, 2023, 'Six', 'A', 'বুধবার', 'ডিজিটাল প্রযুক্তি', '৪র্থ', 'SOUMITRA SAHA', '100555345', '1676563832731_soumitra-saha-sir.png', '১২ঃ৩৫ - ১ঃ২০'),
(407, 2023, 'Six', 'A', 'বৃহস্পতিবার', 'ডিজিটাল প্রযুক্তি', '৪র্থ', 'SOUMITRA SAHA', '100555345', '1676563832731_soumitra-saha-sir.png', '১২ঃ৩৫ - ১ঃ২০'),
(408, 2023, 'Seven', 'A', 'ররিবার', 'বিজ্ঞান অনুসন্ধানী বই', '৫ম', 'SOUMITRA SAHA', '100555345', '1676563832731_soumitra-saha-sir.png', '২ঃ০০ - ২ঃ৪০'),
(409, 2023, 'Seven', 'A', 'সোমবার', 'বিজ্ঞান অনুসন্ধানী বই', '৫ম', 'SOUMITRA SAHA', '100555345', '1676563832731_soumitra-saha-sir.png', '২ঃ০০ - ২ঃ৪০'),
(410, 2023, 'Seven', 'A', 'মঙ্গলবার', 'বিজ্ঞান অনুসন্ধানী বই', '৫ম', 'SOUMITRA SAHA', '100555345', '1676563832731_soumitra-saha-sir.png', '২ঃ০০ - ২ঃ৪০'),
(411, 2023, 'Ten', 'A', 'ররিবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৬ষ্ট', 'SOUMITRA SAHA', '100555345', '1676563832731_soumitra-saha-sir.png', '২ঃ৪০ - ৩ঃ২০'),
(412, 2023, 'Ten', 'B', 'বুধবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৬ষ্ট', 'SOUMITRA SAHA', '100555345', '1676563832731_soumitra-saha-sir.png', '২ঃ৪০ - ৩ঃ২০'),
(413, 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৬ষ্ট', 'SOUMITRA SAHA', '100555345', '1676563832731_soumitra-saha-sir.png', '২ঃ৪০ - ৩ঃ২০'),
(414, 2023, 'Ten', 'C', 'বুধবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৬ষ্ট', 'SOUMITRA SAHA', '100555345', '1676563832731_soumitra-saha-sir.png', '২ঃ৪০ - ৩ঃ২০'),
(415, 2023, 'Ten', 'C', 'বৃহস্পতিবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৬ষ্ট', 'SOUMITRA SAHA', '100555345', '1676563832731_soumitra-saha-sir.png', '২ঃ৪০ - ৩ঃ২০'),
(416, 2023, 'Ten', 'A', 'মঙ্গলবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৭ম', 'SOUMITRA SAHA', '100555345', '1676563832731_soumitra-saha-sir.png', '৩ঃ২০ - ৪ঃ১০'),
(417, 2023, 'Seven', 'A', 'বুধবার', 'ডিজিটাল প্রযুক্তি', '৭ম', 'SOUMITRA SAHA', '100555345', '1676563832731_soumitra-saha-sir.png', '৩ঃ২০ - ৪ঃ১০'),
(418, 2023, 'Seven', 'A', 'বৃহস্পতিবার', 'ডিজিটাল প্রযুক্তি', '৭ম', 'SOUMITRA SAHA', '100555345', '1676563832731_soumitra-saha-sir.png', '৩ঃ২০ - ৪ঃ১০'),
(419, 2023, 'Eight', 'C', 'বুধবার', 'বাংলা ১ম', '১ম', 'MOFIJUR RAHAMAN', '100499627', '1676563986090_mofijur-rahman-sir.png', '১০ঃ১৫ - ১১ঃ০৫'),
(420, 2023, 'Eight', 'C', 'বৃহস্পতিবার', 'বাংলা ১ম', '১ম', 'MOFIJUR RAHAMAN', '100499627', '1676563986090_mofijur-rahman-sir.png', '১০ঃ১৫ - ১১ঃ০৫'),
(421, 2023, 'Six', 'C', 'ররিবার', 'স্বাস্থ্য সুরক্ষা', '২য়', 'MOFIJUR RAHAMAN', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
(422, 2023, 'Six', 'C', 'সোমবার', 'স্বাস্থ্য সুরক্ষা', '২য়', 'MOFIJUR RAHAMAN', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
(423, 2023, 'Six', 'C', 'মঙ্গলবার', 'স্বাস্থ্য সুরক্ষা', '২য়', 'MOFIJUR RAHAMAN', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
(424, 2023, 'Seven', 'C', 'ররিবার', 'আবৃত্তি', '২য়', 'MOFIJUR RAHAMAN', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ০৫ - ১১ঃ৫০');
INSERT INTO `routine` (`ID`, `year`, `class`, `section`, `day`, `subject`, `period_table`, `teacher_name`, `teacher_pdsid`, `teacher_avatar`, `period_time`) VALUES
(425, 2023, 'Seven', 'C', 'সোমবার', 'আবৃত্তি', '২য়', 'MOFIJUR RAHAMAN', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
(426, 2023, 'Seven', 'C', 'বুধবার', 'আবৃত্তি', '২য়', 'MOFIJUR RAHAMAN', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
(427, 2023, 'Seven', 'C', 'বৃহস্পতিবার', 'আবৃত্তি', '২য়', 'MOFIJUR RAHAMAN', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
(428, 2023, 'Seven', 'B', 'ররিবার', 'স্বাস্থ্য সুরক্ষা', '৩য়', 'MOFIJUR RAHAMAN', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(429, 2023, 'Seven', 'B', 'সোমবার', 'স্বাস্থ্য সুরক্ষা', '৩য়', 'MOFIJUR RAHAMAN', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(430, 2023, 'Seven', 'B', 'মঙ্গলবার', 'স্বাস্থ্য সুরক্ষা', '৩য়', 'MOFIJUR RAHAMAN', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(431, 2023, 'Six', 'B', 'বুধবার', 'স্বাস্থ্য সুরক্ষা', '৪র্থ', 'MOFIJUR RAHAMAN', '100499627', '1676563986090_mofijur-rahman-sir.png', '১২ঃ৩৫ - ১ঃ২০'),
(432, 2023, 'Six', 'B', 'বৃহস্পতিবার', 'স্বাস্থ্য সুরক্ষা', '৪র্থ', 'MOFIJUR RAHAMAN', '100499627', '1676563986090_mofijur-rahman-sir.png', '১২ঃ৩৫ - ১ঃ২০'),
(433, 2023, 'Six', 'B', 'সোমবার', 'স্বাস্থ্য সুরক্ষা', '৫ম', 'MOFIJUR RAHAMAN', '100499627', '1676563986090_mofijur-rahman-sir.png', '২ঃ০০ - ২ঃ৪০'),
(434, 2023, 'Eight', 'B', 'বুধবার', 'শারীরিক শিক্ষা ও স্বাস্থ্য', '৫ম', 'MOFIJUR RAHAMAN', '100499627', '1676563986090_mofijur-rahman-sir.png', '২ঃ০০ - ২ঃ৪০'),
(435, 2023, 'Eight', 'B', 'বৃহস্পতিবার', 'শারীরিক শিক্ষা ও স্বাস্থ্য', '৫ম', 'MOFIJUR RAHAMAN', '100499627', '1676563986090_mofijur-rahman-sir.png', '২ঃ০০ - ২ঃ৪০'),
(436, 2023, 'Eight', 'C', 'মঙ্গলবার', 'বাংলা ১ম', '৬ষ্ট', 'MOFIJUR RAHAMAN', '100499627', '1676563986090_mofijur-rahman-sir.png', '২ঃ৪০ - ৩ঃ২০'),
(437, 2023, 'Nine', 'A', 'বৃহস্পতিবার', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '৬ষ্ট', 'MOFIJUR RAHAMAN', '100499627', '1676563986090_mofijur-rahman-sir.png', '২ঃ৪০ - ৩ঃ২০'),
(438, 2023, 'Nine', 'A', 'ররিবার', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '৭ম', 'MOFIJUR RAHAMAN', '100499627', '1676563986090_mofijur-rahman-sir.png', '৩ঃ২০ - ৪ঃ১০'),
(439, 2023, 'Ten', 'B', 'সোমবার', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '৭ম', 'MOFIJUR RAHAMAN', '100499627', '1676563986090_mofijur-rahman-sir.png', '৩ঃ২০ - ৪ঃ১০'),
(440, 2023, 'Ten', 'A', 'বৃহস্পতিবার', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '৭ম', 'MOFIJUR RAHAMAN', '100499627', '1676563986090_mofijur-rahman-sir.png', '৩ঃ২০ - ৪ঃ১০'),
(441, 2023, 'Six', 'B', 'বুধবার', 'বাংলা ২য়', '১ম', 'NASIMA PARVIN', '100485994', 'female_avatar.png', '১০ঃ১৫ - ১১ঃ০৫'),
(442, 2023, 'Six', 'B', 'বৃহস্পতিবার', 'বাংলা ২য়', '১ম', 'NASIMA PARVIN', '100485994', 'female_avatar.png', '১০ঃ১৫ - ১১ঃ০৫'),
(443, 2023, 'Six', 'A', 'ররিবার', 'জীবন ও জীবিকা', '২য়', 'NASIMA PARVIN', '100485994', 'female_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
(444, 2023, 'Six', 'A', 'সোমবার', 'জীবন ও জীবিকা', '২য়', 'NASIMA PARVIN', '100485994', 'female_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
(445, 2023, 'Six', 'A', 'মঙ্গলবার', 'জীবন ও জীবিকা', '২য়', 'NASIMA PARVIN', '100485994', 'female_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
(448, 2023, 'Seven', 'C', 'ররিবার', 'বাংলা ১ম', '৩য়', 'NASIMA PARVIN', '100485994', 'female_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(449, 2023, 'Seven', 'C', 'সোমবার', 'বাংলা ১ম', '৩য়', 'NASIMA PARVIN', '100485994', 'female_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(450, 2023, 'Seven', 'C', 'মঙ্গলবার', 'বাংলা ১ম', '৩য়', 'NASIMA PARVIN', '100485994', 'female_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(451, 2023, 'Six', 'C', 'বুধবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৩য়', 'NASIMA PARVIN', '100485994', 'female_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(452, 2023, 'Six', 'C', 'বৃহস্পতিবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৩য়', 'NASIMA PARVIN', '100485994', 'female_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(453, 2023, 'Six', 'C', 'বৃহস্পতিবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৩য়', 'NASIMA PARVIN', '100485994', 'female_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(454, 2023, 'Seven', 'B', 'বুধবার', 'জীবন ও জীবিকা', '৪র্থ', 'NASIMA PARVIN', '100485994', 'female_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
(455, 2023, 'Seven', 'B', 'বৃহস্পতিবার', 'জীবন ও জীবিকা', '৪র্থ', 'NASIMA PARVIN', '100485994', 'female_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
(456, 2023, 'Seven', 'B', 'ররিবার', 'জীবন ও জীবিকা', '৫ম', 'NASIMA PARVIN', '100485994', 'female_avatar.png', '২ঃ০০ - ২ঃ৪০'),
(457, 2023, 'Six', 'C', 'সোমবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৫ম', 'NASIMA PARVIN', '100485994', 'female_avatar.png', '২ঃ০০ - ২ঃ৪০'),
(458, 2023, 'Six', 'B', 'মঙ্গলবার', 'বাংলা ২য়', '৫ম', 'NASIMA PARVIN', '100485994', 'female_avatar.png', '২ঃ০০ - ২ঃ৪০'),
(459, 2023, 'Six', 'B', 'মঙ্গলবার', 'বাংলা ২য়', '৫ম', 'NASIMA PARVIN', '100485994', 'female_avatar.png', '২ঃ০০ - ২ঃ৪০'),
(460, 2023, 'Eight', 'A', 'বুধবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৫ম', 'NASIMA PARVIN', '100485994', 'female_avatar.png', '২ঃ০০ - ২ঃ৪০'),
(461, 2023, 'Eight', 'A', 'বৃহস্পতিবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৫ম', 'NASIMA PARVIN', '100485994', 'female_avatar.png', '২ঃ০০ - ২ঃ৪০'),
(462, 2023, 'Six', 'A', 'ররিবার', 'স্বাস্থ্য সুরক্ষা', '৬ষ্ট', 'NASIMA PARVIN', '100485994', 'female_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
(463, 2023, 'Six', 'A', 'সোমবার', 'স্বাস্থ্য সুরক্ষা', '৬ষ্ট', 'NASIMA PARVIN', '100485994', 'female_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
(464, 2023, 'Six', 'A', 'মঙ্গলবার', 'স্বাস্থ্য সুরক্ষা', '৬ষ্ট', 'NASIMA PARVIN', '100485994', 'female_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
(465, 2023, 'Eight', 'A', 'ররিবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৭ম', 'NASIMA PARVIN', '100485994', 'female_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
(466, 2023, 'Seven', 'C', 'বুধবার', 'বাংলা ১ম', '৭ম', 'NASIMA PARVIN', '100485994', 'female_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
(467, 2023, 'Seven', 'C', 'বুধবার', 'বাংলা ১ম', '৭ম', 'NASIMA PARVIN', '100485994', 'female_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
(468, 2023, 'Six', 'C', 'ররিবার', 'বাংলা ২য়', '১ম', 'USHA NANDI', '100567695', '1676564123460_usha-nandi-madam-.png', '১০ঃ১৫ - ১১ঃ০৫'),
(469, 2023, 'Six', 'C', 'সোমবার', 'বাংলা ২য়', '১ম', 'USHA NANDI', '100567695', '1676564123460_usha-nandi-madam-.png', '১০ঃ১৫ - ১১ঃ০৫'),
(470, 2023, 'Six', 'C', 'মঙ্গলবার', 'বাংলা ২য়', '১ম', 'USHA NANDI', '100567695', '1676564123460_usha-nandi-madam-.png', '১০ঃ১৫ - ১১ঃ০৫'),
(471, 2023, 'Ten', 'A', 'বুধবার', 'বাংলা ২য়', '১ম', 'USHA NANDI', '100567695', '1676564123460_usha-nandi-madam-.png', '১০ঃ১৫ - ১১ঃ০৫'),
(472, 2023, 'Ten', 'A', 'বৃহস্পতিবার', 'বাংলা ২য়', '১ম', 'USHA NANDI', '100567695', '1676564123460_usha-nandi-madam-.png', '১০ঃ১৫ - ১১ঃ০৫'),
(473, 2023, 'Six', 'B', 'ররিবার', 'ডিজিটাল প্রযুক্তি', '৩য়', 'USHA NANDI', '100567695', '1676564123460_usha-nandi-madam-.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(474, 2023, 'Six', 'B', 'সোমবার', 'ডিজিটাল প্রযুক্তি', '৩য়', 'USHA NANDI', '100567695', '1676564123460_usha-nandi-madam-.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(475, 2023, 'Six', 'B', 'মঙ্গলবার', 'ডিজিটাল প্রযুক্তি', '৩য়', 'USHA NANDI', '100567695', '1676564123460_usha-nandi-madam-.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(476, 2023, 'Six', 'B', 'মঙ্গলবার', 'ডিজিটাল প্রযুক্তি', '৩য়', 'USHA NANDI', '100567695', '1676564123460_usha-nandi-madam-.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(477, 2023, 'Nine', 'A', 'বুধবার', 'বাংলা ১ম', '৩য়', 'USHA NANDI', '100567695', '1676564123460_usha-nandi-madam-.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(478, 2023, 'Nine', 'A', 'বৃহস্পতিবার', 'বাংলা ১ম', '৩য়', 'USHA NANDI', '100567695', '1676564123460_usha-nandi-madam-.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(479, 2023, 'Nine', 'A', 'ররিবার', 'বাংলা ২য়', '৪র্থ', 'USHA NANDI', '100567695', '1676564123460_usha-nandi-madam-.png', '১২ঃ৩৫ - ১ঃ২০'),
(480, 2023, 'Nine', 'A', 'সোমবার', 'বাংলা ২য়', '৪র্থ', 'USHA NANDI', '100567695', '1676564123460_usha-nandi-madam-.png', '১২ঃ৩৫ - ১ঃ২০'),
(481, 2023, 'Nine', 'A', 'মঙ্গলবার', 'বাংলা ২য়', '৪র্থ', 'USHA NANDI', '100567695', '1676564123460_usha-nandi-madam-.png', '১২ঃ৩৫ - ১ঃ২০'),
(482, 2023, 'Eight', 'B', 'বুধবার', 'বাংলা ২য়', '৪র্থ', 'USHA NANDI', '100567695', '1676564123460_usha-nandi-madam-.png', '১২ঃ৩৫ - ১ঃ২০'),
(483, 2023, 'Eight', 'B', 'বৃহস্পতিবার', 'বাংলা ২য়', '৪র্থ', 'USHA NANDI', '100567695', '1676564123460_usha-nandi-madam-.png', '১২ঃ৩৫ - ১ঃ২০'),
(484, 2023, 'Nine', 'B', 'ররিবার', 'অর্থনীতি', '৫ম', 'USHA NANDI', '100567695', '1676564123460_usha-nandi-madam-.png', '২ঃ০০ - ২ঃ৪০'),
(485, 2023, 'Nine', 'B', 'সোমবার', 'অর্থনীতি', '৫ম', 'USHA NANDI', '100567695', '1676564123460_usha-nandi-madam-.png', '২ঃ০০ - ২ঃ৪০'),
(486, 2023, 'Nine', 'B', 'মঙ্গলবার', 'অর্থনীতি', '৫ম', 'USHA NANDI', '100567695', '1676564123460_usha-nandi-madam-.png', '২ঃ০০ - ২ঃ৪০'),
(487, 2023, 'Seven', 'B', 'মঙ্গলবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৬ষ্ট', 'USHA NANDI', '100567695', '1676564123460_usha-nandi-madam-.png', '২ঃ৪০ - ৩ঃ২০'),
(488, 2023, 'Seven', 'B', 'বুধবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৬ষ্ট', 'USHA NANDI', '100567695', '1676564123460_usha-nandi-madam-.png', '২ঃ৪০ - ৩ঃ২০'),
(489, 2023, 'Seven', 'B', 'বৃহস্পতিবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৬ষ্ট', 'USHA NANDI', '100567695', '1676564123460_usha-nandi-madam-.png', '২ঃ৪০ - ৩ঃ২০'),
(490, 2023, 'Eight', 'B', 'ররিবার', 'বাংলা ২য়', '৭ম', 'USHA NANDI', '100567695', '1676564123460_usha-nandi-madam-.png', '৩ঃ২০ - ৪ঃ১০'),
(491, 2023, 'Six', 'C', 'বুধবার', 'বাংলা ২য়', '৭ম', 'USHA NANDI', '100567695', '1676564123460_usha-nandi-madam-.png', '৩ঃ২০ - ৪ঃ১০'),
(492, 2023, 'Six', 'B', 'ররিবার', 'বিজ্ঞান অনুসন্ধানী বই', '১ম', 'SHUVANGKAR ROY', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(493, 2023, 'Six', 'B', 'সোমবার', 'বিজ্ঞান অনুসন্ধানী বই', '১ম', 'SHUVANGKAR ROY', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(494, 2023, 'Six', 'B', 'মঙ্গলবার', 'বিজ্ঞান অনুসন্ধানী বই', '১ম', 'SHUVANGKAR ROY', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(495, 2023, 'Six', 'C', 'বুধবার', 'ডিজিটাল প্রযুক্তি', '১ম', 'SHUVANGKAR ROY', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(496, 2023, 'Six', 'C', 'বৃহস্পতিবার', 'ডিজিটাল প্রযুক্তি', '১ম', 'SHUVANGKAR ROY', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(497, 2023, 'Seven', 'A', 'ররিবার', 'গণিত', '৩য়', 'SHUVANGKAR ROY', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(498, 2023, 'Seven', 'A', 'সোমবার', 'গণিত', '৩য়', 'SHUVANGKAR ROY', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(499, 2023, 'Seven', 'A', 'মঙ্গলবার', 'গণিত', '৩য়', 'SHUVANGKAR ROY', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(500, 2023, 'Ten', 'A', 'ররিবার', 'রসায়ন', '৪র্থ', 'SHUVANGKAR ROY', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(501, 2023, 'Ten', 'A', 'সোমবার', 'রসায়ন', '৪র্থ', 'SHUVANGKAR ROY', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(502, 2023, 'Ten', 'A', 'মঙ্গলবার', 'রসায়ন', '৪র্থ', 'SHUVANGKAR ROY', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(503, 2023, 'Eight', 'A', 'বুধবার', 'বিজ্ঞান', '৪র্থ', 'SHUVANGKAR ROY', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(504, 2023, 'Eight', 'A', 'বৃহস্পতিবার', 'বিজ্ঞান', '৪র্থ', 'SHUVANGKAR ROY', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(505, 2023, 'Six', 'C', 'ররিবার', 'ডিজিটাল প্রযুক্তি', '৫ম', 'SHUVANGKAR ROY', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(506, 2023, 'Nine', 'A', 'মঙ্গলবার', 'রসায়ন', '৫ম', 'SHUVANGKAR ROY', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(507, 2023, 'Nine', 'A', 'বুধবার', 'রসায়ন', '৫ম', 'SHUVANGKAR ROY', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(508, 2023, 'Nine', 'A', 'বৃহস্পতিবার', 'রসায়ন', '৫ম', 'SHUVANGKAR ROY', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
(509, 2023, 'Ten', 'B', 'ররিবার', 'বিজ্ঞান', '৬ষ্ট', 'SHUVANGKAR ROY', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
(510, 2023, 'Ten', 'B', 'সোমবার', 'বিজ্ঞান', '৬ষ্ট', 'SHUVANGKAR ROY', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
(511, 2023, 'Ten', 'B', 'মঙ্গলবার', 'বিজ্ঞান', '৬ষ্ট', 'SHUVANGKAR ROY', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
(512, 2023, 'Ten', 'C', 'ররিবার', 'বিজ্ঞান', '৬ষ্ট', 'SHUVANGKAR ROY', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
(513, 2023, 'Ten', 'C', 'সোমবার', 'বিজ্ঞান', '৬ষ্ট', 'SHUVANGKAR ROY', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
(514, 2023, 'Eight', 'B', 'বুধবার', 'বিজ্ঞান', '৬ষ্ট', 'SHUVANGKAR ROY', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
(515, 2023, 'Eight', 'B', 'বৃহস্পতিবার', 'বিজ্ঞান', '৬ষ্ট', 'SHUVANGKAR ROY', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
(516, 2023, 'Eight', 'B', 'সোমবার', 'বিজ্ঞান', '৭ম', 'SHUVANGKAR ROY', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
(517, 2023, 'Eight', 'A', 'মঙ্গলবার', 'বিজ্ঞান', '৭ম', 'SHUVANGKAR ROY', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
(518, 2023, 'Seven', 'B', 'বুধবার', 'বাংলা ১ম', '১ম', 'MST. SHAMMI AKTAR', '101406837', '1676650881819_samima-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(519, 2023, 'Seven', 'B', 'বৃহস্পতিবার', 'বাংলা ১ম', '১ম', 'MST. SHAMMI AKTAR', '101406837', '1676650881819_samima-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
(520, 2023, 'Nine', 'B', 'ররিবার', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '২য়', 'MST. SHAMMI AKTAR', '101406837', '1676650881819_samima-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(521, 2023, 'Nine', 'B', 'সোমবার', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '২য়', 'MST. SHAMMI AKTAR', '101406837', '1676650881819_samima-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(522, 2023, 'Nine', 'B', 'মঙ্গলবার', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '২য়', 'MST. SHAMMI AKTAR', '101406837', '1676650881819_samima-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
(523, 2023, 'Seven', 'C', 'বুধবার', 'ডিজিটাল প্রযুক্তি', '৩য়', 'MST. SHAMMI AKTAR', '101406837', '1676650881819_samima-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(524, 2023, 'Seven', 'C', 'বৃহস্পতিবার', 'ডিজিটাল প্রযুক্তি', '৩য়', 'MST. SHAMMI AKTAR', '101406837', '1676650881819_samima-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(525, 2023, 'Eight', 'A', 'ররিবার', 'গার্হস্থ্য বিজ্ঞান', '৪র্থ', 'MST. SHAMMI AKTAR', '101406837', '1676650881819_samima-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(526, 2023, 'Eight', 'A', 'সোমবার', 'গার্হস্থ্য বিজ্ঞান', '৪র্থ', 'MST. SHAMMI AKTAR', '101406837', '1676650881819_samima-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(527, 2023, 'Eight', 'A', 'মঙ্গলবার', 'গার্হস্থ্য বিজ্ঞান', '৪র্থ', 'MST. SHAMMI AKTAR', '101406837', '1676650881819_samima-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(528, 2023, 'Nine', 'B', 'বুধবার', 'গার্হস্থ্য বিজ্ঞান', '৪র্থ', 'MST. SHAMMI AKTAR', '101406837', '1676650881819_samima-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(529, 2023, 'Nine', 'B', 'বৃহস্পতিবার', 'গার্হস্থ্য বিজ্ঞান', '৪র্থ', 'MST. SHAMMI AKTAR', '101406837', '1676650881819_samima-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(530, 2023, 'Nine', 'C', 'বুধবার', 'গার্হস্থ্য বিজ্ঞান', '৪র্থ', 'MST. SHAMMI AKTAR', '101406837', '1676650881819_samima-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(531, 2023, 'Nine', 'C', 'বৃহস্পতিবার', 'গার্হস্থ্য বিজ্ঞান', '৪র্থ', 'MST. SHAMMI AKTAR', '101406837', '1676650881819_samima-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
(532, 2023, 'Seven', 'B', 'সোমবার', 'বাংলা ১ম', '৫ম', 'MST. SHAMMI AKTAR', '101406837', '1676650881819_samima-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
(533, 2023, 'Six', 'C', 'মঙ্গলবার', 'ডিজিটাল প্রযুক্তি', '৫ম', 'MST. SHAMMI AKTAR', '101406837', '1676650881819_samima-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
(534, 2023, 'Ten', 'A', 'বুধবার', 'বাংলা ১ম', '৫ম', 'MST. SHAMMI AKTAR', '101406837', '1676650881819_samima-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
(535, 2023, 'Ten', 'A', 'বৃহস্পতিবার', 'বাংলা ১ম', '৫ম', 'MST. SHAMMI AKTAR', '101406837', '1676650881819_samima-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
(536, 2023, 'Nine', 'B', 'ররিবার', 'গার্হস্থ্য বিজ্ঞান', '৬ষ্ট', 'MST. SHAMMI AKTAR', '101406837', '1676650881819_samima-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
(537, 2023, 'Nine', 'C', 'ররিবার', 'গার্হস্থ্য বিজ্ঞান', '৬ষ্ট', 'MST. SHAMMI AKTAR', '101406837', '1676650881819_samima-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
(538, 2023, 'Eight', 'B', 'মঙ্গলবার', 'আবৃত্তি', '৬ষ্ট', 'MST. SHAMMI AKTAR', '101406837', '1676650881819_samima-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
(539, 2023, 'Eight', 'A', 'বৃহস্পতিবার', 'শারীরিক শিক্ষা ও স্বাস্থ্য', '৬ষ্ট', 'MST. SHAMMI AKTAR', '101406837', '1676650881819_samima-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
(540, 2023, 'Ten', 'A', 'সোমবার', 'বাংলা ১ম', '৭ম', 'MST. SHAMMI AKTAR', '101406837', '1676650881819_samima-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(541, 2023, 'Ten', 'A', 'সোমবার', 'বাংলা ১ম', '৭ম', 'MST. SHAMMI AKTAR', '101406837', '1676650881819_samima-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(542, 2023, 'Ten', 'B', 'মঙ্গলবার', 'গার্হস্থ্য বিজ্ঞান', '৭ম', 'MST. SHAMMI AKTAR', '101406837', '1676650881819_samima-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(543, 2023, 'Ten', 'B', 'মঙ্গলবার', 'গার্হস্থ্য বিজ্ঞান', '৭ম', 'MST. SHAMMI AKTAR', '101406837', '1676650881819_samima-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(544, 2023, 'Ten', 'B', 'বুধবার', 'গার্হস্থ্য বিজ্ঞান', '৭ম', 'MST. SHAMMI AKTAR', '101406837', '1676650881819_samima-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(545, 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'গার্হস্থ্য বিজ্ঞান', '৭ম', 'MST. SHAMMI AKTAR', '101406837', '1676650881819_samima-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
(546, 2023, 'Nine', 'C', 'ররিবার', 'ইংরেজী ১ম', '২য়', 'Anawaruzzam Jhantu', '000000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
(547, 2023, 'Nine', 'C', 'সোমবার', 'ইংরেজী ১ম', '২য়', 'Anawaruzzam Jhantu', '000000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
(548, 2023, 'Nine', 'C', 'মঙ্গলবার', 'ইংরেজী ১ম', '২য়', 'Anawaruzzam Jhantu', '000000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
(549, 2023, 'Seven', 'C', 'বুধবার', 'ইংরেজী ২য়', '২য়', 'Anawaruzzam Jhantu', '000000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
(550, 2023, 'Seven', 'C', 'বৃহস্পতিবার', 'ইংরেজী ২য়', '২য়', 'Anawaruzzam Jhantu', '000000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
(551, 2023, 'Six', 'A', 'বুধবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৩য়', 'Anawaruzzam Jhantu', '000000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(552, 2023, 'Six', 'A', 'বৃহস্পতিবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৩য়', 'Anawaruzzam Jhantu', '000000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(553, 2023, 'Six', 'C', 'ররিবার', 'জীবন ও জীবিকা', '৪র্থ', 'Anawaruzzam Jhantu', '000000000', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
(554, 2023, 'Six', 'C', 'সোমবার', 'জীবন ও জীবিকা', '৪র্থ', 'Anawaruzzam Jhantu', '000000000', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
(555, 2023, 'Six', 'C', 'মঙ্গলবার', 'জীবন ও জীবিকা', '৪র্থ', 'Anawaruzzam Jhantu', '000000000', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
(556, 2023, 'Ten', 'B', 'মঙ্গলবার', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '৫ম', 'Anawaruzzam Jhantu', '000000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
(557, 2023, 'Ten', 'B', 'বুধবার', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '৫ম', 'Anawaruzzam Jhantu', '000000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
(558, 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '৫ম', 'Anawaruzzam Jhantu', '000000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
(559, 2023, 'Seven', 'A', 'ররিবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৬ষ্ট', 'Anawaruzzam Jhantu', '000000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
(560, 2023, 'Seven', 'A', 'সোমবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৬ষ্ট', 'Anawaruzzam Jhantu', '000000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
(561, 2023, 'Seven', 'A', 'মঙ্গলবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৬ষ্ট', 'Anawaruzzam Jhantu', '000000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
(562, 2023, 'Eight', 'A', 'বুধবার', 'আবৃত্তি', '৬ষ্ট', 'Anawaruzzam Jhantu', '000000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
(563, 2023, 'Six', 'A', 'ররিবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৭ম', 'Anawaruzzam Jhantu', '000000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
(564, 2023, 'Seven', 'C', 'সোমবার', 'ইংরেজী ২য়', '৭ম', 'Anawaruzzam Jhantu', '000000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
(565, 2023, 'Seven', 'C', 'মঙ্গলবার', 'ইংরেজী ২য়', '৭ম', 'Anawaruzzam Jhantu', '000000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
(566, 2023, 'Eight', 'C', 'বৃহস্পতিবার', 'আবৃত্তি', '৭ম', 'Anawaruzzam Jhantu', '000000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
(567, 2023, 'Ten', 'B', 'বুধবার', 'বাংলা ১ম', '১ম', 'Sabuz Ghosh', '0000000000', 'male_avatar.png', '১০ঃ১৫ - ১১ঃ০৫'),
(568, 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'বাংলা ১ম', '১ম', 'Sabuz Ghosh', '0000000000', 'male_avatar.png', '১০ঃ১৫ - ১১ঃ০৫'),
(569, 2023, 'Eight', 'B', 'ররিবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '২য়', 'Sabuz Ghosh', '0000000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
(570, 2023, 'Eight', 'B', 'সোমবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '২য়', 'Sabuz Ghosh', '0000000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
(571, 2023, 'Eight', 'B', 'মঙ্গলবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '২য়', 'Sabuz Ghosh', '0000000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
(572, 2023, 'Eight', 'C', 'ররিবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৩য়', 'Sabuz Ghosh', '0000000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(573, 2023, 'Eight', 'C', 'সোমবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৩য়', 'Sabuz Ghosh', '0000000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(574, 2023, 'Eight', 'C', 'মঙ্গলবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৩য়', 'Sabuz Ghosh', '0000000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(575, 2023, 'Six', 'B', 'বুধবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৩য়', 'Sabuz Ghosh', '0000000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(576, 2023, 'Six', 'B', 'বৃহস্পতিবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৩য়', 'Sabuz Ghosh', '0000000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(577, 2023, 'Nine', 'B', 'ররিবার', 'ভূগোল ও পরিবেশ', '৪র্থ', 'Sabuz Ghosh', '0000000000', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
(578, 2023, 'Nine', 'B', 'সোমবার', 'ভূগোল ও পরিবেশ', '৪র্থ', 'Sabuz Ghosh', '0000000000', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
(579, 2023, 'Nine', 'B', 'মঙ্গলবার', 'ভূগোল ও পরিবেশ', '৪র্থ', 'Sabuz Ghosh', '0000000000', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
(580, 2023, 'Six', 'C', 'বুধবার', 'বাংলা ১ম', '৪র্থ', 'Sabuz Ghosh', '0000000000', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
(581, 2023, 'Six', 'C', 'বৃহস্পতিবার', 'বাংলা ১ম', '৪র্থ', 'Sabuz Ghosh', '0000000000', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
(582, 2023, 'Six', 'B', 'ররিবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৫ম', 'Sabuz Ghosh', '0000000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
(583, 2023, 'Seven', 'B', 'মঙ্গলবার', 'ডিজিটাল প্রযুক্তি', '৫ম', 'Sabuz Ghosh', '0000000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
(584, 2023, 'Seven', 'B', 'বুধবার', 'ডিজিটাল প্রযুক্তি', '৫ম', 'Sabuz Ghosh', '0000000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
(585, 2023, 'Seven', 'B', 'বৃহস্পতিবার', 'ডিজিটাল প্রযুক্তি', '৫ম', 'Sabuz Ghosh', '0000000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
(586, 2023, 'Nine', 'C', 'সোমবার', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '৬ষ্ট', 'Sabuz Ghosh', '0000000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
(587, 2023, 'Seven', 'C', 'ররিবার', 'শিল্প ও সংস্কৃতি', '৭ম', 'Sabuz Ghosh', '0000000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
(588, 2023, 'Seven', 'C', 'বৃহস্পতিবার', 'শিল্প ও সংস্কৃতি', '৭ম', 'Sabuz Ghosh', '0000000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
(589, 2023, 'Six', 'C', 'মঙ্গলবার', 'বাংলা ১ম', '৭ম', 'Sabuz Ghosh', '0000000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
(590, 2023, 'Eight', 'B', 'বুধবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৭ম', 'Sabuz Ghosh', '0000000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
(591, 2023, 'Seven', 'B', 'ররিবার', 'ইসলাম ও নৈতিক শিক্ষা', '২য়', 'Ali Ahmmad', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
(592, 2023, 'Seven', 'B', 'সোমবার', 'ইসলাম ও নৈতিক শিক্ষা', '২য়', 'Ali Ahmmad', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
(593, 2023, 'Seven', 'B', 'মঙ্গলবার', 'ইসলাম ও নৈতিক শিক্ষা', '২য়', 'Ali Ahmmad', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
(594, 2023, 'Seven', 'C', 'ররিবার', 'ইসলাম শিক্ষা', '২য়', 'Ali Ahmmad', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
(595, 2023, 'Seven', 'C', 'সোমবার', 'ইসলাম শিক্ষা', '২য়', 'Ali Ahmmad', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
(596, 2023, 'Seven', 'C', 'মঙ্গলবার', 'ইসলাম শিক্ষা', '২য়', 'Ali Ahmmad', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
(597, 2023, 'Eight', 'B', 'বুধবার', 'ইসলাম ও নৈতিক শিক্ষা', '২য়', 'Ali Ahmmad', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
(598, 2023, 'Eight', 'B', 'বৃহস্পতিবার', 'ইসলাম ও নৈতিক শিক্ষা', '২য়', 'Ali Ahmmad', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
(599, 2023, 'Eight', 'C', 'বুধবার', 'ইসলাম ও নৈতিক শিক্ষা', '২য়', 'Ali Ahmmad', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
(600, 2023, 'Eight', 'C', 'বৃহস্পতিবার', 'ইসলাম ও নৈতিক শিক্ষা', '২য়', 'Ali Ahmmad', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
(601, 2023, 'Six', 'C', 'ররিবার', 'ইসলাম শিক্ষা', '৩য়', 'Ali Ahmmad', '0000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(602, 2023, 'Six', 'C', 'সোমবার', 'ইসলাম শিক্ষা', '৩য়', 'Ali Ahmmad', '0000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(603, 2023, 'Six', 'C', 'মঙ্গলবার', 'ইসলাম শিক্ষা', '৩য়', 'Ali Ahmmad', '0000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(604, 2023, 'Ten', 'A', 'বুধবার', 'ইসলাম ও নৈতিক শিক্ষা', '৩য়', 'Ali Ahmmad', '0000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(605, 2023, 'Ten', 'A', 'বৃহস্পতিবার', 'ইসলাম ও নৈতিক শিক্ষা', '৩য়', 'Ali Ahmmad', '0000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(606, 2023, 'Ten', 'B', 'বুধবার', 'ইসলাম ও নৈতিক শিক্ষা', '৩য়', 'Ali Ahmmad', '0000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(607, 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'ইসলাম ও নৈতিক শিক্ষা', '৩য়', 'Ali Ahmmad', '0000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
(608, 2023, 'Eight', 'A', 'ররিবার', 'ইসলাম ও নৈতিক শিক্ষা', '৫ম', 'Ali Ahmmad', '0000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
(609, 2023, 'Eight', 'A', 'সোমবার', 'ইসলাম ও নৈতিক শিক্ষা', '৫ম', 'Ali Ahmmad', '0000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
(610, 2023, 'Eight', 'A', 'মঙ্গলবার', 'ইসলাম ও নৈতিক শিক্ষা', '৫ম', 'Ali Ahmmad', '0000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
(611, 2023, 'Six', 'A', 'বুধবার', 'ইসলাম ও নৈতিক শিক্ষা', '৫ম', 'Ali Ahmmad', '0000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
(612, 2023, 'Six', 'A', 'বৃহস্পতিবার', 'ইসলাম ও নৈতিক শিক্ষা', '৫ম', 'Ali Ahmmad', '0000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
(613, 2023, 'Six', 'B', 'ররিবার', 'ইসলাম শিক্ষা', '৬ষ্ট', 'Ali Ahmmad', '0000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
(614, 2023, 'Six', 'B', 'সোমবার', 'ইসলাম শিক্ষা', '৬ষ্ট', 'Ali Ahmmad', '0000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
(615, 2023, 'Six', 'B', 'মঙ্গলবার', 'ইসলাম শিক্ষা', '৬ষ্ট', 'Ali Ahmmad', '0000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
(616, 2023, 'Seven', 'A', 'বুধবার', 'ইসলাম শিক্ষা', '৬ষ্ট', 'Ali Ahmmad', '0000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
(617, 2023, 'Seven', 'A', 'বৃহস্পতিবার', 'ইসলাম শিক্ষা', '৬ষ্ট', 'Ali Ahmmad', '0000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
(618, 2023, 'Six', 'A', 'সোমবার', 'ইসলাম শিক্ষা', '৭ম', 'Ali Ahmmad', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
(619, 2023, 'Nine', 'A', 'মঙ্গলবার', 'ইসলাম ও নৈতিক শিক্ষা', '৭ম', 'Ali Ahmmad', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
(620, 2023, 'Nine', 'A', 'বুধবার', 'ইসলাম ও নৈতিক শিক্ষা', '৭ম', 'Ali Ahmmad', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
(621, 2023, 'Nine', 'A', 'বৃহস্পতিবার', 'ইসলাম ও নৈতিক শিক্ষা', '৭ম', 'Ali Ahmmad', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
(622, 2023, 'Nine', 'B', 'মঙ্গলবার', 'ইসলাম ও নৈতিক শিক্ষা', '৭ম', 'Ali Ahmmad', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
(623, 2023, 'Nine', 'B', 'বুধবার', 'ইসলাম ও নৈতিক শিক্ষা', '৭ম', 'Ali Ahmmad', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
(624, 2023, 'Nine', 'B', 'বৃহস্পতিবার', 'ইসলাম ও নৈতিক শিক্ষা', '৭ম', 'Ali Ahmmad', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
(625, 2023, 'Nine', 'C', 'মঙ্গলবার', 'ইসলাম ও নৈতিক শিক্ষা', '৭ম', 'Ali Ahmmad', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
(626, 2023, 'Nine', 'C', 'বুধবার', 'ইসলাম ও নৈতিক শিক্ষা', '৭ম', 'Ali Ahmmad', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
(627, 2023, 'Nine', 'C', 'বৃহস্পতিবার', 'ইসলাম ও নৈতিক শিক্ষা', '৭ম', 'Ali Ahmmad', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
(628, 2023, 'Ten', 'C', 'ররিবার', 'সামাঃ বিজ্ঞান', '১ম', 'SOUMITRA SAHA', '100555345', '1676563832731_soumitra-saha-sir.png', '১০ঃ১৫ - ১১ঃ০৫');

-- --------------------------------------------------------

--
-- Table structure for table `school_settings`
--

CREATE TABLE `school_settings` (
  `ID` int(11) NOT NULL,
  `EIIN` int(11) NOT NULL,
  `class` varchar(100) NOT NULL DEFAULT 'Six',
  `section` varchar(100) NOT NULL DEFAULT 'A',
  `logo` varchar(500) NOT NULL DEFAULT 'logo.png',
  `image` varchar(500) NOT NULL DEFAULT 'default.png',
  `name` varchar(500) NOT NULL DEFAULT 'N/A',
  `heading` varchar(500) NOT NULL DEFAULT 'N/A',
  `tile` varchar(500) NOT NULL DEFAULT 'N/A',
  `message` int(11) NOT NULL,
  `president_name` varchar(500) NOT NULL DEFAULT 'N/A',
  `president_img` varchar(500) NOT NULL DEFAULT 'president.png',
  `headmaster_name` varchar(500) NOT NULL DEFAULT 'N/A',
  `headmaster_img` varchar(500) NOT NULL DEFAULT 'headmaster.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `ID` int(11) NOT NULL,
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
  `telephone` varchar(100) NOT NULL DEFAULT 'XXXXXXXXXXX',
  `father_name` varchar(100) NOT NULL DEFAULT 'N/A',
  `mother_name` varchar(100) NOT NULL DEFAULT 'N/A',
  `address` varchar(100) NOT NULL DEFAULT 'N/A',
  `religion` varchar(100) NOT NULL DEFAULT 'N/A',
  `admission_date` varchar(100) DEFAULT 'N/A',
  `hobbies` varchar(100) DEFAULT 'N/A',
  `avatar` varchar(500) NOT NULL DEFAULT 'male_avatar.png',
  `facebook_link` varchar(100) NOT NULL DEFAULT 'N/A',
  `password` varchar(100) NOT NULL DEFAULT 'password',
  `quote` varchar(500) NOT NULL DEFAULT 'N/A',
  `at_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`ID`, `session`, `class`, `section`, `name`, `student_id`, `roll`, `reg`, `birth_date`, `gender`, `blood_group`, `email`, `telephone`, `father_name`, `mother_name`, `address`, `religion`, `admission_date`, `hobbies`, `avatar`, `facebook_link`, `password`, `quote`, `at_date`) VALUES
(17, 2023, 'Six', 'A', 'Rimu Roy', 456094, 110, 'XXXXXXXXXX', '2010-06-02', 'Male', 'undefined', '456094@gmail.com', '01723885040', 'Shanjay Roy', 'Kakoli Roy', 'baguan,boalmari,faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'ceccc0518f00e8e9f88f4eb13861e671', 'N/A', '2023-02-25 09:27:00'),
(18, 2023, 'Six', 'A', 'Eti Aktar', 259083, 87, 'XXXXXXXXXX', '2011-02-10', 'Female', 'undefined', '259083@gmail.com', '01789553635', 'shadat hosen molla', 'farida parvin', 'baguan,boalmari,faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '7cca05af5ae599d382fc5ed292923d38', 'N/A', '2023-02-25 09:32:03'),
(19, 2023, 'Six', 'A', 'Jamila Nowshin', 158039, 147, 'XXXXXXXXXX', '2012-12-22', 'Female', 'undefined', '158039@gmail.com', '01742759063', 'Md Najrul islam', 'Roksana Khanom', 'baguan,boalmari,faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '71049e2ab8e6a9fb6d967fbcfc1d8939', 'N/A', '2023-02-25 09:42:32'),
(20, 2023, 'Six', 'A', 'Mehzabin Alom', 794939, 148, 'XXXXXXXXXX', '2011-12-23', 'Female', 'undefined', '794939@gmail.com', '01912028019', 'Mohammad Mahbubul Alom', 'Fahmida', 'chotul,boalmari,faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '0a26720210663d27433a2f4462852005', 'N/A', '2023-02-25 09:52:17'),
(22, 2023, 'Six', 'A', 'Mst Farjana', 542988, 135, 'XXXXXXXXXX', '2012-03-25', 'Female', 'undefined', '542988@gmail.com', '01962362069', 'MD Al Imran', 'Mst Forjora Aktar', 'chapoldanga,boalmari,faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'd94b6be20377b79ee49bac524bfca484', 'N/A', '2023-02-25 09:59:48'),
(28, 2023, 'Six', 'A', 'Fatema Aktar', 450957, 107, 'XXXXXXXXXX', '2012-10-02', 'Female', 'undefined', '450957@gmail.com', '01798473272', 'MD Ikbal Biswas', 'Soniya Parvin', 'Pashcimkamargram.boalmari,faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'c955f6e37bd2c7ad23b2c598dde70e48', 'N/A', '2023-02-25 11:24:27'),
(29, 2023, 'Six', 'A', 'Khadija Tul Kubra', 123400, 83, 'XXXXXXXXXX', '2013-11-09', 'Female', 'undefined', '123400@gmail.com', '01731496178', 'MD Azizur Rahman', 'Mst Rubia Parvin', 'Gunbaha,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'caa013bde21a5bd9b2f056d3375e878e', 'N/A', '2023-02-25 11:30:52'),
(30, 2023, 'Six', 'A', 'Shraddha Rani Shaha ', 747945, 70, 'XXXXXXXXXX', '2012-10-30', 'Female', 'undefined', '747945@gmail.com', '01722431025', 'Jayanto Shaha', 'Laboni Rani Shaha', 'Nakol,Shripur,Magura', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '86862ae5d38976f11ac1a966549e3f12', 'N/A', '2023-02-25 11:35:22'),
(31, 2023, 'Six', 'A', 'Mohsina Rahman Maliha', 712997, 60, 'XXXXXXXXXX', '2011-09-30', 'Female', 'undefined', '712997@gmail.com', '01707906766', 'Moklukur Rahman', 'Luna Aktar', 'Rajapur,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'b3351f1e720f647a4557a29306ba99a6', 'N/A', '2023-02-25 11:39:26'),
(32, 2023, 'Six', 'A', 'Aparna Shaha', 575023, 46, 'XXXXXXXXXX', '2012-11-23', 'Female', 'undefined', '575023@gmail.com', '01756342400', 'Ratan Kumar Shaha', 'Kamini Rani Shaha', 'Oi,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '5fca64e83646d727c130cd0a2be36e58', 'N/A', '2023-02-25 11:45:02'),
(33, 2023, 'Six', 'A', 'Mst Sumaiya Parvin', 282724, 57, 'XXXXXXXXXX', '2011-04-02', 'Female', 'undefined', '282724@gmail.com', '01932407850', 'MD Pinno Munsi', 'Josna Begum', 'Gurdiya,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '2fe36cde01067fd556b02f8d461dc19c', 'N/A', '2023-02-25 12:47:42'),
(35, 2023, 'Six', 'A', 'Sadiya', 490449, 31, 'XXXXXXXXXX', '2011-11-02', 'Female', 'undefined', '490449@gmail.com', '01322163128', 'MD Sajjad Sheikh', 'Tahmina Begum', 'Kamargram,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'd90735a68ada14da3c3e7edcd9b322af', 'N/A', '2023-02-25 12:56:48'),
(36, 2023, 'Six', 'A', 'Maria Ferdous Munni', 662406, 42, 'XXXXXXXXXX', '2012-08-17', 'Female', 'undefined', '662406@gmail.com', '01718304192', 'MD Khairul Alom Raju', 'Mousumi Aktar', 'Kamargram,Alfaganga,Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '1d2619b192762cf98d81cb6cbe6b6a0f', 'N/A', '2023-02-25 13:03:38'),
(37, 2023, 'Six', 'A', 'Meghla Biswas Kotha', 509066, 23, 'XXXXXXXXXX', '2011-11-19', 'Female', 'undefined', '509066@gmail.com', '01747413204', 'Satya Ranjan Biswas', 'Dipti Biswas', 'Boalmari,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'cbf548710753ff1e684d20fdc44af63f', 'N/A', '2023-02-25 13:09:30'),
(39, 2023, 'Six', 'A', 'Mst Meghla Aktar', 259241, 76, 'XXXXXXXXXX', '2011-01-05', 'Female', 'undefined', '259241@gmail.com', '01910165402', 'MD Ikbal Mia', 'Mst Nupur', 'Felannagor,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'aa432bcdb0351d4222c00c1cc37cc9f0', 'N/A', '2023-02-25 13:14:22'),
(40, 2023, 'Six', 'A', 'Moriyam Islam Kaifa', 573409, 101, 'XXXXXXXXXX', '2012-05-19', 'Female', 'undefined', '573409@gmail.com', '01783818297', 'MD Juyel Sardar', 'Mst Aysha Begum', 'Felannagor,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '637beca353882caa789d76d9ba169d3c', 'N/A', '2023-02-25 13:18:00'),
(41, 2023, 'Six', 'A', 'Hridita Rahman Sawdah', 679041, 128, 'XXXXXXXXXX', '2011-11-25', 'Female', 'undefined', '679041@gmail.com', '01718060408', 'MD Sadin Ur Rahman', 'Rojina Parvin', 'Kamargram,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'd7fc54685d5c09d4d2eb0f56af8995c4', 'N/A', '2023-02-25 13:27:59'),
(42, 2023, 'Six', 'A', 'Ankita Poddar Anu', 65350, 132, 'XXXXXXXXXX', '2012-09-16', 'Female', 'undefined', '65350@gmail.com', '01715856764', 'Ashok Kumar Poddar', 'Madhuri Ghosh', 'Amgram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '34de7827f2fbe976664c04bd30dec6f4', 'N/A', '2023-02-25 16:09:02'),
(43, 2023, 'Six', 'A', 'Fatema Aktar Barsha', 141808, 126, 'XXXXXXXXXX', '2012-01-01', 'Female', 'undefined', '141808@gmail.com', '01728414143', 'Md Bashar Sheikh', 'Mst Nargis Begum', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '71b6c55d967761a02a027b4869e943d2', 'N/A', '2023-02-25 16:15:42'),
(44, 2023, 'Six', 'A', 'Jobayda', 681987, 91, 'XXXXXXXXXX', '2012-01-01', 'Female', 'undefined', '681987@gmail.com', '01967741301', 'Md Jahidul Islam', 'Anguyara Begum', 'Shelahat, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'f1bce39094c9ed03d5c3d4ca250f399a', 'N/A', '2023-02-25 16:20:49'),
(45, 2023, 'Six', 'A', 'Fatema Khanom', 331922, 146, 'XXXXXXXXXX', '2011-01-12', 'Female', 'undefined', '331922@gmail.com', '01771606526', 'MD Baban Sheikh', 'Lavli Begum', 'Isakhali, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'b96fd348385259ae2b8318f6eadbd40b', 'N/A', '2023-02-25 16:28:44'),
(46, 2023, 'Six', 'A', 'Raisa Islam', 256417, 94, 'XXXXXXXXXX', '2012-01-03', 'Female', 'undefined', '256417@gmail.com', '01770415714', 'MD Billal Hosen', 'Lima Sultana', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '2099e17381883b9aa3968becc8ac5740', 'N/A', '2023-02-25 16:39:28'),
(47, 2023, 'Six', 'A', 'Sadia Afrin Chaiti', 820172, 50, 'XXXXXXXXXX', '2011-12-01', 'Female', 'undefined', '820172@gmail.com', '01731302151', 'MD Murujjaman Monir', 'Lima Khanom', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '217f309b061d3dc02c989f775dc3cf2f', 'N/A', '2023-02-25 16:42:57'),
(50, 2023, 'Six', 'A', 'Maisha Aktar Tisha', 632091, 150, 'XXXXXXXXXX', '2012-08-01', 'Female', 'undefined', '632091@gmail.com', '01745438874', 'MD Mizanur Rahman Antor', 'Nirala', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '1917fad2bdbf642f514f25bdb58fea31', 'N/A', '2023-02-25 16:46:03'),
(51, 2023, 'Six', 'A', 'Mst Yasmin Khanom', 273959, 149, 'XXXXXXXXXX', '2011-11-20', 'Female', 'undefined', '273959@gmail.com', '01988692788', 'MD Ezazul Sheikh', 'Mst Lili Begum', 'Chalinagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'ef5b053b7406dfc0469dd19625fa8437', 'N/A', '2023-02-25 16:50:30'),
(53, 2023, 'Six', 'A', 'Fahmida Tasmin', 32908, 59, 'XXXXXXXXXX', '2012-10-21', 'Female', 'undefined', '32908@gmail.com', '01830980880', 'MD Imdadul Haque', 'Mst Fatematur Jahura', 'Chalinagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '02ed85fbdff4afbb4c764b6914181487', 'N/A', '2023-02-25 17:19:34'),
(54, 2023, 'Six', 'A', 'Lamia Islam', 364647, 122, 'XXXXXXXXXX', '2010-10-10', 'Female', 'undefined', '364647@gmail.com', '01715799804', 'MD abdullah', 'Jobayda Aktar Munni', 'Soyedpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '1dcf7588061f0d0e592e66ed6a098828', 'N/A', '2023-02-25 17:23:02'),
(55, 2023, 'Six', 'A', 'Bindia Khanom', 791414, 125, 'XXXXXXXXXX', '2012-03-18', 'Female', 'undefined', '791414@gmail.com', '01613884361', 'MD Bablu Mia', 'Mst Happy Khatun', 'Pashchimkamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '381dd822fe6f0ae207f525f66f52c4cd', 'N/A', '2023-02-25 17:32:47'),
(56, 2023, 'Six', 'A', 'Jiniya Pori', 318554, 19, 'XXXXXXXXXX', '2012-01-01', 'Female', 'undefined', '318554@gmail.com', '01915785810', 'MD Kamruzzaman', 'Fahmida Aktar Urmi', 'Kaliyand, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'e0a7cb78f122e6fdea14c3d462fb8675', 'N/A', '2023-02-25 17:36:30'),
(57, 2023, 'Six', 'A', 'Minha Rojoni', 539986, 73, 'XXXXXXXXXX', '2012-12-02', 'Female', 'undefined', '539986@gmail.com', '01733639009', 'AB Rajjak Molla', 'Mst Rijiya Begum', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '532da3723ee9a86bca77453352f680ed', 'N/A', '2023-02-25 17:40:31'),
(58, 2023, 'Six', 'A', 'Arpita Shil', 345775, 108, 'XXXXXXXXXX', '2012-12-21', 'Female', 'undefined', '345775@gmail.com', '01879187331', 'Arup Kumar Shil', 'Amita Rani Shil', 'Oi, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'af613e31c0dc82a4ebd6990195367e40', 'N/A', '2023-02-25 17:42:53'),
(59, 2023, 'Six', 'A', 'Amrita Saha', 344506, 158, 'XXXXXXXXXX', '2013-05-03', 'Female', 'undefined', '344506@gmail.com', '00000000000', 'Asim Saha', 'Suma Rani Saha', 'Oi, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '49193d2046cf101f98b77c99fdcfd4e2', 'N/A', '2023-02-25 18:10:15'),
(60, 2023, 'Six', 'A', 'Fatema Khan', 145764, 30, 'XXXXXXXXXX', '2012-01-14', 'Female', 'undefined', '145764@gmail.com', '01728370040', 'MD Mosarof Hosain', 'Priyanka', 'Amgram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '4810a20bb46de283945d2d49bd7e3d35', 'N/A', '2023-02-25 18:14:45'),
(61, 2023, 'Six', 'A', 'Surthiya', 893407, 156, 'XXXXXXXXXX', '2012-01-08', 'Female', 'undefined', '893407@gmail.com', '01742797895', 'Saheb Molla', 'Rimi Begum', 'Satair, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '8b1e58a93599ee4613af02b275fdf33b', 'N/A', '2023-02-25 18:17:40'),
(62, 2023, 'Six', 'A', 'Tasfia Haque Torsa', 181569, 29, 'XXXXXXXXXX', '2013-01-18', 'Male', 'undefined', '181569@gmail.com', '01721312026', 'MD Tanmoy Haque Tonu', 'Najma Khanom', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'b0635a5ff1fa1583538751c99d1995b6', 'N/A', '2023-02-25 18:24:01'),
(63, 2023, 'Six', 'A', 'Soyeda Abida', 501690, 155, 'XXXXXXXXXX', '2013-09-09', 'Male', 'undefined', '501690@gmail.com', '01712310959', 'Soyed Arif', 'Soyeda Laki', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '9b07b534c078c7eefd4498b033fc5833', 'N/A', '2023-02-25 18:26:57'),
(64, 2023, 'Six', 'A', 'Mst Tania Islam Nadi', 577432, 154, 'XXXXXXXXXX', '2010-12-25', 'Female', 'undefined', '577432@gmail.com', '01765191033', 'MD Abul Bashar ', 'Rojina', 'Bandugram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '8136d2a1c64326663079c0acda7f2834', 'N/A', '2023-02-25 18:30:48'),
(65, 2023, 'Six', 'A', 'Mst Tanjira Khatun', 763986, 127, 'XXXXXXXXXX', '2011-08-29', 'Female', 'undefined', '763986@gmail.com', '01765706233', 'MD Seken Sheikh', 'Mst Jahanara Begum', 'Dokkhinkamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '0e0c7dd4d4bbbf1240ae73551e67929c', 'N/A', '2023-02-25 18:33:07'),
(66, 2023, 'Six', 'A', 'Mst Faria', 546875, 153, 'XXXXXXXXXX', '2011-03-10', 'Female', 'undefined', '546875@gmail.com', '01920102650', 'MD Farid Biswas', 'Mst Mafruja Begum', 'Amritanagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '2eec5c5ead49e4293be68505bdfe8790', 'N/A', '2023-02-25 18:36:05'),
(67, 2023, 'Six', 'A', 'Mst Hasi Khanom', 196120, 152, 'XXXXXXXXXX', '2012-11-15', 'Female', 'undefined', '196120@gmail.com', '01914761506', 'MD Shahidul Islam', 'Mst Jui Begum', 'Uttarshibpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'bc2099df12da8637b6706d210d1d78c2', 'N/A', '2023-02-25 18:38:15'),
(68, 2023, 'Six', 'A', 'Sukorna Sarkar', 71396, 145, 'XXXXXXXXXX', '2011-02-08', 'Female', 'undefined', '71396@gmail.com', '01845567967', 'Sujoy Sarkar', 'Shipra Sarkar', 'Pashchimkamargram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '4afebb4922e685ecb0ae3c62434820d6', 'N/A', '2023-02-26 03:10:33'),
(69, 2023, 'Six', 'A', 'Tutul Biswas', 897508, 54, 'XXXXXXXXXX', '2011-12-15', 'Female', 'undefined', '897508@gmail.com', '01727941780', 'Debashis Biswas', 'Kakoli Pul', 'Kamargram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '987af6f4424d699b703796c55e452818', 'N/A', '2023-02-26 03:22:41'),
(70, 2023, 'Six', 'A', 'Hujaifa', 629581, 138, 'XXXXXXXXXX', '2012-02-23', 'Female', 'undefined', '629581@gmail.com', '01731358267', 'Mohammad Ziaur Rahman', 'Mst Hasna Hena', 'DakkhinKamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '3d4b9fb1590d99241b08ba80ab52b3cc', 'N/A', '2023-02-26 03:26:07'),
(71, 2023, 'Six', 'A', 'Mst Jamila', 53519, 151, 'XXXXXXXXXX', '2011-11-29', 'Female', 'undefined', '53519@gmail.com', '01762362032', 'MD Alimuzzaman', 'Fatema Begum', 'Oi, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '4fe941bbb6dd5dac1bdf4cf143e2c50e', 'N/A', '2023-02-26 03:28:37'),
(72, 2023, 'Six', 'A', 'Jannati', 530174, 18, 'XXXXXXXXXX', '2012-07-30', 'Female', 'undefined', '530174@gmail.com', '01403978863', 'MD Shofikul  Islam', 'Amena', 'Uttarshibpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '4ec3fc585369e1c69f46fa48642136d9', 'N/A', '2023-02-26 03:31:30'),
(73, 2023, 'Six', 'A', 'Fabiha An Faruki', 863826, 80, 'XXXXXXXXXX', '2012-01-01', 'Female', 'undefined', '863826@gmail.com', '0000000000', 'MD Faruk Sheikh', 'Mst Fatema Yasmin', 'Oi, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '3307381918f5139a002c4396d02188f0', 'N/A', '2023-02-26 03:34:17'),
(74, 2023, 'Six', 'A', 'Jannatul Anha', 871832, 129, 'XXXXXXXXXX', '2012-02-05', 'Female', 'undefined', '871832@gmail.com', '01710503105', 'Molla MD Kamrul Islamot', 'Shamima', 'Arpara, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '4a1eaf5d5d58a1d1cf622ac3665f39a6', 'N/A', '2023-02-26 03:37:01'),
(75, 2023, 'Six', 'A', 'Sintia Aktar Simi', 607614, 109, 'XXXXXXXXXX', '2012-12-21', 'Female', 'undefined', '607614@gmail.com', '01797142145', 'MD Shajal Molla', 'Sabina Khanom', 'Chapoldanga, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '8b11afe2eba91f35f2760f8d2df64dcd', 'N/A', '2023-02-26 03:50:46'),
(76, 2023, 'Six', 'A', 'Mst Mimi Aktar', 865781, 99, 'XXXXXXXXXX', '2012-03-07', 'Female', 'undefined', '865781@gmail.com', '01939442372', 'Mojibor Sheikh', 'Chaina Begum', 'Oi, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'e924d882cd5ece7b7a7f178985d30088', 'N/A', '2023-02-26 03:53:09'),
(77, 2023, 'Six', 'A', 'Jannati Khanom', 779396, 10, 'XXXXXXXXXX', '2011-01-15', 'Female', 'undefined', '779396@gmail.com', '01739226057', 'MD Gaffar Molla', 'Mst Shampa Begum', 'Chukinagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '0913fcd1166b39a9ab9563f1298dd6bc', 'N/A', '2023-02-26 03:55:33'),
(78, 2023, 'Six', 'A', 'Fatima choya', 803058, 6, 'XXXXXXXXXX', '2011-01-11', 'Female', 'undefined', '803058@gmail.com', '01720273741', 'MD Kamrul Islam', 'Muslima Yasmin', 'Oi, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '2b344f568a05c786d0679a984470a45a', 'N/A', '2023-02-26 04:01:27'),
(79, 2023, 'Six', 'A', 'Asfia Islam', 232547, 62, 'XXXXXXXXXX', '2013-03-29', 'Female', 'undefined', '232547@gmail.com', '01712296729', 'Aminul Islam', 'Mst Sharmin Jahan', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'dd684fb3825ec45ab9c9235640f7789f', 'N/A', '2023-02-26 04:06:08'),
(80, 2023, 'Six', 'A', 'Mahiya Jahan Tonni', 362553, 55, 'XXXXXXXXXX', '2011-07-24', 'Female', 'undefined', '362553@gmail.com', '01925975277', 'MD Cunnu Mia ', 'Mst Hosneyara Begum', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'ce9a8b2f737768262f268106a4209b61', 'N/A', '2023-02-26 04:21:58'),
(81, 2023, 'Six', 'A', 'Nusrat Jahan Nowrin ', 103345, 15, 'XXXXXXXXXX', '2012-01-01', 'Female', 'undefined', '103345@gmail.com', '01755083195', 'MD MOnirul Sheikh', 'Ruma Begum', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '2808c2b9272164e404b25631f51dee46', 'N/A', '2023-02-26 04:25:30'),
(82, 2023, 'Six', 'A', 'Tasminara Khanom', 380975, 142, 'XXXXXXXXXX', '2012-04-22', 'Female', 'undefined', '380975@gmail.com', '01711105633', 'MD Riaj Khan', 'Mst Mukta Parvin', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '103a764a036397f630076b7c4b536e60', 'N/A', '2023-02-26 04:28:09'),
(83, 2023, 'Six', 'A', 'Asha Moni', 297542, 134, 'XXXXXXXXXX', '2012-04-26', 'Female', 'undefined', '297542@gmail.com', '01718659923', 'MD Aminur Kha ', 'Mst Sabina Begum', 'chandanireninagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '96ade458427a9577eb906b35d499ab68', 'N/A', '2023-02-26 04:32:23'),
(84, 2023, 'Six', 'A', 'Oishorjo Sharkar', 12687, 13, 'XXXXXXXXXX', '2012-07-27', 'Female', 'undefined', '12687@gmail.com', '01724385533', 'Bisnu pado Sharkar', 'Shubarna Sharkar', 'Kamargram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'd6455f2580f74116ef3cd0aef22bf30d', 'N/A', '2023-02-26 09:24:20'),
(85, 2023, 'Six', 'A', 'Sima Ghosh', 280227, 27, 'XXXXXXXXXX', '2012-12-10', 'Female', 'undefined', '280227@gmail.com', '01780924355', 'Narayan chandra Ghosh', 'Eti Rani Pul', 'Amgram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '2a635abdc96fbe1ac8b1b48dbc743eda', 'N/A', '2023-02-26 09:26:48'),
(86, 2023, 'Six', 'A', 'Mariyam Islam Keya', 736629, 123, 'XXXXXXXXXX', '2011-08-19', 'Female', 'undefined', '736629@gmail.com', '01920444750', 'MD Alomgir Hosen', 'Sumaiya Begum', 'Oi, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'ea52932a6eb2897eb008cb56476dbbd3', 'N/A', '2023-02-26 09:29:54'),
(87, 2023, 'Six', 'A', 'Sabina Yasmin', 403437, 64, 'XXXXXXXXXX', '2011-12-31', 'Female', 'undefined', '403437@gmail.com', '01307056124', 'MD Aminur Kazi', 'Alpona', 'Oi, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '21b4188ad303529c5717f6bb3e176aa0', 'N/A', '2023-02-26 09:32:32'),
(88, 2023, 'Six', 'A', 'Antika Bosak', 181450, 45, 'XXXXXXXXXX', '2012-01-01', 'Female', 'undefined', '181450@gmail.com', '01715495530', 'Prabir Kumar Bosak', 'Gita Bosak', 'Boalmari, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'ac8cdb7b0d3a67cc5af12dc103d82d39', 'N/A', '2023-02-26 09:35:17'),
(89, 2023, 'Six', 'A', 'Jenima Haque', 487086, 48, 'XXXXXXXXXX', '2012-03-11', 'Female', 'undefined', '487086@gmail.com', '01721603240', 'Mohammad Jahidul Haque', 'Mitanur', 'Boalmari, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'e559187934f19ebd075ea88c75e003f9', 'N/A', '2023-02-26 09:38:07'),
(90, 2023, 'Six', 'A', 'Mehjabin Khan', 456397, 130, 'XXXXXXXXXX', '2012-04-11', 'Female', 'undefined', '456397@gmail.com', '01778154251', 'MD Momin Khan', 'Syeda Sahina Tithi', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '61ad1fb86563a78c86e5bcae56bf1361', 'N/A', '2023-02-26 09:43:49'),
(91, 2023, 'Six', 'A', 'Tasnim Binte Tanvir', 190151, 38, 'XXXXXXXXXX', '2012-01-01', 'Female', 'undefined', '190151@gmail.com', '10710410151', 'MD Tanvir Hosen', 'MSt Jannatul Ferdous', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'd5d4e524601e2c7cfbe4575b2cf3cf33', 'N/A', '2023-02-26 09:48:34'),
(92, 2023, 'Six', 'A', 'Tabassum Islam', 623693, 41, 'XXXXXXXXXX', '2013-02-09', 'Female', 'undefined', '623693@gmail.com', '01718729562', 'MD Tarikul Islam', 'Rokeya Khanom', 'Boalmari, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '3b230a6be51f3a14a6b31894e2078b47', 'N/A', '2023-02-26 09:51:44'),
(93, 2023, 'Six', 'A', 'Annwesha Saha', 138357, 84, 'XXXXXXXXXX', '2012-01-15', 'Female', 'undefined', '138357@gmail.com', '01946826686', 'Anupam Saha', 'Lakshmi Rani  Saha', 'Amgram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '3acfc3357262ffa167f75c81f07e7d18', 'N/A', '2023-02-26 09:59:45'),
(94, 2023, 'Six', 'A', 'Samapti Biswas', 813382, 8, 'XXXXXXXXXX', '2011-03-18', 'Female', 'undefined', '813382@gmail.com', '01950523052', 'Subol Biswas', 'Dipti Biswas', 'Bahirbag, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'b9c9ac29066ef90f9a56edce12d483d3', 'N/A', '2023-02-26 10:02:20'),
(95, 2023, 'Six', 'A', 'Bonna', 466291, 68, 'XXXXXXXXXX', '2012-01-01', 'Female', 'undefined', '466291@gmail.com', '01930606331', 'MD Nannu Sheikh', 'Mst Nilufa Begum', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'a6eaa3babbf0a9f43dafceaf49a0387f', 'N/A', '2023-02-26 10:05:03'),
(96, 2023, 'Six', 'A', 'Abeda Sultana', 551880, 25, 'XXXXXXXXXX', '2012-09-08', 'Female', 'undefined', '551880@gmail.com', '01861039826', 'MD Anowar Hosen', 'Mst Rahima Aktar', 'Adharkotha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '29f4c7c459cb80c5f771404a73b9997d', 'N/A', '2023-02-26 10:07:15'),
(97, 2023, 'Six', 'A', 'Mst Israt Jahan Mahima', 74139, 61, 'XXXXXXXXXX', '2010-09-15', 'Female', 'undefined', '74139@gmail.com', '01728022264', 'Ms Mahmudul Hasan', 'Taslima', 'Kushdanga, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'f0a1d9faefdc12a140417f82f5526f76', 'N/A', '2023-02-26 10:09:22'),
(98, 2023, 'Six', 'A', 'Arnisa Rahman Jim', 734052, 44, 'XXXXXXXXXX', '2013-08-09', 'Female', 'undefined', '734052@gmail.com', '01753636543', 'MD Anisur Rahman Mintu', 'Shakila', 'Sotashi, BOalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '319f1d2baebd0717faed304f02d19bd5', 'N/A', '2023-02-26 13:16:53'),
(99, 2023, 'Six', 'A', 'Sumoti Adhikari', 617448, 102, 'XXXXXXXXXX', '2012-08-04', 'Female', 'undefined', '617448@gmail.com', '01759804742', 'Alok Kumar Adhikari', 'Manjila Rani Adhiakri', 'Amgram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '2ac99df637c27d32ce54c117c18f8e5a', 'N/A', '2023-02-26 13:23:45'),
(100, 2023, 'Six', 'A', 'Mst  Arifa Aktar', 196370, 113, 'XXXXXXXXXX', '2011-01-19', 'Female', 'undefined', '196370@gmail.com', '01972809268', 'MD Kamal Hosen', 'Hawa Begum', 'Horihornagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'b59a1722a9b270158d5b3ca963b83638', 'N/A', '2023-02-26 13:25:52'),
(101, 2023, 'Six', 'A', 'Mariyam', 617271, 144, 'XXXXXXXXXX', '2011-10-22', 'Female', 'undefined', '617271@gmail.com', '01744228960', 'MD Imrul Hosain', 'Ambiya Parvin', 'Raipur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'd660146b264272e030069c0eef3ad804', 'N/A', '2023-02-26 17:05:52'),
(102, 2023, 'Six', 'A', 'Afsana Mahiya', 476403, 21, 'XXXXXXXXXX', '2010-03-24', 'Female', 'undefined', '476403@gmail.com', '01930152417', 'Tuku Mollik', 'Selina Begum', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'bf10fbeb0bcb034cbbebeb03299b700d', 'N/A', '2023-02-26 17:24:44'),
(103, 2023, 'Six', 'A', 'Sadia Aktar', 24208, 137, 'XXXXXXXXXX', '2011-03-24', 'Female', 'undefined', '24208@gmail.com', '01959970490', 'Ashrafuzzaman Biswas', 'Fahima Khatun', 'Kamarhati, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'cd0e59a1eec633519f283b7037dd3378', 'N/A', '2023-02-26 17:27:50'),
(104, 2023, 'Six', 'A', 'Joyi Pathok', 55571, 28, 'XXXXXXXXXX', '2012-11-27', 'Female', 'undefined', '55571@gmail.com', '01729843222', 'Jotimmoy Pathok', 'Lipika Rani Mukharji', 'Boalmari, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '1d90a49294d66c1af1bc9495bff6d0f0', 'N/A', '2023-02-26 17:49:31'),
(105, 2023, 'Six', 'A', 'Mst Rojoni Jahan Diba', 348704, 143, 'XXXXXXXXXX', '2011-07-11', 'Female', 'undefined', '348704@gmail.com', '01957118283', 'MD Khalidul Islam', 'Najmin Aktar', 'Oi, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '19f37cf937a3730112ec06c2588eacea', 'N/A', '2023-02-26 17:51:56'),
(106, 2023, 'Six', 'A', 'Rahnuma Faruk Suhaila', 223879, 82, 'XXXXXXXXXX', '2012-07-18', 'Female', 'undefined', '223879@gmail.com', '01902786843', 'Omar Faruk Bashar', 'Kazi jahida', 'Uttarshibpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '5f5f34d1657fef1361573bcd590ce886', 'N/A', '2023-02-26 17:54:42'),
(108, 2023, 'Six', 'A', 'Mohona Khanom', 396130, 136, 'XXXXXXXXXX', '2012-06-18', 'Female', 'undefined', '396130@gmail.com', '01722156464', 'Mahbub Rahman', 'Asma Begum', 'Raipur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '547d589ca6142142a9fbc3deb2776dd2', 'N/A', '2023-02-26 17:57:45'),
(109, 2023, 'Six', 'A', 'Aysha Khatun', 165221, 141, 'XXXXXXXXXX', '2012-06-18', 'Female', 'undefined', '165221@gmail.com', '01722156464', 'Mahbub Rahman', 'Asma Begum', 'Raipur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '4deeefeb8bb39ae55ba426596ac1f4fc', 'N/A', '2023-02-26 17:59:14'),
(110, 2023, 'Six', 'A', 'Aysha Khatun', 185505, 141, 'XXXXXXXXXX', '2010-11-28', 'Female', 'undefined', '185505@gmail.com', '01764892442', 'MD Sobuj Mastar', 'Sapna Begum', 'Amgram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '2991de7e4840ad107afa6911fe2eb9af', 'N/A', '2023-02-26 18:01:34'),
(111, 2023, 'Six', 'A', 'Syeda Sanjida Shirin', 138821, 105, 'XXXXXXXXXX', '2012-01-07', 'Female', 'undefined', '138821@gmail.com', '01766922999', 'Shofikul Islam', 'Mst Zuthi Aktar Rikta', 'Bahirbag, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '5f638d5bef21048ecf7c126926551252', 'N/A', '2023-02-26 18:04:25'),
(112, 2023, 'Six', 'A', 'Mst Tania', 688910, 65, 'XXXXXXXXXX', '2009-05-14', 'Female', 'undefined', '688910@gmail.com', '01844585247', 'MD Babul', 'Mst Anjira Begum', 'Amritanagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '86f99df403aae72f42cfda51d409ffe1', 'N/A', '2023-02-26 18:06:28'),
(113, 2023, 'Six', 'A', 'Mst Asiya Khanom', 895456, 58, 'XXXXXXXXXX', '2011-11-29', 'Female', 'undefined', '895456@gmail.com', '01946987977', 'Shohidul Molla', 'Sima Begum', 'Amgram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '218311c4d8440f04507fc003717ed3b0', 'N/A', '2023-02-26 18:08:49'),
(114, 2023, 'Six', 'A', 'Mst Muslima Jahan Munia', 505449, 35, 'XXXXXXXXXX', '2012-08-27', 'Female', 'undefined', '505449@gmail.com', '01913537047', 'MD Mostafa Kamal', 'Mst Mahmuda Sultana', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'b96d10d50cef677896bb78f1abc9d441', 'N/A', '2023-02-26 18:12:05'),
(115, 2023, 'Six', 'A', 'Mahima Sultana', 8639, 33, 'XXXXXXXXXX', '2012-12-30', 'Female', 'undefined', '8639@gmail.com', '01925236279', 'MD Maruf Hosen Shikdar', 'Lotifa Sultana', 'Horihornagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'faf5e40cb3d01e23ea7f3a163c3f8996', 'N/A', '2023-02-26 18:13:58'),
(116, 2023, 'Six', 'A', 'Samiya Khanom ', 288995, 32, 'XXXXXXXXXX', '2011-01-01', 'Female', 'undefined', '288995@gmail.com', '01767127695', 'Hafizur Rahman Molla', 'Khadeja Begum', 'Bahirbag, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'd6523d9c0ddda99a16aab2a6e01d4d7a', 'N/A', '2023-02-26 18:16:04'),
(117, 2023, 'Six', 'A', 'Nusrat Jahan', 715661, 1, 'XXXXXXXXXX', '2012-10-22', 'Female', 'undefined', '715661@gmail.com', '01726850772', 'Ajharul Islam', 'Najmin Nahar', 'chalinagar, Boalmari, Faridpur', 'Islam', 'N/A', 'Studies', 'female_avatar.png', 'N/A', '3a83d8243fdc46b0b05e5f0b1ca3abec', 'N/A', '2023-02-26 18:17:40'),
(118, 2023, 'Six', 'A', 'Megh Saha', 409557, 26, 'XXXXXXXXXX', '2012-06-14', 'Female', 'undefined', '409557@gmail.com', '01711482970', 'Shankar Kumar Saha', 'Nipa Rani Saha', 'Kamargram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '10d6fa63627ac4e63a9575b81110162b', 'N/A', '2023-02-26 18:20:08'),
(119, 2023, 'Six', 'A', 'Sanjida Islam Tuli', 404760, 39, 'XXXXXXXXXX', '2012-04-15', 'Female', 'undefined', '404760@gmail.com', '01734094224', 'Bablu Pramanik', 'Mita Begum', 'Bandugram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'd2ee22fb6dfda693f308c432fe75c4be', 'N/A', '2023-02-27 00:48:31'),
(120, 2023, 'Six', 'A', 'Sadika Khatun', 813294, 95, 'XXXXXXXXXX', '2011-12-28', 'Female', 'undefined', '813294@gmail.com', '01934087975', 'LIakot Ali', 'Mst Jaynab Yasmin', 'Boalmari, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'bc9918a8d45757c3a740f5273c8b0b6f', 'N/A', '2023-02-27 00:50:37'),
(121, 2023, 'Six', 'A', 'Mst Mim Khanom', 461338, 79, 'XXXXXXXXXX', '2011-03-03', 'Female', 'undefined', '461338@gmail.com', '01311483457', 'Juyel Molla', 'Mst Romesa Parvin', 'Bahirbag, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '342ba9fd0909bc5016e179f4f5c66575', 'N/A', '2023-02-27 00:53:14'),
(122, 2023, 'Six', 'A', 'Labiba hosen', 99146, 67, 'XXXXXXXXXX', '2012-11-30', 'Female', 'undefined', '99146@gmail.com', '01318731715', 'MD Jakir Hosen Mia', 'Soheli Sultana', 'Chotul, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '0c601a26419be0946666bf2dd8f0cafc', 'N/A', '2023-02-27 00:55:59'),
(123, 2023, 'Six', 'A', 'Mst Mahima Afrin Sneha', 321666, 22, 'XXXXXXXXXX', '2011-02-17', 'Female', 'undefined', '321666@gmail.com', '01716600706', 'Mohibul Islam', 'Sima Begum', 'Dakkhinkamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'dfad223de644119bdff70582e3378440', 'N/A', '2023-02-27 01:00:17'),
(124, 2023, 'Six', 'A', 'Sabrina Mahbub', 329097, 63, 'XXXXXXXXXX', '2011-12-06', 'Female', 'undefined', '329097@gmail.com', '01715281132', 'MD Mahbubur Rahman', 'Shabana Begum', 'Pashchimkamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '15322f174057bbf5defdbfb3525103ab', 'N/A', '2023-02-27 01:02:19'),
(125, 2023, 'Six', 'A', 'Mst Marzia Aktar', 41586, 131, 'XXXXXXXXXX', '2011-11-25', 'Female', 'undefined', '41586@gmail.com', '01911274441', 'AB Rahim Biswas', 'Mst Josna Begum', 'Amgram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '1753d53a35937b1fe5e38385ab384afc', 'N/A', '2023-02-27 01:07:31'),
(126, 2023, 'Six', 'A', 'Jannatul Islam', 484264, 104, 'XXXXXXXXXX', '2012-01-01', 'Female', 'undefined', '484264@gmail.com', '01943301739', 'MD Musa Mia', 'LIma', 'PurbaKamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'cb491b8c7dadd31e52088bce0d9a5106', 'N/A', '2023-02-27 01:10:36'),
(127, 2023, 'Six', 'A', 'Jilfa Tanjum', 285783, 7, 'XXXXXXXXXX', '2012-04-10', 'Female', 'undefined', '285783@gmail.com', '01956364737', 'Jamal Biswas', 'Jakiya Sultana', 'Thakurpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '8b5025e3cb98c58063b34e88ab551e85', 'N/A', '2023-02-27 01:12:30'),
(128, 2023, 'Six', 'A', 'Saima Sultana', 113797, 116, 'XXXXXXXXXX', '2012-10-29', 'Female', 'undefined', '113797@gmail.com', '01913338273', 'MD Akbar Ali Sheikh', 'Sumi Khatun', 'Dakkhinkamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '49568fdfa25b4d5ae4ec1d27f55dc1e6', 'N/A', '2023-02-27 01:14:57'),
(129, 2023, 'Six', 'A', 'Marzia Khatun', 624110, 133, 'XXXXXXXXXX', '2012-01-03', 'Female', 'undefined', '624110@gmail.com', '01718815935', 'MD Monowar Molla', 'Sumi Begum', 'Ramnagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '64d54243dcc442696eac3520f20ae981', 'N/A', '2023-02-27 16:36:23'),
(130, 2023, 'Six', 'A', 'Anha Saha', 523667, 75, 'XXXXXXXXXX', '2012-01-21', 'Female', 'undefined', '523667@gmail.com', '01718907404', 'Atin Kumar Saha', 'Nipa Saha', 'Pashchimkamargram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'fcb267406634c9402c19f2aa922bed92', 'N/A', '2023-02-27 17:28:12'),
(131, 2023, 'Six', 'A', 'Raisa Rahman Jikra', 548902, 11, 'XXXXXXXXXX', '2011-05-13', 'Female', 'undefined', '548902@gmail.com', '01756830040', 'Mohammad Mejbaur Rahman', 'Syeda Rina Sultana', 'Uttarshibpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '1b8a5d4a20b81875e335afdf266506c6', 'N/A', '2023-02-27 17:35:34'),
(132, 2023, 'Six', 'A', 'Gina Tahmida Titir', 727473, 9, 'XXXXXXXXXX', '2010-12-12', 'Female', 'undefined', '727473@gmail.com', '01766366416', 'MD Shorafat Hosen', 'Afroja Sultana', 'Boalmari, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'd37f5aed00b9fa932a0f45ff09c213b2', 'N/A', '2023-02-27 17:38:19'),
(133, 2023, 'Six', 'A', 'Shayma Mitra', 347998, 17, 'XXXXXXXXXX', '2011-10-04', 'Female', 'undefined', '347998@gmail.com', '01740019174', 'Samar Mitra', 'Ruma Rani Mitra', 'Jogibarat, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '51d4e45108f7008be9212f08be0e1ec0', 'N/A', '2023-02-27 17:51:16'),
(134, 2023, 'Six', 'A', 'Priyonti Saha', 543278, 4, 'XXXXXXXXXX', '2012-06-15', 'Female', 'undefined', '543278@gmail.com', '01721933376', 'Nripen Kumar Saha', 'Munmun Saha', 'Thakurpur, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'ce8aa67c55f2f7883f3d1f7e59c0c649', 'N/A', '2023-02-27 17:54:03'),
(135, 2023, 'Six', 'A', 'Tonu Pul', 406635, 14, 'XXXXXXXXXX', '2011-06-11', 'Female', 'undefined', '406635@gmail.com', '01729865053', 'Gabinda Chandra Pul', 'Bijli Rani Pul', 'Thakurpur, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '158a86b3a2f70b46b22cafe71b997387', 'N/A', '2023-02-27 17:56:46'),
(136, 2023, 'Six', 'A', 'Umme Hasnat Oni', 516723, 120, 'XXXXXXXXXX', '2012-05-02', 'Female', 'undefined', '516723@gmail.com', '01715728001', 'MD humayun Molla', 'Mst Aysha Parvin Tumpa', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '30d33502bb020a9b4dda41bc2247ec63', 'N/A', '2023-02-27 17:59:20'),
(137, 2023, 'Six', 'C', 'Saahu Kushari', 69249, 26, 'XXXXXXXXXX', '2012-03-12', 'Male', 'undefined', '69249@gmail.com', '01763872563', 'Sukhemdrro Nam Kushari', 'Joya Rani Kushari', 'Bandugram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'd5562625ebd20f8cf01a903a3b867316', 'N/A', '2023-02-27 18:08:35'),
(138, 2023, 'Six', 'A', 'Mst Ruhani', 533635, 53, 'XXXXXXXXXX', '2012-08-30', 'Female', 'undefined', '533635@gmail.com', '01716605053', 'MD Jakir Hosen', 'Mst Rumana Yasmin', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'd0f2e74bda93f6344d65aca9252672f4', 'N/A', '2023-02-27 18:11:51'),
(139, 2023, 'Six', 'A', 'Syeda Nasrin Sultana', 178556, 40, 'XXXXXXXXXX', '2012-12-07', 'Female', 'undefined', '178556@gmail.com', '01731683245', 'Nasrul Hosen', 'sahinur Aktar', 'Bahirbag, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '9cd33bd744d597c39379ea3b1eade374', 'N/A', '2023-02-27 18:13:50'),
(140, 2023, 'Six', 'C', 'Nayon Paul', 66834, 84, 'XXXXXXXXXX', '2010-04-09', 'Male', 'undefined', '66834@gmail.com', '0179206150', 'Joydev Paul', 'Shilpi paul', 'Bagura , Naderchad ghat, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '51202eca850373affa2a82837d171b19', 'N/A', '2023-02-27 18:14:20'),
(141, 2023, 'Six', 'A', 'Mst Samia Islam Asha', 116735, 3, 'XXXXXXXXXX', '2011-12-05', 'Female', 'undefined', '116735@gmail.com', '00000000000', 'Nitul Pramanik', 'Mst Najma Khanom', 'BanduGram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '13b2fb6ec1d3fc50db1b0fd833661e7e', 'N/A', '2023-02-27 18:16:03'),
(142, 2023, 'Six', 'A', 'asiya Khatun', 871298, 103, 'XXXXXXXXXX', '2011-12-05', 'Female', 'undefined', '871298@gmail.com', '00000000000', 'Nitul Pramanik', 'Mst Najma Khanom', 'BanduGram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'ba822e23f1ad641a9764c4c9f5378352', 'N/A', '2023-02-27 18:16:44'),
(143, 2023, 'Six', 'C', 'Md. Sajeebul Islam ', 553431, 59, 'XXXXXXXXXX', '2011-12-22', 'Male', 'undefined', '553431@gmail.com', '01943298812', 'Md. Rejaul Karim', 'Heera', 'Omrrit Nagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '00b1ad14f0f60eab07b6d1db86902587', 'N/A', '2023-02-27 18:17:51'),
(144, 2023, 'Six', 'A', 'Sintiya', 14199, 96, 'XXXXXXXXXX', '2011-09-23', 'Female', 'undefined', '14199@gmail.com', '01938483466', 'MD jahangir Molla', 'Shahida Begum', 'Rajapur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '4688ba0954847f0c24049e02cfbe8648', 'N/A', '2023-02-27 18:20:33'),
(145, 2023, 'Six', 'A', 'Israt Jahan', 723583, 12, 'XXXXXXXXXX', '2012-03-29', 'Female', 'undefined', '723583@gmail.com', '01712471853', 'Fakir Nazmul Islam', 'Suraiya Islam', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'e29651590635276e3277b352f059e302', 'N/A', '2023-02-27 18:22:08'),
(146, 2023, 'Six', 'C', 'Md. Omidul Islam sadhin', 344175, 44, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '344175@gmail.com', '01314208976', 'shahaful Alam ', 'Onjona', 'Kaliyand, Oyahidabad, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '8393cfb4f1835c48e785f29795f41718', 'N/A', '2023-02-27 18:23:02'),
(147, 2023, 'Six', 'C', 'Anif Molla', 216395, 49, 'XXXXXXXXXX', '2010-05-13', 'Male', 'undefined', '216395@gmail.com', '01944748924', 'Helal', 'Roji Khatun', 'Solna Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '00014b64673aef89b2a4cc741922d2a2', 'N/A', '2023-02-27 18:31:59'),
(148, 2023, 'Six', 'C', 'Avijeet Kumar Shil', 118831, 42, 'XXXXXXXXXX', '2011-01-02', 'Male', 'undefined', '118831@gmail.com', '01713561018', 'Osok Kumar Shil', 'Konika Rani Shil', 'Kamar Gram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'a5cf06bc171392e3ec7c84ee1fcbf3f4', 'N/A', '2023-02-27 18:34:32'),
(149, 2023, 'Six', 'C', 'Shah Newyaj Bin Alif ', 336093, 81, 'XXXXXXXXXX', '2011-03-24', 'Male', 'undefined', '336093@gmail.com', '01714871345', 'Md. Shahin Miya', 'Beauty Khatun', 'Amgram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'fb57216818841ef94158cf7729966fe2', 'N/A', '2023-02-27 18:38:25'),
(150, 2023, 'Six', 'C', 'Sayed Iyasin', 849850, 31, 'XXXXXXXXXX', '2011-03-24', 'Male', 'undefined', '849850@gmail.com', '01767959584', 'Tanjila', 'Beauty Khatun', 'Bahirbag, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '1887edd6f882d88c0f1b98179c0c7909', 'N/A', '2023-02-27 19:36:59'),
(151, 2023, 'Six', 'C', 'S. M. Jakariya', 604180, 16, 'XXXXXXXXXX', '2012-05-18', 'Male', 'undefined', '604180@gmail.com', '01706698614', 'Md. Edris Ali', 'Nasrin Aktar', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '9d7a6a18ee6b0f0a6e83993a0a6843bf', 'N/A', '2023-02-27 20:02:52'),
(154, 2023, 'Six', 'C', 'Gourob Chokroborrti', 284241, 67, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '284241@gmail.com', '01728311873', 'Joy Chokroborrti', 'Beauly Chokroborrti', 'Purbo Kamar Gram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '1f308a206f61ae7c50dbbfa9b92bf04f', 'N/A', '2023-02-27 20:06:43'),
(155, 2023, 'Six', 'C', 'Nishan Saha', 18605, 33, 'XXXXXXXXXX', '2011-10-22', 'Male', 'undefined', '18605@gmail.com', '01716376090', 'Nikhil Saha', 'Asima saha', 'Purbo Kamar Gram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '0af5a705671367e5d617720d66867be9', 'N/A', '2023-02-27 20:08:39'),
(156, 2023, 'Six', 'C', 'Nadeem Mahmud ', 785396, 7, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '785396@gmail.com', '01734381048', 'Namir uddin', 'Hira Khatun', 'Posseem Kamar Gram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '5b424ff498808ef60c82950f12b2d158', 'N/A', '2023-02-27 20:16:20'),
(157, 2023, 'Six', 'C', 'Sehejadul Alam ', 878691, 55, 'XXXXXXXXXX', '2011-11-12', 'Male', 'undefined', '878691@gmail.com', '01718046119', 'Md. Shahinur Alom', 'Paruli Khanam', 'D. Shibpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'fa4d993d1869da009b08cad776321120', 'N/A', '2023-02-27 21:09:04'),
(158, 2023, 'Six', 'C', 'Md. Hamjala Molla', 631621, 4, 'XXXXXXXXXX', '2010-11-12', 'Male', 'undefined', '631621@gmail.com', '01774915747', 'Md. Mamun Molla', 'Shirina Begum', 'Banibari, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '780e91bbb30c1789097c8f29788d9462', 'N/A', '2023-02-27 21:12:41'),
(159, 2023, 'Six', 'C', 'Arup Kumar Shil', 501313, 52, 'XXXXXXXXXX', '2011-04-14', 'Male', 'undefined', '501313@gmail.com', '01991349534', 'Dilip Kumar', 'Shopna Rani Shil', 'Shibpur, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'af6a2cb2bd631a3bf1fbabeabc53ab1d', 'N/A', '2023-02-27 21:19:01'),
(160, 2023, 'Six', 'A', 'liya Moni', 355580, 90, 'XXXXXXXXXX', '2011-11-02', 'Female', 'undefined', '355580@gmail.com', '01826324552', 'MD Pannu Sheikh', 'Julekha Begum', 'Ramnagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '7130bcc1679a79087516a3512e750ee3', 'N/A', '2023-02-28 01:37:19'),
(161, 2023, 'Six', 'A', 'Tanisa Alam Liya', 175880, 97, 'XXXXXXXXXX', '2013-04-22', 'Female', 'undefined', '175880@gmail.com', '01929213036', 'Mohammad Shariful Alam', 'Kahinur Aktar', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '6038c6f22cf3351446706b08546d3230', 'N/A', '2023-02-28 01:40:42'),
(162, 2023, 'Six', 'A', 'Samiya Sultana', 723387, 115, 'XXXXXXXXXX', '2010-08-25', 'Female', 'undefined', '723387@gmail.com', '01716719031', 'MD Jahangir Hosen', 'MIs Champa Begum', 'Amritanagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '56b0f3e4a68f0e898e16bebd50cf0b37', 'N/A', '2023-02-28 01:47:48'),
(163, 2023, 'Six', 'A', 'Jubaida Jannat', 842905, 118, 'XXXXXXXXXX', '2011-08-31', 'Female', 'undefined', '842905@gmail.com', '01780241856', 'MD Juyel Mia', 'Mst Nasrin', 'Felamnagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '8508d1907c553eb3f33264ab5375b661', 'N/A', '2023-02-28 01:50:24'),
(164, 2023, 'Six', 'A', 'Jannatul Nur Chowa', 567940, 119, 'XXXXXXXXXX', '2012-02-17', 'Female', 'undefined', '567940@gmail.com', '01784721000', 'Kamal Hosen', 'Shamima Nasrin', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'a6e3267628c5e1cbb3962d0381a0d0cb', 'N/A', '2023-02-28 01:53:01'),
(165, 2023, 'Six', 'A', 'Sumaiya Rahman Ritu', 123847, 20, 'XXXXXXXXXX', '2011-11-03', 'Female', 'undefined', '123847@gmail.com', '01765778601', 'MD Motiyar Rahman', 'Mst Sathi Begum', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '46697367f98d13ef52b02508de06af38', 'N/A', '2023-02-28 01:55:14'),
(166, 2023, 'Six', 'A', 'Afsana', 2870, 36, 'XXXXXXXXXX', '2011-12-31', 'Female', 'undefined', '2870@gmail.com', '01719957482', 'MD Akles Molla', 'Mst Shilpi Khatun', 'Thakurpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '87164fe952e6479ae9d9ffd707bbb4e9', 'N/A', '2023-02-28 01:58:54'),
(167, 2023, 'Six', 'A', 'Mariyam Jahan Mamo', 370144, 37, 'XXXXXXXXXX', '2011-06-14', 'Female', 'undefined', '370144@gmail.com', '01956354462', 'MD Jahandar Ali', 'Mst Shiuli Ahmed', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '8fc8282ee19a40e82efe86240d05d8e4', 'N/A', '2023-02-28 02:02:10'),
(168, 2023, 'Six', 'A', 'Nusrat jahan', 458149, 140, 'XXXXXXXXXX', '2012-04-12', 'Female', 'undefined', '458149@gmail.com', '01710714477', 'MD Mizanur Rahman', 'Msr Jannatul Ferdous', 'Dhulpukuria, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '091c6105f1ffdcb85682c4a54bdf8f32', 'N/A', '2023-02-28 02:04:21'),
(169, 2023, 'Six', 'A', 'Mst Rokeya Parvin', 320798, 85, 'XXXXXXXXXX', '2009-12-03', 'Female', 'undefined', '320798@gmail.com', '01902342859', 'MD Rokon Sheikh', 'Msr Monira Begum', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '7c7d61480f27f4fb53c95b55e8a9ac59', 'N/A', '2023-02-28 02:06:53'),
(170, 2023, 'Six', 'A', 'Mst Munia Parvin', 348030, 49, 'XXXXXXXXXX', '2010-10-01', 'Female', 'undefined', '348030@gmail.com', '01407573206', 'Elias Hosen', 'Msr Rupiya Begum', 'Ramnagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '6343ded91ca40e451a44f5854466cdd1', 'N/A', '2023-02-28 02:14:08'),
(171, 2023, 'Six', 'A', 'Sithi Das', 3833, 52, 'XXXXXXXXXX', '2012-07-05', 'Female', 'undefined', '3833@gmail.com', '01722547399', 'Asim Kumar Das', 'Krisna Rani Das', 'Poyail, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '6f15268b3f591a694d6ff482357bb85a', 'N/A', '2023-02-28 03:03:07'),
(172, 2023, 'Six', 'A', 'Promi Chakrabarti', 298837, 106, 'XXXXXXXXXX', '2011-09-30', 'Female', 'undefined', '298837@gmail.com', '01713547891', 'Probir Chakrabarti', 'Bobita Chakrabarti', 'Kamargram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '5dfe77ec0fe6d2c2b5131f0b6a0ad840', 'N/A', '2023-02-28 03:07:12'),
(173, 2023, 'Six', 'A', 'Mst Nadira khanom', 198410, 121, 'XXXXXXXXXX', '2011-01-01', 'Female', 'undefined', '198410@gmail.com', '01403578171', 'MD Nabab Shikdar', 'Hisniyara Begum', 'Vatpara, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '12062a147d367361680f42afe7407b4a', 'N/A', '2023-02-28 03:10:47'),
(174, 2023, 'Six', 'A', 'Ajmira Aktar', 868022, 89, 'XXXXXXXXXX', '2010-12-02', 'Female', 'undefined', '868022@gmail.com', '01934191536', 'Ayub Molla', 'Mitu', 'Moddhorgati, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'fd2028cb7629c744b5c38a10c671da59', 'N/A', '2023-02-28 03:12:53'),
(175, 2023, 'Six', 'A', 'Mst Mim Parvin', 193105, 66, 'XXXXXXXXXX', '2011-06-05', 'Female', 'undefined', '193105@gmail.com', '10932398157', 'MD Showkat molla', 'Jabeda Begum', 'Muktarpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'd084f56783bcf33962256ce95b4c04d7', 'N/A', '2023-02-28 03:15:50'),
(176, 2023, 'Six', 'C', 'Saydul Islam sami', 447773, 73, 'XXXXXXXXXX', '2012-01-23', 'Male', 'undefined', '447773@gmail.com', '01977704450', 'Md. Sohel', 'Cadni', 'Vatparar,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '24ef2a66a7c152f569b30d9531bcd6b2', 'N/A', '2023-02-28 05:35:14'),
(177, 2023, 'Six', 'C', 'Md. Sajeed Biswas ', 389835, 14, 'XXXXXXXXXX', '2013-09-21', 'Male', 'undefined', '389835@gmail.com', '01791921662', 'Shahidul biswas', 'Jakiya Begum', 'Chotul,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '067c312057cf69741d60a95c62ca5be9', 'N/A', '2023-02-28 05:39:41'),
(178, 2023, 'Six', 'C', 'Md. Habib Shikdar Ratul', 284387, 98, 'XXXXXXXXXX', '2011-01-24', 'Male', 'undefined', '284387@gmail.com', '01944146855', 'Md. Tarikul Islam', 'Mst. Reba Begum', 'Soto Kamar Gram,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '5861f80a2840274b0e07af682e2be7d4', 'N/A', '2023-02-28 05:42:25'),
(179, 2023, 'Six', 'C', 'Sikdar Rohit', 713821, 21, 'XXXXXXXXXX', '2011-07-10', 'Male', 'undefined', '713821@gmail.com', '01612708848', 'Md. Jiyap Uddin', 'Afroja Iyasmin Sheli', 'Cotul,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '5c69170775854c33e9b5266b4aba7b9a', 'N/A', '2023-02-28 05:45:17'),
(180, 2023, 'Six', 'C', 'Ferdous Rahman  Labib', 373958, 58, 'XXXXXXXXXX', '2012-09-11', 'Male', 'undefined', '373958@gmail.com', '01852602361', 'Md. Hafijur Rahman', 'Mst. Poli Khatun', 'Raypur,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '22f81c54cbbdcc184aa233da4e67af19', 'N/A', '2023-02-28 05:50:53'),
(181, 2023, 'Six', 'C', 'Ali Hasaan', 114026, 5, 'XXXXXXXXXX', '2011-10-25', 'Male', 'undefined', '114026@gmail.com', '01733268723', 'Md. Shajahan Molla', 'Rehena Begum', 'Solna,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '57d879c125f2eb2651da0d2b3ab07185', 'N/A', '2023-02-28 05:54:39'),
(182, 2023, 'Six', 'C', 'Md. Mujahid Ali', 58712, 47, 'XXXXXXXXXX', '2012-11-27', 'Male', 'undefined', '58712@gmail.com', '01939303782', 'Muhammad Ali', 'Mst. Lota', 'Solna,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '27145a8552a91a4212e4ec4574cbd0b6', 'N/A', '2023-02-28 05:57:28'),
(183, 2023, 'Six', 'C', 'Md. Habibullah', 363567, 19, 'XXXXXXXXXX', '2012-01-18', 'Male', 'undefined', '363567@gmail.com', '01907388301', 'MD. Selim Mia', 'Mst. Sufiya Begum', 'Muktarpur,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '7d55864490a5c5508ebbf0e7ce994da4', 'N/A', '2023-02-28 06:07:38');
INSERT INTO `students` (`ID`, `session`, `class`, `section`, `name`, `student_id`, `roll`, `reg`, `birth_date`, `gender`, `blood_group`, `email`, `telephone`, `father_name`, `mother_name`, `address`, `religion`, `admission_date`, `hobbies`, `avatar`, `facebook_link`, `password`, `quote`, `at_date`) VALUES
(184, 2023, 'Six', 'C', 'Md. Mostakim sheikh', 176363, 86, 'XXXXXXXXXX', '2012-01-12', 'Male', 'undefined', '176363@gmail.com', '01997321112', 'Md. Masud Sheikh', 'Mst. Arjina Begum', 'Vatpara,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '0f48b56b0000a205437de5ea1efb8fd4', 'N/A', '2023-02-28 06:20:23'),
(185, 2023, 'Six', 'C', 'Shawon Ray ', 288025, 48, 'XXXXXXXXXX', '2012-06-05', 'Male', 'undefined', '288025@gmail.com', '01913815929', 'Sonjit Kumar Ray', 'Trrisna Ray', 'Baguan,Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '9caff0c1422fa91d2f6d8f1722b69c10', 'N/A', '2023-02-28 08:24:28'),
(186, 2023, 'Six', 'C', 'Md. Arafat Sheikh', 145593, 50, 'XXXXXXXXXX', '2011-06-28', 'Male', 'undefined', '145593@gmail.com', '01762999134', 'Md. Sojol Sheikh', 'Mst. Asma Begum', 'Kaliyand,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '057302069b338ffd1abef60ad55039eb', 'N/A', '2023-02-28 08:29:42'),
(187, 2023, 'Six', 'C', 'Pracurjo Paul', 887126, 63, 'XXXXXXXXXX', '2012-04-26', 'Male', 'undefined', '887126@gmail.com', '0186293721', 'Poresh Kumar Paul', 'Osima Pal', 'Dokkhin Kamar Gram,Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'a692b88909172efb2489f28da7d52dff', 'N/A', '2023-02-28 08:48:12'),
(188, 2023, 'Six', 'B', 'Mithun Sarkar', 751384, 75, 'XXXXXXXXXX', '2011-11-21', 'Male', 'undefined', '751384@gmail.com', '01938652314', 'Komol Sardar', 'Chaina Rani', 'Pashchimkamargram', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '0a4a18c0aa8deb9a7f71897cb40a7375', 'N/A', '2023-02-28 08:48:14'),
(189, 2023, 'Six', 'B', 'Apon Kumar', 119049, 100, 'XXXXXXXXXX', '2011-07-28', 'Male', 'undefined', '119049@gmail.com', '01728938516', 'Milon Kumar Shil', 'Lipika Pul', 'Dakkhinshibpur, Rajbari Sadar, Rajbari', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '74144f5630d877539d1514a1fe6a23d3', 'N/A', '2023-02-28 08:53:59'),
(190, 2023, 'Six', 'B', 'MD Arman', 171227, 99, 'XXXXXXXXXX', '2011-11-30', 'Male', 'undefined', '171227@gmail.com', '01843493236', 'Rezaul Islam', 'Sultana Aktar', 'Shibpur,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'bcaa95dffd80e76bd5b12b9665936b3b', 'N/A', '2023-02-28 08:57:18'),
(191, 2023, 'Six', 'C', 'Md. Shuvo ', 158991, 74, 'XXXXXXXXXX', '2010-05-04', 'Male', 'undefined', '158991@gmail.com', '01730159525', 'Munsi Mijanur', 'Suma Begum', 'Vatpara,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '3a1b765d84736907408efbbfc9b5a546', 'N/A', '2023-02-28 09:08:19'),
(192, 2023, 'Six', 'B', 'MD Emon Molla ', 95074, 95, 'XXXXXXXXXX', '2011-10-01', 'Male', 'undefined', '95074@gmail.com', '01954820197', 'MD Usuf Molla', 'Shilpi', 'Gunbaha,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'fad3f71f7d50e9b4cf5cb6ce691897d1', 'N/A', '2023-02-28 09:15:24'),
(193, 2023, 'Six', 'B', 'MD Tahsin Ahmed', 783890, 36, 'XXXXXXXXXX', '2012-05-26', 'Male', 'undefined', '783890@gmail.com', '01306545207', 'MD Kamrul Islam', 'Mst Merina Parvin', 'Gunbaha, Mohammadpur, Magura', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'ec1915dd3adb19febf15a047e2a97b5c', 'N/A', '2023-03-01 00:53:42'),
(194, 2023, 'Six', 'B', 'MD Naim Sheikh', 650056, 12, 'XXXXXXXXXX', '2010-08-15', 'Male', 'undefined', '650056@gmail.com', '01990724383', 'MD Salam Sheikh', 'Mst Aleya Begum', 'Bahirbag, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'a042c2367f2db8cb2647aa376d1ac3e1', 'N/A', '2023-03-01 00:56:24'),
(195, 2023, 'Six', 'B', 'MD Syed Ariyan', 208038, 98, 'XXXXXXXXXX', '2012-03-02', 'Male', 'undefined', '208038@gmail.com', '01712310959', 'Syed Arif', 'Syed Laki', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '9d78765fac42e8b6fc28ee20de378595', 'N/A', '2023-03-01 00:58:56'),
(196, 2023, 'Six', 'B', 'MD Mursalin Mia', 895180, 97, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '895180@gmail.com', '01712310959', 'MD Rofikul Islam', 'Mst Munja Islam', 'Syedpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '5795d41993291fbf4fd76e9594d99dbe', 'N/A', '2023-03-01 01:01:31'),
(197, 2023, 'Six', 'B', 'Abdullah', 269735, 44, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '269735@gmail.com', '01773094547', 'Pikul', 'Shahanaz', 'Gurdia, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '4bf875b5a6a5b67ad9dd08d2cc6ea150', 'N/A', '2023-03-01 01:03:09'),
(198, 2023, 'Six', 'B', 'Rahim Vuiya', 808467, 7, 'XXXXXXXXXX', '2012-07-12', 'Male', 'undefined', '808467@gmail.com', '01710147365', 'MD Sajjad Hosen Vuiya', 'Mst Monihar Parvin', 'Noyanipara, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '7bf7d93ba797c983a411d85000a9ffb9', 'N/A', '2023-03-01 01:05:55'),
(199, 2023, 'Six', 'B', 'Khandakar Mehedi Hasan', 686759, 96, 'XXXXXXXXXX', '2012-08-10', 'Male', 'undefined', '686759@gmail.com', '01644547742', 'Sakendar Ali', 'Ambiya Begum', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '8fac43ab766238b9326ae14d66d1427e', 'N/A', '2023-03-01 01:09:21'),
(200, 2023, 'Six', 'B', 'Rudra Biswas', 782625, 18, 'XXXXXXXXXX', '2012-01-03', 'Male', 'undefined', '782625@gmail.com', '01714544674', 'Prashanta biswas', 'Minoti Biswas', 'Kamargram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'e30cceddbfe46abad41db9326afb769e', 'N/A', '2023-03-01 01:15:09'),
(201, 2023, 'Six', 'B', 'Moin Choudhury', 449815, 69, 'XXXXXXXXXX', '2011-10-12', 'Male', 'undefined', '449815@gmail.com', '01736213423', 'Mizan Choudhury', 'Ayrin Aktar Rimi', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'b3de035a6360700d956f6a55e31a48ec', 'N/A', '2023-03-01 01:24:27'),
(202, 2023, 'Six', 'B', 'MD Mahim Ikbal Faisal', 832928, 68, 'XXXXXXXXXX', '2012-03-02', 'Male', 'undefined', '832928@gmail.com', '01868956855', 'MD Akkas Uddin Molla', 'Mst Shamima Aktar Mina', 'Kaliyand, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'bfd21c6593548c6310623c99c19f7c1f', 'N/A', '2023-03-01 01:26:55'),
(203, 2023, 'Six', 'B', 'MD Samiul Islam', 505955, 37, 'XXXXXXXXXX', '2012-11-26', 'Male', 'undefined', '505955@gmail.com', '01937779101', 'MD Shohidul Islam', 'Nurnahar', 'Dakkhinkamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '31d6f7886940ed629efa61217e6edc03', 'N/A', '2023-03-01 01:29:34'),
(204, 2023, 'Six', 'B', 'MD Tamim', 330451, 79, 'XXXXXXXXXX', '2012-11-11', 'Male', 'undefined', '330451@gmail.com', '01751728978', 'MD Saiful Islam', 'Tisha Begum', 'Shotasi, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '20e86caba1da9d10b14cfd9143f110be', 'N/A', '2023-03-01 01:31:57'),
(205, 2023, 'Six', 'B', 'Ishan Iban Abdullah', 848208, 9, 'XXXXXXXXXX', '2011-06-15', 'Male', 'undefined', '848208@gmail.com', '01916130165', 'MD Fosiyar Rahman', 'Chameli Aktar', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'bc2e1ccda722d0d3a4fbe0ca9c81f835', 'N/A', '2023-03-01 01:54:33'),
(206, 2023, 'Six', 'B', 'MD Khalid Hasan', 731933, 65, 'XXXXXXXXXX', '2009-04-25', 'Male', 'undefined', '731933@gmail.com', '01735333273', 'MD Humayun Sheikh', 'Mst Khadija Begum', 'Patitapara', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '0434a09a4c1e7b66acbb2af4f10c4b20', 'N/A', '2023-03-01 02:04:23'),
(207, 2023, 'Six', 'B', 'MD Morshed Molla', 666129, 6, 'XXXXXXXXXX', '2012-10-19', 'Male', 'undefined', '666129@gmail.com', '01939463514', 'MD Imam Molla', 'Mousumi Aktar Nasrin', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '91d676d90022eb1944efe3c650ce29af', 'N/A', '2023-03-01 02:06:33'),
(208, 2023, 'Six', 'B', 'Dipta Pul', 678391, 3, 'XXXXXXXXXX', '2012-10-21', 'Male', 'undefined', '678391@gmail.com', '01734909099', 'Dilip Kumar Pul', 'Angali Kumar Pul', 'Boalmari, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'c1adddee276c42149ab9457fd75c3764', 'N/A', '2023-03-01 02:09:22'),
(209, 2023, 'Six', 'B', 'MD Ibrahim Choudhury', 167838, 82, 'XXXXXXXXXX', '2010-01-02', 'Male', 'undefined', '167838@gmail.com', '01937422017', 'Robiul Choudhury', 'Mst Rehena Khatun', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'f4748dc9d88f1177f1d570c295fa0f8b', 'N/A', '2023-03-01 02:18:07'),
(210, 2023, 'Six', 'B', 'MD Rafi', 504552, 23, 'XXXXXXXXXX', '2011-09-29', 'Male', 'undefined', '504552@gmail.com', '01729801602', 'MD Harun', 'Mst Reba Begum', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'ed09bcf11f0fcfa81708299aa516e4da', 'N/A', '2023-03-04 00:21:06'),
(211, 2023, 'Six', 'B', 'MD Al amin Molla', 228155, 86, 'XXXXXXXXXX', '2012-03-25', 'Male', 'undefined', '228155@gmail.com', '01733595442', 'MD Liakat Hosen', 'Mst Ferdousi Begum', 'Chalinagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '90b0a7e16d2264b0be65b3661e1e72d9', 'N/A', '2023-03-04 00:23:15'),
(212, 2023, 'Six', 'B', 'MD Tasin Molla', 430587, 26, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '430587@gmail.com', '01758877790', 'MD Majed Molla', 'Mst Kabita', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '8c41d4d1992c403f98c7079802a9dfc3', 'N/A', '2023-03-04 00:25:18'),
(213, 2023, 'Six', 'B', 'MD Siam', 416776, 19, 'XXXXXXXXXX', '2012-02-03', 'Male', 'undefined', '416776@gmail.com', '01740990083', 'MD Chan Mia', 'Mst Eva Aktar', 'Rajapur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'd53e1e33fad62a42302bd7cea962e26d', 'N/A', '2023-03-04 00:27:04'),
(214, 2023, 'Six', 'B', 'MD Jakariya Mia', 34284, 85, 'XXXXXXXXXX', '2011-12-23', 'Male', 'undefined', '34284@gmail.com', '01708118338', 'MD Abul Hasan', 'Mst Shahina Begum', 'Dighalbana, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '308fad46c30bb6f5bec9e35efa703d7d', 'N/A', '2023-03-04 00:28:57'),
(215, 2023, 'Six', 'B', 'MD Sakibul Hasan', 493851, 25, 'XXXXXXXXXX', '2012-01-10', 'Male', 'undefined', '493851@gmail.com', '01904153038', 'MD Manir Hosen', 'Mst Sagori Begum', 'Amgram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'b3ce54c6e8e391a94d2c115d3ee72b9f', 'N/A', '2023-03-04 00:30:49'),
(216, 2023, 'Six', 'B', 'Shawon Islam', 821728, 43, 'XXXXXXXXXX', '2010-12-03', 'Male', 'undefined', '821728@gmail.com', '01775495184', 'Sohel Molla', 'Anna Begum', 'Bahirbag, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '78b0e7ee43a438d0c2bd9837d40924ef', 'N/A', '2023-03-04 00:32:38'),
(217, 2023, 'Six', 'B', 'MD Junayet Siddik Rasel', 675248, 73, 'XXXXXXXXXX', '2010-06-01', 'Male', 'undefined', '675248@gmail.com', '01749136062', 'MD Ibrahim MOlla', 'Mst Rijiya Begum', 'Horiharnahar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'e76e41e669d368c64ab362a384b6da75', 'N/A', '2023-03-04 00:36:12'),
(218, 2023, 'Six', 'B', 'Siddharth Sharkar', 248727, 81, 'XXXXXXXXXX', '2011-11-11', 'Male', 'undefined', '248727@gmail.com', '01752631094', 'Nanda Sharkar', 'Lipi Sharkar', 'Chatul, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '219b395bf57a9b611865447006724a28', 'N/A', '2023-03-04 00:39:07'),
(219, 2023, 'Six', 'B', 'Ahad Sheikh ', 327122, 71, 'XXXXXXXXXX', '2011-03-29', 'Male', 'undefined', '327122@gmail.com', '01749708397', 'Raja Mia', 'Rashida Begum', 'Amgram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '8170eaed1048149f975d8d319db8bd39', 'N/A', '2023-03-04 00:41:08'),
(220, 2023, 'Six', 'B', 'Jyotiska Bhowmik', 482245, 39, 'XXXXXXXXXX', '2011-12-27', 'Male', 'undefined', '482245@gmail.com', '01712457660', 'Jayanta Kumar Bhowmik', 'Dipa Das', 'Purba Kamargram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '50777fab1bd4f176ab6a4fc760e5dd7c', 'N/A', '2023-03-04 00:49:13'),
(221, 2023, 'Six', 'B', 'Jihad Sheikh', 526, 77, 'XXXXXXXXXX', '2011-11-12', 'Male', 'undefined', '526@gmail.com', '01933143178', 'MD Ziaul Rahman', 'Champa Khatun', 'Purba Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '60c90845e7a95ea8159c0af9c7c4348f', 'N/A', '2023-03-04 00:51:08'),
(222, 2023, 'Six', 'B', 'Anik Rajbangshi', 634228, 52, 'XXXXXXXXXX', '2010-09-11', 'Male', 'undefined', '634228@gmail.com', '01728254991', 'Deb Kumar Rajbangshi', 'Aruna Rani Rajbangshi', 'Adharkotha, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'e2c26a4d16989921c7bf03e62cb1001a', 'N/A', '2023-03-04 01:04:21'),
(223, 2023, 'Six', 'B', 'Rabttra Hiyero Mandal', 148382, 34, 'XXXXXXXXXX', '2012-03-08', 'Male', 'undefined', '148382@gmail.com', '01924950136', 'Ronojit Kumar Mandal', 'Hira Sarkar', 'Kamargram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'fef5d8ce0dc623e0f513320bf4401f28', 'N/A', '2023-03-04 01:07:53'),
(224, 2023, 'Six', 'B', 'MD Tuhin Sheikh ', 86403, 20, 'XXXXXXXXXX', '2010-12-30', 'Male', 'undefined', '86403@gmail.com', '01971138204', 'AB Mannan Sheikh', 'Mst Sabina Yasmin', 'Uttarshibpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '38ab278f906ff7ef45ba1092139edc83', 'N/A', '2023-03-04 01:09:57'),
(225, 2023, 'Six', 'B', 'Sakidul Islam', 253469, 11, 'XXXXXXXXXX', '2013-02-02', 'Male', 'undefined', '253469@gmail.com', '01730177180', 'MD Saifur Rahman', 'Mst Shampa Islam', 'Raipur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'e588cff63f37ac97a1fc0bb0bdbf5cef', 'N/A', '2023-03-04 01:12:10'),
(226, 2023, 'Six', 'B', 'MD Hasibul Sheikh', 14061, 40, 'XXXXXXXXXX', '2011-06-01', 'Male', 'undefined', '14061@gmail.com', '01750124054', 'MD Kamal Sheikh', 'Mst Ruma Begum', 'Biswaspur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'ce58fafa9a654614a556d18dac0891d7', 'N/A', '2023-03-04 01:14:50'),
(227, 2023, 'Six', 'B', 'MD Azizul Haque', 102852, 24, 'XXXXXXXXXX', '2011-10-06', 'Male', 'undefined', '102852@gmail.com', '01962440536', 'Jafar Molla', 'Mst Shorifa Begum', 'Dorihoharnagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '7034134c695ad474992dcddefa196363', 'N/A', '2023-03-04 01:25:11'),
(228, 2023, 'Six', 'B', 'MD Ruhin Hosen', 479754, 33, 'XXXXXXXXXX', '2012-03-01', 'Male', 'undefined', '479754@gmail.com', '01709746363', 'MD Babar Ali', 'Dalia Khatun', 'Bichali, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'be2b93e7eac1bdb4a9f7e35e4e357b06', 'N/A', '2023-03-04 01:28:36'),
(229, 2023, 'Six', 'B', 'Syed Tanvir Mahin', 238102, 57, 'XXXXXXXXXX', '2012-06-12', 'Male', 'undefined', '238102@gmail.com', '01714366105', 'Syed Mahbubur Rashid', 'Mst Rojlin Atiya', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'dc86b532350cbec935f1e447400104b5', 'N/A', '2023-03-04 01:32:32'),
(230, 2023, 'Six', 'B', 'Abu Bakkar', 220818, 70, 'XXXXXXXXXX', '2011-11-24', 'Male', 'undefined', '220818@gmail.com', '01740766099', 'MD Atikur Rahman', 'Chaina Khatun', 'Moddhorgati, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'c0745b8dd752982e2da4686aa6eb06a8', 'N/A', '2023-03-04 01:34:33'),
(231, 2023, 'Six', 'B', 'MD Shihab Molla', 670662, 53, 'XXXXXXXXXX', '2014-12-06', 'Male', 'undefined', '670662@gmail.com', '01725281924', 'MD Mizanur Rahman', 'Shiuli Parvin', 'Chatul, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '8ccec357fc0156a06ddf033bc37cdc42', 'N/A', '2023-03-04 01:37:10'),
(232, 2023, 'Six', 'B', 'MD Nazmul Sakib Swron', 128617, 15, 'XXXXXXXXXX', '2013-01-01', 'Male', 'undefined', '128617@gmail.com', '01736347956', 'Mohammad Ashrafuzzaman Chunnu', 'Nurunnahar', 'FelanNagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '311ffd1a55b229a492572eba8c916c11', 'N/A', '2023-03-04 01:46:45'),
(233, 2023, 'Six', 'B', 'MD Shahdin Hosen Tutu', 408860, 2, 'XXXXXXXXXX', '2011-12-08', 'Male', 'undefined', '408860@gmail.com', '01766366416', 'MD Sharafat  Hosen', 'Afroza Sultana', 'Boalmari, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '16be984609fcdb597b2cbed9f269b376', 'N/A', '2023-03-04 01:48:47'),
(234, 2023, 'Six', 'B', 'MD Mozibur Rahman', 888175, 87, 'XXXXXXXXXX', '2011-12-31', 'Male', 'undefined', '888175@gmail.com', '00000000000', 'MD Aminur Rahman', 'Bilkis Sultana', 'Ramnagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'ff94171059404513384cfc567feb60a6', 'N/A', '2023-03-04 01:51:29'),
(235, 2023, 'Six', 'B', 'Khandakar Ariyan', 730047, 59, 'XXXXXXXXXX', '2013-07-10', 'Male', 'undefined', '730047@gmail.com', '01405143892', 'Sohel Khandakar', 'Mst Lipi Begum', 'Shekhor, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '1c6ed7b9202c7f474f23e9eb9a8d9e1f', 'N/A', '2023-03-04 01:54:17'),
(236, 2023, 'Six', 'B', 'Alif Khan', 389520, 13, 'XXXXXXXXXX', '2012-10-31', 'Male', 'undefined', '389520@gmail.com', '01925317838', 'Mostak', 'Mst Nipa', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '7706da55d3f6dd72b01ad52b4296ef2e', 'N/A', '2023-03-04 01:55:58'),
(237, 2023, 'Six', 'B', 'MD Shofuqul Khan', 553306, 80, 'XXXXXXXXXX', '2011-11-30', 'Male', 'undefined', '553306@gmail.com', '01716406608', 'Mohammad Sahidul Khan', 'Subarna Aktar', 'Boalmari, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '265d54e9d3944dac841c5c9ff195a17e', 'N/A', '2023-03-04 02:09:15'),
(238, 2023, 'Six', 'B', 'Apon Biswas', 314497, 1, 'XXXXXXXXXX', '2011-10-08', 'Male', 'undefined', '314497@gmail.com', '01731408942', 'Akhil Kundu Biswas', 'Shila Rani Mandal', 'Boalmari, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'f98738e3f5108feb926db1aa8c24503c', 'N/A', '2023-03-04 02:11:29'),
(239, 2023, 'Six', 'B', 'Mahim Mohammad Roni', 194592, 47, 'XXXXXXXXXX', '2012-09-14', 'Male', 'undefined', '194592@gmail.com', '01756414314', 'Ali Afjal Hosen', 'Jesmin Khanom', 'Noderchad Ghat, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '4e880bc67149f4571b462508585dbbdc', 'N/A', '2023-03-04 02:14:16'),
(240, 2023, 'Six', 'B', 'Sheikh Sadi', 203692, 17, 'XXXXXXXXXX', '2013-06-01', 'Male', 'undefined', '203692@gmail.com', '01868259617', 'MD Rofiqul Islam', 'Mst Sahera Bilkis', 'Myna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '6938ec5083571ba00dca1edcf9dd1bb5', 'N/A', '2023-03-04 02:17:59'),
(241, 2023, 'Six', 'B', 'Wasi Ul Islam', 343342, 570, 'XXXXXXXXXX', '2013-04-13', 'Male', 'undefined', '343342@gmail.com', '01712310841', 'MD Mizanur Rahman', 'Tahmina Khatun', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'b9bbe56c0bc04241db3a7869bc4cd15e', 'N/A', '2023-03-05 00:24:41'),
(242, 2023, 'Six', 'B', 'MD Maruf Molla', 823287, 31, 'XXXXXXXXXX', '2008-02-01', 'Male', 'undefined', '823287@gmail.com', '01914226133', 'MD Faruk MOlla', 'Mst Jesmin Begum', 'Gurdia, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '5f76aa4cdabd767207975a12d8e8c3da', 'N/A', '2023-03-05 00:27:46'),
(243, 2023, 'Six', 'B', 'Riyazul Sheikh', 613184, 21, 'XXXXXXXXXX', '2012-08-29', 'Male', 'undefined', '613184@gmail.com', '01407730794', 'Mizan Sheikh', 'Keya Khanom', 'Rajapur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'fa5a0958a23ebc25d92dd8d218651ed9', 'N/A', '2023-03-05 00:30:45'),
(244, 2023, 'Six', 'B', 'MD Morsalin Khan', 213698, 62, 'XXXXXXXXXX', '2011-05-17', 'Male', 'undefined', '213698@gmail.com', '01725945712', 'MD Anis Khan', 'Mst Morzina', 'Bykhir, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '73d3ccb8f89ba5d141e6cf31d753f3ed', 'N/A', '2023-03-05 00:33:40'),
(245, 2023, 'Six', 'B', 'Rifat Alom', 528050, 5, 'XXXXXXXXXX', '2011-12-26', 'Male', 'undefined', '528050@gmail.com', '01755045831', 'MD Nowsher Alom', 'Mst Sharmin Begum', 'Kaliyand, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'df62c19085c88aa16849f06a450d6383', 'N/A', '2023-03-05 00:36:56'),
(246, 2023, 'Six', 'B', 'MD Tamim', 100955, 54, 'XXXXXXXXXX', '2011-10-09', 'Male', 'undefined', '100955@gmail.com', '01920341428', 'Masud Rana', 'Mst Esamtara Begum', 'Amritanagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '446442ccdc7102cc98f49bd5c57c2922', 'N/A', '2023-03-05 00:39:14'),
(247, 2023, 'Six', 'B', 'MD Samiul Islam', 255150, 89, 'XXXXXXXXXX', '2012-03-10', 'Male', 'undefined', '255150@gmail.com', '01936149460', 'MS Ali Hosen', 'Mst Hayatun Nesa', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '5ccd70c8185e7fb53b31726dc9eab533', 'N/A', '2023-03-05 00:42:11'),
(248, 2023, 'Six', 'B', 'MD Zihad Sheikh', 218750, 58, 'XXXXXXXXXX', '2011-11-16', 'Male', 'undefined', '218750@gmail.com', '01403978918', 'MD Hosen Sheikh', 'Farida Khatun', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '855794f79bf4d4041feb06e808dec468', 'N/A', '2023-03-05 00:44:27'),
(249, 2023, 'Six', 'B', 'AB Rahman Molla', 320870, 88, 'XXXXXXXXXX', '2012-01-03', 'Male', 'undefined', '320870@gmail.com', '01782980088', 'MD Jafar Molla', 'Mst Lipi Begum', 'Satair, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '1d4e0a67cb928e7ad716c55c697b2675', 'N/A', '2023-03-05 00:48:23'),
(250, 2023, 'Six', 'B', 'Soharda Rahman', 443998, 55, 'XXXXXXXXXX', '2011-11-08', 'Male', 'undefined', '443998@gmail.com', '01718272789', 'Mezbaur Rahman', 'Farzana Sultana Sumi', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '0c68d494d0938462f4bd18446260498f', 'N/A', '2023-03-05 00:51:20'),
(251, 2023, 'Six', 'B', 'Apan Saha', 471231, 4, 'XXXXXXXXXX', '2012-01-22', 'Male', 'undefined', '471231@gmail.com', '01712450875', 'Priyo Nath Saha', 'Chinu Rani Saha', 'Amgram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '26a46c609867c83037b6173e675f3da2', 'N/A', '2023-03-05 01:00:36'),
(252, 2023, 'Six', 'B', 'MD Masum Choudhury', 285907, 84, 'XXXXXXXXXX', '2010-03-10', 'Male', 'undefined', '285907@gmail.com', '01313967277', 'MD AB Kaiyum', 'Mst Rekha Begum', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '4b8af03801158e4ad073cad8a9698ff4', 'N/A', '2023-03-05 01:05:13'),
(253, 2023, 'Six', 'B', 'Abu Said Choudhury', 578468, 63, 'XXXXXXXXXX', '2010-10-14', 'Male', 'undefined', '578468@gmail.com', '01975385428', 'Mst Mintu Choudhury', 'Sabina Begum', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '534498fe8da050ce28004d330a4c134d', 'N/A', '2023-03-05 01:09:24'),
(254, 2023, 'Six', 'B', 'MD Tanzim Hosen', 87928, 51, 'XXXXXXXXXX', '2012-10-25', 'Male', 'undefined', '87928@gmail.com', '01746271625', 'MD Imran Hosen', 'Mst Aysa Siddik', 'Joydebpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '0a82911d54ef40a4e1c9a8940ea3238c', 'N/A', '2023-03-05 01:11:36'),
(255, 2023, 'Six', 'B', 'MD Tahsan Islam', 1324, 83, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '1324@gmail.com', '01988909893', 'MD Delwar Hosen', 'Mst Tahmina Begum', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '787351fcc4f97e414c14ca231f53a56f', 'N/A', '2023-03-05 01:22:16'),
(256, 2023, 'Six', 'B', 'MD Abid Rahman Alif', 864119, 35, 'XXXXXXXXXX', '2013-04-17', 'Male', 'undefined', '864119@gmail.com', '01905519906', 'Obaidur Rahman', 'Khadija Begum', 'Rupopat, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'fe00da9a21a02cbb927cdeb808a0883e', 'N/A', '2023-03-05 01:24:07'),
(257, 2023, 'Six', 'B', 'MD Mehedi Hasan', 812816, 8, 'XXXXXXXXXX', '2013-12-10', 'Male', 'undefined', '812816@gmail.com', '01719140828', 'Hosen Mohammad Mahmudul Hasan', 'Ruma Aktar', 'Baguan, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'd612fedc28b7d5fe7edbd3c58b7b349b', 'N/A', '2023-03-05 01:26:24'),
(258, 2023, 'Six', 'B', 'Sazzad Biswas Shakil', 56147, 14, 'XXXXXXXXXX', '2012-01-15', 'Male', 'undefined', '56147@gmail.com', '01932516425', 'MD Faruk Biswas', 'Mst khushi Begum', 'Amgram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '4bc25defea4791dbac67bec45fcd71ab', 'N/A', '2023-03-05 01:28:06'),
(259, 2023, 'Six', 'B', 'MD Abu Ibrahim Barkati', 451831, 32, 'XXXXXXXXXX', '2011-09-20', 'Male', 'undefined', '451831@gmail.com', '01968460413', 'MD Abu  Azad Barkati', 'Lima', 'Sotashi, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'b18eae4ef67942c78d39e4ea118aa8ff', 'N/A', '2023-03-05 01:30:43'),
(260, 2023, 'Six', 'B', 'Mashfin Mahin', 11325, 28, 'XXXXXXXXXX', '2012-07-16', 'Male', 'undefined', '11325@gmail.com', '01819042712', 'MD Mojid Sheikh', 'Dulali', 'Myna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '538ac7c515e7ba703984685a4ed8681d', 'N/A', '2023-03-05 01:33:04'),
(261, 2023, 'Six', 'C', 'MD.Tamim MIa', 204338, 89, 'XXXXXXXXXX', '2012-03-07', 'Male', 'undefined', '204338@gmail.com', '01920406293', 'MD. Mukul Mia', 'Mst. Bina Begum', 'Kushadangga,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'b14c9a722c0daaea62ea504e1a32bf40', 'N/A', '2023-03-05 05:02:26'),
(262, 2023, 'Six', 'C', 'Tanvir sheikh', 36346, 87, 'XXXXXXXXXX', '2010-07-13', 'Male', 'undefined', '36346@gmail.com', '01311936773', 'MD.Helal Sheikh', 'Merina', 'Loknath,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'dabc4d1f25e92f809097b5f990e70a2f', 'N/A', '2023-03-05 05:07:11'),
(263, 2023, 'Six', 'C', 'MD. Irteja Labib', 228156, 43, 'XXXXXXXXXX', '2012-12-01', 'Male', 'undefined', '228156@gmail.com', '01733397720', 'MD.Abu Sait', 'Amina Aktar', 'Solna,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '32a409fc9be35386f7bc685a33318760', 'N/A', '2023-03-05 05:10:50'),
(264, 2023, 'Six', 'C', 'MD. Parvej biswas', 587061, 60, 'XXXXXXXXXX', '2011-04-27', 'Male', 'undefined', '587061@gmail.com', '01781113640', 'MD. Rubel Biswas', 'Parvin', 'Solna,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '0abe1429bdf8ad72712ba9162d8d9adf', 'N/A', '2023-03-05 05:18:01'),
(265, 2023, 'Six', 'C', 'MD. Jabir Ahamad', 240514, 32, 'XXXXXXXXXX', '2011-11-13', 'Male', 'undefined', '240514@gmail.com', '01739143233', 'MD. Ohidur Rahman', 'JoliAkter', 'Cornarandia,Alfadangga,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'bf832b63a631f7b6a0c8cefe2bbc9476', 'N/A', '2023-03-05 05:21:44'),
(266, 2023, 'Six', 'C', 'MD. Rabbi', 276967, 28, 'XXXXXXXXXX', '2012-11-11', 'Male', 'undefined', '276967@gmail.com', '01724196515', 'MD. Ikbal Hosen', 'Lakisultana', 'Kamargram,Alfadangga,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '90f54c3ecf5945f265b09f94d6c67df0', 'N/A', '2023-03-05 05:26:21'),
(267, 2023, 'Six', 'C', 'MD. Mehedi Hasan', 573611, 88, 'XXXXXXXXXX', '2011-02-01', 'Male', 'undefined', '573611@gmail.com', '01887677354', 'Islam Mollah', 'Rojina', 'AmGram,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '10b1aaa1eb7108e3c203434a621c71dd', 'N/A', '2023-03-05 05:30:17'),
(268, 2023, 'Six', 'B', 'MD Baiyat Islam Nil', 604599, 49, 'XXXXXXXXXX', '2013-01-17', 'Male', 'undefined', '604599@gmail.com', '01713618463', 'Rakibul Islam Turan', 'Sharmin Khanom', 'Dakkhin Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '7c3d810b83484fc0a279af62c6a00da1', 'N/A', '2023-03-06 04:20:37'),
(269, 2023, 'Six', 'B', 'Habibur Molla', 200173, 66, 'XXXXXXXXXX', '2007-05-17', 'Male', 'undefined', '200173@gmail.com', '01920673730', 'MD Lutfar Molla', 'Mst Bilkis Begum', 'Baguan, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '31228ed2aa3f2facf5f8bb893e4974eb', 'N/A', '2023-03-06 04:22:51'),
(270, 2023, 'Six', 'B', 'MD Ruhul Amin', 191161, 41, 'XXXXXXXXXX', '2011-09-28', 'Male', 'undefined', '191161@gmail.com', '01613295870', 'MD Robiul Molla', 'Mst Rina Aktar', 'Thakurpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '5ef3254cf3a74671225abf4934bf9e9e', 'N/A', '2023-03-06 04:24:49'),
(271, 2023, 'Six', 'B', 'Rifat Sheikh', 128886, 91, 'XXXXXXXXXX', '2011-01-15', 'Male', 'undefined', '128886@gmail.com', '01994093762', 'Farid Sheikh', 'Mst Sabina Aktar', 'Kolaron, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '4bddf643a2de0993420cd44dec9e7544', 'N/A', '2023-03-06 04:27:12'),
(272, 2023, 'Six', 'B', 'Abdullah', 639545, 90, 'XXXXXXXXXX', '2010-07-14', 'Male', 'undefined', '639545@gmail.com', '0919878609', 'Nur Islam', 'Sahina Begum', 'Kolaron, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'e892da396e03c3b997227f8c6470671a', 'N/A', '2023-03-06 04:30:38'),
(273, 2023, 'Six', 'B', 'Arijit Saha', 352741, 42, 'XXXXXXXXXX', '2012-06-24', 'Male', 'undefined', '352741@gmail.com', '01715342157', 'Ganesh Chandra Saha', 'Tusi Saha', 'Boronagar, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'ca345951a21f7aa25af9d8039f8dc7c8', 'N/A', '2023-03-06 04:34:37'),
(274, 2023, 'Six', 'B', 'Akash Roy', 480853, 74, 'XXXXXXXXXX', '2012-02-08', 'Male', 'undefined', '480853@gmail.com', '01750075990', 'Prashanta Kumar Roy', 'Lipa Roy', 'Baguan, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'a20c737fb1b7cba8502b9d31a4e6ceee', 'N/A', '2023-03-06 04:36:21'),
(275, 2023, 'Six', 'B', 'MD Sakib Al Mahmud', 329718, 16, 'XXXXXXXXXX', '2012-12-31', 'Male', 'undefined', '329718@gmail.com', '01918155004', 'MD Tuku Mia', 'Mst Fatema Aktar', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '75441326cdcd353f8331b5b5c8e6ad99', 'N/A', '2023-03-06 04:39:06'),
(276, 2023, 'Six', 'B', 'Sabid Talukdar', 476690, 30, 'XXXXXXXXXX', '2012-02-14', 'Male', 'undefined', '476690@gmail.com', '01722235502', 'MD Moklechur Rahman', 'Mst Korna Parvin', 'Adharkotha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'a94397ce1001a804515b2e226f4c2a28', 'N/A', '2023-03-06 04:42:28'),
(277, 2023, 'Six', 'B', 'MD Rezwan Islam', 741155, 10, 'XXXXXXXXXX', '2011-11-03', 'Male', 'undefined', '741155@gmail.com', '01734011406', 'MD Sohel Rana Mukul', 'Mst Nasima Parvin', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '782fbb4b061a5684d714c3bfa67cb7c4', 'N/A', '2023-03-06 04:46:30'),
(278, 2023, 'Six', 'B', 'Mynul Islam', 32838, 92, 'XXXXXXXXXX', '2011-08-20', 'Male', 'undefined', '32838@gmail.com', '01312702326', 'Abul Hasan Roni', 'Mst Nazma Begum', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '199697c4908677b49a7aff990ad2fbff', 'N/A', '2023-03-06 04:51:30'),
(279, 2023, 'Six', 'B', 'MD Wahid ', 187143, 93, 'XXXXXXXXXX', '2011-09-06', 'Male', 'undefined', '187143@gmail.com', '01735805478', 'MD Abdul Halim SHeikh', 'Sultana Begum', 'Chalinagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'a1b10944d40bb41c17b696a96ffac1e0', 'N/A', '2023-03-06 04:53:06'),
(280, 2023, 'Six', 'B', 'Tamim Molla', 592972, 61, 'XXXXXXXXXX', '2010-01-05', 'Male', 'undefined', '592972@gmail.com', '01811568615', 'Palash Molla', 'Taslima Begum', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'eec7f8c7b926ddbd7c675bb409d8b20d', 'N/A', '2023-03-06 04:56:00'),
(281, 2023, 'Six', 'C', 'Navanil Mukharjee', 800134, 62, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '800134@gmail.com', '01710586440', 'Nikhil Mukharrji', 'Roma Roy', 'HarihorNagar ,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'f43eb205db8de26d3ba52f776c16febe', 'N/A', '2023-03-13 14:24:26'),
(282, 2023, 'Six', 'C', 'Kh.Mani Mukharjee', 818707, 18, 'XXXXXXXXXX', '2012-06-20', 'Female', 'undefined', '818707@gmail.com', '00000000000', 'Kh.Abu Morsalin ', 'Aktari Jahan', 'Uttar Shibpur ,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'a30376bce108a0899644ac0fe0ade3c8', 'N/A', '2023-03-13 14:31:18'),
(283, 2023, 'Six', 'C', 'MD. Najmul', 132652, 65, 'XXXXXXXXXX', '2011-12-22', 'Male', 'undefined', '132652@gmail.com', '0186741962', 'Najir Hosen', 'Mst.Khadija Sultana', 'Omrrita Nagar,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '3cc48605fea7e2397eb942ddef187251', 'N/A', '2023-03-13 15:06:05'),
(284, 2023, 'Six', 'C', 'Savan Kundu', 259710, 24, 'XXXXXXXXXX', '2011-07-16', 'Male', 'undefined', '259710@gmail.com', '01714884070', 'Samal Kundu', 'Jhunu Kundu', 'RamNagar,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'dd23b9b5edd2ab16f57a059701c9bf8a', 'N/A', '2023-03-13 15:16:45'),
(285, 2023, 'Six', 'C', 'MD.Mijan', 170927, 83, 'XXXXXXXXXX', '2009-11-07', 'Male', 'undefined', '170927@gmail.com', '01925963697', 'MD.Habibur Rahran', 'Homneyara', 'Gunbaha,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'c438ebc93e387da6eb2c77fd6f11420d', 'N/A', '2023-03-13 15:20:39'),
(286, 2023, 'Six', 'C', 'MD. Anjis Ur Rahman', 248331, 72, 'XXXXXXXXXX', '2012-07-19', 'Male', 'undefined', '248331@gmail.com', '01796203456', 'MD.Monirul Jaman', 'Shamima Khandakar', 'Alfadangya,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '5bb8598618a5aae05def66bf71617b06', 'N/A', '2023-03-13 15:25:42'),
(287, 2023, 'Six', 'C', 'Md.Niyamul Hasan Parash', 157978, 68, 'XXXXXXXXXX', '2012-08-21', 'Male', 'undefined', '157978@gmail.com', '01713548296', 'MD.Mannu Shaike', 'Sakina Khanam', 'AmGram,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '53a2a57cb76f3363d4fb71f29393f2b1', 'N/A', '2023-03-13 15:35:21'),
(288, 2023, 'Six', 'C', 'MD.Al Noman Khan', 288079, 1, 'XXXXXXXXXX', '2012-01-05', 'Male', 'undefined', '288079@gmail.com', '01723146891', 'MD. Babu Khan', 'Nasrin Aktar', 'ShibGram,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'd704f71a8c78a0f6b98db3fbfe7cf334', 'N/A', '2023-03-13 15:44:38'),
(289, 2023, 'Six', 'C', 'Apan Saha', 854861, 12, 'XXXXXXXXXX', '2012-10-19', 'Male', 'undefined', '854861@gmail.com', '01710941024', 'Opurba Kumar Saha', 'Onjona Saha', 'AmNagar,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '2703d01de3ead69822f81a3fef1c653f', 'N/A', '2023-03-13 15:49:45'),
(290, 2023, 'Six', 'C', 'MD.Fahim Molla ', 201667, 36, 'XXXXXXXXXX', '2012-11-01', 'Male', 'undefined', '201667@gmail.com', '01959526543', 'MD.Maruf ', 'Mst.Dipali Begum', 'Solna,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'c02a4c5059c21bafb972181a073ac246', 'N/A', '2023-03-13 15:56:16'),
(291, 2023, 'Six', 'C', 'Shahriya Mafis Riday', 116111, 37, 'XXXXXXXXXX', '2012-06-18', 'Male', 'undefined', '116111@gmail.com', '01930962841', 'MD.Shah Alam', 'Mst.Sabina Begum', 'RayPur,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '11c46cc885f9561540f984b9b448741e', 'N/A', '2023-03-13 16:01:50'),
(292, 2023, 'Six', 'C', 'Abir Hasnat', 563498, 51, 'XXXXXXXXXX', '2011-07-16', 'Male', 'undefined', '563498@gmail.com', '01747648400', 'MD.Amin biswas', 'Farjana', 'Solna,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '1b965f766ce3a9c53d78a64639815b5b', 'N/A', '2023-03-13 17:00:35'),
(293, 2023, 'Six', 'C', 'MD.Tasin Rahaman cad', 202448, 77, 'XXXXXXXXXX', '2012-06-09', 'Male', 'undefined', '202448@gmail.com', '01722689116', 'MD.Sobur Khan', 'Mst.Reshma Parvin', 'FelanNagar,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '2e19d6c736dcc240c8f018454ea70f3f', 'N/A', '2023-03-13 17:05:54'),
(294, 2023, 'Six', 'C', 'Mahin Mir', 807554, 40, 'XXXXXXXXXX', '2012-12-12', 'Male', 'undefined', '807554@gmail.com', '01733146330', 'MD. Milan Mir', 'Mst. Rafeja Begum', 'Amgram,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '3da45b41f528a10eb3d3a22e651b828f', 'N/A', '2023-03-13 17:18:28'),
(295, 2023, 'Six', 'C', 'MD. Fajale Rabbi', 791363, 92, 'XXXXXXXXXX', '2010-01-31', 'Male', 'undefined', '791363@gmail.com', '01716881330', 'MD.Milan Sheikh ', 'Jhorna Begum', 'Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '29cb6fe2c7bb7f7c7bdb63bcc5dcaada', 'N/A', '2023-03-13 17:25:10'),
(296, 2023, 'Six', 'C', 'MD. Talha Ahmed', 761936, 41, 'XXXXXXXXXX', '2012-05-06', 'Male', 'undefined', '761936@gmail.com', '01921669753', 'MD. Bulbul Ahmed', 'Resma Begum', 'Amgram,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'eb665240e5803299d35c2631f104a686', 'N/A', '2023-03-13 17:31:19'),
(297, 2023, 'Six', 'C', 'Shuvra Dash', 69941, 93, 'XXXXXXXXXX', '2019-10-21', 'Male', 'undefined', '69941@gmail.com', '01782982401', 'Bijoy Dash', 'Mitali Dash', 'Kalaran,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'ba8d82a3c8bdcc00374eb3d0f8cd9d54', 'N/A', '2023-03-13 17:37:25'),
(298, 2023, 'Six', 'C', 'Junayet Islam', 701819, 6, 'XXXXXXXXXX', '2013-02-11', 'Male', 'undefined', '701819@gmail.com', '01731307056', 'MD. Montu Molla', 'Jahanara Begum', 'Muktapur,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '2abdec4a5dd2479cd9d5b630a11b5b5d', 'N/A', '2023-03-13 17:42:01'),
(299, 2023, 'Six', 'C', 'Sudipto Loskor', 125241, 66, 'XXXXXXXXXX', '2012-07-09', 'Male', 'undefined', '125241@gmail.com', '01978700526', 'Sumir Kumar Loskor', 'Shilpi Saha', 'Kamargram,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'cdb9fec85b2eba0d3fd5188228a15d71', 'N/A', '2023-03-13 17:45:54'),
(300, 2023, 'Six', 'C', 'Nayon Biswas', 498821, 75, 'XXXXXXXXXX', '2012-05-20', 'Male', 'undefined', '498821@gmail.com', '01724249050', 'Zoges condro biswas', 'Sujata Rani Datto ', 'Cor Padmobila,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '9e71fd24e23276af77753c492ff0a5d8', 'N/A', '2023-03-13 17:52:51'),
(302, 2023, 'Six', 'C', 'MD. Musa Biswas ', 267221, 94, 'XXXXXXXXXX', '2008-10-29', 'Male', 'undefined', '267221@gmail.com', '01910299619', 'Amiriuddin Biswas', 'MRS.Sahida Begum ', 'Sotashi,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '7a92ffa8f95f45c46673144a2236d8e1', 'N/A', '2023-03-13 18:01:05'),
(303, 2023, 'Six', 'C', 'Pranjit Biswas', 855841, 56, 'XXXXXXXXXX', '2010-05-16', 'Male', 'undefined', '855841@gmail.com', '01728336387', 'Nripen Kumar Biswas', 'Pobonna Rani Biswas', 'Sotashi,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '1af938ec11c9b82a15d0550bdd0735f5', 'N/A', '2023-03-13 18:04:27'),
(304, 2023, 'Six', 'C', 'MD. Rmim Molla', 693522, 99, 'XXXXXXXXXX', '2010-12-21', 'Male', 'undefined', '693522@gmail.com', '01866769198', 'MD.Robiul Islam Molla', 'Mst. Taslima Begum', 'Tonarcor ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '4368311199c69540cf5bf8836e725e6f', 'N/A', '2023-03-14 02:01:16'),
(305, 2023, 'Six', 'C', 'MD. Mehedi Molla', 21656, 95, 'XXXXXXXXXX', '2012-02-02', 'Male', 'undefined', '21656@gmail.com', '01708779973', 'MD. Milton Molla', 'Asma Begum', 'Kushadanga ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'f437edc8c7fdb4dc8bb1130c54c87c2f', 'N/A', '2023-03-14 02:03:24'),
(306, 2023, 'Six', 'C', 'Rifat Haq', 860429, 35, 'XXXXXXXXXX', '2012-02-26', 'Male', 'undefined', '860429@gmail.com', '01933839299', 'Nayon ', 'Seli Akter', 'Raypur ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '710b2eb3139fa04e4bd49461b0d4a5c1', 'N/A', '2023-03-14 02:05:47'),
(307, 2023, 'Six', 'C', 'MD. Hosain Miah', 348620, 2, 'XXXXXXXXXX', '2009-01-05', 'Male', 'undefined', '348620@gmail.com', '01955207915', 'Abul Hasan', 'Mst. Sajeda akter', 'U.Cornarandia ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '641722558fcfb9a76e7d39c0ae8ad5fb', 'N/A', '2023-03-14 02:07:49'),
(308, 2023, 'Six', 'C', 'MD. Jannatul Ferdous Molla', 456901, 23, 'XXXXXXXXXX', '2011-06-12', 'Male', 'undefined', '456901@gmail.com', '01932398157', 'MD. Shwkat Molla', 'Jabeda Begum', 'HariharNagar ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'f0d99cc1fe629221a796891fbad3c7fe', 'N/A', '2023-03-14 02:11:47'),
(309, 2023, 'Six', 'C', 'Rothi Gayali', 357876, 82, 'XXXXXXXXXX', '2011-12-16', 'Male', 'undefined', '357876@gmail.com', '01866285000', 'Rabin Gyali', 'Sucutra Rani Gyali', 'Kamargram ,Boalmari ,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '21529195ab9e5ada2829960dd76806f8', 'N/A', '2023-03-14 02:16:02'),
(310, 2023, 'Six', 'C', 'Sajib Sheikh', 212629, 13, 'XXXXXXXXXX', '2010-10-02', 'Male', 'undefined', '212629@gmail.com', '01736786420', 'MD. Juyel Sheikh', 'Kakoli Parvin', 'Amgram ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '0939db6376137ffd6c865b1e65391061', 'N/A', '2023-03-14 02:19:03'),
(311, 2023, 'Six', 'C', 'Ovijeet paul', 779912, 53, 'XXXXXXXXXX', '2012-01-12', 'Male', 'undefined', '779912@gmail.com', '01739971623', 'Ananda Kumar Paul', 'Sabita Pal', 'Myna ,Boalmari ,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '482c818aa07844d5038d1fda8a31b3bc', 'N/A', '2023-03-14 02:23:31'),
(312, 2023, 'Six', 'C', 'MD.Ruhul Amin', 135245, 38, 'XXXXXXXXXX', '2012-11-17', 'Male', 'undefined', '135245@gmail.com', '01934955820', 'MD. Nojrul Molla', 'MD.Beauty Parvin', 'KamarGram ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'ba83055dd31918d00e0d13fcc7eaebc5', 'N/A', '2023-03-14 02:28:01'),
(313, 2023, 'Six', 'C', 'Sparsha Mandal', 616172, 80, 'XXXXXXXXXX', '2011-09-20', 'Male', 'undefined', '616172@gmail.com', '0178908462', 'Parimal Mandal', 'Bandana Mandal', 'Purba Kamargram ,Boalmari ,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '81a85c642b547315f94d34b87667b2e4', 'N/A', '2023-03-14 02:32:41'),
(314, 2023, 'Six', 'C', 'Abir Kanti Poul', 676414, 71, 'XXXXXXXXXX', '2011-02-28', 'Male', 'undefined', '676414@gmail.com', '01818287041', 'Mihir Kanti Pal', 'Sumitra Rani Pal', 'Fatepur ,Boalmari ,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'ab552897e013f099cea93be4769a815f', 'N/A', '2023-03-14 02:36:31'),
(315, 2023, 'Six', 'C', 'Ruhan', 701251, 20, 'XXXXXXXXXX', '2017-04-23', 'Male', 'undefined', '701251@gmail.com', '01915906896', 'MD. Ersad Sheik', 'Mst. Lota Begum', 'Sotashi ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'e168773f2214544ea784610d60c55db4', 'N/A', '2023-03-14 02:39:47'),
(316, 2023, 'Six', 'C', 'MD. Abdullah Al Mamun', 788481, 10, 'XXXXXXXXXX', '2012-01-25', 'Male', 'undefined', '788481@gmail.com', '01921396747', 'MD.Selim Sheik', 'Mst. Parvin Begum', 'Sotashi ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '16d5012e90d79a120727ffb24fd5bb85', 'N/A', '2023-03-14 02:43:12'),
(317, 2023, 'Six', 'C', 'Sohel Rana', 664031, 11, 'XXXXXXXXXX', '2009-05-01', 'Male', 'undefined', '664031@gmail.com', '01983053376', 'MD. Robiul Sheikh', 'Mst. Salma Begum', 'Raypur ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '3ff01a5c19a6e1e6b78fd0ea9fd7f260', 'N/A', '2023-03-14 02:55:53'),
(318, 2023, 'Six', 'C', 'MD. Johan Sheik', 750218, 85, 'XXXXXXXXXX', '2011-09-08', 'Male', 'undefined', '750218@gmail.com', '01871714421', 'MD. Ruku Sheikh', 'Mst.Rehena Begum', 'Calinagar ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'b1bd9db0d801837b4d48d8480a0e54ee', 'N/A', '2023-03-14 03:00:55'),
(319, 2023, 'Six', 'C', 'Simanta Mukar Bouda', 376905, 90, 'XXXXXXXXXX', '2012-08-27', 'Male', 'undefined', '376905@gmail.com', '01951910741', 'Mnoj Kumar Bouda', 'Shamali Rani Sorkar', 'Shekhar ,Boalmari ,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '8382f0b1144e09571f37ff4a6e950cd4', 'N/A', '2023-03-14 03:04:31'),
(320, 2023, 'Six', 'C', 'Abdur rahaman sheikh', 186141, 9, 'XXXXXXXXXX', '2010-12-23', 'Male', 'undefined', '186141@gmail.com', '01983054347', 'Iliyas Sheikh', 'Mst.Runu  Begum', 'Kamaldia,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '4c9cb64406db23674ffeda16a2e2a420', 'N/A', '2023-03-14 07:26:52'),
(321, 2023, 'Six', 'C', 'Prottoy Saha', 555817, 78, 'XXXXXXXXXX', '2011-05-28', 'Male', 'undefined', '555817@gmail.com', '01716748870', 'PongkajKumar Saha', 'Banalata Saha ', 'Shola Hati,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '0e0e89daa25738fde1c82c09cfe81bc2', 'N/A', '2023-03-14 07:33:03'),
(322, 2023, 'Six', 'C', 'MD. Mostafa Kamal', 292340, 57, 'XXXXXXXXXX', '2012-12-24', 'Male', 'undefined', '292340@gmail.com', '01942507602', 'MD. Sobuj Molla', 'Mst.Smpa Khanam', 'loknath,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '9d08b9d05ddca271127e70a75d0ad524', 'N/A', '2023-03-14 07:36:29'),
(323, 2023, 'Six', 'C', 'Kisar Sarkar', 244670, 39, 'XXXXXXXXXX', '2011-11-09', 'Male', 'undefined', '244670@gmail.com', '01754978330', 'Raj Kumar Sarkar', 'Puja Sarkar', 'loknath,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '0ce0375ef2702abfa74a2e0b781e0ee2', 'N/A', '2023-03-14 07:38:45'),
(324, 2023, 'Six', 'C', 'Sheikh Sanbir Rahaman Tanay', 807513, 64, 'XXXXXXXXXX', '2012-11-27', 'Male', 'undefined', '807513@gmail.com', '01712558002', 'Munjor Rahaman Tushar', 'Shefali Begum', 'Dadpur,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '187b9005a1e24e2b0c3f08e564e26bc5', 'N/A', '2023-03-14 07:44:09'),
(325, 2023, 'Six', 'C', 'MD. Najmul', 368724, 65, 'XXXXXXXXXX', '2010-12-22', 'Male', 'undefined', '368724@gmail.com', '01867416962', 'MD.Najir Hosen', 'Mst.Khadija Sultana', 'Omrrita Nagar, Boa;mari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'd1f8f9e11b2a14cfcb4470da5bace604', 'N/A', '2023-03-15 12:46:54'),
(326, 2023, 'Six', 'C', 'Tousif Ahmad', 351781, 70, 'XXXXXXXXXX', '2012-02-10', 'Male', 'undefined', '351781@gmail.com', '01713548245', 'MD.Sanu Molla', 'Taniya Sultana', 'Shukhdev Nagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'a9cbd74ecf36ee4ae19c21bcfafe97d0', 'N/A', '2023-03-15 12:55:40'),
(327, 2023, 'Six', 'C', 'Tarmi Dash', 697344, 27, 'XXXXXXXXXX', '2012-04-29', 'Male', 'undefined', '697344@gmail.com', '0171953985', 'Tpom Kumar Dash', 'Tiloka Rani Kar', 'Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '2eeadcfe2ad8a0470d446f9fc322aa89', 'N/A', '2023-03-15 13:21:40'),
(328, 2023, 'Six', 'C', 'MD.Iyasin Sheikh', 395009, 91, 'XXXXXXXXXX', '2012-10-02', 'Male', 'undefined', '395009@gmail.com', '01732771778', 'MD.Mijanur Rahman', 'Mst.Dipali Begom', 'Reni Nagar,Cad Ghat,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '46c21ec5e1b2d098d5e763bb36c3ec98', 'N/A', '2023-03-15 13:26:05'),
(329, 2023, 'Six', 'C', 'Mirza Mayaz Hosen', 640419, 79, 'XXXXXXXXXX', '2012-07-04', 'Male', 'undefined', '640419@gmail.com', '01718163517', 'Mirza Mahsin Hosen ', 'MRS. Shahanaz Parvin ', 'Purbo Kamargram, Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '43ceeb2930dc539f0c28f4e2b6dfeffe', 'N/A', '2023-03-15 16:15:25'),
(330, 2023, 'Six', 'C', 'Farhan ', 884190, 97, 'XXXXXXXXXX', '2012-03-04', 'Male', 'undefined', '884190@gmail.com', '01768027853', 'Alif Nayon ', 'Fatema Sarkar  ', 'Zogibarat Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '87798013e66fec1fafbc3d590d73b9ec', 'N/A', '2023-03-15 16:24:08'),
(360, 2023, 'Eight', 'A', 'fer', 108620, 10, 'XXXXXXXXXX', '', 'Female', 'N/A', '108620@gmail.com', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'adc42efc53e5f1c786531af4e41715fd', 'N/A', '2023-06-18 17:32:59'),
(371, 2023, 'Seven', 'A', 'Rima', 449652, 1, 'XXXXXXXXXX', '', 'Female', 'N/A', '449652@gmail.com', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '124939f6997d132dc8d9f4072ab530c4', 'N/A', '2023-06-25 08:30:08'),
(372, 2023, 'Seven', 'A', 'Sajedul', 282188, 2, 'XXXXXXXXXX', '', 'Male', 'N/A', '282188@gmail.com', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'fb8c7d6fa8dc72846fbd15df4ecd80da', 'N/A', '2023-06-25 08:30:08'),
(373, 2023, 'Seven', 'A', 'Ripa', 613805, 3, 'XXXXXXXXXX', '', 'Female', 'N/A', '613805@gmail.com', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '70be6917ed23d14be91b2b9b611d2ed6', 'N/A', '2023-06-25 08:30:08'),
(374, 2023, 'Seven', 'A', 'Nobi', 837436, 4, 'XXXXXXXXXX', '', 'Male', 'N/A', '837436@gmail.com', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '6b531706805984d06866b2251455d6fd', 'N/A', '2023-06-25 08:30:08'),
(375, 2023, 'Six', 'A', 'mst. sufia', 126446, 300, 'XXXXXXXXXX', '2009-09-09', 'Female', 'A-ve', '126446@gmail.com', '01955223306', 'mr. hamim', 'mst. rokeya', 'Bolamari- faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '5e8d8d4b98d06bc0e7d8b3776f8c968e', 'N/A', '2023-06-26 05:58:36'),
(376, 2023, 'Six', 'A', 'mst. sufia', 709131, 299, 'XXXXXXXXXX', '2009-09-09', 'Female', 'A+ve', '709131@gmail.com', '01955223306', 'mr. hamim', 'mst. rokeya', 'Bolamari- Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'e36257da9f0268a365d0ec755f5026e2', 'N/A', '2023-06-26 07:13:17'),
(377, 2023, 'Seven', 'A', 'demo', 721159, 100, 'XXXXXXXXXX', '', 'Female', 'N/A', '721159@gmail.com', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '6fa71c52a7ec1224a8de61254444873d', 'N/A', '2023-06-27 08:22:43'),
(378, 2023, 'Seven', 'A', 'demo', 811165, 100, 'XXXXXXXXXX', '', 'Female', 'N/A', '811165@gmail.com', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '69c69d628b18c67f47f401195eb45f03', 'N/A', '2023-06-27 08:22:43');

-- --------------------------------------------------------

--
-- Table structure for table `student_rank`
--

CREATE TABLE `student_rank` (
  `ID` int(11) NOT NULL,
  `session` int(11) DEFAULT 2023,
  `find_date` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_uuid` int(11) NOT NULL,
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

--
-- Dumping data for table `student_rank`
--

INSERT INTO `student_rank` (`ID`, `session`, `find_date`, `teacher_id`, `student_uuid`, `at_date`, `today`, `name`, `student_id`, `roll`, `class`, `section`, `behavior`, `study`, `uniform`, `present`, `poient`, `avatar`) VALUES
(1, 2023, '5/25/2023', 0, 117, '2023-05-25 06:54:00', '5/25/2023', 'Nusrat Jahan', 715661, 1, 'Six', 'A', 0, 0, 0, 1, 1, 'female_avatar.png'),
(2, 2023, '5/25/2023', 0, 141, '2023-05-25 06:54:00', '5/25/2023', 'Mst Samia Islam Asha', 116735, 3, 'Six', 'A', 0, 0, 0, 1, 1, 'female_avatar.png'),
(3, 2023, '5/25/2023', 0, 134, '2023-05-25 06:54:00', '5/25/2023', 'Priyonti Saha', 543278, 4, 'Six', 'A', 0, 0, 0, 1, 1, 'female_avatar.png'),
(4, 2023, '5/25/2023', 0, 78, '2023-05-25 06:54:00', '5/25/2023', 'Fatima choya', 803058, 6, 'Six', 'A', 0, 0, 0, 1, 1, 'female_avatar.png'),
(5, 2023, '5/25/2023', 0, 127, '2023-05-25 06:54:00', '5/25/2023', 'Jilfa Tanjum', 285783, 7, 'Six', 'A', 0, 0, 0, 1, 3.333, 'female_avatar.png'),
(6, 2023, '5/25/2023', 0, 94, '2023-05-25 06:54:00', '5/25/2023', 'Samapti Biswas', 813382, 8, 'Six', 'A', 0, 0, 0, 1, 3.333, 'female_avatar.png'),
(7, 2023, '5/25/2023', 0, 132, '2023-05-25 06:54:00', '5/25/2023', 'Gina Tahmida Titir', 727473, 9, 'Six', 'A', 0, 0, 0, 1, 3.333, 'female_avatar.png'),
(8, 2023, '5/25/2023', 0, 131, '2023-05-25 06:54:00', '5/25/2023', 'Raisa Rahman Jikra', 548902, 11, 'Six', 'A', 0, 0, 0, 1, 3.333, 'female_avatar.png'),
(9, 2023, '5/25/2023', 18, 117, '2023-05-25 06:56:20', '5/25/2023', 'Nusrat Jahan', 715661, 1, 'Six', 'A', 1, 0, 0, 0, 1, 'female_avatar.png'),
(10, 2023, '5/25/2023', 18, 117, '2023-05-25 06:56:21', '5/25/2023', 'Nusrat Jahan', 715661, 1, 'Six', 'A', 0, 0, 1, 0, 1, 'female_avatar.png'),
(11, 2023, '5/25/2023', 18, 117, '2023-05-25 06:56:23', '5/25/2023', 'Nusrat Jahan', 715661, 1, 'Six', 'A', 0, 1, 0, 0, 1, 'female_avatar.png'),
(12, 2023, '5/25/2023', 18, 141, '2023-05-25 06:56:24', '5/25/2023', 'Mst Samia Islam Asha', 116735, 3, 'Six', 'A', 1, 0, 0, 0, 1, 'female_avatar.png'),
(13, 2023, '5/25/2023', 18, 141, '2023-05-25 06:56:25', '5/25/2023', 'Mst Samia Islam Asha', 116735, 3, 'Six', 'A', 0, 0, 1, 0, 1, 'female_avatar.png'),
(14, 2023, '5/25/2023', 18, 141, '2023-05-25 06:56:26', '5/25/2023', 'Mst Samia Islam Asha', 116735, 3, 'Six', 'A', 0, 1, 0, 0, 1, 'female_avatar.png'),
(15, 2023, '5/25/2023', 18, 134, '2023-05-25 06:56:28', '5/25/2023', 'Priyonti Saha', 543278, 4, 'Six', 'A', 1, 0, 0, 0, 1, 'female_avatar.png'),
(16, 2023, '5/25/2023', 18, 134, '2023-05-25 06:56:29', '5/25/2023', 'Priyonti Saha', 543278, 4, 'Six', 'A', 0, 0, 1, 0, 1, 'female_avatar.png'),
(17, 2023, '5/25/2023', 18, 134, '2023-05-25 06:56:30', '5/25/2023', 'Priyonti Saha', 543278, 4, 'Six', 'A', 0, 1, 0, 0, 1, 'female_avatar.png'),
(18, 2023, '5/25/2023', 18, 78, '2023-05-25 06:56:31', '5/25/2023', 'Fatima choya', 803058, 6, 'Six', 'A', 1, 0, 0, 0, 1, 'female_avatar.png'),
(19, 2023, '6/14/2023', 18, 288, '2023-06-14 17:01:49', '6/14/2023', 'MD.Al Noman Khan', 288079, 1, 'Six', 'C', 1, 0, 0, 0, 1, 'male_avatar.png'),
(20, 2023, '6/14/2023', 18, 117, '2023-06-14 17:05:39', '6/14/2023', 'Nusrat Jahan', 715661, 1, 'Six', 'A', 0, 0, 1, 0, 1, '1686761579121_female_avatar.png'),
(21, 2023, '6/14/2023', 18, 141, '2023-06-14 17:06:04', '6/14/2023', 'Mst Samia Islam Asha', 116735, 3, 'Six', 'A', 0, 0, 1, 0, 1, 'female_avatar.png');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `ID` int(11) NOT NULL,
  `class` varchar(100) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `subject_code` varchar(100) DEFAULT NULL,
  `teacher_name` varchar(100) NOT NULL DEFAULT 'demo',
  `teacher_pdsid` varchar(100) NOT NULL,
  `at_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`ID`, `class`, `subject`, `subject_code`, `teacher_name`, `teacher_pdsid`, `at_date`) VALUES
(38, 'Eight', 'বাংলা ব্যকরন ও নির্মিতি', '49601f115a750ec0a86a', 'demo', '', '2023-02-16 17:02:36'),
(40, 'Eight', 'গণিত', '5d2b9e0e0982ceeeaa67', 'demo', '', '2023-02-16 17:02:36'),
(41, 'Eight', 'বিজ্ঞান', 'c04bcdf44407c68beabb', 'demo', '', '2023-02-16 17:02:36'),
(42, 'Eight', 'আনন্দ পাঠ', 'faccd5607ea72e5ac5de', 'demo', '', '2023-02-16 17:02:36'),
(43, 'Eight', 'কৃষি শিক্ষা', 'a0eb41ca40eb7604913b', 'demo', '', '2023-02-16 17:02:36'),
(44, 'Eight', 'গার্হস্থ্য বিজ্ঞান', '3664f65ab72f0509b53a', 'demo', '', '2023-02-16 17:02:36'),
(45, 'Eight', 'শারীরিক শিক্ষা ও স্বাস্থ্য', '17c7d9d01f9d931d4da7', 'demo', '', '2023-02-16 17:02:36'),
(46, 'Eight', 'তথ্য ও যোগাযোগ প্রযুক্তি', 'e3c585a003799d9085a1', 'demo', '', '2023-02-16 17:02:36'),
(47, 'Eight', 'ইসলাম ও নৈতিক শিক্ষা', 'a5681e8d293b8b977083', 'demo', '', '2023-02-16 17:02:36'),
(48, 'Eight', 'হিন্দুধর্ম শিক্ষা', 'b0fcddf8fbc5ba1b2ac0', 'demo', '', '2023-02-16 17:02:36'),
(49, 'Eight', 'খ্রিস্ট্রাধর্ম শিক্ষা', '2ccde8d01eebf6759558', 'demo', '', '2023-02-16 17:02:36'),
(50, 'Eight', 'কর্ম ও জীবনমুখী শিক্ষা', '8d7c6ab878da348c00f7', 'demo', '', '2023-02-16 17:02:36'),
(51, 'Eight', 'চারু ও কারুকলা', '4b43464ee77908da12cf', 'demo', '', '2023-02-16 17:02:36'),
(52, 'Eight', 'English for Today', 'ad4500878cff4414c555', 'demo', '', '2023-02-16 17:02:36'),
(53, 'Eight', 'English Grammar and Composition', '1dbd28fea497d882cdef', 'demo', '', '2023-02-16 17:02:36'),
(54, 'Eight', 'সাহিত্য কনিকা', '901d4325ac4eef17b8ac', 'demo', '', '2023-02-16 17:02:36'),
(55, 'Eight', 'বাংলাদেশ ও বিশ্বপরিচয়', '8f127323d36d3bc74e48', 'demo', '', '2023-02-16 17:02:36'),
(56, 'Eight', 'আরবি', 'd292b74774f355f09eae', 'demo', '', '2023-02-16 17:02:36'),
(57, 'Eight', 'সংস্কৃতি', '084a64bbbe4b1d6f3817', 'demo', '', '2023-02-16 17:02:36'),
(58, 'Eight', 'পালি', 'dae331551126319367cd', 'demo', '', '2023-02-16 17:02:36'),
(59, 'Eight', 'সঙ্গগীত', '113de8f63c876aaf1349', 'demo', '', '2023-02-16 17:02:36'),
(60, 'Nine', 'বাংলা সাহিত্য', '7195db48fc74c644861a', 'demo', '', '2023-02-17 13:53:09'),
(61, 'Nine', 'বাংলা সহপাঠ', '96c6525098099d3417a5', 'demo', '', '2023-02-17 13:53:09'),
(62, 'Nine', 'বাংলা ভাষার ব্যাকরণ', '69f9b9143aa280491364', 'demo', '', '2023-02-17 13:53:09'),
(63, 'Nine', 'English for Toady', '2e8610b6859e071dc653', 'demo', '', '2023-02-17 13:53:09'),
(64, 'Nine', 'গণিত', '8eed770e5aae7a0851c6', 'demo', '', '2023-02-17 13:53:09'),
(65, 'Nine', 'English Grammar and Composition', '3160af3c3ad88bd21332', 'demo', '', '2023-02-17 13:53:09'),
(66, 'Nine', 'তথ্য ও যোগাযোগ প্রযুক্তি', '27d49a127a933352d702', 'demo', '', '2023-02-17 13:53:09'),
(67, 'Nine', 'বিজ্ঞান', 'f5aef6cb27fb2d681c52', 'demo', '', '2023-02-17 13:53:09'),
(68, 'Nine', 'পদার্থ-বিজ্ঞান', '777335e40facff7020e1', 'demo', '', '2023-02-17 13:53:09'),
(69, 'Nine', 'রসায়ন', '48768f3ff14eff202c6a', 'demo', '', '2023-02-17 13:53:09'),
(70, 'Nine', 'জীব-বিজ্ঞান', 'b7e96f35721a20066cec', 'demo', '', '2023-02-17 13:53:09'),
(71, 'Nine', 'উচ্চতর গণিত', '7ffb1c3002f0ef380976', 'demo', '', '2023-02-17 13:53:09'),
(72, 'Nine', 'ভূগোল ও পরিবেশ', '64c79447b4ff66dc8e3d', 'demo', '', '2023-02-17 13:53:09'),
(73, 'Nine', 'অর্থনীতি', '9997566e11aeb4e0517a', 'demo', '', '2023-02-17 13:53:09'),
(74, 'Nine', 'কৃষিশিক্ষা', '431409c39fea0a110d4b', 'demo', '', '2023-02-17 13:53:09'),
(75, 'Nine', 'গার্হস্থ্য বিজ্ঞান', 'e31aeb65eadff2a32749', 'demo', '', '2023-02-17 13:53:09'),
(76, 'Nine', 'পৌরনীতি ও নাগরিকতা', '350839d748fea8c414aa', 'demo', '', '2023-02-17 13:53:09'),
(77, 'Nine', 'হিসাব-বিজ্ঞান', '8d67efe31c4585ac5b43', 'demo', '', '2023-02-17 13:53:09'),
(78, 'Nine', 'ফিন্যান্স ও ব্যাংকিং', 'faacbccd0f638044b8f9', 'demo', '', '2023-02-17 13:53:09'),
(79, 'Nine', 'ব্যবসায় উদ্যোগ', 'f6b2139460e0ebcacf52', 'demo', '', '2023-02-17 13:53:09'),
(80, 'Nine', 'ইসলাম ও নৈতিক শিক্ষা', 'b1a6923d913e79e905a4', 'demo', '', '2023-02-17 13:53:09'),
(81, 'Nine', 'হিন্দুধর্ম শিক্ষা', 'f2c4a90eabb9ce11dd24', 'demo', '', '2023-02-17 13:53:09'),
(82, 'Nine', 'বৌদ্ধধর্ম শিক্ষা', 'b09649538eb72505f5e7', 'demo', '', '2023-02-17 13:53:09'),
(83, 'Nine', 'খ্রিষ্টধর্ম শিক্ষা', 'a512d5e71076acc3840a', 'demo', '', '2023-02-17 13:53:09'),
(84, 'Nine', 'ক্যারিয়ার এডুকেশন', '561763a1d11170fd670b', 'demo', '', '2023-02-17 13:53:09'),
(85, 'Nine', 'বাংলাদেশ ও বিশ্বপরিচয়', '691c756aea9c359276c6', 'demo', '', '2023-02-17 13:53:09'),
(86, 'Nine', 'চারু ও কারুকলা', '0b53ce5182965072406b', 'demo', '', '2023-02-17 13:53:09'),
(87, 'Nine', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'c5b52557628757e0026b', 'demo', '', '2023-02-17 13:53:09'),
(88, 'Nine', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', 'a0d79ce3e17d1c4f4f42', 'demo', '', '2023-02-17 13:53:09'),
(89, 'Nine', 'সচিত্র আরবি পাঠ', 'dd852641e2dbd6aa2e72', 'demo', '', '2023-02-17 13:53:09'),
(90, 'Nine', 'সংস্কৃত', '4cad27f9d539662986a4', 'demo', '', '2023-02-17 13:53:09'),
(91, 'Nine', 'পালি', '26944a295cbf8df099bf', 'demo', '', '2023-02-17 13:53:09'),
(92, 'Nine', 'সংগীত', '331030e3cb331803f46f', 'demo', '', '2023-02-17 13:53:09'),
(93, 'Ten', 'বাংলা সাহিত্য', 'cc4afd9d955fc0a03a21', 'demo', '', '2023-02-17 13:53:15'),
(94, 'Ten', 'বাংলা সহপাঠ', '8427f7afdf3e479358df', 'demo', '', '2023-02-17 13:53:15'),
(95, 'Ten', 'বাংলা ভাষার ব্যাকরণ', '3db7572ee573338f9a5f', 'demo', '', '2023-02-17 13:53:15'),
(96, 'Ten', 'English for Toady', '41b73ccb79b86e2801f2', 'demo', '', '2023-02-17 13:53:15'),
(97, 'Ten', 'গণিত', 'a910cb384aba0bc6ebc2', 'demo', '', '2023-02-17 13:53:15'),
(98, 'Ten', 'English Grammar and Composition', 'd95e9d0d93c7ccebbb91', 'demo', '', '2023-02-17 13:53:15'),
(99, 'Ten', 'তথ্য ও যোগাযোগ প্রযুক্তি', '0e1ebc30f0664b251d24', 'demo', '', '2023-02-17 13:53:15'),
(100, 'Ten', 'বিজ্ঞান', 'ad9aa8dd93db197876c5', 'demo', '', '2023-02-17 13:53:15'),
(101, 'Ten', 'পদার্থ-বিজ্ঞান', '3c2451672d9308386cd9', 'demo', '', '2023-02-17 13:53:15'),
(102, 'Ten', 'রসায়ন', '7ebb9842835d0845faf0', 'demo', '', '2023-02-17 13:53:15'),
(103, 'Ten', 'জীব-বিজ্ঞান', 'f2539b061e11e54fa2e1', 'demo', '', '2023-02-17 13:53:15'),
(104, 'Ten', 'উচ্চতর গণিত', '2fa48b9521ed5850984b', 'demo', '', '2023-02-17 13:53:15'),
(105, 'Ten', 'ভূগোল ও পরিবেশ', 'ebd397d9a4f0103acbd7', 'demo', '', '2023-02-17 13:53:15'),
(106, 'Ten', 'অর্থনীতি', '9e6da46f6306d6a31b81', 'demo', '', '2023-02-17 13:53:15'),
(107, 'Ten', 'কৃষিশিক্ষা', '65499c14c0c4e3e1c94d', 'demo', '', '2023-02-17 13:53:15'),
(108, 'Ten', 'গার্হস্থ্য বিজ্ঞান', '65f15411d619e2cdae38', 'demo', '', '2023-02-17 13:53:15'),
(109, 'Ten', 'পৌরনীতি ও নাগরিকতা', '9b53b11193dff17d053b', 'demo', '', '2023-02-17 13:53:15'),
(110, 'Ten', 'হিসাব-বিজ্ঞান', '4c744ebd5d9289009c36', 'demo', '', '2023-02-17 13:53:15'),
(111, 'Ten', 'ফিন্যান্স ও ব্যাংকিং', '136c184b1dd9f0c73db7', 'demo', '', '2023-02-17 13:53:15'),
(112, 'Ten', 'ব্যবসায় উদ্যোগ', '2960d078ca19054afe99', 'demo', '', '2023-02-17 13:53:15'),
(113, 'Ten', 'ইসলাম ও নৈতিক শিক্ষা', '39b11838f3672e517fa7', 'demo', '', '2023-02-17 13:53:15'),
(114, 'Ten', 'হিন্দুধর্ম শিক্ষা', 'fafe07222849ab16c026', 'demo', '', '2023-02-17 13:53:15'),
(115, 'Ten', 'বৌদ্ধধর্ম শিক্ষা', 'adce5d83acbc71a1eae7', 'demo', '', '2023-02-17 13:53:15'),
(116, 'Ten', 'খ্রিষ্টধর্ম শিক্ষা', '8ce033dd10bd272d5340', 'demo', '', '2023-02-17 13:53:15'),
(117, 'Ten', 'ক্যারিয়ার এডুকেশন', 'b6e45036ed443ac4154c', 'demo', '', '2023-02-17 13:53:15'),
(118, 'Ten', 'বাংলাদেশ ও বিশ্বপরিচয়', 'de6f66f8b632a07896d6', 'demo', '', '2023-02-17 13:53:15'),
(119, 'Ten', 'চারু ও কারুকলা', '74ce49bf4358dcb5a73e', 'demo', '', '2023-02-17 13:53:15'),
(120, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'e60993736b04e2d2d0da', 'demo', '', '2023-02-17 13:53:15'),
(121, 'Ten', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '77efcb10f9a494c305fe', 'demo', '', '2023-02-17 13:53:15'),
(122, 'Ten', 'সচিত্র আরবি পাঠ', '076c70b30c2b3cd8f1e3', 'demo', '', '2023-02-17 13:53:15'),
(123, 'Ten', 'সংস্কৃত', 'bfee8825886ea6b6e4cc', 'demo', '', '2023-02-17 13:53:15'),
(124, 'Ten', 'পালি', '6fff5978efaaeb224e87', 'demo', '', '2023-02-17 13:53:15'),
(125, 'Ten', 'সংগীত', 'e36b659011c412683cdc', 'demo', '', '2023-02-17 13:53:15'),
(126, 'Nine', 'পদার্থ-বিজ্ঞান', '238f00b27ea749544f73', 'demo', '', '2023-02-17 13:59:47'),
(127, 'Nine', 'রসায়ন', 'e548575b11bd7679778e', 'demo', '', '2023-02-17 13:59:47'),
(128, 'Nine', 'জীব-বিজ্ঞান', 'a7b5cde9f0bc40992cfa', 'demo', '', '2023-02-17 13:59:47'),
(129, 'Nine', 'উচ্চতর গণিত', '89c6a26e21d66ebdd908', 'demo', '', '2023-02-17 13:59:47'),
(130, 'Ten', 'পদার্থ-বিজ্ঞান', 'b8b76136aef903edd213', 'demo', '', '2023-02-17 13:59:51'),
(131, 'Ten', 'রসায়ন', '79a0886a0a1fefec5cce', 'demo', '', '2023-02-17 13:59:51'),
(132, 'Ten', 'জীব-বিজ্ঞান', 'b4be09976aff0ea20522', 'demo', '', '2023-02-17 13:59:51'),
(133, 'Ten', 'উচ্চতর গণিত', 'dae2e10c032a3985301d', 'demo', '', '2023-02-17 13:59:51'),
(134, 'Nine', 'হিসাব-বিজ্ঞান', 'c4aa8e81e81294b6773f', 'demo', '', '2023-02-17 14:00:40'),
(135, 'Nine', 'ফিন্যান্স ও ব্যাংকিং', 'c2465545bf04ae965929', 'demo', '', '2023-02-17 14:00:40'),
(136, 'Nine', 'ব্যবসায় উদ্যোগ', 'c29c4767b87b74fd072a', 'demo', '', '2023-02-17 14:00:40'),
(137, 'Ten', 'হিসাব-বিজ্ঞান', '343b312a99fdb0118ccf', 'demo', '', '2023-02-17 14:00:44'),
(138, 'Ten', 'ফিন্যান্স ও ব্যাংকিং', '29e87e9fe7da4b39eb68', 'demo', '', '2023-02-17 14:00:44'),
(139, 'Ten', 'ব্যবসায় উদ্যোগ', '472e9042bdd245137df5', 'demo', '', '2023-02-17 14:00:44'),
(140, 'Nine', 'অর্থনীতি', '6cdf33d6dfca8d5e9c5d', 'demo', '', '2023-02-17 14:02:20'),
(141, 'Nine', 'ভূগোল ও পরিবেশ', '82246f17f395df3e3820', 'demo', '', '2023-02-17 14:02:20'),
(142, 'Nine', 'পৌরনীতি ও নাগরিকতা', 'a6254629d11107f798e7', 'demo', '', '2023-02-17 14:02:20'),
(143, 'Nine', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'ff5d979953f596a6d302', 'demo', '', '2023-02-17 14:02:20'),
(144, 'Ten', 'অর্থনীতি', '6f9486161fdc50305197', 'demo', '', '2023-02-17 14:02:45'),
(145, 'Ten', 'ভূগোল ও পরিবেশ', '783d02013416aa38bd5e', 'demo', '', '2023-02-17 14:02:45'),
(146, 'Ten', 'পৌরনীতি ও নাগরিকতা', 'f8f001a6d37f482503b7', 'demo', '', '2023-02-17 14:02:45'),
(147, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'fb3919ef6b1b12ebc858', 'demo', '', '2023-02-17 14:02:45'),
(148, 'Ten', 'অর্থনীতি', '4048fb9540ac33737f65', 'demo', '', '2023-02-17 14:02:46'),
(149, 'Ten', 'ভূগোল ও পরিবেশ', 'af949791d932a1cbb5f9', 'demo', '', '2023-02-17 14:02:46'),
(150, 'Ten', 'পৌরনীতি ও নাগরিকতা', 'b9c3e47385b40d601ccb', 'demo', '', '2023-02-17 14:02:46'),
(151, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '713dfd6ede3cad7c72bc', 'demo', '', '2023-02-17 14:02:46'),
(160, 'Eight', 'বাংলা ১ম', '6262fb01e3680730b103', 'demo', '', '2023-02-17 14:08:52'),
(161, 'Eight', 'বাংলা ২য়', 'ed58eef002e222f25387', 'demo', '', '2023-02-17 14:08:52'),
(162, 'Eight', 'ইংরেজী ১ম', 'ce839748604cd0840466', 'demo', '', '2023-02-17 14:08:52'),
(163, 'Eight', 'ইংরেজী ২য়', '33653bf3907e2223e76d', 'demo', '', '2023-02-17 14:08:52'),
(164, 'Nine', 'বাংলা ১ম', '1a624a5d37cfc5ff4836', 'demo', '', '2023-02-17 14:08:56'),
(165, 'Nine', 'বাংলা ২য়', '1f7f6a50ca31456e685f', 'demo', '', '2023-02-17 14:08:56'),
(166, 'Nine', 'ইংরেজী ১ম', '396efb7abc7a87370a3b', 'demo', '', '2023-02-17 14:08:56'),
(167, 'Nine', 'ইংরেজী ২য়', 'c32f0c8a29aa5f622386', 'demo', '', '2023-02-17 14:08:56'),
(168, 'Ten', 'বাংলা ১ম', '1e7820fc4a32da4be71d', 'demo', '', '2023-02-17 14:09:03'),
(169, 'Ten', 'বাংলা ২য়', '8a24a08d45bcc3cd86ac', 'demo', '', '2023-02-17 14:09:03'),
(170, 'Ten', 'ইংরেজী ১ম', 'cd2ff059c56014e15f48', 'demo', '', '2023-02-17 14:09:03'),
(171, 'Ten', 'ইংরেজী ২য়', '2b1c3e840823e9df3441', 'demo', '', '2023-02-17 14:09:03'),
(172, 'Nine', 'সামাঃ বিজ্ঞান', '7cb7eb524f59d08ddbc1', 'demo', '', '2023-02-18 07:13:42'),
(173, 'Ten', 'সামাঃ বিজ্ঞান', '2c3190872d0c6b51107c', 'demo', '', '2023-02-18 07:13:46'),
(177, 'Eight', 'বিতর্ক', '31a72341da6aec3d5539', 'demo', '', '2023-02-18 08:20:21'),
(178, 'Eight', 'ডিজিটাল প্রযুক্তি', 'de7630314565a335a45b', 'demo', '', '2023-02-18 08:56:07'),
(182, 'Six', 'বৌদ্ধধর্ম-শিক্ষা', '979371cbc8ff3f8dba70', 'demo', '', '2023-06-17 00:23:34'),
(183, 'Six', 'খ্রিস্ট্রধর্ম-শিক্ষা', 'bbb17312b7e67f716fae', 'demo', '', '2023-06-17 00:23:55'),
(184, 'Six', 'হিন্দুধর্ম-শিক্ষা', '5f849ca973c98cad145c', 'demo', '', '2023-06-17 00:24:14'),
(185, 'Six', 'ইসলাম-শিক্ষা', '09b39bc7bbd54f1604ee', 'demo', '', '2023-06-17 00:24:30'),
(186, 'Six', 'শিল্প-ও-সংস্কৃতি', 'edbda83c9ed5d1b28cd9', 'demo', '', '2023-06-17 00:24:52'),
(187, 'Six', 'জীবন-ও-জীবিকা', '31107af1bafb42d2b0a3', 'demo', '', '2023-06-17 00:25:11'),
(188, 'Six', 'স্বাস্থ্য-সুরক্ষা', '0c001c51e2b241945701', 'demo', '', '2023-06-17 00:25:30'),
(189, 'Six', 'ডিজিটাল-প্রযুক্তি', '7d344fdbec30e1c13399', 'demo', '', '2023-06-17 00:25:46'),
(190, 'Six', 'ইতিহাস-ও-সামাজিক-বিজ্ঞান-অনুশীলন-বই', '4d88ef136007b18543f1', 'demo', '', '2023-06-17 00:26:08'),
(191, 'Six', 'বিজ্ঞান-অনুশীলন-বই', '0c16a4e589ee2011e005', 'demo', '', '2023-06-17 00:26:35'),
(192, 'Six', 'বিজ্ঞান-অনুসন্ধানী-পাঠ-', '3a5db1a6b79a4da72b38', 'demo', '', '2023-06-17 00:26:59'),
(193, 'Six', 'গণিত', '7b6827d7abd71d233318', 'demo', '', '2023-06-17 00:27:25'),
(194, 'Six', 'English', '859c0c9ecbad545731e3', 'demo', '', '2023-06-17 00:27:44'),
(195, 'Six', 'বাংলা', '4e1a1b3aa4fd602c9d85', 'demo', '', '2023-06-17 00:28:08'),
(197, 'Seven', 'বৌদ্ধধর্ম-শিক্ষা', '7114b9b5d135724e12ce', 'demo', '', '2023-06-17 00:29:25'),
(198, 'Seven', 'খ্রিস্ট্রধর্ম-শিক্ষা', '30aa08d1f68197d56e5c', 'demo', '', '2023-06-17 00:29:46'),
(199, 'Seven', 'হিন্দুধর্ম-শিক্ষা', 'd4be695416321a2bff0e', 'demo', '', '2023-06-17 00:30:19'),
(200, 'Seven', 'ইসলাম-শিক্ষা', '79bbc3ee33892bd4539f', 'demo', '', '2023-06-17 00:30:40'),
(201, 'Seven', 'শিল্প-ও-সংস্কৃতি', '711d042a82448f575a5d', 'demo', '', '2023-06-17 00:31:00'),
(202, 'Seven', 'জীবন-ও-জীবিকা', '2e99f2ba9fe25ec2a225', 'demo', '', '2023-06-17 00:31:21'),
(203, 'Seven', 'স্বাস্থ্য-সুরক্ষা', '3b3afb32927c38e66e90', 'demo', '', '2023-06-17 00:31:40'),
(204, 'Seven', 'ডিজিটাল-প্রযুক্তি', '8ac78f2625c8838f2196', 'demo', '', '2023-06-17 00:32:00'),
(205, 'Seven', 'ইতিহাস-ও-সামাজিক-বিজ্ঞান-অনুশীলন-বই', '307a25a92e9c3e171a88', 'demo', '', '2023-06-17 00:32:25'),
(206, 'Seven', 'বিজ্ঞান-অনুশীলন-বই', '81aefccb2a90a753a13f', 'demo', '', '2023-06-17 00:32:46'),
(207, 'Seven', 'বিজ্ঞান-অনুসন্ধানী-পাঠ', '47e5d178494dd6dda48b', 'demo', '', '2023-06-17 00:33:08'),
(208, 'Seven', 'গণিত', 'e2cfd7c966511c06c1d8', 'demo', '', '2023-06-17 00:33:32'),
(209, 'Seven', 'English', '63ed360330de8782b0b5', 'demo', '', '2023-06-17 00:33:54'),
(210, 'Seven', 'বাংলা', '9e3a48286d1eeabf3b14', 'demo', '', '2023-06-17 00:34:20');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` text NOT NULL,
  `education_qualification` varchar(100) NOT NULL DEFAULT 'N/A',
  `pds_id` varchar(100) NOT NULL,
  `index_number` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL DEFAULT 'Assistant Teacher',
  `group_special` varchar(100) NOT NULL DEFAULT 'N/A',
  `quote` varchar(500) NOT NULL DEFAULT 'N/A',
  `telephone` varchar(100) NOT NULL DEFAULT 'XXXXXXXXXXX',
  `email` varchar(100) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `birth_date` varchar(100) NOT NULL DEFAULT 'N/A',
  `address` varchar(100) NOT NULL DEFAULT 'N/A',
  `blood_group` varchar(100) NOT NULL DEFAULT 'N/A',
  `joining_date` varchar(100) NOT NULL DEFAULT 'N/A',
  `avatar` varchar(500) NOT NULL DEFAULT 'male_avatar.png',
  `password` varchar(100) NOT NULL DEFAULT 'password',
  `facebook_link` varchar(100) NOT NULL DEFAULT 'N/A',
  `at_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`ID`, `name`, `gender`, `education_qualification`, `pds_id`, `index_number`, `position`, `group_special`, `quote`, `telephone`, `email`, `religion`, `birth_date`, `address`, `blood_group`, `joining_date`, `avatar`, `password`, `facebook_link`, `at_date`) VALUES
(2, 'Abdul Aziz Molla', 'Male', 'N/A', '100251495', 'D470889', 'Headmaster', 'N/A', 'N/A', '01716974937', 'azizshs07@gmail.com', 'Islam', 'N/A', 'N/A', 'N/A', '1995-11-01', '1676561167056_abdul-aziz-molla-hm.png', '05003784f73e246fdafe2bf46390db51', 'N/A', '2023-02-16 15:26:07'),
(3, 'MD. SERAJUL ISLAM', 'Male', 'N/A', '100250478', 'D473975', 'Assistant Headmaster', 'N/A', 'N/A', '01719518322', 'mdserajul35@gmail.com', 'Islam', 'N/A', 'N/A', 'N/A', '1997-10-01', '1676561790154_serajul-islam-ahm.png', '9ab70ed4bf406d1096f3080f022b786c', 'N/A', '2023-02-16 15:36:30'),
(6, 'BIKASH CHANDRA BOSU', 'Male', 'N/A', '100250607', 'D479983', 'Assistant Teacher', 'N/A', 'N/A', '01712354277', 'bikash479983@gmail.com', 'Hinduism', 'N/A', 'N/A', 'N/A', '2000-02-02', '1676562216077_bikash-sir-at.png', '623eea11339a128378da88eefbe06e4e', 'N/A', '2023-02-16 15:43:36'),
(7, 'RUMANA MIZUN', 'Female', 'N/A', '100373148', 'D1020505', 'Assistant Teacher', 'N/A', 'N/A', '01715541534', 'rumanamizun@gmail.com', 'Islam', 'N/A', 'N/A', 'N/A', '2000-11-02', '1676562336505_mizun-madam-at.png', '75c61604b445f52933d5b88bcd7c7f3a', 'N/A', '2023-02-16 15:45:36'),
(8, 'AMENA PERVIN', 'Female', 'N/A', '100406573', 'D1041431', 'Assistant Teacher', 'N/A', 'N/A', '01725365538', 'amenaparvin11@gmail.com', 'Islam', 'N/A', 'N/A', 'N/A', '2009-12-30', '1676562454883_amena-madam-at.png', '62aa0661dde73ebe34af81003c5fd423', 'N/A', '2023-02-16 15:47:34'),
(9, 'DELWAR HOSEN', 'Male', 'N/A', '101284183', 'N56789622', 'Assistant Teacher', 'N/A', 'N/A', '01712382676', 'mmdhosen@gmail.com', 'Islam', 'N/A', 'N/A', 'N/A', '2011-03-24', '1676562652858_delowar-sir-at.png', 'f43c5f6bacf4e6e108fc438b98291b21', 'N/A', '2023-02-16 15:50:52'),
(10, 'BITHI RANI BISWAS', 'Female', 'N/A', '100432807', 'D1057634', 'Assistant Teacher', 'N/A', 'N/A', '01717751441', 'bithiranib@gmail.com', 'Hinduism', 'N/A', 'N/A', 'N/A', '2011-03-24', '1676562799228_bithi-rani-biswas-madam-at.png', 'd43934ff9bdfb32e53e7e41bc746405b', 'N/A', '2023-02-16 15:53:19'),
(11, 'SELIM SHEIKH', 'Male', 'N/A', '100432811', 'D1057636', 'Assistant Teacher', 'N/A', 'N/A', '01728102740', 'selim03061979@gmail.com', 'Islam', 'N/A', 'N/A', 'N/A', '2011-03-31', '1676562921995_selim-sir-at.png', 'f19d6e1072031297aadecc2d0c86271f', 'N/A', '2023-02-16 15:55:21'),
(12, 'ANISUZZAMAN PANNU', 'Male', 'N/A', '100442732', 'N1062400', 'Assistant Teacher', 'N/A', 'N/A', '01777390906', 'anisuzzamanpannu@gmail.com', 'Islam', 'N/A', 'N/A', 'N/A', '2011-11-22', '1676563076174_anis-sir-at.png', '90b8d4795cc48cf8d6f95f89cc40934d', 'N/A', '2023-02-16 15:57:56'),
(13, 'MASURA KHATUN', 'Female', 'N/A', '100461149', 'N1072479', 'Assistant Teacher', 'N/A', 'N/A', '01720634412', 'masurakhatun616@gmail.com', 'Islam', 'N/A', 'N/A', 'N/A', '2012-06-10', '1676563221017_masura-madam-at.png', '05076522b25fda790082aa92d94f5122', 'N/A', '2023-02-16 16:00:21'),
(14, 'KRISHNA CHANDRA SAHA', 'Male', 'N/A', '100509018', 'N1123550', 'Assistant Teacher', 'N/A', 'N/A', '01716604356', 'krishnasaha435@gmail.com', 'Hinduism', 'N/A', 'N/A', 'N/A', '2015-08-01', '1676563337883_krishna-sir-at.png', '1090233e6d30e4f26a8f9c72024ad176', 'N/A', '2023-02-16 16:02:17'),
(15, 'MADHABIKA BISWAS', 'Female', 'N/A', '100402754', 'D1038899', 'Assistant Teacher', 'N/A', 'N/A', '01714207353', 'ambiswas7@gmail.com', 'Hinduism', 'N/A', 'N/A', 'N/A', '2008-04-01', '1676563463399_madhabika-madam-at.png', 'cd12bbd913d405131db5caa27e0af8a2', 'N/A', '2023-02-16 16:04:23'),
(16, 'MOHSIN ALAM', 'Male', 'N/A', '100461153', 'N1072480', 'Assistant Teacher', 'N/A', 'N/A', '01778029043', 'mohsinalammath@gmail.com', 'Islam', 'N/A', 'N/A', 'N/A', '2012-07-10', '1676563588633_mahasin-sir-at.png', '309699223c29e550b2da19900344499e', 'N/A', '2023-02-16 16:06:28'),
(17, 'RINA RANI KUNDU', 'Female', 'N/A', '100509626', 'N1123915', 'Assistant Teacher', 'N/A', 'N/A', '01726012667', 'rinaranikundu81@gmail.com', 'Hinduism', 'N/A', 'N/A', 'N/A', '2015-08-01', '1676563720313_rina-rani-madam-at.png', 'df276368dc7a42aedad88b4a9da16f0d', 'N/A', '2023-02-16 16:08:40'),
(18, 'SOUMITRA SAHA', 'Male', 'N/A', '100555345', 'N1147428', 'Assistant Teacher', 'N/A', 'N/A', '01743452910', 'soumitrasahatanin@gmail.com', 'Hinduism', 'N/A', ' Boalmari-Faridpur', 'N/A', '2019-02-03', '1676563832731_soumitra-saha-sir.png', '8adfca4210c3d65ee3dc417edc7cbf1f', 'N/A', '2023-02-16 16:10:32'),
(19, 'MOFIJUR RAHAMAN', 'Male', 'N/A', '100499627', 'N1117821', 'Sports Teacher', 'N/A', 'N/A', '01854744192', 'mofijur1988@gmail.com', 'Islam', 'N/A', 'N/A', 'N/A', '2019-02-20', '1676563986090_mofijur-rahman-sir.png', 'edaf6aa530414cbf581043ec2ab146e7', 'N/A', '2023-02-16 16:13:06'),
(20, 'USHA NANDI', 'Female', 'N/A', '100567695', 'N1156115', 'Assistant Teacher', 'N/A', 'N/A', '01734726447', 'nandi.usha85@gmail.com', 'Hinduism', 'N/A', 'N/A', 'N/A', '2019-11-14', '1676564123460_usha-nandi-madam-.png', '18d9ac06995f60d95e125d86d86db25e', 'N/A', '2023-02-16 16:15:23'),
(21, 'ELIAS HOSSAN', 'Male', 'N/A', '100543362', 'N2122121', 'Instructor', 'N/A', 'N/A', '01770559553', 'eliasmolla19870805@gmail.com', 'Islam', 'N/A', 'N/A', 'N/A', '2020-02-01', '1676564247907_elias-sir-inst.png', '57dbf5ff13d6d75116e4e6410052ed7e', 'N/A', '2023-02-16 16:17:27'),
(22, 'S. M. YOUNUS ALI', 'Male', 'N/A', '100336016', 'D179730', 'Assistant Teacher', 'N/A', 'N/A', '01835604871', 'smyounusali88@gmail.com', 'Islam', 'N/A', 'N/A', 'N/A', '1989-03-20', '1676650131333_younus-sir-at.png', 'a5fc81a6e779ddeebcb4f71a5b716e13', 'N/A', '2023-02-17 16:08:51'),
(23, 'SIDDHANTA KUMAR ROY', 'Male', 'N/A', '100491490', 'N1111934', 'Assistant Teacher', 'N/A', 'N/A', 'N/A', 'Not@vailable.com', 'Hinduism', 'N/A', 'N/A', 'N/A', 'undefined', 'male_avatar.png', '340fcb96b966663afe583474676b8daf', 'N/A', '2023-02-17 16:13:56'),
(24, 'NASIMA PARVIN', 'Female', 'N/A', '100485994', 'N1109125', 'Assistant Teacher', 'N/A', 'N/A', '01746204293', 'Not@vailable01.com', 'Islam', 'N/A', 'N/A', 'N/A', 'undefined', 'female_avatar.png', '6bb1146544e32e61394069c937b9571a', 'N/A', '2023-02-17 16:18:24'),
(26, 'MST. SHAMMI AKTAR', 'Female', 'N/A', '101406837', 'N56817846', 'Assistant Teacher', 'N/A', 'N/A', '01796504186', 'bgashammi@gmail.com', 'Islam', 'N/A', 'N/A', 'N/A', 'undefined', '1676650881819_samima-madam-at.png', 'db662551fbd0d38ab2cdf3d28211a0b4', 'N/A', '2023-02-17 16:21:21'),
(27, 'SHUVANGKAR ROY', 'Male', 'N/A', '101406905', 'N56816898', 'Assistant Teacher', 'N/A', 'N/A', '01753303039', 'royshuvangkar036@gmail.com', 'Hinduism', 'N/A', 'N/A', 'N/A', 'undefined', '1676650992270_shuvangkar-roy-sir-at.png', '1ec75d0217f506e8c828a7d008bfcfbc', 'N/A', '2023-02-17 16:23:12'),
(28, 'Anawaruzzam Jhantu', 'Male', 'N/A', '000000001', 'D000000000', 'Assistant Teacher', 'N/A', 'N/A', 'N/A', 'Not@vailable05.com', 'Islam', 'N/A', 'N/A', 'N/A', 'undefined', 'male_avatar.png', 'ad25c49cdb95a6de7aefad1a3d95e1be', 'N/A', '2023-02-19 08:58:49'),
(29, 'Sabuz Ghosh', 'Male', 'N/A', '000000002', 'D000000001', 'Assistant Teacher', 'N/A', 'N/A', 'N/A', 'Not@vailable06.com', 'Hinduism', 'N/A', 'N/A', 'N/A', 'undefined', 'male_avatar.png', '7d6ec92b6ec71e375a2145bb8b1826fa', 'N/A', '2023-02-19 08:59:25'),
(30, 'Ali Ahmmad', 'Male', 'N/A', '000000003', 'D000000003', 'Assistant Teacher', 'N/A', 'N/A', 'N/A', 'Not@vailable07.com', 'Islam', 'N/A', 'N/A', 'N/A', 'undefined', 'male_avatar.png', '70ef4f6786a8d47c57a58d2102fa2a4a', 'N/A', '2023-02-19 09:00:31'),
(32, 'mr. demo', 'Male', 'N/A', '123456', 'N123456', 'Assistant Teacher', 'Science', 'N/A', '01733268723', 'mr.demo@gmail.com', 'Islam', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', '06894482b5c85f222afd8cd62b816672', 'N/A', '2023-06-15 07:26:55'),
(41, 'mst. sufia', 'Female', 'N/A', '123123', 'N123123', 'Assistant Teacher', 'Science', 'N/A', '01955223305', 'mst.sufia1999@gmail.com', 'Islam', 'N/A', 'N/A', 'N/A', '10-10-2010', 'female_avatar.png', '9456cca6f7b087f73dffc9113a1c82f0', 'N/A', '2023-06-26 07:12:28');

-- --------------------------------------------------------

--
-- Table structure for table `terms_of_use`
--

CREATE TABLE `terms_of_use` (
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
  `ID` int(11) NOT NULL,
  `session` int(11) NOT NULL DEFAULT 2023,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
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
  `ID` int(11) NOT NULL,
  `session` int(11) NOT NULL DEFAULT 2023,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `chapter` varchar(100) NOT NULL,
  `pi` varchar(100) NOT NULL,
  `checkout` varchar(100) NOT NULL,
  `bg_color` varchar(100) NOT NULL,
  `teacher_pdsid` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `transcript_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `roll` int(11) NOT NULL,
  `avatar` varchar(100) NOT NULL DEFAULT 'male_avatar.png',
  `at_status` varchar(100) NOT NULL DEFAULT 'incomplete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_admin`
--

CREATE TABLE `user_admin` (
  `ID` int(11) NOT NULL,
  `hash_username` varchar(100) NOT NULL,
  `hash_password` varchar(100) NOT NULL,
  `hash_name` varchar(100) NOT NULL DEFAULT 'admin',
  `hash_avatar` varchar(100) NOT NULL DEFAULT 'male_avatar.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_admin`
--

INSERT INTO `user_admin` (`ID`, `hash_username`, `hash_password`, `hash_name`, `hash_avatar`) VALUES
(1, 'user@admin.com', 'f51f0699b2f4a2cd0c455493366128ca', '3alifn', 'male_avatar.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`ID`);

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
  ADD UNIQUE KEY `catagory_name` (`catagory_name`),
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
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `grade_system`
--
ALTER TABLE `grade_system`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `grade` (`grade`),
  ADD UNIQUE KEY `start_mark` (`start_mark`),
  ADD UNIQUE KEY `end_mark` (`end_mark`);

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
  ADD UNIQUE KEY `email` (`email`);

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
-- Indexes for table `result`
--
ALTER TABLE `result`
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
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `student_id` (`student_id`),
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
  ADD UNIQUE KEY `pds_id` (`pds_id`),
  ADD UNIQUE KEY `index_number` (`index_number`),
  ADD UNIQUE KEY `email` (`email`);

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
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admission`
--
ALTER TABLE `admission`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `bi_catagory`
--
ALTER TABLE `bi_catagory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `bi_mark`
--
ALTER TABLE `bi_mark`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bi_transcript`
--
ALTER TABLE `bi_transcript`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_system`
--
ALTER TABLE `grade_system`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `library`
--
ALTER TABLE `library`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pic_mark`
--
ALTER TABLE `pic_mark`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pis_mark`
--
ALTER TABLE `pis_mark`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privacy_policy`
--
ALTER TABLE `privacy_policy`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `routine`
--
ALTER TABLE `routine`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=629;

--
-- AUTO_INCREMENT for table `school_settings`
--
ALTER TABLE `school_settings`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT for table `student_rank`
--
ALTER TABLE `student_rank`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_admin`
--
ALTER TABLE `user_admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
