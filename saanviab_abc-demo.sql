-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2023 at 04:40 PM
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_rank`
--
ALTER TABLE `student_rank`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
