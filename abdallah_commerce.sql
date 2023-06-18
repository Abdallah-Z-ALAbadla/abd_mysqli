-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2023 at 04:21 PM
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
-- Database: `abdallah_commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(36) NOT NULL,
  `desciption` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `desciption`) VALUES
(17, 'abdallah', 'duib'),
(18, 'mohammed', 'alabadla'),
(19, 'welcom', 'bla bla bla'),
(20, 'abd_home', 'sdjushd'),
(21, 'abdallah', 'Bla Bla Bla'),
(22, 'abd_home', 'alabadla'),
(23, 'sssssssssssss', 'dddddddddddddddddd'),
(24, 'asdas', 'alsmklndjkbsjkdbjksbd');

-- --------------------------------------------------------

--
-- Table structure for table `prodats`
--

CREATE TABLE `prodats` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `desciption` varchar(50) NOT NULL,
  `id_dopt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `prodats`
--

INSERT INTO `prodats` (`id`, `name`, `desciption`, `id_dopt`) VALUES
(1, 'tona', 'thes is tona', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prodats`
--
ALTER TABLE `prodats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_dopt` (`id_dopt`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
