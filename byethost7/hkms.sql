-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2021 at 10:56 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hkms`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `usn` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `semester` int(10) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(20) NOT NULL,
  `email_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`usn`, `name`, `department`, `semester`, `date`, `time`, `email_id`) VALUES
('1JT18CS027', 'Karthik Y', 'CSE', 6, '2021-06-26', '3PM-4PM', '1JT18CS027@jyothyit.ac.in'),
('1JT18CS029', 'Keerthana', 'CSE', 6, '2021-06-26', '3PM-4PM', 'keerthana@gmail.com'),
('1JT18CS034', 'mandara', 'CSE', 6, '2021-06-27', '1PM-2PM', 'mandara.mgowda@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `faclogin`
--

CREATE TABLE `faclogin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faclogin`
--

INSERT INTO `faclogin` (`username`, `password`) VALUES
('isabella@gmail.com', '123456abc'),
('laure@gmail.com', '789def');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_booking`
--

CREATE TABLE `faculty_booking` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dept` varchar(100) NOT NULL,
  `age` int(10) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty_booking`
--

INSERT INTO `faculty_booking` (`name`, `email`, `dept`, `age`, `date`, `time`) VALUES
('Karthik Y', 'karthikbhargav1718@gmail.com', 'CSE', 20, '27-06-2021', '9AM - 10AM'),
('mandara', 'mandara@gmail.com', 'CSE', 21, '28-06-2021', '9AM - 10AM'),
('Sumana', 'sumanamr@gmail.com', 'CSE', 21, '2021-06-27', '11AM - 12:30 PM ');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_details`
--

CREATE TABLE `faculty_details` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `age` int(50) NOT NULL,
  `vaccine_name` enum('Covaxin','CovidShield') NOT NULL,
  `first_dose` varchar(200) NOT NULL,
  `second_dose` varchar(200) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty_details`
--

INSERT INTO `faculty_details` (`name`, `email`, `age`, `vaccine_name`, `first_dose`, `second_dose`, `img`) VALUES
('Andrea ', 'andrea@gmail.com', 35, 'CovidShield', '29-06-2021', '10-08-2021', '../images/prof3.jpg'),
('Isabella ', 'isabella@gmail.com', 32, 'CovidShield', '', '', '../images/prof5.jpg'),
('James Smith', 'smith@gmail.com', 58, 'Covaxin', '29-06-2021', '10-08-2021', '../images/prof2.jpg'),
('Joseph Anthony', 'anthony@gmail.com', 47, 'Covaxin', '26-06-2021', '24-07-2021', '../images/prof6.jpg'),
('Leena Josephine', 'josephine@gmail.com', 36, 'Covaxin', '29-06-2021', '10-08-2021', '../images/prof4.jpg'),
('Michael Laure', 'laure@gmail.com', 50, 'CovidShield', '', '', '../images/prof1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('karthikbhargav1718@gmail.com', 'Karthik@18'),
('manasa', '5231'),
('manu12@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `USN` varchar(10) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `SEMESTER` int(10) NOT NULL,
  `FIRST_VAC_DATE` date DEFAULT NULL,
  `SECOND_VAC_DATE` date DEFAULT NULL,
  `img_dir` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`USN`, `NAME`, `SEMESTER`, `FIRST_VAC_DATE`, `SECOND_VAC_DATE`, `img_dir`) VALUES
('1JT18CS020', 'HARSHA K S', 6, NULL, NULL, '../project-hack-2/images/harsha.jpg'),
('1JT18CS027', 'KARTHIK Y', 6, NULL, NULL, '../project-hack-2/images/karthik.jpg'),
('1JT18CS034', 'Mandara M', 6, '2021-06-04', '2021-07-04', '../project-hack-2/images/mandara.jpeg'),
('1JT18CS056', 'Sumana M R', 6, '2021-06-02', '2021-07-02', '../project-hack-2/images/sumana.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`usn`);

--
-- Indexes for table `faculty_booking`
--
ALTER TABLE `faculty_booking`
  ADD PRIMARY KEY (`name`,`email`);

--
-- Indexes for table `faculty_details`
--
ALTER TABLE `faculty_details`
  ADD PRIMARY KEY (`name`,`email`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`USN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
