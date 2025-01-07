-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2025 at 06:04 PM
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
-- Indexes for dumped tables
--

--
-- Indexes for table `bi_transcript`
--
ALTER TABLE `bi_transcript`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bi_transcript`
--
ALTER TABLE `bi_transcript`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
