-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2025 at 06:06 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ini_subject`
--
ALTER TABLE `ini_subject`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ini_subject`
--
ALTER TABLE `ini_subject`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
