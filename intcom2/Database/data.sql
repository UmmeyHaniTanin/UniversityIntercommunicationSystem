-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2016 at 08:34 AM
-- Server version: 5.5.36
-- PHP Version: 5.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `intcom`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE IF NOT EXISTS `data` (
  `Name` varchar(30) DEFAULT NULL,
  `Mail` varchar(30) DEFAULT NULL,
  `Id` varchar(10) DEFAULT NULL,
  `User` varchar(10) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`Name`, `Mail`, `Id`, `User`, `Password`) VALUES
('Atia Jahan', 'huny@gmail.com', 'C131245', 'Student', '131245'),
('Shaila Salam', 'shaila@gmail.com', 'C131235', 'Student', '131235'),
('Rahima Afroz', 'ra_iiuc@gmail.com', '38', 'Teacher', 'afroz'),
('Sanjida Sarmin', 'sanjida_iiuc@gmail.com', '37', 'Teacher', 'sarmin'),
('Lutfun Nahar', 'lutfa_iiuc@gmail.com', '37', 'Teacher', 'nahar'),
('umme hani', 'tanin@gmail.com', 'C-131232', 'Admin', '131232');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
