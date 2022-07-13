-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2022 at 11:30 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gmtest`
--

-- --------------------------------------------------------

--
-- Table structure for table `survivors`
--

CREATE TABLE `survivors` (
  `pID` int(12) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `UCP` varchar(22) NOT NULL,
  `Age` int(5) NOT NULL DEFAULT 0,
  `Origin` varchar(22) NOT NULL DEFAULT 'None',
  `Gender` int(3) NOT NULL DEFAULT 0,
  `AdminLevel` int(5) NOT NULL DEFAULT 0,
  `Money` int(12) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survivors`
--

INSERT INTO `survivors` (`pID`, `Name`, `UCP`, `Age`, `Origin`, `Gender`, `AdminLevel`, `Money`) VALUES
(12, 'Takashi', 'Kazuji_Takashi', 21, 'Indonesia', 0, 7, 0),
(13, 'Health - $50,00', 'Takashi', 21, 'Indonesia', 0, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ucpsystem`
--

CREATE TABLE `ucpsystem` (
  `ID` int(12) NOT NULL,
  `UCP` varchar(22) NOT NULL,
  `Password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ucpsystem`
--

INSERT INTO `ucpsystem` (`ID`, `UCP`, `Password`) VALUES
(9, 'Kazuji_Takashi', '$2y$12$ZX4d9XCXyAfcXmxZmDQC1OgF1loITWc5DAZO0qtY9gJxn1R8RopvO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `survivors`
--
ALTER TABLE `survivors`
  ADD PRIMARY KEY (`pID`);

--
-- Indexes for table `ucpsystem`
--
ALTER TABLE `ucpsystem`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `survivors`
--
ALTER TABLE `survivors`
  MODIFY `pID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ucpsystem`
--
ALTER TABLE `ucpsystem`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
