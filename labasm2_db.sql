-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2025 at 08:21 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `labasm2_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_phone` varchar(20) NOT NULL,
  `user_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_phone`, `user_address`) VALUES
(8, 'WONG PEI EN', 'wongpeien0345@gmail.com', '8b9777d9ca30aca10e84d23aa17c83b4b3abdc82', '01159502398', 'Lunas, Kedah'),
(9, 'Kelly Tan', 'kelly123@gmail.com', '22e2625004dca83229f1d3013a76aeae126a0f2b', '0194726188', '111, Jalan A, Taman B, 09000 Kulim, Kedah'),
(10, 'Ali bin Abu', 'ali123@gmail.com', '7538fa9aedd204be68ab6f3e710df35daee9a5e3', '0123456789', '123, Jalan Heja 1, Taman Heja, 09000 Kulim, Kedah'),
(12, 'Pei En Wong', 'wong123@gmail.com', '2ab9d9df5ad403bcd036bcf0782ed36d1564052b', '0154789652', '16, Jalan Desa Seni1, Taman Desa Seni'),
(13, 'Amy Wong', 'amy123@gmail.com', '52c61f671e7383d2f3368323ed15271c4a4cb971', '01118983823', 'Sintok, Kedah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
