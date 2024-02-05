-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2024 at 06:08 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `customer_id` int(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `medicine_id` int(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `price` double NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customer_id`, `type`, `medicine_id`, `brand`, `productName`, `quantity`, `price`, `date`) VALUES
(1, 1, 'Antibiotics', 2, 'CAPRI - SANBE', 'AMOXSAN 500 MG * 100\'S', 1, 20.98, '2024-02-01'),
(2, 2, 'Antibiotics', 2, 'CAPRI - SANBE', 'AMOXSAN 500 MG * 100\'S', 2, 41.96, '2024-02-02'),
(3, 2, 'Antibiotics', 1, 'HEXPHARM GENERIK', 'AMOXICILLIN 500MG * 200\'S (HXP)', 3, 23.61, '2024-02-02'),
(4, 3, 'Antibiotics', 2, 'CAPRI - SANBE', 'AMOXSAN 500 MG * 100\'S', 2, 41.96, '2024-02-03'),
(5, 4, 'Antibiotics', 2, 'CAPRI - SANBE', 'AMOXSAN 500 MG * 100\'S', 2, 41.96, '2024-02-04'),
(6, 5, 'Tablet', 1, 'HEXPHARM GENERIK', 'AMOXICILLIN 500MG * 200S (HXP)', 2, 15.74, '2024-02-04'),
(7, 5, 'Cair', 2, 'INTERBAT', 'ALCO PLUS DMP SYR 100 ML', 3, 10.5, '2024-02-04'),
(8, 5, 'Cair', 2, 'INTERBAT', 'ALCO PLUS DMP SYR 100 ML', 3, 10.5, '2024-02-04'),
(9, 6, 'Tablet', 1, 'HEXPHARM GENERIK', 'AMOXICILLIN 500MG * 200S (HXP)', 2, 15.74, '2024-02-05'),
(10, 6, 'Cair', 2, 'INTERBAT', 'ALCO PLUS DMP SYR 100 ML', 3, 10.5, '2024-02-05');

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `id` int(11) NOT NULL,
  `customer_id` int(100) NOT NULL,
  `total` double NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`id`, `customer_id`, `total`, `date`) VALUES
(1, 1, 20.98, '2024-02-01'),
(2, 2, 20.98, '2024-02-01'),
(3, 1, 20.98, '2024-02-01'),
(4, 2, 65.57, '2024-02-02'),
(5, 3, 41.96, '2024-02-03'),
(6, 4, 41.96, '2024-02-04'),
(7, 5, 36.74, '2024-02-04'),
(8, 6, 26.240000000000002, '2024-02-05');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(11) NOT NULL,
  `medicine_id` int(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `image` varchar(100) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `medicine_id`, `brand`, `productName`, `type`, `status`, `price`, `image`, `date`) VALUES
(5, 1, 'HEXPHARM GENERIK', 'AMOXICILLIN 500MG * 200S (HXP)', 'Tablet', 'Available', 7.87, 'C:\\\\Users\\\\ASUS\\\\Downloads\\\\AMOXICILIN.jpg', '2024-02-02'),
(7, 2, 'INTERBAT', 'ALCO PLUS DMP SYR 100 ML', 'Cair', 'Available', 3.5, 'C:\\\\Users\\\\ASUS\\\\Downloads\\\\alco.jpg', '2024-02-04'),
(8, 4, 'ULTRA SAKTI', 'HOT IN DCL 120GR', 'Oles', 'Not Available', 1.78, 'C:\\\\Users\\\\ASUS\\\\Downloads\\\\hotin.jpg', '2024-02-05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer_info`
--
ALTER TABLE `customer_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
