-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2018 at 06:54 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbcarsale`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`) VALUES
(1, 'Toyota '),
(2, 'Honda'),
(3, 'Mitsubishi'),
(4, ' benz'),
(5, 'Land Rover'),
(6, 'Micro'),
(7, 'Volvo'),
(8, 'Toyota'),
(9, 'Honda'),
(10, 'Mitsubishi'),
(11, 'Land Rover');

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `id` int(11) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `description` text,
  `model_id` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `milage` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `sold` tinyint(1) DEFAULT NULL,
  `photo` varchar(500) DEFAULT NULL,
  `views` int(10) UNSIGNED DEFAULT '0',
  `fuel_type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `title`, `description`, `model_id`, `price`, `year`, `milage`, `member_id`, `sold`, `photo`, `views`, `fuel_type`) VALUES
(1, 'value-2', 'value-3', 4, 100, 2012, 6, 8, 1, 'eee', 1, 'value-12'),
(2, 'value-2', 'value-3', 4, 100, 2012, 6, 8, 1, 'eee', 1, 'value-12'),
(3, 'value-2', 'value-3', 4, 100, 2012, 6, 8, 1, 'eee', 1, 'value-12');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `tp` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` varchar(500) NOT NULL,
  `car_id` int(11) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `status` int(10) UNSIGNED DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `name`, `email`, `username`, `password`, `reg_date`, `role`, `status`, `phone`) VALUES
(1, 'Nadun Liyanage', 'tonadun@gmail.com', NULL, '202cb962ac59075b964b07152d234b70', '2017-07-01', 'm', 1, NULL),
(2, 'H L N SAMEERA', 'kamal@gmail.com', NULL, '202cb962ac59075b964b07152d234b70', '2017-07-08', 'm', 1, NULL),
(3, 'Sandun Tharaka', 'sandun@gmail.com', 'sandun', '123', '2017-08-18', 'a', 1, NULL),
(4, 'Sandun Tharaka', 'sandun@gmail.com', 'sandun', '1234', '2017-08-18', 'a', 1, NULL),
(5, 'Sandun Tharaka', 'sandun@gmail.com', 'sandun', '12345', '2017-08-18', 'm', 1, NULL),
(6, 'Saman Wickrama', 'samsaman@gmail.com', 'sam', '123', '2017-12-02', 'm', 1, '+944552548203');

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`id`, `name`, `brand_id`) VALUES
(1, 'Corolla', 1),
(2, 'Vits', 1),
(3, 'VIOS', 1),
(4, 'Civic', 2),
(5, 'CRV', 2),
(6, 'Accord', 2),
(7, 'Corolla', 1),
(8, 'Vits', 1),
(9, 'Accord', 2),
(10, 'Civic', 2),
(11, 'Evoque', 5),
(12, 'sivic123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_view`
--

CREATE TABLE `model_view` (
  `id` int(11) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `brand_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`),
  ADD KEY `model_id` (`model_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_inquiry_1` (`car_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `model`
--
ALTER TABLE `model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_2` FOREIGN KEY (`model_id`) REFERENCES `model` (`id`),
  ADD CONSTRAINT `car_ibfk_3` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);

--
-- Constraints for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD CONSTRAINT `FK_inquiry_1` FOREIGN KEY (`car_id`) REFERENCES `car` (`id`);

--
-- Constraints for table `model`
--
ALTER TABLE `model`
  ADD CONSTRAINT `model_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
