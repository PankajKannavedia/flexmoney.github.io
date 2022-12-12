-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 12, 2022 at 04:05 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flex_money`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `userid` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`userid`, `password`) VALUES
('admin', 'admin'),
('admin@gmail.com', 'admin'),
('pankaj', 'pankaj'),
('pankaj@gmail.com', 'pankaj');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userid` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL,
  `emailid` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `pincode` int(11) NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `emailid` (`emailid`),
  UNIQUE KEY `contact` (`contact`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `password`, `emailid`, `age`, `contact`, `city`, `state`, `pincode`) VALUES
('admin', 'admin', 'admin@gmail.com', 22, '9619554398', 'Indore', 'Madhya Pradesh', 452001),
('pankaj', 'pankaj', 'pankaj@gmail.com', 22, '9619554394', 'Indore', 'Madhya Pradesh', 452001),
('rahul', 'rahul', 'rahul@gmail.com', 20, '7247298670', 'Ashta', 'MadhyaPradesh', 466125),
('user', 'user', 'user@gmail.com', 23, '1234567890', 'Ashta', 'MadhyaPradesh', 466125);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
