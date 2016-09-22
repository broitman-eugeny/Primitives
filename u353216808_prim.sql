
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Сен 22 2016 г., 04:43
-- Версия сервера: 10.0.22-MariaDB
-- Версия PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `u353216808_prim`
--

-- --------------------------------------------------------

--
-- Структура таблицы `groupes`
--

CREATE TABLE IF NOT EXISTS `groupes` (
  `groupID` int(11) NOT NULL AUTO_INCREMENT,
  `groupName` varchar(60) NOT NULL,
  PRIMARY KEY (`groupID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `groupes`
--

INSERT INTO `groupes` (`groupID`, `groupName`) VALUES
(1, 'Основные'),
(2, 'x<sup>p</sup>(ax<sup>r</sup>+b)<sup>q</sup>'),
(3, 'x<sup>m</sup>/(x<sup>n</sup>+a<sup>n</sup>)'),
(4, 'x<sup>m</sup>/(x<sup>n</sup>-a<sup>n</sup>)'),
(5, 'x<sup>p</sup>/(x+a)<sup>q</sup>'),
(6, 'x<sup>p</sup>((x+a)/(x+b))<sup>q</sup>');

-- --------------------------------------------------------

--
-- Структура таблицы `primdata`
--

CREATE TABLE IF NOT EXISTS `primdata` (
  `primID` int(11) NOT NULL AUTO_INCREMENT,
  `funcText` varchar(60) NOT NULL,
  `funcPict` varchar(30) NOT NULL,
  `primPict` varchar(30) NOT NULL,
  `groupID` int(11) NOT NULL,
  PRIMARY KEY (`primID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Дамп данных таблицы `primdata`
--

INSERT INTO `primdata` (`primID`, `funcText`, `funcPict`, `primPict`, `groupID`) VALUES
(1, 'x<sup>p</sup>', '1.1.1.jpg', '1.1.2.jpg', 1),
(2, '1/x', '1.2.1.jpg', '1.2.2.jpg', 1),
(3, '1/(x<sup>2</sup>+a<sup>2</sup>)', '1.3.1.jpg', '1.3.2.jpg', 1),
(4, '1/(x<sup>2</sup>-a<sup>2</sup>)', '1.4.1.jpg', '1.4.2.jpg', 1),
(5, '1/sqrt(x<sup>2</sup>+a<sup>2</sup>)', '1.5.1.jpg', '1.5.2.jpg', 1),
(6, '1/sqrt(x<sup>2</sup>-a<sup>2</sup>)', '1.6.1.jpg', '1.6.2.jpg', 1),
(7, '1/sqrt(a<sup>2</sup>-x<sup>2</sup>)', '1.7.1.jpg', '1.7.2.jpg', 1),
(8, 'e<sup>x</sup>', '1.8.1.jpg', '1.8.2.jpg', 1),
(9, 'a<sup>x</sup>', '1.9.1.jpg', '1.9.2.jpg', 1),
(10, 'sh(x)', '1.10.1.jpg', '1.10.2.jpg', 1),
(11, '1/sh(x)', '1.11.1.jpg', '1.11.2.jpg', 1),
(12, '1/sh<sup>2</sup>(x)', '1.12.1.jpg', '1.12.2.jpg', 1),
(13, 'ch(x)', '1.13.1.jpg', '1.13.2.jpg', 1),
(14, '1/ch(x)', '1.14.1.jpg', '1.14.2.jpg', 1),
(15, '1/ch<sup>2</sup>(x)', '1.15.1.jpg', '1.15.2.jpg', 1),
(16, 'x<sup>p</sup>(ax<sup>r</sup>+b)<sup>q</sup>', '2.1.1.jpg', '2.1.2.jpg', 2),
(17, 'x<sup>p</sup>/(ax<sup>r</sup>+b)<sup>q</sup>', '2.2.1.jpg', '2.2.2.jpg', 2),
(18, 'x<sup>r-1</sup>/(ax<sup>r</sup>+b)<sup>q</sup>', '2.3.1.jpg', '2.3.2.jpg', 2),
(19, 'x<sup>r-1</sup>/(ax<sup>r</sup>+b)', '2.4.1.jpg', '2.4.2.jpg', 2),
(20, '1/(x<sup>2n</sup>+a<sup>2n</sup>)', '3.1.1.jpg', '3.1.2.jpg', 3),
(21, 'x<sup>m</sup>/(x<sup>2n</sup>+a<sup>2n</sup>)', '3.2.1.jpg', '3.2.2.jpg', 3),
(22, '1/(x<sup>2n</sup>-a<sup>2n</sup>)', '4.1.1.jpg', '4.1.2.jpg', 4),
(23, 'x<sup>m</sup>/(x<sup>2n</sup>-a<sup>2n</sup>)', '4.2.1.jpg', '4.2.2.jpg', 4),
(24, 'x<sup>p</sup>/(x+a)<sup>q</sup>', '5.1.1.jpg', '5.1.2.jpg', 5),
(25, 'x<sup>m</sup>/(x+a)<sup>q</sup>', '5.2.1.jpg', '5.2.2.jpg', 5),
(26, '1/(x+a)<sup>n</sup>', '5.3.1.jpg', '5.3.2.jpg', 5),
(27, '1/(x+a)', '5.4.1.jpg', '5.4.2.jpg', 5),
(28, 'x((x+a)/(x+b))<sup>q</sup>', '6.1.1.jpg', '6.1.2.jpg', 6),
(29, '(x+a)<sup>p</sup>/(x+b)<sup>q</sup>', '6.2.1.jpg', '6.2.2.jpg', 6),
(30, '(x+a)<sup>p</sup>/(x+b)<sup>p+2</sup>', '6.3.1.jpg', '6.3.2.jpg', 6),
(31, '(x+a)<sup>p</sup>/(x+b)<sup>p+3</sup>', '6.4.1.jpg', '6.4.2.jpg', 6),
(32, '((x+a)/(x+b))<sup>n</sup>', '6.5.1.jpg', '6.5.2.jpg', 6),
(33, '(x+a)/(x+b)', '6.6.1.jpg', '6.6.2.jpg', 6),
(34, 'x(x+a)/(x+b)', '6.7.1.jpg', '6.7.2.jpg', 6);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
