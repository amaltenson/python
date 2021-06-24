-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2021 at 06:57 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sjcet`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `admno` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `phoneno` int(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `admno`, `fullname`, `gender`, `dob`, `course`, `phoneno`, `address`, `email`) VALUES
(1, 'amaltenson', 'qwerty', '19MCA002', 'AMAL TENSON', 'MALE', '10-12-1998', 'MCA', 1234567890, 'PULINCHUVATTIL HOUSE VELLASSERY KADUTHURUTHY', 'amaltenson@gmail.com'),
(2, 'amalucs', 'qwerty', '19MCA003', 'AMALU CS', 'FEMALE', '00-00-1998', 'MCA', 1234567890, '', 'amalucs@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `username` varchar(50) NOT NULL,
  `admattended` int(11) NOT NULL,
  `admtotal` int(11) NOT NULL,
  `admpercentage` double NOT NULL,
  `bdattended` int(11) NOT NULL,
  `bdtotal` int(11) NOT NULL,
  `bdpercentage` int(11) NOT NULL,
  `mcattended` int(11) NOT NULL,
  `mctotal` int(11) NOT NULL,
  `mcpercentage` int(11) NOT NULL,
  `mlattended` int(11) NOT NULL,
  `mltotal` int(11) NOT NULL,
  `mlpercentage` int(11) NOT NULL,
  `biaattended` int(11) NOT NULL,
  `biatotal` int(11) NOT NULL,
  `biapercentage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`username`, `admattended`, `admtotal`, `admpercentage`, `bdattended`, `bdtotal`, `bdpercentage`, `mcattended`, `mctotal`, `mcpercentage`, `mlattended`, `mltotal`, `mlpercentage`, `biaattended`, `biatotal`, `biapercentage`) VALUES
('0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('amaltenson', 25, 50, 50, 20, 50, 0, 20, 50, 0, 25, 50, 0, 24, 50, 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(0, 'default', 'default'),
(1, 'amaltenson', 'qwerty'),
(2, 'amalucs', 'qwerty');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `username` varchar(50) NOT NULL,
  `adminternal1` int(50) NOT NULL,
  `adminternal2` int(50) NOT NULL,
  `adminternal3` int(50) NOT NULL,
  `admassignment1` int(50) NOT NULL,
  `admassignment2` int(50) NOT NULL,
  `admsee` int(50) NOT NULL,
  `bdinternal1` int(11) NOT NULL,
  `bdinternal2` int(11) NOT NULL,
  `bdinternal3` int(11) NOT NULL,
  `bdassignment1` int(11) NOT NULL,
  `bdassignment2` int(11) NOT NULL,
  `bdsee` int(11) NOT NULL,
  `mcinternal1` int(11) NOT NULL,
  `mcinternal2` int(11) NOT NULL,
  `mcinternal3` int(11) NOT NULL,
  `mcassignment1` int(11) NOT NULL,
  `mcassignment2` int(11) NOT NULL,
  `mcsee` int(11) NOT NULL,
  `mlinternal1` int(11) NOT NULL,
  `mlinternal2` int(11) NOT NULL,
  `mlinternal3` int(11) NOT NULL,
  `mlassignment1` int(11) NOT NULL,
  `mlassignment2` int(11) NOT NULL,
  `mlsee` int(11) NOT NULL,
  `biainternal1` int(11) NOT NULL,
  `biainternal2` int(11) NOT NULL,
  `biainternal3` int(11) NOT NULL,
  `biaassignment1` int(11) NOT NULL,
  `biaassignment2` int(11) NOT NULL,
  `biasee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`username`, `adminternal1`, `adminternal2`, `adminternal3`, `admassignment1`, `admassignment2`, `admsee`, `bdinternal1`, `bdinternal2`, `bdinternal3`, `bdassignment1`, `bdassignment2`, `bdsee`, `mcinternal1`, `mcinternal2`, `mcinternal3`, `mcassignment1`, `mcassignment2`, `mcsee`, `mlinternal1`, `mlinternal2`, `mlinternal3`, `mlassignment1`, `mlassignment2`, `mlsee`, `biainternal1`, `biainternal2`, `biainternal3`, `biaassignment1`, `biaassignment2`, `biasee`) VALUES
('amaltenson', 40, 40, 40, 20, 20, 60, 40, 40, 40, 18, 18, 60, 35, 35, 35, 18, 18, 55, 35, 36, 32, 18, 15, 55, 35, 30, 36, 17, 15, 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
