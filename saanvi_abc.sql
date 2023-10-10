-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2023 at 05:17 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saanvi_demo`
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
  `session` int(11) NOT NULL,
  `student_uuid` varchar(100) NOT NULL,
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
  `chapter` varchar(100) NOT NULL,
  `pi` varchar(10) NOT NULL,
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
  `chapter` varchar(100) NOT NULL,
  `pi` varchar(10) NOT NULL,
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
  `year` int(11) NOT NULL DEFAULT 2023,
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

INSERT INTO `routine` (`domain`, `ID`, `year`, `class`, `section`, `day`, `subject`, `period_table`, `teacher_name`, `teacher_uuid`, `teacher_index`, `teacher_pdsid`, `teacher_avatar`, `period_time`) VALUES
('localhost', 9, 2023, 'Ten', 'A', 'রবিবার', 'ইংরেজী ২য়', '৩য়', 'Abdul Aziz Molla', '', '', '100251495', '1676561167056_abdul-aziz-molla-hm.png', '১১ঃ৫০ - ১২ঃ৩৫ '),
('localhost', 10, 2023, 'Ten', 'A', 'সোমবার', 'ইংরেজী ২য়', '৩য়', 'Abdul Aziz Molla', '', '', '100251495', '1676561167056_abdul-aziz-molla-hm.png', '১১ঃ৫০ - ১২ঃ৩৫ '),
('localhost', 12, 2023, 'Nine', 'A', 'বুধবার', 'গণিত', '২য়', 'MD SERAJUL ISLAM', '', '', '100250478', '1676561790154_serajul-islam-ahm.png', '১১ঃ০৫ - ১১ঃ৫০ '),
('localhost', 13, 2023, 'Ten', 'A', 'মঙ্গলবার', 'ইংরেজী ২য়', '৩য়', 'Abdul Aziz Molla', '', '', '100251495', '1676561167056_abdul-aziz-molla-hm.png', '১১ঃ৫০ - ১২ঃ৩৫ '),
('localhost', 14, 2023, 'Nine', 'B', 'ররিবার', 'গণিত', '২য়', 'MD SERAJUL ISLAM', '', '', '100250478', '1676561790154_serajul-islam-ahm.png', '১১ঃ৫০ - ১২ঃ৩৫ '),
('localhost', 15, 2023, 'Nine', 'B', 'সোমবার', 'গণিত', '২য়', 'MD SERAJUL ISLAM', '', '', '100250478', '1676561790154_serajul-islam-ahm.png', '১১ঃ৫০ - ১২ঃ৩৫ '),
('localhost', 16, 2023, 'Nine', 'B', 'মঙ্গলবার', 'গণিত', '২য়', 'MD SERAJUL ISLAM', '', '', '100250478', '1676561790154_serajul-islam-ahm.png', '১১ঃ৫০ - ১২ঃ৩৫ '),
('localhost', 17, 2023, 'Ten', 'A', 'মঙ্গলবার', 'পদার্থ-বিজ্ঞান', '৬ষ্ট', 'MD SERAJUL ISLAM', '', '', '100250478', '1676561790154_serajul-islam-ahm.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 18, 2023, 'Ten', 'A', 'বুধবার', 'পদার্থ-বিজ্ঞান', '৬ষ্ট', 'MD SERAJUL ISLAM', '', '', '100250478', '1676561790154_serajul-islam-ahm.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 19, 2023, 'Ten', 'A', 'বৃহস্পতিবার', 'পদার্থ-বিজ্ঞান', '৬ষ্ট', 'MD SERAJUL ISLAM', '', '', '100250478', '1676561790154_serajul-islam-ahm.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 20, 2023, 'Nine', 'A', 'সোমবার', 'গণিত', '৭ম', 'MD SERAJUL ISLAM', '', '', '100250478', '1676561790154_serajul-islam-ahm.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 21, 2023, 'Nine', 'C', 'ররিবার', 'বাংলা ১ম', '১ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 22, 2023, 'Nine', 'C', 'সোমবার', 'বাংলা ১ম', '১ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 23, 2023, 'Nine', 'C', 'মঙ্গলবার', 'বাংলা ১ম', '১ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 24, 2023, 'Nine', 'C', 'বুধবার', 'বাংলা ২য়', '১ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 25, 2023, 'Nine', 'C', 'বৃহস্পতিবার', 'বাংলা ২য়', '১ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 26, 2023, 'Ten', 'B', 'ররিবার', 'ইংরেজী ২য়', '৩য়', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 27, 2023, 'Ten', 'B', 'সোমবার', 'ইংরেজী ২য়', '৩য়', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 28, 2023, 'Ten', 'B', 'মঙ্গলবার', 'ইংরেজী ২য়', '৩য়', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 29, 2023, 'Ten', 'B', 'বুধবার', 'ইংরেজী ১ম', '৩য়', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 30, 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'ইংরেজী ১ম', '৩য়', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 31, 2023, 'Ten', 'A', 'ররিবার', 'ইংরেজী ১ম', '৫ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 32, 2023, 'Ten', 'A', 'সোমবার', 'ইংরেজী ১ম', '৫ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 33, 2023, 'Ten', 'A', 'মঙ্গলবার', 'ইংরেজী ১ম', '৫ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 34, 2023, 'Nine', 'B', 'বুধবার', 'ইংরেজী ২য়', '৫ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 35, 2023, 'Nine', 'B', 'বৃহস্পতিবার', 'ইংরেজী ২য়', '৫ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 39, 2023, 'Nine', 'B', 'ররিবার', 'ইংরেজী ২য়', '৭ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 43, 2023, 'Ten', 'A', 'ররিবার', 'গণিত', '১ম', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 44, 2023, 'Ten', 'A', 'সোমবার', 'গণিত', '১ম', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 45, 2023, 'Ten', 'A', 'মঙ্গলবার', 'গণিত', '১ম', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 51, 2023, 'Nine', 'A', 'বুধবার', 'উচ্চতর গণিত', '৪র্থ', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 52, 2023, 'Nine', 'A', 'বৃহস্পতিবার', 'উচ্চতর গণিত', '৪র্থ', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 56, 2023, 'Nine', 'A', 'ররিবার', 'পদার্থ-বিজ্ঞান', '৬ষ্ট', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 57, 2023, 'Nine', 'A', 'সোমবার', 'পদার্থ-বিজ্ঞান', '৬ষ্ট', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 58, 2023, 'Nine', 'A', 'মঙ্গলবার', 'পদার্থ-বিজ্ঞান', '৬ষ্ট', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 62, 2023, 'Ten', 'A', 'বুধবার', 'গণিত', '৭ম', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 64, 2023, 'Ten', 'B', 'ররিবার', 'ইংরেজী ১ম', '১ম', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 65, 2023, 'Ten', 'B', 'সোমবার', 'ইংরেজী ১ম', '১ম', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 66, 2023, 'Ten', 'B', 'মঙ্গলবার', 'ইংরেজী ১ম', '১ম', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 69, 2023, 'Nine', 'A', 'ররিবার', 'ইংরেজী ১ম', '৩য়', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 70, 2023, 'Nine', 'A', 'সোমবার', 'ইংরেজী ১ম', '৩য়', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 71, 2023, 'Nine', 'A', 'মঙ্গলবার', 'ইংরেজী ১ম', '৩য়', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 91, 2023, 'Ten', 'B', 'ররিবার', 'ভূগোল ও পরিবেশ', '২য়', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 92, 2023, 'Ten', 'B', 'সোমবার', 'ভূগোল ও পরিবেশ', '২য়', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 93, 2023, 'Ten', 'B', 'মঙ্গলবার', 'ভূগোল ও পরিবেশ', '২য়', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 103, 2023, 'Eight', 'B', 'বুধবার', 'ইংরেজী ১ম', '৩য়', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 104, 2023, 'Eight', 'B', 'বৃহস্পতিবার', 'ইংরেজী ১ম', '৩য়', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 110, 2023, 'Eight', 'B', 'ররিবার', 'ইংরেজী ১ম', '৬ষ্ট', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 111, 2023, 'Eight', 'B', 'সোমবার', 'ইংরেজী ১ম', '৬ষ্ট', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 112, 2023, 'Seven', 'B', 'মঙ্গলবার', 'বাংলা ২য়', '৭ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 113, 2023, 'Seven', 'B', 'বুধবার', 'বাংলা ২য়', '৭ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 114, 2023, 'Seven', 'B', 'বৃহস্পতিবার', 'বাংলা ২য়', '৭ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 115, 2023, 'Six', 'A', 'বুধবার', 'গণিত', '২য়', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 116, 2023, 'Six', 'A', 'বৃহস্পতিবার', 'গণিত', '২য়', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 117, 2023, 'Eight', 'B', 'ররিবার', 'গণিত', '৩য়', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 118, 2023, 'Eight', 'B', 'সোমবার', 'গণিত', '৩য়', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 119, 2023, 'Eight', 'B', 'মঙ্গলবার', 'গণিত', '৩য়', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 120, 2023, 'Six', 'A', 'ররিবার', 'গণিত', '৫ম', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 121, 2023, 'Six', 'A', 'সোমবার', 'গণিত', '৫ম', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 122, 2023, 'Six', 'A', 'মঙ্গলবার', 'গণিত', '৫ম', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 123, 2023, 'Eight', 'C', 'বুধবার', 'বিজ্ঞান', '৬ষ্ট', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 124, 2023, 'Eight', 'C', 'বৃহস্পতিবার', 'বিজ্ঞান', '৬ষ্ট', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 125, 2023, 'Eight', 'C', 'ররিবার', 'বিজ্ঞান', '৭ম', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 126, 2023, 'Eight', 'B', 'বৃহস্পতিবার', 'গণিত', '৭ম', 'BIKASH CHANDRA BOSU', '', '', '100250607', '1676562216077_bikash-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 127, 2023, 'Seven', 'B', 'বুধবার', 'ইংরেজী ২য়', '২য়', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 128, 2023, 'Seven', 'B', 'বৃহস্পতিবার', 'ইংরেজী ২য়', '২য়', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 129, 2023, 'Eight', 'A', 'বুধবার', 'ইংরেজী ২য়', '৩য়', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 130, 2023, 'Eight', 'A', 'বৃহস্পতিবার', 'ইংরেজী ২য়', '৩য়', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 131, 2023, 'Seven', 'C', 'ররিবার', 'বাংলা ২য়', '৪র্থ', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 132, 2023, 'Seven', 'C', 'সোমবার', 'বাংলা ২য়', '৪র্থ', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 133, 2023, 'Seven', 'C', 'মঙ্গলবার', 'বাংলা ২য়', '৪র্থ', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 134, 2023, 'Six', 'B', 'বুধবার', 'বাংলা ১ম', '৫ম', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 135, 2023, 'Six', 'B', 'বৃহস্পতিবার', 'বাংলা ১ম', '৫ম', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 136, 2023, 'Six', 'C', 'ররিবার', 'ইংরেজী ১ম', '৬ষ্ট', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 137, 2023, 'Six', 'C', 'সোমবার', 'ইংরেজী ১ম', '৬ষ্ট', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 138, 2023, 'Six', 'C', 'মঙ্গলবার', 'ইংরেজী ১ম', '৬ষ্ট', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 139, 2023, 'Seven', 'B', 'ররিবার', 'ইংরেজী ২য়', '৭ম', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 140, 2023, 'Eight', 'A', 'সোমবার', 'ইংরেজী ২য়', '৭ম', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 141, 2023, 'Six', 'B', 'মঙ্গলবার', 'বাংলা ১ম', '৭ম', 'RUMANA MIZUN', '', '', '100373148', '1676562336505_mizun-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 142, 2023, 'Eight', 'A', 'ররিবার', 'বাংলা ১ম', '১ম', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 143, 2023, 'Eight', 'A', 'সোমবার', 'বাংলা ১ম', '১ম', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 144, 2023, 'Eight', 'A', 'মঙ্গলবার', 'বাংলা ১ম', '১ম', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 145, 2023, 'Eight', 'A', 'বুধবার', 'বাংলা ২য়', '১ম', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 146, 2023, 'Eight', 'A', 'বৃহস্পতিবার', 'বাংলা ২য়', '১ম', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 147, 2023, 'Eight', 'C', 'বুধবার', 'ইংরেজী ১ম', '৩য়', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 148, 2023, 'Eight', 'C', 'বৃহস্পতিবার', 'ইংরেজী ১ম', '৩য়', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 149, 2023, 'Six', 'A', 'ররিবার', 'ইংরেজী ১ম', '৪র্থ', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 150, 2023, 'Six', 'A', 'সোমবার', 'ইংরেজী ১ম', '৪র্থ', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 151, 2023, 'Six', 'A', 'মঙ্গলবার', 'ইংরেজী ১ম', '৪র্থ', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 152, 2023, 'Seven', 'A', 'বুধবার', 'জীবন ও জীবিকা', '৫ম', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 153, 2023, 'Seven', 'A', 'বৃহস্পতিবার', 'জীবন ও জীবিকা', '৫ম', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 154, 2023, 'Eight', 'C', 'ররিবার', 'ইংরেজী ১ম', '৬ষ্ট', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 155, 2023, 'Eight', 'C', 'সোমবার', 'ইংরেজী ১ম', '৬ষ্ট', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 156, 2023, 'Nine', 'C', 'ররিবার', 'ক্যারিয়ার এডুকেশন', '৭ম', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 157, 2023, 'Six', 'C', 'সোমবার', 'ইংরেজী ২য়', '৭ম', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 158, 2023, 'Seven', 'A', 'মঙ্গলবার', 'জীবন ও জীবিকা', '৭ম', 'AMENA PERVIN', '', '', '100406573', '1676562454883_amena-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 159, 2023, 'Six', 'A', 'ররিবার', 'বাংলা ১ম', '১ম', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 160, 2023, 'Six', 'A', 'সোমবার', 'বাংলা ১ম', '১ম', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 161, 2023, 'Six', 'A', 'মঙ্গলবার', 'বাংলা ১ম', '১ম', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 162, 2023, 'Six', 'A', 'বুধবার', 'বাংলা ২য়', '১ম', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 163, 2023, 'Six', 'A', 'বৃহস্পতিবার', 'বাংলা ২য়', '১ম', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 164, 2023, 'Eight', 'C', 'ররিবার', 'ইংরেজী ২য়', '২য়', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 165, 2023, 'Eight', 'C', 'সোমবার', 'ইংরেজী ২য়', '২য়', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 166, 2023, 'Eight', 'C', 'মঙ্গলবার', 'ইংরেজী ২য়', '২য়', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 167, 2023, 'Seven', 'A', 'বুধবার', 'ইংরেজী ২য়', '৩য়', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 168, 2023, 'Seven', 'A', 'বৃহস্পতিবার', 'ইংরেজী ২য়', '৩য়', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 169, 2023, 'Ten', 'B', 'ররিবার', 'বাংলা ২য়', '৪র্থ', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 170, 2023, 'Ten', 'B', 'সোমবার', 'বাংলা ২য়', '৪র্থ', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 171, 2023, 'Ten', 'B', 'মঙ্গলবার', 'বাংলা ২য়', '৪র্থ', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 172, 2023, 'Seven', 'C', 'ররিবার', 'ইংরেজী ১ম', '৫ম', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 173, 2023, 'Eight', 'C', 'বুধবার', 'ইংরেজী ২য়', '৫ম', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 174, 2023, 'Seven', 'C', 'সোমবার', 'ইংরেজী ১ম', '৬ষ্ট', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 175, 2023, 'Seven', 'C', 'বুধবার', 'ইংরেজী ১ম', '৬ষ্ট', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 176, 2023, 'Seven', 'C', 'বৃহস্পতিবার', 'ইংরেজী ১ম', '৬ষ্ট', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 177, 2023, 'Eight', 'A', 'মঙ্গলবার', 'শারীরিক শিক্ষা ও স্বাস্থ্য', '৬ষ্ট', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 178, 2023, 'Six', 'C', 'বৃহস্পতিবার', 'শিল্প ও সংস্কৃতি', '৭ম', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 179, 2023, 'Seven', 'A', 'ররিবার', 'ইংরেজী ২য়', '৭ম', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 180, 2023, 'Seven', 'A', 'সোমবার', 'ইংরেজী ২য়', '৭ম', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 181, 2023, 'Seven', 'A', 'মঙ্গলবার', 'ইংরেজী ২য়', '৭ম', 'MADHABIKA BISWAS', '', '', '100402754', '1676563463399_madhabika-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 187, 2023, 'Seven', 'A', 'ররিবার', 'বাংলা ১ম', '১ম', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 188, 2023, 'Seven', 'A', 'সোমবার', 'বাংলা ১ম', '১ম', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 189, 2023, 'Seven', 'A', 'মঙ্গলবার', 'বাংলা ১ম', '১ম', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 190, 2023, 'Seven', 'A', 'বুধবার', 'বাংলা ২য়', '১ম', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 191, 2023, 'Seven', 'A', 'বৃহস্পতিবার', 'বাংলা ২য়', '১ম', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 192, 2023, 'Eight', 'A', 'বুধবার', 'ইংরেজী ১ম', '২য়', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 193, 2023, 'Eight', 'A', 'বৃহস্পতিবার', 'ইংরেজী ১ম', '২য়', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 194, 2023, 'Nine', 'C', 'ররিবার', 'ইংরেজী ২য়', '৩য়', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 195, 2023, 'Nine', 'C', 'সোমবার', 'ইংরেজী ২য়', '৩য়', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 196, 2023, 'Nine', 'C', 'মঙ্গলবার', 'ইংরেজী ২য়', '৩য়', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 197, 2023, 'Seven', 'B', 'ররিবার', 'ইংরেজী ১ম', '৪র্থ', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 198, 2023, 'Seven', 'B', 'সোমবার', 'ইংরেজী ১ম', '৪র্থ', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 199, 2023, 'Seven', 'B', 'মঙ্গলবার', 'ইংরেজী ১ম', '৪র্থ', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 200, 2023, 'Ten', 'A', 'বুধবার', 'সামাঃ বিজ্ঞান', '৪র্থ', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 201, 2023, 'Ten', 'A', 'বৃহস্পতিবার', 'সামাঃ বিজ্ঞান', '৪র্থ', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 202, 2023, 'Eight', 'A', 'ররিবার', 'ইংরেজী ১ম', '৬ষ্ট', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 203, 2023, 'Eight', 'A', 'সোমবার', 'ইংরেজী ১ম', '৬ষ্ট', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 204, 2023, 'Six', 'A', 'ররিবার', 'ইংরেজী ১ম', '৬ষ্ট', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 205, 2023, 'Six', 'A', 'সোমবার', 'ইংরেজী ১ম', '৬ষ্ট', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 206, 2023, 'Ten', 'A', 'ররিবার', 'সামাঃ বিজ্ঞান', '৭ম', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 207, 2023, 'Six', 'B', 'সোমবার', 'শিল্প ও সংস্কৃতি', '৭ম', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 208, 2023, 'Six', 'A', 'মঙ্গলবার', 'ইংরেজী ২য়', '৭ম', 'BITHI RANI BISWAS', '', '', '100432807', '1676562799228_bithi-rani-biswas-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 215, 2023, 'Eight', 'B', 'মঙ্গলবার', 'বাংলা ১ম', '১ম', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 216, 2023, 'Eight', 'B', 'ররিবার', 'বাংলা ১ম', '১ম', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 217, 2023, 'Eight', 'B', 'সোমবার', 'বাংলা ১ম', '১ম', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 218, 2023, 'Six', 'B', 'ররিবার', 'ইংরেজী ২য়', '২য়', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 219, 2023, 'Six', 'B', 'সোমবার', 'ইংরেজী ২য়', '২য়', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 220, 2023, 'Six', 'B', 'মঙ্গলবার', 'ইংরেজী ২য়', '২য়', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 221, 2023, 'Six', 'C', 'বুধবার', 'গণিত', '২য়', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 222, 2023, 'Six', 'C', 'বৃহস্পতিবার', 'গণিত', '২য়', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 223, 2023, 'Seven', 'B', 'বুধবার', 'গণিত', '৩য়', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 224, 2023, 'Seven', 'B', 'বৃহস্পতিবার', 'গণিত', '৩য়', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 225, 2023, 'Nine', 'C', 'ররিবার', 'হিসাব-বিজ্ঞান', '৪র্থ', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 226, 2023, 'Nine', 'C', 'সোমবার', 'হিসাব-বিজ্ঞান', '৪র্থ', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 227, 2023, 'Nine', 'C', 'মঙ্গলবার', 'হিসাব-বিজ্ঞান', '৪র্থ', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 228, 2023, 'Ten', 'B', 'মঙ্গলবার', 'ব্যবসায় উদ্যোগ', '৫ম', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 229, 2023, 'Ten', 'B', 'বুধবার', 'ব্যবসায় উদ্যোগ', '৫ম', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 230, 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'ব্যবসায় উদ্যোগ', '৫ম', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 231, 2023, 'Seven', 'B', 'ররিবার', 'গণিত', '৬ষ্ট', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 232, 2023, 'Nine', 'C', 'মঙ্গলবার', 'ফিন্যান্স ও ব্যাংকিং', '৬ষ্ট', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 233, 2023, 'Nine', 'C', 'বুধবার', 'ফিন্যান্স ও ব্যাংকিং', '৬ষ্ট', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 234, 2023, 'Nine', 'C', 'বৃহস্পতিবার', 'ফিন্যান্স ও ব্যাংকিং', '৬ষ্ট', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 235, 2023, 'Six', 'C', 'ররিবার', 'গণিত', '৭ম', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 236, 2023, 'Seven', 'B', 'সোমবার', 'গণিত', '৭ম', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 237, 2023, 'Six', 'B', 'বৃহস্পতিবার', 'ইংরেজী ২য়', '৭ম', 'SELIM SHEIKH', '', '', '100432811', '1676562921995_selim-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 238, 2023, 'Seven', 'C', 'ররিবার', 'গণিত', '১ম', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 239, 2023, 'Seven', 'C', 'সোমবার', 'গণিত', '১ম', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 240, 2023, 'Seven', 'C', 'মঙ্গলবার', 'গণিত', '১ম', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 241, 2023, 'Ten', 'C', 'ররিবার', 'হিসাব-বিজ্ঞান', '২য়', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 242, 2023, 'Ten', 'C', 'সোমবার', 'হিসাব-বিজ্ঞান', '২য়', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 243, 2023, 'Ten', 'C', 'মঙ্গলবার', 'হিসাব-বিজ্ঞান', '২য়', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 244, 2023, 'Ten', 'C', 'বুধবার', 'ফিন্যান্স ও ব্যাংকিং', '২য়', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 245, 2023, 'Ten', 'C', 'বৃহস্পতিবার', 'ফিন্যান্স ও ব্যাংকিং', '২য়', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 246, 2023, 'Six', 'B', 'ররিবার', 'গণিত', '৪র্থ', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 247, 2023, 'Six', 'B', 'সোমবার', 'গণিত', '৪র্থ', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 248, 2023, 'Six', 'B', 'মঙ্গলবার', 'গণিত', '৪র্থ', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 249, 2023, 'Seven', 'A', 'বুধবার', 'শিল্প ও সংস্কৃতি', '৪র্থ', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 250, 2023, 'Seven', 'A', 'বৃহস্পতিবার', 'শিল্প ও সংস্কৃতি', '৪র্থ', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 251, 2023, 'Nine', 'C', 'ররিবার', 'ব্যবসায় উদ্যোগ', '৫ম', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 252, 2023, 'Nine', 'C', 'সোমবার', 'ব্যবসায় উদ্যোগ', '৫ম', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 253, 2023, 'Six', 'C', 'মঙ্গলবার', 'বিজ্ঞান অনুসন্ধানী বই', '৫ম', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 254, 2023, 'Six', 'C', 'বুধবার', 'বিজ্ঞান অনুসন্ধানী বই', '৫ম', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 255, 2023, 'Six', 'C', 'বৃহস্পতিবার', 'বিজ্ঞান অনুসন্ধানী বই', '৫ম', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 256, 2023, 'Six', 'B', 'বুধবার', 'জীবন ও জীবিকা', '৬ষ্ট', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 257, 2023, 'Six', 'B', 'বৃহস্পতিবার', 'জীবন ও জীবিকা', '৬ষ্ট', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 258, 2023, 'Eight', 'C', 'মঙ্গলবার', 'শারীরিক শিক্ষা ও স্বাস্থ্য', '৭ম', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 259, 2023, 'Six', 'B', 'বুধবার', 'গণিত', '৭ম', 'ANISUZZAMAN PANNU', '', '', '100442732', '1676563076174_anis-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 260, 2023, 'Nine', 'B', 'ররিবার', 'বাংলা ১ম', '১ম', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 261, 2023, 'Nine', 'B', 'সোমবার', 'বাংলা ১ম', '১ম', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 262, 2023, 'Nine', 'B', 'মঙ্গলবার', 'বাংলা ১ম', '১ম', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 263, 2023, 'Nine', 'B', 'বুধবার', 'বাংলা ২য়', '১ম', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 264, 2023, 'Nine', 'B', 'বৃহস্পতিবার', 'বাংলা ২য়', '১ম', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 265, 2023, 'Seven', 'A', 'ররিবার', 'স্বাস্থ্য সুরক্ষা', '২য়', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 266, 2023, 'Seven', 'A', 'সোমবার', 'স্বাস্থ্য সুরক্ষা', '২য়', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 267, 2023, 'Seven', 'A', 'মঙ্গলবার', 'স্বাস্থ্য সুরক্ষা', '২য়', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 268, 2023, 'Ten', 'B', 'বুধবার', 'অর্থনীতি', '২য়', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 269, 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'অর্থনীতি', '২য়', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 270, 2023, 'Eight', 'C', 'ররিবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৪র্থ', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 271, 2023, 'Eight', 'C', 'সোমবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৪র্থ', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 272, 2023, 'Eight', 'C', 'মঙ্গলবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৪র্থ', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 273, 2023, 'Nine', 'A', 'ররিবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৫ম', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 274, 2023, 'Nine', 'A', 'সোমবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৫ম', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 275, 2023, 'Eight', 'C', 'বৃহস্পতিবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৫ম', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 276, 2023, 'Seven', 'C', 'মঙ্গলবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৬ষ্ট', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 277, 2023, 'Nine', 'A', 'বুধবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৬ষ্ট', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 278, 2023, 'Ten', 'B', 'ররিবার', 'অর্থনীতি', '৭ম', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 279, 2023, 'Six', 'A', 'বুধবার', 'আবৃত্তি', '৭ম', 'MASURA KHATUN', '', '', '100461149', '1676563221017_masura-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 280, 2023, 'Eight', 'C', 'ররিবার', 'গণিত', '১ম', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 281, 2023, 'Eight', 'C', 'সোমবার', 'গণিত', '১ম', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 282, 2023, 'Eight', 'C', 'মঙ্গলবার', 'গণিত', '১ম', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 283, 2023, 'Seven', 'C', 'বুধবার', 'বিজ্ঞান অনুসন্ধানী বই', '১ম', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 284, 2023, 'Seven', 'C', 'বৃহস্পতিবার', 'বিজ্ঞান অনুসন্ধানী বই', '১ম', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 285, 2023, 'Ten', 'A', 'ররিবার', 'উচ্চতর গণিত', '২য়', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 286, 2023, 'Ten', 'A', 'সোমবার', 'উচ্চতর গণিত', '২য়', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 287, 2023, 'Ten', 'A', 'মঙ্গলবার', 'উচ্চতর গণিত', '২য়', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 288, 2023, 'Nine', 'C', 'বুধবার', 'বিজ্ঞান', '২য়', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 289, 2023, 'Nine', 'C', 'বৃহস্পতিবার', 'বিজ্ঞান', '২য়', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 290, 2023, 'Nine', 'B', 'বুধবার', 'সামাঃ বিজ্ঞান', '২য়', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 291, 2023, 'Nine', 'B', 'বৃহস্পতিবার', 'সামাঃ বিজ্ঞান', '২য়', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 292, 2023, 'Eight', 'A', 'ররিবার', 'গণিত', '৩য়', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 293, 2023, 'Eight', 'A', 'সোমবার', 'গণিত', '৩য়', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 294, 2023, 'Eight', 'A', 'মঙ্গলবার', 'গণিত', '৩য়', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 295, 2023, 'Ten', 'B', 'বুধবার', 'গণিত', '৪র্থ', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 296, 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'গণিত', '৪র্থ', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 297, 2023, 'Ten', 'B', 'ররিবার', 'গণিত', '৫ম', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 298, 2023, 'Ten', 'B', 'সোমবার', 'গণিত', '৫ম', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 299, 2023, 'Nine', 'C', 'মঙ্গলবার', 'গণিত', '৫ম', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 300, 2023, 'Nine', 'C', 'বুধবার', 'গণিত', '৫ম', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 301, 2023, 'Nine', 'C', 'বৃহস্পতিবার', 'গণিত', '৫ম', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 302, 2023, 'Seven', 'C', 'ররিবার', 'বিজ্ঞান অনুসন্ধানী বই', '৬ষ্ট', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 303, 2023, 'Nine', 'B', 'সোমবার', 'বিজ্ঞান', '৭ম', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 304, 2023, 'Nine', 'C', 'সোমবার', 'বিজ্ঞান', '৭ম', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 305, 2023, 'Eight', 'C', 'বুধবার', 'গণিত', '৭ম', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 306, 2023, 'Eight', 'A', 'বৃহস্পতিবার', 'গণিত', '৭ম', 'MOHSIN ALAM', '', '', '100461153', '1676563588633_mahasin-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 307, 2023, 'Nine', 'A', 'ররিবার', 'ইংরেজী ১ম', '১ম', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 308, 2023, 'Nine', 'A', 'সোমবার', 'ইংরেজী ১ম', '১ম', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 309, 2023, 'Nine', 'A', 'মঙ্গলবার', 'ইংরেজী ১ম', '১ম', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 310, 2023, 'Eight', 'B', 'বুধবার', 'ইংরেজী ২য়', '১ম', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 311, 2023, 'Eight', 'B', 'বৃহস্পতিবার', 'ইংরেজী ২য়', '১ম', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 312, 2023, 'Six', 'B', 'বুধবার', 'ইংরেজী ২য়', '২য়', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 313, 2023, 'Six', 'B', 'বৃহস্পতিবার', 'ইংরেজী ২য়', '২য়', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 314, 2023, 'Ten', 'A', 'ররিবার', 'ইংরেজী ২য়', '৩য়', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 315, 2023, 'Seven', 'A', 'ররিবার', 'ইংরেজী ১ম', '৪র্থ', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 316, 2023, 'Seven', 'A', 'সোমবার', 'ইংরেজী ১ম', '৪র্থ', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 317, 2023, 'Seven', 'A', 'মঙ্গলবার', 'ইংরেজী ১ম', '৪র্থ', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 318, 2023, 'Eight', 'C', 'বুধবার', 'বাংলা ২য়', '৪র্থ', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 319, 2023, 'Eight', 'C', 'বৃহস্পতিবার', 'বাংলা ২য়', '৪র্থ', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 320, 2023, 'Seven', 'C', 'সোমবার', 'আবৃত্তি', '৫ম', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 321, 2023, 'Nine', 'B', 'সোমবার', 'ইংরেজী ১ম', '৬ষ্ট', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 322, 2023, 'Nine', 'B', 'মঙ্গলবার', 'ইংরেজী ১ম', '৬ষ্ট', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 323, 2023, 'Nine', 'B', 'বুধবার', 'ইংরেজী ১ম', '৬ষ্ট', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 324, 2023, 'Six', 'B', 'ররিবার', 'ইংরেজী ১ম', '৭ম', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 325, 2023, 'Eight', 'C', 'সোমবার', 'বাংলা ২য়', '৭ম', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 326, 2023, 'Eight', 'B', 'মঙ্গলবার', 'ইংরেজী ২য়', '৭ম', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 327, 2023, 'Eight', 'A', 'বুধবার', 'বিতর্ক', '৭ম', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 328, 2023, 'Six', 'A', 'বৃহস্পতিবার', 'শিল্প ও সংস্কৃতি', '৭ম', 'SIDDHANTA KUMAR ROY', '', '', '100491490', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 329, 2023, 'Seven', 'B', 'ররিবার', 'বিজ্ঞান অনুসন্ধানী বই', '১ম', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 330, 2023, 'Seven', 'B', 'সোমবার', 'বিজ্ঞান অনুসন্ধানী বই', '১ম', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 331, 2023, 'Seven', 'B', 'মঙ্গলবার', 'বিজ্ঞান অনুসন্ধানী বই', '১ম', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 332, 2023, 'Nine', 'A', 'ররিবার', 'জীব-বিজ্ঞান', '২য়', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 333, 2023, 'Nine', 'A', 'সোমবার', 'জীব-বিজ্ঞান', '২য়', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 334, 2023, 'Nine', 'A', 'মঙ্গলবার', 'জীব-বিজ্ঞান', '২য়', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 335, 2023, 'Ten', 'A', 'বুধবার', 'জীব-বিজ্ঞান', '২য়', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 336, 2023, 'Ten', 'A', 'বৃহস্পতিবার', 'জীব-বিজ্ঞান', '২য়', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 337, 2023, 'Six', 'A', 'ররিবার', 'বিজ্ঞান অনুসন্ধানী বই', '৩য়', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 338, 2023, 'Six', 'A', 'সোমবার', 'বিজ্ঞান অনুসন্ধানী বই', '৩য়', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 339, 2023, 'Six', 'A', 'মঙ্গলবার', 'বিজ্ঞান অনুসন্ধানী বই', '৩য়', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 340, 2023, 'Nine', 'B', 'বুধবার', 'কৃষিশিক্ষা', '৪র্থ', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 341, 2023, 'Nine', 'B', 'বৃহস্পতিবার', 'কৃষিশিক্ষা', '৪র্থ', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 342, 2023, 'Nine', 'C', 'বুধবার', 'কৃষিশিক্ষা', '৪র্থ', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 343, 2023, 'Nine', 'C', 'বৃহস্পতিবার', 'কৃষিশিক্ষা', '৪র্থ', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 344, 2023, 'Eight', 'B', 'ররিবার', 'কৃষি শিক্ষা', '৫ম', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 345, 2023, 'Eight', 'B', 'সোমবার', 'কৃষি শিক্ষা', '৫ম', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 346, 2023, 'Eight', 'B', 'মঙ্গলবার', 'কৃষি শিক্ষা', '৫ম', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 347, 2023, 'Eight', 'C', 'ররিবার', 'কৃষি শিক্ষা', '৫ম', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 348, 2023, 'Eight', 'C', 'সোমবার', 'কৃষি শিক্ষা', '৫ম', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 349, 2023, 'Eight', 'C', 'মঙ্গলবার', 'কৃষি শিক্ষা', '৫ম', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 350, 2023, 'Seven', 'C', 'বুধবার', 'জীবন ও জীবিকা', '৫ম', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 351, 2023, 'Seven', 'C', 'বৃহস্পতিবার', 'জীবন ও জীবিকা', '৫ম', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 352, 2023, 'Nine', 'B', 'ররিবার', 'কৃষিশিক্ষা', '৬ষ্ট', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 353, 2023, 'Nine', 'C', 'ররিবার', 'কৃষিশিক্ষা', '৬ষ্ট', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 354, 2023, 'Ten', 'A', 'সোমবার', 'জীব-বিজ্ঞান', '৬ষ্ট', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 355, 2023, 'Ten', 'B', 'মঙ্গলবার', 'কৃষিশিক্ষা', '৭ম', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 356, 2023, 'Ten', 'B', 'বুধবার', 'কৃষিশিক্ষা', '৭ম', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 357, 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'কৃষিশিক্ষা', '৭ম', 'KRISHNA CHANDRA SAHA', '', '', '100509018', '1676563337883_krishna-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 358, 2023, 'Seven', 'B', 'ররিবার', 'হিন্দু ধর্ম শিক্ষা', '২য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 359, 2023, 'Seven', 'B', 'সোমবার', 'হিন্দু ধর্ম শিক্ষা', '২য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 360, 2023, 'Seven', 'B', 'মঙ্গলবার', 'হিন্দু ধর্ম শিক্ষা', '২য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 361, 2023, 'Seven', 'C', 'ররিবার', 'হিন্দুধর্ম শিক্ষা', '২য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 362, 2023, 'Seven', 'C', 'সোমবার', 'হিন্দু ধর্ম শিক্ষা', '২য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 363, 2023, 'Seven', 'C', 'মঙ্গলবার', 'হিন্দুধর্ম শিক্ষা', '২য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 365, 2023, 'Eight', 'B', 'বুধবার', 'হিন্দুধর্ম শিক্ষা', '২য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 366, 2023, 'Eight', 'B', 'বৃহস্পতিবার', 'হিন্দুধর্ম  শিক্ষা', '২য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 367, 2023, 'Six', 'C', 'ররিবার', 'হিন্দুধর্ম শিক্ষা', '৩য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 368, 2023, 'Six', 'C', 'সোমবার', 'হিন্দুধর্ম শিক্ষা', '৩য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 369, 2023, 'Six', 'C', 'মঙ্গলবার', 'হিন্দুধর্ম শিক্ষা', '৩য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 370, 2023, 'Ten', 'A', 'বুধবার', 'হিন্দুধর্ম শিক্ষা', '৩য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 371, 2023, 'Ten', 'A', 'বৃহস্পতিবার', 'হিন্দুধর্ম শিক্ষা', '৩য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 372, 2023, 'Ten', 'B', 'বুধবার', 'হিন্দুধর্ম শিক্ষা', '৩য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 373, 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'হিন্দুধর্ম শিক্ষা', '৩য়', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 374, 2023, 'Eight', 'A', 'ররিবার', 'হিন্দুধর্ম শিক্ষা', '৫ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 375, 2023, 'Eight', 'A', 'সোমবার', 'হিন্দুধর্ম শিক্ষা', '৫ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 376, 2023, 'Eight', 'A', 'মঙ্গলবার', 'হিন্দুধর্ম শিক্ষা', '৫ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 377, 2023, 'Six', 'A', 'বুধবার', 'হিন্দুধর্ম শিক্ষা', '৫ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 378, 2023, 'Six', 'A', 'বৃহস্পতিবার', 'হিন্দুধর্ম শিক্ষা', '৫ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 379, 2023, 'Six', 'B', 'ররিবার', 'হিন্দুধর্ম শিক্ষা', '৬ষ্ট', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 380, 2023, 'Six', 'B', 'সোমবার', 'হিন্দুধর্ম শিক্ষা', '৬ষ্ট', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 381, 2023, 'Six', 'B', 'মঙ্গলবার', 'হিন্দুধর্ম শিক্ষা', '৬ষ্ট', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 382, 2023, 'Seven', 'A', 'বুধবার', 'হিন্দুধর্ম শিক্ষা', '৬ষ্ট', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ৪০ - ৩ঃ২০');
INSERT INTO `routine` (`domain`, `ID`, `year`, `class`, `section`, `day`, `subject`, `period_table`, `teacher_name`, `teacher_uuid`, `teacher_index`, `teacher_pdsid`, `teacher_avatar`, `period_time`) VALUES
('localhost', 383, 2023, 'Seven', 'A', 'বৃহস্পতিবার', 'হিন্দুধর্ম শিক্ষা', '৬ষ্ট', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 384, 2023, 'Six', 'A', 'সোমবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 385, 2023, 'Nine', 'A', 'মঙ্গলবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 386, 2023, 'Nine', 'A', 'বুধবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 387, 2023, 'Nine', 'A', 'বৃহস্পতিবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 388, 2023, 'Nine', 'B', 'মঙ্গলবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 389, 2023, 'Nine', 'B', 'বুধবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 390, 2023, 'Nine', 'B', 'বৃহস্পতিবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 391, 2023, 'Nine', 'C', 'বৃহস্পতিবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 392, 2023, 'Nine', 'C', 'বুধবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 393, 2023, 'Nine', 'C', 'মঙ্গলবার', 'হিন্দুধর্ম শিক্ষা', '৭ম', 'RINA RANI KUNDU', '', '', '100509626', '1676563720313_rina-rani-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 394, 2023, 'Nine', 'A', 'বুধবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '১ম', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 395, 2023, 'Nine', 'A', 'বৃহস্পতিবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '১ম', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 396, 2023, 'Eight', 'A', 'ররিবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '২য়', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 397, 2023, 'Eight', 'A', 'সোমবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '২য়', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 398, 2023, 'Eight', 'A', 'মঙ্গলবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '২য়', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 399, 2023, 'Nine', 'B', 'বুধবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৩য়', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 400, 2023, 'Nine', 'B', 'বৃহস্পতিবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৩য়', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 401, 2023, 'Nine', 'C', 'বুধবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৩য়', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 402, 2023, 'Nine', 'C', 'বৃহস্পতিবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৩য়', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 403, 2023, 'Eight', 'B', 'ররিবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৪র্থ', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 404, 2023, 'Eight', 'B', 'সোমবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৪র্থ', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 405, 2023, 'Eight', 'B', 'মঙ্গলবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৪র্থ', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 406, 2023, 'Six', 'A', 'বুধবার', 'ডিজিটাল প্রযুক্তি', '৪র্থ', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 407, 2023, 'Six', 'A', 'বৃহস্পতিবার', 'ডিজিটাল প্রযুক্তি', '৪র্থ', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 408, 2023, 'Seven', 'A', 'ররিবার', 'বিজ্ঞান অনুসন্ধানী বই', '৫ম', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 409, 2023, 'Seven', 'A', 'সোমবার', 'বিজ্ঞান অনুসন্ধানী বই', '৫ম', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 410, 2023, 'Seven', 'A', 'মঙ্গলবার', 'বিজ্ঞান অনুসন্ধানী বই', '৫ম', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 411, 2023, 'Ten', 'A', 'ররিবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৬ষ্ট', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 412, 2023, 'Ten', 'B', 'বুধবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৬ষ্ট', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 413, 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৬ষ্ট', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 414, 2023, 'Ten', 'C', 'বুধবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৬ষ্ট', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 415, 2023, 'Ten', 'C', 'বৃহস্পতিবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৬ষ্ট', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 416, 2023, 'Ten', 'A', 'মঙ্গলবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৭ম', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 417, 2023, 'Seven', 'A', 'বুধবার', 'ডিজিটাল প্রযুক্তি', '৭ম', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 418, 2023, 'Seven', 'A', 'বৃহস্পতিবার', 'ডিজিটাল প্রযুক্তি', '৭ম', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 419, 2023, 'Eight', 'C', 'বুধবার', 'বাংলা ১ম', '১ম', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 420, 2023, 'Eight', 'C', 'বৃহস্পতিবার', 'বাংলা ১ম', '১ম', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 421, 2023, 'Six', 'C', 'ররিবার', 'স্বাস্থ্য সুরক্ষা', '২য়', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 422, 2023, 'Six', 'C', 'সোমবার', 'স্বাস্থ্য সুরক্ষা', '২য়', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 423, 2023, 'Six', 'C', 'মঙ্গলবার', 'স্বাস্থ্য সুরক্ষা', '২য়', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 424, 2023, 'Seven', 'C', 'ররিবার', 'আবৃত্তি', '২য়', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 425, 2023, 'Seven', 'C', 'সোমবার', 'আবৃত্তি', '২য়', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 426, 2023, 'Seven', 'C', 'বুধবার', 'আবৃত্তি', '২য়', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 427, 2023, 'Seven', 'C', 'বৃহস্পতিবার', 'আবৃত্তি', '২য়', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 428, 2023, 'Seven', 'B', 'ররিবার', 'স্বাস্থ্য সুরক্ষা', '৩য়', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 429, 2023, 'Seven', 'B', 'সোমবার', 'স্বাস্থ্য সুরক্ষা', '৩য়', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 430, 2023, 'Seven', 'B', 'মঙ্গলবার', 'স্বাস্থ্য সুরক্ষা', '৩য়', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 431, 2023, 'Six', 'B', 'বুধবার', 'স্বাস্থ্য সুরক্ষা', '৪র্থ', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 432, 2023, 'Six', 'B', 'বৃহস্পতিবার', 'স্বাস্থ্য সুরক্ষা', '৪র্থ', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 433, 2023, 'Six', 'B', 'সোমবার', 'স্বাস্থ্য সুরক্ষা', '৫ম', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 434, 2023, 'Eight', 'B', 'বুধবার', 'শারীরিক শিক্ষা ও স্বাস্থ্য', '৫ম', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 435, 2023, 'Eight', 'B', 'বৃহস্পতিবার', 'শারীরিক শিক্ষা ও স্বাস্থ্য', '৫ম', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 436, 2023, 'Eight', 'C', 'মঙ্গলবার', 'বাংলা ১ম', '৬ষ্ট', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 437, 2023, 'Nine', 'A', 'বৃহস্পতিবার', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '৬ষ্ট', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 438, 2023, 'Nine', 'A', 'ররিবার', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '৭ম', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 439, 2023, 'Ten', 'B', 'সোমবার', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '৭ম', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 440, 2023, 'Ten', 'A', 'বৃহস্পতিবার', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '৭ম', 'MOFIJUR RAHAMAN', '', '', '100499627', '1676563986090_mofijur-rahman-sir.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 441, 2023, 'Six', 'B', 'বুধবার', 'বাংলা ২য়', '১ম', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 442, 2023, 'Six', 'B', 'বৃহস্পতিবার', 'বাংলা ২য়', '১ম', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 443, 2023, 'Six', 'A', 'ররিবার', 'জীবন ও জীবিকা', '২য়', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 444, 2023, 'Six', 'A', 'সোমবার', 'জীবন ও জীবিকা', '২য়', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 445, 2023, 'Six', 'A', 'মঙ্গলবার', 'জীবন ও জীবিকা', '২য়', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 448, 2023, 'Seven', 'C', 'ররিবার', 'বাংলা ১ম', '৩য়', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 449, 2023, 'Seven', 'C', 'সোমবার', 'বাংলা ১ম', '৩য়', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 450, 2023, 'Seven', 'C', 'মঙ্গলবার', 'বাংলা ১ম', '৩য়', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 451, 2023, 'Six', 'C', 'বুধবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৩য়', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 452, 2023, 'Six', 'C', 'বৃহস্পতিবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৩য়', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 453, 2023, 'Six', 'C', 'বৃহস্পতিবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৩য়', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 454, 2023, 'Seven', 'B', 'বুধবার', 'জীবন ও জীবিকা', '৪র্থ', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 455, 2023, 'Seven', 'B', 'বৃহস্পতিবার', 'জীবন ও জীবিকা', '৪র্থ', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 456, 2023, 'Seven', 'B', 'ররিবার', 'জীবন ও জীবিকা', '৫ম', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 457, 2023, 'Six', 'C', 'সোমবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৫ম', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 458, 2023, 'Six', 'B', 'মঙ্গলবার', 'বাংলা ২য়', '৫ম', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 459, 2023, 'Six', 'B', 'মঙ্গলবার', 'বাংলা ২য়', '৫ম', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 460, 2023, 'Eight', 'A', 'বুধবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৫ম', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 461, 2023, 'Eight', 'A', 'বৃহস্পতিবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৫ম', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 462, 2023, 'Six', 'A', 'ররিবার', 'স্বাস্থ্য সুরক্ষা', '৬ষ্ট', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 463, 2023, 'Six', 'A', 'সোমবার', 'স্বাস্থ্য সুরক্ষা', '৬ষ্ট', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 464, 2023, 'Six', 'A', 'মঙ্গলবার', 'স্বাস্থ্য সুরক্ষা', '৬ষ্ট', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 465, 2023, 'Eight', 'A', 'ররিবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৭ম', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 466, 2023, 'Seven', 'C', 'বুধবার', 'বাংলা ১ম', '৭ম', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 467, 2023, 'Seven', 'C', 'বুধবার', 'বাংলা ১ম', '৭ম', 'NASIMA PARVIN', '', '', '100485994', 'female_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 468, 2023, 'Six', 'C', 'ররিবার', 'বাংলা ২য়', '১ম', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 469, 2023, 'Six', 'C', 'সোমবার', 'বাংলা ২য়', '১ম', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 470, 2023, 'Six', 'C', 'মঙ্গলবার', 'বাংলা ২য়', '১ম', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 471, 2023, 'Ten', 'A', 'বুধবার', 'বাংলা ২য়', '১ম', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 472, 2023, 'Ten', 'A', 'বৃহস্পতিবার', 'বাংলা ২য়', '১ম', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 473, 2023, 'Six', 'B', 'ররিবার', 'ডিজিটাল প্রযুক্তি', '৩য়', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 474, 2023, 'Six', 'B', 'সোমবার', 'ডিজিটাল প্রযুক্তি', '৩য়', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 475, 2023, 'Six', 'B', 'মঙ্গলবার', 'ডিজিটাল প্রযুক্তি', '৩য়', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 476, 2023, 'Six', 'B', 'মঙ্গলবার', 'ডিজিটাল প্রযুক্তি', '৩য়', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 477, 2023, 'Nine', 'A', 'বুধবার', 'বাংলা ১ম', '৩য়', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 478, 2023, 'Nine', 'A', 'বৃহস্পতিবার', 'বাংলা ১ম', '৩য়', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 479, 2023, 'Nine', 'A', 'ররিবার', 'বাংলা ২য়', '৪র্থ', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 480, 2023, 'Nine', 'A', 'সোমবার', 'বাংলা ২য়', '৪র্থ', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 481, 2023, 'Nine', 'A', 'মঙ্গলবার', 'বাংলা ২য়', '৪র্থ', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 482, 2023, 'Eight', 'B', 'বুধবার', 'বাংলা ২য়', '৪র্থ', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 483, 2023, 'Eight', 'B', 'বৃহস্পতিবার', 'বাংলা ২য়', '৪র্থ', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 484, 2023, 'Nine', 'B', 'ররিবার', 'অর্থনীতি', '৫ম', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 485, 2023, 'Nine', 'B', 'সোমবার', 'অর্থনীতি', '৫ম', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 486, 2023, 'Nine', 'B', 'মঙ্গলবার', 'অর্থনীতি', '৫ম', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 487, 2023, 'Seven', 'B', 'মঙ্গলবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৬ষ্ট', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 488, 2023, 'Seven', 'B', 'বুধবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৬ষ্ট', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 489, 2023, 'Seven', 'B', 'বৃহস্পতিবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৬ষ্ট', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 490, 2023, 'Eight', 'B', 'ররিবার', 'বাংলা ২য়', '৭ম', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 491, 2023, 'Six', 'C', 'বুধবার', 'বাংলা ২য়', '৭ম', 'USHA NANDI', '', '', '100567695', '1676564123460_usha-nandi-madam-.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 492, 2023, 'Six', 'B', 'ররিবার', 'বিজ্ঞান অনুসন্ধানী বই', '১ম', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 493, 2023, 'Six', 'B', 'সোমবার', 'বিজ্ঞান অনুসন্ধানী বই', '১ম', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 494, 2023, 'Six', 'B', 'মঙ্গলবার', 'বিজ্ঞান অনুসন্ধানী বই', '১ম', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 495, 2023, 'Six', 'C', 'বুধবার', 'ডিজিটাল প্রযুক্তি', '১ম', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 496, 2023, 'Six', 'C', 'বৃহস্পতিবার', 'ডিজিটাল প্রযুক্তি', '১ম', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 497, 2023, 'Seven', 'A', 'ররিবার', 'গণিত', '৩য়', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 498, 2023, 'Seven', 'A', 'সোমবার', 'গণিত', '৩য়', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 499, 2023, 'Seven', 'A', 'মঙ্গলবার', 'গণিত', '৩য়', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 500, 2023, 'Ten', 'A', 'ররিবার', 'রসায়ন', '৪র্থ', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 501, 2023, 'Ten', 'A', 'সোমবার', 'রসায়ন', '৪র্থ', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 502, 2023, 'Ten', 'A', 'মঙ্গলবার', 'রসায়ন', '৪র্থ', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 503, 2023, 'Eight', 'A', 'বুধবার', 'বিজ্ঞান', '৪র্থ', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 504, 2023, 'Eight', 'A', 'বৃহস্পতিবার', 'বিজ্ঞান', '৪র্থ', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 505, 2023, 'Six', 'C', 'ররিবার', 'ডিজিটাল প্রযুক্তি', '৫ম', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 506, 2023, 'Nine', 'A', 'মঙ্গলবার', 'রসায়ন', '৫ম', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 507, 2023, 'Nine', 'A', 'বুধবার', 'রসায়ন', '৫ম', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 508, 2023, 'Nine', 'A', 'বৃহস্পতিবার', 'রসায়ন', '৫ম', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 509, 2023, 'Ten', 'B', 'ররিবার', 'বিজ্ঞান', '৬ষ্ট', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 510, 2023, 'Ten', 'B', 'সোমবার', 'বিজ্ঞান', '৬ষ্ট', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 511, 2023, 'Ten', 'B', 'মঙ্গলবার', 'বিজ্ঞান', '৬ষ্ট', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 512, 2023, 'Ten', 'C', 'ররিবার', 'বিজ্ঞান', '৬ষ্ট', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 513, 2023, 'Ten', 'C', 'সোমবার', 'বিজ্ঞান', '৬ষ্ট', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 514, 2023, 'Eight', 'B', 'বুধবার', 'বিজ্ঞান', '৬ষ্ট', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 515, 2023, 'Eight', 'B', 'বৃহস্পতিবার', 'বিজ্ঞান', '৬ষ্ট', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 516, 2023, 'Eight', 'B', 'সোমবার', 'বিজ্ঞান', '৭ম', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 517, 2023, 'Eight', 'A', 'মঙ্গলবার', 'বিজ্ঞান', '৭ম', 'SHUVANGKAR ROY', '', '', '101406905', '1676650992270_shuvangkar-roy-sir-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 518, 2023, 'Seven', 'B', 'বুধবার', 'বাংলা ১ম', '১ম', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 519, 2023, 'Seven', 'B', 'বৃহস্পতিবার', 'বাংলা ১ম', '১ম', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 520, 2023, 'Nine', 'B', 'ররিবার', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '২য়', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 521, 2023, 'Nine', 'B', 'সোমবার', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '২য়', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 522, 2023, 'Nine', 'B', 'মঙ্গলবার', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '২য়', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 523, 2023, 'Seven', 'C', 'বুধবার', 'ডিজিটাল প্রযুক্তি', '৩য়', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 524, 2023, 'Seven', 'C', 'বৃহস্পতিবার', 'ডিজিটাল প্রযুক্তি', '৩য়', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 525, 2023, 'Eight', 'A', 'ররিবার', 'গার্হস্থ্য বিজ্ঞান', '৪র্থ', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 526, 2023, 'Eight', 'A', 'সোমবার', 'গার্হস্থ্য বিজ্ঞান', '৪র্থ', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 527, 2023, 'Eight', 'A', 'মঙ্গলবার', 'গার্হস্থ্য বিজ্ঞান', '৪র্থ', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 528, 2023, 'Nine', 'B', 'বুধবার', 'গার্হস্থ্য বিজ্ঞান', '৪র্থ', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 529, 2023, 'Nine', 'B', 'বৃহস্পতিবার', 'গার্হস্থ্য বিজ্ঞান', '৪র্থ', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 530, 2023, 'Nine', 'C', 'বুধবার', 'গার্হস্থ্য বিজ্ঞান', '৪র্থ', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 531, 2023, 'Nine', 'C', 'বৃহস্পতিবার', 'গার্হস্থ্য বিজ্ঞান', '৪র্থ', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 532, 2023, 'Seven', 'B', 'সোমবার', 'বাংলা ১ম', '৫ম', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 533, 2023, 'Six', 'C', 'মঙ্গলবার', 'ডিজিটাল প্রযুক্তি', '৫ম', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 534, 2023, 'Ten', 'A', 'বুধবার', 'বাংলা ১ম', '৫ম', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 535, 2023, 'Ten', 'A', 'বৃহস্পতিবার', 'বাংলা ১ম', '৫ম', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 536, 2023, 'Nine', 'B', 'ররিবার', 'গার্হস্থ্য বিজ্ঞান', '৬ষ্ট', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 537, 2023, 'Nine', 'C', 'ররিবার', 'গার্হস্থ্য বিজ্ঞান', '৬ষ্ট', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 538, 2023, 'Eight', 'B', 'মঙ্গলবার', 'আবৃত্তি', '৬ষ্ট', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 539, 2023, 'Eight', 'A', 'বৃহস্পতিবার', 'শারীরিক শিক্ষা ও স্বাস্থ্য', '৬ষ্ট', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 540, 2023, 'Ten', 'A', 'সোমবার', 'বাংলা ১ম', '৭ম', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 541, 2023, 'Ten', 'A', 'সোমবার', 'বাংলা ১ম', '৭ম', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 542, 2023, 'Ten', 'B', 'মঙ্গলবার', 'গার্হস্থ্য বিজ্ঞান', '৭ম', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 543, 2023, 'Ten', 'B', 'মঙ্গলবার', 'গার্হস্থ্য বিজ্ঞান', '৭ম', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 544, 2023, 'Ten', 'B', 'বুধবার', 'গার্হস্থ্য বিজ্ঞান', '৭ম', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 545, 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'গার্হস্থ্য বিজ্ঞান', '৭ম', 'MST. SHAMMI AKTAR', '', '', '101406837', '1676650881819_samima-madam-at.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 546, 2023, 'Nine', 'C', 'ররিবার', 'ইংরেজী ১ম', '২য়', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 547, 2023, 'Nine', 'C', 'সোমবার', 'ইংরেজী ১ম', '২য়', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 548, 2023, 'Nine', 'C', 'মঙ্গলবার', 'ইংরেজী ১ম', '২য়', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 549, 2023, 'Seven', 'C', 'বুধবার', 'ইংরেজী ২য়', '২য়', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 550, 2023, 'Seven', 'C', 'বৃহস্পতিবার', 'ইংরেজী ২য়', '২য়', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 551, 2023, 'Six', 'A', 'বুধবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৩য়', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 552, 2023, 'Six', 'A', 'বৃহস্পতিবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৩য়', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 553, 2023, 'Six', 'C', 'ররিবার', 'জীবন ও জীবিকা', '৪র্থ', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 554, 2023, 'Six', 'C', 'সোমবার', 'জীবন ও জীবিকা', '৪র্থ', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 555, 2023, 'Six', 'C', 'মঙ্গলবার', 'জীবন ও জীবিকা', '৪র্থ', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 556, 2023, 'Ten', 'B', 'মঙ্গলবার', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '৫ম', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 557, 2023, 'Ten', 'B', 'বুধবার', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '৫ম', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 558, 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '৫ম', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 559, 2023, 'Seven', 'A', 'ররিবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৬ষ্ট', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 560, 2023, 'Seven', 'A', 'সোমবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৬ষ্ট', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 561, 2023, 'Seven', 'A', 'মঙ্গলবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৬ষ্ট', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 562, 2023, 'Eight', 'A', 'বুধবার', 'আবৃত্তি', '৬ষ্ট', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 563, 2023, 'Six', 'A', 'ররিবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৭ম', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 564, 2023, 'Seven', 'C', 'সোমবার', 'ইংরেজী ২য়', '৭ম', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 565, 2023, 'Seven', 'C', 'মঙ্গলবার', 'ইংরেজী ২য়', '৭ম', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 566, 2023, 'Eight', 'C', 'বৃহস্পতিবার', 'আবৃত্তি', '৭ম', 'Anawaruzzam Jhantu', '', '', '000000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 567, 2023, 'Ten', 'B', 'বুধবার', 'বাংলা ১ম', '১ম', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 568, 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'বাংলা ১ম', '১ম', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 569, 2023, 'Eight', 'B', 'ররিবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '২য়', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 570, 2023, 'Eight', 'B', 'সোমবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '২য়', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 571, 2023, 'Eight', 'B', 'মঙ্গলবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '২য়', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 572, 2023, 'Eight', 'C', 'ররিবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৩য়', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 573, 2023, 'Eight', 'C', 'সোমবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৩য়', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 574, 2023, 'Eight', 'C', 'মঙ্গলবার', 'তথ্য ও যোগাযোগ প্রযুক্তি', '৩য়', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 575, 2023, 'Six', 'B', 'বুধবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৩য়', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 576, 2023, 'Six', 'B', 'বৃহস্পতিবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৩য়', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 577, 2023, 'Nine', 'B', 'ররিবার', 'ভূগোল ও পরিবেশ', '৪র্থ', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 578, 2023, 'Nine', 'B', 'সোমবার', 'ভূগোল ও পরিবেশ', '৪র্থ', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 579, 2023, 'Nine', 'B', 'মঙ্গলবার', 'ভূগোল ও পরিবেশ', '৪র্থ', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 580, 2023, 'Six', 'C', 'বুধবার', 'বাংলা ১ম', '৪র্থ', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 581, 2023, 'Six', 'C', 'বৃহস্পতিবার', 'বাংলা ১ম', '৪র্থ', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '১২ঃ৩৫ - ১ঃ২০'),
('localhost', 582, 2023, 'Six', 'B', 'ররিবার', 'ইতিহাস ও সামাজিক বিজ্ঞান', '৫ম', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 583, 2023, 'Seven', 'B', 'মঙ্গলবার', 'ডিজিটাল প্রযুক্তি', '৫ম', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 584, 2023, 'Seven', 'B', 'বুধবার', 'ডিজিটাল প্রযুক্তি', '৫ম', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 585, 2023, 'Seven', 'B', 'বৃহস্পতিবার', 'ডিজিটাল প্রযুক্তি', '৫ম', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 586, 2023, 'Nine', 'C', 'সোমবার', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '৬ষ্ট', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 587, 2023, 'Seven', 'C', 'ররিবার', 'শিল্প ও সংস্কৃতি', '৭ম', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 588, 2023, 'Seven', 'C', 'বৃহস্পতিবার', 'শিল্প ও সংস্কৃতি', '৭ম', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 589, 2023, 'Six', 'C', 'মঙ্গলবার', 'বাংলা ১ম', '৭ম', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 590, 2023, 'Eight', 'B', 'বুধবার', 'বাংলাদেশ ও বিশ্বপরিচয়', '৭ম', 'Sabuz Ghosh', '', '', '0000000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 591, 2023, 'Seven', 'B', 'ররিবার', 'ইসলাম ও নৈতিক শিক্ষা', '২য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 592, 2023, 'Seven', 'B', 'সোমবার', 'ইসলাম ও নৈতিক শিক্ষা', '২য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 593, 2023, 'Seven', 'B', 'মঙ্গলবার', 'ইসলাম ও নৈতিক শিক্ষা', '২য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 594, 2023, 'Seven', 'C', 'ররিবার', 'ইসলাম শিক্ষা', '২য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 595, 2023, 'Seven', 'C', 'সোমবার', 'ইসলাম শিক্ষা', '২য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 596, 2023, 'Seven', 'C', 'মঙ্গলবার', 'ইসলাম শিক্ষা', '২য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 597, 2023, 'Eight', 'B', 'বুধবার', 'ইসলাম ও নৈতিক শিক্ষা', '২য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 598, 2023, 'Eight', 'B', 'বৃহস্পতিবার', 'ইসলাম ও নৈতিক শিক্ষা', '২য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 599, 2023, 'Eight', 'C', 'বুধবার', 'ইসলাম ও নৈতিক শিক্ষা', '২য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 600, 2023, 'Eight', 'C', 'বৃহস্পতিবার', 'ইসলাম ও নৈতিক শিক্ষা', '২য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ০৫ - ১১ঃ৫০'),
('localhost', 601, 2023, 'Six', 'C', 'ররিবার', 'ইসলাম শিক্ষা', '৩য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 602, 2023, 'Six', 'C', 'সোমবার', 'ইসলাম শিক্ষা', '৩য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 603, 2023, 'Six', 'C', 'মঙ্গলবার', 'ইসলাম শিক্ষা', '৩য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 604, 2023, 'Ten', 'A', 'বুধবার', 'ইসলাম ও নৈতিক শিক্ষা', '৩য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 605, 2023, 'Ten', 'A', 'বৃহস্পতিবার', 'ইসলাম ও নৈতিক শিক্ষা', '৩য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 606, 2023, 'Ten', 'B', 'বুধবার', 'ইসলাম ও নৈতিক শিক্ষা', '৩য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 607, 2023, 'Ten', 'B', 'বৃহস্পতিবার', 'ইসলাম ও নৈতিক শিক্ষা', '৩য়', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '১১ঃ৫০ - ১২ঃ৩৫'),
('localhost', 608, 2023, 'Eight', 'A', 'ররিবার', 'ইসলাম ও নৈতিক শিক্ষা', '৫ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 609, 2023, 'Eight', 'A', 'সোমবার', 'ইসলাম ও নৈতিক শিক্ষা', '৫ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 610, 2023, 'Eight', 'A', 'মঙ্গলবার', 'ইসলাম ও নৈতিক শিক্ষা', '৫ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 611, 2023, 'Six', 'A', 'বুধবার', 'ইসলাম ও নৈতিক শিক্ষা', '৫ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 612, 2023, 'Six', 'A', 'বৃহস্পতিবার', 'ইসলাম ও নৈতিক শিক্ষা', '৫ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '২ঃ০০ - ২ঃ৪০'),
('localhost', 613, 2023, 'Six', 'B', 'ররিবার', 'ইসলাম শিক্ষা', '৬ষ্ট', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 614, 2023, 'Six', 'B', 'সোমবার', 'ইসলাম শিক্ষা', '৬ষ্ট', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 615, 2023, 'Six', 'B', 'মঙ্গলবার', 'ইসলাম শিক্ষা', '৬ষ্ট', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 616, 2023, 'Seven', 'A', 'বুধবার', 'ইসলাম শিক্ষা', '৬ষ্ট', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 617, 2023, 'Seven', 'A', 'বৃহস্পতিবার', 'ইসলাম শিক্ষা', '৬ষ্ট', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '২ঃ৪০ - ৩ঃ২০'),
('localhost', 618, 2023, 'Six', 'A', 'সোমবার', 'ইসলাম শিক্ষা', '৭ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 619, 2023, 'Nine', 'A', 'মঙ্গলবার', 'ইসলাম ও নৈতিক শিক্ষা', '৭ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 620, 2023, 'Nine', 'A', 'বুধবার', 'ইসলাম ও নৈতিক শিক্ষা', '৭ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 621, 2023, 'Nine', 'A', 'বৃহস্পতিবার', 'ইসলাম ও নৈতিক শিক্ষা', '৭ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 622, 2023, 'Nine', 'B', 'মঙ্গলবার', 'ইসলাম ও নৈতিক শিক্ষা', '৭ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 623, 2023, 'Nine', 'B', 'বুধবার', 'ইসলাম ও নৈতিক শিক্ষা', '৭ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 624, 2023, 'Nine', 'B', 'বৃহস্পতিবার', 'ইসলাম ও নৈতিক শিক্ষা', '৭ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 625, 2023, 'Nine', 'C', 'মঙ্গলবার', 'ইসলাম ও নৈতিক শিক্ষা', '৭ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 626, 2023, 'Nine', 'C', 'বুধবার', 'ইসলাম ও নৈতিক শিক্ষা', '৭ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 627, 2023, 'Nine', 'C', 'বৃহস্পতিবার', 'ইসলাম ও নৈতিক শিক্ষা', '৭ম', 'Ali Ahmmad', '', '', '0000000', 'male_avatar.png', '৩ঃ২০ - ৪ঃ১০'),
('localhost', 628, 2023, 'Ten', 'C', 'ররিবার', 'সামাঃ বিজ্ঞান', '১ম', 'SOUMITRA SAHA', '', '', '100555345', '1676563832731_soumitra-saha-sir.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 629, 2023, 'Six', 'undefined', 'ররিবার', 'ইসলাম-শিক্ষা', '১ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫'),
('localhost', 630, 2023, 'Ten', 'undefined', 'ররিবার', 'সামাঃ বিজ্ঞান', '১ম', 'S. M. YOUNUS ALI', '', '', '100336016', '1676650131333_younus-sir-at.png', '১০ঃ১৫ - ১১ঃ০৫');

-- --------------------------------------------------------

--
-- Table structure for table `school_settings`
--

CREATE TABLE `school_settings` (
  `domain` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
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
  `facebook_link` varchar(100) NOT NULL DEFAULT 'N/A',
  `password` varchar(100) NOT NULL DEFAULT 'password',
  `quote` varchar(500) NOT NULL DEFAULT 'N/A',
  `at_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`domain`, `ID`, `student_uuid`, `session`, `class`, `section`, `name`, `student_id`, `roll`, `reg`, `birth_date`, `gender`, `blood_group`, `email`, `phone`, `telephone`, `father_name`, `mother_name`, `address`, `religion`, `admission_date`, `hobbies`, `avatar`, `facebook_link`, `password`, `quote`, `at_date`) VALUES
('localhost', 17, '1697179959179', 2023, 'Six', 'A', 'Rimu Roy', 456094, 110, 'XXXXXXXXXX', '2010-06-02', 'Male', 'undefined', '456094@abc.com', '', '01723885040', 'Shanjay Roy', 'Kakoli Roy', 'baguan,boalmari,faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '7c78c386626384984008baddbb73dd7e', 'N/A', '2023-02-25 09:27:00'),
('localhost', 18, '1697013109623', 2023, 'Six', 'A', 'Eti Aktar', 259083, 87, 'XXXXXXXXXX', '2011-02-10', 'Female', 'undefined', '259083@abc.com', '', '01789553635', 'shadat hosen molla', 'farida parvin', 'baguan,boalmari,faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '999d195f1d13a325aa09b520760bd631', 'N/A', '2023-02-25 09:32:03'),
('localhost', 19, '1697367629229', 2023, 'Six', 'A', 'Jamila Nowshin', 158039, 147, 'XXXXXXXXXX', '2012-12-22', 'Female', 'undefined', '158039@abc.com', '', '01742759063', 'Md Najrul islam', 'Roksana Khanom', 'baguan,boalmari,faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '8f113007d5bba20b77353d8f52e7f4de', 'N/A', '2023-02-25 09:42:32'),
('localhost', 20, '1697019889231', 2023, 'Six', 'A', 'Mehzabin Alom', 794939, 148, 'XXXXXXXXXX', '2011-12-23', 'Female', 'undefined', '794939@abc.com', '', '01912028019', 'Mohammad Mahbubul Alom', 'Fahmida', 'chotul,boalmari,faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '11243117af828988b98b97ab08406957', 'N/A', '2023-02-25 09:52:17'),
('localhost', 22, '1697706603647', 2023, 'Six', 'A', 'Mst Farjana', 542988, 135, 'XXXXXXXXXX', '2012-03-25', 'Female', 'undefined', '542988@abc.com', '', '01962362069', 'MD Al Imran', 'Mst Forjora Aktar', 'chapoldanga,boalmari,faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '574ac0e0a3cb627acab753a91b03c665', 'N/A', '2023-02-25 09:59:48'),
('localhost', 28, '1697010423543', 2023, 'Six', 'A', 'Fatema Aktar', 450957, 107, 'XXXXXXXXXX', '2012-10-02', 'Female', 'undefined', '450957@abc.com', '', '01798473272', 'MD Ikbal Biswas', 'Soniya Parvin', 'Pashcimkamargram.boalmari,faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '3ea5d9767c7b6a88173921ca26289fea', 'N/A', '2023-02-25 11:24:27'),
('localhost', 29, '1697795827814', 2023, 'Six', 'A', 'Khadija Tul Kubra', 123400, 83, 'XXXXXXXXXX', '2013-11-09', 'Female', 'undefined', '123400@abc.com', '', '01731496178', 'MD Azizur Rahman', 'Mst Rubia Parvin', 'Gunbaha,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '71a7afcc1b55044bcec3956da2ee33f2', 'N/A', '2023-02-25 11:30:52'),
('localhost', 30, '1697590945897', 2023, 'Six', 'A', 'Shraddha Rani Shaha ', 747945, 70, 'XXXXXXXXXX', '2012-10-30', 'Female', 'undefined', '747945@abc.com', '', '01722431025', 'Jayanto Shaha', 'Laboni Rani Shaha', 'Nakol,Shripur,Magura', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '95fd06fdcb41b62015191f1c6fcbfa2d', 'N/A', '2023-02-25 11:35:22'),
('localhost', 31, '1697635827963', 2023, 'Six', 'A', 'Mohsina Rahman Maliha', 712997, 60, 'XXXXXXXXXX', '2011-09-30', 'Female', 'undefined', '712997@abc.com', '', '01707906766', 'Moklukur Rahman', 'Luna Aktar', 'Rajapur,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '1d922c7481716d0cdec8783084dce9e5', 'N/A', '2023-02-25 11:39:26'),
('localhost', 32, '1697097802141', 2023, 'Six', 'A', 'Aparna Shaha', 575023, 46, 'XXXXXXXXXX', '2012-11-23', 'Female', 'undefined', '575023@abc.com', '', '01756342400', 'Ratan Kumar Shaha', 'Kamini Rani Shaha', 'Oi,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '2606d926caceb2ee03a361bc1ed4d991', 'N/A', '2023-02-25 11:45:02'),
('localhost', 33, '1697467195977', 2023, 'Six', 'A', 'Mst Sumaiya Parvin', 282724, 57, 'XXXXXXXXXX', '2011-04-02', 'Female', 'undefined', '282724@abc.com', '', '01932407850', 'MD Pinno Munsi', 'Josna Begum', 'Gurdiya,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'cf7ca9f41650ebd3fe5ad61c65df8232', 'N/A', '2023-02-25 12:47:42'),
('localhost', 35, '1697633909537', 2023, 'Six', 'A', 'Sadiya', 490449, 31, 'XXXXXXXXXX', '2011-11-02', 'Female', 'undefined', '490449@abc.com', '', '01322163128', 'MD Sajjad Sheikh', 'Tahmina Begum', 'Kamargram,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '81b252ed0c7dae47e8cf93a4b0c248d5', 'N/A', '2023-02-25 12:56:48'),
('localhost', 36, '1697031082610', 2023, 'Six', 'A', 'Maria Ferdous Munni', 662406, 42, 'XXXXXXXXXX', '2012-08-17', 'Female', 'undefined', '662406@abc.com', '', '01718304192', 'MD Khairul Alom Raju', 'Mousumi Aktar', 'Kamargram,Alfaganga,Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '64f105f2fa464f3a4acde71b85fa06fe', 'N/A', '2023-02-25 13:03:38'),
('localhost', 37, '1697469171669', 2023, 'Six', 'A', 'Meghla Biswas Kotha', 509066, 23, 'XXXXXXXXXX', '2011-11-19', 'Female', 'undefined', '509066@abc.com', '', '01747413204', 'Satya Ranjan Biswas', 'Dipti Biswas', 'Boalmari,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'a82e9dafbedfa89a37fcda2d9dc59fc7', 'N/A', '2023-02-25 13:09:30'),
('localhost', 39, '1697630328014', 2023, 'Six', 'A', 'Mst Meghla Aktar', 259241, 76, 'XXXXXXXXXX', '2011-01-05', 'Female', 'undefined', '259241@abc.com', '', '01910165402', 'MD Ikbal Mia', 'Mst Nupur', 'Felannagor,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '739525ed70bdccf0ec89d61593ba59bf', 'N/A', '2023-02-25 13:14:22'),
('localhost', 40, '1697581222307', 2023, 'Six', 'A', 'Moriyam Islam Kaifa', 573409, 101, 'XXXXXXXXXX', '2012-05-19', 'Female', 'undefined', '573409@abc.com', '', '01783818297', 'MD Juyel Sardar', 'Mst Aysha Begum', 'Felannagor,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '4f6455f4992e2fb4cf85030cf038921a', 'N/A', '2023-02-25 13:18:00'),
('localhost', 41, '1697083079061', 2023, 'Six', 'A', 'Hridita Rahman Sawdah', 679041, 128, 'XXXXXXXXXX', '2011-11-25', 'Female', 'undefined', '679041@abc.com', '', '01718060408', 'MD Sadin Ur Rahman', 'Rojina Parvin', 'Kamargram,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '37a91aa7614ef2364819db745f651578', 'N/A', '2023-02-25 13:27:59'),
('localhost', 42, '1697397194124', 2023, 'Six', 'A', 'Ankita Poddar Anu', 65350, 132, 'XXXXXXXXXX', '2012-09-16', 'Female', 'undefined', '65350@abc.com', '', '01715856764', 'Ashok Kumar Poddar', 'Madhuri Ghosh', 'Amgram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '9ea54990d0c8a08cd18f77dceb43b570', 'N/A', '2023-02-25 16:09:02'),
('localhost', 43, '1697636293820', 2023, 'Six', 'A', 'Fatema Aktar Barsha', 141808, 126, 'XXXXXXXXXX', '2012-01-01', 'Female', 'undefined', '141808@abc.com', '', '01728414143', 'Md Bashar Sheikh', 'Mst Nargis Begum', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'd20b1d89715a5a702a31ca063935bbd9', 'N/A', '2023-02-25 16:15:42'),
('localhost', 44, '1696963529293', 2023, 'Six', 'A', 'Jobayda', 681987, 91, 'XXXXXXXXXX', '2012-01-01', 'Female', 'undefined', '681987@abc.com', '', '01967741301', 'Md Jahidul Islam', 'Anguyara Begum', 'Shelahat, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '5258174365d6c22eb700f3c19d653a61', 'N/A', '2023-02-25 16:20:49'),
('localhost', 45, '1697599872735', 2023, 'Six', 'A', 'Fatema Khanom', 331922, 146, 'XXXXXXXXXX', '2011-01-12', 'Female', 'undefined', '331922@abc.com', '', '01771606526', 'MD Baban Sheikh', 'Lavli Begum', 'Isakhali, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '30209dbc8e1b6854f7a635b571e35c7a', 'N/A', '2023-02-25 16:28:44'),
('localhost', 46, '1697479356436', 2023, 'Six', 'A', 'Raisa Islam', 256417, 94, 'XXXXXXXXXX', '2012-01-03', 'Female', 'undefined', '256417@abc.com', '', '01770415714', 'MD Billal Hosen', 'Lima Sultana', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '8cc99d6b986f8570a01c980378f5eb20', 'N/A', '2023-02-25 16:39:28'),
('localhost', 47, '1697624451688', 2023, 'Six', 'A', 'Sadia Afrin Chaiti', 820172, 50, 'XXXXXXXXXX', '2011-12-01', 'Female', 'undefined', '820172@abc.com', '', '01731302151', 'MD Murujjaman Monir', 'Lima Khanom', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '1afcd3b009cb5f42d2a88c763ef9737f', 'N/A', '2023-02-25 16:42:57'),
('localhost', 50, '1697165182025', 2023, 'Six', 'A', 'Maisha Aktar Tisha', 632091, 150, 'XXXXXXXXXX', '2012-08-01', 'Female', 'undefined', '632091@abc.com', '', '01745438874', 'MD Mizanur Rahman Antor', 'Nirala', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '370755393fb4b694928fb606f1b13603', 'N/A', '2023-02-25 16:46:03'),
('localhost', 51, '1697814242235', 2023, 'Six', 'A', 'Mst Yasmin Khanom', 273959, 149, 'XXXXXXXXXX', '2011-11-20', 'Female', 'undefined', '273959@abc.com', '', '01988692788', 'MD Ezazul Sheikh', 'Mst Lili Begum', 'Chalinagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '2aa7e2e2e6454d35c5aa5247378ed4cf', 'N/A', '2023-02-25 16:50:30'),
('localhost', 53, '1697450524095', 2023, 'Six', 'A', 'Fahmida Tasmin', 32908, 59, 'XXXXXXXXXX', '2012-10-21', 'Female', 'undefined', '32908@abc.com', '', '01830980880', 'MD Imdadul Haque', 'Mst Fatematur Jahura', 'Chalinagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '35c9702a883bb17f010bb171706a6be0', 'N/A', '2023-02-25 17:19:34'),
('localhost', 54, '1697268097067', 2023, 'Six', 'A', 'Lamia Islam', 364647, 122, 'XXXXXXXXXX', '2010-10-10', 'Female', 'undefined', '364647@abc.com', '', '01715799804', 'MD abdullah', 'Jobayda Aktar Munni', 'Soyedpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '6f077597607db4e38e2cdff3a59f9598', 'N/A', '2023-02-25 17:23:02'),
('localhost', 55, '1697767771482', 2023, 'Six', 'A', 'Bindia Khanom', 791414, 125, 'XXXXXXXXXX', '2012-03-18', 'Female', 'undefined', '791414@abc.com', '', '01613884361', 'MD Bablu Mia', 'Mst Happy Khatun', 'Pashchimkamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'c1fee3f9032d3ce00f11d3f378050718', 'N/A', '2023-02-25 17:32:47'),
('localhost', 56, '1697066202628', 2023, 'Six', 'A', 'Jiniya Pori', 318554, 19, 'XXXXXXXXXX', '2012-01-01', 'Female', 'undefined', '318554@abc.com', '', '01915785810', 'MD Kamruzzaman', 'Fahmida Aktar Urmi', 'Kaliyand, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '2a6a01ef27ad9194b6b456335616848f', 'N/A', '2023-02-25 17:36:30'),
('localhost', 57, '1697569136978', 2023, 'Six', 'A', 'Minha Rojoni', 539986, 73, 'XXXXXXXXXX', '2012-12-02', 'Female', 'undefined', '539986@abc.com', '', '01733639009', 'AB Rajjak Molla', 'Mst Rijiya Begum', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '02d280e9e54f076738799337f4492f93', 'N/A', '2023-02-25 17:40:31'),
('localhost', 58, '1697548960732', 2023, 'Six', 'A', 'Arpita Shil', 345775, 108, 'XXXXXXXXXX', '2012-12-21', 'Female', 'undefined', '345775@abc.com', '', '01879187331', 'Arup Kumar Shil', 'Amita Rani Shil', 'Oi, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '4bbb993b9d88889c6da6e8c56aebfa99', 'N/A', '2023-02-25 17:42:53'),
('localhost', 59, '1697131657820', 2023, 'Six', 'A', 'Amrita Saha', 344506, 158, 'XXXXXXXXXX', '2013-05-03', 'Female', 'undefined', '344506@abc.com', '', '00000000000', 'Asim Saha', 'Suma Rani Saha', 'Oi, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'b5872c3c6f91c42d3e27427aa1d72ced', 'N/A', '2023-02-25 18:10:15'),
('localhost', 60, '1697405744814', 2023, 'Six', 'A', 'Fatema Khan', 145764, 30, 'XXXXXXXXXX', '2012-01-14', 'Female', 'undefined', '145764@abc.com', '', '01728370040', 'MD Mosarof Hosain', 'Priyanka', 'Amgram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '3f37e2919c981b2d318df8e888b6ccef', 'N/A', '2023-02-25 18:14:45'),
('localhost', 61, '1697057366584', 2023, 'Six', 'A', 'Surthiya', 893407, 156, 'XXXXXXXXXX', '2012-01-08', 'Female', 'undefined', '893407@abc.com', '', '01742797895', 'Saheb Molla', 'Rimi Begum', 'Satair, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '9d2b28d7441c1efa0cf2b91244478a83', 'N/A', '2023-02-25 18:17:40'),
('localhost', 62, '1697785942935', 2023, 'Six', 'A', 'Tasfia Haque Torsa', 181569, 29, 'XXXXXXXXXX', '2013-01-18', 'Male', 'undefined', '181569@abc.com', '', '01721312026', 'MD Tanmoy Haque Tonu', 'Najma Khanom', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'ef684d60329ee787626d100458691794', 'N/A', '2023-02-25 18:24:01'),
('localhost', 63, '1697213677472', 2023, 'Six', 'A', 'Soyeda Abida', 501690, 155, 'XXXXXXXXXX', '2013-09-09', 'Male', 'undefined', '501690@abc.com', '', '01712310959', 'Soyed Arif', 'Soyeda Laki', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'fee34f8b9317b3e04b2ad1abb79b474e', 'N/A', '2023-02-25 18:26:57'),
('localhost', 64, '1697495560636', 2023, 'Six', 'A', 'Mst Tania Islam Nadi', 577432, 154, 'XXXXXXXXXX', '2010-12-25', 'Female', 'undefined', '577432@abc.com', '', '01765191033', 'MD Abul Bashar ', 'Rojina', 'Bandugram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'bc8ef42e38c89d4353fcfea5ba8b2acd', 'N/A', '2023-02-25 18:30:48'),
('localhost', 65, '1697198744848', 2023, 'Six', 'A', 'Mst Tanjira Khatun', 763986, 127, 'XXXXXXXXXX', '2011-08-29', 'Female', 'undefined', '763986@abc.com', '', '01765706233', 'MD Seken Sheikh', 'Mst Jahanara Begum', 'Dokkhinkamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'b3c56af4ff39d3ff24c4a262b7ef9db0', 'N/A', '2023-02-25 18:33:07'),
('localhost', 66, '1696975564058', 2023, 'Six', 'A', 'Mst Faria', 546875, 153, 'XXXXXXXXXX', '2011-03-10', 'Female', 'undefined', '546875@abc.com', '', '01920102650', 'MD Farid Biswas', 'Mst Mafruja Begum', 'Amritanagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'c817610335f0e922f210cce98a86ec8c', 'N/A', '2023-02-25 18:36:05'),
('localhost', 67, '1697665283237', 2023, 'Six', 'A', 'Mst Hasi Khanom', 196120, 152, 'XXXXXXXXXX', '2012-11-15', 'Female', 'undefined', '196120@abc.com', '', '01914761506', 'MD Shahidul Islam', 'Mst Jui Begum', 'Uttarshibpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '3f5491b32e700f50b8f3f4c3f7b929f1', 'N/A', '2023-02-25 18:38:15'),
('localhost', 68, '1696996868512', 2023, 'Six', 'A', 'Sukorna Sarkar', 71396, 145, 'XXXXXXXXXX', '2011-02-08', 'Female', 'undefined', '71396@abc.com', '', '01845567967', 'Sujoy Sarkar', 'Shipra Sarkar', 'Pashchimkamargram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '3c580cc3d8941f207184721b5aad8043', 'N/A', '2023-02-26 03:10:33'),
('localhost', 69, '1697377468819', 2023, 'Six', 'A', 'Tutul Biswas', 897508, 54, 'XXXXXXXXXX', '2011-12-15', 'Female', 'undefined', '897508@abc.com', '', '01727941780', 'Debashis Biswas', 'Kakoli Pul', 'Kamargram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '3000cb679705f56d973956c11dfb44ce', 'N/A', '2023-02-26 03:22:41'),
('localhost', 70, '1697702580435', 2023, 'Six', 'A', 'Hujaifa', 629581, 138, 'XXXXXXXXXX', '2012-02-23', 'Female', 'undefined', '629581@abc.com', '', '01731358267', 'Mohammad Ziaur Rahman', 'Mst Hasna Hena', 'DakkhinKamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '2a729f29a021ff0e2e70441757b0ca97', 'N/A', '2023-02-26 03:26:07'),
('localhost', 71, '1696987883422', 2023, 'Six', 'A', 'Mst Jamila', 53519, 151, 'XXXXXXXXXX', '2011-11-29', 'Female', 'undefined', '53519@abc.com', '', '01762362032', 'MD Alimuzzaman', 'Fatema Begum', 'Oi, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '679a1e3fca3d4bd13e24f18001b083be', 'N/A', '2023-02-26 03:28:37'),
('localhost', 72, '1697316353396', 2023, 'Six', 'A', 'Jannati', 530174, 18, 'XXXXXXXXXX', '2012-07-30', 'Female', 'undefined', '530174@abc.com', '', '01403978863', 'MD Shofikul  Islam', 'Amena', 'Uttarshibpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'c64fa872a37cd3276cbd6217c7760889', 'N/A', '2023-02-26 03:31:30'),
('localhost', 73, '1697592485969', 2023, 'Six', 'A', 'Fabiha An Faruki', 863826, 80, 'XXXXXXXXXX', '2012-01-01', 'Female', 'undefined', '863826@abc.com', '', '0000000000', 'MD Faruk Sheikh', 'Mst Fatema Yasmin', 'Oi, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'b93aa19652c6c241d6386b00569e20e1', 'N/A', '2023-02-26 03:34:17'),
('localhost', 74, '1697520433322', 2023, 'Six', 'A', 'Jannatul Anha', 871832, 129, 'XXXXXXXXXX', '2012-02-05', 'Female', 'undefined', '871832@abc.com', '', '01710503105', 'Molla MD Kamrul Islamot', 'Shamima', 'Arpara, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '0c3fe88ce8592b7e1f741baa33de868f', 'N/A', '2023-02-26 03:37:01'),
('localhost', 75, '1697056672684', 2023, 'Six', 'A', 'Sintia Aktar Simi', 607614, 109, 'XXXXXXXXXX', '2012-12-21', 'Female', 'undefined', '607614@abc.com', '', '01797142145', 'MD Shajal Molla', 'Sabina Khanom', 'Chapoldanga, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '22230f05d2b503b0ca78f62c7245d373', 'N/A', '2023-02-26 03:50:46'),
('localhost', 76, '1697533944855', 2023, 'Six', 'A', 'Mst Mimi Aktar', 865781, 99, 'XXXXXXXXXX', '2012-03-07', 'Female', 'undefined', '865781@abc.com', '', '01939442372', 'Mojibor Sheikh', 'Chaina Begum', 'Oi, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '474dd178d099d872464640c8730d0ad0', 'N/A', '2023-02-26 03:53:09'),
('localhost', 77, '1697024657798', 2023, 'Six', 'A', 'Jannati Khanom', 779396, 10, 'XXXXXXXXXX', '2011-01-15', 'Female', 'undefined', '779396@abc.com', '', '01739226057', 'MD Gaffar Molla', 'Mst Shampa Begum', 'Chukinagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '3cc2dfa5b1da8f856b0a26b92d5abb89', 'N/A', '2023-02-26 03:55:33'),
('localhost', 78, '1697805587413', 2023, 'Six', 'A', 'Fatima choya', 803058, 6, 'XXXXXXXXXX', '2011-01-11', 'Female', 'undefined', '803058@abc.com', '', '01720273741', 'MD Kamrul Islam', 'Muslima Yasmin', 'Oi, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '2f8ce366c3617df6b6cadfe2017a41fb', 'N/A', '2023-02-26 04:01:27'),
('localhost', 79, '1697457199813', 2023, 'Six', 'A', 'Asfia Islam', 232547, 62, 'XXXXXXXXXX', '2013-03-29', 'Female', 'undefined', '232547@abc.com', '', '01712296729', 'Aminul Islam', 'Mst Sharmin Jahan', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'e96ab0d00f10c9c5b650950c25c034d8', 'N/A', '2023-02-26 04:06:08'),
('localhost', 80, '1697408838556', 2023, 'Six', 'A', 'Mahiya Jahan Tonni', 362553, 55, 'XXXXXXXXXX', '2011-07-24', 'Female', 'undefined', '362553@abc.com', '', '01925975277', 'MD Cunnu Mia ', 'Mst Hosneyara Begum', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '217980485a47ca2440157bf491a2c555', 'N/A', '2023-02-26 04:21:58'),
('localhost', 81, '1697418201259', 2023, 'Six', 'A', 'Nusrat Jahan Nowrin ', 103345, 15, 'XXXXXXXXXX', '2012-01-01', 'Female', 'undefined', '103345@abc.com', '', '01755083195', 'MD MOnirul Sheikh', 'Ruma Begum', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '677d5c724d411921cc3968e72528d2a6', 'N/A', '2023-02-26 04:25:30'),
('localhost', 82, '1697811092668', 2023, 'Six', 'A', 'Tasminara Khanom', 380975, 142, 'XXXXXXXXXX', '2012-04-22', 'Female', 'undefined', '380975@abc.com', '', '01711105633', 'MD Riaj Khan', 'Mst Mukta Parvin', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'a321c75db22a2543eafa99787ef85856', 'N/A', '2023-02-26 04:28:09'),
('localhost', 83, '1697578453503', 2023, 'Six', 'A', 'Asha Moni', 297542, 134, 'XXXXXXXXXX', '2012-04-26', 'Female', 'undefined', '297542@abc.com', '', '01718659923', 'MD Aminur Kha ', 'Mst Sabina Begum', 'chandanireninagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'add308f38820d8a6d38a270ca3b9b9bd', 'N/A', '2023-02-26 04:32:23'),
('localhost', 84, '1697772059202', 2023, 'Six', 'A', 'Oishorjo Sharkar', 12687, 13, 'XXXXXXXXXX', '2012-07-27', 'Female', 'undefined', '12687@abc.com', '', '01724385533', 'Bisnu pado Sharkar', 'Shubarna Sharkar', 'Kamargram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '5848d6604235a00cf8fb64f6eb3b387b', 'N/A', '2023-02-26 09:24:20'),
('localhost', 85, '1697723881455', 2023, 'Six', 'A', 'Sima Ghosh', 280227, 27, 'XXXXXXXXXX', '2012-12-10', 'Female', 'undefined', '280227@abc.com', '', '01780924355', 'Narayan chandra Ghosh', 'Eti Rani Pul', 'Amgram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '70d73cd890b11bc0cb9d21fc18193066', 'N/A', '2023-02-26 09:26:48'),
('localhost', 86, '1697342636852', 2023, 'Six', 'A', 'Mariyam Islam Keya', 736629, 123, 'XXXXXXXXXX', '2011-08-19', 'Female', 'undefined', '736629@abc.com', '', '01920444750', 'MD Alomgir Hosen', 'Sumaiya Begum', 'Oi, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '79dfa336e6b683e332f92559c4eab141', 'N/A', '2023-02-26 09:29:54'),
('localhost', 87, '1697248280140', 2023, 'Six', 'A', 'Sabina Yasmin', 403437, 64, 'XXXXXXXXXX', '2011-12-31', 'Female', 'undefined', '403437@abc.com', '', '01307056124', 'MD Aminur Kazi', 'Alpona', 'Oi, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '7b4b225b7982d366f9b344a5d13616bd', 'N/A', '2023-02-26 09:32:32'),
('localhost', 88, '1697378201130', 2023, 'Six', 'A', 'Antika Bosak', 181450, 45, 'XXXXXXXXXX', '2012-01-01', 'Female', 'undefined', '181450@abc.com', '', '01715495530', 'Prabir Kumar Bosak', 'Gita Bosak', 'Boalmari, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'da1f8941a1e6b811f77179e1cf10aba9', 'N/A', '2023-02-26 09:35:17'),
('localhost', 89, '1697598562434', 2023, 'Six', 'A', 'Jenima Haque', 487086, 48, 'XXXXXXXXXX', '2012-03-11', 'Female', 'undefined', '487086@abc.com', '', '01721603240', 'Mohammad Jahidul Haque', 'Mitanur', 'Boalmari, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '249f648c489ae7a1bde7acb13404d4ce', 'N/A', '2023-02-26 09:38:07'),
('localhost', 90, '1697844239331', 2023, 'Six', 'A', 'Mehjabin Khan', 456397, 130, 'XXXXXXXXXX', '2012-04-11', 'Female', 'undefined', '456397@abc.com', '', '01778154251', 'MD Momin Khan', 'Syeda Sahina Tithi', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '0357931a5d53c8173a0b7bbd5cebc419', 'N/A', '2023-02-26 09:43:49'),
('localhost', 91, '1697107477308', 2023, 'Six', 'A', 'Tasnim Binte Tanvir', 190151, 38, 'XXXXXXXXXX', '2012-01-01', 'Female', 'undefined', '190151@abc.com', '', '10710410151', 'MD Tanvir Hosen', 'MSt Jannatul Ferdous', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '7357eb155c06ce24e71fcb30824abde2', 'N/A', '2023-02-26 09:48:34'),
('localhost', 92, '1697187660276', 2023, 'Six', 'A', 'Tabassum Islam', 623693, 41, 'XXXXXXXXXX', '2013-02-09', 'Female', 'undefined', '623693@abc.com', '', '01718729562', 'MD Tarikul Islam', 'Rokeya Khanom', 'Boalmari, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'd3487e8b612766d98480edd0c6515f66', 'N/A', '2023-02-26 09:51:44'),
('localhost', 93, '1697371146352', 2023, 'Six', 'A', 'Annwesha Saha', 138357, 84, 'XXXXXXXXXX', '2012-01-15', 'Female', 'undefined', '138357@abc.com', '', '01946826686', 'Anupam Saha', 'Lakshmi Rani  Saha', 'Amgram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '346587ef2cfecaf9027bcf28fa8376a6', 'N/A', '2023-02-26 09:59:45'),
('localhost', 94, '1697265878160', 2023, 'Six', 'A', 'Samapti Biswas', 813382, 8, 'XXXXXXXXXX', '2011-03-18', 'Female', 'undefined', '813382@abc.com', '', '01950523052', 'Subol Biswas', 'Dipti Biswas', 'Bahirbag, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'bc7c05aa6cba7952267a7d4d60560e6f', 'N/A', '2023-02-26 10:02:20'),
('localhost', 95, '1697291767363', 2023, 'Six', 'A', 'Bonna', 466291, 68, 'XXXXXXXXXX', '2012-01-01', 'Female', 'undefined', '466291@abc.com', '', '01930606331', 'MD Nannu Sheikh', 'Mst Nilufa Begum', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '96a6cee5b8bd6c82da57780a9ad212df', 'N/A', '2023-02-26 10:05:03'),
('localhost', 96, '1697066844057', 2023, 'Six', 'A', 'Abeda Sultana', 551880, 25, 'XXXXXXXXXX', '2012-09-08', 'Female', 'undefined', '551880@abc.com', '', '01861039826', 'MD Anowar Hosen', 'Mst Rahima Aktar', 'Adharkotha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '1fe6307ac819124c99a826e3f80bc030', 'N/A', '2023-02-26 10:07:15'),
('localhost', 97, '1696960117046', 2023, 'Six', 'A', 'Mst Israt Jahan Mahima', 74139, 61, 'XXXXXXXXXX', '2010-09-15', 'Female', 'undefined', '74139@abc.com', '', '01728022264', 'Ms Mahmudul Hasan', 'Taslima', 'Kushdanga, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '16a88032ff6b3b2debb03f78c2e7d2e6', 'N/A', '2023-02-26 10:09:22'),
('localhost', 98, '1697608204763', 2023, 'Six', 'A', 'Arnisa Rahman Jim', 734052, 44, 'XXXXXXXXXX', '2013-08-09', 'Female', 'undefined', '734052@abc.com', '', '01753636543', 'MD Anisur Rahman Mintu', 'Shakila', 'Sotashi, BOalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'c234f476f802d716c58de40ce72aaacb', 'N/A', '2023-02-26 13:16:53'),
('localhost', 99, '1697665677512', 2023, 'Six', 'A', 'Sumoti Adhikari', 617448, 102, 'XXXXXXXXXX', '2012-08-04', 'Female', 'undefined', '617448@abc.com', '', '01759804742', 'Alok Kumar Adhikari', 'Manjila Rani Adhiakri', 'Amgram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '7820c4bbbc47ac67815ec83476eeb663', 'N/A', '2023-02-26 13:23:45'),
('localhost', 100, '1697847759820', 2023, 'Six', 'A', 'Mst  Arifa Aktar', 196370, 113, 'XXXXXXXXXX', '2011-01-19', 'Female', 'undefined', '196370@abc.com', '', '01972809268', 'MD Kamal Hosen', 'Hawa Begum', 'Horihornagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '88a15998a6d7909c0e1df9023f1ea725', 'N/A', '2023-02-26 13:25:52'),
('localhost', 101, '1697529717423', 2023, 'Six', 'A', 'Mariyam', 617271, 144, 'XXXXXXXXXX', '2011-10-22', 'Female', 'undefined', '617271@abc.com', '', '01744228960', 'MD Imrul Hosain', 'Ambiya Parvin', 'Raipur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '7caf5adcf42d2cadca92addc0d704289', 'N/A', '2023-02-26 17:05:52'),
('localhost', 102, '1697123650703', 2023, 'Six', 'A', 'Afsana Mahiya', 476403, 21, 'XXXXXXXXXX', '2010-03-24', 'Female', 'undefined', '476403@abc.com', '', '01930152417', 'Tuku Mollik', 'Selina Begum', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'f4330a90c301185f3ee1cedc28f0ce5f', 'N/A', '2023-02-26 17:24:44'),
('localhost', 103, '1697099193069', 2023, 'Six', 'A', 'Sadia Aktar', 24208, 137, 'XXXXXXXXXX', '2011-03-24', 'Female', 'undefined', '24208@abc.com', '', '01959970490', 'Ashrafuzzaman Biswas', 'Fahima Khatun', 'Kamarhati, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '05370a38dd2697d3aa86be05486e357f', 'N/A', '2023-02-26 17:27:50'),
('localhost', 104, '1697491814048', 2023, 'Six', 'A', 'Joyi Pathok', 55571, 28, 'XXXXXXXXXX', '2012-11-27', 'Female', 'undefined', '55571@abc.com', '', '01729843222', 'Jotimmoy Pathok', 'Lipika Rani Mukharji', 'Boalmari, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'e2dfd2448bf816898247472dba4e638c', 'N/A', '2023-02-26 17:49:31'),
('localhost', 105, '1697212472866', 2023, 'Six', 'A', 'Mst Rojoni Jahan Diba', 348704, 143, 'XXXXXXXXXX', '2011-07-11', 'Female', 'undefined', '348704@abc.com', '', '01957118283', 'MD Khalidul Islam', 'Najmin Aktar', 'Oi, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '67dac7dbe14b611fc90fcb9db422cd3b', 'N/A', '2023-02-26 17:51:56'),
('localhost', 106, '1697585941762', 2023, 'Six', 'A', 'Rahnuma Faruk Suhaila', 223879, 82, 'XXXXXXXXXX', '2012-07-18', 'Female', 'undefined', '223879@abc.com', '', '01902786843', 'Omar Faruk Bashar', 'Kazi jahida', 'Uttarshibpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'e626f60061fd89d1c30aef7a5c0726a2', 'N/A', '2023-02-26 17:54:42'),
('localhost', 108, '1697173986467', 2023, 'Six', 'A', 'Mohona Khanom', 396130, 136, 'XXXXXXXXXX', '2012-06-18', 'Female', 'undefined', '396130@abc.com', '', '01722156464', 'Mahbub Rahman', 'Asma Begum', 'Raipur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'b404f1842367c4077ada159c2c73b199', 'N/A', '2023-02-26 17:57:45'),
('localhost', 109, '1697709171648', 2023, 'Six', 'A', 'Aysha Khatun', 165221, 141, 'XXXXXXXXXX', '2012-06-18', 'Female', 'undefined', '165221@abc.com', '', '01722156464', 'Mahbub Rahman', 'Asma Begum', 'Raipur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '12a9df746e0cb1131913f79be01d6aa3', 'N/A', '2023-02-26 17:59:14'),
('localhost', 110, '1697776090646', 2023, 'Six', 'A', 'Aysha Khatun', 185505, 141, 'XXXXXXXXXX', '2010-11-28', 'Female', 'undefined', '185505@abc.com', '', '01764892442', 'MD Sobuj Mastar', 'Sapna Begum', 'Amgram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '879146e67910c63a22ff3061444f88f9', 'N/A', '2023-02-26 18:01:34'),
('localhost', 111, '1697687278246', 2023, 'Six', 'A', 'Syeda Sanjida Shirin', 138821, 105, 'XXXXXXXXXX', '2012-01-07', 'Female', 'undefined', '138821@abc.com', '', '01766922999', 'Shofikul Islam', 'Mst Zuthi Aktar Rikta', 'Bahirbag, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '60791e81ab5255aaab2ef2db817fe934', 'N/A', '2023-02-26 18:04:25'),
('localhost', 112, '1697380644183', 2023, 'Six', 'A', 'Mst Tania', 688910, 65, 'XXXXXXXXXX', '2009-05-14', 'Female', 'undefined', '688910@abc.com', '', '01844585247', 'MD Babul', 'Mst Anjira Begum', 'Amritanagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '01294405003968b3f3d8ea4652c6091b', 'N/A', '2023-02-26 18:06:28'),
('localhost', 113, '1697684935239', 2023, 'Six', 'A', 'Mst Asiya Khanom', 895456, 58, 'XXXXXXXXXX', '2011-11-29', 'Female', 'undefined', '895456@abc.com', '', '01946987977', 'Shohidul Molla', 'Sima Begum', 'Amgram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '94afc938916fb16f1087ca4c42509caa', 'N/A', '2023-02-26 18:08:49'),
('localhost', 114, '1697316289137', 2023, 'Six', 'A', 'Mst Muslima Jahan Munia', 505449, 35, 'XXXXXXXXXX', '2012-08-27', 'Female', 'undefined', '505449@abc.com', '', '01913537047', 'MD Mostafa Kamal', 'Mst Mahmuda Sultana', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '2d8ed234ff377dd6d71db684be8c4979', 'N/A', '2023-02-26 18:12:05'),
('localhost', 115, '1697286802014', 2023, 'Six', 'A', 'Mahima Sultana', 8639, 33, 'XXXXXXXXXX', '2012-12-30', 'Female', 'undefined', '8639@abc.com', '', '01925236279', 'MD Maruf Hosen Shikdar', 'Lotifa Sultana', 'Horihornagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'd81e7b11491d827141c58aa60bd6782f', 'N/A', '2023-02-26 18:13:58'),
('localhost', 116, '1697393405833', 2023, 'Six', 'A', 'Samiya Khanom ', 288995, 32, 'XXXXXXXXXX', '2011-01-01', 'Female', 'undefined', '288995@abc.com', '', '01767127695', 'Hafizur Rahman Molla', 'Khadeja Begum', 'Bahirbag, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '566a12814a3f2e7b6e043ee7f8dda9b1', 'N/A', '2023-02-26 18:16:04'),
('localhost', 117, '1697137928611', 2023, 'Six', 'A', 'Nusrat Jahan', 715661, 1, 'XXXXXXXXXX', '2012-10-22', 'Female', 'undefined', '715661@abc.com', '', '01726850772', 'Ajharul Islam', 'Najmin Nahar', 'chalinagar, Boalmari, Faridpur', 'Islam', 'N/A', 'Studies', 'female_avatar.png', 'N/A', 'b9b09184146a3ac4e29a46b742fc7585', 'N/A', '2023-02-26 18:17:40'),
('localhost', 118, '1697084261821', 2023, 'Six', 'A', 'Megh Saha', 409557, 26, 'XXXXXXXXXX', '2012-06-14', 'Female', 'undefined', '409557@abc.com', '', '01711482970', 'Shankar Kumar Saha', 'Nipa Rani Saha', 'Kamargram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '4b06efc1a50a8d9430c0cb4d55de29b5', 'N/A', '2023-02-26 18:20:08'),
('localhost', 119, '1697367484314', 2023, 'Six', 'A', 'Sanjida Islam Tuli', 404760, 39, 'XXXXXXXXXX', '2012-04-15', 'Female', 'undefined', '404760@abc.com', '', '01734094224', 'Bablu Pramanik', 'Mita Begum', 'Bandugram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'c8872d72c0d8409fe76bf1526a2d7940', 'N/A', '2023-02-27 00:48:31'),
('localhost', 120, '1697002380411', 2023, 'Six', 'A', 'Sadika Khatun', 813294, 95, 'XXXXXXXXXX', '2011-12-28', 'Female', 'undefined', '813294@abc.com', '', '01934087975', 'LIakot Ali', 'Mst Jaynab Yasmin', 'Boalmari, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '8a883480d0de44e90a9a746315bb209b', 'N/A', '2023-02-27 00:50:37'),
('localhost', 121, '1697205497107', 2023, 'Six', 'A', 'Mst Mim Khanom', 461338, 79, 'XXXXXXXXXX', '2011-03-03', 'Female', 'undefined', '461338@abc.com', '', '01311483457', 'Juyel Molla', 'Mst Romesa Parvin', 'Bahirbag, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '3a966dc823e5df402815a400d132573c', 'N/A', '2023-02-27 00:53:14'),
('localhost', 122, '1697313476934', 2023, 'Six', 'A', 'Labiba hosen', 99146, 67, 'XXXXXXXXXX', '2012-11-30', 'Female', 'undefined', '99146@abc.com', '', '01318731715', 'MD Jakir Hosen Mia', 'Soheli Sultana', 'Chotul, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'ae6836d3f3b2b211bfc76296e97f702c', 'N/A', '2023-02-27 00:55:59'),
('localhost', 123, '1697251894525', 2023, 'Six', 'A', 'Mst Mahima Afrin Sneha', 321666, 22, 'XXXXXXXXXX', '2011-02-17', 'Female', 'undefined', '321666@abc.com', '', '01716600706', 'Mohibul Islam', 'Sima Begum', 'Dakkhinkamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'e82373287a9492f2254ef1680107036f', 'N/A', '2023-02-27 01:00:17'),
('localhost', 124, '1696951860770', 2023, 'Six', 'A', 'Sabrina Mahbub', 329097, 63, 'XXXXXXXXXX', '2011-12-06', 'Female', 'undefined', '329097@abc.com', '', '01715281132', 'MD Mahbubur Rahman', 'Shabana Begum', 'Pashchimkamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '0a5274ffc5cc0282ffbf5bee95da17b5', 'N/A', '2023-02-27 01:02:19'),
('localhost', 125, '1697422367505', 2023, 'Six', 'A', 'Mst Marzia Aktar', 41586, 131, 'XXXXXXXXXX', '2011-11-25', 'Female', 'undefined', '41586@abc.com', '', '01911274441', 'AB Rahim Biswas', 'Mst Josna Begum', 'Amgram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '24c590e8d1f2302977d89816d2e9c5bd', 'N/A', '2023-02-27 01:07:31'),
('localhost', 126, '1697007277398', 2023, 'Six', 'A', 'Jannatul Islam', 484264, 104, 'XXXXXXXXXX', '2012-01-01', 'Female', 'undefined', '484264@abc.com', '', '01943301739', 'MD Musa Mia', 'LIma', 'PurbaKamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '94af6f3fe9e3ed5c27a6baeb800703a3', 'N/A', '2023-02-27 01:10:36'),
('localhost', 127, '1697280874647', 2023, 'Six', 'A', 'Jilfa Tanjum', 285783, 7, 'XXXXXXXXXX', '2012-04-10', 'Female', 'undefined', '285783@abc.com', '', '01956364737', 'Jamal Biswas', 'Jakiya Sultana', 'Thakurpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '579e18230121da9625da4734df751e1e', 'N/A', '2023-02-27 01:12:30'),
('localhost', 128, '1696984094602', 2023, 'Six', 'A', 'Saima Sultana', 113797, 116, 'XXXXXXXXXX', '2012-10-29', 'Female', 'undefined', '113797@abc.com', '', '01913338273', 'MD Akbar Ali Sheikh', 'Sumi Khatun', 'Dakkhinkamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '1c2344762fc9f7d7d5e1bf6f50e26321', 'N/A', '2023-02-27 01:14:57'),
('localhost', 129, '1697221422016', 2023, 'Six', 'A', 'Marzia Khatun', 624110, 133, 'XXXXXXXXXX', '2012-01-03', 'Female', 'undefined', '624110@abc.com', '', '01718815935', 'MD Monowar Molla', 'Sumi Begum', 'Ramnagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '4cbf42048ea45d8e0b5757387eadd149', 'N/A', '2023-02-27 16:36:23'),
('localhost', 130, '1697192604461', 2023, 'Six', 'A', 'Anha Saha', 523667, 75, 'XXXXXXXXXX', '2012-01-21', 'Female', 'undefined', '523667@abc.com', '', '01718907404', 'Atin Kumar Saha', 'Nipa Saha', 'Pashchimkamargram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '4d27028c67f6b1f5d0796ace0bc4e1e6', 'N/A', '2023-02-27 17:28:12'),
('localhost', 131, '1697037329348', 2023, 'Six', 'A', 'Raisa Rahman Jikra', 548902, 11, 'XXXXXXXXXX', '2011-05-13', 'Female', 'undefined', '548902@abc.com', '', '01756830040', 'Mohammad Mejbaur Rahman', 'Syeda Rina Sultana', 'Uttarshibpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'c36551b2788e58474699690c38b2c333', 'N/A', '2023-02-27 17:35:34'),
('localhost', 132, '1697001255381', 2023, 'Six', 'A', 'Gina Tahmida Titir', 727473, 9, 'XXXXXXXXXX', '2010-12-12', 'Female', 'undefined', '727473@abc.com', '', '01766366416', 'MD Shorafat Hosen', 'Afroja Sultana', 'Boalmari, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '224b9b6e5eac84f9b9c9518f6b68b548', 'N/A', '2023-02-27 17:38:19'),
('localhost', 133, '1697280924805', 2023, 'Six', 'A', 'Shayma Mitra', 347998, 17, 'XXXXXXXXXX', '2011-10-04', 'Female', 'undefined', '347998@abc.com', '', '01740019174', 'Samar Mitra', 'Ruma Rani Mitra', 'Jogibarat, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '0e67cb0b4781b727838b4c2b4a77b8f2', 'N/A', '2023-02-27 17:51:16'),
('localhost', 134, '1697515006191', 2023, 'Six', 'A', 'Priyonti Saha', 543278, 4, 'XXXXXXXXXX', '2012-06-15', 'Female', 'undefined', '543278@abc.com', '', '01721933376', 'Nripen Kumar Saha', 'Munmun Saha', 'Thakurpur, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'a321acfdaf1dda76fb73b2c361ffe22a', 'N/A', '2023-02-27 17:54:03'),
('localhost', 135, '1697501631457', 2023, 'Six', 'A', 'Tonu Pul', 406635, 14, 'XXXXXXXXXX', '2011-06-11', 'Female', 'undefined', '406635@abc.com', '', '01729865053', 'Gabinda Chandra Pul', 'Bijli Rani Pul', 'Thakurpur, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '5816c7f6976f70b6bd42dbbeed9e6d5c', 'N/A', '2023-02-27 17:56:46'),
('localhost', 136, '1697321234228', 2023, 'Six', 'A', 'Umme Hasnat Oni', 516723, 120, 'XXXXXXXXXX', '2012-05-02', 'Female', 'undefined', '516723@abc.com', '', '01715728001', 'MD humayun Molla', 'Mst Aysha Parvin Tumpa', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'a8a1fb0c141b13f5079a5ee1e6d33b09', 'N/A', '2023-02-27 17:59:20'),
('localhost', 137, '1697585341900', 2023, 'Six', 'C', 'Saahu Kushari', 69249, 26, 'XXXXXXXXXX', '2012-03-12', 'Male', 'undefined', '69249@abc.com', '', '01763872563', 'Sukhemdrro Nam Kushari', 'Joya Rani Kushari', 'Bandugram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '156111b1832eac84c41b900f612b1d20', 'N/A', '2023-02-27 18:08:35'),
('localhost', 138, '1697692896420', 2023, 'Six', 'A', 'Mst Ruhani', 533635, 53, 'XXXXXXXXXX', '2012-08-30', 'Female', 'undefined', '533635@abc.com', '', '01716605053', 'MD Jakir Hosen', 'Mst Rumana Yasmin', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '6bd5c42baf548cb899bdf5b4a548e820', 'N/A', '2023-02-27 18:11:51'),
('localhost', 139, '1697380437852', 2023, 'Six', 'A', 'Syeda Nasrin Sultana', 178556, 40, 'XXXXXXXXXX', '2012-12-07', 'Female', 'undefined', '178556@abc.com', '', '01731683245', 'Nasrul Hosen', 'sahinur Aktar', 'Bahirbag, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'cae5872c33272efcfdb39287d2394abd', 'N/A', '2023-02-27 18:13:50'),
('localhost', 140, '1697544984068', 2023, 'Six', 'C', 'Nayon Paul', 66834, 84, 'XXXXXXXXXX', '2010-04-09', 'Male', 'undefined', '66834@abc.com', '', '0179206150', 'Joydev Paul', 'Shilpi paul', 'Bagura , Naderchad ghat, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '23295c94d5224980391e78d0aa44b171', 'N/A', '2023-02-27 18:14:20'),
('localhost', 141, '1697148076670', 2023, 'Six', 'A', 'Mst Samia Islam Asha', 116735, 3, 'XXXXXXXXXX', '2011-12-05', 'Female', 'undefined', '116735@abc.com', '', '00000000000', 'Nitul Pramanik', 'Mst Najma Khanom', 'BanduGram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '6f40a9ec7ba0441c9679e53b80e1971e', 'N/A', '2023-02-27 18:16:03'),
('localhost', 142, '1697740925491', 2023, 'Six', 'A', 'asiya Khatun', 871298, 103, 'XXXXXXXXXX', '2011-12-05', 'Female', 'undefined', '871298@abc.com', '', '00000000000', 'Nitul Pramanik', 'Mst Najma Khanom', 'BanduGram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'ba0f3fa3466425c807038e98d74affb5', 'N/A', '2023-02-27 18:16:44'),
('localhost', 143, '1697274452660', 2023, 'Six', 'C', 'Md. Sajeebul Islam ', 553431, 59, 'XXXXXXXXXX', '2011-12-22', 'Male', 'undefined', '553431@abc.com', '', '01943298812', 'Md. Rejaul Karim', 'Heera', 'Omrrit Nagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'b8dfa1bfebbd354223bd8ea89534d33b', 'N/A', '2023-02-27 18:17:51'),
('localhost', 144, '1697808465536', 2023, 'Six', 'A', 'Sintiya', 14199, 96, 'XXXXXXXXXX', '2011-09-23', 'Female', 'undefined', '14199@abc.com', '', '01938483466', 'MD jahangir Molla', 'Shahida Begum', 'Rajapur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '8336efa19f7f47e453430ecf80672124', 'N/A', '2023-02-27 18:20:33'),
('localhost', 145, '1697290336193', 2023, 'Six', 'A', 'Israt Jahan', 723583, 12, 'XXXXXXXXXX', '2012-03-29', 'Female', 'undefined', '723583@abc.com', '', '01712471853', 'Fakir Nazmul Islam', 'Suraiya Islam', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'ba1a8bf4a3e04bf7f17e966b87ad317e', 'N/A', '2023-02-27 18:22:08'),
('localhost', 146, '1697683657306', 2023, 'Six', 'C', 'Md. Omidul Islam sadhin', 344175, 44, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '344175@abc.com', '', '01314208976', 'shahaful Alam ', 'Onjona', 'Kaliyand, Oyahidabad, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '0cb76eb87cd7f62811befb3e0d835493', 'N/A', '2023-02-27 18:23:02'),
('localhost', 147, '1697615915305', 2023, 'Six', 'C', 'Anif Molla', 216395, 49, 'XXXXXXXXXX', '2010-05-13', 'Male', 'undefined', '216395@abc.com', '', '01944748924', 'Helal', 'Roji Khatun', 'Solna Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'f8f438c03d21dd0ea2600d07f74328f4', 'N/A', '2023-02-27 18:31:59'),
('localhost', 148, '1697734508710', 2023, 'Six', 'C', 'Avijeet Kumar Shil', 118831, 42, 'XXXXXXXXXX', '2011-01-02', 'Male', 'undefined', '118831@abc.com', '', '01713561018', 'Osok Kumar Shil', 'Konika Rani Shil', 'Kamar Gram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '90bb870f6d8d4348713041783d78fcc8', 'N/A', '2023-02-27 18:34:32'),
('localhost', 149, '1697835814555', 2023, 'Six', 'C', 'Shah Newyaj Bin Alif ', 336093, 81, 'XXXXXXXXXX', '2011-03-24', 'Male', 'undefined', '336093@abc.com', '', '01714871345', 'Md. Shahin Miya', 'Beauty Khatun', 'Amgram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'f332f794e5c9b19d4d233f028f3770bd', 'N/A', '2023-02-27 18:38:25'),
('localhost', 150, '1697638461831', 2023, 'Six', 'C', 'Sayed Iyasin', 849850, 31, 'XXXXXXXXXX', '2011-03-24', 'Male', 'undefined', '849850@abc.com', '', '01767959584', 'Tanjila', 'Beauty Khatun', 'Bahirbag, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '341577d50773ae221deb488b4417ed5c', 'N/A', '2023-02-27 19:36:59'),
('localhost', 151, '1697396230716', 2023, 'Six', 'C', 'S. M. Jakariya', 604180, 16, 'XXXXXXXXXX', '2012-05-18', 'Male', 'undefined', '604180@abc.com', '', '01706698614', 'Md. Edris Ali', 'Nasrin Aktar', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '5285a282eeee849b1f68e80a0af11e76', 'N/A', '2023-02-27 20:02:52'),
('localhost', 154, '1697835410793', 2023, 'Six', 'C', 'Gourob Chokroborrti', 284241, 67, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '284241@abc.com', '', '01728311873', 'Joy Chokroborrti', 'Beauly Chokroborrti', 'Purbo Kamar Gram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '513112e46eda7c512bbbf6d1a8b0c0be', 'N/A', '2023-02-27 20:06:43'),
('localhost', 155, '1697057460673', 2023, 'Six', 'C', 'Nishan Saha', 18605, 33, 'XXXXXXXXXX', '2011-10-22', 'Male', 'undefined', '18605@abc.com', '', '01716376090', 'Nikhil Saha', 'Asima saha', 'Purbo Kamar Gram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '6235b7f9c3788fafd4f367e60b2ecaad', 'N/A', '2023-02-27 20:08:39'),
('localhost', 156, '1697764153915', 2023, 'Six', 'C', 'Nadeem Mahmud ', 785396, 7, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '785396@abc.com', '', '01734381048', 'Namir uddin', 'Hira Khatun', 'Posseem Kamar Gram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '01d7e09b8660f43a2fbe71a9ca53de55', 'N/A', '2023-02-27 20:16:20'),
('localhost', 157, '1697417026653', 2023, 'Six', 'C', 'Sehejadul Alam ', 878691, 55, 'XXXXXXXXXX', '2011-11-12', 'Male', 'undefined', '878691@abc.com', '', '01718046119', 'Md. Shahinur Alom', 'Paruli Khanam', 'D. Shibpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'ae3b3d7dd88a94fd11a6c80e74d776bb', 'N/A', '2023-02-27 21:09:04'),
('localhost', 158, '1697280940697', 2023, 'Six', 'C', 'Md. Hamjala Molla', 631621, 4, 'XXXXXXXXXX', '2010-11-12', 'Male', 'undefined', '631621@abc.com', '', '01774915747', 'Md. Mamun Molla', 'Shirina Begum', 'Banibari, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'a4d381eba858ba1acf01dc3fcd5a94f6', 'N/A', '2023-02-27 21:12:41'),
('localhost', 159, '1697350599169', 2023, 'Six', 'C', 'Arup Kumar Shil', 501313, 52, 'XXXXXXXXXX', '2011-04-14', 'Male', 'undefined', '501313@abc.com', '', '01991349534', 'Dilip Kumar', 'Shopna Rani Shil', 'Shibpur, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'b06de89028bb48c95cba445b93ae9c98', 'N/A', '2023-02-27 21:19:01'),
('localhost', 160, '1696958388731', 2023, 'Six', 'A', 'liya Moni', 355580, 90, 'XXXXXXXXXX', '2011-11-02', 'Female', 'undefined', '355580@abc.com', '', '01826324552', 'MD Pannu Sheikh', 'Julekha Begum', 'Ramnagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'd5b64384938940f60555d18cd48c191d', 'N/A', '2023-02-28 01:37:19'),
('localhost', 161, '1697532361790', 2023, 'Six', 'A', 'Tanisa Alam Liya', 175880, 97, 'XXXXXXXXXX', '2013-04-22', 'Female', 'undefined', '175880@abc.com', '', '01929213036', 'Mohammad Shariful Alam', 'Kahinur Aktar', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '61de1e138924cc5a4d823adc5cc61f0b', 'N/A', '2023-02-28 01:40:42'),
('localhost', 162, '1697452946123', 2023, 'Six', 'A', 'Samiya Sultana', 723387, 115, 'XXXXXXXXXX', '2010-08-25', 'Female', 'undefined', '723387@abc.com', '', '01716719031', 'MD Jahangir Hosen', 'MIs Champa Begum', 'Amritanagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'e9d4d219bf59d980d88eaa6dd5401ef1', 'N/A', '2023-02-28 01:47:48'),
('localhost', 163, '1697490552038', 2023, 'Six', 'A', 'Jubaida Jannat', 842905, 118, 'XXXXXXXXXX', '2011-08-31', 'Female', 'undefined', '842905@abc.com', '', '01780241856', 'MD Juyel Mia', 'Mst Nasrin', 'Felamnagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '2f8ed9673beb7d46dd2224c45a77cb9d', 'N/A', '2023-02-28 01:50:24'),
('localhost', 164, '1697381772769', 2023, 'Six', 'A', 'Jannatul Nur Chowa', 567940, 119, 'XXXXXXXXXX', '2012-02-17', 'Female', 'undefined', '567940@abc.com', '', '01784721000', 'Kamal Hosen', 'Shamima Nasrin', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'fc06c096c5e6fb390352163a9084482d', 'N/A', '2023-02-28 01:53:01'),
('localhost', 165, '1697445021832', 2023, 'Six', 'A', 'Sumaiya Rahman Ritu', 123847, 20, 'XXXXXXXXXX', '2011-11-03', 'Female', 'undefined', '123847@abc.com', '', '01765778601', 'MD Motiyar Rahman', 'Mst Sathi Begum', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'f487d273ce431cb6c8f9824d622f440b', 'N/A', '2023-02-28 01:55:14'),
('localhost', 166, '1697624081791', 2023, 'Six', 'A', 'Afsana', 2870, 36, 'XXXXXXXXXX', '2011-12-31', 'Female', 'undefined', '2870@abc.com', '', '01719957482', 'MD Akles Molla', 'Mst Shilpi Khatun', 'Thakurpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '84f4d45df602b4a2c432f4fdce164f0c', 'N/A', '2023-02-28 01:58:54'),
('localhost', 167, '1697642249500', 2023, 'Six', 'A', 'Mariyam Jahan Mamo', 370144, 37, 'XXXXXXXXXX', '2011-06-14', 'Female', 'undefined', '370144@abc.com', '', '01956354462', 'MD Jahandar Ali', 'Mst Shiuli Ahmed', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '875d91e32a9a2a1a8cd471f63ff86173', 'N/A', '2023-02-28 02:02:10'),
('localhost', 168, '1697753581704', 2023, 'Six', 'A', 'Nusrat jahan', 458149, 140, 'XXXXXXXXXX', '2012-04-12', 'Female', 'undefined', '458149@abc.com', '', '01710714477', 'MD Mizanur Rahman', 'Msr Jannatul Ferdous', 'Dhulpukuria, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '6aa3545836516fb4b35abdffbebc4405', 'N/A', '2023-02-28 02:04:21'),
('localhost', 169, '1697576345805', 2023, 'Six', 'A', 'Mst Rokeya Parvin', 320798, 85, 'XXXXXXXXXX', '2009-12-03', 'Female', 'undefined', '320798@abc.com', '', '01902342859', 'MD Rokon Sheikh', 'Msr Monira Begum', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'a31a674c96261fc574d6b6ec876bd9fd', 'N/A', '2023-02-28 02:06:53');
INSERT INTO `students` (`domain`, `ID`, `student_uuid`, `session`, `class`, `section`, `name`, `student_id`, `roll`, `reg`, `birth_date`, `gender`, `blood_group`, `email`, `phone`, `telephone`, `father_name`, `mother_name`, `address`, `religion`, `admission_date`, `hobbies`, `avatar`, `facebook_link`, `password`, `quote`, `at_date`) VALUES
('localhost', 170, '1697365392593', 2023, 'Six', 'A', 'Mst Munia Parvin', 348030, 49, 'XXXXXXXXXX', '2010-10-01', 'Female', 'undefined', '348030@abc.com', '', '01407573206', 'Elias Hosen', 'Msr Rupiya Begum', 'Ramnagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'f0ca8164713c4997086f05195ac66ad8', 'N/A', '2023-02-28 02:14:08'),
('localhost', 171, '1697467190280', 2023, 'Six', 'A', 'Sithi Das', 3833, 52, 'XXXXXXXXXX', '2012-07-05', 'Female', 'undefined', '3833@abc.com', '', '01722547399', 'Asim Kumar Das', 'Krisna Rani Das', 'Poyail, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '703ad46a64bfde5fde7deb03553b58ba', 'N/A', '2023-02-28 03:03:07'),
('localhost', 172, '1697324669733', 2023, 'Six', 'A', 'Promi Chakrabarti', 298837, 106, 'XXXXXXXXXX', '2011-09-30', 'Female', 'undefined', '298837@abc.com', '', '01713547891', 'Probir Chakrabarti', 'Bobita Chakrabarti', 'Kamargram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '43d0bc801e116558b740cdb690e8159f', 'N/A', '2023-02-28 03:07:12'),
('localhost', 173, '1697786980486', 2023, 'Six', 'A', 'Mst Nadira khanom', 198410, 121, 'XXXXXXXXXX', '2011-01-01', 'Female', 'undefined', '198410@abc.com', '', '01403578171', 'MD Nabab Shikdar', 'Hisniyara Begum', 'Vatpara, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '76865dbb605e10890af0adb0132380a0', 'N/A', '2023-02-28 03:10:47'),
('localhost', 174, '1697246200555', 2023, 'Six', 'A', 'Ajmira Aktar', 868022, 89, 'XXXXXXXXXX', '2010-12-02', 'Female', 'undefined', '868022@abc.com', '', '01934191536', 'Ayub Molla', 'Mitu', 'Moddhorgati, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '16f46dc8d77eb57f0f89514f45f2b2e0', 'N/A', '2023-02-28 03:12:53'),
('localhost', 175, '1697684342253', 2023, 'Six', 'A', 'Mst Mim Parvin', 193105, 66, 'XXXXXXXXXX', '2011-06-05', 'Female', 'undefined', '193105@abc.com', '', '10932398157', 'MD Showkat molla', 'Jabeda Begum', 'Muktarpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '7460241c8eabd470a7ba2747a39c9df8', 'N/A', '2023-02-28 03:15:50'),
('localhost', 176, '1697497068454', 2023, 'Six', 'C', 'Saydul Islam sami', 447773, 73, 'XXXXXXXXXX', '2012-01-23', 'Male', 'undefined', '447773@abc.com', '', '01977704450', 'Md. Sohel', 'Cadni', 'Vatparar,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '5dd6d4b05341cca46f2d8b74f212bd79', 'N/A', '2023-02-28 05:35:14'),
('localhost', 177, '1697301138778', 2023, 'Six', 'C', 'Md. Sajeed Biswas ', 389835, 14, 'XXXXXXXXXX', '2013-09-21', 'Male', 'undefined', '389835@abc.com', '', '01791921662', 'Shahidul biswas', 'Jakiya Begum', 'Chotul,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '0e20b6a2c284cc71e055703e33451268', 'N/A', '2023-02-28 05:39:41'),
('localhost', 178, '1697635376897', 2023, 'Six', 'C', 'Md. Habib Shikdar Ratul', 284387, 98, 'XXXXXXXXXX', '2011-01-24', 'Male', 'undefined', '284387@abc.com', '', '01944146855', 'Md. Tarikul Islam', 'Mst. Reba Begum', 'Soto Kamar Gram,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'b23ac4f8f8edca651bd34c634c9f792c', 'N/A', '2023-02-28 05:42:25'),
('localhost', 179, '1697631409821', 2023, 'Six', 'C', 'Sikdar Rohit', 713821, 21, 'XXXXXXXXXX', '2011-07-10', 'Male', 'undefined', '713821@abc.com', '', '01612708848', 'Md. Jiyap Uddin', 'Afroja Iyasmin Sheli', 'Cotul,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '626343a6e7187d35a67eec3105736ef6', 'N/A', '2023-02-28 05:45:17'),
('localhost', 180, '1697076453882', 2023, 'Six', 'C', 'Ferdous Rahman  Labib', 373958, 58, 'XXXXXXXXXX', '2012-09-11', 'Male', 'undefined', '373958@abc.com', '', '01852602361', 'Md. Hafijur Rahman', 'Mst. Poli Khatun', 'Raypur,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'a71ad6861a8532bb34aff14989984678', 'N/A', '2023-02-28 05:50:53'),
('localhost', 181, '1697693144167', 2023, 'Six', 'C', 'Ali Hasaan', 114026, 5, 'XXXXXXXXXX', '2011-10-25', 'Male', 'undefined', '114026@abc.com', '', '01733268723', 'Md. Shajahan Molla', 'Rehena Begum', 'Solna,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '431757c9d2bbdd10c6036fb27838840c', 'N/A', '2023-02-28 05:54:39'),
('localhost', 182, '1697230524851', 2023, 'Six', 'C', 'Md. Mujahid Ali', 58712, 47, 'XXXXXXXXXX', '2012-11-27', 'Male', 'undefined', '58712@abc.com', '', '01939303782', 'Muhammad Ali', 'Mst. Lota', 'Solna,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '46875904d6a39171bea16e46ed244c83', 'N/A', '2023-02-28 05:57:28'),
('localhost', 183, '1697637805053', 2023, 'Six', 'C', 'Md. Habibullah', 363567, 19, 'XXXXXXXXXX', '2012-01-18', 'Male', 'undefined', '363567@abc.com', '', '01907388301', 'MD. Selim Mia', 'Mst. Sufiya Begum', 'Muktarpur,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'fe13a7255ac5efee82bfef32f46d6b01', 'N/A', '2023-02-28 06:07:38'),
('localhost', 184, '1697533227967', 2023, 'Six', 'C', 'Md. Mostakim sheikh', 176363, 86, 'XXXXXXXXXX', '2012-01-12', 'Male', 'undefined', '176363@abc.com', '', '01997321112', 'Md. Masud Sheikh', 'Mst. Arjina Begum', 'Vatpara,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '422cd5e716ea2668542d5aa7e37e26f4', 'N/A', '2023-02-28 06:20:23'),
('localhost', 185, '1697128918660', 2023, 'Six', 'C', 'Shawon Ray ', 288025, 48, 'XXXXXXXXXX', '2012-06-05', 'Male', 'undefined', '288025@abc.com', '', '01913815929', 'Sonjit Kumar Ray', 'Trrisna Ray', 'Baguan,Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'a70ed75c14ba7baf3bcf9dd32c9e8bbd', 'N/A', '2023-02-28 08:24:28'),
('localhost', 186, '1696993007297', 2023, 'Six', 'C', 'Md. Arafat Sheikh', 145593, 50, 'XXXXXXXXXX', '2011-06-28', 'Male', 'undefined', '145593@abc.com', '', '01762999134', 'Md. Sojol Sheikh', 'Mst. Asma Begum', 'Kaliyand,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '2b27339151ac0daefafd13c309276496', 'N/A', '2023-02-28 08:29:42'),
('localhost', 187, '1697741580212', 2023, 'Six', 'C', 'Pracurjo Paul', 887126, 63, 'XXXXXXXXXX', '2012-04-26', 'Male', 'undefined', '887126@abc.com', '', '0186293721', 'Poresh Kumar Paul', 'Osima Pal', 'Dokkhin Kamar Gram,Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '95456f8043da716422ca6c804917336a', 'N/A', '2023-02-28 08:48:12'),
('localhost', 188, '1697594874590', 2023, 'Six', 'B', 'Mithun Sarkar', 751384, 75, 'XXXXXXXXXX', '2011-11-21', 'Male', 'undefined', '751384@abc.com', '', '01938652314', 'Komol Sardar', 'Chaina Rani', 'Pashchimkamargram', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'f153740bb526f988056b2a8cc5ec211d', 'N/A', '2023-02-28 08:48:14'),
('localhost', 189, '1697686442006', 2023, 'Six', 'B', 'Apon Kumar', 119049, 100, 'XXXXXXXXXX', '2011-07-28', 'Male', 'undefined', '119049@abc.com', '', '01728938516', 'Milon Kumar Shil', 'Lipika Pul', 'Dakkhinshibpur, Rajbari Sadar, Rajbari', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '467d183e9b03d25206ad5ff615511342', 'N/A', '2023-02-28 08:53:59'),
('localhost', 190, '1697669767371', 2023, 'Six', 'B', 'MD Arman', 171227, 99, 'XXXXXXXXXX', '2011-11-30', 'Male', 'undefined', '171227@abc.com', '', '01843493236', 'Rezaul Islam', 'Sultana Aktar', 'Shibpur,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '314ffb21bbe7541938e3623e2c90c8ac', 'N/A', '2023-02-28 08:57:18'),
('localhost', 191, '1697624178636', 2023, 'Six', 'C', 'Md. Shuvo ', 158991, 74, 'XXXXXXXXXX', '2010-05-04', 'Male', 'undefined', '158991@abc.com', '', '01730159525', 'Munsi Mijanur', 'Suma Begum', 'Vatpara,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '1e68e8cae34d4ec70619879cb994e6aa', 'N/A', '2023-02-28 09:08:19'),
('localhost', 192, '1697353264328', 2023, 'Six', 'B', 'MD Emon Molla ', 95074, 95, 'XXXXXXXXXX', '2011-10-01', 'Male', 'undefined', '95074@abc.com', '', '01954820197', 'MD Usuf Molla', 'Shilpi', 'Gunbaha,Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'db0266a887834b1067cce7a2c4165ec1', 'N/A', '2023-02-28 09:15:24'),
('localhost', 193, '1697436578325', 2023, 'Six', 'B', 'MD Tahsin Ahmed', 783890, 36, 'XXXXXXXXXX', '2012-05-26', 'Male', 'undefined', '783890@abc.com', '', '01306545207', 'MD Kamrul Islam', 'Mst Merina Parvin', 'Gunbaha, Mohammadpur, Magura', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '3522b97c2a6f24d5219652cc4560c69c', 'N/A', '2023-03-01 00:53:42'),
('localhost', 194, '1697540502776', 2023, 'Six', 'B', 'MD Naim Sheikh', 650056, 12, 'XXXXXXXXXX', '2010-08-15', 'Male', 'undefined', '650056@abc.com', '', '01990724383', 'MD Salam Sheikh', 'Mst Aleya Begum', 'Bahirbag, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '12886349720b4ce5e27583f7b74d3818', 'N/A', '2023-03-01 00:56:24'),
('localhost', 195, '1697162248091', 2023, 'Six', 'B', 'MD Syed Ariyan', 208038, 98, 'XXXXXXXXXX', '2012-03-02', 'Male', 'undefined', '208038@abc.com', '', '01712310959', 'Syed Arif', 'Syed Laki', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'f5d754269065d228187879af0e64a923', 'N/A', '2023-03-01 00:58:56'),
('localhost', 196, '1697733720099', 2023, 'Six', 'B', 'MD Mursalin Mia', 895180, 97, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '895180@abc.com', '', '01712310959', 'MD Rofikul Islam', 'Mst Munja Islam', 'Syedpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '264e5562ad3c04503b15213a564dfd89', 'N/A', '2023-03-01 01:01:31'),
('localhost', 197, '1697127354128', 2023, 'Six', 'B', 'Abdullah', 269735, 44, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '269735@abc.com', '', '01773094547', 'Pikul', 'Shahanaz', 'Gurdia, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'ae455f33861a1f969d8a0fe5b446231a', 'N/A', '2023-03-01 01:03:09'),
('localhost', 198, '1697408489182', 2023, 'Six', 'B', 'Rahim Vuiya', 808467, 7, 'XXXXXXXXXX', '2012-07-12', 'Male', 'undefined', '808467@abc.com', '', '01710147365', 'MD Sajjad Hosen Vuiya', 'Mst Monihar Parvin', 'Noyanipara, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '902fe6ee9d26f4aeab4cf8ef61838254', 'N/A', '2023-03-01 01:05:55'),
('localhost', 199, '1697364061215', 2023, 'Six', 'B', 'Khandakar Mehedi Hasan', 686759, 96, 'XXXXXXXXXX', '2012-08-10', 'Male', 'undefined', '686759@abc.com', '', '01644547742', 'Sakendar Ali', 'Ambiya Begum', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'b6c66f86ef65d4c2e6248a945898f1e9', 'N/A', '2023-03-01 01:09:21'),
('localhost', 200, '1697246004413', 2023, 'Six', 'B', 'Rudra Biswas', 782625, 18, 'XXXXXXXXXX', '2012-01-03', 'Male', 'undefined', '782625@abc.com', '', '01714544674', 'Prashanta biswas', 'Minoti Biswas', 'Kamargram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '7b855563bc73227093b0465afb5e3af4', 'N/A', '2023-03-01 01:15:09'),
('localhost', 201, '1697195625100', 2023, 'Six', 'B', 'Moin Choudhury', 449815, 69, 'XXXXXXXXXX', '2011-10-12', 'Male', 'undefined', '449815@abc.com', '', '01736213423', 'Mizan Choudhury', 'Ayrin Aktar Rimi', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '9833b6ee39de7a03864a1c9819cec328', 'N/A', '2023-03-01 01:24:27'),
('localhost', 202, '1697536017306', 2023, 'Six', 'B', 'MD Mahim Ikbal Faisal', 832928, 68, 'XXXXXXXXXX', '2012-03-02', 'Male', 'undefined', '832928@abc.com', '', '01868956855', 'MD Akkas Uddin Molla', 'Mst Shamima Aktar Mina', 'Kaliyand, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'd3057266084ea69613042929cdc95446', 'N/A', '2023-03-01 01:26:55'),
('localhost', 203, '1697813319027', 2023, 'Six', 'B', 'MD Samiul Islam', 505955, 37, 'XXXXXXXXXX', '2012-11-26', 'Male', 'undefined', '505955@abc.com', '', '01937779101', 'MD Shohidul Islam', 'Nurnahar', 'Dakkhinkamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'f73101b26af7771cc2fb9ac5e28bea77', 'N/A', '2023-03-01 01:29:34'),
('localhost', 204, '1697125115402', 2023, 'Six', 'B', 'MD Tamim', 330451, 79, 'XXXXXXXXXX', '2012-11-11', 'Male', 'undefined', '330451@abc.com', '', '01751728978', 'MD Saiful Islam', 'Tisha Begum', 'Shotasi, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '011a067c3ef83ba3ed6f3d70ca94c526', 'N/A', '2023-03-01 01:31:57'),
('localhost', 205, '1697031566651', 2023, 'Six', 'B', 'Ishan Iban Abdullah', 848208, 9, 'XXXXXXXXXX', '2011-06-15', 'Male', 'undefined', '848208@abc.com', '', '01916130165', 'MD Fosiyar Rahman', 'Chameli Aktar', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'be00bf0bd3eb36259a2ffe808f13f86c', 'N/A', '2023-03-01 01:54:33'),
('localhost', 206, '1696994888230', 2023, 'Six', 'B', 'MD Khalid Hasan', 731933, 65, 'XXXXXXXXXX', '2009-04-25', 'Male', 'undefined', '731933@abc.com', '', '01735333273', 'MD Humayun Sheikh', 'Mst Khadija Begum', 'Patitapara', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'd186508d3c00eb29cab15c06a172aac6', 'N/A', '2023-03-01 02:04:23'),
('localhost', 207, '1697756045165', 2023, 'Six', 'B', 'MD Morshed Molla', 666129, 6, 'XXXXXXXXXX', '2012-10-19', 'Male', 'undefined', '666129@abc.com', '', '01939463514', 'MD Imam Molla', 'Mousumi Aktar Nasrin', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '02cb8d2873aa294b0ddfd1facfb91aa8', 'N/A', '2023-03-01 02:06:33'),
('localhost', 208, '1697138450540', 2023, 'Six', 'B', 'Dipta Pul', 678391, 3, 'XXXXXXXXXX', '2012-10-21', 'Male', 'undefined', '678391@abc.com', '', '01734909099', 'Dilip Kumar Pul', 'Angali Kumar Pul', 'Boalmari, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '8455ffdfad10ba36bd3754c0cfb1c459', 'N/A', '2023-03-01 02:09:22'),
('localhost', 209, '1697806804700', 2023, 'Six', 'B', 'MD Ibrahim Choudhury', 167838, 82, 'XXXXXXXXXX', '2010-01-02', 'Male', 'undefined', '167838@abc.com', '', '01937422017', 'Robiul Choudhury', 'Mst Rehena Khatun', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '74ca3a0204004a0faf46afb2ae1be407', 'N/A', '2023-03-01 02:18:07'),
('localhost', 210, '1697124561534', 2023, 'Six', 'B', 'MD Rafi', 504552, 23, 'XXXXXXXXXX', '2011-09-29', 'Male', 'undefined', '504552@abc.com', '', '01729801602', 'MD Harun', 'Mst Reba Begum', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '4c84fc085eb9344beaf7b402509fb5e0', 'N/A', '2023-03-04 00:21:06'),
('localhost', 211, '1697296977653', 2023, 'Six', 'B', 'MD Al amin Molla', 228155, 86, 'XXXXXXXXXX', '2012-03-25', 'Male', 'undefined', '228155@abc.com', '', '01733595442', 'MD Liakat Hosen', 'Mst Ferdousi Begum', 'Chalinagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'ef47290e33743832b64b3f89c604e916', 'N/A', '2023-03-04 00:23:15'),
('localhost', 212, '1697699029827', 2023, 'Six', 'B', 'MD Tasin Molla', 430587, 26, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '430587@abc.com', '', '01758877790', 'MD Majed Molla', 'Mst Kabita', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'debaab6580ffb4de0bc2f3f9b2240ffc', 'N/A', '2023-03-04 00:25:18'),
('localhost', 213, '1697749814753', 2023, 'Six', 'B', 'MD Siam', 416776, 19, 'XXXXXXXXXX', '2012-02-03', 'Male', 'undefined', '416776@abc.com', '', '01740990083', 'MD Chan Mia', 'Mst Eva Aktar', 'Rajapur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'bb00baa8373395152faa3894d06fce93', 'N/A', '2023-03-04 00:27:04'),
('localhost', 214, '1697837534195', 2023, 'Six', 'B', 'MD Jakariya Mia', 34284, 85, 'XXXXXXXXXX', '2011-12-23', 'Male', 'undefined', '34284@abc.com', '', '01708118338', 'MD Abul Hasan', 'Mst Shahina Begum', 'Dighalbana, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '9e800bf008102b7dd1cae336004d9c2a', 'N/A', '2023-03-04 00:28:57'),
('localhost', 215, '1697363381613', 2023, 'Six', 'B', 'MD Sakibul Hasan', 493851, 25, 'XXXXXXXXXX', '2012-01-10', 'Male', 'undefined', '493851@abc.com', '', '01904153038', 'MD Manir Hosen', 'Mst Sagori Begum', 'Amgram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '188e50c5283e17c4d1069446b45a8607', 'N/A', '2023-03-04 00:30:49'),
('localhost', 216, '1697048609598', 2023, 'Six', 'B', 'Shawon Islam', 821728, 43, 'XXXXXXXXXX', '2010-12-03', 'Male', 'undefined', '821728@abc.com', '', '01775495184', 'Sohel Molla', 'Anna Begum', 'Bahirbag, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '1886277f3963a2d1f7facfa5d9cb7d6d', 'N/A', '2023-03-04 00:32:38'),
('localhost', 217, '1697533016676', 2023, 'Six', 'B', 'MD Junayet Siddik Rasel', 675248, 73, 'XXXXXXXXXX', '2010-06-01', 'Male', 'undefined', '675248@abc.com', '', '01749136062', 'MD Ibrahim MOlla', 'Mst Rijiya Begum', 'Horiharnahar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '147623a38e4673af6af4f6f0becdbe80', 'N/A', '2023-03-04 00:36:12'),
('localhost', 218, '1697757816858', 2023, 'Six', 'B', 'Siddharth Sharkar', 248727, 81, 'XXXXXXXXXX', '2011-11-11', 'Male', 'undefined', '248727@abc.com', '', '01752631094', 'Nanda Sharkar', 'Lipi Sharkar', 'Chatul, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'ac3a46b0fd038823d2f5c754e24b2649', 'N/A', '2023-03-04 00:39:07'),
('localhost', 219, '1697003735890', 2023, 'Six', 'B', 'Ahad Sheikh ', 327122, 71, 'XXXXXXXXXX', '2011-03-29', 'Male', 'undefined', '327122@abc.com', '', '01749708397', 'Raja Mia', 'Rashida Begum', 'Amgram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '94bc1130ecf45f8e58d2c5de2fec3415', 'N/A', '2023-03-04 00:41:08'),
('localhost', 220, '1697686305074', 2023, 'Six', 'B', 'Jyotiska Bhowmik', 482245, 39, 'XXXXXXXXXX', '2011-12-27', 'Male', 'undefined', '482245@abc.com', '', '01712457660', 'Jayanta Kumar Bhowmik', 'Dipa Das', 'Purba Kamargram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'c1fe5c5a03f226fcc5fe063f8557f189', 'N/A', '2023-03-04 00:49:13'),
('localhost', 221, '1697436892048', 2023, 'Six', 'B', 'Jihad Sheikh', 526, 77, 'XXXXXXXXXX', '2011-11-12', 'Male', 'undefined', '526@abc.com', '', '01933143178', 'MD Ziaul Rahman', 'Champa Khatun', 'Purba Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '58161f56ffdf4bfe7c6cd0c384d19d8c', 'N/A', '2023-03-04 00:51:08'),
('localhost', 222, '1697328731418', 2023, 'Six', 'B', 'Anik Rajbangshi', 634228, 52, 'XXXXXXXXXX', '2010-09-11', 'Male', 'undefined', '634228@abc.com', '', '01728254991', 'Deb Kumar Rajbangshi', 'Aruna Rani Rajbangshi', 'Adharkotha, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'cc5b0748c53110f74a9b1be2cea240f3', 'N/A', '2023-03-04 01:04:21'),
('localhost', 223, '1697740872558', 2023, 'Six', 'B', 'Rabttra Hiyero Mandal', 148382, 34, 'XXXXXXXXXX', '2012-03-08', 'Male', 'undefined', '148382@abc.com', '', '01924950136', 'Ronojit Kumar Mandal', 'Hira Sarkar', 'Kamargram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '1ff72e56d365510cff91f7f4c06fcffd', 'N/A', '2023-03-04 01:07:53'),
('localhost', 224, '1697794110271', 2023, 'Six', 'B', 'MD Tuhin Sheikh ', 86403, 20, 'XXXXXXXXXX', '2010-12-30', 'Male', 'undefined', '86403@abc.com', '', '01971138204', 'AB Mannan Sheikh', 'Mst Sabina Yasmin', 'Uttarshibpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '61b4d0d8844e7d96816067f8c641b75b', 'N/A', '2023-03-04 01:09:57'),
('localhost', 225, '1696990277293', 2023, 'Six', 'B', 'Sakidul Islam', 253469, 11, 'XXXXXXXXXX', '2013-02-02', 'Male', 'undefined', '253469@abc.com', '', '01730177180', 'MD Saifur Rahman', 'Mst Shampa Islam', 'Raipur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'b8901ac5d643c24f43f3928241aa45a7', 'N/A', '2023-03-04 01:12:10'),
('localhost', 226, '1697105521702', 2023, 'Six', 'B', 'MD Hasibul Sheikh', 14061, 40, 'XXXXXXXXXX', '2011-06-01', 'Male', 'undefined', '14061@abc.com', '', '01750124054', 'MD Kamal Sheikh', 'Mst Ruma Begum', 'Biswaspur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '00446cfcf2e91adf2874a6ae1a35fc33', 'N/A', '2023-03-04 01:14:50'),
('localhost', 227, '1697139765703', 2023, 'Six', 'B', 'MD Azizul Haque', 102852, 24, 'XXXXXXXXXX', '2011-10-06', 'Male', 'undefined', '102852@abc.com', '', '01962440536', 'Jafar Molla', 'Mst Shorifa Begum', 'Dorihoharnagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'd1d4e338a98f5080fc5716a6cb90bc1d', 'N/A', '2023-03-04 01:25:11'),
('localhost', 228, '1697841092640', 2023, 'Six', 'B', 'MD Ruhin Hosen', 479754, 33, 'XXXXXXXXXX', '2012-03-01', 'Male', 'undefined', '479754@abc.com', '', '01709746363', 'MD Babar Ali', 'Dalia Khatun', 'Bichali, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '29f4873e0ddc1675a5f7b4a39af63c5b', 'N/A', '2023-03-04 01:28:36'),
('localhost', 229, '1697380524606', 2023, 'Six', 'B', 'Syed Tanvir Mahin', 238102, 57, 'XXXXXXXXXX', '2012-06-12', 'Male', 'undefined', '238102@abc.com', '', '01714366105', 'Syed Mahbubur Rashid', 'Mst Rojlin Atiya', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'f09a71dd04dcc391800c98153b6b16ab', 'N/A', '2023-03-04 01:32:32'),
('localhost', 230, '1697733940583', 2023, 'Six', 'B', 'Abu Bakkar', 220818, 70, 'XXXXXXXXXX', '2011-11-24', 'Male', 'undefined', '220818@abc.com', '', '01740766099', 'MD Atikur Rahman', 'Chaina Khatun', 'Moddhorgati, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '22cf80f3f23af6f73f4452891bc32820', 'N/A', '2023-03-04 01:34:33'),
('localhost', 231, '1697325230987', 2023, 'Six', 'B', 'MD Shihab Molla', 670662, 53, 'XXXXXXXXXX', '2014-12-06', 'Male', 'undefined', '670662@abc.com', '', '01725281924', 'MD Mizanur Rahman', 'Shiuli Parvin', 'Chatul, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '5e7703c1d78f309478d03ec7399d185f', 'N/A', '2023-03-04 01:37:10'),
('localhost', 232, '1697389214652', 2023, 'Six', 'B', 'MD Nazmul Sakib Swron', 128617, 15, 'XXXXXXXXXX', '2013-01-01', 'Male', 'undefined', '128617@abc.com', '', '01736347956', 'Mohammad Ashrafuzzaman Chunnu', 'Nurunnahar', 'FelanNagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '6b33d2372bdb4ddf603697e134662d4b', 'N/A', '2023-03-04 01:46:45'),
('localhost', 233, '1697335962147', 2023, 'Six', 'B', 'MD Shahdin Hosen Tutu', 408860, 2, 'XXXXXXXXXX', '2011-12-08', 'Male', 'undefined', '408860@abc.com', '', '01766366416', 'MD Sharafat  Hosen', 'Afroza Sultana', 'Boalmari, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'ded6dafac282860277705c93a80643f8', 'N/A', '2023-03-04 01:48:47'),
('localhost', 234, '1697481536794', 2023, 'Six', 'B', 'MD Mozibur Rahman', 888175, 87, 'XXXXXXXXXX', '2011-12-31', 'Male', 'undefined', '888175@abc.com', '', '00000000000', 'MD Aminur Rahman', 'Bilkis Sultana', 'Ramnagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'b642959bd922186bee3285fd94176ce8', 'N/A', '2023-03-04 01:51:29'),
('localhost', 235, '1697172300759', 2023, 'Six', 'B', 'Khandakar Ariyan', 730047, 59, 'XXXXXXXXXX', '2013-07-10', 'Male', 'undefined', '730047@abc.com', '', '01405143892', 'Sohel Khandakar', 'Mst Lipi Begum', 'Shekhor, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'e048cfdf951c2cd8e975f7331a4cc7c5', 'N/A', '2023-03-04 01:54:17'),
('localhost', 236, '1697510473291', 2023, 'Six', 'B', 'Alif Khan', 389520, 13, 'XXXXXXXXXX', '2012-10-31', 'Male', 'undefined', '389520@abc.com', '', '01925317838', 'Mostak', 'Mst Nipa', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'd9c6a006f9bdbec0fbec1f8e66cdf815', 'N/A', '2023-03-04 01:55:58'),
('localhost', 237, '1697132700927', 2023, 'Six', 'B', 'MD Shofuqul Khan', 553306, 80, 'XXXXXXXXXX', '2011-11-30', 'Male', 'undefined', '553306@abc.com', '', '01716406608', 'Mohammad Sahidul Khan', 'Subarna Aktar', 'Boalmari, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'fcc092185a5bac6bb036f34fb06441aa', 'N/A', '2023-03-04 02:09:15'),
('localhost', 238, '1697813980277', 2023, 'Six', 'B', 'Apon Biswas', 314497, 1, 'XXXXXXXXXX', '2011-10-08', 'Male', 'undefined', '314497@abc.com', '', '01731408942', 'Akhil Kundu Biswas', 'Shila Rani Mandal', 'Boalmari, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'a45e84b3c98460b037313c1ade0beb94', 'N/A', '2023-03-04 02:11:29'),
('localhost', 239, '1697718970826', 2023, 'Six', 'B', 'Mahim Mohammad Roni', 194592, 47, 'XXXXXXXXXX', '2012-09-14', 'Male', 'undefined', '194592@abc.com', '', '01756414314', 'Ali Afjal Hosen', 'Jesmin Khanom', 'Noderchad Ghat, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '695af2d46fea98994512edd802ba02fb', 'N/A', '2023-03-04 02:14:16'),
('localhost', 240, '1697121381954', 2023, 'Six', 'B', 'Sheikh Sadi', 203692, 17, 'XXXXXXXXXX', '2013-06-01', 'Male', 'undefined', '203692@abc.com', '', '01868259617', 'MD Rofiqul Islam', 'Mst Sahera Bilkis', 'Myna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '9dfea07d7827d4c2c3f3b143e46c7d8e', 'N/A', '2023-03-04 02:17:59'),
('localhost', 241, '1697623122327', 2023, 'Six', 'B', 'Wasi Ul Islam', 343342, 101, 'XXXXXXXXXX', '2013-04-13', 'Male', 'undefined', '343342@abc.com', '', '01712310841', 'MD Mizanur Rahman', 'Tahmina Khatun', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '47a1cc0474523857794bab2f3ea36d8c', 'N/A', '2023-03-05 00:24:41'),
('localhost', 242, '1697661896978', 2023, 'Six', 'B', 'MD Maruf Molla', 823287, 31, 'XXXXXXXXXX', '2008-02-01', 'Male', 'undefined', '823287@abc.com', '', '01914226133', 'MD Faruk MOlla', 'Mst Jesmin Begum', 'Gurdia, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '787c2c5283187727c240ea00cb21da36', 'N/A', '2023-03-05 00:27:46'),
('localhost', 243, '1697641917355', 2023, 'Six', 'B', 'Riyazul Sheikh', 613184, 21, 'XXXXXXXXXX', '2012-08-29', 'Male', 'undefined', '613184@abc.com', '', '01407730794', 'Mizan Sheikh', 'Keya Khanom', 'Rajapur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'c318d7c4996980904b249a48054663db', 'N/A', '2023-03-05 00:30:45'),
('localhost', 244, '1697217179749', 2023, 'Six', 'B', 'MD Morsalin Khan', 213698, 62, 'XXXXXXXXXX', '2011-05-17', 'Male', 'undefined', '213698@abc.com', '', '01725945712', 'MD Anis Khan', 'Mst Morzina', 'Bykhir, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '45b5328c16750f094a9d94f2898ae2d5', 'N/A', '2023-03-05 00:33:40'),
('localhost', 245, '1697014422165', 2023, 'Six', 'B', 'Rifat Alom', 528050, 5, 'XXXXXXXXXX', '2011-12-26', 'Male', 'undefined', '528050@abc.com', '', '01755045831', 'MD Nowsher Alom', 'Mst Sharmin Begum', 'Kaliyand, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'b963c97c6a92eac8610a2502b23a0963', 'N/A', '2023-03-05 00:36:56'),
('localhost', 246, '1697652074119', 2023, 'Six', 'B', 'MD Tamim', 100955, 54, 'XXXXXXXXXX', '2011-10-09', 'Male', 'undefined', '100955@abc.com', '', '01920341428', 'Masud Rana', 'Mst Esamtara Begum', 'Amritanagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '62030af2c622564651aae051aead06ac', 'N/A', '2023-03-05 00:39:14'),
('localhost', 247, '1697010592205', 2023, 'Six', 'B', 'MD Samiul Islam', 255150, 89, 'XXXXXXXXXX', '2012-03-10', 'Male', 'undefined', '255150@abc.com', '', '01936149460', 'MS Ali Hosen', 'Mst Hayatun Nesa', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '456bb71457670d29944face12b269626', 'N/A', '2023-03-05 00:42:11'),
('localhost', 248, '1697017199129', 2023, 'Six', 'B', 'MD Zihad Sheikh', 218750, 58, 'XXXXXXXXXX', '2011-11-16', 'Male', 'undefined', '218750@abc.com', '', '01403978918', 'MD Hosen Sheikh', 'Farida Khatun', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '2c55501deddced26f5de8af7c4114c00', 'N/A', '2023-03-05 00:44:27'),
('localhost', 249, '1697487083398', 2023, 'Six', 'B', 'AB Rahman Molla', 320870, 88, 'XXXXXXXXXX', '2012-01-03', 'Male', 'undefined', '320870@abc.com', '', '01782980088', 'MD Jafar Molla', 'Mst Lipi Begum', 'Satair, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '3829938fed94644ee266818b35419f19', 'N/A', '2023-03-05 00:48:23'),
('localhost', 250, '1697049302252', 2023, 'Six', 'B', 'Soharda Rahman', 443998, 55, 'XXXXXXXXXX', '2011-11-08', 'Male', 'undefined', '443998@abc.com', '', '01718272789', 'Mezbaur Rahman', 'Farzana Sultana Sumi', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '7f9953c4da9a1bea89605fa23a3a8e52', 'N/A', '2023-03-05 00:51:20'),
('localhost', 251, '1697036149346', 2023, 'Six', 'B', 'Apan Saha', 471231, 4, 'XXXXXXXXXX', '2012-01-22', 'Male', 'undefined', '471231@abc.com', '', '01712450875', 'Priyo Nath Saha', 'Chinu Rani Saha', 'Amgram, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'f32457e5271ea3fb351dc6f526173344', 'N/A', '2023-03-05 01:00:36'),
('localhost', 252, '1697580943774', 2023, 'Six', 'B', 'MD Masum Choudhury', 285907, 84, 'XXXXXXXXXX', '2010-03-10', 'Male', 'undefined', '285907@abc.com', '', '01313967277', 'MD AB Kaiyum', 'Mst Rekha Begum', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '661be5267e68449dd5167657c0b7ff0d', 'N/A', '2023-03-05 01:05:13'),
('localhost', 253, '1696986200501', 2023, 'Six', 'B', 'Abu Said Choudhury', 578468, 63, 'XXXXXXXXXX', '2010-10-14', 'Male', 'undefined', '578468@abc.com', '', '01975385428', 'Mst Mintu Choudhury', 'Sabina Begum', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'f6097d77efa1831e5ef2e50ced96d3f7', 'N/A', '2023-03-05 01:09:24'),
('localhost', 254, '1697085197831', 2023, 'Six', 'B', 'MD Tanzim Hosen', 87928, 51, 'XXXXXXXXXX', '2012-10-25', 'Male', 'undefined', '87928@abc.com', '', '01746271625', 'MD Imran Hosen', 'Mst Aysa Siddik', 'Joydebpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'aecb612236596f10708dc5ae9b615772', 'N/A', '2023-03-05 01:11:36'),
('localhost', 255, '1697605011651', 2023, 'Six', 'B', 'MD Tahsan Islam', 1324, 83, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '1324@abc.com', '', '01988909893', 'MD Delwar Hosen', 'Mst Tahmina Begum', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '9af1b653308b3aa91a0ebf54c9b7ca0e', 'N/A', '2023-03-05 01:22:16'),
('localhost', 256, '1697167918767', 2023, 'Six', 'B', 'MD Abid Rahman Alif', 864119, 35, 'XXXXXXXXXX', '2013-04-17', 'Male', 'undefined', '864119@abc.com', '', '01905519906', 'Obaidur Rahman', 'Khadija Begum', 'Rupopat, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'e8a417cc5c511e926c0a4cf9ab0f8b1e', 'N/A', '2023-03-05 01:24:07'),
('localhost', 257, '1697196905199', 2023, 'Six', 'B', 'MD Mehedi Hasan', 812816, 8, 'XXXXXXXXXX', '2013-12-10', 'Male', 'undefined', '812816@abc.com', '', '01719140828', 'Hosen Mohammad Mahmudul Hasan', 'Ruma Aktar', 'Baguan, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '69cd0bfd9c75f6ccbd52e1599b9ecb39', 'N/A', '2023-03-05 01:26:24'),
('localhost', 258, '1696973477911', 2023, 'Six', 'B', 'Sazzad Biswas Shakil', 56147, 14, 'XXXXXXXXXX', '2012-01-15', 'Male', 'undefined', '56147@abc.com', '', '01932516425', 'MD Faruk Biswas', 'Mst khushi Begum', 'Amgram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '2debbea764730815fd7adc5094425f27', 'N/A', '2023-03-05 01:28:06'),
('localhost', 259, '1697030536419', 2023, 'Six', 'B', 'MD Abu Ibrahim Barkati', 451831, 32, 'XXXXXXXXXX', '2011-09-20', 'Male', 'undefined', '451831@abc.com', '', '01968460413', 'MD Abu  Azad Barkati', 'Lima', 'Sotashi, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'aeaad6e3813ba70d6595437d964f7bda', 'N/A', '2023-03-05 01:30:43'),
('localhost', 260, '1697038892541', 2023, 'Six', 'B', 'Mashfin Mahin', 11325, 28, 'XXXXXXXXXX', '2012-07-16', 'Male', 'undefined', '11325@abc.com', '', '01819042712', 'MD Mojid Sheikh', 'Dulali', 'Myna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '1dfbaf260bfe5571ebebe6473fc4086f', 'N/A', '2023-03-05 01:33:04'),
('localhost', 261, '1697226477358', 2023, 'Six', 'C', 'MD.Tamim MIa', 204338, 89, 'XXXXXXXXXX', '2012-03-07', 'Male', 'undefined', '204338@abc.com', '', '01920406293', 'MD. Mukul Mia', 'Mst. Bina Begum', 'Kushadangga,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '6af775f8e4de85c61304c81efc935751', 'N/A', '2023-03-05 05:02:26'),
('localhost', 262, '1697295547774', 2023, 'Six', 'C', 'Tanvir sheikh', 36346, 87, 'XXXXXXXXXX', '2010-07-13', 'Male', 'undefined', '36346@abc.com', '', '01311936773', 'MD.Helal Sheikh', 'Merina', 'Loknath,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '07c52eedb566469ac17d20e880889eb0', 'N/A', '2023-03-05 05:07:11'),
('localhost', 263, '1697769710783', 2023, 'Six', 'C', 'MD. Irteja Labib', 228156, 43, 'XXXXXXXXXX', '2012-12-01', 'Male', 'undefined', '228156@abc.com', '', '01733397720', 'MD.Abu Sait', 'Amina Aktar', 'Solna,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '3f69b5efac300a08fe14d78c10815362', 'N/A', '2023-03-05 05:10:50'),
('localhost', 264, '1697588555939', 2023, 'Six', 'C', 'MD. Parvej biswas', 587061, 60, 'XXXXXXXXXX', '2011-04-27', 'Male', 'undefined', '587061@abc.com', '', '01781113640', 'MD. Rubel Biswas', 'Parvin', 'Solna,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'defe48b272fb154fff0a9c933b1e4d94', 'N/A', '2023-03-05 05:18:01'),
('localhost', 265, '1697184849136', 2023, 'Six', 'C', 'MD. Jabir Ahamad', 240514, 32, 'XXXXXXXXXX', '2011-11-13', 'Male', 'undefined', '240514@abc.com', '', '01739143233', 'MD. Ohidur Rahman', 'JoliAkter', 'Cornarandia,Alfadangga,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'da0c069a41fc4be5143d5316c3bb0cf4', 'N/A', '2023-03-05 05:21:44'),
('localhost', 266, '1697464902151', 2023, 'Six', 'C', 'MD. Rabbi', 276967, 28, 'XXXXXXXXXX', '2012-11-11', 'Male', 'undefined', '276967@abc.com', '', '01724196515', 'MD. Ikbal Hosen', 'Lakisultana', 'Kamargram,Alfadangga,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '3a3ef0bdb72474966f7579ad61995f7a', 'N/A', '2023-03-05 05:26:21'),
('localhost', 267, '1697438564785', 2023, 'Six', 'C', 'MD. Mehedi Hasan', 573611, 88, 'XXXXXXXXXX', '2011-02-01', 'Male', 'undefined', '573611@abc.com', '', '01887677354', 'Islam Mollah', 'Rojina', 'AmGram,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '49f0e2195429b06b508eb15cb4406e05', 'N/A', '2023-03-05 05:30:17'),
('localhost', 268, '1697382438813', 2023, 'Six', 'B', 'MD Baiyat Islam Nil', 604599, 49, 'XXXXXXXXXX', '2013-01-17', 'Male', 'undefined', '604599@abc.com', '', '01713618463', 'Rakibul Islam Turan', 'Sharmin Khanom', 'Dakkhin Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'f8d9fe2c2e439baf7d032fbada3eba67', 'N/A', '2023-03-06 04:20:37'),
('localhost', 269, '1697266369681', 2023, 'Six', 'B', 'Habibur Molla', 200173, 66, 'XXXXXXXXXX', '2007-05-17', 'Male', 'undefined', '200173@abc.com', '', '01920673730', 'MD Lutfar Molla', 'Mst Bilkis Begum', 'Baguan, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '2561cbefd335a599f84ccde2f97ced76', 'N/A', '2023-03-06 04:22:51'),
('localhost', 270, '1697682586109', 2023, 'Six', 'B', 'MD Ruhul Amin', 191161, 41, 'XXXXXXXXXX', '2011-09-28', 'Male', 'undefined', '191161@abc.com', '', '01613295870', 'MD Robiul Molla', 'Mst Rina Aktar', 'Thakurpur, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'ebde9b491ccfbc75fe775d3e12f55b9e', 'N/A', '2023-03-06 04:24:49'),
('localhost', 271, '1697038434906', 2023, 'Six', 'B', 'Rifat Sheikh', 128886, 91, 'XXXXXXXXXX', '2011-01-15', 'Male', 'undefined', '128886@abc.com', '', '01994093762', 'Farid Sheikh', 'Mst Sabina Aktar', 'Kolaron, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '07780e59fba160440bbbdd2b1fad799d', 'N/A', '2023-03-06 04:27:12'),
('localhost', 272, '1697223614075', 2023, 'Six', 'B', 'Abdullah', 639545, 90, 'XXXXXXXXXX', '2010-07-14', 'Male', 'undefined', '639545@abc.com', '', '0919878609', 'Nur Islam', 'Sahina Begum', 'Kolaron, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'e2739d87df4ec5ee71fc27b8fa2f6b6f', 'N/A', '2023-03-06 04:30:38'),
('localhost', 273, '1697258165276', 2023, 'Six', 'B', 'Arijit Saha', 352741, 42, 'XXXXXXXXXX', '2012-06-24', 'Male', 'undefined', '352741@abc.com', '', '01715342157', 'Ganesh Chandra Saha', 'Tusi Saha', 'Boronagar, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '1ca664276929e622ccd8ab7f09afe7c3', 'N/A', '2023-03-06 04:34:37'),
('localhost', 274, '1697629193617', 2023, 'Six', 'B', 'Akash Roy', 480853, 74, 'XXXXXXXXXX', '2012-02-08', 'Male', 'undefined', '480853@abc.com', '', '01750075990', 'Prashanta Kumar Roy', 'Lipa Roy', 'Baguan, Boalmari, Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '6ea2d30ad2b70845ffe276b06eca62e7', 'N/A', '2023-03-06 04:36:21'),
('localhost', 275, '1697027270693', 2023, 'Six', 'B', 'MD Sakib Al Mahmud', 329718, 16, 'XXXXXXXXXX', '2012-12-31', 'Male', 'undefined', '329718@abc.com', '', '01918155004', 'MD Tuku Mia', 'Mst Fatema Aktar', 'Kamargram, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '710421b7bd2bd53c84552ccde376e3b6', 'N/A', '2023-03-06 04:39:06'),
('localhost', 276, '1697390470880', 2023, 'Six', 'B', 'Sabid Talukdar', 476690, 30, 'XXXXXXXXXX', '2012-02-14', 'Male', 'undefined', '476690@abc.com', '', '01722235502', 'MD Moklechur Rahman', 'Mst Korna Parvin', 'Adharkotha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'fee9896ef90f796e9634ab167d67d798', 'N/A', '2023-03-06 04:42:28'),
('localhost', 277, '1697842797634', 2023, 'Six', 'B', 'MD Rezwan Islam', 741155, 10, 'XXXXXXXXXX', '2011-11-03', 'Male', 'undefined', '741155@abc.com', '', '01734011406', 'MD Sohel Rana Mukul', 'Mst Nasima Parvin', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'cbb02fa98f333901566fe06d3718844b', 'N/A', '2023-03-06 04:46:30'),
('localhost', 278, '1696953883840', 2023, 'Six', 'B', 'Mynul Islam', 32838, 92, 'XXXXXXXXXX', '2011-08-20', 'Male', 'undefined', '32838@abc.com', '', '01312702326', 'Abul Hasan Roni', 'Mst Nazma Begum', 'Gunbaha, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '20cad17fb75cc425946637d3098f97ee', 'N/A', '2023-03-06 04:51:30'),
('localhost', 279, '1697383761908', 2023, 'Six', 'B', 'MD Wahid ', 187143, 93, 'XXXXXXXXXX', '2011-09-06', 'Male', 'undefined', '187143@abc.com', '', '01735805478', 'MD Abdul Halim SHeikh', 'Sultana Begum', 'Chalinagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '468fba95e3931e447f259619ef1e892c', 'N/A', '2023-03-06 04:53:06'),
('localhost', 280, '1697383093018', 2023, 'Six', 'B', 'Tamim Molla', 592972, 61, 'XXXXXXXXXX', '2010-01-05', 'Male', 'undefined', '592972@abc.com', '', '01811568615', 'Palash Molla', 'Taslima Begum', 'Solna, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'a737ffcff584b93eac7f9f8ef197993d', 'N/A', '2023-03-06 04:56:00'),
('localhost', 281, '1697716593291', 2023, 'Six', 'C', 'Navanil Mukharjee', 800134, 62, 'XXXXXXXXXX', '2012-01-01', 'Male', 'undefined', '800134@abc.com', '', '01710586440', 'Nikhil Mukharrji', 'Roma Roy', 'HarihorNagar ,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'b2ac92eb8f23d65a3775b5809402ed8e', 'N/A', '2023-03-13 14:24:26'),
('localhost', 282, '1697185682636', 2023, 'Six', 'C', 'Kh.Mani Mukharjee', 818707, 18, 'XXXXXXXXXX', '2012-06-20', 'Female', 'undefined', '818707@abc.com', '', '00000000000', 'Kh.Abu Morsalin ', 'Aktari Jahan', 'Uttar Shibpur ,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'ab800426290fb0a80f7b85586547fd73', 'N/A', '2023-03-13 14:31:18'),
('localhost', 283, '1697171848421', 2023, 'Six', 'C', 'MD. Najmul', 132652, 65, 'XXXXXXXXXX', '2011-12-22', 'Male', 'undefined', '132652@abc.com', '', '0186741962', 'Najir Hosen', 'Mst.Khadija Sultana', 'Omrrita Nagar,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'f3dfff794c010940c9d6649355759e95', 'N/A', '2023-03-13 15:06:05'),
('localhost', 284, '1697364745747', 2023, 'Six', 'C', 'Savan Kundu', 259710, 24, 'XXXXXXXXXX', '2011-07-16', 'Male', 'undefined', '259710@abc.com', '', '01714884070', 'Samal Kundu', 'Jhunu Kundu', 'RamNagar,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '196193340a3799549e4cf04f0da40730', 'N/A', '2023-03-13 15:16:45'),
('localhost', 285, '1697180344412', 2023, 'Six', 'C', 'MD.Mijan', 170927, 83, 'XXXXXXXXXX', '2009-11-07', 'Male', 'undefined', '170927@abc.com', '', '01925963697', 'MD.Habibur Rahran', 'Homneyara', 'Gunbaha,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'b89083f47ee447c37cae968edebad131', 'N/A', '2023-03-13 15:20:39'),
('localhost', 286, '1697480085764', 2023, 'Six', 'C', 'MD. Anjis Ur Rahman', 248331, 72, 'XXXXXXXXXX', '2012-07-19', 'Male', 'undefined', '248331@abc.com', '', '01796203456', 'MD.Monirul Jaman', 'Shamima Khandakar', 'Alfadangya,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'cd3c3f3570241566a3e6658a389a7150', 'N/A', '2023-03-13 15:25:42'),
('localhost', 287, '1697717084669', 2023, 'Six', 'C', 'Md.Niyamul Hasan Parash', 157978, 68, 'XXXXXXXXXX', '2012-08-21', 'Male', 'undefined', '157978@abc.com', '', '01713548296', 'MD.Mannu Shaike', 'Sakina Khanam', 'AmGram,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '1b0a13760ea10a2ff29085d2010e205a', 'N/A', '2023-03-13 15:35:21'),
('localhost', 288, '1697666054428', 2023, 'Six', 'C', 'MD.Al Noman Khan', 288079, 1, 'XXXXXXXXXX', '2012-01-05', 'Male', 'undefined', '288079@abc.com', '', '01723146891', 'MD. Babu Khan', 'Nasrin Aktar', 'ShibGram,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '7b26fc90af75dcb69de8afbf23c144bc', 'N/A', '2023-03-13 15:44:38'),
('localhost', 289, '1697236586070', 2023, 'Six', 'C', 'Apan Saha', 854861, 12, 'XXXXXXXXXX', '2012-10-19', 'Male', 'undefined', '854861@abc.com', '', '01710941024', 'Opurba Kumar Saha', 'Onjona Saha', 'AmNagar,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '0a200976048f27faedb63814805cb499', 'N/A', '2023-03-13 15:49:45'),
('localhost', 290, '1697808371141', 2023, 'Six', 'C', 'MD.Fahim Molla ', 201667, 36, 'XXXXXXXXXX', '2012-11-01', 'Male', 'undefined', '201667@abc.com', '', '01959526543', 'MD.Maruf ', 'Mst.Dipali Begum', 'Solna,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '5b2d390d60716e24c537e873ee11e287', 'N/A', '2023-03-13 15:56:16'),
('localhost', 291, '1697125298033', 2023, 'Six', 'C', 'Shahriya Mafis Riday', 116111, 37, 'XXXXXXXXXX', '2012-06-18', 'Male', 'undefined', '116111@abc.com', '', '01930962841', 'MD.Shah Alam', 'Mst.Sabina Begum', 'RayPur,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '275e1f4e03baebe94ff821427544f7c3', 'N/A', '2023-03-13 16:01:50'),
('localhost', 292, '1697389789713', 2023, 'Six', 'C', 'Abir Hasnat', 563498, 51, 'XXXXXXXXXX', '2011-07-16', 'Male', 'undefined', '563498@abc.com', '', '01747648400', 'MD.Amin biswas', 'Farjana', 'Solna,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'cc3750c2f28d6544661f45564bdb3eca', 'N/A', '2023-03-13 17:00:35'),
('localhost', 293, '1697472018745', 2023, 'Six', 'C', 'MD.Tasin Rahaman cad', 202448, 77, 'XXXXXXXXXX', '2012-06-09', 'Male', 'undefined', '202448@abc.com', '', '01722689116', 'MD.Sobur Khan', 'Mst.Reshma Parvin', 'FelanNagar,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '0dcd6f56a9c3f629079a19638e9a5a15', 'N/A', '2023-03-13 17:05:54'),
('localhost', 294, '1697176640993', 2023, 'Six', 'C', 'Mahin Mir', 807554, 40, 'XXXXXXXXXX', '2012-12-12', 'Male', 'undefined', '807554@abc.com', '', '01733146330', 'MD. Milan Mir', 'Mst. Rafeja Begum', 'Amgram,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '6a4b15a7f854987039d3ca2fb9b3af37', 'N/A', '2023-03-13 17:18:28'),
('localhost', 295, '1697108937243', 2023, 'Six', 'C', 'MD. Fajale Rabbi', 791363, 92, 'XXXXXXXXXX', '2010-01-31', 'Male', 'undefined', '791363@abc.com', '', '01716881330', 'MD.Milan Sheikh ', 'Jhorna Begum', 'Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '8e62a21233632236ebeaee1f215ac67b', 'N/A', '2023-03-13 17:25:10'),
('localhost', 296, '1697346908957', 2023, 'Six', 'C', 'MD. Talha Ahmed', 761936, 41, 'XXXXXXXXXX', '2012-05-06', 'Male', 'undefined', '761936@abc.com', '', '01921669753', 'MD. Bulbul Ahmed', 'Resma Begum', 'Amgram,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '85104b414701677f815f063c9ce9f448', 'N/A', '2023-03-13 17:31:19'),
('localhost', 297, '1697292208751', 2023, 'Six', 'C', 'Shuvra Dash', 69941, 93, 'XXXXXXXXXX', '2019-10-21', 'Male', 'undefined', '69941@abc.com', '', '01782982401', 'Bijoy Dash', 'Mitali Dash', 'Kalaran,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'c4e26b007d593c7e5753e30f8ff1478c', 'N/A', '2023-03-13 17:37:25'),
('localhost', 298, '1697585530666', 2023, 'Six', 'C', 'Junayet Islam', 701819, 6, 'XXXXXXXXXX', '2013-02-11', 'Male', 'undefined', '701819@abc.com', '', '01731307056', 'MD. Montu Molla', 'Jahanara Begum', 'Muktapur,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '452ad77b497d0cce1457a1b81bf04773', 'N/A', '2023-03-13 17:42:01'),
('localhost', 299, '1697340545858', 2023, 'Six', 'C', 'Sudipto Loskor', 125241, 66, 'XXXXXXXXXX', '2012-07-09', 'Male', 'undefined', '125241@abc.com', '', '01978700526', 'Sumir Kumar Loskor', 'Shilpi Saha', 'Kamargram,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'dd3abbd1e2a24fbb947571a702d1ad35', 'N/A', '2023-03-13 17:45:54'),
('localhost', 300, '1697672302214', 2023, 'Six', 'C', 'Nayon Biswas', 498821, 75, 'XXXXXXXXXX', '2012-05-20', 'Male', 'undefined', '498821@abc.com', '', '01724249050', 'Zoges condro biswas', 'Sujata Rani Datto ', 'Cor Padmobila,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'ce39efd746ab85f7bdb09239c88be7b9', 'N/A', '2023-03-13 17:52:51'),
('localhost', 302, '1697574970318', 2023, 'Six', 'C', 'MD. Musa Biswas ', 267221, 94, 'XXXXXXXXXX', '2008-10-29', 'Male', 'undefined', '267221@abc.com', '', '01910299619', 'Amiriuddin Biswas', 'MRS.Sahida Begum ', 'Sotashi,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '0e29506af0e2caf43e32b658b2486094', 'N/A', '2023-03-13 18:01:05'),
('localhost', 303, '1697761304508', 2023, 'Six', 'C', 'Pranjit Biswas', 855841, 56, 'XXXXXXXXXX', '2010-05-16', 'Male', 'undefined', '855841@abc.com', '', '01728336387', 'Nripen Kumar Biswas', 'Pobonna Rani Biswas', 'Sotashi,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '80b7632eb010cc4ade28b03bd7af6e35', 'N/A', '2023-03-13 18:04:27'),
('localhost', 304, '1697441303910', 2023, 'Six', 'C', 'MD. Rmim Molla', 693522, 99, 'XXXXXXXXXX', '2010-12-21', 'Male', 'undefined', '693522@abc.com', '', '01866769198', 'MD.Robiul Islam Molla', 'Mst. Taslima Begum', 'Tonarcor ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '47b3cd8f6273a9866b7117e3a17a2b4d', 'N/A', '2023-03-14 02:01:16'),
('localhost', 305, '1697603948770', 2023, 'Six', 'C', 'MD. Mehedi Molla', 21656, 95, 'XXXXXXXXXX', '2012-02-02', 'Male', 'undefined', '21656@abc.com', '', '01708779973', 'MD. Milton Molla', 'Asma Begum', 'Kushadanga ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '710a439d6f9ad75b4f64de528cb3f43d', 'N/A', '2023-03-14 02:03:24'),
('localhost', 306, '1697816004852', 2023, 'Six', 'C', 'Rifat Haq', 860429, 35, 'XXXXXXXXXX', '2012-02-26', 'Male', 'undefined', '860429@abc.com', '', '01933839299', 'Nayon ', 'Seli Akter', 'Raypur ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'c975a55de8f7af780980ae1fe8a6000b', 'N/A', '2023-03-14 02:05:47'),
('localhost', 307, '1697483474135', 2023, 'Six', 'C', 'MD. Hosain Miah', 348620, 2, 'XXXXXXXXXX', '2009-01-05', 'Male', 'undefined', '348620@abc.com', '', '01955207915', 'Abul Hasan', 'Mst. Sajeda akter', 'U.Cornarandia ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '6a2e4eeead53d8b27e744afbde942062', 'N/A', '2023-03-14 02:07:49'),
('localhost', 308, '1697215086970', 2023, 'Six', 'C', 'MD. Jannatul Ferdous Molla', 456901, 23, 'XXXXXXXXXX', '2011-06-12', 'Male', 'undefined', '456901@abc.com', '', '01932398157', 'MD. Shwkat Molla', 'Jabeda Begum', 'HariharNagar ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '43deed1eef146efa56c7d3f67f63437a', 'N/A', '2023-03-14 02:11:47'),
('localhost', 309, '1697822703445', 2023, 'Six', 'C', 'Rothi Gayali', 357876, 82, 'XXXXXXXXXX', '2011-12-16', 'Male', 'undefined', '357876@abc.com', '', '01866285000', 'Rabin Gyali', 'Sucutra Rani Gyali', 'Kamargram ,Boalmari ,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'b9fa5f09f65acd84351be9292bebd38a', 'N/A', '2023-03-14 02:16:02'),
('localhost', 310, '1697412512043', 2023, 'Six', 'C', 'Sajib Sheikh', 212629, 13, 'XXXXXXXXXX', '2010-10-02', 'Male', 'undefined', '212629@abc.com', '', '01736786420', 'MD. Juyel Sheikh', 'Kakoli Parvin', 'Amgram ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'ccbd55c76a2310d987c8ea192df5dfb1', 'N/A', '2023-03-14 02:19:03');
INSERT INTO `students` (`domain`, `ID`, `student_uuid`, `session`, `class`, `section`, `name`, `student_id`, `roll`, `reg`, `birth_date`, `gender`, `blood_group`, `email`, `phone`, `telephone`, `father_name`, `mother_name`, `address`, `religion`, `admission_date`, `hobbies`, `avatar`, `facebook_link`, `password`, `quote`, `at_date`) VALUES
('localhost', 311, '1697779622386', 2023, 'Six', 'C', 'Ovijeet paul', 779912, 53, 'XXXXXXXXXX', '2012-01-12', 'Male', 'undefined', '779912@abc.com', '', '01739971623', 'Ananda Kumar Paul', 'Sabita Pal', 'Myna ,Boalmari ,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '70a9a650be37826486393b3cdbca2550', 'N/A', '2023-03-14 02:23:31'),
('localhost', 312, '1697848426838', 2023, 'Six', 'C', 'MD.Ruhul Amin', 135245, 38, 'XXXXXXXXXX', '2012-11-17', 'Male', 'undefined', '135245@abc.com', '', '01934955820', 'MD. Nojrul Molla', 'MD.Beauty Parvin', 'KamarGram ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'c164b0606c6b9b04a8dd8f7ddf0358c6', 'N/A', '2023-03-14 02:28:01'),
('localhost', 313, '1697467565274', 2023, 'Six', 'C', 'Sparsha Mandal', 616172, 80, 'XXXXXXXXXX', '2011-09-20', 'Male', 'undefined', '616172@abc.com', '', '0178908462', 'Parimal Mandal', 'Bandana Mandal', 'Purba Kamargram ,Boalmari ,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '793d230a40d6f2ce0ab374c6d76c73ae', 'N/A', '2023-03-14 02:32:41'),
('localhost', 314, '1697548432405', 2023, 'Six', 'C', 'Abir Kanti Poul', 676414, 71, 'XXXXXXXXXX', '2011-02-28', 'Male', 'undefined', '676414@abc.com', '', '01818287041', 'Mihir Kanti Pal', 'Sumitra Rani Pal', 'Fatepur ,Boalmari ,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '13be938a2144bffa727c0105d8c82166', 'N/A', '2023-03-14 02:36:31'),
('localhost', 315, '1697222369739', 2023, 'Six', 'C', 'Ruhan', 701251, 20, 'XXXXXXXXXX', '2017-04-23', 'Male', 'undefined', '701251@abc.com', '', '01915906896', 'MD. Ersad Sheik', 'Mst. Lota Begum', 'Sotashi ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '9a32518f9107218d9f4f723f57d5d04e', 'N/A', '2023-03-14 02:39:47'),
('localhost', 316, '1697019890262', 2023, 'Six', 'C', 'MD. Abdullah Al Mamun', 788481, 10, 'XXXXXXXXXX', '2012-01-25', 'Male', 'undefined', '788481@abc.com', '', '01921396747', 'MD.Selim Sheik', 'Mst. Parvin Begum', 'Sotashi ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '76205408a660239845eaabe2146c73d2', 'N/A', '2023-03-14 02:43:12'),
('localhost', 317, '1697440793861', 2023, 'Six', 'C', 'Sohel Rana', 664031, 11, 'XXXXXXXXXX', '2009-05-01', 'Male', 'undefined', '664031@abc.com', '', '01983053376', 'MD. Robiul Sheikh', 'Mst. Salma Begum', 'Raypur ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '84b43ebad0fd88bbf5f6e8123044004f', 'N/A', '2023-03-14 02:55:53'),
('localhost', 318, '1697079024365', 2023, 'Six', 'C', 'MD. Johan Sheik', 750218, 85, 'XXXXXXXXXX', '2011-09-08', 'Male', 'undefined', '750218@abc.com', '', '01871714421', 'MD. Ruku Sheikh', 'Mst.Rehena Begum', 'Calinagar ,Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'cd36bae01386a23c4332f99a6b571466', 'N/A', '2023-03-14 03:00:55'),
('localhost', 319, '1697771006559', 2023, 'Six', 'C', 'Simanta Mukar Bouda', 376905, 90, 'XXXXXXXXXX', '2012-08-27', 'Male', 'undefined', '376905@abc.com', '', '01951910741', 'Mnoj Kumar Bouda', 'Shamali Rani Sorkar', 'Shekhar ,Boalmari ,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'aeb7106dd5af59d539120678ae688e4a', 'N/A', '2023-03-14 03:04:31'),
('localhost', 320, '1697008457284', 2023, 'Six', 'C', 'Abdur rahaman sheikh', 186141, 9, 'XXXXXXXXXX', '2010-12-23', 'Male', 'undefined', '186141@abc.com', '', '01983054347', 'Iliyas Sheikh', 'Mst.Runu  Begum', 'Kamaldia,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '3685d4f2f45b40e8ef89e91a13267ef5', 'N/A', '2023-03-14 07:26:52'),
('localhost', 321, '1697594303279', 2023, 'Six', 'C', 'Prottoy Saha', 555817, 78, 'XXXXXXXXXX', '2011-05-28', 'Male', 'undefined', '555817@abc.com', '', '01716748870', 'PongkajKumar Saha', 'Banalata Saha ', 'Shola Hati,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'f4f056ed5686af047f134a0ceb3adab2', 'N/A', '2023-03-14 07:33:03'),
('localhost', 322, '1697394481339', 2023, 'Six', 'C', 'MD. Mostafa Kamal', 292340, 57, 'XXXXXXXXXX', '2012-12-24', 'Male', 'undefined', '292340@abc.com', '', '01942507602', 'MD. Sobuj Molla', 'Mst.Smpa Khanam', 'loknath,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '98d88ec670487ef6592c55150e73cbc5', 'N/A', '2023-03-14 07:36:29'),
('localhost', 323, '1697791412043', 2023, 'Six', 'C', 'Kisar Sarkar', 244670, 39, 'XXXXXXXXXX', '2011-11-09', 'Male', 'undefined', '244670@abc.com', '', '01754978330', 'Raj Kumar Sarkar', 'Puja Sarkar', 'loknath,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '416a6eddbca42568c0a2c0bcbb34f3d1', 'N/A', '2023-03-14 07:38:45'),
('localhost', 324, '1697175063228', 2023, 'Six', 'C', 'Sheikh Sanbir Rahaman Tanay', 807513, 64, 'XXXXXXXXXX', '2012-11-27', 'Male', 'undefined', '807513@abc.com', '', '01712558002', 'Munjor Rahaman Tushar', 'Shefali Begum', 'Dadpur,Boalmari,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '9610e8f5ab5c360a73f3331562ddcaa0', 'N/A', '2023-03-14 07:44:09'),
('localhost', 325, '1697360316113', 2023, 'Six', 'C', 'MD. Najmul', 368724, 65, 'XXXXXXXXXX', '2010-12-22', 'Male', 'undefined', '368724@abc.com', '', '01867416962', 'MD.Najir Hosen', 'Mst.Khadija Sultana', 'Omrrita Nagar, Boa;mari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'b5b0ff12dd869ca4afe54f0f74787731', 'N/A', '2023-03-15 12:46:54'),
('localhost', 326, '1697320279263', 2023, 'Six', 'C', 'Tousif Ahmad', 351781, 70, 'XXXXXXXXXX', '2012-02-10', 'Male', 'undefined', '351781@abc.com', '', '01713548245', 'MD.Sanu Molla', 'Taniya Sultana', 'Shukhdev Nagar, Boalmari, Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'a73c81251d9f8851073c4a00aef30268', 'N/A', '2023-03-15 12:55:40'),
('localhost', 327, '1697819994710', 2023, 'Six', 'C', 'Tarmi Dash', 697344, 27, 'XXXXXXXXXX', '2012-04-29', 'Male', 'undefined', '697344@abc.com', '', '0171953985', 'Tpom Kumar Dash', 'Tiloka Rani Kar', 'Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'c936aeccc5b20302bd5fdba068937797', 'N/A', '2023-03-15 13:21:40'),
('localhost', 328, '1697088642658', 2023, 'Six', 'C', 'MD.Iyasin Sheikh', 395009, 91, 'XXXXXXXXXX', '2012-10-02', 'Male', 'undefined', '395009@abc.com', '', '01732771778', 'MD.Mijanur Rahman', 'Mst.Dipali Begom', 'Reni Nagar,Cad Ghat,Boalmari,Faridpur', 'Hinduism', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'a319bb21e6c745b3e341371286bb04f4', 'N/A', '2023-03-15 13:26:05'),
('localhost', 329, '1697070639910', 2023, 'Six', 'C', 'Mirza Mayaz Hosen', 640419, 79, 'XXXXXXXXXX', '2012-07-04', 'Male', 'undefined', '640419@abc.com', '', '01718163517', 'Mirza Mahsin Hosen ', 'MRS. Shahanaz Parvin ', 'Purbo Kamargram, Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'c91a567499b23822febf57c7d5481b08', 'N/A', '2023-03-15 16:15:25'),
('localhost', 330, '1697075259766', 2023, 'Six', 'C', 'Farhan ', 884190, 97, 'XXXXXXXXXX', '2012-03-04', 'Male', 'undefined', '884190@abc.com', '', '01768027853', 'Alif Nayon ', 'Fatema Sarkar  ', 'Zogibarat Boalmari ,Faridpur', 'Islam', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'b595cd39e506abdd4014ae2402c457c7', 'N/A', '2023-03-15 16:24:08'),
('localhost', 380, '1697366483862', 2023, 'Seven', 'C', 'Aronnyo Joyti Paul', 808156, 1, 'XXXXXXXXXX', '', 'Male', 'N/A', '808156@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'b499218588188850207ac0738e17096f', 'N/A', '2023-08-15 09:57:21'),
('localhost', 381, '1697381436718', 2023, 'Seven', 'C', 'Nithor Mondol', 45838, 2, 'XXXXXXXXXX', '', 'Male', 'N/A', '45838@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '00a466c78af81584e376d321f5ced6ec', 'N/A', '2023-08-15 09:57:21'),
('localhost', 382, '1696965412675', 2023, 'Seven', 'C', 'Md. Sahariar Alom', 619791, 3, 'XXXXXXXXXX', '', 'Male', 'N/A', '619791@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '821910384e81fc5c5f743a7bbb2ca848', 'N/A', '2023-08-15 09:57:21'),
('localhost', 383, '1697467767130', 2023, 'Seven', 'C', 'H. M. Moaj', 19436, 4, 'XXXXXXXXXX', '', 'Male', 'N/A', '19436@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '4ffc5cc64d2a630ce2aeee3bb6359a1a', 'N/A', '2023-08-15 09:57:21'),
('localhost', 384, '1697765135658', 2023, 'Seven', 'C', 'Tanjim', 781607, 5, 'XXXXXXXXXX', '', 'Male', 'N/A', '781607@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '02a5097eeee90d8768fdb99f6ed3c99b', 'N/A', '2023-08-15 09:57:21'),
('localhost', 385, '1697173903485', 2023, 'Seven', 'C', 'Tahmid Twha', 283175, 6, 'XXXXXXXXXX', '', 'Male', 'N/A', '283175@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '0f8cbfffcd7e9cc39b363470e6b1cd24', 'N/A', '2023-08-15 09:57:21'),
('localhost', 386, '1697498879819', 2023, 'Seven', 'C', 'Redoan Reza', 63198, 7, 'XXXXXXXXXX', '', 'Male', 'N/A', '63198@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '161ea6ad6b90cf17a6fb6b0fcb886144', 'N/A', '2023-08-15 09:57:21'),
('localhost', 387, '1697428010077', 2023, 'Seven', 'C', 'Riad Sheikh', 120954, 8, 'XXXXXXXXXX', '', 'Male', 'N/A', '120954@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '89e929c9fa5a8e502bd1691734d61718', 'N/A', '2023-08-15 09:57:21'),
('localhost', 388, '1697588224569', 2023, 'Seven', 'C', 'Taohid Taj', 620944, 9, 'XXXXXXXXXX', '', 'Male', 'N/A', '620944@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '9f1ca7603c4a898d4ec15da00d6ad1a8', 'N/A', '2023-08-15 09:57:21'),
('localhost', 389, '1697030921138', 2023, 'Seven', 'C', 'Tritha Achayara', 440639, 10, 'XXXXXXXXXX', '', 'Male', 'N/A', '440639@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '339acb43566a74ca485fafc26596ed39', 'N/A', '2023-08-15 09:57:21'),
('localhost', 390, '1697681067927', 2023, 'Seven', 'C', 'Arif', 22959, 11, 'XXXXXXXXXX', '', 'Male', 'N/A', '22959@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '678835ba35c99c55370f0db150c89ba2', 'N/A', '2023-08-15 09:57:21'),
('localhost', 391, '1697166541223', 2023, 'Seven', 'C', 'Snigdhajit Paul', 16733, 12, 'XXXXXXXXXX', '', 'Male', 'N/A', '16733@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'c3e0c95dd6239ab5822ee160f5a689a9', 'N/A', '2023-08-15 10:13:23'),
('localhost', 392, '1697686281262', 2023, 'Seven', 'C', 'Md. Umayer', 307904, 13, 'XXXXXXXXXX', '', 'Male', 'N/A', '307904@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'e1e4e5eeba9ee691ebbd718874b31e31', 'N/A', '2023-08-15 10:13:23'),
('localhost', 393, '1697794127616', 2023, 'Seven', 'C', 'Md. Saimun', 683291, 14, 'XXXXXXXXXX', '', 'Male', 'N/A', '683291@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'c20ed54b8bfdf83af6e9dd255e5bc252', 'N/A', '2023-08-15 10:13:23'),
('localhost', 394, '1696965444552', 2023, 'Seven', 'C', 'Ishan', 319971, 15, 'XXXXXXXXXX', '', 'Male', 'N/A', '319971@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '1b51b8184142ebdc59e620bc0ec72412', 'N/A', '2023-08-15 10:13:23'),
('localhost', 395, '1696953326955', 2023, 'Seven', 'C', 'Argha Kundu', 609652, 16, 'XXXXXXXXXX', '', 'Male', 'N/A', '609652@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '1040a39601f083e70593cfc768f565ac', 'N/A', '2023-08-15 10:13:23'),
('localhost', 396, '1697775573790', 2023, 'Seven', 'C', 'Shuvo Paul', 486416, 17, 'XXXXXXXXXX', '', 'Male', 'N/A', '486416@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'fbe1a69405b4ab214f631be7d833f13f', 'N/A', '2023-08-15 10:13:23'),
('localhost', 397, '1697277303232', 2023, 'Seven', 'C', 'Nurshad Alif', 66872, 18, 'XXXXXXXXXX', '', 'Male', 'N/A', '66872@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '38f7f0e09f76b6909b01b792777a46a8', 'N/A', '2023-08-15 10:13:23'),
('localhost', 398, '1697640347918', 2023, 'Seven', 'C', 'Yuboraj Shil', 297946, 19, 'XXXXXXXXXX', '', 'Male', 'N/A', '297946@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '1925f278e52930a6faab58a17ac4f87c', 'N/A', '2023-08-15 10:13:23'),
('localhost', 399, '1697424612447', 2023, 'Seven', 'C', 'Zobayer', 126687, 20, 'XXXXXXXXXX', '', 'Male', 'N/A', '126687@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '0e92f6fb76accdc711042ebae4d8bd48', 'N/A', '2023-08-15 10:13:23'),
('localhost', 400, '1696957383247', 2023, 'Seven', 'C', 'Nil Saha', 166780, 21, 'XXXXXXXXXX', '', 'Male', 'N/A', '166780@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '221cacfce41a507a9dd9514fdcc877c1', 'N/A', '2023-08-15 10:13:23'),
('localhost', 401, '1697375409383', 2023, 'Seven', 'C', 'Abhijit Shil', 331850, 22, 'XXXXXXXXXX', '', 'Male', 'N/A', '331850@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'de9e5e29e81181258efefe4596081718', 'N/A', '2023-08-15 10:13:23'),
('localhost', 402, '1697127053562', 2023, 'Seven', 'C', 'Md. Rifat', 172491, 23, 'XXXXXXXXXX', '', 'Male', 'N/A', '172491@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '54cc1d91a9598b63f86738e176a68037', 'N/A', '2023-08-15 10:13:23'),
('localhost', 403, '1697017738637', 2023, 'Seven', 'C', 'Md. Arafat', 224744, 24, 'XXXXXXXXXX', '', 'Male', 'N/A', '224744@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '7aa72c70ef26e15b3fdc701d4e3f0f40', 'N/A', '2023-08-15 10:13:23'),
('localhost', 404, '1697298182893', 2023, 'Seven', 'C', 'Salman Rahman', 774769, 24, 'XXXXXXXXXX', '', 'Male', 'N/A', '774769@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '9ff5f2619bd7d93c985c71fbfcbca289', 'N/A', '2023-08-15 10:13:23'),
('localhost', 405, '1697587216933', 2023, 'Seven', 'C', 'Yasin', 815015, 26, 'XXXXXXXXXX', '', 'Male', 'N/A', '815015@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '862dcee79aed333c6d9d995ecf8fdc08', 'N/A', '2023-08-15 10:13:23'),
('localhost', 406, '1697297152115', 2023, 'Seven', 'C', 'Amit Karmakar', 886218, 27, 'XXXXXXXXXX', '', 'Male', 'N/A', '886218@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '5bf939384512b7102be6afa341fb4490', 'N/A', '2023-08-15 10:13:23'),
('localhost', 407, '1697574417391', 2023, 'Seven', 'C', 'Rafi', 514661, 28, 'XXXXXXXXXX', '', 'Male', 'N/A', '514661@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'c6c34ee98e98f13ec3a07d042c76a658', 'N/A', '2023-08-15 10:13:23'),
('localhost', 408, '1697477932098', 2023, 'Seven', 'C', 'Shah Sultal', 690763, 29, 'XXXXXXXXXX', '', 'Male', 'N/A', '690763@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '917bd5a9db88caf3a4c29726e55b5395', 'N/A', '2023-08-15 10:13:23'),
('localhost', 409, '1697252372500', 2023, 'Seven', 'C', 'Mishkat', 44409, 30, 'XXXXXXXXXX', '', 'Male', 'N/A', '44409@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'f6c0c4f2391973795aae9fb4d9339da8', 'N/A', '2023-08-15 10:13:23'),
('localhost', 410, '1697608697748', 2023, 'Seven', 'C', 'Khalidul', 131739, 31, 'XXXXXXXXXX', '', 'Male', 'N/A', '131739@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'e38bf904a565992695175d912da46ef5', 'N/A', '2023-08-15 10:13:23'),
('localhost', 411, '1697841167655', 2023, 'Seven', 'C', 'Rudra', 8335, 32, 'XXXXXXXXXX', '', 'Male', 'N/A', '8335@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '63db7650be952645cfe1d807ce1b4580', 'N/A', '2023-08-15 10:13:23'),
('localhost', 412, '1697134662148', 2023, 'Seven', 'C', 'Abu Huraira', 67197, 33, 'XXXXXXXXXX', '', 'Male', 'N/A', '67197@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'b21e1f5b080881390d8a43c892b69113', 'N/A', '2023-08-15 10:13:23'),
('localhost', 413, '1697555970016', 2023, 'Seven', 'C', 'Munna', 133489, 34, 'XXXXXXXXXX', '', 'Male', 'N/A', '133489@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'ac994e3948714046e53391d12be5139f', 'N/A', '2023-08-15 10:13:23'),
('localhost', 414, '1697054195456', 2023, 'Seven', 'C', 'Riaz', 75349, 35, 'XXXXXXXXXX', '', 'Male', 'N/A', '75349@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'f32bc38a627109dc3c18da78984e6212', 'N/A', '2023-08-15 10:13:23'),
('localhost', 415, '1697681359746', 2023, 'Seven', 'C', 'Samir', 391505, 36, 'XXXXXXXXXX', '', 'Male', 'N/A', '391505@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '8397bc53ef4cf16aab382f32a8422a12', 'N/A', '2023-08-15 10:13:23'),
('localhost', 416, '1697412882522', 2023, 'Seven', 'C', 'Siyam', 60077, 37, 'XXXXXXXXXX', '', 'Male', 'N/A', '60077@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '86e71fce8406f86a6d9ac7637dc839b2', 'N/A', '2023-08-15 10:13:23'),
('localhost', 417, '1697284748865', 2023, 'Seven', 'C', 'Dipon Molla', 436231, 38, 'XXXXXXXXXX', '', 'Male', 'N/A', '436231@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'a21d581bc94ab4c33207cf16b0929cc6', 'N/A', '2023-08-15 10:13:23'),
('localhost', 418, '1697200715424', 2023, 'Seven', 'C', 'Tahidul', 658945, 39, 'XXXXXXXXXX', '', 'Male', 'N/A', '658945@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'ccf574dd1b959a1ff534704c317e563c', 'N/A', '2023-08-15 10:13:23'),
('localhost', 419, '1697054865526', 2023, 'Seven', 'C', 'Samiul', 557258, 40, 'XXXXXXXXXX', '', 'Male', 'N/A', '557258@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'd2e5dd29b71e593d9093f054b3e6c889', 'N/A', '2023-08-15 10:13:23'),
('localhost', 420, '1696966673242', 2023, 'Seven', 'C', 'Rahdur Rahman', 359245, 41, 'XXXXXXXXXX', '', 'Male', 'N/A', '359245@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '7c212a268ce99143d26543023ffcd088', 'N/A', '2023-08-15 10:13:23'),
('localhost', 421, '1697510792403', 2023, 'Seven', 'C', 'Tamim', 585472, 42, 'XXXXXXXXXX', '', 'Male', 'N/A', '585472@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'f7a2a6437d55fe7a7d10a2fa3b1fea2d', 'N/A', '2023-08-15 10:13:23'),
('localhost', 422, '1697210484266', 2023, 'Seven', 'C', 'Nur Nabi', 330297, 43, 'XXXXXXXXXX', '', 'Male', 'N/A', '330297@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'd47467304305381c9554c2667a4462e0', 'N/A', '2023-08-15 10:13:23'),
('localhost', 423, '1697742024535', 2023, 'Seven', 'C', 'Maruf', 342426, 44, 'XXXXXXXXXX', '', 'Male', 'N/A', '342426@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '135d7b01b4a598b5316292bb331696a9', 'N/A', '2023-08-15 10:13:23'),
('localhost', 424, '1697702793933', 2023, 'Seven', 'C', 'Soad', 549189, 45, 'XXXXXXXXXX', '', 'Male', 'N/A', '549189@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '0b031b08d59f2469d29d1d4030a9a6a2', 'N/A', '2023-08-15 10:13:23'),
('localhost', 425, '1697151749387', 2023, 'Seven', 'C', 'Sahriar', 200138, 46, 'XXXXXXXXXX', '', 'Male', 'N/A', '200138@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '1fee047735240f6b06acc89072014b8d', 'N/A', '2023-08-15 10:13:23'),
('localhost', 426, '1697426738719', 2023, 'Seven', 'C', 'Robbani', 712791, 47, 'XXXXXXXXXX', '', 'Male', 'N/A', '712791@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'adab94599012bacfd8151d1b6825079e', 'N/A', '2023-08-15 10:13:23'),
('localhost', 427, '1697516374889', 2023, 'Seven', 'C', 'Rizvi', 198057, 48, 'XXXXXXXXXX', '', 'Male', 'N/A', '198057@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '05ce0129b2becb47b80c99797e67f3fb', 'N/A', '2023-08-15 10:13:23'),
('localhost', 428, '1697554368643', 2023, 'Seven', 'C', 'Naim', 580565, 49, 'XXXXXXXXXX', '', 'Male', 'N/A', '580565@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '27661c5f83c20b6e4e9b7a63e0946e3b', 'N/A', '2023-08-15 10:13:23'),
('localhost', 429, '1697790836950', 2023, 'Seven', 'C', 'Utshab Biswas', 144998, 50, 'XXXXXXXXXX', '', 'Male', 'N/A', '144998@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '3ed2f468e3dca873bff26a3ebc127c79', 'N/A', '2023-08-15 10:13:23'),
('localhost', 430, '1697783300779', 2023, 'Seven', 'C', 'Md. Mehedi', 368003, 51, 'XXXXXXXXXX', '', 'Male', 'N/A', '368003@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'f3a3c2b09cc4a11491bd9550d7476149', 'N/A', '2023-08-15 10:13:23'),
('localhost', 431, '1696964890395', 2023, 'Seven', 'C', 'Duranta', 496506, 52, 'XXXXXXXXXX', '', 'Male', 'N/A', '496506@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '059a490fb4017ac4e2d6f9d408949318', 'N/A', '2023-08-15 10:13:23'),
('localhost', 432, '1697024701399', 2023, 'Seven', 'C', 'Rana', 721711, 53, 'XXXXXXXXXX', '', 'Male', 'N/A', '721711@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '43efb10018b044c603839eb2dbe0b387', 'N/A', '2023-08-15 10:13:23'),
('localhost', 433, '1697809929558', 2023, 'Seven', 'C', 'Rezoan', 116213, 54, 'XXXXXXXXXX', '', 'Male', 'N/A', '116213@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'e1492a8ec05bf6ad678910077b098e6c', 'N/A', '2023-08-15 10:13:23'),
('localhost', 434, '1697365861929', 2023, 'Seven', 'C', 'Arifuzzaman', 447532, 55, 'XXXXXXXXXX', '', 'Male', 'N/A', '447532@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'b96388b951195671b868e17cb2d17bfc', 'N/A', '2023-08-15 10:13:23'),
('localhost', 435, '1697456811612', 2023, 'Seven', 'C', 'Md. Sourav Biswas', 709529, 56, 'XXXXXXXXXX', '', 'Male', 'N/A', '709529@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '913c998cafe3158644ea17b1bdde1aea', 'N/A', '2023-08-15 10:13:23'),
('localhost', 436, '1697356239343', 2023, 'Seven', 'C', 'Sakibul', 363324, 57, 'XXXXXXXXXX', '', 'Male', 'N/A', '363324@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '255fe3e562de387b1ded1bfd5838fb81', 'N/A', '2023-08-15 10:13:23'),
('localhost', 437, '1697306461400', 2023, 'Seven', 'C', 'Biswas Sarkar', 133324, 58, 'XXXXXXXXXX', '', 'Male', 'N/A', '133324@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'ded63b3c0c98587f3e35a8ce9279b4e9', 'N/A', '2023-08-15 10:13:23'),
('localhost', 438, '1697030637131', 2023, 'Seven', 'C', 'Baijit Sheikh', 44112, 59, 'XXXXXXXXXX', '', 'Male', 'N/A', '44112@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'c61992cbc55e1502a1b185bd2047f829', 'N/A', '2023-08-15 10:13:23'),
('localhost', 439, '1697654335562', 2023, 'Seven', 'C', 'Fahim Molla', 746216, 60, 'XXXXXXXXXX', '', 'Male', 'N/A', '746216@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '3fbfe27045a81879df651d825799f81a', 'N/A', '2023-08-15 10:13:23'),
('localhost', 440, '1697752230773', 2023, 'Seven', 'C', 'Aditya Rajbongshi', 99611, 61, 'XXXXXXXXXX', '', 'Male', 'N/A', '99611@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '0bc1a4a7be11ac0a9b6ba72ed53f9563', 'N/A', '2023-08-15 10:13:23'),
('localhost', 441, '1697335216475', 2023, 'Seven', 'C', 'Md. Moksedul ', 506337, 62, 'XXXXXXXXXX', '', 'Male', 'N/A', '506337@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '6b1d9cd29e9f8e8888120747ee4185bd', 'N/A', '2023-08-15 10:13:23'),
('localhost', 442, '1697158820081', 2023, 'Seven', 'C', 'Rifat', 170996, 63, 'XXXXXXXXXX', '', 'Male', 'N/A', '170996@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '293f2daa881cf703195bfc5bc787d827', 'N/A', '2023-08-15 10:13:23'),
('localhost', 443, '1697416672971', 2023, 'Seven', 'C', 'Partha Paul', 314747, 64, 'XXXXXXXXXX', '', 'Male', 'N/A', '314747@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '6fe7cccd8ad260db2a8d689014365e76', 'N/A', '2023-08-15 10:13:23'),
('localhost', 444, '1697818827883', 2023, 'Seven', 'C', 'Zaed Hossen', 412538, 65, 'XXXXXXXXXX', '', 'Male', 'N/A', '412538@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'ed52f90bd84aa3a0a6fa7683648232b5', 'N/A', '2023-08-15 10:13:23'),
('localhost', 445, '1697846386644', 2023, 'Seven', 'C', 'Badhan Rajbongshi', 530642, 66, 'XXXXXXXXXX', '', 'Male', 'N/A', '530642@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'abdc491ce06bb38e75531b78b2d78491', 'N/A', '2023-08-15 10:13:23'),
('localhost', 446, '1697593885547', 2023, 'Seven', 'C', 'Tamim', 517054, 67, 'XXXXXXXXXX', '', 'Male', 'N/A', '517054@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '389d75f9f3bb6aab817c083a8a4a9b42', 'N/A', '2023-08-15 10:13:23'),
('localhost', 447, '1697805781452', 2023, 'Seven', 'C', 'Rofiqul', 622017, 68, 'XXXXXXXXXX', '', 'Male', 'N/A', '622017@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '03ca54b49395f20b2ffeffcfac1acdd3', 'N/A', '2023-08-15 10:13:23'),
('localhost', 448, '1697772916876', 2023, 'Seven', 'C', 'Soron Sarkar', 885383, 69, 'XXXXXXXXXX', '', 'Male', 'N/A', '885383@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '0823c6d8c6808f4f3c9d58735872446a', 'N/A', '2023-08-15 10:13:23'),
('localhost', 449, '1697182189810', 2023, 'Seven', 'C', 'Raihan Sheikh', 663490, 70, 'XXXXXXXXXX', '', 'Male', 'N/A', '663490@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '0e7d34cc9217ba7554b24b97b4248c3b', 'N/A', '2023-08-15 10:13:23'),
('localhost', 450, '1697823413820', 2023, 'Seven', 'C', 'Hanif Molla', 54137, 71, 'XXXXXXXXXX', '', 'Male', 'N/A', '54137@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '8840dc4f83c0055d03ffcfe3bfe81928', 'N/A', '2023-08-15 10:13:23'),
('localhost', 451, '1697572285964', 2023, 'Seven', 'C', 'Partha Mojumder', 397675, 72, 'XXXXXXXXXX', '', 'Male', 'N/A', '397675@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '7b41491ba63f33ca02d3ca231369b134', 'N/A', '2023-08-15 10:13:23'),
('localhost', 452, '1697431360311', 2023, 'Seven', 'C', 'Amir Hamja', 74736, 73, 'XXXXXXXXXX', '', 'Male', 'N/A', '74736@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '314075cf6dd7478a25d46ba3a6c33ea4', 'N/A', '2023-08-15 10:24:36'),
('localhost', 453, '1697841054543', 2023, 'Seven', 'C', 'Abdullah', 813754, 74, 'XXXXXXXXXX', '', 'Male', 'N/A', '813754@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '5fc75fb8a489203c833c805b34857864', 'N/A', '2023-08-15 10:24:36'),
('localhost', 454, '1697597338628', 2023, 'Seven', 'C', 'Samiul', 586256, 75, 'XXXXXXXXXX', '', 'Male', 'N/A', '586256@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '41c0e4c973ac699bb4d08fda9f7bb27f', 'N/A', '2023-08-15 10:24:36'),
('localhost', 455, '1697598429342', 2023, 'Seven', 'C', 'Rifat', 507205, 76, 'XXXXXXXXXX', '', 'Male', 'N/A', '507205@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '82a4ff173c70b5992d9ebefbec1c070e', 'N/A', '2023-08-15 10:24:36'),
('localhost', 456, '1697133653612', 2023, 'Seven', 'C', 'Saiful', 447986, 77, 'XXXXXXXXXX', '', 'Male', 'N/A', '447986@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'b35952aeb89ee5340e1852c9b68ce8eb', 'N/A', '2023-08-15 10:24:36'),
('localhost', 457, '1697243230612', 2023, 'Seven', 'C', 'Hasib', 129825, 78, 'XXXXXXXXXX', '', 'Male', 'N/A', '129825@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '77ce13dbd11b20c7610e31e7c91df9cd', 'N/A', '2023-08-15 10:24:36'),
('localhost', 458, '1697681261399', 2023, 'Seven', 'C', 'Tanzin', 382193, 79, 'XXXXXXXXXX', '', 'Male', 'N/A', '382193@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '9c5be0ae9bfc876a0f6a45e5009a3ba1', 'N/A', '2023-08-15 10:24:36'),
('localhost', 459, '1697503672705', 2023, 'Seven', 'C', 'Samiul', 578929, 80, 'XXXXXXXXXX', '', 'Male', 'N/A', '578929@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '2f9fc5b641ae3cec967ab94d404b0c1e', 'N/A', '2023-08-15 10:24:36'),
('localhost', 460, '1697783892898', 2023, 'Seven', 'C', 'Noyon', 311674, 81, 'XXXXXXXXXX', '', 'Male', 'N/A', '311674@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '4a49bf8affa270799d9d6a52bbfba426', 'N/A', '2023-08-15 10:24:36'),
('localhost', 461, '1697113121642', 2023, 'Seven', 'C', 'Partha Saha', 147923, 82, 'XXXXXXXXXX', '', 'Male', 'N/A', '147923@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'ffddac019840e0bc80f216076724f9fd', 'N/A', '2023-08-15 10:24:36'),
('localhost', 462, '1697756931175', 2023, 'Seven', 'C', 'Sakibul', 134792, 83, 'XXXXXXXXXX', '', 'Male', 'N/A', '134792@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'dfa67df8b83cda8c47890ab8ef0114fd', 'N/A', '2023-08-15 10:24:36'),
('localhost', 463, '1697509474668', 2023, 'Seven', 'C', 'Rezoan', 364342, 84, 'XXXXXXXXXX', '', 'Male', 'N/A', '364342@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '0d5cabe139b1e2b77b19d12e466c2776', 'N/A', '2023-08-15 10:24:36'),
('localhost', 464, '1697665055686', 2023, 'Seven', 'C', 'Masum', 359010, 85, 'XXXXXXXXXX', '', 'Male', 'N/A', '359010@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'cff7b77daecdcd163e67a3b46deacf11', 'N/A', '2023-08-15 10:24:36'),
('localhost', 465, '1697285420418', 2023, 'Seven', 'C', 'Sajim', 225728, 86, 'XXXXXXXXXX', '', 'Male', 'N/A', '225728@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '71bc6d19cec7793791fc6b1ab7263a8e', 'N/A', '2023-08-15 10:24:36'),
('localhost', 466, '1697774535516', 2023, 'Seven', 'C', 'Mustakim', 114087, 87, 'XXXXXXXXXX', '', 'Male', 'N/A', '114087@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'babd07fd9c726de5937609d150bff6be', 'N/A', '2023-08-15 10:24:36'),
('localhost', 467, '1697746520042', 2023, 'Seven', 'C', 'Sahriya', 1135, 88, 'XXXXXXXXXX', '', 'Male', 'N/A', '1135@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '4dab011971bfb7e830947fc680742fee', 'N/A', '2023-08-15 10:24:36'),
('localhost', 468, '1697195906193', 2023, 'Seven', 'C', 'Simanata Sarkar', 627743, 89, 'XXXXXXXXXX', '', 'Male', 'N/A', '627743@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'd79218f863fb34b352028495fc2b799f', 'N/A', '2023-08-15 10:24:36'),
('localhost', 469, '1696972235853', 2023, 'Seven', 'C', 'Piyal', 809183, 90, 'XXXXXXXXXX', '', 'Male', 'N/A', '809183@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'e0fa38a084684b70145e13926afddde9', 'N/A', '2023-08-15 10:24:36'),
('localhost', 470, '1697681545698', 2023, 'Seven', 'C', 'Sakil', 67463, 91, 'XXXXXXXXXX', '', 'Male', 'N/A', '67463@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '1ab8fd81189d44e6e7d661cf9915ea2a', 'N/A', '2023-08-15 10:24:36'),
('localhost', 471, '1697720128790', 2023, 'Seven', 'C', 'Souvik', 538010, 92, 'XXXXXXXXXX', '', 'Male', 'N/A', '538010@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '1f985fbe125f42434463ebfb22528c56', 'N/A', '2023-08-15 10:24:36'),
('localhost', 472, '1697482774273', 2023, 'Seven', 'C', 'Taj', 169645, 93, 'XXXXXXXXXX', '', 'Male', 'N/A', '169645@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'a706474e64ff4964f81c73800eb73eab', 'N/A', '2023-08-15 10:24:36'),
('localhost', 473, '1697483729485', 2023, 'Seven', 'C', 'Soyad', 274233, 94, 'XXXXXXXXXX', '', 'Male', 'N/A', '274233@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '458483613f87e2d0ccc45f08c5771b9c', 'N/A', '2023-08-15 10:24:36'),
('localhost', 474, '1697436571068', 2023, 'Seven', 'C', 'Simanta Kumar', 628666, 95, 'XXXXXXXXXX', '', 'Male', 'N/A', '628666@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'f8e9aadb38460dd2a90c0022176c14c7', 'N/A', '2023-08-15 10:24:36'),
('localhost', 475, '1697013818930', 2023, 'Seven', 'C', 'Bini Amin', 530518, 96, 'XXXXXXXXXX', '', 'Male', 'N/A', '530518@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'aa2b69805dc2bd524fc6be988bff73a0', 'N/A', '2023-08-15 10:24:36'),
('localhost', 476, '1697468419567', 2023, 'Seven', 'C', 'Mahmud', 867758, 97, 'XXXXXXXXXX', '', 'Male', 'N/A', '867758@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '73b532dcbe26fb56d524006ba54f64c4', 'N/A', '2023-08-15 10:24:36'),
('localhost', 477, '1697280898162', 2023, 'Seven', 'C', 'Safat', 392714, 98, 'XXXXXXXXXX', '', 'Male', 'N/A', '392714@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '6a75cd9c46262fa9104604ba0ca1f1d6', 'N/A', '2023-08-15 10:24:36'),
('localhost', 478, '1697198323425', 2023, 'Seven', 'C', 'Rumin', 845355, 99, 'XXXXXXXXXX', '', 'Male', 'N/A', '845355@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '413ca4ec6157ec3acfef47a6bafdd71e', 'N/A', '2023-08-15 10:24:36'),
('localhost', 479, '1697226816081', 2023, 'Seven', 'C', 'Supta Benarjee', 764953, 100, 'XXXXXXXXXX', '', 'Male', 'N/A', '764953@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '16298fcf0136db5b265eb9ee0cbd8850', 'N/A', '2023-08-15 10:24:36'),
('localhost', 480, '1697423543476', 2023, 'Seven', 'C', 'Nur Alom', 515624, 101, 'XXXXXXXXXX', '', 'Male', 'N/A', '515624@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'df3e127721a689bc87a06aa11dcfe47a', 'N/A', '2023-08-15 10:24:36'),
('localhost', 481, '1696990018806', 2023, 'Seven', 'C', 'Bayejit', 561907, 102, 'XXXXXXXXXX', '', 'Male', 'N/A', '561907@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '39cebad505f6052e5a7c7f378d55e849', 'N/A', '2023-08-15 10:24:36'),
('localhost', 482, '1697472301479', 2023, 'Seven', 'C', 'Husain', 808601, 103, 'XXXXXXXXXX', '', 'Male', 'N/A', '808601@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '4527de4882e22e48c281b1c22024ef63', 'N/A', '2023-08-15 10:24:36'),
('localhost', 483, '1697698550981', 2023, 'Seven', 'C', 'Ahosanullah', 331508, 104, 'XXXXXXXXXX', '', 'Male', 'N/A', '331508@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'c03473d6b121d29d88d40d3890462c4a', 'N/A', '2023-08-15 10:24:36'),
('localhost', 484, '1697786247027', 2023, 'Seven', 'C', 'Debojit Paul', 157072, 105, 'XXXXXXXXXX', '', 'Male', 'N/A', '157072@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '5f2b546fd7b5f1d7afbb80ee4afdf56e', 'N/A', '2023-08-15 10:24:36'),
('localhost', 485, '1697195627585', 2023, 'Seven', 'C', 'Md. Shahbul', 134739, 106, 'XXXXXXXXXX', '', 'Male', 'N/A', '134739@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '8d7b3fe46e96abef769ab9ee18a24c6a', 'N/A', '2023-08-15 10:24:36'),
('localhost', 486, '1697631605739', 2023, 'Seven', 'C', 'Zahid', 597921, 107, 'XXXXXXXXXX', '', 'Male', 'N/A', '597921@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'f76f9bc226f840dffd594b847c7f1736', 'N/A', '2023-08-15 10:24:36'),
('localhost', 487, '1697587502260', 2023, 'Seven', 'C', 'Siyam Sheikh', 822215, 108, 'XXXXXXXXXX', '', 'Male', 'N/A', '822215@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '067f0e99bfcc76d67555006ae61e4104', 'N/A', '2023-08-15 10:24:36'),
('localhost', 488, '1697651002860', 2023, 'Seven', 'C', 'Siyam Molla', 845369, 109, 'XXXXXXXXXX', '', 'Male', 'N/A', '845369@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'c65117202bab372794cc8e58d148625c', 'N/A', '2023-08-15 10:24:36'),
('localhost', 489, '1697497076168', 2023, 'Seven', 'C', 'Tamim', 262684, 110, 'XXXXXXXXXX', '', 'Male', 'N/A', '262684@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '552c4c8655098e52faf412957330ad22', 'N/A', '2023-08-15 10:24:36'),
('localhost', 490, '1696980923280', 2023, 'Seven', 'C', 'Arfin', 363949, 111, 'XXXXXXXXXX', '', 'Male', 'N/A', '363949@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '4006098fde1bc71626e1c95e0150199f', 'N/A', '2023-08-15 10:24:36'),
('localhost', 491, '1697589525283', 2023, 'Seven', 'C', 'Mamun', 85304, 112, 'XXXXXXXXXX', '', 'Male', 'N/A', '85304@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'f40b57b49328fa0690c63f8c86da7cc2', 'N/A', '2023-08-15 10:24:36'),
('localhost', 492, '1697721347515', 2023, 'Seven', 'C', 'Tamim Hossen', 75675, 113, 'XXXXXXXXXX', '', 'Male', 'N/A', '75675@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'a9ac54569cf70af3ee4d1783e6526fd2', 'N/A', '2023-08-15 10:24:36'),
('localhost', 493, '1696994296780', 2023, 'Seven', 'B', 'Souvik Saha', 362817, 1, 'XXXXXXXXXX', '', 'Male', 'N/A', '362817@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '8860354e955100dbe8c912f89562196c', 'N/A', '2023-08-15 10:48:33'),
('localhost', 494, '1697323128992', 2023, 'Seven', 'B', 'Biprajit Kumar Basu', 258202, 2, 'XXXXXXXXXX', '', 'Male', 'N/A', '258202@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '839ae5bc064af145ae823c6712f319d9', 'N/A', '2023-08-15 10:48:33'),
('localhost', 495, '1697160834599', 2023, 'Seven', 'B', 'Ratul Saha', 625582, 3, 'XXXXXXXXXX', '', 'Male', 'N/A', '625582@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'ec8150a874b5b90f9c8b4240ef5db8b6', 'N/A', '2023-08-15 10:48:33'),
('localhost', 496, '1697684657593', 2023, 'Seven', 'B', 'Md. Sahriyar Hossen', 52560, 4, 'XXXXXXXXXX', '', 'Male', 'N/A', '52560@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'f1fb12388125ad0587110755b5c4f093', 'N/A', '2023-08-15 10:48:33'),
('localhost', 497, '1696948870625', 2023, 'Seven', 'B', 'Syad Sadi Hossen Rafi', 324934, 5, 'XXXXXXXXXX', '', 'Male', 'N/A', '324934@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'f5898d8114fdac6321a093bbcc606a67', 'N/A', '2023-08-15 10:48:33'),
('localhost', 498, '1697296536710', 2023, 'Seven', 'B', 'Md. Mehrab Hossen', 464917, 6, 'XXXXXXXXXX', '', 'Male', 'N/A', '464917@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'b69d8566ee6d9796bafb0373ceeb30a1', 'N/A', '2023-08-15 10:48:33'),
('localhost', 499, '1696991753731', 2023, 'Seven', 'B', 'Rahul Kundu', 645557, 7, 'XXXXXXXXXX', '', 'Male', 'N/A', '645557@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'af01a3a7733a48fcbf39a7b68c06e886', 'N/A', '2023-08-15 10:48:33'),
('localhost', 500, '1697840277113', 2023, 'Seven', 'B', 'Mimtazur Rahman', 714584, 8, 'XXXXXXXXXX', '', 'Male', 'N/A', '714584@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '6fd53ecdb1a55c58ac3b75a9e8945f23', 'N/A', '2023-08-15 10:48:33'),
('localhost', 501, '1697280045308', 2023, 'Seven', 'B', 'Robiul Hasan', 838313, 9, 'XXXXXXXXXX', '', 'Male', 'N/A', '838313@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'e01585505fc041fdc8565d13870bbf7f', 'N/A', '2023-08-15 10:48:33'),
('localhost', 502, '1697309605084', 2023, 'Seven', 'B', 'Deb Kumar Das', 449246, 10, 'XXXXXXXXXX', '', 'Male', 'N/A', '449246@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '69a63eca366b69d0ab7ca1508ff3006d', 'N/A', '2023-08-15 10:48:33'),
('localhost', 503, '1697023934311', 2023, 'Seven', 'B', 'Md. Sohan Molla', 473617, 11, 'XXXXXXXXXX', '', 'Male', 'N/A', '473617@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '7b99e7ae603adeec3734fb952bd5f1e9', 'N/A', '2023-08-15 10:48:33'),
('localhost', 504, '1697103616003', 2023, 'Seven', 'B', 'Abid Hasan', 239899, 12, 'XXXXXXXXXX', '', 'Male', 'N/A', '239899@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'e23cf1ef5f9d41dbd8bee13127894db5', 'N/A', '2023-08-15 10:48:33'),
('localhost', 505, '1697504172192', 2023, 'Seven', 'B', 'Md. Rain Hasan', 518229, 13, 'XXXXXXXXXX', '', 'Male', 'N/A', '518229@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '33c6873dcea1b5dd514716d0a9306277', 'N/A', '2023-08-15 10:48:33'),
('localhost', 506, '1697608228102', 2023, 'Seven', 'B', 'Alif Sheikh', 813273, 14, 'XXXXXXXXXX', '', 'Male', 'N/A', '813273@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'a37e69922596dfb56f1ed4974015461d', 'N/A', '2023-08-15 10:48:33'),
('localhost', 507, '1697515604610', 2023, 'Seven', 'B', 'Arafat Ariyan Toufik', 684939, 15, 'XXXXXXXXXX', '', 'Male', 'N/A', '684939@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '80309a7afb87bd597407d7ee02e83c3f', 'N/A', '2023-08-15 10:48:33'),
('localhost', 508, '1697723463713', 2023, 'Seven', 'B', 'Tasin Molla', 54937, 16, 'XXXXXXXXXX', '', 'Male', 'N/A', '54937@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'b3fe364e3fd1fd530e2ed4b9037cc359', 'N/A', '2023-08-15 10:48:33'),
('localhost', 509, '1697122598632', 2023, 'Seven', 'B', 'Kazi Saifuddin Anokan', 375701, 17, 'XXXXXXXXXX', '', 'Male', 'N/A', '375701@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '48c15016113d7b5a84df4677a405a5b4', 'N/A', '2023-08-15 10:48:33'),
('localhost', 510, '1697184555984', 2023, 'Seven', 'B', 'Abhisheikh Paul', 190725, 18, 'XXXXXXXXXX', '', 'Male', 'N/A', '190725@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '737e347683f95de7b858a598618cf2a5', 'N/A', '2023-08-15 10:48:33'),
('localhost', 511, '1697096096267', 2023, 'Seven', 'B', 'Abu Naim Mina', 689239, 19, 'XXXXXXXXXX', '', 'Male', 'N/A', '689239@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '9cba6f75162d4c774db755c7b5f6b2bb', 'N/A', '2023-08-15 10:48:33'),
('localhost', 512, '1697303973657', 2023, 'Seven', 'B', 'Tajim Eahsan Pranta', 112599, 20, 'XXXXXXXXXX', '', 'Male', 'N/A', '112599@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '75c0f3322378b549026452cb2d2ff18a', 'N/A', '2023-08-15 10:48:33'),
('localhost', 513, '1697055387197', 2023, 'Seven', 'B', 'Turaz Mia', 21477, 21, 'XXXXXXXXXX', '', 'Male', 'N/A', '21477@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '23e2ba44a14704056eee7df242fbd4d4', 'N/A', '2023-08-15 10:48:33'),
('localhost', 514, '1697633209735', 2023, 'Seven', 'B', 'Araf Hossein', 442187, 22, 'XXXXXXXXXX', '', 'Male', 'N/A', '442187@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '70a140fc77addd94a60d7e87e2fef7de', 'N/A', '2023-08-15 10:48:33'),
('localhost', 515, '1697432152699', 2023, 'Seven', 'B', 'Md. Surjanil Molla', 347199, 23, 'XXXXXXXXXX', '', 'Male', 'N/A', '347199@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '4a869cdb6bc76668ef48f30034366446', 'N/A', '2023-08-15 10:48:33'),
('localhost', 516, '1696984641137', 2023, 'Seven', 'B', 'Minajul', 301320, 24, 'XXXXXXXXXX', '', 'Male', 'N/A', '301320@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'e5a0d238f65e4c537320d430d923e5f0', 'N/A', '2023-08-15 10:48:33'),
('localhost', 517, '1697289619957', 2023, 'Seven', 'B', 'Saif Bin Bahar', 742294, 25, 'XXXXXXXXXX', '', 'Male', 'N/A', '742294@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'e197513262e45ce58dc6d4d6cee25802', 'N/A', '2023-08-15 10:48:33'),
('localhost', 518, '1697379297275', 2023, 'Seven', 'B', 'Md. Khalidur Rahman', 895738, 26, 'XXXXXXXXXX', '', 'Male', 'N/A', '895738@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'c232f8e2e8b479e3bb658fb0ebf5d74b', 'N/A', '2023-08-15 10:48:33'),
('localhost', 519, '1697830421851', 2023, 'Seven', 'B', 'Md. Ibrahim Sheikh', 898121, 27, 'XXXXXXXXXX', '', 'Male', 'N/A', '898121@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '7194403ef85d21604ed52aac88a17a7c', 'N/A', '2023-08-15 10:48:33'),
('localhost', 520, '1697061631090', 2023, 'Seven', 'B', 'Arka Molla', 982922, 28, 'XXXXXXXXXX', '', 'Male', 'N/A', '982922@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '0a3e39e56991cb80b72dd13cf02d2021', 'N/A', '2023-08-15 10:48:33'),
('localhost', 521, '1697063596543', 2023, 'Seven', 'B', 'Hasibul Hasan Rifat', 753059, 29, 'XXXXXXXXXX', '', 'Male', 'N/A', '753059@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '3950b0b06abdeaae8bec9dbe6d2904a9', 'N/A', '2023-08-15 10:48:33'),
('localhost', 522, '1697183514062', 2023, 'Seven', 'B', 'Md. Alif Molla', 196338, 30, 'XXXXXXXXXX', '', 'Male', 'N/A', '196338@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '9eb93ed5579d26765ab35d363e988e73', 'N/A', '2023-08-15 10:48:33'),
('localhost', 523, '1697000981816', 2023, 'Seven', 'B', 'Sifat', 50711, 31, 'XXXXXXXXXX', '', 'Male', 'N/A', '50711@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'b7d233d8fcee213bbd1abb8a9cd2e798', 'N/A', '2023-08-15 10:48:33'),
('localhost', 524, '1697126893298', 2023, 'Seven', 'B', 'Md. Husain Ahmmed', 840790, 32, 'XXXXXXXXXX', '', 'Male', 'N/A', '840790@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'c3fda0c356b8ed119486a0aa1b0f271b', 'N/A', '2023-08-15 10:48:33'),
('localhost', 525, '1697761003704', 2023, 'Seven', 'B', 'Hadi Jayed', 317359, 33, 'XXXXXXXXXX', '', 'Male', 'N/A', '317359@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '8bc796451f2a8126d5fda25a13f899a5', 'N/A', '2023-08-15 10:48:33'),
('localhost', 526, '1697396565293', 2023, 'Seven', 'B', 'Mahmud Hossen Riad', 714814, 34, 'XXXXXXXXXX', '', 'Male', 'N/A', '714814@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '931d0dbee82ff41d7be4087b0a54afc3', 'N/A', '2023-08-15 10:48:33'),
('localhost', 527, '1697094284417', 2023, 'Seven', 'B', 'Abu Huraira', 557880, 35, 'XXXXXXXXXX', '', 'Male', 'N/A', '557880@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '29cc2dc0743adbbc943b31b354fcbedf', 'N/A', '2023-08-15 10:48:33'),
('localhost', 528, '1697064549027', 2023, 'Seven', 'B', 'Koushik Mondal', 593, 36, 'XXXXXXXXXX', '', 'Male', 'N/A', '593@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '886d8d9fa5c3f633d2379b5b7ecc46e6', 'N/A', '2023-08-15 10:48:33');
INSERT INTO `students` (`domain`, `ID`, `student_uuid`, `session`, `class`, `section`, `name`, `student_id`, `roll`, `reg`, `birth_date`, `gender`, `blood_group`, `email`, `phone`, `telephone`, `father_name`, `mother_name`, `address`, `religion`, `admission_date`, `hobbies`, `avatar`, `facebook_link`, `password`, `quote`, `at_date`) VALUES
('localhost', 529, '1696997613307', 2023, 'Seven', 'B', 'Shamim Mia', 18145, 37, 'XXXXXXXXXX', '', 'Male', 'N/A', '18145@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '085a0b46feeaceb63ea9f6186c25536b', 'N/A', '2023-08-15 10:48:33'),
('localhost', 530, '1697528696260', 2023, 'Seven', 'B', 'Mehedi Hasan', 675223, 38, 'XXXXXXXXXX', '', 'Male', 'N/A', '675223@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'a95c4c66c38d79771e685e61a1245971', 'N/A', '2023-08-15 10:48:33'),
('localhost', 531, '1697521848098', 2023, 'Seven', 'B', 'Musa Abmmed', 252997, 39, 'XXXXXXXXXX', '', 'Male', 'N/A', '252997@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '8c79af2f447abc38823834473b6f7832', 'N/A', '2023-08-15 10:48:33'),
('localhost', 532, '1697054261610', 2023, 'Seven', 'B', 'Ibrhim Hossein', 236213, 40, 'XXXXXXXXXX', '', 'Male', 'N/A', '236213@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '84d60e490c09c2b6dfdf704360560eab', 'N/A', '2023-08-15 10:48:33'),
('localhost', 533, '1697155080207', 2023, 'Seven', 'B', 'Sawon Molla', 358809, 41, 'XXXXXXXXXX', '', 'Male', 'N/A', '358809@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '08d3ba84a3e203d040a2195a11c1ecfb', 'N/A', '2023-08-15 10:48:33'),
('localhost', 534, '1697470432474', 2023, 'Seven', 'B', 'Md. Riazul Islam Riad', 60649, 42, 'XXXXXXXXXX', '', 'Male', 'N/A', '60649@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'ad2925c642da073024739d5a8dd9e7a9', 'N/A', '2023-08-15 11:44:41'),
('localhost', 535, '1696977782664', 2023, 'Seven', 'B', 'Md. Sahriar Sheikh', 583492, 43, 'XXXXXXXXXX', '', 'Male', 'N/A', '583492@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '4275c29ca92459d65ead911b0a979bb0', 'N/A', '2023-08-15 11:44:41'),
('localhost', 536, '1697145456239', 2023, 'Seven', 'B', 'Md. Imon Molla', 616872, 44, 'XXXXXXXXXX', '', 'Male', 'N/A', '616872@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'cfce759a71fca66c565120b0135ca3dd', 'N/A', '2023-08-15 11:44:41'),
('localhost', 537, '1697605755052', 2023, 'Seven', 'B', 'Jahid', 851093, 45, 'XXXXXXXXXX', '', 'Male', 'N/A', '851093@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '1b8b397c51e2339dce252f8a8dfc9a91', 'N/A', '2023-08-15 11:44:41'),
('localhost', 538, '1697078191373', 2023, 'Seven', 'B', 'Abdul Arif', 879014, 46, 'XXXXXXXXXX', '', 'Male', 'N/A', '879014@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'bf65ea546678661f799032aae5b2bc5b', 'N/A', '2023-08-15 11:44:41'),
('localhost', 539, '1697238184298', 2023, 'Seven', 'B', 'Md. Tanjid', 250997, 47, 'XXXXXXXXXX', '', 'Male', 'N/A', '250997@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'adeab2d9d82ece0ee18e532e7021b39b', 'N/A', '2023-08-15 11:44:41'),
('localhost', 540, '1697408709616', 2023, 'Seven', 'B', 'Tajim Islam', 169236, 48, 'XXXXXXXXXX', '', 'Male', 'N/A', '169236@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '73e390a3a76e46af36f182f44fe6a27e', 'N/A', '2023-08-15 11:44:41'),
('localhost', 541, '1697832809692', 2023, 'Seven', 'B', 'Mahmudul', 582665, 49, 'XXXXXXXXXX', '', 'Male', 'N/A', '582665@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '4907d205faf3ed8a78d9e1fa6adcc317', 'N/A', '2023-08-15 11:44:41'),
('localhost', 542, '1697132935973', 2023, 'Seven', 'B', 'S S Azharul', 698908, 50, 'XXXXXXXXXX', '', 'Male', 'N/A', '698908@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '9a6ca48ec75e7d2a516106a43a0bec78', 'N/A', '2023-08-15 11:44:41'),
('localhost', 543, '1697234281343', 2023, 'Seven', 'B', 'Ruhul Amin', 10516, 51, 'XXXXXXXXXX', '', 'Male', 'N/A', '10516@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '718968b39e1aa50be00306a3eacbb769', 'N/A', '2023-08-15 11:44:41'),
('localhost', 544, '1697233597228', 2023, 'Seven', 'B', 'Md. Anis Molla', 310946, 52, 'XXXXXXXXXX', '', 'Male', 'N/A', '310946@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '27e12d74291692833d162d27af91fc83', 'N/A', '2023-08-15 11:44:41'),
('localhost', 545, '1697033863411', 2023, 'Seven', 'B', 'Simanta Rajbongshi', 401803, 53, 'XXXXXXXXXX', '', 'Male', 'N/A', '401803@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'd39809a40b9ff7e9bb21407833db4881', 'N/A', '2023-08-15 11:44:41'),
('localhost', 546, '1697802273877', 2023, 'Seven', 'B', 'Md. Zobaer Molla', 534276, 54, 'XXXXXXXXXX', '', 'Male', 'N/A', '534276@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '422b85e1cf79f7ef6f170ccd396b24ae', 'N/A', '2023-08-15 11:44:41'),
('localhost', 547, '1697042156785', 2023, 'Seven', 'B', 'Tayabur Rahman', 671447, 55, 'XXXXXXXXXX', '', 'Male', 'N/A', '671447@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '5bdacab879592e1040cb5ddd1af68501', 'N/A', '2023-08-15 11:44:41'),
('localhost', 548, '1697359832436', 2023, 'Seven', 'B', 'Riad Shikder', 699169, 56, 'XXXXXXXXXX', '', 'Male', 'N/A', '699169@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '6dea2f373972c72c0571c4f31b6f3847', 'N/A', '2023-08-15 11:44:41'),
('localhost', 549, '1697433672716', 2023, 'Seven', 'B', 'Naim Kader Khan', 185625, 57, 'XXXXXXXXXX', '', 'Male', 'N/A', '185625@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'c5b78fd454392eaab5b5a7259d4adc49', 'N/A', '2023-08-15 11:44:41'),
('localhost', 550, '1696993957383', 2023, 'Seven', 'B', 'Md. Hamimuzzaman Hamim', 294285, 58, 'XXXXXXXXXX', '', 'Male', 'N/A', '294285@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '88266cf308adeb6e8896cc3a100cc02d', 'N/A', '2023-08-15 11:44:41'),
('localhost', 551, '1697624696999', 2023, 'Seven', 'B', 'Rafiz Khan', 394550, 59, 'XXXXXXXXXX', '', 'Male', 'N/A', '394550@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '734e5a9a36cd042fb4c6f4fdea2f5deb', 'N/A', '2023-08-15 11:44:41'),
('localhost', 552, '1697131583568', 2023, 'Seven', 'B', 'S M Amin Forhad', 769678, 60, 'XXXXXXXXXX', '', 'Male', 'N/A', '769678@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '74e12cda223293acf6b51c798ff6ca9a', 'N/A', '2023-08-15 11:44:41'),
('localhost', 553, '1697534658145', 2023, 'Seven', 'B', 'Sagor Rajbongshi', 577733, 61, 'XXXXXXXXXX', '', 'Male', 'N/A', '577733@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '1803f2de07f06123349087ce026292f6', 'N/A', '2023-08-15 11:44:41'),
('localhost', 554, '1697154917144', 2023, 'Seven', 'B', 'Md. Fahim Molla', 57355, 62, 'XXXXXXXXXX', '', 'Male', 'N/A', '57355@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '756939ab917fa7df38e0a2d7be62c8f9', 'N/A', '2023-08-15 11:44:41'),
('localhost', 555, '1697268676615', 2023, 'Seven', 'B', 'Abhijeet Mandal', 878446, 63, 'XXXXXXXXXX', '', 'Male', 'N/A', '878446@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'c44fab07f99bd72539ab469db5fb6a82', 'N/A', '2023-08-15 11:44:41'),
('localhost', 556, '1697477569756', 2023, 'Seven', 'B', 'Zihad Sheikh', 761660, 64, 'XXXXXXXXXX', '', 'Male', 'N/A', '761660@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '407f7027cfc2a7cc53f1922585b08c9b', 'N/A', '2023-08-15 11:44:41'),
('localhost', 557, '1697058397870', 2023, 'Seven', 'B', 'Md. Rabbi Sheikh', 478814, 65, 'XXXXXXXXXX', '', 'Male', 'N/A', '478814@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '8853a4002fb20dbe55a9a05efab29511', 'N/A', '2023-08-15 11:44:41'),
('localhost', 558, '1697156842867', 2023, 'Seven', 'B', 'Apon Sarkar Rothin', 703911, 66, 'XXXXXXXXXX', '', 'Male', 'N/A', '703911@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'db97dcb5aadeaf6e5cadb723b97ee2c4', 'N/A', '2023-08-15 11:44:41'),
('localhost', 559, '1697468238002', 2023, 'Seven', 'B', 'Prodip Kumar Saha', 511046, 67, 'XXXXXXXXXX', '', 'Male', 'N/A', '511046@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'ef20050d665c7fd0e0fd8d79bba18909', 'N/A', '2023-08-15 11:44:41'),
('localhost', 560, '1697077306985', 2023, 'Seven', 'B', 'Md. Hanzala Sheikh', 196884, 68, 'XXXXXXXXXX', '', 'Male', 'N/A', '196884@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'ff782a679d6f13f5fb04b5d061bba092', 'N/A', '2023-08-15 11:44:41'),
('localhost', 561, '1697673798183', 2023, 'Seven', 'B', 'Yasin Alom Rial', 375032, 69, 'XXXXXXXXXX', '', 'Male', 'N/A', '375032@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '327de24e9795d16f1bea4dfa66f6f549', 'N/A', '2023-08-15 11:44:41'),
('localhost', 562, '1697359679122', 2023, 'Seven', 'B', 'Md. Ruman Sikder', 137635, 70, 'XXXXXXXXXX', '', 'Male', 'N/A', '137635@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '7ad1ea613d3dfc4d0171b96ebeb9012c', 'N/A', '2023-08-15 11:44:41'),
('localhost', 563, '1697788204252', 2023, 'Seven', 'B', 'Arman Molla', 618927, 71, 'XXXXXXXXXX', '', 'Male', 'N/A', '618927@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '452b0310f0f805e379e10df5cf599515', 'N/A', '2023-08-15 11:44:41'),
('localhost', 564, '1697364849166', 2023, 'Seven', 'B', 'Md. Zonayed Sheikh', 158128, 72, 'XXXXXXXXXX', '', 'Male', 'N/A', '158128@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '490a815c51c7e7af8c0834548defbb57', 'N/A', '2023-08-15 11:44:41'),
('localhost', 565, '1697422942508', 2023, 'Seven', 'B', 'Shahjahan Hasan', 252372, 73, 'XXXXXXXXXX', '', 'Male', 'N/A', '252372@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '84186f73c783868fb293d7a23838f540', 'N/A', '2023-08-15 11:44:41'),
('localhost', 566, '1697112427220', 2023, 'Seven', 'B', 'Arman', 801018, 74, 'XXXXXXXXXX', '', 'Male', 'N/A', '801018@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'a737c6248edbdd765fe52cc394a2cbeb', 'N/A', '2023-08-15 11:44:41'),
('localhost', 567, '1697063184939', 2023, 'Seven', 'B', 'Shipon Dutta', 280681, 75, 'XXXXXXXXXX', '', 'Male', 'N/A', '280681@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '327d20d6cdc4e3389626bff5df7cd23a', 'N/A', '2023-08-15 11:44:41'),
('localhost', 568, '1697060077603', 2023, 'Seven', 'B', 'Tamim Sheikh', 592729, 76, 'XXXXXXXXXX', '', 'Male', 'N/A', '592729@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '2284380275f79666ca3b3682326abb2d', 'N/A', '2023-08-15 11:44:41'),
('localhost', 569, '1697800802210', 2023, 'Seven', 'B', 'Md. Siyam Sheikh', 146405, 77, 'XXXXXXXXXX', '', 'Male', 'N/A', '146405@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'e40448848b72d53bec4275286698bcc0', 'N/A', '2023-08-15 11:44:41'),
('localhost', 570, '1697594669034', 2023, 'Seven', 'B', 'Gouris Kumar Roy', 781881, 78, 'XXXXXXXXXX', '', 'Male', 'N/A', '781881@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'b08852b64e0a617a1e55f4119b2d3ddd', 'N/A', '2023-08-15 11:44:41'),
('localhost', 571, '1697068051631', 2023, 'Seven', 'B', 'Md. Fahim Molla', 21644, 79, 'XXXXXXXXXX', '', 'Male', 'N/A', '21644@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '2f672f60c1f93ad928ae5e73b594372d', 'N/A', '2023-08-15 11:44:41'),
('localhost', 572, '1697535780582', 2023, 'Seven', 'B', 'Bijoy Mondal', 208938, 80, 'XXXXXXXXXX', '', 'Male', 'N/A', '208938@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '475e8872c68e70d40bf7ed71a262a78d', 'N/A', '2023-08-15 11:44:41'),
('localhost', 573, '1697526360228', 2023, 'Seven', 'B', 'Pavel Khan', 335235, 81, 'XXXXXXXXXX', '', 'Male', 'N/A', '335235@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'a6e6c9a6e8420679fc5a1bc99a58e8de', 'N/A', '2023-08-15 11:44:41'),
('localhost', 574, '1697219351706', 2023, 'Seven', 'B', 'Nur Islam Bappi', 189987, 82, 'XXXXXXXXXX', '', 'Male', 'N/A', '189987@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '7b05bf63efa76883bde0ac75941f15f5', 'N/A', '2023-08-15 11:44:41'),
('localhost', 575, '1697051678951', 2023, 'Seven', 'B', 'Sahriyar', 668248, 83, 'XXXXXXXXXX', '', 'Male', 'N/A', '668248@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '49a0cda4ea3bde44f7792baef53cfb38', 'N/A', '2023-08-15 11:44:41'),
('localhost', 576, '1697560649144', 2023, 'Seven', 'B', 'Azim Sheikh', 272035, 84, 'XXXXXXXXXX', '', 'Male', 'N/A', '272035@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '682967a3c7c09133709d3777833b989a', 'N/A', '2023-08-15 11:44:41'),
('localhost', 577, '1697348462031', 2023, 'Seven', 'B', 'Arafat Biswas', 212749, 85, 'XXXXXXXXXX', '', 'Male', 'N/A', '212749@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'cffdc2fcd738d353b181a8c7d5b953c0', 'N/A', '2023-08-15 11:44:41'),
('localhost', 578, '1697817166834', 2023, 'Seven', 'B', 'Sohan Sheikh', 615205, 86, 'XXXXXXXXXX', '', 'Male', 'N/A', '615205@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '79020cdc15b78cd6657c95fc2e098315', 'N/A', '2023-08-15 11:44:41'),
('localhost', 579, '1697678030796', 2023, 'Seven', 'B', 'Aridra Rajbongshi', 648686, 87, 'XXXXXXXXXX', '', 'Male', 'N/A', '648686@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '0f5613890da0365332ed6c6d96018755', 'N/A', '2023-08-15 11:44:41'),
('localhost', 580, '1697539496018', 2023, 'Seven', 'B', 'Md. Yadul Islam', 254609, 88, 'XXXXXXXXXX', '', 'Male', 'N/A', '254609@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'c1d3a3613e4c0e320bbbe2d7851df94c', 'N/A', '2023-08-15 11:44:41'),
('localhost', 581, '1697435054593', 2023, 'Seven', 'B', 'Israful Alom', 724473, 89, 'XXXXXXXXXX', '', 'Male', 'N/A', '724473@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'b23a1e83b3f62ca0003e42f82f1b7408', 'N/A', '2023-08-15 11:44:41'),
('localhost', 582, '1697500925120', 2023, 'Seven', 'B', 'Tarekh Thakur', 769646, 90, 'XXXXXXXXXX', '', 'Male', 'N/A', '769646@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'd1263241ee27716701d82ad89882b05d', 'N/A', '2023-08-15 11:44:41'),
('localhost', 583, '1697235410732', 2023, 'Seven', 'B', 'Md. Faruk Sheikh', 568388, 91, 'XXXXXXXXXX', '', 'Male', 'N/A', '568388@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '2dc67bd7da9c72103e718e1568850998', 'N/A', '2023-08-15 11:44:41'),
('localhost', 584, '1697300888859', 2023, 'Seven', 'B', 'Sajid Islam', 693628, 92, 'XXXXXXXXXX', '', 'Male', 'N/A', '693628@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'a01349aa2f43592d310ab2bb4bf6cd0e', 'N/A', '2023-08-15 11:44:41'),
('localhost', 585, '1697505405152', 2023, 'Seven', 'B', 'Md. Tamim Sheikh', 797676, 93, 'XXXXXXXXXX', '', 'Male', 'N/A', '797676@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'eb1d0ed3d962a9486799f2fe6565126a', 'N/A', '2023-08-15 11:44:41'),
('localhost', 586, '1697130355097', 2023, 'Seven', 'B', 'Tamim', 715463, 94, 'XXXXXXXXXX', '', 'Male', 'N/A', '715463@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '3598d4accad3e05c72ed4c911d00f2e8', 'N/A', '2023-08-15 11:44:41'),
('localhost', 587, '1697727091097', 2023, 'Seven', 'B', 'Debashish Das', 283068, 95, 'XXXXXXXXXX', '', 'Male', 'N/A', '283068@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '848d31563f1942f1fe5267d4a26f022e', 'N/A', '2023-08-15 11:44:41'),
('localhost', 588, '1697354061288', 2023, 'Seven', 'B', 'Nayon Hossen', 478535, 96, 'XXXXXXXXXX', '', 'Male', 'N/A', '478535@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'bb68be825bc297d1c3a2c2c4d71a2565', 'N/A', '2023-08-15 11:44:41'),
('localhost', 589, '1697481701887', 2023, 'Seven', 'B', 'Hanjala ', 204369, 97, 'XXXXXXXXXX', '', 'Male', 'N/A', '204369@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '9ec401e8ad282ccfe5baa4b8865af083', 'N/A', '2023-08-15 11:44:41'),
('localhost', 590, '1697408337266', 2023, 'Seven', 'B', 'Md. Ahadulla biswas', 423568, 98, 'XXXXXXXXXX', '', 'Male', 'N/A', '423568@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'afc6ee66ec0daf93d34ea90acab7b03f', 'N/A', '2023-08-15 11:44:41'),
('localhost', 591, '1697675298545', 2023, 'Seven', 'B', 'Abdullah Al Faisal', 736596, 99, 'XXXXXXXXXX', '', 'Male', 'N/A', '736596@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'c951158abf8f7f096f20b1a818a3fb7c', 'N/A', '2023-08-15 11:44:41'),
('localhost', 592, '1697683943188', 2023, 'Seven', 'B', 'Muntasir Mahmud', 873111, 100, 'XXXXXXXXXX', '', 'Male', 'N/A', '873111@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '80363dab1e687c5fbcc8aad572d85e3a', 'N/A', '2023-08-15 11:44:41'),
('localhost', 593, '1696993070933', 2023, 'Seven', 'B', 'Ismail Al jamil', 389691, 101, 'XXXXXXXXXX', '', 'Male', 'N/A', '389691@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '799f3752a387655b5654313d6ec93cc7', 'N/A', '2023-08-15 11:44:41'),
('localhost', 594, '1697014898661', 2023, 'Seven', 'B', 'Md. Siyam Islam', 877685, 102, 'XXXXXXXXXX', '', 'Male', 'N/A', '877685@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '2cc2a0f9444af9076bbec1f9a4f24d01', 'N/A', '2023-08-15 11:44:41'),
('localhost', 595, '1697064629331', 2023, 'Seven', 'B', 'Md. Osama Sheikh', 549988, 103, 'XXXXXXXXXX', '', 'Male', 'N/A', '549988@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '3f6e99e7c74ee75c68481f8ee4b39de1', 'N/A', '2023-08-15 11:44:41'),
('localhost', 596, '1697554772706', 2023, 'Seven', 'B', 'Md. Tawhid Hasan', 581806, 104, 'XXXXXXXXXX', '', 'Male', 'N/A', '581806@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '813f7b447a5f53379c30924829be59a7', 'N/A', '2023-08-15 11:44:41'),
('localhost', 597, '1697191658486', 2023, 'Seven', 'B', 'Md. Bisal Sheikh', 339349, 105, 'XXXXXXXXXX', '', 'Male', 'N/A', '339349@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'bf26cb0cb4ded11485172e23c13c86b8', 'N/A', '2023-08-15 11:44:41'),
('localhost', 598, '1697414152407', 2023, 'Seven', 'B', 'Moaz Ahmmed', 54606, 106, 'XXXXXXXXXX', '', 'Male', 'N/A', '54606@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'f38929a99aa72a86f33070c9d62ddcdf', 'N/A', '2023-08-15 11:44:41'),
('localhost', 599, '1697383103617', 2023, 'Seven', 'B', 'Md. Sakib Molla', 506651, 107, 'XXXXXXXXXX', '', 'Male', 'N/A', '506651@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'b4ef7bb7dde4e0e1fe2b8348c0eafb9b', 'N/A', '2023-08-15 11:44:41'),
('localhost', 600, '1697302735287', 2023, 'Seven', 'B', 'Md. Yasin Sheikh', 870941, 108, 'XXXXXXXXXX', '', 'Male', 'N/A', '870941@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '3b184374c14d19bf679583beda6a8023', 'N/A', '2023-08-15 11:44:41'),
('localhost', 601, '1697817300060', 2023, 'Seven', 'B', 'Sandipon Sarkar', 613049, 109, 'XXXXXXXXXX', '', 'Male', 'N/A', '613049@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', 'dd42fdde920aee67b954328fc57010d0', 'N/A', '2023-08-15 11:44:41'),
('localhost', 602, '1697799439925', 2023, 'Seven', 'B', 'Abdullah Al Safi', 750616, 110, 'XXXXXXXXXX', '', 'Male', 'N/A', '750616@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '0522e02462a2de69ed382f740f3275bb', 'N/A', '2023-08-15 11:44:41'),
('localhost', 603, '1697846431969', 2023, 'Seven', 'B', 'Nayon Biswas', 390600, 111, 'XXXXXXXXXX', '', 'Male', 'N/A', '390600@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'male_avatar.png', 'N/A', '93fdc51c330dbb856bf862ece7a817cb', 'N/A', '2023-08-15 11:44:41'),
('localhost', 604, '1696988759593', 2023, 'Seven', 'A', 'Aritri Basu', 38391, 1, 'XXXXXXXXXX', '', 'Female', 'N/A', '38391@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'ff1bb978afe76bb54dde4909a18dcb99', 'N/A', '2023-08-15 12:18:14'),
('localhost', 605, '1697506341432', 2023, 'Seven', 'A', 'Nusrat Jahan', 603344, 2, 'XXXXXXXXXX', '', 'Female', 'N/A', '603344@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'f425fd3d5ad883a0e4263636551dcbe1', 'N/A', '2023-08-15 12:18:14'),
('localhost', 606, '1697333400700', 2023, 'Seven', 'A', 'Afrin', 761104, 3, 'XXXXXXXXXX', '', 'Female', 'N/A', '761104@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'a9d99a7fedc10f4fa6e8cb5feb45657c', 'N/A', '2023-08-15 12:18:14'),
('localhost', 607, '1696954286547', 2023, 'Seven', 'A', 'Tarin Islam', 719284, 4, 'XXXXXXXXXX', '', 'Female', 'N/A', '719284@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '0a7d924b9518507a08a0fd0de74956b2', 'N/A', '2023-08-15 12:18:14'),
('localhost', 608, '1697033141186', 2023, 'Seven', 'A', 'Sejuti', 410722, 5, 'XXXXXXXXXX', '', 'Female', 'N/A', '410722@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'd0dabb71df6a1e9116765a82be5658b9', 'N/A', '2023-08-15 12:18:14'),
('localhost', 609, '1697741481528', 2023, 'Seven', 'A', 'Maliha Tasnim', 392863, 6, 'XXXXXXXXXX', '', 'Female', 'N/A', '392863@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '7996fed0250fd57ec634f829b6283584', 'N/A', '2023-08-15 12:18:14'),
('localhost', 610, '1697349725222', 2023, 'Seven', 'A', 'Priyonti Saha', 643013, 7, 'XXXXXXXXXX', '', 'Female', 'N/A', '643013@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '0add86c96884256a18205321ae81a9cf', 'N/A', '2023-08-15 12:18:14'),
('localhost', 611, '1697464557077', 2023, 'Seven', 'A', 'Jotirmoyee Paul', 93994, 8, 'XXXXXXXXXX', '', 'Female', 'N/A', '93994@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'cbea96cefc19fd3c58f1d3de0cf6cd0c', 'N/A', '2023-08-15 12:18:14'),
('localhost', 612, '1697292913134', 2023, 'Seven', 'A', 'Nowshin Islam', 882850, 9, 'XXXXXXXXXX', '', 'Female', 'N/A', '882850@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '9dd6ca48dfc4cb7d6c83e8cbd2bc3167', 'N/A', '2023-08-15 12:18:14'),
('localhost', 613, '1697054463725', 2023, 'Seven', 'A', 'Ankita Laskar', 333697, 10, 'XXXXXXXXXX', '', 'Female', 'N/A', '333697@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '2b54b1fe2413703a7c606817ae0193d1', 'N/A', '2023-08-15 12:18:14'),
('localhost', 614, '1697821617840', 2023, 'Seven', 'A', 'Ayswariya Sarkar', 728231, 11, 'XXXXXXXXXX', '', 'Female', 'N/A', '728231@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '219e76aa6eef61b09cdf366a65cca93e', 'N/A', '2023-08-15 12:18:14'),
('localhost', 615, '1696972163248', 2023, 'Seven', 'A', 'Faza Suzon Prionti', 121819, 12, 'XXXXXXXXXX', '', 'Female', 'N/A', '121819@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '35f79bc8a54c9f9623d2f33ae1c2b1b6', 'N/A', '2023-08-15 12:18:14'),
('localhost', 616, '1697679812845', 2023, 'Seven', 'A', 'Jannaul Ferdous', 31333, 13, 'XXXXXXXXXX', '', 'Female', 'N/A', '31333@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '0183893e5dd2bca7682ccac35693c358', 'N/A', '2023-08-15 12:18:14'),
('localhost', 617, '1697196003642', 2023, 'Seven', 'A', 'Afifa Tasnim', 518969, 14, 'XXXXXXXXXX', '', 'Female', 'N/A', '518969@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'd0af568b54beecf49ecd95e0f28a1e4d', 'N/A', '2023-08-15 12:18:14'),
('localhost', 618, '1697321987366', 2023, 'Seven', 'A', 'Sobnom Mustari Nusrat', 864795, 15, 'XXXXXXXXXX', '', 'Female', 'N/A', '864795@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'b273847843dcd05ee383d18886011e68', 'N/A', '2023-08-15 12:18:14'),
('localhost', 619, '1697227569789', 2023, 'Seven', 'A', 'Toyshi Shikder', 577879, 16, 'XXXXXXXXXX', '', 'Female', 'N/A', '577879@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'a8d67c2586554a1614c00e8f1b31cfbb', 'N/A', '2023-08-15 12:18:14'),
('localhost', 620, '1697486353001', 2023, 'Seven', 'A', 'Sohana Akhter', 799095, 17, 'XXXXXXXXXX', '', 'Female', 'N/A', '799095@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '1df921838e865cd19d728eff4db0ef64', 'N/A', '2023-08-15 12:18:14'),
('localhost', 621, '1697081581504', 2023, 'Seven', 'A', 'Anya Zannat', 449566, 18, 'XXXXXXXXXX', '', 'Female', 'N/A', '449566@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '59c151f76e8c76d98a2573eb24d71ebc', 'N/A', '2023-08-15 12:18:14'),
('localhost', 622, '1697288900481', 2023, 'Seven', 'A', 'Mst. Tayeba', 200582, 19, 'XXXXXXXXXX', '', 'Female', 'N/A', '200582@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '608762f38943db3ab2b441d385f94f67', 'N/A', '2023-08-15 12:18:14'),
('localhost', 623, '1697767608788', 2023, 'Seven', 'A', 'Afiya', 276868, 20, 'XXXXXXXXXX', '', 'Female', 'N/A', '276868@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '817fd63f990244256602b58444fe86b5', 'N/A', '2023-08-15 12:18:14'),
('localhost', 624, '1697184565332', 2023, 'Seven', 'A', 'Anika Nawshin', 582286, 21, 'XXXXXXXXXX', '', 'Female', 'N/A', '582286@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '9ad15a258db4a1a45beda7b65c0656d9', 'N/A', '2023-08-15 12:18:14'),
('localhost', 625, '1697367201672', 2023, 'Seven', 'A', 'Saswati Sarkar', 288820, 22, 'XXXXXXXXXX', '', 'Female', 'N/A', '288820@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '3b0308337ce20c4cb9a7c0be676b5432', 'N/A', '2023-08-15 12:18:14'),
('localhost', 626, '1697428655144', 2023, 'Seven', 'A', 'Takwa Islam', 596734, 23, 'XXXXXXXXXX', '', 'Female', 'N/A', '596734@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'a6acfbc53c363fca969bee47d6366360', 'N/A', '2023-08-15 12:18:14'),
('localhost', 627, '1697170924578', 2023, 'Seven', 'A', 'Subhosree Das', 778428, 24, 'XXXXXXXXXX', '', 'Female', 'N/A', '778428@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '231d40fbea1b622a0bed242713cd36e0', 'N/A', '2023-08-15 12:18:14'),
('localhost', 628, '1697812240594', 2023, 'Seven', 'A', 'Sreya Kundu', 481614, 25, 'XXXXXXXXXX', '', 'Female', 'N/A', '481614@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'cb3429f38a35f9619bec8c1ec41cbd7d', 'N/A', '2023-08-15 12:18:14'),
('localhost', 629, '1697543356235', 2023, 'Seven', 'A', 'Farhana Islam Toha', 650132, 26, 'XXXXXXXXXX', '', 'Female', 'N/A', '650132@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '94e6e71a85697959e07049121ec205e2', 'N/A', '2023-08-15 12:18:14'),
('localhost', 630, '1697118063139', 2023, 'Seven', 'A', 'Sadiya Islam', 700252, 27, 'XXXXXXXXXX', '', 'Female', 'N/A', '700252@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'b0886ee50140e04602467698472311dc', 'N/A', '2023-08-15 12:18:14'),
('localhost', 631, '1697675823023', 2023, 'Seven', 'A', 'Mithila Khanam', 399629, 28, 'XXXXXXXXXX', '', 'Female', 'N/A', '399629@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '34750eb4c1187a8a1fd1bd181f0117c2', 'N/A', '2023-08-15 12:18:14'),
('localhost', 632, '1697011987941', 2023, 'Seven', 'A', 'Nusrat Amira Ira', 654504, 29, 'XXXXXXXXXX', '', 'Female', 'N/A', '654504@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '122fd45bf016b50fa2a013bd22eb74fc', 'N/A', '2023-08-15 12:18:14'),
('localhost', 633, '1697448982167', 2023, 'Seven', 'A', 'Sumaya', 316414, 30, 'XXXXXXXXXX', '', 'Female', 'N/A', '316414@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'b359c94dde3bb8b132fc46de16177f37', 'N/A', '2023-08-15 12:18:14'),
('localhost', 634, '1697382090833', 2023, 'Seven', 'A', 'Takiya Tabassum', 818120, 31, 'XXXXXXXXXX', '', 'Female', 'N/A', '818120@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'f67d4f336446ed03c57d99dea3efe523', 'N/A', '2023-08-15 12:18:14'),
('localhost', 635, '1697846104854', 2023, 'Seven', 'A', 'Jannatul Ferdous', 228046, 32, 'XXXXXXXXXX', '', 'Female', 'N/A', '228046@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '439685f69ff560040a58d64ede2247ed', 'N/A', '2023-08-15 12:18:14'),
('localhost', 636, '1697265753983', 2023, 'Seven', 'A', 'Taniya Khanom', 868618, 33, 'XXXXXXXXXX', '', 'Female', 'N/A', '868618@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '8a8592e7df818fd37d63ac1a4b46f02f', 'N/A', '2023-08-15 12:18:14'),
('localhost', 637, '1697021128885', 2023, 'Seven', 'A', 'Zubaida Afrin Zarin', 878511, 34, 'XXXXXXXXXX', '', 'Female', 'N/A', '878511@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '3c7c9c2fb7ed7166925bc375a7342cc2', 'N/A', '2023-08-15 12:18:14'),
('localhost', 638, '1697285490235', 2023, 'Seven', 'A', 'Maimuna Islam', 78886, 35, 'XXXXXXXXXX', '', 'Female', 'N/A', '78886@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'c3fd9a2e93fde6f95ffac0dc86d92730', 'N/A', '2023-08-15 12:18:14'),
('localhost', 639, '1697348462190', 2023, 'Seven', 'A', 'Maisha Tasniya', 279782, 36, 'XXXXXXXXXX', '', 'Female', 'N/A', '279782@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'c24223861fac351568a7f525f2a16214', 'N/A', '2023-08-15 12:18:14'),
('localhost', 640, '1697815952297', 2023, 'Seven', 'A', 'Sraboni Jannat Esha', 859197, 37, 'XXXXXXXXXX', '', 'Female', 'N/A', '859197@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'f2ac62d3cd13256f406f1ff14452a32e', 'N/A', '2023-08-15 12:18:14'),
('localhost', 641, '1697695205522', 2023, 'Seven', 'A', 'Jannatul Zeba', 843637, 38, 'XXXXXXXXXX', '', 'Female', 'N/A', '843637@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '7a4bbe1b4b595db6265bde15d3b162d2', 'N/A', '2023-08-15 12:18:14'),
('localhost', 642, '1697686021383', 2023, 'Seven', 'A', 'Mahiya Sultana', 226071, 39, 'XXXXXXXXXX', '', 'Female', 'N/A', '226071@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '2abd847262d66d620accde19ca8ee570', 'N/A', '2023-08-15 12:18:14'),
('localhost', 643, '1697589798396', 2023, 'Seven', 'A', 'Mst. Pushpita Khanam', 226777, 40, 'XXXXXXXXXX', '', 'Female', 'N/A', '226777@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '32fec51c529b7411a10cbe74119fdf1a', 'N/A', '2023-08-15 12:18:14'),
('localhost', 644, '1697118302812', 2023, 'Seven', 'A', 'Farhana Akter', 240067, 41, 'XXXXXXXXXX', '', 'Female', 'N/A', '240067@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '4069f47b4ef2c4a2333d8ce7698429a1', 'N/A', '2023-08-15 12:18:14'),
('localhost', 645, '1697668246421', 2023, 'Seven', 'A', 'Chayti Laskar', 538949, 42, 'XXXXXXXXXX', '', 'Female', 'N/A', '538949@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '35dfbae82fe0337d8ec52c60912add5e', 'N/A', '2023-08-15 12:18:14'),
('localhost', 646, '1697725298277', 2023, 'Seven', 'A', 'Mahbiya Mehjabin', 159046, 43, 'XXXXXXXXXX', '', 'Female', 'N/A', '159046@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '64266ddefa6a9ad35f1a1a6237c057dc', 'N/A', '2023-08-15 12:18:14'),
('localhost', 647, '1697594664562', 2023, 'Seven', 'A', 'Rafsana Binti', 47005, 44, 'XXXXXXXXXX', '', 'Female', 'N/A', '47005@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '68c75bcc31e2e962b4669cfd086a237a', 'N/A', '2023-08-15 12:18:14'),
('localhost', 648, '1697487929090', 2023, 'Seven', 'A', 'Hridika Basak', 803819, 45, 'XXXXXXXXXX', '', 'Female', 'N/A', '803819@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'a1e5237ac0ffdf53bfc462815923ec86', 'N/A', '2023-08-15 12:18:14'),
('localhost', 649, '1697419033947', 2023, 'Seven', 'A', 'Nusrat Jahan ', 25670, 46, 'XXXXXXXXXX', '', 'Female', 'N/A', '25670@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '6c060d3e07cf4cd439e0f929c5da7306', 'N/A', '2023-08-15 12:18:14'),
('localhost', 650, '1697385537631', 2023, 'Seven', 'A', 'Puja Sarkar', 551409, 47, 'XXXXXXXXXX', '', 'Female', 'N/A', '551409@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'cdf079dd0ec976f9957bcdaaec3512c9', 'N/A', '2023-08-15 12:18:14'),
('localhost', 651, '1697450649552', 2023, 'Seven', 'A', 'Sumaya', 209847, 48, 'XXXXXXXXXX', '', 'Female', 'N/A', '209847@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '9063ae2cf98263693429ed9d9d5c94ab', 'N/A', '2023-08-15 12:18:14'),
('localhost', 652, '1697665821163', 2023, 'Seven', 'A', 'Jannatul Ferdous', 829004, 49, 'XXXXXXXXXX', '', 'Female', 'N/A', '829004@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '280618bc2992abe60f52debe932d7a7c', 'N/A', '2023-08-15 12:18:14'),
('localhost', 653, '1697312698358', 2023, 'Seven', 'A', 'Kotha Koli Maitra', 827839, 50, 'XXXXXXXXXX', '', 'Female', 'N/A', '827839@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'bb3cd7363172a1bc398665def7bf41ce', 'N/A', '2023-08-15 12:18:14'),
('localhost', 654, '1697322585475', 2023, 'Seven', 'A', 'Rukaya Khanom', 769525, 51, 'XXXXXXXXXX', '', 'Female', 'N/A', '769525@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '2b1522278fca6e14e29f4766f92c91a2', 'N/A', '2023-08-15 12:18:14'),
('localhost', 655, '1697452853152', 2023, 'Seven', 'A', 'Tasmiya Akter', 95655, 52, 'XXXXXXXXXX', '', 'Female', 'N/A', '95655@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '44e3ef76d6ae7a3cdf53238e661f6558', 'N/A', '2023-08-15 12:18:14'),
('localhost', 656, '1697638844487', 2023, 'Seven', 'A', 'Khadija', 280910, 53, 'XXXXXXXXXX', '', 'Female', 'N/A', '280910@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '0f88e77d0965c32eb4551715a4aa29b7', 'N/A', '2023-08-15 12:18:14'),
('localhost', 657, '1697521082904', 2023, 'Seven', 'A', 'Nadiya Akter', 429695, 54, 'XXXXXXXXXX', '', 'Female', 'N/A', '429695@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '903ba831f4de88583c28fb43b6a77d83', 'N/A', '2023-08-15 12:18:14'),
('localhost', 658, '1697632833039', 2023, 'Seven', 'A', 'Tabassum', 290660, 55, 'XXXXXXXXXX', '', 'Female', 'N/A', '290660@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '3b5c7e474cd9b3d24fecd55757350ab8', 'N/A', '2023-08-15 12:18:14'),
('localhost', 659, '1697075330276', 2023, 'Seven', 'A', 'Aysha Khanom', 434013, 56, 'XXXXXXXXXX', '', 'Female', 'N/A', '434013@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'dd2168596a833191823fec5a45341c14', 'N/A', '2023-08-15 12:18:14'),
('localhost', 660, '1697067350223', 2023, 'Seven', 'A', 'Mim Akter jhorna', 620714, 57, 'XXXXXXXXXX', '', 'Female', 'N/A', '620714@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '240e3157ffdc32ba05968e85e70770c4', 'N/A', '2023-08-15 12:18:14'),
('localhost', 661, '1697496189937', 2023, 'Seven', 'A', 'Usha', 93016, 58, 'XXXXXXXXXX', '', 'Female', 'N/A', '93016@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '2151686e8a8903be928a2b06a3af815f', 'N/A', '2023-08-15 12:18:14'),
('localhost', 662, '1697697808350', 2023, 'Seven', 'A', 'Zobaida', 136576, 59, 'XXXXXXXXXX', '', 'Female', 'N/A', '136576@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'd70a793b0609ba2689b60b0631a5def9', 'N/A', '2023-08-15 12:18:14'),
('localhost', 663, '1697572525217', 2023, 'Seven', 'A', 'Sumaiya', 277323, 60, 'XXXXXXXXXX', '', 'Female', 'N/A', '277323@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'bcf608e08f49edcb15d1d9bdb2126d46', 'N/A', '2023-08-15 12:18:14'),
('localhost', 664, '1697684169776', 2023, 'Seven', 'A', 'Oishi Karmakar', 883455, 61, 'XXXXXXXXXX', '', 'Female', 'N/A', '883455@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'c2d099951b0c08449088e1c3576665e3', 'N/A', '2023-08-15 12:18:14'),
('localhost', 665, '1697564135354', 2023, 'Seven', 'A', 'Jerin Akter', 658122, 62, 'XXXXXXXXXX', '', 'Female', 'N/A', '658122@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'a6dca1163b61d9453a7b4e21409397f8', 'N/A', '2023-08-15 12:18:14'),
('localhost', 666, '1697767733663', 2023, 'Seven', 'A', 'Faiza', 477382, 63, 'XXXXXXXXXX', '', 'Female', 'N/A', '477382@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '2bd4d292eafcb08253e8ef0c1b02cb22', 'N/A', '2023-08-15 12:18:14'),
('localhost', 667, '1697046895224', 2023, 'Seven', 'A', 'Monalisa Akter', 379557, 64, 'XXXXXXXXXX', '', 'Female', 'N/A', '379557@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '580d1b4e6f3dade6d8743d92ec9a4a36', 'N/A', '2023-08-15 12:18:14'),
('localhost', 668, '1697662503269', 2023, 'Seven', 'A', 'Sadiya Akter', 468813, 65, 'XXXXXXXXXX', '', 'Female', 'N/A', '468813@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '150d534231b30219f27023561126f1e7', 'N/A', '2023-08-15 12:18:14'),
('localhost', 669, '1697207537896', 2023, 'Seven', 'A', 'Aisha', 631844, 66, 'XXXXXXXXXX', '', 'Female', 'N/A', '631844@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'd8b0c9875ef7e30b64f71de248b9ddbb', 'N/A', '2023-08-15 12:18:14'),
('localhost', 670, '1697562366530', 2023, 'Seven', 'A', 'Toishi Sutradhar', 80787, 67, 'XXXXXXXXXX', '', 'Female', 'N/A', '80787@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'f4856733b4c63c050bd8fdfe13bb4d3a', 'N/A', '2023-08-15 12:18:14'),
('localhost', 671, '1697819830260', 2023, 'Seven', 'A', 'Tanni Biswas', 250732, 68, 'XXXXXXXXXX', '', 'Female', 'N/A', '250732@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '19e0d7113b86e6ba662ed99c7a89bb01', 'N/A', '2023-08-15 12:18:14'),
('localhost', 672, '1697806194617', 2023, 'Seven', 'A', 'Safiya Tanha Sowa', 663243, 69, 'XXXXXXXXXX', '', 'Female', 'N/A', '63243@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'e69a55cff0316f9288bcdadbc2bbed36', 'N/A', '2023-08-15 12:18:14'),
('localhost', 673, '1697064030653', 2023, 'Seven', 'A', 'Munni Khanam', 157745, 70, 'XXXXXXXXXX', '', 'Female', 'N/A', '157745@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '8db61dc6017c30f1ccda47ec2e6baa84', 'N/A', '2023-08-15 12:18:14'),
('localhost', 674, '1697629059968', 2023, 'Seven', 'A', 'Mst. Mafuja Sultana', 108599, 71, 'XXXXXXXXXX', '', 'Female', 'N/A', '108599@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '18bbabb542cfae4ebcd5711754b5d164', 'N/A', '2023-08-15 12:18:14'),
('localhost', 675, '1696962509550', 2023, 'Seven', 'A', 'Mourn Tanjum Nusrat', 270509, 72, 'XXXXXXXXXX', '', 'Female', 'N/A', '270509@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '8acdae229e8c47970d6f472e9c4bbe96', 'N/A', '2023-08-15 12:18:14'),
('localhost', 676, '1697255410712', 2023, 'Seven', 'A', 'Umme Habiba', 376109, 73, 'XXXXXXXXXX', '', 'Female', 'N/A', '376109@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '90e3c231066343dccb7aafe17fb16681', 'N/A', '2023-08-15 12:18:14'),
('localhost', 677, '1697292788220', 2023, 'Seven', 'A', 'Meghna Roy', 889750, 74, 'XXXXXXXXXX', '', 'Female', 'N/A', '889750@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'e00fe1da06276c456bf27358ee316fec', 'N/A', '2023-08-15 12:18:14'),
('localhost', 678, '1697496898583', 2023, 'Seven', 'A', 'Sumaya', 723243, 75, 'XXXXXXXXXX', '', 'Female', 'N/A', '723243@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '6d5fa9c38596c8268a47a6db8137774e', 'N/A', '2023-08-15 12:18:14'),
('localhost', 679, '1697439795937', 2023, 'Seven', 'A', 'Mridula', 380329, 76, 'XXXXXXXXXX', '', 'Female', 'N/A', '380329@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '3f2e22f8d2f31f1e482cde39a121bed9', 'N/A', '2023-08-15 12:18:14'),
('localhost', 680, '1697595117963', 2023, 'Seven', 'A', 'Saima Rahman', 464960, 77, 'XXXXXXXXXX', '', 'Female', 'N/A', '464960@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '9a756074263086cf44cd2565d025f453', 'N/A', '2023-08-15 12:18:14'),
('localhost', 681, '1697213094990', 2023, 'Seven', 'A', 'Sharmin Akhter', 757283, 78, 'XXXXXXXXXX', '', 'Female', 'N/A', '757283@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '1d101bf337af25f80f2f2c6504dff5d6', 'N/A', '2023-08-15 12:18:14'),
('localhost', 682, '1697752503169', 2023, 'Seven', 'A', 'Sucana Parvin', 278949, 79, 'XXXXXXXXXX', '', 'Female', 'N/A', '278949@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '722e0598504dab6fa68ae848266b1e69', 'N/A', '2023-08-15 12:18:14'),
('localhost', 683, '1697504985713', 2023, 'Seven', 'A', 'Mim Khanam', 732590, 80, 'XXXXXXXXXX', '', 'Female', 'N/A', '732590@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'd748a71bd47f5725c8664fe3a1a528d8', 'N/A', '2023-08-15 12:18:14'),
('localhost', 684, '1697797795320', 2023, 'Seven', 'A', 'Nusrat Jahan', 208991, 81, 'XXXXXXXXXX', '', 'Female', 'N/A', '208991@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '9fc6030e3acd209190ac195ebafc1351', 'N/A', '2023-08-15 12:18:14'),
('localhost', 685, '1697071180688', 2023, 'Seven', 'A', 'Mili Podder', 333871, 82, 'XXXXXXXXXX', '', 'Female', 'N/A', '333871@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'daca981fed70ef65d9fa2643e602832e', 'N/A', '2023-08-15 12:18:14'),
('localhost', 686, '1697431541697', 2023, 'Seven', 'A', 'Taskin Towa', 866185, 83, 'XXXXXXXXXX', '', 'Female', 'N/A', '866185@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '95be3449764db0b9d14889198a64e3c1', 'N/A', '2023-08-15 12:18:14'),
('localhost', 687, '1697076582685', 2023, 'Seven', 'A', 'Anika Khan', 687682, 84, 'XXXXXXXXXX', '', 'Female', 'N/A', '687682@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '11ecce57a094485a5fae6a0de5a9021c', 'N/A', '2023-08-15 12:18:14'),
('localhost', 688, '1697234046531', 2023, 'Seven', 'A', 'Maisha Akhter', 98835, 85, 'XXXXXXXXXX', '', 'Female', 'N/A', '98835@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'd6868f4d707cf82c21a1374a76f3b759', 'N/A', '2023-08-15 12:18:14'),
('localhost', 689, '1697511836465', 2023, 'Seven', 'A', 'Iva Easmin', 57223, 86, 'XXXXXXXXXX', '', 'Female', 'N/A', '57223@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'ff487706a8aadfe8ecfa83ff106f9c59', 'N/A', '2023-08-15 12:18:14'),
('localhost', 690, '1697348187455', 2023, 'Seven', 'A', 'Borsa', 525806, 87, 'XXXXXXXXXX', '', 'Female', 'N/A', '525806@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'bce9f67a1a02e4867ab482aeec053748', 'N/A', '2023-08-15 12:18:14'),
('localhost', 691, '1697258210611', 2023, 'Seven', 'A', 'Mst. Jannati', 473906, 88, 'XXXXXXXXXX', '', 'Female', 'N/A', '473906@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '72201e386a0e468fd79cf74be39920dd', 'N/A', '2023-08-15 12:18:14'),
('localhost', 692, '1697362380724', 2023, 'Seven', 'A', 'Mahmuda Akhter', 876696, 89, 'XXXXXXXXXX', '', 'Female', 'N/A', '876696@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '9fc0139f84c8de4e52c57deec71de88c', 'N/A', '2023-08-15 12:18:14'),
('localhost', 693, '1697247347444', 2023, 'Seven', 'A', 'Brishti Akhter', 135755, 90, 'XXXXXXXXXX', '', 'Female', 'N/A', '135755@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'c15d69cb93847a7f9d896b43f2ca1778', 'N/A', '2023-08-15 12:18:14'),
('localhost', 694, '1697636101283', 2023, 'Seven', 'A', 'Rabeya Boshri', 876102, 91, 'XXXXXXXXXX', '', 'Female', 'N/A', '876102@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'caaf2c0ecddac32f593029cd60ea0eff', 'N/A', '2023-08-15 12:18:14'),
('localhost', 695, '1697260003429', 2023, 'Seven', 'A', 'Ankita Malo', 681787, 92, 'XXXXXXXXXX', '', 'Female', 'N/A', '681787@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '39fb6ac9da2c095dae5dd3553b9e360e', 'N/A', '2023-08-15 12:18:14'),
('localhost', 696, '1697328588282', 2023, 'Seven', 'A', 'Moriom Sultana', 689444, 93, 'XXXXXXXXXX', '', 'Female', 'N/A', '689444@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '13c1090baf6bdc1f643f10c7261709dd', 'N/A', '2023-08-15 12:18:14'),
('localhost', 697, '1697399317892', 2023, 'Seven', 'A', 'Umme Habiba', 213427, 94, 'XXXXXXXXXX', '', 'Female', 'N/A', '213427@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'e658c39a8ae5ea9eff999410cf29cc18', 'N/A', '2023-08-15 12:18:14'),
('localhost', 698, '1697473661405', 2023, 'Seven', 'A', 'Keya Nandi', 931005, 95, 'XXXXXXXXXX', '', 'Female', 'N/A', '931005@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '4a7293f42b0b1c81a6888bc71368b808', 'N/A', '2023-08-15 12:18:14'),
('localhost', 699, '1697331295544', 2023, 'Seven', 'A', 'Sadiya Khanam', 656842, 96, 'XXXXXXXXXX', '', 'Female', 'N/A', '656842@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'a179d815b345f0eb46d379b335f748f8', 'N/A', '2023-08-15 12:18:14');
INSERT INTO `students` (`domain`, `ID`, `student_uuid`, `session`, `class`, `section`, `name`, `student_id`, `roll`, `reg`, `birth_date`, `gender`, `blood_group`, `email`, `phone`, `telephone`, `father_name`, `mother_name`, `address`, `religion`, `admission_date`, `hobbies`, `avatar`, `facebook_link`, `password`, `quote`, `at_date`) VALUES
('localhost', 700, '1697325629978', 2023, 'Seven', 'A', 'Sabiha Khanam', 264888, 97, 'XXXXXXXXXX', '', 'Female', 'N/A', '264888@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '4361c659d079b76aa36f67fef6126e8e', 'N/A', '2023-08-15 12:18:14'),
('localhost', 701, '1697376444527', 2023, 'Seven', 'A', 'Asifa', 393391, 98, 'XXXXXXXXXX', '', 'Female', 'N/A', '393391@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '376c6af3a35fcebf2dc218b37701c255', 'N/A', '2023-08-15 12:18:14'),
('localhost', 702, '1697030949026', 2023, 'Seven', 'A', 'Shapla', 576968, 99, 'XXXXXXXXXX', '', 'Female', 'N/A', '576968@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '3b9c627c063df0d645f3e42ae7d8d8d4', 'N/A', '2023-08-15 12:18:14'),
('localhost', 703, '1697802223119', 2023, 'Seven', 'A', 'Nusrat Jahan', 658883, 100, 'XXXXXXXXXX', '', 'Female', 'N/A', '658883@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '6e94ed8716f87fbdd97c94aefd47b0f2', 'N/A', '2023-08-15 12:18:14'),
('localhost', 704, '1697300762031', 2023, 'Seven', 'A', 'Mahiya Khanam', 685502, 101, 'XXXXXXXXXX', '', 'Female', 'N/A', '685502@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '4137aa3dd50e766bbb56f5aa6f587a98', 'N/A', '2023-08-15 12:18:14'),
('localhost', 705, '1697304614482', 2023, 'Seven', 'A', 'Nusrat Jahan', 167386, 102, 'XXXXXXXXXX', '', 'Female', 'N/A', '167386@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '769608c7edcb89ad7a348e8426de97c2', 'N/A', '2023-08-15 12:18:14'),
('localhost', 706, '1697762505965', 2023, 'Seven', 'A', 'Athora Saha', 378496, 103, 'XXXXXXXXXX', '', 'Female', 'N/A', '378496@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'f45451cafb3da5f61eb7a1a63da82740', 'N/A', '2023-08-15 12:18:14'),
('localhost', 707, '1697655042015', 2023, 'Seven', 'A', 'Jikta Akhter', 797897, 104, 'XXXXXXXXXX', '', 'Female', 'N/A', '797897@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'fb116953fc7b6252d0046cc6f2400898', 'N/A', '2023-08-15 12:18:14'),
('localhost', 708, '1697374914578', 2023, 'Seven', 'A', 'Raisa ', 138142, 105, 'XXXXXXXXXX', '', 'Female', 'N/A', '138142@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'a684db503afc3ce3f93b75d3e91aa6bc', 'N/A', '2023-08-15 12:18:14'),
('localhost', 709, '1697268810314', 2023, 'Seven', 'A', 'Setu Akhter', 592294, 106, 'XXXXXXXXXX', '', 'Female', 'N/A', '592294@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '1bd0eaaccb00e43257d1804d8286cb72', 'N/A', '2023-08-15 12:18:14'),
('localhost', 710, '1697450398520', 2023, 'Seven', 'A', 'Elma', 378618, 107, 'XXXXXXXXXX', '', 'Female', 'N/A', '378618@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'da074aead5671ea00d3c24facf162ea5', 'N/A', '2023-08-15 12:18:14'),
('localhost', 711, '1697158112438', 2023, 'Seven', 'A', 'Asha Khanam', 822372, 108, 'XXXXXXXXXX', '', 'Female', 'N/A', '822372@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'da67a3605ac75e00abd168681a5cecb8', 'N/A', '2023-08-15 12:18:14'),
('localhost', 712, '1697724198711', 2023, 'Seven', 'A', 'Moriom', 185184, 109, 'XXXXXXXXXX', '', 'Female', 'N/A', '185184@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'fa54ca5bf1968a39caaedaa0c72e25ee', 'N/A', '2023-08-15 12:18:14'),
('localhost', 713, '1697017489587', 2023, 'Seven', 'A', 'Sumaya', 814415, 110, 'XXXXXXXXXX', '', 'Female', 'N/A', '814415@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '9dcf457683495e814e3f27150d5afb4f', 'N/A', '2023-08-15 12:18:14'),
('localhost', 714, '1697290172689', 2023, 'Seven', 'A', 'Maya Das', 278411, 111, 'XXXXXXXXXX', '', 'Female', 'N/A', '278411@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '5fc662eb73d2f235161841cf623b3687', 'N/A', '2023-08-15 12:18:14'),
('localhost', 715, '1697610654837', 2023, 'Seven', 'A', 'Dipa Biswas', 162927, 112, 'XXXXXXXXXX', '', 'Female', 'N/A', '162927@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'f873a1c4b3767ecd742da12f3204abc7', 'N/A', '2023-08-15 12:18:14'),
('localhost', 716, '1697685459527', 2023, 'Seven', 'A', 'Suraya', 163069, 113, 'XXXXXXXXXX', '', 'Female', 'N/A', '163069@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '34dba9cd6657edec0b67c3e13c269560', 'N/A', '2023-08-15 12:18:14'),
('localhost', 717, '1697701415847', 2023, 'Seven', 'A', 'Lamiya Khanam', 598952, 114, 'XXXXXXXXXX', '', 'Female', 'N/A', '598952@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '99c09b543f00a47902f7bd8856ca2a0f', 'N/A', '2023-08-15 12:18:14'),
('localhost', 718, '1697321973897', 2023, 'Seven', 'A', 'Ishita Khanam', 795208, 115, 'XXXXXXXXXX', '', 'Female', 'N/A', '795208@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'd20db0c093e5732a52a2593a27724325', 'N/A', '2023-08-15 12:18:14'),
('localhost', 719, '1697394444753', 2023, 'Seven', 'A', 'Eti Khanam', 690806, 116, 'XXXXXXXXXX', '', 'Female', 'N/A', '690806@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '4287dd3461e113f7d8776508f53a35e8', 'N/A', '2023-08-15 12:18:14'),
('localhost', 720, '1697354963805', 2023, 'Seven', 'A', 'Fatema', 819040, 117, 'XXXXXXXXXX', '', 'Female', 'N/A', '819040@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '149d9e9f988d82e6b96bc29907c3082a', 'N/A', '2023-08-15 12:18:14'),
('localhost', 721, '1697804892910', 2023, 'Seven', 'A', 'Mitu Khanam', 867434, 118, 'XXXXXXXXXX', '', 'Female', 'N/A', '867434@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'a5c7bb857f99ab3eb2999cfbef479999', 'N/A', '2023-08-15 12:18:14'),
('localhost', 722, '1697380820549', 2023, 'Seven', 'A', 'Pakhi Akhter', 799944, 119, 'XXXXXXXXXX', '', 'Female', 'N/A', '799944@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '5f800d44027641f438ec039d392c439f', 'N/A', '2023-08-15 12:18:14'),
('localhost', 723, '1697197429747', 2023, 'Seven', 'A', 'Fatema Akhter', 533942, 120, 'XXXXXXXXXX', '', 'Female', 'N/A', '533942@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '4f09ce52a1e9cc401e22a1aff7c3ccf1', 'N/A', '2023-08-15 12:18:14'),
('localhost', 724, '1697356455395', 2023, 'Seven', 'A', 'Aboni Ahmmed', 60947, 121, 'XXXXXXXXXX', '', 'Female', 'N/A', '60947@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'f10c53f0f06e9a3fa62489c07364c99f', 'N/A', '2023-08-15 12:18:14'),
('localhost', 725, '1697084574115', 2023, 'Seven', 'A', 'Jui', 90345, 122, 'XXXXXXXXXX', '', 'Female', 'N/A', '90345@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '1f7ec0e8a0d53ae65b9806df1919cead', 'N/A', '2023-08-15 12:18:14'),
('localhost', 726, '1697130773266', 2023, 'Seven', 'A', 'Swarna Karmakar', 644608, 123, 'XXXXXXXXXX', '', 'Female', 'N/A', '644608@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'f3cd85a7cb1f2567ce402529f8690b74', 'N/A', '2023-08-15 12:18:14'),
('localhost', 727, '1697112880985', 2023, 'Seven', 'A', 'Samiya', 590758, 124, 'XXXXXXXXXX', '', 'Female', 'N/A', '590758@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '0a0d76eb01c44d20ffa3ae71e30ea573', 'N/A', '2023-08-15 12:18:14'),
('localhost', 728, '1697007094964', 2023, 'Seven', 'A', 'Sneha Saha', 735438, 125, 'XXXXXXXXXX', '', 'Female', 'N/A', '735438@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '75eaca6d73846df4efe7fac3991e1177', 'N/A', '2023-08-15 12:18:14'),
('localhost', 729, '1697425332639', 2023, 'Seven', 'A', 'Taslima Akhter', 557332, 126, 'XXXXXXXXXX', '', 'Female', 'N/A', '557332@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'a1ee9d17e87d393550115e406393cf00', 'N/A', '2023-08-15 12:18:14'),
('localhost', 730, '1697793226753', 2023, 'Seven', 'A', 'Rupa Khanam', 213633, 127, 'XXXXXXXXXX', '', 'Female', 'N/A', '213633@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '2177e9b27d304ac59d456545bbfaf5bc', 'N/A', '2023-08-15 12:18:14'),
('localhost', 731, '1697176316085', 2023, 'Seven', 'A', 'Tithi Paul', 713273, 128, 'XXXXXXXXXX', '', 'Female', 'N/A', '713273@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'b277afdeb762e1a913577f86482e3545', 'N/A', '2023-08-15 12:18:14'),
('localhost', 732, '1697267560726', 2023, 'Seven', 'A', 'Ankhi Khanam', 469398, 129, 'XXXXXXXXXX', '', 'Female', 'N/A', '469398@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'fac006ce5705d052c88ddc78cd960585', 'N/A', '2023-08-15 12:18:14'),
('localhost', 733, '1696996935834', 2023, 'Seven', 'A', 'Mithila Molla', 351834, 130, 'XXXXXXXXXX', '', 'Female', 'N/A', '351834@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '19be2b58c385b3076fe3c6a36ead4f20', 'N/A', '2023-08-15 12:18:14'),
('localhost', 734, '1697271132907', 2023, 'Seven', 'A', 'Afsana Parvin', 119078, 131, 'XXXXXXXXXX', '', 'Female', 'N/A', '119078@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'd519edaa62eebe93902e71e6567d1f23', 'N/A', '2023-08-15 12:18:14'),
('localhost', 735, '1697642806452', 2023, 'Seven', 'A', 'Khadija', 422550, 132, 'XXXXXXXXXX', '', 'Female', 'N/A', '422550@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'd84c84ee5ce39aa765823fbdcaf473a5', 'N/A', '2023-08-15 12:18:14'),
('localhost', 736, '1697560692083', 2023, 'Seven', 'A', 'Nandini Laskar', 280609, 133, 'XXXXXXXXXX', '', 'Female', 'N/A', '280609@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'fef37de906055d38c2fc7202158e72df', 'N/A', '2023-08-15 12:18:14'),
('localhost', 737, '1697582041038', 2023, 'Seven', 'A', 'Gita Podder', 85242, 134, 'XXXXXXXXXX', '', 'Female', 'N/A', '85242@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'b60814cab0ae86dd0cbbccb52a24370e', 'N/A', '2023-08-15 12:18:14'),
('localhost', 738, '1697488662039', 2023, 'Seven', 'A', 'Tasmiya Khanam', 578571, 135, 'XXXXXXXXXX', '', 'Female', 'N/A', '578571@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '1f231ad870ba1ac5e1f286f46e064323', 'N/A', '2023-08-15 12:18:14'),
('localhost', 739, '1697293391193', 2023, 'Seven', 'A', 'Jhilik', 424818, 136, 'XXXXXXXXXX', '', 'Female', 'N/A', '424818@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '80f35fa6d78aefb4ef5e7a835acc3293', 'N/A', '2023-08-15 12:18:14'),
('localhost', 740, '1697070004009', 2023, 'Seven', 'A', 'Mim Akhter', 872466, 137, 'XXXXXXXXXX', '', 'Female', 'N/A', '872466@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '30cd52bd1cbc827ea6b5cbdba9383290', 'N/A', '2023-08-15 12:18:14'),
('localhost', 741, '1697282552795', 2023, 'Seven', 'A', 'Taniya ', 317856, 138, 'XXXXXXXXXX', '', 'Female', 'N/A', '317856@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'd743aa76496a216d993fc1daddee6b5c', 'N/A', '2023-08-15 12:18:14'),
('localhost', 742, '1697025989128', 2023, 'Seven', 'A', 'Jannati', 827132, 139, 'XXXXXXXXXX', '', 'Female', 'N/A', '827132@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'af08f023ced3aa730f375fffc4bf8466', 'N/A', '2023-08-15 12:18:14'),
('localhost', 743, '1697690272757', 2023, 'Seven', 'A', 'Ambiya', 758964, 140, 'XXXXXXXXXX', '', 'Female', 'N/A', '758964@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '5f535c96ea00c1aa8ffe2b14b26d4b24', 'N/A', '2023-08-15 12:18:14'),
('localhost', 744, '1697743088515', 2023, 'Seven', 'A', 'Abida', 733380, 141, 'XXXXXXXXXX', '', 'Female', 'N/A', '733380@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '5cfe6d7fd2c0b45c977d108e8558a6fe', 'N/A', '2023-08-15 12:18:14'),
('localhost', 745, '1697322846358', 2023, 'Seven', 'A', 'Zubaida Islam', 720531, 142, 'XXXXXXXXXX', '', 'Female', 'N/A', '720531@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '83ff8a562904f8434520d114bae8c292', 'N/A', '2023-08-15 12:18:14'),
('localhost', 746, '1697511865469', 2023, 'Seven', 'A', 'Rupa Khanam', 70428, 143, 'XXXXXXXXXX', '', 'Female', 'N/A', '70428@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '6c9592f5f13f438fd21469cd513fcbb9', 'N/A', '2023-08-15 12:18:14'),
('localhost', 747, '1697447209762', 2023, 'Seven', 'A', 'Isma', 833093, 144, 'XXXXXXXXXX', '', 'Female', 'N/A', '833093@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '740507f63ce36049ca37e952945bbe23', 'N/A', '2023-08-15 12:18:14'),
('localhost', 748, '1697325916729', 2023, 'Seven', 'A', 'Laki Akhter', 433088, 145, 'XXXXXXXXXX', '', 'Female', 'N/A', '433088@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'eb18d71da60456b60cf33d26544ecdf7', 'N/A', '2023-08-15 12:18:14'),
('localhost', 749, '1697383876084', 2023, 'Seven', 'A', 'Sumaya Imu', 779125, 146, 'XXXXXXXXXX', '', 'Female', 'N/A', '779125@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'bc28d9997fee86a84e11d899a186d082', 'N/A', '2023-08-15 12:18:14'),
('localhost', 750, '1697148047099', 2023, 'Seven', 'A', 'Setu Begom', 501033, 147, 'XXXXXXXXXX', '', 'Female', 'N/A', '501033@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'c82338fd2b92a2f1df2103c3c76d68d1', 'N/A', '2023-08-15 12:18:14'),
('localhost', 751, '1697532947068', 2023, 'Seven', 'A', 'Maliha Jahan', 323255, 148, 'XXXXXXXXXX', '', 'Female', 'N/A', '323255@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '683fbcfc7aacf1a6864aa152da7627ad', 'N/A', '2023-08-15 12:18:14'),
('localhost', 752, '1697448421239', 2023, 'Seven', 'A', 'Tuli Rani', 482939, 149, 'XXXXXXXXXX', '', 'Female', 'N/A', '482939@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'f60214fa485d7b2bc1cbf11439fc874a', 'N/A', '2023-08-15 12:18:14'),
('localhost', 753, '1697007446889', 2023, 'Seven', 'A', 'Farjana', 426285, 150, 'XXXXXXXXXX', '', 'Female', 'N/A', '426285@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '8d762cb5f1acfde33b8de5adc950efca', 'N/A', '2023-08-15 12:18:14'),
('localhost', 754, '1697486074299', 2023, 'Seven', 'A', 'Lamiya', 629157, 151, 'XXXXXXXXXX', '', 'Female', 'N/A', '629157@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'c41825be73fa3b9cea2758c04b94d32f', 'N/A', '2023-08-15 12:18:14'),
('localhost', 755, '1697116613379', 2023, 'Seven', 'A', 'Fahmida', 416665, 152, 'XXXXXXXXXX', '', 'Female', 'N/A', '416665@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '2623f4d4b4934a2b2037375d2ecce1f2', 'N/A', '2023-08-15 12:18:14'),
('localhost', 756, '1697818500657', 2023, 'Seven', 'A', 'Farhana Alom', 335125, 153, 'XXXXXXXXXX', '', 'Female', 'N/A', '335125@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'aa717e3df69d428b2a8da2cdc2bcb903', 'N/A', '2023-08-15 12:18:14'),
('localhost', 757, '1697823699838', 2023, 'Seven', 'A', 'Sadiya', 786128, 154, 'XXXXXXXXXX', '', 'Female', 'N/A', '786128@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '517b63e027fd3bf479cc74bea2b948fb', 'N/A', '2023-08-15 12:18:14'),
('localhost', 758, '1697808935549', 2023, 'Seven', 'A', 'Tasnim Farha', 624011, 155, 'XXXXXXXXXX', '', 'Female', 'N/A', '624011@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'ae3627955d37b5be9673d97353c0c1d2', 'N/A', '2023-08-15 12:18:14'),
('localhost', 759, '1697497790675', 2023, 'Seven', 'A', 'Anwesha Biswas', 784679, 156, 'XXXXXXXXXX', '', 'Female', 'N/A', '784679@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '6fa9d670d14f3ae720f47430bf38a866', 'N/A', '2023-08-15 12:24:39'),
('localhost', 760, '1697184971355', 2023, 'Seven', 'A', 'Ankita Dutta', 630903, 157, 'XXXXXXXXXX', '', 'Female', 'N/A', '630903@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '270aebf451a216ba4e2ac286f97e579e', 'N/A', '2023-08-15 12:24:39'),
('localhost', 761, '1697104479633', 2023, 'Seven', 'A', 'Binti Saha', 845670, 158, 'XXXXXXXXXX', '', 'Female', 'N/A', '845670@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', '6c6fcac3b6b3c04a8077a7c50cb508e6', 'N/A', '2023-08-15 12:24:39'),
('localhost', 762, '1697631131130', 2023, 'Seven', 'A', 'Zayeda Islam Porshia ', 26738, 201, 'XXXXXXXXXX', '', 'Female', 'N/A', '26738@abc.com', '', 'XXXXXXXXXXX', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'female_avatar.png', 'N/A', 'password', 'N/A', '2023-09-26 08:07:32'),
('localhost', 765, '1697403965703', 2023, 'Six', 'A', 'no name', 0, 100, 'XXXXXXXXXX', '', 'Male', 'undefined', 'noname@mail.com', '2345678901', 'XXXXXXXXXXX', 'undefined', 'undefined', '', 'undefined', '', 'N/A', 'male_avatar.png', 'N/A', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 06:52:45');

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
('localhost', 1, 'Eight', 'বাংলা ব্যকরন ও নির্মিতি', 'c40c235fa0f35f21c6ee', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 2, 'Eight', 'গণিত', '2938d856c3284fe1218c', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 3, 'Eight', 'বিজ্ঞান', 'cf8b5b01a35e1b80d034', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 4, 'Eight', 'আনন্দ পাঠ', '675ee9f597b94df24e87', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 5, 'Eight', 'কৃষি শিক্ষা', 'e0bd1aff17db655516c5', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 6, 'Eight', 'গার্হস্থ্য বিজ্ঞান', 'cccf2d5b020c3bab11be', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 7, 'Eight', 'শারীরিক শিক্ষা ও স্বাস্থ্য', '79776ed85d3fbb123017', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 8, 'Eight', 'তথ্য ও যোগাযোগ প্রযুক্তি', '3f52b6b06ddb606086c5', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 9, 'Eight', 'ইসলাম ও নৈতিক শিক্ষা', '5a4764216d5af809ccf6', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 10, 'Eight', 'হিন্দুধর্ম শিক্ষা', 'cb86039479356fcb76e0', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 11, 'Eight', 'খ্রিস্ট্রাধর্ম শিক্ষা', 'f579b2e1c4e63f2e53a2', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 12, 'Eight', 'কর্ম ও জীবনমুখী শিক্ষা', 'dcfb3b160fb9d7b046f7', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 13, 'Eight', 'চারু ও কারুকলা', 'c12b62838d6a28076650', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 14, 'Eight', 'English for Today', '2d1c9e52538a93a6c0a7', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 15, 'Eight', 'English Grammar and Composition', '59738917894bb3fee583', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 16, 'Eight', 'সাহিত্য কনিকা', '736cd163102c6488c0d2', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 17, 'Eight', 'বাংলাদেশ ও বিশ্বপরিচয়', '73d01e30fc7ee714977d', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 18, 'Eight', 'আরবি', '3709b624e01017d88e42', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 19, 'Eight', 'সংস্কৃতি', '20fef0e6b10af760ef9e', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 20, 'Eight', 'পালি', '0bd249ecf637bd8a9e4a', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 21, 'Eight', 'সঙ্গগীত', 'dc97a1a553060b7223fd', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 22, 'Nine', 'বাংলা সাহিত্য', 'ca511cb2b7d62fdba1b0', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 23, 'Nine', 'বাংলা সহপাঠ', '9f5390543bcd2b2f5541', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 24, 'Nine', 'বাংলা ভাষার ব্যাকরণ', 'cdcdae3d1ea566f03efb', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 25, 'Nine', 'English for Toady', 'c00069477365372110fd', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 26, 'Nine', 'গণিত', 'ae2ad9d0a6692af0533a', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 27, 'Nine', 'English Grammar and Composition', '0702047afdba8688c57c', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 28, 'Nine', 'তথ্য ও যোগাযোগ প্রযুক্তি', 'b3a13d03bc393cb00690', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 29, 'Nine', 'বিজ্ঞান', '0c271d1ba70b1592e833', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 30, 'Nine', 'পদার্থ-বিজ্ঞান', '0c8fc7a777e530be6b92', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 31, 'Nine', 'রসায়ন', '0d16d3b9176506a23bd3', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 32, 'Nine', 'জীব-বিজ্ঞান', 'bdb8b9a633cf2742e08b', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 33, 'Nine', 'উচ্চতর গণিত', '82e738169c89dce9d463', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 34, 'Nine', 'ভূগোল ও পরিবেশ', '78a9025b8adec7c27082', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 35, 'Nine', 'অর্থনীতি', '3d62896b2dc548777aeb', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 36, 'Nine', 'কৃষিশিক্ষা', 'b0e6ae124a0ec3043868', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 37, 'Nine', 'গার্হস্থ্য বিজ্ঞান', '95dcc14a74eeceb2fc15', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 38, 'Nine', 'পৌরনীতি ও নাগরিকতা', '7dac549685ec8320262c', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 39, 'Nine', 'হিসাব-বিজ্ঞান', 'ae41256505e283512ca3', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 40, 'Nine', 'ফিন্যান্স ও ব্যাংকিং', '9a859c99408569d28144', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 41, 'Nine', 'ব্যবসায় উদ্যোগ', '618efe53b6dd4dac7445', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 42, 'Nine', 'ইসলাম ও নৈতিক শিক্ষা', '6f16a0637ebada15a9df', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 43, 'Nine', 'হিন্দুধর্ম শিক্ষা', '572f51bc9108a165bacb', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 44, 'Nine', 'বৌদ্ধধর্ম শিক্ষা', 'e586f18fb6479b290907', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 45, 'Nine', 'খ্রিষ্টধর্ম শিক্ষা', 'f9d4d913516ac4c9c500', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 46, 'Nine', 'ক্যারিয়ার এডুকেশন', '0502b919bc179627c475', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 47, 'Nine', 'বাংলাদেশ ও বিশ্বপরিচয়', 'f9eaf90f000d2c356f10', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 48, 'Nine', 'চারু ও কারুকলা', 'a5ae029565371e3876af', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 49, 'Nine', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '6c734681b53da21d3af8', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 50, 'Nine', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '685af648e1778578b8e1', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 51, 'Nine', 'সচিত্র আরবি পাঠ', 'eaabcee8aaff3d6be2d0', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 52, 'Nine', 'সংস্কৃত', 'c0283bef203775187c5b', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 53, 'Nine', 'পালি', 'a17b41b4871e851b41cd', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 54, 'Nine', 'সংগীত', 'ad827276bb110511bbdc', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 55, 'Ten', 'বাংলা সাহিত্য', 'ecff1372109a18e33cb5', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 56, 'Ten', 'বাংলা সহপাঠ', '363dd840fbf42552565a', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 57, 'Ten', 'বাংলা ভাষার ব্যাকরণ', '5a850da3c72d115bdb4d', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 58, 'Ten', 'English for Toady', '9045dcc19b6b4c25e5f6', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 59, 'Ten', 'গণিত', '5311f9a2f780e503dabc', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 60, 'Ten', 'English Grammar and Composition', 'ea3e55de8fc17c9f494a', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 61, 'Ten', 'তথ্য ও যোগাযোগ প্রযুক্তি', '92557bda433ec9f8d8ce', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 62, 'Ten', 'বিজ্ঞান', '52f8f13abcf215f9fd08', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 63, 'Ten', 'পদার্থ-বিজ্ঞান', '82551f667f7ea49b9805', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 64, 'Ten', 'রসায়ন', '2762b883a70a298cc3bf', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 65, 'Ten', 'জীব-বিজ্ঞান', 'ef6341652c1b0883ab7b', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 66, 'Ten', 'উচ্চতর গণিত', 'a07a29732704115d028a', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 67, 'Ten', 'ভূগোল ও পরিবেশ', '5ada44a927b04ee4ab9b', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 68, 'Ten', 'অর্থনীতি', '389c5fd315777fa85ded', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 69, 'Ten', 'কৃষিশিক্ষা', '5273aee0d75d6601d938', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 70, 'Ten', 'গার্হস্থ্য বিজ্ঞান', '19603e9e5cbc63650b6e', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 71, 'Ten', 'পৌরনীতি ও নাগরিকতা', 'c0b65d6add6558cbb3bc', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 72, 'Ten', 'হিসাব-বিজ্ঞান', 'd0fc85095654a9f98df9', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 73, 'Ten', 'ফিন্যান্স ও ব্যাংকিং', 'a5e4c0af5666a07f92ae', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 74, 'Ten', 'ব্যবসায় উদ্যোগ', '1596232a5184bd3b2f63', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 75, 'Ten', 'ইসলাম ও নৈতিক শিক্ষা', '55b07a127d471256b2ac', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 76, 'Ten', 'হিন্দুধর্ম শিক্ষা', 'cb0ec28ffdb1dd5e0b90', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 77, 'Ten', 'বৌদ্ধধর্ম শিক্ষা', '21f32c1dd44dafa7a9ba', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 78, 'Ten', 'খ্রিষ্টধর্ম শিক্ষা', '4093ce2484756503d4f1', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 79, 'Ten', 'ক্যারিয়ার এডুকেশন', 'dd4b5f6778f087beeaaf', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 80, 'Ten', 'বাংলাদেশ ও বিশ্বপরিচয়', '2236c1da22bf4062ddd3', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 81, 'Ten', 'চারু ও কারুকলা', 'a8d555982259e730e8cd', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 82, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'c93fb3c5dd3f9b39583e', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 83, 'Ten', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '6871bfed8c793aa4183b', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 84, 'Ten', 'সচিত্র আরবি পাঠ', 'c2268861462bd6912048', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 85, 'Ten', 'সংস্কৃত', 'd36dbc4c61ce65d29006', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 86, 'Ten', 'পালি', 'b1e6d337680be5571fc8', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 87, 'Ten', 'সংগীত', 'a5f5a2e0dd5cf7d135ca', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 88, 'Nine', 'পদার্থ-বিজ্ঞান', '3aa0a5d4d6f3468023bf', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 89, 'Nine', 'রসায়ন', '9f3f83d10dbb926e8bbd', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 90, 'Nine', 'জীব-বিজ্ঞান', '756c0dbc6101bbfd80cf', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 91, 'Nine', 'উচ্চতর গণিত', 'de8bec5aecfb7755e765', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 92, 'Ten', 'পদার্থ-বিজ্ঞান', '1873f77dee562559cd56', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 93, 'Ten', 'রসায়ন', '326b423b4ae6cc90988a', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 94, 'Ten', 'জীব-বিজ্ঞান', 'dc4c99ce6eda9129586b', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 95, 'Ten', 'উচ্চতর গণিত', 'fafd12f85266a77d1e6b', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 96, 'Nine', 'হিসাব-বিজ্ঞান', '8faf2cd47849c5104c4c', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 97, 'Nine', 'ফিন্যান্স ও ব্যাংকিং', '5fc29132e8c7092ed4eb', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 98, 'Nine', 'ব্যবসায় উদ্যোগ', '9add88bb3aa541b616a4', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 99, 'Ten', 'হিসাব-বিজ্ঞান', 'b9bb37fa4b1ebbcf2ac5', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 100, 'Ten', 'ফিন্যান্স ও ব্যাংকিং', '22541876ad0344e4b05c', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 101, 'Ten', 'ব্যবসায় উদ্যোগ', 'd91a849698f31befe006', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 102, 'Nine', 'অর্থনীতি', '55ae43fdc8cabddd9e4d', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 103, 'Nine', 'ভূগোল ও পরিবেশ', '5d39f6f277676c2bd882', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 104, 'Nine', 'পৌরনীতি ও নাগরিকতা', 'fc6b6c1f19e806f28466', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 105, 'Nine', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'b0a9d1d81b904677b5ea', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 106, 'Ten', 'অর্থনীতি', '30e5c40973da7ed8ae24', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 107, 'Ten', 'ভূগোল ও পরিবেশ', '09366128c42ee1b2c40e', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 108, 'Ten', 'পৌরনীতি ও নাগরিকতা', '9938ac5b5e5a38c031dd', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 109, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '4a69f93fa66ad34fdeca', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 110, 'Ten', 'অর্থনীতি', '4f2477c25fe398d38c40', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 111, 'Ten', 'ভূগোল ও পরিবেশ', 'b0d0024c7a10acb47823', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 112, 'Ten', 'পৌরনীতি ও নাগরিকতা', '6b8ec2c49d2bbe13d071', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 113, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'd729d071aa2f8589fadd', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 114, 'Eight', 'বাংলা ১ম', '1ef57376569195a0f6c5', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 115, 'Eight', 'বাংলা ২য়', '733e404857486468750a', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 116, 'Eight', 'ইংরেজী ১ম', '19409cb8ac6b55033821', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 117, 'Eight', 'ইংরেজী ২য়', '3dd6e647eca4dd3d407c', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 118, 'Nine', 'বাংলা ১ম', '9f7a7c5fd10a57449949', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 119, 'Nine', 'বাংলা ২য়', '9533e2f97c79a3d1d6a3', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 120, 'Nine', 'ইংরেজী ১ম', 'ea2f8f9f91ecf22faf8e', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 121, 'Nine', 'ইংরেজী ২য়', 'dd5574b000ad2f7e8073', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 122, 'Ten', 'বাংলা ১ম', 'c1c6c9309c375bd0e474', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 123, 'Ten', 'বাংলা ২য়', '1ebf52d366074987fa48', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 124, 'Ten', 'ইংরেজী ১ম', 'cbd35d0b2453ee8b1ecf', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 125, 'Ten', 'ইংরেজী ২য়', '98a93380f6dbc3df153e', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 126, 'Nine', 'সামাঃ বিজ্ঞান', '06f4c0dcb90b937a7f59', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 127, 'Ten', 'সামাঃ বিজ্ঞান', '5e214b85793365a8394d', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 128, 'Eight', 'বিতর্ক', '7c73b66da8458c425504', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 129, 'Eight', 'ডিজিটাল প্রযুক্তি', 'f39dd8ffade6349a567b', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 130, 'Six', 'বৌদ্ধধর্ম-শিক্ষা', '28082faad47ed1c9f056', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 131, 'Six', 'খ্রিস্ট্রধর্ম-শিক্ষা', '6dfc325274f4bb99b8ae', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 132, 'Six', 'হিন্দুধর্ম-শিক্ষা', '28cc41e03a00e411ebc5', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 133, 'Six', 'ইসলাম-শিক্ষা', '33debbeb481a12b21b02', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 134, 'Six', 'শিল্প-ও-সংস্কৃতি', '41c26fb38f1ad09c8714', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 135, 'Six', 'জীবন-ও-জীবিকা', '3f428948b570e6ef17a4', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 136, 'Six', 'স্বাস্থ্য-সুরক্ষা', '215e1d18a576efe9e9ad', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 137, 'Six', 'ডিজিটাল-প্রযুক্তি', '99f64951c08464653cfc', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 138, 'Six', 'ইতিহাস-ও-সামাজিক-বিজ্ঞান-অনুশীলন-বই', '58286b2350af1bb052a4', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 139, 'Six', 'বিজ্ঞান-অনুশীলন-বই', '675414b8fddd5895cc80', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 140, 'Seven', 'বৌদ্ধধর্ম-শিক্ষা', 'b40cdc33633fba88a7f4', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 141, 'Seven', 'খ্রিস্ট্রধর্ম-শিক্ষা', '6346c1cca32082aa239e', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 142, 'Seven', 'হিন্দুধর্ম-শিক্ষা', 'a1ac14a7ac32038788f3', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 143, 'Seven', 'ইসলাম-শিক্ষা', 'e1de6a3cfc7949017a78', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 144, 'Seven', 'শিল্প-ও-সংস্কৃতি', '1b46c63ada0ae2b56920', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 145, 'Seven', 'জীবন-ও-জীবিকা', 'e0e5a4d618ead40387ee', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 146, 'Seven', 'স্বাস্থ্য-সুরক্ষা', '4220d7dc94ee14a3a55a', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 147, 'Seven', 'ডিজিটাল-প্রযুক্তি', '4910f8f07efa48637bff', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 148, 'Seven', 'ইতিহাস-ও-সামাজিক-বিজ্ঞান-অনুশীলন-বই', 'e6c10e66b99051b55432', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 149, 'Seven', 'বিজ্ঞান-অনুশীলন-বই', '14f6f2878ee358b1c18b', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 150, 'Seven', 'বিজ্ঞান-অনুসন্ধানী-পাঠ', '5ec455d0ca4e2df15d70', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 151, 'Seven', 'গণিত', 'd0e57543219706f0bde2', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 152, 'Seven', 'English', '2574497bc5cc43843d33', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 153, 'Seven', 'বাংলা', '52bd034da64422d60b6f', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 154, 'Six', 'Bangla', '97633d1ebe1b8726a2c2', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 155, 'Six', 'গণিত', '8ac2176a06c2f8b9b7c1', 'demo', '', '', '2023-10-07 11:09:17'),
('localhost', 156, 'Eight', 'বাংলা ব্যকরন ও নির্মিতি', 'fce225f3f0a1e1a42902', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 157, 'Eight', 'গণিত', 'ea01fb2e6bb68e3714cd', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 158, 'Eight', 'বিজ্ঞান', '17d74212bd7e323a00ac', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 159, 'Eight', 'আনন্দ পাঠ', '2bf2873fbe1c1b0f104b', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 160, 'Eight', 'কৃষি শিক্ষা', '27ca992989e97397d7a7', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 161, 'Eight', 'গার্হস্থ্য বিজ্ঞান', '83fc1e9718e72633d531', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 162, 'Eight', 'শারীরিক শিক্ষা ও স্বাস্থ্য', 'b8c9f03c8c8976bc7bc7', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 163, 'Eight', 'তথ্য ও যোগাযোগ প্রযুক্তি', 'c62924ae0c76e1492457', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 164, 'Eight', 'ইসলাম ও নৈতিক শিক্ষা', 'bc88c67c3ab2a573c886', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 165, 'Eight', 'হিন্দুধর্ম শিক্ষা', '182ded9d966c9c2c0eb8', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 166, 'Eight', 'খ্রিস্ট্রাধর্ম শিক্ষা', 'bb176abb7edebdd68fde', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 167, 'Eight', 'কর্ম ও জীবনমুখী শিক্ষা', '3683c61ef380f29c7404', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 168, 'Eight', 'চারু ও কারুকলা', '3a67624cb4d66660b77c', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 169, 'Eight', 'English for Today', '93e004e77fac969c9df8', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 170, 'Eight', 'English Grammar and Composition', 'ac3264d304e92e7c7caa', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 171, 'Eight', 'সাহিত্য কনিকা', '1f78a18402aa49cc4caa', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 172, 'Eight', 'বাংলাদেশ ও বিশ্বপরিচয়', 'ce0bb703fea2ed2032e3', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 173, 'Eight', 'আরবি', '8b49662f3861acb1ff15', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 174, 'Eight', 'সংস্কৃতি', '8ff9819b166f3cac52c6', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 175, 'Eight', 'পালি', '9d7f79326347ba8e0206', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 176, 'Eight', 'সঙ্গগীত', '62ac08d0424b4f34f149', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 177, 'Nine', 'বাংলা সাহিত্য', '6ef65d30f35bfd7a2e3e', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 178, 'Nine', 'বাংলা সহপাঠ', 'da8c8dc18f0a8c62d9d1', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 179, 'Nine', 'বাংলা ভাষার ব্যাকরণ', 'ed067b1bd26dfbb74c68', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 180, 'Nine', 'English for Toady', '692463fe31bfdbfcb64c', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 181, 'Nine', 'গণিত', '7d208c8b6d304e88addf', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 182, 'Nine', 'English Grammar and Composition', '58865737212df63fc11f', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 183, 'Nine', 'তথ্য ও যোগাযোগ প্রযুক্তি', '474582be2b743477a4cd', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 184, 'Nine', 'বিজ্ঞান', '7f30f9edbc408382533c', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 185, 'Nine', 'পদার্থ-বিজ্ঞান', '7ad2d4a5958047bced5c', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 186, 'Nine', 'রসায়ন', '26f8914a68d9a3a7cd29', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 187, 'Nine', 'জীব-বিজ্ঞান', 'f675685ee762dfe1c0cc', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 188, 'Nine', 'উচ্চতর গণিত', 'cb070b8512e6c0943f80', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 189, 'Nine', 'ভূগোল ও পরিবেশ', 'b5a2efcac35853f66bfd', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 190, 'Nine', 'অর্থনীতি', 'd29de65dc30c8f764236', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 191, 'Nine', 'কৃষিশিক্ষা', '344cc4f525b4028657b1', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 192, 'Nine', 'গার্হস্থ্য বিজ্ঞান', '58c47a1532c6bd5a765e', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 193, 'Nine', 'পৌরনীতি ও নাগরিকতা', '906a36968f058d76b129', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 194, 'Nine', 'হিসাব-বিজ্ঞান', '11e866a494092510540d', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 195, 'Nine', 'ফিন্যান্স ও ব্যাংকিং', 'a284ea13a88007d7b97a', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 196, 'Nine', 'ব্যবসায় উদ্যোগ', '4acebc30852cfd1c7da0', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 197, 'Nine', 'ইসলাম ও নৈতিক শিক্ষা', '28f9adaa9c94df0e4dfd', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 198, 'Nine', 'হিন্দুধর্ম শিক্ষা', '04df6777fda74fc307ab', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 199, 'Nine', 'বৌদ্ধধর্ম শিক্ষা', '134130fc5db6b864ab39', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 200, 'Nine', 'খ্রিষ্টধর্ম শিক্ষা', '5681bf42ea590bbb30bd', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 201, 'Nine', 'ক্যারিয়ার এডুকেশন', '3ae86b59b359955c412b', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 202, 'Nine', 'বাংলাদেশ ও বিশ্বপরিচয়', '8773f846edcba65574c7', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 203, 'Nine', 'চারু ও কারুকলা', '9e410b1f57425b97dbd5', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 204, 'Nine', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '49e41e0e207a274b849a', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 205, 'Nine', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', 'e310890586bde3bc5e38', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 206, 'Nine', 'সচিত্র আরবি পাঠ', '32e540266a67519a832b', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 207, 'Nine', 'সংস্কৃত', '2d76177eae16ae33cae8', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 208, 'Nine', 'পালি', '2ba67a3d31892f85c09c', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 209, 'Nine', 'সংগীত', 'a86e8d4f6691d07441c9', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 210, 'Ten', 'বাংলা সাহিত্য', 'c8ecbfd79fc70ff3ed46', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 211, 'Ten', 'বাংলা সহপাঠ', 'f8f15dff19d0b45c78de', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 212, 'Ten', 'বাংলা ভাষার ব্যাকরণ', 'edd4787385b54404bda9', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 213, 'Ten', 'English for Toady', '5da8ab7fc89421da16f5', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 214, 'Ten', 'গণিত', 'd3f41a986dfcd2425e9b', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 215, 'Ten', 'English Grammar and Composition', 'ef2a618be3d162bb52b8', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 216, 'Ten', 'তথ্য ও যোগাযোগ প্রযুক্তি', '1cee7893e38198910715', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 217, 'Ten', 'বিজ্ঞান', '0fc2ebb536aaafb6f1a7', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 218, 'Ten', 'পদার্থ-বিজ্ঞান', 'bebe0f36279fdc23ea8b', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 219, 'Ten', 'রসায়ন', '2fc09c6eb7c912ba9225', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 220, 'Ten', 'জীব-বিজ্ঞান', '7bf2ae60948f65ab533d', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 221, 'Ten', 'উচ্চতর গণিত', '98dc44aeff712e887e6b', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 222, 'Ten', 'ভূগোল ও পরিবেশ', '31d81cc195ebe6e0e0f5', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 223, 'Ten', 'অর্থনীতি', '887cc0765cfdc0313ec0', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 224, 'Ten', 'কৃষিশিক্ষা', '7d36736e8666f38c7c68', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 225, 'Ten', 'গার্হস্থ্য বিজ্ঞান', '8ce3da5309db61cd2f0e', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 226, 'Ten', 'পৌরনীতি ও নাগরিকতা', 'd857c86363ebb9a99912', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 227, 'Ten', 'হিসাব-বিজ্ঞান', '9db9da9f1d83884a3b9d', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 228, 'Ten', 'ফিন্যান্স ও ব্যাংকিং', '2095742c392a77368f0b', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 229, 'Ten', 'ব্যবসায় উদ্যোগ', 'dc7e49c35e9d9260aef6', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 230, 'Ten', 'ইসলাম ও নৈতিক শিক্ষা', 'dda69c773bbd175b134d', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 231, 'Ten', 'হিন্দুধর্ম শিক্ষা', '2f0578726835eb3b5c78', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 232, 'Ten', 'বৌদ্ধধর্ম শিক্ষা', 'eaa1a8b2c7ef2fdef6be', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 233, 'Ten', 'খ্রিষ্টধর্ম শিক্ষা', '7acc7a6b946c005f7540', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 234, 'Ten', 'ক্যারিয়ার এডুকেশন', '6745d92308022fab11ae', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 235, 'Ten', 'বাংলাদেশ ও বিশ্বপরিচয়', 'cd4ca82ac186c29e4097', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 236, 'Ten', 'চারু ও কারুকলা', '2c81d138afdeb25370f1', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 237, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '2562cdb3fab6c96798d5', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 238, 'Ten', 'শারীরিক শিক্ষা, স্বাস্থ্য বিজ্ঞান ও খেলাধুলা', '642d88f4558928295bc1', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 239, 'Ten', 'সচিত্র আরবি পাঠ', 'ba08b637116887f01865', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 240, 'Ten', 'সংস্কৃত', '5f9ee3cc0976fa1478b1', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 241, 'Ten', 'পালি', '8a9ba739c333b47d2e7b', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 242, 'Ten', 'সংগীত', '88bdacb7d319ceb59337', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 243, 'Nine', 'পদার্থ-বিজ্ঞান', 'd2a70b496f51bc67f2a4', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 244, 'Nine', 'রসায়ন', 'd3fe91c6c259387ae8cb', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 245, 'Nine', 'জীব-বিজ্ঞান', 'aefd915e8f64ee30bf55', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 246, 'Nine', 'উচ্চতর গণিত', '0921216806e036ac3916', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 247, 'Ten', 'পদার্থ-বিজ্ঞান', 'd37580a1c5579ace7151', 'demo', '', '', '2023-10-07 11:54:20'),
('localhost', 248, 'Ten', 'রসায়ন', '8c6528614d8d1a962aa1', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 249, 'Ten', 'জীব-বিজ্ঞান', 'f1ba05fcc16ca6906522', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 250, 'Ten', 'উচ্চতর গণিত', '8c7ff70bc24bab3424d8', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 251, 'Nine', 'হিসাব-বিজ্ঞান', 'f82068d20d7d7f519e34', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 252, 'Nine', 'ফিন্যান্স ও ব্যাংকিং', '7e387d8b9714e1397831', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 253, 'Nine', 'ব্যবসায় উদ্যোগ', '543335f17f5b8c7a66f7', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 254, 'Ten', 'হিসাব-বিজ্ঞান', '901b7e470cf0615d250a', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 255, 'Ten', 'ফিন্যান্স ও ব্যাংকিং', 'cbd2a230dd7ccdfa7691', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 256, 'Ten', 'ব্যবসায় উদ্যোগ', '04d31448ca9c9b8d60bc', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 257, 'Nine', 'অর্থনীতি', 'cfc897b8352216095d0a', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 258, 'Nine', 'ভূগোল ও পরিবেশ', 'afdd64612de4b2f3fb46', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 259, 'Nine', 'পৌরনীতি ও নাগরিকতা', 'ea3fcdd644fd86b7976f', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 260, 'Nine', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', '1ea22c65891d27916ac9', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 261, 'Ten', 'অর্থনীতি', '1b78e471c4ec57fdd5d4', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 262, 'Ten', 'ভূগোল ও পরিবেশ', '6e91fe83863e734c40dc', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 263, 'Ten', 'পৌরনীতি ও নাগরিকতা', '109f0a169c7d2dbe986b', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 264, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'e12124ce7620c21a7b21', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 265, 'Ten', 'অর্থনীতি', 'caa126d7df38f0bd5f5f', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 266, 'Ten', 'ভূগোল ও পরিবেশ', '2c2a8cf90c810d1dbd9d', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 267, 'Ten', 'পৌরনীতি ও নাগরিকতা', '2ce3605c49d86749bdbf', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 268, 'Ten', 'বাংলাদেশের ইতিহাস ও বিশ্বসভ্যতা', 'f558a099b9779096dd81', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 269, 'Eight', 'বাংলা ১ম', '51290354c72f544a8351', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 270, 'Eight', 'বাংলা ২য়', '827ebb921b0ef0b8a7ea', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 271, 'Eight', 'ইংরেজী ১ম', 'c34953dd649662998394', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 272, 'Eight', 'ইংরেজী ২য়', 'e56f971d1d5d658e38ba', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 273, 'Nine', 'বাংলা ১ম', '77a3dbb0edf22411a3ed', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 274, 'Nine', 'বাংলা ২য়', '96c10911d42034fcc3f4', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 275, 'Nine', 'ইংরেজী ১ম', 'b3b62f7ed841246ee45b', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 276, 'Nine', 'ইংরেজী ২য়', '328a8ae8f82873808bc1', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 277, 'Ten', 'বাংলা ১ম', '1b9c59b6c71cfcc66304', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 278, 'Ten', 'বাংলা ২য়', '3be1085ebd44b9a803b2', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 279, 'Ten', 'ইংরেজী ১ম', '63883190b3e78efdfd9b', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 280, 'Ten', 'ইংরেজী ২য়', 'cf8abe31570290327c8c', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 281, 'Nine', 'সামাঃ বিজ্ঞান', '0797f960472358554c10', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 282, 'Ten', 'সামাঃ বিজ্ঞান', '4a9128dd340a5b450218', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 283, 'Eight', 'বিতর্ক', 'c58fdcfbbb79d152f7b8', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 284, 'Eight', 'ডিজিটাল প্রযুক্তি', '2d8ce4cb4262c39b1dae', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 285, 'Six', 'বৌদ্ধধর্ম-শিক্ষা', 'b2060fc46be404deb167', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 286, 'Six', 'খ্রিস্ট্রধর্ম-শিক্ষা', '67d37a43dbd2aa538df9', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 287, 'Six', 'হিন্দুধর্ম-শিক্ষা', 'df17cd2511bc0b5ebcf0', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 288, 'Six', 'ইসলাম-শিক্ষা', 'c344a277bafdacd7a135', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 289, 'Six', 'শিল্প-ও-সংস্কৃতি', 'be2be07fc9d231f495fd', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 290, 'Six', 'জীবন-ও-জীবিকা', '9a6eebaf8e9be8d17263', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 291, 'Six', 'স্বাস্থ্য-সুরক্ষা', 'de715428c4b613283c28', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 292, 'Six', 'ডিজিটাল-প্রযুক্তি', '20dea9bb4d476a934440', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 293, 'Six', 'ইতিহাস-ও-সামাজিক-বিজ্ঞান-অনুশীলন-বই', '5bac0093ecb37d5aa43d', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 294, 'Six', 'বিজ্ঞান-অনুশীলন-বই', '3f5c3bba1600014e68e1', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 295, 'Seven', 'বৌদ্ধধর্ম-শিক্ষা', '3002c054ce8b74819c06', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 296, 'Seven', 'খ্রিস্ট্রধর্ম-শিক্ষা', 'dc4bca7c8dddf4dc12da', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 297, 'Seven', 'হিন্দুধর্ম-শিক্ষা', '5cc29cd924c0cc835e4c', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 298, 'Seven', 'ইসলাম-শিক্ষা', 'dfde8e2e2bba6c9e7753', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 299, 'Seven', 'শিল্প-ও-সংস্কৃতি', '36d9205aeb814a8e8100', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 300, 'Seven', 'জীবন-ও-জীবিকা', '34870db08e21eb6b01e4', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 301, 'Seven', 'স্বাস্থ্য-সুরক্ষা', '83c84408dd18287332b0', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 302, 'Seven', 'ডিজিটাল-প্রযুক্তি', '21dd886ecf4470c9715f', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 303, 'Seven', 'ইতিহাস-ও-সামাজিক-বিজ্ঞান-অনুশীলন-বই', '95c38c696f602836d403', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 304, 'Seven', 'বিজ্ঞান-অনুশীলন-বই', 'ff3ffc785af59a29dbb9', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 305, 'Seven', 'বিজ্ঞান-অনুসন্ধানী-পাঠ', '31f56a3aa9a799d35040', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 306, 'Seven', 'গণিত', '585b90f7d7b2aef0ecf6', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 307, 'Seven', 'English', '9daee500a0c703b520f3', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 308, 'Seven', 'বাংলা', '8c7b3c6523e5c0984ea7', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 309, 'Six', 'Bangla', '5deb1cc8b0fd90a7d48f', 'demo', '', '', '2023-10-07 11:54:21'),
('localhost', 310, 'Six', 'গণিত', '0758ecb1ef4b011853f3', 'demo', '', '', '2023-10-07 11:54:21');

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
  `facebook_link` varchar(100) NOT NULL DEFAULT 'N/A',
  `at_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`domain`, `ID`, `teacher_uuid`, `name`, `gender`, `education_qualification`, `pds_id`, `index_number`, `position`, `group_special`, `quote`, `telephone`, `email`, `phone`, `religion`, `birth_date`, `address`, `blood_group`, `joining_date`, `avatar`, `password`, `facebook_link`, `at_date`) VALUES
('localhost', 2, '1697690219859', 'Abdul Aziz Molla', 'Male', 'N/A', '100251495', 'D470889', 'Headmaster', 'N/A', 'N/A', '01716974937', 'azizshs07@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '1995-11-01', '1676561167056_abdul-aziz-molla-hm.png', '05003784f73e246fdafe2bf46390db51', 'N/A', '2023-02-16 15:26:07'),
('localhost', 3, '1697822809488', 'MD. SERAJUL ISLAM', 'Male', 'N/A', '100250478', 'D473975', 'Assistant Headmaster', 'N/A', 'N/A', '01719518322', 'mdserajul35@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '1997-10-01', '1676561790154_serajul-islam-ahm.png', '9ab70ed4bf406d1096f3080f022b786c', 'N/A', '2023-02-16 15:36:30'),
('localhost', 6, '1697133611416', 'BIKASH CHANDRA BOSU', 'Male', 'N/A', '100250607', 'D479983', 'Assistant Teacher', 'N/A', 'N/A', '01712354277', 'bikash479983@gmail.com', '', 'Hinduism', 'N/A', 'N/A', 'N/A', '2000-02-02', '1676562216077_bikash-sir-at.png', '623eea11339a128378da88eefbe06e4e', 'N/A', '2023-02-16 15:43:36'),
('localhost', 7, '1697382804683', 'RUMANA MIZUN', 'Female', 'N/A', '100373148', 'D1020505', 'Assistant Teacher', 'N/A', 'N/A', '01715541534', 'rumanamizun@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '2000-11-02', '1676562336505_mizun-madam-at.png', '75c61604b445f52933d5b88bcd7c7f3a', 'N/A', '2023-02-16 15:45:36'),
('localhost', 8, '1696952378542', 'AMENA PERVIN', 'Female', 'N/A', '100406573', 'D1041431', 'Assistant Teacher', 'N/A', 'N/A', '01725365538', 'amenaparvin11@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '2009-12-30', '1676562454883_amena-madam-at.png', '62aa0661dde73ebe34af81003c5fd423', 'N/A', '2023-02-16 15:47:34'),
('localhost', 10, '1697589189410', 'BITHI RANI BISWAS', 'Female', 'N/A', '100432807', 'D1057634', 'Assistant Teacher', 'N/A', 'N/A', '01717751441', 'bithiranib@gmail.com', '', 'Hinduism', 'N/A', 'N/A', 'N/A', '2011-03-24', '1676562799228_bithi-rani-biswas-madam-at.png', 'd43934ff9bdfb32e53e7e41bc746405b', 'N/A', '2023-02-16 15:53:19'),
('localhost', 11, '1697307461121', 'SELIM SHEIKH', 'Male', 'N/A', '100432811', 'D1057636', 'Assistant Teacher', 'N/A', 'N/A', '01728102740', 'selim03061979@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '2011-03-31', '1676562921995_selim-sir-at.png', 'f19d6e1072031297aadecc2d0c86271f', 'N/A', '2023-02-16 15:55:21'),
('localhost', 12, '1697298826970', 'ANISUZZAMAN PANNU', 'Male', 'N/A', '100442732', 'N1062400', 'Assistant Teacher', 'N/A', 'N/A', '01777390906', 'anisuzzamanpannu@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '2011-11-22', '1676563076174_anis-sir-at.png', '90b8d4795cc48cf8d6f95f89cc40934d', 'N/A', '2023-02-16 15:57:56'),
('localhost', 13, '1697349767888', 'MASURA KHATUN', 'Female', 'N/A', '100461149', 'N1072479', 'Assistant Teacher', 'N/A', 'N/A', '01720634412', 'masurakhatun616@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '2012-06-10', '1676563221017_masura-madam-at.png', '05076522b25fda790082aa92d94f5122', 'N/A', '2023-02-16 16:00:21'),
('localhost', 14, '1697010240946', 'KRISHNA CHANDRA SAHA', 'Male', 'N/A', '100509018', 'N1123550', 'Assistant Teacher', 'N/A', 'N/A', '01716604356', 'krishnasaha435@gmail.com', '', 'Hinduism', 'N/A', 'N/A', 'N/A', '2015-08-01', '1676563337883_krishna-sir-at.png', '1090233e6d30e4f26a8f9c72024ad176', 'N/A', '2023-02-16 16:02:17'),
('localhost', 15, '1697184120953', 'MADHABIKA BISWAS', 'Female', 'N/A', '100402754', 'D1038899', 'Assistant Teacher', 'N/A', 'N/A', '01714207353', 'ambiswas7@gmail.com', '', 'Hinduism', 'N/A', 'N/A', 'N/A', '2008-04-01', '1676563463399_madhabika-madam-at.png', 'cd12bbd913d405131db5caa27e0af8a2', 'N/A', '2023-02-16 16:04:23'),
('localhost', 16, '1697576944814', 'MOHSIN ALAM', 'Male', 'N/A', '100461153', 'N1072480', 'Assistant Teacher', 'N/A', 'N/A', '01778029043', 'mohsinalammath@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '2012-07-10', '1676563588633_mahasin-sir-at.png', '309699223c29e550b2da19900344499e', 'N/A', '2023-02-16 16:06:28'),
('localhost', 17, '1697371634552', 'RINA RANI KUNDU', 'Female', 'N/A', '100509626', 'N1123915', 'Assistant Teacher', 'N/A', 'N/A', '01726012667', 'rinaranikundu81@gmail.com', '', 'Hinduism', 'N/A', 'N/A', 'N/A', '2015-08-01', '1676563720313_rina-rani-madam-at.png', 'df276368dc7a42aedad88b4a9da16f0d', 'N/A', '2023-02-16 16:08:40'),
('localhost', 18, '1697209362834', 'SOUMITRA SAHA', 'Male', 'N/A', '100555345', 'N1147428', 'Assistant Teacher', 'N/A', 'N/A', '01743452910', 'soumitrasahatanin@gmail.com', '', 'Hinduism', 'N/A', ' Boalmari-Faridpur', 'N/A', '2019-02-03', '1676563832731_soumitra-saha-sir.png', '8adfca4210c3d65ee3dc417edc7cbf1f', 'N/A', '2023-02-16 16:10:32'),
('localhost', 19, '1697198926998', 'MOFIJUR RAHAMAN', 'Male', 'N/A', '100499627', 'N1117821', 'Sports Teacher', 'N/A', 'N/A', '01854744192', 'mofijur1988@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '2019-02-20', '1676563986090_mofijur-rahman-sir.png', 'edaf6aa530414cbf581043ec2ab146e7', 'N/A', '2023-02-16 16:13:06'),
('localhost', 20, '1697584951834', 'USHA NANDI', 'Female', 'N/A', '100567695', 'N1156115', 'Assistant Teacher', 'N/A', 'N/A', '01734726447', 'nandi.usha85@gmail.com', '', 'Hinduism', 'N/A', 'N/A', 'N/A', '2019-11-14', '1676564123460_usha-nandi-madam-.png', '18d9ac06995f60d95e125d86d86db25e', 'N/A', '2023-02-16 16:15:23'),
('localhost', 21, '1697147898114', 'ELIAS HOSSAN', 'Male', 'N/A', '100543362', 'N2122121', 'Instructor', 'N/A', 'N/A', '01770559553', 'eliasmolla19870805@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '2020-02-01', '1676564247907_elias-sir-inst.png', '57dbf5ff13d6d75116e4e6410052ed7e', 'N/A', '2023-02-16 16:17:27'),
('localhost', 22, '1697061470246', 'S. M. YOUNUS ALI', 'Male', 'N/A', '100336016', 'D179730', 'Assistant Teacher', 'N/A', 'N/A', '01835604871', 'smyounusali88@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', '1989-03-20', '1676650131333_younus-sir-at.png', 'a5fc81a6e779ddeebcb4f71a5b716e13', 'N/A', '2023-02-17 16:08:51'),
('localhost', 23, '1697730447840', 'SIDDHANTA KUMAR ROY', 'Male', 'N/A', '100491490', 'N1111934', 'Assistant Teacher', 'N/A', 'N/A', 'N/A', 'Not@vailable.com', '', 'Hinduism', 'N/A', 'N/A', 'N/A', 'undefined', 'male_avatar.png', '340fcb96b966663afe583474676b8daf', 'N/A', '2023-02-17 16:13:56'),
('localhost', 24, '1697426431217', 'NASIMA PARVIN', 'Female', 'N/A', '100485994', 'N1109125', 'Assistant Teacher', 'N/A', 'N/A', '01746204293', 'Not@vailable01.com', '', 'Islam', 'N/A', 'N/A', 'N/A', 'undefined', 'female_avatar.png', '6bb1146544e32e61394069c937b9571a', 'N/A', '2023-02-17 16:18:24'),
('localhost', 26, '1697439561311', 'MST. SHAMMI AKTAR', 'Female', 'N/A', '101406837', 'N56817846', 'Assistant Teacher', 'N/A', 'N/A', '01796504186', 'bgashammi@gmail.com', '', 'Islam', 'N/A', 'N/A', 'N/A', 'undefined', '1676650881819_samima-madam-at.png', 'db662551fbd0d38ab2cdf3d28211a0b4', 'N/A', '2023-02-17 16:21:21'),
('localhost', 27, '1697746017543', 'SHUVANGKAR ROY', 'Male', 'N/A', '101406905', 'N56816898', 'Assistant Teacher', 'N/A', 'N/A', '01753303039', 'royshuvangkar036@gmail.com', '', 'Hinduism', 'N/A', 'N/A', 'N/A', 'undefined', '1676650992270_shuvangkar-roy-sir-at.png', '1ec75d0217f506e8c828a7d008bfcfbc', 'N/A', '2023-02-17 16:23:12'),
('localhost', 28, '1697062922031', 'Anawaruzzam Jhantu', 'Male', 'N/A', '000000001', 'D000000000', 'Assistant Teacher', 'N/A', 'N/A', 'N/A', 'Not@vailable05.com', '', 'Islam', 'N/A', 'N/A', 'N/A', 'undefined', 'male_avatar.png', 'ad25c49cdb95a6de7aefad1a3d95e1be', 'N/A', '2023-02-19 08:58:49'),
('localhost', 29, '1697058269962', 'Sabuz Ghosh', 'Male', 'N/A', '000000002', 'D000000001', 'Assistant Teacher', 'N/A', 'N/A', 'N/A', 'Not@vailable06.com', '', 'Hinduism', 'N/A', 'N/A', 'N/A', 'undefined', 'male_avatar.png', '7d6ec92b6ec71e375a2145bb8b1826fa', 'N/A', '2023-02-19 08:59:25'),
('localhost', 30, '1697118747788', 'Ali Ahmmad', 'Male', 'N/A', '000000003', 'D000000003', 'Assistant Teacher', 'N/A', 'N/A', 'N/A', 'Not@vailable07.com', '', 'Islam', 'N/A', 'N/A', 'N/A', 'undefined', 'male_avatar.png', '70ef4f6786a8d47c57a58d2102fa2a4a', 'N/A', '2023-02-19 09:00:31'),
('localhost', 51, '1697178126155', 'no name', 'Male', 'N/A', '', 'n123456wa', 'Assistent Headmaster', 'N/A', 'N/A', 'XXXXXXXXXXX', 'demo@mail.com2', '2345678901', 'undefined', '', '', 'undefined', '', '1696949307936_384291269_1037807040977507_8735043723871340179_n.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 14:48:28'),
('localhost', 52, '1697398803470', 'no name', 'Male', 'N/A', '', 'n123456wqsdwd', 'Headmaster', 'N/A', 'N/A', 'XXXXXXXXXXX', 'demo@mail.comwqd', '23456789013', 'undefined', '', '', 'undefined', '', '1696949537570_371985652_278938251572854_6685886673405723877_n.jpg', '93653c62f75a916c3868542b8b6490e3', 'N/A', '2023-10-10 14:52:17');

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
  `chapter` varchar(100) NOT NULL,
  `pi` varchar(100) NOT NULL,
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
  `admin_uuid` varchar(100) NOT NULL,
  `hash_username` varchar(100) NOT NULL DEFAULT 'user@admin.com',
  `hash_password` varchar(100) NOT NULL DEFAULT '905e60b34aa5eb27556e23e9a46bd144',
  `hash_name` varchar(100) NOT NULL DEFAULT 'admin',
  `hash_avatar` varchar(100) NOT NULL DEFAULT 'male_avatar.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_admin`
--

INSERT INTO `user_admin` (`domain`, `ID`, `admin_uuid`, `hash_username`, `hash_password`, `hash_name`, `hash_avatar`) VALUES
('localhost', 11, '', 'user@admin.com', '905e60b34aa5eb27556e23e9a46bd144', 'admin', 'male_avatar.png'),
('saanviabc.com', 17, '', 'user@admin.com', '905e60b34aa5eb27556e23e9a46bd144', 'admin', 'male_avatar.png');

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
(10, 'localhost', 'ABC123XYL', '10/7/2023', '10/7/2024', 1, 1, '2023-10-07'),
(16, 'saanviabc.com', 'ABC123XYS', '10/7/2023', '10/7/2024', 1, 1, '2023-10-07');

--
-- Indexes for dumped tables
--

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
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `student_uuid` (`student_uuid`);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_section`
--
ALTER TABLE `class_section`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `repository`
--
ALTER TABLE `repository`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `routine`
--
ALTER TABLE `routine`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=631;

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=780;

--
-- AUTO_INCREMENT for table `student_rank`
--
ALTER TABLE `student_rank`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `___ini`
--
ALTER TABLE `___ini`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
