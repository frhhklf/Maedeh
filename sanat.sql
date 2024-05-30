-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 28, 2024 at 09:33 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sanat`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE IF NOT EXISTS `register` (
  `realname` varchar(20) COLLATE utf8mb4_persian_ci NOT NULL COMMENT 'نام واقعی',
  `username` varchar(20) COLLATE utf8mb4_persian_ci NOT NULL COMMENT 'نام کاربری',
  `password` text COLLATE utf8mb4_persian_ci NOT NULL COMMENT 'کلمه عبور',
  `repassword` text COLLATE utf8mb4_persian_ci NOT NULL COMMENT 'تکرار کلمه عبور',
  `email` varchar(50) COLLATE utf8mb4_persian_ci NOT NULL COMMENT 'پست الکترونیک',
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`realname`, `username`, `password`, `repassword`, `email`) VALUES
('maedeh', 'v', 'v', 'v', 'v@g.com'),
('maedeh', 'Maedeh', '123', '123', 'maedeh@gmail.com'),
('frtt', 'ttttt', '123', '123', 'hy!@G.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
