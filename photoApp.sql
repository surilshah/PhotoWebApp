-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 14, 2017 at 11:11 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `photoApp`
--

-- --------------------------------------------------------

--
-- Table structure for table `photoApp_photos`
--

CREATE TABLE `photoApp_photos` (
  `username` varchar(20) NOT NULL,
  `imageName` varchar(100) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photoApp_photos`
--

INSERT INTO `photoApp_photos` (`username`, `imageName`, `caption`, `timestamp`) VALUES
('surilshah', 'Correct.jpg', 'winter', '2017-06-14 19:49:19'),
('surilshah', 'dog.jpg', 'dog', '2017-06-14 04:45:42'),
('surilshah', 'download.jpeg', 'flowers', '2017-06-14 04:39:29'),
('surilshah', 'giphy.gif', 'tom and jerry', '2017-06-14 06:05:29'),
('surilshah', 'Lake_mapourika_NZ.jpeg', 'lake', '2017-06-14 05:03:59'),
('surilshah', 'maxresdefault.jpg', 'cute baby', '2017-06-14 04:57:15'),
('surilshah', 'motorbike-detailing-perth-1.jpg', 'motorbike', '2017-06-14 19:44:18'),
('surilshah', 'mountain-4.jpg', 'mountains', '2017-06-14 06:03:41'),
('surilshah', 'pexels-photo.jpg', 'mustang', '2017-06-14 06:11:17'),
('surilshah', 'skogafoss_waterfall_iceland.jpg', 'waterfall', '2017-06-14 06:04:22'),
('surilshah', 'spring.jpg', 'spring', '2017-06-14 19:57:00');

-- --------------------------------------------------------

--
-- Table structure for table `photoApp_user`
--

CREATE TABLE `photoApp_user` (
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photoApp_user`
--

INSERT INTO `photoApp_user` (`username`, `password`, `email`, `name`) VALUES
('surilshah', '1234', 'suril.shah.94@gmail.com', 'Suril Shah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `photoApp_photos`
--
ALTER TABLE `photoApp_photos`
  ADD PRIMARY KEY (`imageName`);

--
-- Indexes for table `photoApp_user`
--
ALTER TABLE `photoApp_user`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
