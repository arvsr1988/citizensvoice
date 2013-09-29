-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 29, 2013 at 03:47 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `citizen`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL,
  `issueid` int(11) NOT NULL,
  `comment` varchar(110) NOT NULL,
  `commentowner` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `issueid`, `comment`, `commentowner`) VALUES
(1, 1, 'Testing', 'testing'),
(1, 1, 'test', 'siva@neelsoftware.com'),
(0, 2, '', ''),
(0, 2, '', ''),
(0, 2, '', ''),
(0, 2, '', ''),
(0, 5, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE IF NOT EXISTS `issue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issuetype` varchar(100) NOT NULL,
  `location` varchar(200) NOT NULL,
  `datestr` varchar(200) NOT NULL,
  `imageUrl` varchar(110) NOT NULL,
  `status` varchar(110) NOT NULL,
  `votingCount` int(11) NOT NULL,
  `descr` varchar(110) NOT NULL,
  `issueowner` varchar(110) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`id`, `issuetype`, `location`, `datestr`, `imageUrl`, `status`, `votingCount`, `descr`, `issueowner`) VALUES
(1, 'Street light', 'chennai', '5 march 2011', 'image/test.jpg', 'Closed', 2, 'testing', 'siva@neelsoftware.com'),
(2, '1', '1', '1', '1', '1', 1, '1', ''),
(3, '1', '1', '1', '1', '1', 1, '1', 'siva');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
