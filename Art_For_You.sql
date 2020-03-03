-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 28, 2020 at 05:05 PM
-- Server version: 5.5.64-MariaDB
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Art_For_You`
   Create Database Art_For_You;
   Use Art_For_You;

-- --------------------------------------------------------

--
-- Table structure for table `Art`
--

CREATE TABLE IF NOT EXISTS `Art` (
  `artID` int(11) NOT NULL,
  `PhotoName` varchar(50) DEFAULT NULL,
  `Photos` blob,
  `VideoName` varchar(50) DEFAULT NULL,
  `Videos` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Tutorials`
--

CREATE TABLE IF NOT EXISTS `Tutorials` (
  `tutorialsID` int(11) NOT NULL,
  `VideoDescription` varchar(500) DEFAULT NULL,
  `WrittenTutorials` varchar(1500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE IF NOT EXISTS `Users` (
  `usersID` int(11) NOT NULL,
  `artID` int(11) DEFAULT NULL,
  `tutorialsID` int(11) DEFAULT NULL,
  `UserInput` varchar(1500) DEFAULT NULL,
  `Comments` varchar(1500) DEFAULT NULL,
  `Passwords` varchar(255) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Art`
--
ALTER TABLE `Art`
  ADD PRIMARY KEY (`artID`);

--
-- Indexes for table `Tutorials`
--
ALTER TABLE `Tutorials`
  ADD PRIMARY KEY (`tutorialsID`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`usersID`),
  ADD KEY `artID` (`artID`),
  ADD KEY `tutorialsID` (`tutorialsID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Users`
--
ALTER TABLE `Users`
  ADD CONSTRAINT `Users_ibfk_1` FOREIGN KEY (`artID`) REFERENCES `Art` (`artID`),
  ADD CONSTRAINT `Users_ibfk_2` FOREIGN KEY (`tutorialsID`) REFERENCES `Tutorials` (`tutorialsID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
