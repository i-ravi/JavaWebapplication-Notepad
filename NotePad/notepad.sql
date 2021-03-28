-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 28, 2021 at 05:23 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notepad`
--

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `addedDate` datetime DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `addedDate`, `content`, `title`) VALUES
(154, '2020-11-19 18:09:16', 'END 18\r\nIS 19\r\nAI 20\r\nMAD 20\r\nMIS 20', 'TERM TEST 1'),
(427, '2020-11-18 21:01:24', '\r\nSuccess card title\r\nSome quick example text to build on the card title and make up the bulk of the card\'s content.\r\n\r\nHeader\r\nDanger card title\r\nSome quick example text to build on the card title and make up the bulk of the card\'s content.\r\n\r\nHeader\r\nWarning card title\r\nSome quick example text to build on the card title and make up the bulk of the card\'s content.\r\n\r\nHeader\r\nInfo card title\r\nSome quick example text to build on the card title and make up the bulk of the card\'s content.\r\n\r\nHeader\r\nLight card title\r\nSome quick example text to build on the card title and make up the bulk of the card\'s content.\r\n\r\nHeader\r\nDark card title\r\nSome quick example text to build on the card title and make up the bulk of the card\'s content.\r\n\r\n\r\nCard title\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.\r\n\r\nLast updated 3 mins ago\r\n\r\nCopy\r\n', 'Hello '),
(517, '2020-11-19 13:17:30', 'Today is 19th November 2020.', 'Ravi ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
