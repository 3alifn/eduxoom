-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2025 at 06:10 PM
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
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `student_uuid` (`student_uuid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2399;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
