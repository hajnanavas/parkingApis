-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 30, 2019 at 06:13 PM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parking`
--

-- --------------------------------------------------------

--
-- Table structure for table `structures`
--

CREATE TABLE `structures` (
  `id` int(10) NOT NULL,
  `structure_name` varchar(25) NOT NULL,
  `structure_type` varchar(25) NOT NULL,
  `total_space` int(10) NOT NULL,
  `occupied_space` int(10) NOT NULL,
  `color` varchar(10) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `hidden` enum('false','true') NOT NULL DEFAULT 'false',
  `low` int(10) NOT NULL,
  `medium` int(10) NOT NULL,
  `full` int(10) NOT NULL,
  `createdAt` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `structures`
--

INSERT INTO `structures` (`id`, `structure_name`, `structure_type`, `total_space`, `occupied_space`, `color`, `status`, `latitude`, `longitude`, `hidden`, `low`, `medium`, `full`, `createdAt`, `updatedAt`) VALUES
(5, 'Parking Lot 1', 'Lot', 25, 21, 'green', 'active', -33.9517, 151.073, 'true', 9, 18, 20, '2019-01-30 12:18:21.000000', '2019-01-30 12:18:21.000000'),
(6, 'roselands drive', 'Space', 50, 50, 'red', 'active', -33.9365, 151.071, 'false', 9, 20, 40, '2019-01-30 12:20:00.000000', '2019-01-30 12:20:00.000000'),
(7, 'Liverpool street', 'Lot', 45, 21, 'blue', 'active', -33.881, 151.224, 'false', 9, 10, 20, '2019-01-30 12:20:46.000000', '2019-01-30 12:20:46.000000'),
(8, 'burragorang road', 'Space', 32, 20, 'green', 'active', -34.0753, 150.539, 'true', 6, 18, 28, '2019-01-30 12:21:53.000000', '2019-01-30 12:21:53.000000'),
(9, 'royal np', 'Lot', 45, 4, 'blue', 'active', -34.0827, 151.126, 'true', 3, 10, 15, '2019-01-30 12:23:48.000000', '2019-01-30 12:23:48.000000'),
(10, 'stanwell', 'Lot', 50, 50, 'green', 'active', -34.2295, 150.987, 'false', 1, 3, 50, '2019-01-30 12:25:01.000000', '2019-01-30 12:25:01.000000'),
(11, 'macquarie park', 'Space', 21, 12, 'red', 'active', -33.9257, 150.922, 'false', 3, 12, 15, '2019-01-30 12:25:42.000000', '2019-01-30 12:25:42.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `structures`
--
ALTER TABLE `structures`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `structures`
--
ALTER TABLE `structures`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
