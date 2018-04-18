-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 18, 2018 at 09:55 AM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `election`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `ID` varchar(10) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `section` varchar(5) DEFAULT NULL,
  `vot_count` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`ID`, `name`, `section`, `vot_count`) VALUES
('2015cse076', 'bittu', 'sec3', 0),
('2015cse077', 'ateeb', 'sec1', 0),
('2015cse081', 'noor', 'sec2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cr`
--

CREATE TABLE `cr` (
  `id` varchar(10) NOT NULL,
  `name` varchar(15) DEFAULT NULL,
  `vote_count` int(5) DEFAULT NULL,
  `section` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cr`
--

INSERT INTO `cr` (`id`, `name`, `vote_count`, `section`) VALUES
('2015cse001', 'akash', 0, 'sec1'),
('2015cse003', 'akshay', 0, 'sec1'),
('2015cse076', 'bittu', 0, 'sec3'),
('2015cse077', 'ateeb', 0, 'sec2'),
('2015cse081', 'noor', 0, 'sec2');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` varchar(10) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `pass` varchar(10) DEFAULT NULL,
  `section` varchar(5) DEFAULT NULL,
  `voted` int(5) DEFAULT '0',
  `type` int(5) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `Name`, `pass`, `section`, `voted`, `type`) VALUES
('2015cse000', 'Admin', 'admin123', '0', 0, 1),
('2015cse076', 'bittu', 'cse076', 'sec3', 0, 0),
('2015cse077', 'ateeb', 'cse077', 'sec1', 0, 0),
('2015cse081', 'noor', 'cse081', 'sec2', 0, 0),
('2015cse100', 'prajwala', 'cse100', 'sec2', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vote`
--

CREATE TABLE `vote` (
  `candidate_name` varchar(20) NOT NULL,
  `votes` int(3) DEFAULT NULL,
  `section` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vote`
--

INSERT INTO `vote` (`candidate_name`, `votes`, `section`) VALUES
('Rahul', 1, '3'),
('Shreyas', 0, '2'),
('Shruthi', 0, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cr`
--
ALTER TABLE `cr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`candidate_name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
