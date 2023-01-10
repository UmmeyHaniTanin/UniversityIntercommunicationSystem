-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2016 at 08:33 AM
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
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `Id` varchar(11) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id`, `Password`) VALUES
('1', '72542'),
('2', '4567');

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

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `body` varchar(1000) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `body`, `date`) VALUES
(1, 'this is a test news', 'Hi there! i am testing posting a news', '2016-02-01'),
(2, 'this is 2nd test news', 'hooo..it works!!!', '2016-02-03');

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE IF NOT EXISTS `note` (
  `Id` int(11) NOT NULL,
  `Title` varchar(30) NOT NULL,
  `Body` varchar(1000) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`Id`, `Title`, `Body`, `Date`) VALUES
(0, 'frst notice', 'ghdfj hdcjsjc jhdcsjdk', '2016-02-02'),
(0, '2nd notice', 'ijfikoio oivok nhcc', '0000-00-00'),
(1, '3rd notice', 'jiji ygcj jxx', '2016-02-03'),
(2, 'THE NEWS', 'jkjkjkksxskjxk', '0000-00-00'),
(2, 'THE NEWS', 'hgjhjk', '0000-00-00'),
(0, 'th enews', 'yhuyu', '0000-00-00'),
(0, 'News', 'hjjkk', '0000-00-00'),
(0, 'My news', 'uyhuh', '0000-00-00'),
(5, 'New news', 'huhuhuhuhu', '0000-00-00'),
(6, 'New news', 'jjjjj', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
  `id` int(11) DEFAULT NULL,
  `title` varchar(30) NOT NULL,
  `body` varchar(1000) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
