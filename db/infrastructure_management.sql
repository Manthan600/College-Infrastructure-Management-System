-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2023 at 01:56 PM
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
-- Database: `infrastructure_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `ac`
--

CREATE TABLE `ac` (
  `ac_id` int(11) NOT NULL,
  `model_id` int(11) DEFAULT NULL,
  `Room_id` int(11) DEFAULT NULL,
  `Company` varchar(255) DEFAULT NULL,
  `DOI` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ac`
--

INSERT INTO `ac` (`ac_id`, `model_id`, `Room_id`, `Company`, `DOI`, `status`) VALUES
(1, 1, 1, 'Lloyd', '2003-01-15', 'Working'),
(2, 2, 6, 'LG', '2005-02-23', 'Working'),
(3, 3, 7, 'Panasonic', '2006-05-11', 'Working'),
(4, 4, 10, 'Voltas', '2007-09-30', 'Working'),
(5, 5, 3, 'Lloyd', '2008-12-15', 'Working'),
(6, 1, 1, 'Lloyd', '2003-01-15', 'Working'),
(7, 2, 6, 'LG', '2005-02-23', 'Working'),
(8, 3, 7, 'Panasonic', '2006-05-11', 'Working'),
(9, 4, 10, 'Voltas', '2007-09-30', 'Working'),
(10, 5, 3, 'Lloyd', '2008-12-15', 'Working'),
(11, 1, 1, 'Lloyd', '2003-01-15', 'Working'),
(12, 2, 6, 'LG', '2005-02-23', 'Working'),
(13, 3, 7, 'Panasonic', '2006-05-11', 'Working'),
(14, 4, 10, 'Voltas', '2007-09-30', 'Working'),
(15, 5, 3, 'Lloyd', '2008-12-15', 'Working'),
(16, 1, 1, 'Lloyd', '2003-01-15', 'Working'),
(17, 2, 6, 'LG', '2005-02-23', 'Working'),
(18, 3, 7, 'Panasonic', '2006-05-11', 'Working'),
(19, 4, 10, 'Voltas', '2007-09-30', 'Working'),
(20, 5, 3, 'Lloyd', '2008-12-15', 'Working'),
(21, 1, 1, 'Lloyd', '2003-01-15', 'Working'),
(22, 2, 6, 'LG', '2005-02-23', 'Working'),
(23, 3, 7, 'Panasonic', '2006-05-11', 'Working'),
(24, 4, 10, 'Voltas', '2007-09-30', 'Working'),
(25, 5, 3, 'Lloyd', '2008-12-15', 'Working'),
(26, 1, 1, 'Lloyd', '2003-01-15', 'Working'),
(27, 2, 6, 'LG', '2005-02-23', 'Working'),
(28, 3, 7, 'Panasonic', '2006-05-11', 'Working'),
(29, 4, 10, 'Voltas', '2007-09-30', 'Working'),
(30, 5, 3, 'Lloyd', '2008-12-15', 'Working'),
(31, 1, 1, 'Lloyd', '2003-01-15', 'Working'),
(32, 2, 6, 'LG', '2005-02-23', 'Working'),
(33, 3, 7, 'Panasonic', '2006-05-11', 'Working'),
(34, 4, 10, 'Voltas', '2007-09-30', 'Working'),
(35, 5, 3, 'Lloyd', '2008-12-15', 'Working'),
(36, 1, 1, 'Lloyd', '2003-01-15', 'Working'),
(37, 2, 6, 'LG', '2005-02-23', 'Working'),
(38, 3, 7, 'Panasonic', '2006-05-11', 'Working'),
(39, 4, 10, 'Voltas', '2007-09-30', 'Working'),
(40, 5, 3, 'Lloyd', '2008-12-15', 'Working');

-- --------------------------------------------------------

--
-- Table structure for table `ac_complaints`
--

