-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2019 at 05:15 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wfh`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `s/n` int(20) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`s/n`, `Username`, `Password`) VALUES
(1, 'Admin', '1234567');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `s/n` int(20) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`s/n`, `Username`, `Password`) VALUES
(1, 'Employee', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `login_statistics`
--

CREATE TABLE `login_statistics` (
  `Sn` int(200) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Sign in` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logout_statistics`
--

CREATE TABLE `logout_statistics` (
  `Sn` int(20) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Sign out` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `Username` varchar(255) NOT NULL,
  `message` varchar(65000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `time_worked`
--

CREATE TABLE `time_worked` (
  `s/n` int(200) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`s/n`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`s/n`,`Username`);

--
-- Indexes for table `login_statistics`
--
ALTER TABLE `login_statistics`
  ADD PRIMARY KEY (`Sn`);

--
-- Indexes for table `logout_statistics`
--
ALTER TABLE `logout_statistics`
  ADD PRIMARY KEY (`Sn`);

--
-- Indexes for table `time_worked`
--
ALTER TABLE `time_worked`
  ADD PRIMARY KEY (`s/n`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `s/n` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `s/n` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login_statistics`
--
ALTER TABLE `login_statistics`
  MODIFY `Sn` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logout_statistics`
--
ALTER TABLE `logout_statistics`
  MODIFY `Sn` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_worked`
--
ALTER TABLE `time_worked`
  MODIFY `s/n` int(200) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
