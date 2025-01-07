-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2025 at 06:08 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
