-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2024 at 09:12 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `BookID` varchar(50) NOT NULL,
  `BookTitle` varchar(200) DEFAULT NULL,
  `Price` double(12,2) DEFAULT NULL,
  `Author` varchar(128) DEFAULT NULL,
  `Type` varchar(128) DEFAULT NULL,
  `Image` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`BookID`, `BookTitle`, `Price`, `Author`, `Type`, `Image`) VALUES
('B-001', 'NETWORKING 3', 136.00, 'Abdulrahman', 'cisco', 'image/technology.jpg'),
('B-002', 'java core', 60.00, 'natasha bitar', 'programming', 'image/java.jpg'),
('B-003', 'Database system', 70.00, 'Garo pilawjian', 'Database', 'image/database.jpg'),
('B-004', 'Cyber-Security', 75.90, 'Omar mhmd', 'Security', 'image/cybersecurity.jpg'),
('B-007', 'Web-development', 45.00, 'Haitham alawar', 'UI-UX coding', 'image/web-book.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `CartID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `BookID` varchar(50) DEFAULT NULL,
  `Price` double(12,2) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `TotalPrice` double(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(128) DEFAULT NULL,
  `CustomerPhone` varchar(12) DEFAULT NULL,
  `CustomerEmail` varchar(200) DEFAULT NULL,
  `CustomerAddress` varchar(200) DEFAULT NULL,
  `CustomerGender` varchar(10) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `CustomerName`, `CustomerPhone`, `CustomerEmail`, `CustomerAddress`, `CustomerGender`, `UserID`) VALUES
(1, 'mohammad', '76930979', 'mohammad.burhan.2002@gmail.com', 'marj', 'Male', 1),
(14, 'khalil', '76947854', 'chahine.khalil@gmail.com', 'ghaza', 'Male', 15),
(15, 'khalil', '454687', 'chahine.khalil@gmail.com', 'marj', 'Male', 16);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `OrderID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `BookID` varchar(50) DEFAULT NULL,
  `DatePurchase` datetime DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `TotalPrice` double(12,2) DEFAULT NULL,
  `Status` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`OrderID`, `CustomerID`, `BookID`, `DatePurchase`, `Quantity`, `TotalPrice`, `Status`) VALUES
(1, 1, 'B-001', '2023-12-14 12:03:35', 2, 272.00, 'y'),
(2, 1, 'B-004', '2023-12-14 12:03:35', 2, 151.80, 'y'),
(3, 1, 'B-004', '2023-12-14 12:03:35', 2, 151.80, 'y'),
(4, 1, 'B-003', '2023-12-14 12:03:35', 1, 329.00, 'y'),
(5, 1, 'B-003', '2023-12-14 12:08:07', 1, 329.00, 'y'),
(6, 1, 'B-003', '2023-12-14 12:10:55', 2, 658.00, 'y'),
(7, 1, 'B-003', '2023-12-21 10:49:53', 2, 658.00, 'y'),
(8, 1, 'B-004', '2023-12-21 11:12:57', 1, 75.90, 'y'),
(9, 1, 'B-004', '2023-12-21 11:15:02', 1, 75.90, 'y'),
(10, 1, NULL, '2023-12-28 16:20:25', 1, 45.00, 'y'),
(11, 1, 'B-004', '2023-12-28 16:20:25', 1, 75.90, 'y'),
(12, NULL, 'B-007', '2023-12-28 18:45:34', 1, 45.00, 'y'),
(13, NULL, 'B-002', '2023-12-28 18:49:05', 1, 60.00, 'y'),
(14, NULL, 'B-007', '2023-12-28 18:49:12', 1, 45.00, 'y'),
(15, NULL, 'B-004', '2023-12-28 18:49:46', 1, 75.90, 'y'),
(16, NULL, 'B-003', '2023-12-28 18:49:46', 1, 70.00, 'y'),
(17, 1, 'B-007', '2023-12-31 20:10:11', 1, 45.00, 'y'),
(18, NULL, 'B-003', '2023-12-31 21:47:04', 1, 70.00, 'y'),
(19, 1, 'B-007', '2024-01-02 10:59:24', 1, 45.00, 'y'),
(20, 1, 'B-007', '2024-01-02 22:09:56', 1, 45.00, 'y'),
(21, 1, 'B-004', '2024-01-02 22:10:02', 1, 75.90, 'y');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(128) DEFAULT NULL,
  `Password` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `UserName`, `Password`) VALUES
(1, 'mhmd.burhan', '123'),
(15, 'khalil.chahin', '789'),
(16, 'khalil.chahin', '456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`BookID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`CartID`),
  ADD KEY `BookID` (`BookID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `BookID` (`BookID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `CartID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`BookID`) REFERENCES `book` (`BookID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`BookID`) REFERENCES `book` (`BookID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
