-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2025 at 06:09 PM
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
-- AUTO_INCREMENT for table `___ini`
--
ALTER TABLE `___ini`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
