-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 11, 2023 at 11:25 AM
-- Server version: 8.0.32
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tdccom_porter`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `id` int NOT NULL,
  `role_id` varchar(100) NOT NULL,
  `route_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `access`
--

INSERT INTO `access` (`id`, `role_id`, `route_id`, `status`) VALUES
(7, 'M5kHn3env1ACvDCK0G', 1, 1),
(8, 'M5kHn3env1ACvDCK0G', 2, 0),
(9, 'M5kHn3env1ACvDCK0G', 3, 0),
(10, 'M5kHn3env1ACvDCK0G', 4, 0),
(11, 'M5kHn3env1ACvDCK0G', 5, 0),
(12, 'M5kHn3env1ACvDCK0G', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `airline`
--

CREATE TABLE `airline` (
  `aid` int NOT NULL,
  `airname` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `airline`
--

INSERT INTO `airline` (`aid`, `airname`) VALUES
(1, 'Air India'),
(3, 'IndiGo'),
(4, 'SpiceJet'),
(5, 'Go First'),
(6, 'AirAsia India'),
(7, 'Vistara');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int NOT NULL,
  `billno` varchar(20) NOT NULL,
  `managerid` varchar(20) NOT NULL,
  `pname` varchar(300) NOT NULL,
  `mobile` bigint NOT NULL,
  `porter_id` int NOT NULL,
  `airline` varchar(300) NOT NULL,
  `date` date NOT NULL,
  `time` datetime NOT NULL,
  `fligt_no` varchar(100) NOT NULL,
  `bags` varchar(300) NOT NULL,
  `amount` float(10,2) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int NOT NULL DEFAULT '0',
  `cancel_status` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int NOT NULL,
  `UserId` varchar(300) NOT NULL,
  `emails` varchar(150) NOT NULL,
  `password` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role` int NOT NULL,
  `role_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `UserId`, `emails`, `password`, `role`, `role_name`) VALUES
(1, '2hn15ec10', 'admin@gmail.com', '123456', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `new_expenses`
--

CREATE TABLE `new_expenses` (
  `id` int NOT NULL,
  `unique_id` text NOT NULL,
  `manager_id` varchar(20) NOT NULL,
  `name` varchar(300) NOT NULL,
  `contact` bigint NOT NULL,
  `email` varchar(300) NOT NULL,
  `airlineName` varchar(300) NOT NULL,
  `port_id` int NOT NULL,
  `ptype` varchar(100) NOT NULL,
  `bags` varchar(300) NOT NULL,
  `price` int NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int NOT NULL DEFAULT '0',
  `cancel_port` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new_expenses`
--

INSERT INTO `new_expenses` (`id`, `unique_id`, `manager_id`, `name`, `contact`, `email`, `airlineName`, `port_id`, `ptype`, `bags`, `price`, `status`, `cancel_port`) VALUES
(14, 'xIxWitQTAmkuFQferuM2', 'u7ib4M44eUNaELx8V9', 'John ', 1234567897, 'john@gmail.com', 'SpiceJet', 203, 'VIP', '1 to 3 Bags', 30, 0, '0'),
(15, 'Np6uO8GjPjEOfwIhGYDi', 'u7ib4M44eUNaELx8V9', 'John ', 1234567897, 'john@gmail.com', 'SpiceJet', 203, 'VIP', '1 to 3 Bags', 30, 0, '0'),
(13, 'I4PfNNZMvgDvA0ftWSba', 'u7ib4M44eUNaELx8V9', 'aasif aherikar', 8929939389, 'Impossitive@gmail.com', 'Vistara', 204, 'Regular', '1 to 3 Bags', 30, 0, '0'),
(9, 'NqTTz3ZXXO6Y03YQlu6G', 'u7ib4M44eUNaELx8V9', 'Test', 9513028895, 'Test@gmail.com', 'IndiGo', 201, 'Regular', '1 to 3 Bags', 30, 0, '0'),
(10, 'nEMtCPdEzQAnGNWeJLHN', 'u7ib4M44eUNaELx8V9', 'Test', 9513028895, 'Test@gmail.com', 'IndiGo', 201, 'Regular', '1 to 3 Bags', 30, 0, '0'),
(11, 'IUjwsfi1M4A1sN4o055s', 'u7ib4M44eUNaELx8V9', 'Test', 9513028895, 'Test@gmail.com', 'IndiGo', 201, 'Regular', '1 to 3 Bags', 30, 0, '0'),
(12, 'kUuZXCvfagPiFDVBWZzk', 'u7ib4M44eUNaELx8V9', 'Test', 9513028895, 'Test@gmail.com', 'IndiGo', 201, 'Regular', '1 to 3 Bags', 30, 0, '0'),
(16, 'dLo4wgJvqmn0fXZrUHg1', 'u7ib4M44eUNaELx8V9', '', 0, '', '', 0, 'VIP', '0 Bags', 0, 0, '0'),
(17, 'uLfL8kKPb7t4XChHY4pT', 'u7ib4M44eUNaELx8V9', 'John', 1234567890, 'john@gmail.com', 'Air India', 201, 'VIP', '1 to 3 Bags', 30, 1, '0'),
(18, 'gN5ckNqR8opGEgB56Afj', 'u7ib4M44eUNaELx8V9', 'Test', 1234567890, 'Test@gmail.com', 'Air India', 201, 'Regular', '9 to 12', 120, 0, '0'),
(19, 'gJOGVXac4dHbgz7qP6I2', 'u7ib4M44eUNaELx8V9', 'Tedt', 1234567890, 'john@gmail.com', 'Air India', 201, 'Regular', '6 to 9', 90, 0, '0'),
(20, 'fgwLPA2xIKT3Q5zsOLAA', 'u7ib4M44eUNaELx8V9', 'Test', 1234567890, 'test@gmail.com', 'Go First', 201, 'VIP', '1 to 3 Bags', 30, 0, '1'),
(21, 'i56TG4VWTrdBmXK3lw5T', 'u7ib4M44eUNaELx8V9', 'Vip', 1234567890, 'Vip@gmail.com', 'Vistara', 201, 'VIP', '3 to 6 Bags', 60, 1, '0'),
(22, 'rzSJfXMJYluTzdyhkRFR', 'u7ib4M44eUNaELx8V9', 'Tyr', 465337886544, 'Ggfg@gmail.com', 'IndiGo', 201, 'VIP', '1 to 3 Bags', 30, 0, '1'),
(23, 'RQlKU0Wq83lMNKw8ef02', 'u7ib4M44eUNaELx8V9', 'Testing', 1234567890, 'test@gmail.com', 'Go First', 201, 'Regular', '3 to 6 Bags', 60, 0, '0'),
(24, 'ZOyOhAQMc53AyQEkZY49', 'u7ib4M44eUNaELx8V9', 'Test', 1234567890, 'tabassum@gmail.com', 'SpiceJet', 201, 'VIP', '6 to 9', 90, 0, '0'),
(25, 'RNBT2BB1vzfujmlZKcmu', 'u7ib4M44eUNaELx8V9', 'Testing', 1234567890, 'tabassum@gmail.com', 'Go First', 201, 'Regular', '6 to 9', 90, 0, '0'),
(26, 'ONoBzgDXZoJvFmIHVDUN', 'u7ib4M44eUNaELx8V9', 'chan', 9999999999, 'chan@gmail.com', 'IndiGo', 201, 'Regular', '1 to 3 Bags', 30, 0, '0'),
(27, 'zl5Nxd6ESzffvMDBsESX', 'u7ib4M44eUNaELx8V9', 'chan', 9999999999, 'chan@gmail.com', 'IndiGo', 201, 'Regular', '1 to 3 Bags', 30, 0, '1'),
(28, 'bZG2YThSAwc4DvwN9LtT', 'u7ib4M44eUNaELx8V9', 'channnnn', 9999999999, 'channnn@gmail.com', 'Air India', 202, 'Regular', '1 to 3 Bags', 30, 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int NOT NULL,
  `payment_id` varchar(20) NOT NULL,
  `expense_id` varchar(20) NOT NULL,
  `payment_mode` varchar(200) NOT NULL,
  `upi_code` varchar(300) NOT NULL,
  `amount` varchar(300) NOT NULL,
  `pdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_id`, `expense_id`, `payment_mode`, `upi_code`, `amount`, `pdate`) VALUES
(1, 'I4PfNNZMvgDvA0ftWSba', 'xIxWitQTAmkuFQferuM2', 'upi', 'Hmnh', '36', '2022-12-19 11:57:08'),
(2, 'I4PfNNZMvgDvA0ftWSba', 'I4PfNNZMvgDvA0ftWSba', 'Cash', 'Fhhh', '24', '2022-12-19 11:57:47'),
(3, 'kUuZXCvfagPiFDVBWZzk', 'kUuZXCvfagPiFDVBWZzk', 'Cash', '...', '1500', '2022-12-19 11:57:52'),
(4, 'UjV2YQUZWBfFsgLQ4K', 'uLfL8kKPb7t4XChHY4pT', 'Cash', '.....', '1500', '2022-12-20 08:05:28'),
(5, 'O04wjvyyMyaRsJARFA', 'i56TG4VWTrdBmXK3lw5T', 'Cash', '.', '3000', '2022-12-20 11:54:13'),
(6, 'epRm8Kdn9REIVazpjm', 'bZG2YThSAwc4DvwN9LtT', '10', 'test', '10', '2023-02-10 11:16:28');

-- --------------------------------------------------------

--
-- Table structure for table `porter`
--

CREATE TABLE `porter` (
  `id` int NOT NULL,
  `porterid` int NOT NULL,
  `uniqueid` varchar(20) NOT NULL,
  `first_name` varchar(300) NOT NULL,
  `last_name` varchar(300) NOT NULL,
  `mobile` bigint NOT NULL,
  `joining_date` date NOT NULL,
  `shift` varchar(100) NOT NULL,
  `salary` float(10,2) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `porter`
--

INSERT INTO `porter` (`id`, `porterid`, `uniqueid`, `first_name`, `last_name`, `mobile`, `joining_date`, `shift`, `salary`) VALUES
(1, 201, 'Fn3nsPXTcC07B62nUP', 'test', 'test', 1234456444, '2022-12-18', 'Day', 1500.00),
(3, 202, 'IQ2To0zDCa1Gh0ShVG', 'Asif', 'Aherikar', 1212100000, '2022-07-06', 'S1', 10.00);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `rid` int NOT NULL,
  `role_id` varchar(150) NOT NULL,
  `roles` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`rid`, `role_id`, `roles`) VALUES
(3, 'U1Bt8aGtyzolU7hHXA', 'ttt'),
(4, 'tDBJSmmZLJ9eIFHD5Q', 'asa'),
(5, 'M5kHn3env1ACvDCK0G', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `rt_id` int NOT NULL,
  `route_name` varchar(300) NOT NULL,
  `route` varchar(300) NOT NULL,
  `routestatus` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`rt_id`, `route_name`, `route`, `routestatus`) VALUES
(1, 'Bills', 'bills', ''),
(2, 'Employee Management', 'employee-management', ''),
(3, 'Manager', 'manager', ''),
(4, 'Porter', 'porter', ''),
(5, 'Reports', 'reports', ''),
(6, 'Airlines', 'airlines', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `unique_id` varchar(300) NOT NULL,
  `first_name` varchar(300) NOT NULL,
  `last_name` varchar(300) NOT NULL,
  `mobile` bigint NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `joining_date` date NOT NULL,
  `shift` varchar(300) NOT NULL,
  `salary` float(10,2) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `unique_id`, `first_name`, `last_name`, `mobile`, `email`, `password`, `joining_date`, `shift`, `salary`) VALUES
(1, 'u7ib4M44eUNaELx8V9', 'testing', 'testing', 1234567890, 'test@gmail.com', '123456789', '2022-12-17', 'day', 10000.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `airline`
--
ALTER TABLE `airline`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_expenses`
--
ALTER TABLE `new_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `porter`
--
ALTER TABLE `porter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`rt_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `airline`
--
ALTER TABLE `airline`
  MODIFY `aid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `new_expenses`
--
ALTER TABLE `new_expenses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `porter`
--
ALTER TABLE `porter`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `rid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `rt_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
