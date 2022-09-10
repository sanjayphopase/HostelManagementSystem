-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 10, 2022 at 03:00 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostelmangamentdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `mobileNo` varchar(10) DEFAULT NULL,
  `month` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`mobileNo`, `month`, `amount`) VALUES
('9876543210', 'Sep-2022', '6000');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `number` varchar(10) NOT NULL,
  `activate` varchar(50) DEFAULT NULL,
  `roomStatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`number`, `activate`, `roomStatus`) VALUES
('002', 'No', 'Not booked'),
('005', 'No', 'Not booked'),
('007', 'Yes', 'Not booked'),
('008', 'Yes', 'Booked');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `mobileNo` varchar(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `father` varchar(200) NOT NULL,
  `mother` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `college` varchar(100) NOT NULL,
  `aadhaar` varchar(12) NOT NULL,
  `roomNo` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`mobileNo`, `name`, `father`, `mother`, `email`, `address`, `college`, `aadhaar`, `roomNo`, `status`) VALUES
('8888866666', 'Ankit Dake', 'Suresh', 'Damini', 'smail@gmail.com', 'Maharashtra, India', 'DPU College, Aurangabad', '123785621402', '007', 'left'),
('9876543210', 'Kalesh Kasar', 'Hardik', 'Kunti', 'email@gmail.com', 'Maharashtra, India', 'ACS College, Dhule', '123456789550', '008', 'living');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`mobileNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
