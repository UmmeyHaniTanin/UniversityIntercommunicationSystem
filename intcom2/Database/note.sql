-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2016 at 08:35 AM
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
