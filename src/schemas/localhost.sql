-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2025 at 06:11 PM
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
  `order_value` int(11) DEFAULT 110,
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
  `session` varchar(100) NOT NULL DEFAULT '2025',
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
('localhost', 1, '2024-12-04 23:02:33', 108669, 'logo740463813.0497645.png', 'Boalmari George Academy', 'nomail@abc.com', '01716453013', 'Boalmari, Faridpur, Dhaka, Bangladesh', 'Welcome to our School', 'Boalmari George Academy \'Officials Page\', Faridpur, Dhaka, Bangladesh. 3054 likes · 386 talking about this. It is the oldest high school in Boalmari...', '1735580376626_home.png', '', 'https://www.facebook.com/BoalmariGeorgeAcademyOfficials/');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
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
('eduxoom.com', 17, '2023-10-23 17:11:41', '', 'user@admin.com', '905e60b34aa5eb27556e23e9a46bd144', 'admin', 'male_avatar.png');

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
(16, 'eduxoom.com', 'ABC123XYZS', '10/7/2023', '10/7/2025', 1, 1, '2023-10-07');

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
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `teacher_id` (`teacher_id`),
  ADD UNIQUE KEY `teacher_uuid` (`teacher_uuid`);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `class_section`
--
ALTER TABLE `class_section`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `headofschool`
--
ALTER TABLE `headofschool`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

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
-- AUTO_INCREMENT for table `repository`
--
ALTER TABLE `repository`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2399;

--
-- AUTO_INCREMENT for table `student_rank`
--
ALTER TABLE `student_rank`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3746;

--
-- AUTO_INCREMENT for table `transcript_report`
--
ALTER TABLE `transcript_report`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `user_admin`
--
ALTER TABLE `user_admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `___ini`
--
ALTER TABLE `___ini`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
