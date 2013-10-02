-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 02, 2013 at 11:30 AM
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
(0, 5, '', ''),
(0, 13, 'I have seen this too!! pls fix this! :(', 'ajay@gmail.com');

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
  `lat` decimal(10,8) DEFAULT NULL,
  `lon` decimal(10,8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`id`, `issuetype`, `location`, `datestr`, `imageUrl`, `status`, `votingCount`, `descr`, `issueowner`, `lat`, `lon`) VALUES
(11, 'Street Light Issue', 'First Main Road, Vadapalani', '29-Sep-2013', '/citizensvoice/trunk/uploads/Street Light On all day.jpg', 'Closed', 3, 'This street light has been on all day for the past 3 days! Will be pls let the concerned ppl knw?!', 'ajay@gmail.com', '0.00000000', NULL),
(12, 'Mosquito Menace', 'Valasaravalkam', '29-Sep-2013', '/citizensvoice/trunk/uploads/Mosquito Menace.jpg', 'Closed', 1, 'There are a lot of mosquitoes in our area due to stagnation of water. I cant believe this!!!', 'ajay@gmail.com', '0.00000000', NULL),
(13, 'Garbage Removal', 'Besant Nagar Beach', '29-Sep-2013', '/citizensvoice/trunk/uploads/Garbage removal.jpg', 'Closed', 4, 'This trash has been here for over a week now, can u pls ask some1 to look into this?!', 'ajay@gmail.com', '0.00000000', NULL),
(14, 'Water Stagnation', 'Ambattur', '29-Sep-2013', '/citizensvoice/trunk/uploads/Water Stagnation.jpg', 'new', 1, 'The water has been stagnant here for days!!', 'ajay@gmail.com', '0.00000000', NULL),
(15, 'Street Light Not Working', 'First Main Road, Adyar', '29-Sep-2013', '/citizensvoice/trunk/uploads/Street light.jpg', 'new', 1, 'Can u pls get some one to fix this!!', 'ajay@gmail.com', '0.00000000', NULL),
(16, 'Water Stagnation', 'Lakshmi Ngr, Nanganallur', '29-Sep-2013', '/citizensvoice/trunk/uploads/water2.jpg', 'new', 1, 'The rain is gone, but the water is still here!!', 'ajay@gmail.com', '0.00000000', NULL),
(17, 'Water Stagnation', '2ns cross street, Virugambakkam', '29-Sep-2013', '/citizensvoice/trunk/uploads/water3.JPG', 'new', 1, 'pls get someone to take care of this water stagnation!', 'ajay@gmail.com', '0.00000000', NULL),
(18, 'Removal of Garbage', 'Egmore', '29-Sep-2013', '/citizensvoice/trunk/uploads/garbage2.jpg', 'new', 1, 'This trash has been lying around for ages!', 'ajay@gmail.com', '0.00000000', NULL),
(19, 'Removal of Garbage', 'Injambakkam', '29-Sep-2013', '/citizensvoice/trunk/uploads/Garbage removal.jpg', 'Closed', 1, 'This garbage has been here for a couple of months and needs to be fixed on priority', 'arvsr2002@gmail.com', '0.00000000', NULL),
(20, 'Removal of Garbage', 'Tambaram', '29-Sep-2013', '/citizensvoice/trunk/uploads/Garbage removal.jpg', 'new', 1, 'It SMELLS!', 'arvsr2002@gmail.com', '0.00000000', NULL),
(21, 'Street Light Not Working', 'Vadapalani', '29-Sep-2013', '/citizensvoice/trunk/upload/Koala.jpg', 'new', 1, 'afdadsfadfd', 'siva@neelsoftware.com', '0.00000000', NULL),
(22, 'Street Light Not Working', 'Vadapalani', '29-Sep-2013', '/citizensvoice/trunk/upload/Koala.jpg', 'new', 1, 'afdadsfadfd', 'siva@neelsoftware.com', '0.00000000', NULL),
(23, 'Street Light Not Working', 'Vadapalani', '29-Sep-2013', '/citizensvoice/trunk/upload/Koala.jpg', 'new', 1, 'afdadsfadfd', 'siva@neelsoftware.com', '0.00000000', NULL),
(24, 'Street Light Not Working', 'adfads', '29-Sep-2013', '/citizensvoice/trunk/upload/Jellyfish.jpg', 'new', 1, 'dsafds', 'siva@neelsoftware.com', '0.00000000', NULL),
(25, 'Street Light Not Working', 'adfda', '29-Sep-2013', '/citizensvoice/trunk/upload/Penguins.jpg', 'new', 1, 'sdafda', 'siva@neelsoftware.com', '0.00000000', NULL),
(26, 'Street Light Not Working', 'adfda', '29-Sep-2013', '/citizensvoice/trunk/upload/Penguins.jpg', 'new', 1, 'sdafda', 'siva@neelsoftware.com', '0.00000000', NULL),
(27, '', 'Chennai, Tamil Nadu, India', '29-Sep-2013', '/citizensvoice/trunk/uploads/', 'new', 1, '', 'siva@neelsoftware.com', '0.00000000', NULL),
(30, 'ChennaiTrafficPolice', '415 Pecor Street, Oconto, WI 54153, USA', '29-Sep-2013', '/citizensvoice/trunk/uploads/Penguins.jpg', 'new', 1, '', 'siva@neelsoftware.com', '44.88693837', '-87.87876159'),
(31, 'ChennaiMetro', 'Chennai, Tamil Nadu, India', '29-Sep-2013', '/citizensvoice/trunk/uploads/Tulips.jpg', 'new', 1, 'Want this to be fixed please', 'siva@neelsoftware.com', '13.05241390', '80.25082460');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
