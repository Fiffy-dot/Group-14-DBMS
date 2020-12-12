-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Dec 12, 2020 at 05:22 PM
-- Server version: 8.0.21
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `group14_finaldatabase_13/12/2020`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CustomerName` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Phone no` int DEFAULT NULL,
  `Email Address` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `CustomerName`, `Phone no`, `Email Address`) VALUES
('AB1234C', 'Fifi', 787123456, 'f.ng@gmail.com'),
('DE1234F', 'Wanji', 787654321, 'w.wa@gmail.com'),
('GH1234I', 'Kim', 745234567, 'k.im@gmail.com'),
('JK1234L', 'Jane', 756432678, 'j.ane@gmail.com'),
('MN1234O', 'JJ', 722345435, 'j.jj@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `customer_payments`
--

CREATE TABLE `customer_payments` (
  `PaymentID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Bill` int DEFAULT NULL,
  `BillStatus` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CustomerID` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StaffID` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Balance` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_payments`
--

INSERT INTO `customer_payments` (`PaymentID`, `Bill`, `BillStatus`, `CustomerID`, `StaffID`, `Balance`) VALUES
('ADF456L', 30000, 'Paid', 'DE1234F', 'XY22', 0),
('CES431R', 18000, 'Unpaid', 'MN1234O', 'XY44', 18000),
('DER567Y', 5000, 'Partly', 'GH1234I', 'XY33', 2500),
('FAR456H', 25000, 'Unpaid', 'JK1234L', 'XY55', 25000),
('OKJ789K', 20000, 'Paid', 'AB1234C', 'XY11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `plants`
--

CREATE TABLE `plants` (
  `PlantID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MonthlySupply` int DEFAULT NULL,
  `RouteNumber` int DEFAULT NULL,
  `ZoneID` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PlantSize` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plants`
--

INSERT INTO `plants` (`PlantID`, `MonthlySupply`, `RouteNumber`, `ZoneID`, `PlantSize`) VALUES
('AB123', 200, 100, 'A21', 230),
('AC123', 200, 200, 'A22', 231),
('AD123', 200, 300, 'B23', 232),
('AE123', 200, 400, 'B24', 233),
('AF123', 200, 500, 'C25', 234),
('AG123', 200, 600, 'C26', 235),
('AH123', 200, 700, 'D27', 236);

-- --------------------------------------------------------

--
-- Table structure for table `premises`
--

CREATE TABLE `premises` (
  `PremiseID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PremiseName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CustomerID` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ZoneID` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Classification` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RouteNumber` int DEFAULT NULL,
  `PremiseStatus` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MeterNumber` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `premises`
--

INSERT INTO `premises` (`PremiseID`, `PremiseName`, `CustomerID`, `ZoneID`, `Classification`, `RouteNumber`, `PremiseStatus`, `MeterNumber`) VALUES
('PR1', 'Premise01', 'AB1234C', 'A21', 'Domestic', 100, 'Active', 1),
('PR2', 'Premise02', 'GH1234I', 'B23', 'Domestic', 300, 'Suspended', 3),
('PR3', 'Premise03', 'DE1234F', 'A22', 'Domestic', 200, 'Active', 2),
('PR4', 'Premise04', 'JK1234L', 'B24', 'Commercial', 400, 'Suspended', 4),
('PR5', 'Premise05', 'MN1234O', 'C25', 'Commercial', 500, 'Suspended', 5);

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `RouteNumber` int NOT NULL,
  `RouteStatus` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ZoneID` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`RouteNumber`, `RouteStatus`, `ZoneID`) VALUES
(100, 'ON', 'A21'),
(200, 'ON', 'A22'),
(300, 'OFF', 'B23'),
(400, 'OFF', 'B24'),
(500, 'OFF', 'C25');

-- --------------------------------------------------------

--
-- Table structure for table `sectors`
--

CREATE TABLE `sectors` (
  `SectorID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sector Name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sector Office` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sectors`
--

INSERT INTO `sectors` (`SectorID`, `Sector Name`, `Sector Office`) VALUES
('A123', 'Kiambu', 'Two Rivers'),
('B124', 'Nairobi', 'WestGate'),
('C125', 'Nakuru', 'WestSide'),
('D126', 'Mombasa', 'Nyali Centre'),
('E127', 'Wajir', 'Al Fatah');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `StaffID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SectorID` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StaffName` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StaffRank` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`StaffID`, `SectorID`, `StaffName`, `StaffRank`) VALUES
('XY11', 'A123', 'Julie', 'Biller'),
('XY22', 'B124', 'James', 'Biller'),
('XY33', 'C125', 'Kevin', 'Biller'),
('XY44', 'D126', 'Peter', 'Supervisor'),
('XY55', 'E127', 'Paula', 'Biller');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `ZoneID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SectorID` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ConsumptionCapacity` int DEFAULT NULL,
  `ZoneName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RouteNumber` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`ZoneID`, `SectorID`, `ConsumptionCapacity`, `ZoneName`, `RouteNumber`) VALUES
('A21', 'A123', 10000, 'Highlands', 100),
('A22', 'A123', 23900, 'Savannah', 200),
('B23', 'B124', 89000, 'Kilimanjaro', 300),
('B24', 'B124', 56000, 'Caves', 400),
('C25', 'C125', 114567, 'Ontario', 500),
('C26', 'C125', 100000, 'Kisumu', 600),
('D27', 'D126', 34500, 'Longonot', 700),
('D28', 'D126', 45000, 'Petit', 800),
('E29', 'E127', 67000, 'Acera', 900),
('E30', 'E127', 78000, 'Mounts', 101);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `customer_payments`
--
ALTER TABLE `customer_payments`
  ADD PRIMARY KEY (`PaymentID`);

--
-- Indexes for table `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`PlantID`);

--
-- Indexes for table `premises`
--
ALTER TABLE `premises`
  ADD PRIMARY KEY (`PremiseID`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`RouteNumber`);

--
-- Indexes for table `sectors`
--
ALTER TABLE `sectors`
  ADD PRIMARY KEY (`SectorID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`StaffID`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`ZoneID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
