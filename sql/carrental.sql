-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2014 at 06:56 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

CREATE TABLE IF NOT EXISTS `main` (
  `id_main` int(11) NOT NULL AUTO_INCREMENT,
  `id_car` int(11) NOT NULL,
  `type_car` varchar(32) NOT NULL,
  `lic_num` int(11) NOT NULL,
  `main_status` varchar(32) NOT NULL,
  `main_color` varchar(32) NOT NULL,
  PRIMARY KEY (`id_main`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`id_main`, `id_car`, `type_car`, `lic_num`, `main_status`, `main_color`) VALUES
(1, 1, 'Ford Focus 2011', 5398796, 'Available', 'Blue'),
(2, 2, 'Reno Berlingo 2010', 7384756, 'Available', 'Red');

-- --------------------------------------------------------

--
-- Table structure for table `manufactures`
--

CREATE TABLE IF NOT EXISTS `manufactures` (
  `idmanufactures` int(11) NOT NULL AUTO_INCREMENT,
  `name_manu` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmanufactures`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `manufactures`
--

INSERT INTO `manufactures` (`idmanufactures`, `name_manu`) VALUES
(1, 'Ford'),
(2, 'Reno'),
(3, 'Mizubishi'),
(4, 'Nissan');

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE IF NOT EXISTS `model` (
  `model_id` int(11) NOT NULL AUTO_INCREMENT,
  `model_name` varchar(32) NOT NULL,
  `model_color` varchar(32) NOT NULL,
  `model_pic` int(11) NOT NULL,
  PRIMARY KEY (`model_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`model_id`, `model_name`, `model_color`, `model_pic`) VALUES
(1, 'Focus', 'Blue', 1);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `id_type` int(11) NOT NULL AUTO_INCREMENT,
  `name_type` varchar(32) NOT NULL,
  `normalfee_type` int(11) NOT NULL,
  `latefee_type` int(11) NOT NULL,
  `gear_type` varchar(32) NOT NULL,
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id_type`, `name_type`, `normalfee_type`, `latefee_type`, `gear_type`) VALUES
(1, 'Ford Focus 2011', 1100, 350, 'Manual'),
(2, 'Reno Berlingo 2010', 1000, 200, 'Auto');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
