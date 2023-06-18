-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2023 at 04:22 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news-app-rafah-130`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `description`) VALUES
(10, 'Business', 'Business'),
(11, 'Technology', 'Technology'),
(12, 'Entertainment', 'Entertainment'),
(13, 'Sports', 'Sports');

-- --------------------------------------------------------

--
-- Table structure for table `nwes`
--

CREATE TABLE `nwes` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `photo_name` varchar(100) NOT NULL,
  `id_dept` int(11) NOT NULL,
  `IsSpecial` enum('Special','notSpecial','trend','featured') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `nwes`
--

INSERT INTO `nwes` (`id`, `name`, `description`, `photo_name`, `id_dept`, `IsSpecial`) VALUES
(36, 'Sanctus amet sed ipsum lorem	', 'Sanctus amet sed ipsum lorem	', '64596b2800a9d.jpeg', 10, 'notSpecial'),
(37, 'Sanctus amet sed ipsum lorem	', 'Sanctus amet sed ipsum lorem	', '64596b3f88985.jpeg', 10, 'notSpecial'),
(39, 'Sanctus amet sed ipsum lorem	', 'Sanctus amet sed ipsum lorem	', '64596b754def6.jpeg', 10, 'notSpecial'),
(42, 'Sanctus amet sed ipsum lorem	', 'Sanctus amet sed ipsum lorem	', '64596baac63b1.jpeg', 12, 'notSpecial'),
(43, 'Sanctus amet sed ipsum lorem	', 'Sanctus amet sed ipsum lorem	', '64596bb7b7a25.jpeg', 12, 'notSpecial'),
(44, 'Sanctus amet sed ipsum lorem	', 'Sanctus amet sed ipsum lorem	', '64596bc46b13f.jpeg', 12, 'notSpecial'),
(45, 'Sanctus amet sed ipsum lorem	', 'Sanctus amet sed ipsum lorem	', '64596c3b4e3eb.jpg', 11, 'notSpecial'),
(46, 'Sanctus amet sed ipsum lorem	', 'Sanctus amet sed ipsum lorem	', '64596c45f08b8.jpg', 11, 'notSpecial'),
(47, 'Sanctus amet sed ipsum lorem	', 'Sanctus amet sed ipsum lorem	', '64596c50950d6.jpg', 11, 'notSpecial'),
(51, 'Sanctus amet sed ipsum lorem	', 'Sanctus amet sed ipsum lorem	', '64596eeb9df90.jpg', 13, 'Special'),
(52, 'Sanctus amet sed ipsum lorem	', 'Sanctus amet sed ipsum lorem	', '64596ef6a5019.jpg', 13, 'Special'),
(53, 'Sanctus amet sed ipsum lorem	', 'Sanctus amet sed ipsum lorem	', '64596f027b503.jpg', 13, 'Special');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(5, 'اقعد من دون نت - طيب', 'nooralastl85@gmail.com', 'noor'),
(6, 'abdallah', 'abdallah@gmail.com', 'abdallah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nwes`
--
ALTER TABLE `nwes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nwes_ibfk_1` (`id_dept`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `nwes`
--
ALTER TABLE `nwes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nwes`
--
ALTER TABLE `nwes`
  ADD CONSTRAINT `nwes_ibfk_1` FOREIGN KEY (`id_dept`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
