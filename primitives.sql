-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jun 28, 2016 at 10:10 PM
-- Server version: 5.5.49-log
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `primitives`
--

-- --------------------------------------------------------

--
-- Table structure for table `groupes`
--

CREATE TABLE IF NOT EXISTS `groupes` (
  `groupID` int(11) NOT NULL,
  `groupName` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groupes`
--

INSERT INTO `groupes` (`groupID`, `groupName`) VALUES
(1, 'Основные'),
(2, 'x^p(ax^r+b)^q'),
(3, 'x^m/(x^n+a^n)'),
(4, 'x^m/(x^n-a^n)'),
(5, 'x^p/(x+a)^q'),
(6, 'x^p((x+a)/(x+b))^q');

-- --------------------------------------------------------

--
-- Table structure for table `primdata`
--

CREATE TABLE IF NOT EXISTS `primdata` (
  `primID` int(11) NOT NULL,
  `funcText` varchar(30) NOT NULL,
  `funcPict` varchar(30) NOT NULL,
  `primPict` varchar(30) NOT NULL,
  `groupID` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `primdata`
--

INSERT INTO `primdata` (`primID`, `funcText`, `funcPict`, `primPict`, `groupID`) VALUES
(1, 'x^p', '1.1.1.jpg', '1.1.2.jpg', 1),
(2, '1/x', '1.2.1.jpg', '1.2.2.jpg', 1),
(3, '1/(x^2+a^2)', '1.3.1.jpg', '1.3.2.jpg', 1),
(4, '1/(x^2-a^2)', '1.4.1.jpg', '1.4.2.jpg', 1),
(5, '1/sqrt(x^2+a^2)', '1.5.1.jpg', '1.5.2.jpg', 1),
(6, '1/sqrt(x^2-a^2)', '1.6.1.jpg', '1.6.2.jpg', 1),
(7, '1/sqrt(a^2-x^2)', '1.7.1.jpg', '1.7.2.jpg', 1),
(8, 'e^x', '1.8.1.jpg', '1.8.2.jpg', 1),
(9, 'a^x', '1.9.1.jpg', '1.9.2.jpg', 1),
(10, 'sh(x)', '1.10.1.jpg', '1.10.2.jpg', 1),
(11, '1/sh(x)', '1.11.1.jpg', '1.11.2.jpg', 1),
(12, '1/sh^2(x)', '1.12.1.jpg', '1.12.2.jpg', 1),
(13, 'ch(x)', '1.13.1.jpg', '1.13.2.jpg', 1),
(14, '1/ch(x)', '1.14.1.jpg', '1.14.2.jpg', 1),
(15, '1/ch^2(x)', '1.15.1.jpg', '1.15.2.jpg', 1),
(16, 'x^p(ax^r+b)^q', '2.1.1.jpg', '2.1.2.jpg', 2),
(17, 'x^p/(ax^r+b)^q', '2.2.1.jpg', '2.2.2.jpg', 2),
(18, 'x^(r-1)/(ax^r+b)^q', '2.3.1.jpg', '2.3.2.jpg', 2),
(19, 'x^(r-1)/(ax^r+b)', '2.4.1.jpg', '2.4.2.jpg', 2),
(20, '1/(x^(2n)+a^(2n))', '3.1.1.jpg', '3.1.2.jpg', 3),
(21, 'x^m/(x^(2n)+a^(2n))', '3.2.1.jpg', '3.2.2.jpg', 3),
(22, '1/(x^(2n)-a^(2n))', '4.1.1.jpg', '4.1.2.jpg', 4),
(23, 'x^m/(x^(2n)-a^(2n))', '4.2.1.jpg', '4.2.2.jpg', 4),
(24, 'x^p/(x+a)^q', '5.1.1.jpg', '5.1.2.jpg', 5),
(25, 'x^m/(x+a)^q', '5.2.1.jpg', '5.2.2.jpg', 5),
(26, '1/(x+a)^n', '5.3.1.jpg', '5.3.2.jpg', 5),
(27, '1/(x+a)', '5.4.1.jpg', '5.4.2.jpg', 5),
(28, 'x((x+a)/(x+b))^q', '6.1.1.jpg', '6.1.2.jpg', 6),
(29, '(x+a)^p/(x+b)^q', '6.2.1.jpg', '6.2.2.jpg', 6),
(30, '(x+a)^p/(x+b)^(p+2)', '6.3.1.jpg', '6.3.2.jpg', 6),
(31, '(x+a)^p/(x+b)^(p+3)', '6.4.1.jpg', '6.4.2.jpg', 6),
(32, '((x+a)/(x+b))^n', '6.5.1.jpg', '6.5.2.jpg', 6),
(33, '(x+a)/(x+b)', '6.6.1.jpg', '6.6.2.jpg', 6),
(34, 'x(x+a)/(x+b)', '6.7.1.jpg', '6.7.2.jpg', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groupes`
--
ALTER TABLE `groupes`
  ADD PRIMARY KEY (`groupID`);

--
-- Indexes for table `primdata`
--
ALTER TABLE `primdata`
  ADD PRIMARY KEY (`primID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groupes`
--
ALTER TABLE `groupes`
  MODIFY `groupID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `primdata`
--
ALTER TABLE `primdata`
  MODIFY `primID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
