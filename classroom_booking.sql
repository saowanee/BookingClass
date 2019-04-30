-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2019 at 06:43 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classroom_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_require`
--

CREATE TABLE `booking_require` (
  `br_id` varchar(10) NOT NULL,
  `userid` varchar(10) NOT NULL,
  `booking_date` date DEFAULT NULL,
  `approve_status` int(1) DEFAULT NULL,
  `booking_infor` varchar(50) DEFAULT NULL,
  `booking_propose` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booking_user`
--

CREATE TABLE `booking_user` (
  `user_id` varchar(10) NOT NULL,
  `USER_name` varchar(30) NOT NULL,
  `PASSWORD` varchar(10) DEFAULT NULL,
  `user_permission` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_user`
--

INSERT INTO `booking_user` (`user_id`, `USER_name`, `PASSWORD`, `user_permission`) VALUES
('001', 'saowanee', '1234', 0),
('002', 'admin', '1234', 1);

-- --------------------------------------------------------

--
-- Table structure for table `classroom_information`
--

CREATE TABLE `classroom_information` (
  `classroom_id` varchar(10) NOT NULL,
  `classroom_name` varchar(15) NOT NULL,
  `classroom_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_require`
--
ALTER TABLE `booking_require`
  ADD PRIMARY KEY (`br_id`);

--
-- Indexes for table `booking_user`
--
ALTER TABLE `booking_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `classroom_information`
--
ALTER TABLE `classroom_information`
  ADD PRIMARY KEY (`classroom_id`);


--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata for table booking_require
--

--
-- Metadata for table booking_user
--

--
-- Metadata for table classroom_information
--

--
-- Metadata for database classroom_booking
--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
