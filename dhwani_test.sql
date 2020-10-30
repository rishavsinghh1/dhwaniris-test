-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2020 at 08:20 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dhwani_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_child`
--

CREATE TABLE `tbl_child` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `gender` char(2) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `father_name` varchar(50) DEFAULT NULL,
  `mother_name` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `district` int(11) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `upload-date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_child`
--

INSERT INTO `tbl_child` (`id`, `name`, `gender`, `dob`, `father_name`, `mother_name`, `state`, `district`, `image`, `upload_date`, `upload-date`) VALUES
(1, 'Saurav', 'm', '2020-10-01', 'Kk r', 'MMr', 3, 1, '', '2020-10-29 21:42:48', '0000-00-00 00:00:00'),
(2, 'Hello', 'm', '2020-10-14', 'kkk', 'mmm', 4, 5, '', '2020-10-29 22:05:45', '0000-00-00 00:00:00'),
(3, 'dsfdf', 'm', '1992-06-15', 'Peter Solanki', 'Peter', 2, 1, '8e57db25ad54f58a8a32c8c61edfb8c8.png', '2020-10-29 22:08:08', '0000-00-00 00:00:00'),
(4, 'cxzczx', 'm', '2020-10-23', 'zxczxc', 'czxczxc', 4, 5, '', '2020-10-29 22:10:32', '0000-00-00 00:00:00'),
(5, 'asdasd', 'm', '2020-10-07', 'asdads', 'asdasd', 3, 1, 'a179b6807634a8cd16c066263b1b2f1b.png', '2020-10-29 22:13:02', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`id`, `state_id`, `name`, `upload_date`, `update_date`) VALUES
(1, 3, 'Patna', '2020-10-29 21:41:26', '0000-00-00 00:00:00'),
(2, 2, 'Jaipur', '2020-10-29 21:41:34', '0000-00-00 00:00:00'),
(3, 1, 'New Delhi', '2020-10-29 21:41:45', '0000-00-00 00:00:00'),
(4, 3, 'Gaya', '2020-10-29 21:42:37', '0000-00-00 00:00:00'),
(5, 4, 'Noida', '2020-10-29 22:04:08', '0000-00-00 00:00:00'),
(6, 4, 'Lukhnow', '2020-10-29 23:08:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(225) NOT NULL,
  `token` varchar(225) NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT '1',
  `last_login` varchar(225) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `username`, `email`, `password`, `token`, `is_active`, `last_login`, `create_date`) VALUES
(2, 'admin', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEwMTEiLCJ1bmlxdWVfdXNlcl9pZCI6IjEwMTEiLCJuYW1lIjoiQmhhZ3llc2ggQ29vcmRpbmF0b3IiLCJ1c2VybmFtZSI6IjE0MTIiLCJtb2JpbGUiOiI4NDg4MDc0NjEyIiwibGV2ZWxfaWQiOiI1IiwicGFzc3dvcmRfcmVzZXRfdG9r', '1', '2020-10-30 03:10:35', '2020-10-29 15:45:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `id` int(11) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`id`, `state`, `upload_date`, `update_date`) VALUES
(1, 'Delhi', '2020-10-29 21:40:35', '0000-00-00 00:00:00'),
(2, 'Rajasthan', '2020-10-29 21:40:42', '0000-00-00 00:00:00'),
(3, 'Bihar', '2020-10-29 21:41:13', '0000-00-00 00:00:00'),
(4, 'Uttar pardesh', '2020-10-29 22:03:49', '0000-00-00 00:00:00'),
(5, 'mumbai', '2020-10-30 06:56:14', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_child`
--
ALTER TABLE `tbl_child`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_child`
--
ALTER TABLE `tbl_child`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
