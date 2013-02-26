-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 13, 2013 at 06:19 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `eauction`
--
create database eauction;
use eauction;
-- --------------------------------------------------------

--
-- Table structure for table `bank_info`
--

CREATE TABLE IF NOT EXISTS `bank_info` (
  `Bank_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `Bank_name` varchar(150) NOT NULL,
  `Bank_acc_no` int(11) NOT NULL,
  `ifsc_code` int(11) NOT NULL,
  `branch_name` varchar(150) NOT NULL,
  PRIMARY KEY (`Bank_info_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bidding_info`
--

CREATE TABLE IF NOT EXISTS `bidding_info` (
  `bid_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `bid_price` int(11) NOT NULL,
  `no_of_bid` int(11) NOT NULL,
  PRIMARY KEY (`bid_id`),
  KEY `prod_id` (`prod_id`,`User_Id`),
  KEY `User_Id` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `User_Id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `User_Id` (`User_Id`),
  KEY `User_Id_2` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE IF NOT EXISTS `product_category` (
  `prod_cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_id` int(11) NOT NULL,
  `prod_category_name` varchar(60) NOT NULL,
  `prod_name` varchar(60) NOT NULL,
  `prod_base_price` int(11) NOT NULL,
  `prod_description` varchar(150) NOT NULL,
  `pro_expiry_time` time NOT NULL,
  `prod_img` blob NOT NULL,
  `prod_deposite_price` int(11) NOT NULL,
  `prod_max_price` int(11) NOT NULL,
  `prod_ratio` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`prod_cat_id`),
  KEY `prod_id` (`prod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `transation`
--

CREATE TABLE IF NOT EXISTS `transation` (
  `Tran_id` int(11) NOT NULL AUTO_INCREMENT,
  `User_Id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `tran_type` varchar(20) NOT NULL,
  `tran_status` varchar(40) NOT NULL,
  `purpose` varchar(70) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`Tran_id`),
  UNIQUE KEY `User_Id_2` (`User_Id`),
  KEY `User_Id` (`User_Id`),
  KEY `prod_id` (`prod_id`),
  KEY `User_Id_3` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `User_Id` int(11) NOT NULL AUTO_INCREMENT,
  `User_Name` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Full_Name` varchar(50) NOT NULL,
  `Address` text NOT NULL,
  `DOB` date NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `Nationality` varchar(60) NOT NULL,
  `Profession` varchar(60) NOT NULL,
  `email_id` varchar(60) NOT NULL,
  `city` varchar(60) NOT NULL,
  `state` varchar(60) NOT NULL,
  `pincode` int(11) NOT NULL,
  `Contact_No` varchar(10) NOT NULL,
  `Pan_No` varchar(20) NOT NULL,
  `account_type` varchar(20) NOT NULL,
  `Company_Name` varchar(60) NOT NULL,
  PRIMARY KEY (`User_Id`),
  UNIQUE KEY `User_Name` (`User_Name`),
  UNIQUE KEY `Password` (`Password`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE IF NOT EXISTS `user_login` (
  `User_Id` int(11) NOT NULL,
  `User_Name` varchar(60) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `user_password` varchar(60) NOT NULL,
  `ques_id` int(11) NOT NULL,
  `ques_ans` varchar(100) NOT NULL,
  UNIQUE KEY `User_Name` (`User_Name`),
  UNIQUE KEY `user_password` (`user_password`),
  KEY `User_Id` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `watch_list`
--

CREATE TABLE IF NOT EXISTS `watch_list` (
  `watch_id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  PRIMARY KEY (`watch_id`),
  KEY `User_Id` (`User_Id`),
  KEY `prod_id` (`prod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bidding_info`
--
ALTER TABLE `bidding_info`
  ADD CONSTRAINT `bidding_info_ibfk_1` FOREIGN KEY (`prod_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bidding_info_ibfk_2` FOREIGN KEY (`User_Id`) REFERENCES `user_info` (`User_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`User_Id`) REFERENCES `user_info` (`User_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `product_category_ibfk_1` FOREIGN KEY (`prod_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transation`
--
ALTER TABLE `transation`
  ADD CONSTRAINT `transation_ibfk_2` FOREIGN KEY (`prod_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transation_ibfk_1` FOREIGN KEY (`User_Id`) REFERENCES `user_info` (`User_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_login`
--
ALTER TABLE `user_login`
  ADD CONSTRAINT `user_login_ibfk_3` FOREIGN KEY (`user_password`) REFERENCES `user_info` (`Password`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_login_ibfk_1` FOREIGN KEY (`User_Id`) REFERENCES `user_info` (`User_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_login_ibfk_2` FOREIGN KEY (`User_Name`) REFERENCES `user_info` (`User_Name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `watch_list`
--
ALTER TABLE `watch_list`
  ADD CONSTRAINT `watch_list_ibfk_2` FOREIGN KEY (`prod_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `watch_list_ibfk_1` FOREIGN KEY (`User_Id`) REFERENCES `user_info` (`User_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
