-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 22, 2024 at 07:48 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinelabreport`
--

-- --------------------------------------------------------

--
-- Table structure for table `docrecomm`
--

CREATE TABLE `docrecomm` (
  `dID` int(6) NOT NULL,
  `NIC` varchar(100) NOT NULL,
  `tName` varchar(100) NOT NULL,
  `tDate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `docrecomm`
--

INSERT INTO `docrecomm` (`dID`, `NIC`, `tName`, `tDate`) VALUES
(1, 'wow', '99943cew', '2024-02-02'),
(2, 'wow', '3f3', '2024-02-02');

-- --------------------------------------------------------

--
-- Table structure for table `labtech`
--

CREATE TABLE `labtech` (
  `Lid` int(6) NOT NULL,
  `NIC` varchar(100) NOT NULL,
  `lHem` varchar(100) NOT NULL,
  `rcbCO` varchar(100) NOT NULL,
  `bIN` varchar(100) NOT NULL,
  `plCO` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `labtech`
--

INSERT INTO `labtech` (`Lid`, `NIC`, `lHem`, `rcbCO`, `bIN`, `plCO`) VALUES
(1, 'wow', '567', '3g3', 'rtgrg', '554');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(6) NOT NULL,
  `pName` varchar(100) NOT NULL,
  `pAddress` varchar(100) NOT NULL,
  `pNo` varchar(100) NOT NULL,
  `NIC` varchar(12) NOT NULL,
  `dName` varchar(100) NOT NULL,
  `dHospital` varchar(100) NOT NULL,
  `aDate` varchar(100) NOT NULL,
  `aTime` varchar(20) NOT NULL,
  `pMethod` varchar(100) NOT NULL,
  `cardNo` varchar(20) NOT NULL,
  `cvc` varchar(20) NOT NULL,
  `price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `pName`, `pAddress`, `pNo`, `NIC`, `dName`, `dHospital`, `aDate`, `aTime`, `pMethod`, `cardNo`, `cvc`, `price`) VALUES
(1, 'wefw', 'wfw', 'wff', 'wow', 'Dr. Chandika Pereda', 'Asiri - Kandy', '2024-03-20', '09:30', 'Credit Card', 'fwd', 'wff', 'ww'),
(2, 'Dimuthu', 'Kandy', '0776500122', '9800099V', 'Dr. Chandika Pereda', 'Seth Sevana Hospital - Kurunegala', '2024-03-06', '02:00', 'Credit Card', '4353', '242', '5000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `docrecomm`
--
ALTER TABLE `docrecomm`
  ADD PRIMARY KEY (`dID`);

--
-- Indexes for table `labtech`
--
ALTER TABLE `labtech`
  ADD PRIMARY KEY (`Lid`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `docrecomm`
--
ALTER TABLE `docrecomm`
  MODIFY `dID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `labtech`
--
ALTER TABLE `labtech`
  MODIFY `Lid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