CREATE TABLE `ac_complaints` (
  `token_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `ac_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `complaint_date` date DEFAULT NULL,
  `tech_id` int(11) DEFAULT NULL,
  `feedback` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ac_complaints`
--

INSERT INTO `ac_complaints` (`token_id`, `student_id`, `ac_id`, `description`, `complaint_date`, `tech_id`, `feedback`) VALUES
(2, 112103001, 4, 'Ac is not working and also coolant is leaking', '2023-11-13', 110001, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ac_model`
--

CREATE TABLE `ac_model` (
  `model_id` int(11) NOT NULL,
  `cooling_capacity` int(11) DEFAULT NULL,
  `power_consumption` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ac_model`
--

INSERT INTO `ac_model` (`model_id`, `cooling_capacity`, `power_consumption`) VALUES
(1, 12000, 1500),
(2, 8000, 900),
(3, 15000, 1800),
(4, 10000, 1200),
(5, 9000, 1100);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `computer`
--

CREATE TABLE `computer` (
  `comp_id` int(11) NOT NULL,
  `model_id` int(11) DEFAULT NULL,
  `Room_id` int(11) DEFAULT NULL,
  `Company` varchar(255) DEFAULT NULL,
  `DOI` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `computer`
--

INSERT INTO `computer` (`comp_id`, `model_id`, `Room_id`, `Company`, `DOI`, `status`) VALUES
(1, 1, 2, 'HCL', '2015-03-14', 'Working'),
(2, 2, 7, 'HP', '2016-10-22', 'Working'),
(3, 3, 12, 'Lenovo', '2017-09-07', 'Working'),
(4, 4, 17, 'Dell', '2018-04-29', 'Working'),
(5, 5, 2, 'Acer', '2019-12-03', 'Working'),
(6, 3, 7, 'Asus', '2020-11-18', 'Working'),
(7, 1, 12, 'HCL', '2021-07-09', 'Working'),
(8, 2, 17, 'HP', '2022-05-26', 'Working'),
(9, 3, 2, 'Lenovo', '2023-03-10', 'Working'),
(10, 4, 7, 'Dell', '2023-08-05', 'Working'),
(11, 1, 2, 'HCL', '2015-03-14', 'Working'),
(12, 2, 7, 'HP', '2016-10-22', 'Working'),
(13, 3, 12, 'Lenovo', '2017-09-07', 'Working'),
(14, 4, 17, 'Dell', '2018-04-29', 'Working'),
(15, 5, 2, 'Acer', '2019-12-03', 'Working'),
(16, 3, 7, 'Asus', '2020-11-18', 'Working'),
(17, 1, 12, 'HCL', '2021-07-09', 'Working'),
(18, 2, 17, 'HP', '2022-05-26', 'Working'),
(19, 3, 2, 'Lenovo', '2023-03-10', 'Working'),
(20, 4, 7, 'Dell', '2023-08-05', 'Working'),
(21, 1, 2, 'HCL', '2015-03-14', 'Working'),
(22, 2, 7, 'HP', '2016-10-22', 'Working'),
(23, 3, 12, 'Lenovo', '2017-09-07', 'Working'),
(24, 4, 17, 'Dell', '2018-04-29', 'Working'),
(25, 5, 2, 'Acer', '2019-12-03', 'Working'),
(26, 3, 7, 'Asus', '2020-11-18', 'Working'),
(27, 1, 12, 'HCL', '2021-07-09', 'Working'),
(28, 2, 17, 'HP', '2022-05-26', 'Working'),
(29, 3, 2, 'Lenovo', '2023-03-10', 'Working'),
(30, 4, 7, 'Dell', '2023-08-05', 'Working'),
(31, 1, 2, 'HCL', '2015-03-14', 'Working'),
(32, 2, 7, 'HP', '2016-10-22', 'Working'),
(33, 3, 12, 'Lenovo', '2017-09-07', 'Working'),
(34, 4, 17, 'Dell', '2018-04-29', 'Working'),
(35, 5, 2, 'Acer', '2019-12-03', 'Working'),
(36, 3, 7, 'Asus', '2020-11-18', 'Working'),
(37, 1, 12, 'HCL', '2021-07-09', 'Working'),
(38, 2, 17, 'HP', '2022-05-26', 'Working'),
(39, 3, 2, 'Lenovo', '2023-03-10', 'Working'),
(40, 4, 7, 'Dell', '2023-08-05', 'Working');

-- --------------------------------------------------------

--
-- Table structure for table `comp_complaints`
--

CREATE TABLE `comp_complaints` (
  `token_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `comp_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `complaint_date` date DEFAULT NULL,
  `tech_id` int(11) DEFAULT NULL,
  `feedback` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comp_complaints`
--

INSERT INTO `comp_complaints` (`token_id`, `student_id`, `comp_id`, `description`, `complaint_date`, `tech_id`, `feedback`) VALUES
(3, 112103001, 2, 'cpu overheating', '2023-11-08', 110002, NULL),
(4, 112103001, 1, 'Keyboard not working', '2023-11-09', NULL, NULL),
(5, 112103001, 1, 'monitor is not working', '2023-11-09', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comp_model`
--

CREATE TABLE `comp_model` (
  `model_id` int(11) NOT NULL,
  `RAM` int(11) DEFAULT NULL,
  `Storage` int(11) DEFAULT NULL,
  `GPU` varchar(255) DEFAULT NULL,
  `GPU_size` int(11) DEFAULT NULL,
  `Processor` varchar(255) DEFAULT NULL,
  `monitor_size` int(11) DEFAULT NULL,
  `linux` tinyint(1) DEFAULT NULL,
  `windows` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comp_model`
--

INSERT INTO `comp_model` (`model_id`, `RAM`, `Storage`, `GPU`, `GPU_size`, `Processor`, `monitor_size`, `linux`, `windows`) VALUES
(1, 8, 256, 'NVIDIA GeForce RTX 3060', 6, 'Intel Core i7', 24, 1, 1),
(2, 16, 512, 'AMD Radeon RX 6700 XT', 8, 'AMD Ryzen 9', 27, 1, 1),
(3, 12, 512, 'NVIDIA GeForce GTX 1660', 4, 'Intel Core i5', 21, 1, 1),
(4, 16, 1, 'NVIDIA GeForce RTX 3080', 10, 'Intel Core i9', 32, 1, 1),
(5, 8, 512, 'AMD Radeon RX 6600 XT', 6, 'AMD Ryzen 7', 24, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`) VALUES
(1, 'Electrical Engineering'),
(2, 'Mechanical Engineering'),
(3, 'Computer Engineering'),
(4, 'Civil Engineering'),
(5, 'Chemical Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `projector`
--

CREATE TABLE `projector` (
  `proj_id` int(11) NOT NULL,
  `model_id` int(11) DEFAULT NULL,
  `Room_id` int(11) DEFAULT NULL,
  `Company` varchar(255) DEFAULT NULL,
  `DOI` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projector`
--

INSERT INTO `projector` (`proj_id`, `model_id`, `Room_id`, `Company`, `DOI`, `status`) VALUES
(1, 1, 3, 'Sony', '2004-12-17', 'Working'),
(2, 2, 13, 'BenQ', '2007-05-28', 'Working'),
(3, 3, 10, 'Epson', '2010-11-02', 'Working'),
(4, 4, 8, 'Dell', '2013-09-15', 'Working'),
(5, 1, 11, 'Sony', '2015-07-29', 'Working'),
(6, 2, 6, 'BenQ', '2018-03-04', 'Working'),
(7, 3, 17, 'Epson', '2019-12-20', 'Working'),
(8, 4, 4, 'Dell', '2022-09-23', 'Working'),
(9, 1, 7, 'Sony', '2005-06-13', 'Working'),
(10, 2, 9, 'BenQ', '2008-02-26', 'Working'),
(11, 3, 16, 'Epson', '2011-01-12', 'Working'),
(12, 4, 5, 'Dell', '2014-06-07', 'Working'),
(13, 1, 8, 'Sony', '2017-03-22', 'Working'),
(14, 2, 12, 'BenQ', '2020-01-08', 'Working'),
(15, 3, 14, 'Epson', '2023-03-16', 'Working'),
(16, 4, 10, 'Dell', '2004-11-18', 'Working'),
(17, 1, 6, 'Sony', '2006-09-25', 'Working'),
(18, 2, 11, 'BenQ', '2009-07-02', 'Working'),
(19, 3, 5, 'Epson', '2012-02-14', 'Working'),
(20, 4, 16, 'Dell', '2015-06-29', 'Working'),
(21, 1, 4, 'Sony', '2018-04-11', 'Working'),
(22, 2, 7, 'BenQ', '2021-03-17', 'Working'),
(23, 3, 9, 'Epson', '2003-10-03', 'Working'),
(24, 4, 12, 'Dell', '2005-08-15', 'Working'),
(25, 1, 14, 'Sony', '2008-07-24', 'Working'),
(26, 2, 15, 'BenQ', '2011-12-30', 'Working'),
(27, 3, 17, 'Epson', '2014-09-06', 'Working'),
(28, 4, 13, 'Dell', '2017-11-19', 'Working'),
(29, 1, 10, 'Sony', '2020-10-08', 'Working'),
(30, 2, 6, 'BenQ', '2023-01-12', 'Working'),
(31, 3, 8, 'Epson', '2005-06-19', 'Working'),
(32, 4, 11, 'Dell', '2007-08-23', 'Working'),
(33, 1, 16, 'Sony', '2010-03-04', 'Working'),
(34, 2, 17, 'BenQ', '2013-05-14', 'Working'),
(35, 3, 12, 'Epson', '2016-07-28', 'Working'),
(36, 4, 15, 'Dell', '2019-09-02', 'Working'),
(37, 1, 9, 'Sony', '2022-10-15', 'Working'),
(38, 2, 8, 'BenQ', '2004-11-28', 'Working'),
(39, 3, 14, 'Epson', '2007-09-18', 'Working'),
(40, 4, 10, 'Dell', '2010-12-22', 'Working');

-- --------------------------------------------------------

--
-- Table structure for table `proj_complaints`
--

CREATE TABLE `proj_complaints` (
  `token_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `proj_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `complaint_date` date DEFAULT NULL,
  `tech_id` int(11) DEFAULT NULL,
  `feedback` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proj_complaints`
--

INSERT INTO `proj_complaints` (`token_id`, `student_id`, `proj_id`, `description`, `complaint_date`, `tech_id`, `feedback`) VALUES
(0, 112103001, 1, 'projector is not working', '2023-11-08', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `proj_model`
--

CREATE TABLE `proj_model` (
  `model_id` int(11) NOT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `brightness` int(11) DEFAULT NULL,
  `lamp_life` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proj_model`
--

INSERT INTO `proj_model` (`model_id`, `resolution`, `brightness`, `lamp_life`) VALUES
(1, 'Full HD', 3500, 3000),
(2, '4K UHD', 5000, 4000),
(3, 'HD Ready', 2500, 2000),
(4, 'WXGA', 4000, 3500),
(5, 'XGA', 3000, 2800);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `Room_id` int(11) NOT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Capacity` int(11) DEFAULT NULL,
  `Room_number` int(11) DEFAULT NULL,
  `Dept_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`Room_id`, `Type`, `Capacity`, `Room_number`, `Dept_id`) VALUES
(1, 'Lecture Hall', 100, 5, 3),
(2, 'Lab', 30, 1, 1),
(3, 'Seminar Room', 50, 15, 2),
(4, 'Classroom', 40, 8, 3),
(5, 'Conference Room', 20, 9, 4),
(6, 'Lecture Hall', 100, 16, 2),
(7, 'Lab', 30, 17, 3),
(8, 'Seminar Room', 50, 18, 4),
(9, 'Classroom', 40, 19, 1),
(10, 'Conference Room', 20, 20, 5),
(11, 'Lecture Hall', 100, 1, 3),
(12, 'Lab', 30, 1, 2),
(13, 'Seminar Room', 50, 2, 4),
(14, 'Classroom', 40, 3, 3),
(15, 'Conference Room', 20, 4, 1),
(16, 'Lecture Hall', 100, 5, 5),
(17, 'Lab', 30, 6, 2),
(18, 'Seminar Room', 50, 7, 3),
(19, 'Classroom', 40, 8, 4),
(20, 'Conference Room', 20, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `MIS` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`MIS`, `password`, `name`, `branch`, `contact_no`) VALUES
(112103001, 'Test@123', 'Amit Kumar', 'Computer Engineering', '123-456-7890'),
(112103002, 'Test@123', 'Rajesh Singh', 'Computer Engineering', '234-567-8901'),
(112103003, 'Test@123', 'Priya Sharma', 'Computer Engineering', '345-678-9012'),
(112103004, 'Test@123', 'Sarika Verma', 'Computer Engineering', '456-789-0123'),
(112103005, 'Test@123', 'Deepak Gupta', 'Computer Engineering', '567-890-1234'),
(112103006, 'Test@123', 'Neha Patel', 'Computer Engineering', '678-901-2345'),
(112103007, 'Test@123', 'Rahul Jain', 'Computer Engineering', '789-012-3456'),
(112103008, 'Test@123', 'Sneha Reddy', 'Computer Engineering', '890-123-4567'),
(112103009, 'Test@123', 'Vikas Yadav', 'Computer Engineering', '901-234-5678'),
(112103010, 'Test@123', 'Pooja Singh', 'Computer Engineering', '012-345-6789');

-- --------------------------------------------------------

--
-- Table structure for table `technicians`
--

CREATE TABLE `technicians` (
  `tech_id` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technicians`
--

INSERT INTO `technicians` (`tech_id`, `password`, `name`, `contact_no`, `address`, `city`, `zip`, `field`) VALUES
(110001, 'Tech@123', 'Amit Sharma', '123-456-7890', '123 Main St', 'Mumbai', 400001, 'ac'),
(110002, 'Tech@456', 'Priya Patel', '987-654-3210', '456 Elm St', 'Delhi', 110001, 'comp'),
(110003, 'Tech@789', 'Rajesh Kumar', '555-123-7890', '789 Oak St', 'Bangalore', 560001, 'proj'),
(110004, 'Tech@321', 'Sneha Singh', '777-333-1111', '987 Pine St', 'Chennai', 600001, 'ac'),
(110005, 'Tech@654', 'Arun Gupta', '222-999-8888', '567 Birch St', 'Kolkata', 700001, 'comp'),
(110006, 'Tech@789', 'Neha Verma', '111-222-3333', '789 Elm St', 'Hyderabad', 500001, 'proj'),
(110007, 'Tech@852', 'Sanjay Joshi', '444-555-6666', '123 Oak St', 'Pune', 411001, 'comp'),
(110008, 'Tech@963', 'Anjali Khanna', '777-888-9999', '456 Pine St', 'Ahmedabad', 380001, 'ac'),
(110009, 'Tech@741', 'Vijay Mehta', '222-333-4444', '987 Birch St', 'Jaipur', 302001, 'proj'),
(110010, 'Tech@963', 'Deepak Singh', '999-888-7777', '567 Cedar St', 'Lucknow', 226001, 'ac');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ac`
--
ALTER TABLE `ac`
  ADD PRIMARY KEY (`ac_id`),
  ADD KEY `model_id` (`model_id`),
  ADD KEY `Room_id` (`Room_id`);

--
-- Indexes for table `ac_complaints`
--
ALTER TABLE `ac_complaints`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `ac_id` (`ac_id`),
  ADD KEY `tech_id` (`tech_id`);

--
-- Indexes for table `ac_model`
--
ALTER TABLE `ac_model`
  ADD PRIMARY KEY (`model_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `computer`
--
ALTER TABLE `computer`
  ADD PRIMARY KEY (`comp_id`),
  ADD KEY `model_id` (`model_id`),
  ADD KEY `Room_id` (`Room_id`);

--
-- Indexes for table `comp_complaints`
--
ALTER TABLE `comp_complaints`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `comp_id` (`comp_id`),
  ADD KEY `tech_id` (`tech_id`);

--
-- Indexes for table `comp_model`
--
ALTER TABLE `comp_model`
  ADD PRIMARY KEY (`model_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `projector`
--
ALTER TABLE `projector`
  ADD PRIMARY KEY (`proj_id`),
  ADD KEY `model_id` (`model_id`),
  ADD KEY `Room_id` (`Room_id`);

--
-- Indexes for table `proj_complaints`
--
ALTER TABLE `proj_complaints`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `proj_id` (`proj_id`),
  ADD KEY `tech_id` (`tech_id`);

--
-- Indexes for table `proj_model`
--
ALTER TABLE `proj_model`
  ADD PRIMARY KEY (`model_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`Room_id`),
  ADD KEY `Dept_id` (`Dept_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`MIS`);

--
-- Indexes for table `technicians`
--
ALTER TABLE `technicians`
  ADD PRIMARY KEY (`tech_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ac_complaints`
--
ALTER TABLE `ac_complaints`
  MODIFY `token_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comp_complaints`
--
ALTER TABLE `comp_complaints`
  MODIFY `token_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ac`
--
ALTER TABLE `ac`
  ADD CONSTRAINT `ac_ibfk_1` FOREIGN KEY (`model_id`) REFERENCES `ac_model` (`model_id`),
  ADD CONSTRAINT `ac_ibfk_2` FOREIGN KEY (`Room_id`) REFERENCES `rooms` (`Room_id`);

--
-- Constraints for table `ac_complaints`
--
ALTER TABLE `ac_complaints`
  ADD CONSTRAINT `ac_complaints_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`MIS`),
  ADD CONSTRAINT `ac_complaints_ibfk_2` FOREIGN KEY (`ac_id`) REFERENCES `ac` (`ac_id`),
  ADD CONSTRAINT `ac_complaints_ibfk_3` FOREIGN KEY (`tech_id`) REFERENCES `technicians` (`tech_id`);

--
-- Constraints for table `computer`
--
ALTER TABLE `computer`
  ADD CONSTRAINT `computer_ibfk_1` FOREIGN KEY (`model_id`) REFERENCES `comp_model` (`model_id`),
  ADD CONSTRAINT `computer_ibfk_2` FOREIGN KEY (`Room_id`) REFERENCES `rooms` (`Room_id`);

--
-- Constraints for table `comp_complaints`
--
ALTER TABLE `comp_complaints`
  ADD CONSTRAINT `comp_complaints_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`MIS`),
  ADD CONSTRAINT `comp_complaints_ibfk_2` FOREIGN KEY (`comp_id`) REFERENCES `computer` (`comp_id`),
  ADD CONSTRAINT `comp_complaints_ibfk_3` FOREIGN KEY (`tech_id`) REFERENCES `technicians` (`tech_id`);

--
-- Constraints for table `projector`
--
ALTER TABLE `projector`
  ADD CONSTRAINT `projector_ibfk_1` FOREIGN KEY (`model_id`) REFERENCES `proj_model` (`model_id`),
  ADD CONSTRAINT `projector_ibfk_2` FOREIGN KEY (`Room_id`) REFERENCES `rooms` (`Room_id`);

--
-- Constraints for table `proj_complaints`
--
ALTER TABLE `proj_complaints`
  ADD CONSTRAINT `proj_complaints_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`MIS`),
  ADD CONSTRAINT `proj_complaints_ibfk_2` FOREIGN KEY (`proj_id`) REFERENCES `projector` (`proj_id`),
  ADD CONSTRAINT `proj_complaints_ibfk_3` FOREIGN KEY (`tech_id`) REFERENCES `technicians` (`tech_id`);

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`Dept_id`) REFERENCES `department` (`dept_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
