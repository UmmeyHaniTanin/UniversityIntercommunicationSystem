-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 11, 2014 at 11:43 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hotel_reservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE IF NOT EXISTS `catagory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(40) NOT NULL,
  `description` varchar(500) NOT NULL,
  `price_room` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`id`, `c_name`, `description`, `price_room`) VALUES
(1, 'A', 'ujhfg', '700'),
(2, 'B', 'Dscription Needed!', '1200'),
(3, 'C', 'Dscription Needed!', '450'),
(4, 'D', 'Dscription Needed!', '800'),
(5, 'E', 'Dscription Needed!', '800'),
(6, 'F', 'Dscription Needed!', '550'),
(7, 'D', 'Dscription Needed!', '1400'),
(8, 'H', 'Dscription Needed!', '1300'),
(9, 'I', 'Dscription Needed!', '2000');

-- --------------------------------------------------------

--
-- Table structure for table `client_info`
--

CREATE TABLE IF NOT EXISTS `client_info` (
  `SerialNo` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(250) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `reservation` varchar(15) NOT NULL,
  `catagory` varchar(30) NOT NULL,
  `room_id` varchar(4) NOT NULL,
  `in` varchar(20) NOT NULL,
  `out` varchar(20) NOT NULL,
  `id` varchar(6) NOT NULL,
  PRIMARY KEY (`SerialNo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `client_info`
--

INSERT INTO `client_info` (`SerialNo`, `Name`, `Address`, `Phone`, `reservation`, `catagory`, `room_id`, `in`, `out`, `id`) VALUES
(33, 'Mr. Ripon', 'Dhaka', '01816234123', '', 'C', '', '2014-01-15', '2014-01-20', 'j79uu');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `room_id` varchar(4) NOT NULL,
  `catagory` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `user_name` varchar(10) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `user_pass` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_name`, `user_id`, `user_pass`) VALUES
('admin', 'admin01', '14562'),
('admin', 'admin02', '5482');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
