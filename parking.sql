-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 01, 2019 at 04:43 PM
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
(1, 'Moss Vale', 'Lot', 21, 12, 'green', 'active', -34.5573, 150.387, 'true', 3, 5, 10, '2019-02-01 09:32:59.000000', '2019-02-01 09:32:59.000000'),
(2, 'kangaroo valley ', 'Lot', 45, 4, 'blue', 'active', -34.7517, 150.549, 'false', 4, 14, 36, '2019-02-01 09:54:37.000000', '2019-02-01 09:54:37.000000'),
(3, 'meryla street', 'Lot', 23, 16, 'green', 'active', -33.8728, 151.105, 'false', 10, 16, 20, '2019-02-01 09:58:18.000000', '2019-02-01 09:58:18.000000');

-- --------------------------------------------------------

--
-- Table structure for table `structure_details`
--

CREATE TABLE `structure_details` (
  `id` int(10) NOT NULL,
  `structure_id` int(10) NOT NULL,
  `abbreviated_name` varchar(25) NOT NULL,
  `description` varchar(50) NOT NULL,
  `note` varchar(50) NOT NULL,
  `createdAt` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `structure_details`
--

INSERT INTO `structure_details` (`id`, `structure_id`, `abbreviated_name`, `description`, `note`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'ssd', 'moss vale valley - Australia', 'valley moss vale near sutton forest', '2019-02-01 09:33:00.000000', '2019-02-01 09:33:00.000000'),
(2, 2, 'kangaroo valley', 'kangaroo valley  near moss vale', 'B73 Kangaroo Valley NSW 2577', '2019-02-01 09:54:37.000000', '2019-02-01 09:54:37.000000'),
(3, 3, 'burwood nsw', 'Meryla street, Berwood NSW, Australia', 'Meryla street', '2019-02-01 09:58:18.000000', '2019-02-01 09:58:18.000000');

-- --------------------------------------------------------

--
-- Table structure for table `sub_structures`
--

CREATE TABLE `sub_structures` (
  `id` int(10) NOT NULL,
  `structure_id` int(10) NOT NULL,
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
  `createdAt` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_structures`
--

INSERT INTO `sub_structures` (`id`, `structure_id`, `structure_name`, `structure_type`, `total_space`, `occupied_space`, `color`, `status`, `latitude`, `longitude`, `hidden`, `low`, `medium`, `full`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'Space 5', 'Space', 33, 33, 'green', 'inactive', -33.9517, 151.073, 'false', 2, 2, 4, '2019-02-01 09:49:13.000000', '2019-02-01 09:49:13.000000'),
(2, 1, 'Space 5', 'roselands drive', 23, 23, 'green', 'active', -33.9365, 151.071, 'false', 2, 2, 4, '2019-02-01 09:50:24.000000', '2019-02-01 09:50:24.000000'),
(3, 2, 'cooks nose', 'Lot', 21, 23, 'green', 'active', -34.6922, 150.71, 'false', 3, 5, 78, '2019-02-01 11:02:57.000000', '2019-02-01 11:02:57.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `structures`
--
ALTER TABLE `structures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `structure_details`
--
ALTER TABLE `structure_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `structure_id` (`structure_id`);

--
-- Indexes for table `sub_structures`
--
ALTER TABLE `sub_structures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `structure_id` (`structure_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `structures`
--
ALTER TABLE `structures`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `structure_details`
--
ALTER TABLE `structure_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sub_structures`
--
ALTER TABLE `sub_structures`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `structure_details`
--
ALTER TABLE `structure_details`
  ADD CONSTRAINT `structure_details_ibfk_1` FOREIGN KEY (`structure_id`) REFERENCES `structures` (`id`);

--
-- Constraints for table `sub_structures`
--
ALTER TABLE `sub_structures`
  ADD CONSTRAINT `sub_structures_ibfk_1` FOREIGN KEY (`structure_id`) REFERENCES `structures` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
