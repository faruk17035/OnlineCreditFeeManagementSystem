-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2020 at 10:16 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `creditfee`
--

-- --------------------------------------------------------

--
-- Table structure for table `backlog`
--

CREATE TABLE `backlog` (
  `course_code` varchar(50) NOT NULL,
  `course_name` varchar(80) DEFAULT NULL,
  `course_credit` double(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `backlog`
--

INSERT INTO `backlog` (`course_code`, `course_name`, `course_credit`) VALUES
('ict-2201', 'Numerical', 3.00),
('ict-2221', 'Data mining', 3.00),
('ict-2223', 'data semantics', 2.00);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(30) NOT NULL,
  `course_code` varchar(50) DEFAULT NULL,
  `course_name` varchar(80) DEFAULT NULL,
  `course_credit` double(3,2) DEFAULT NULL,
  `semester_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course_code`, `course_name`, `course_credit`, `semester_name`) VALUES
(25, 'ICT-2108', 'Algorithm Design and Analysis Lab', 1.00, '2-1'),
(26, 'ICT-3101', 'Analog and Digital Communication', 3.00, '3-1'),
(27, 'ICT-3102', 'Analog and Digital Communication Lab', 1.00, '3-1'),
(28, 'ICT-3103', 'Microprocessor and Assembly Language', 3.00, '3-1'),
(29, 'ICT-3104', 'Microprocessor and Assembly Language Lab', 1.00, '3-1'),
(30, 'ICT-3105', 'Object Oriented Analysis and Design', 3.00, '3-1'),
(31, 'ICT-3107', 'Operating Systems', 3.00, '3-1'),
(32, 'ICT-3108', 'Operating Systems Lab', 1.00, '3-1'),
(36, 'ICT-2203', 'Computer Based Numerical Methods', 3.00, '2-2'),
(37, 'ICT-2204', 'Computer Based Numerical Methods Lab', 1.00, '2-2'),
(38, 'ICT-2205', 'Advanced  Java and Mobile Application ', 3.00, '2-2'),
(39, 'ICT-2206', 'Computer Based Numerical Methods', 3.00, '2-2'),
(40, 'ICT-2202', 'Computer Based Numerical Methods', 3.00, '2-2'),
(41, 'ICT-2202', 'Advanced  Java and Mobile Application Lab', 1.00, '2-2'),
(42, 'ICT-2207', 'Database Management Systems', 3.00, '2-2'),
(43, 'ICT-2208', 'Database Management Systems Lab', 1.00, '2-2'),
(44, 'ICT-2209', 'Mathematics-IV (Complex Variables and Fourier Analysis) ', 3.00, '2-2'),
(46, 'ict-2104', 'Digital Logic Design', 1.00, '2-1'),
(47, 'ict-2105', 'Object Oriented Programming with Java', 3.00, '2-1'),
(48, 'ict-2106', 'Object Oriented Programming with Java Lab', 3.00, '2-1'),
(50, 'ict-3203', 'Bioinformatics', 3.00, '3-2'),
(51, 'ict-3205', 'Computer Peripheral and Interfacing', 3.00, '3-2'),
(52, 'ict-3206', 'Computer Peripheral and Interfacing Lab', 1.00, '3-2'),
(53, 'ict-3207', 'Computer Networks', 3.00, '3-2'),
(54, 'ict-3208', 'Network Planning and Designing Lab', 1.00, '3-2'),
(55, 'ict-3209', 'Software Engineering', 3.00, '3-2'),
(56, 'ict-3210', 'Software Engineering Lab', 1.00, '3-2'),
(57, 'ict-3211', 'Data Mining', 3.00, '3-2'),
(58, 'ict-3201', 'microwave engineering', 3.00, '3-2');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `student_id` varchar(50) NOT NULL,
  `semester_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`student_id`, `semester_name`) VALUES
('', '0'),
('it-14035', '2-1'),
('IT-16062', '3-1'),
('it-17005', '2-1'),
('it-17012', '3-1'),
('IT-17019', '3-1'),
('IT-17025', '3-1'),
('IT-17032', '3-1'),
('IT-17035', '3-1'),
('IT-17035', '3-2'),
('IT-17042', '3-1'),
('IT-17052', '3-1'),
('IT-17062', '3-1'),
('IT-17072', '3-1'),
('it-17092', '3-1'),
('IT-17095', '3-1'),
('IT-18001', '2-1'),
('IT-18008', '2-2'),
('it-19001', '1-1'),
('IT-19025', '3-2'),
('it-19035', '3-1'),
('IT-19045', '1-2');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `session` varchar(50) DEFAULT NULL,
  `semester_name` varchar(20) DEFAULT NULL,
  `degree` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `hall` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `password`, `name`, `mobile`, `email`, `session`, `semester_name`, `degree`, `department`, `hall`) VALUES
('IT-16062', '16062', 'MD NOYON ALI', '01747385482', 'mnhruhan@gmail.com', '2015-16', '3-1', 'BSc(Engg.)', 'ICT', 'BSMRH'),
('IT-17009', '17005', 'ruhan', '0171543543', 'mnhruhan@gamil.com', '2016-17', '3-1', 'BSc(Engg.)', 'ICT', 'JAMH'),
('IT-17025', '17025', 'md bashar', '01558954586', 'farukictmbstu@gmail.com', '2016-17', '3-1', 'BSc(Engg.)', 'ICT', 'JAMH'),
('IT-17035', '17035', 'md faruk hosen', '01558954586', 'farukictmbstu@gmail.com', '2016-17', '3-2', 'BSc(Engg.)', 'ICT', 'BSMRH'),
('IT-17072', '17072', 'md niloy', '01558954586', 'farukictmbstu@gmail.com', '2016-17', '3-1', 'BSc(Engg.)', 'ICT', 'JAMH'),
('IT-18008', '18008', 'md Shohan', '01558954586', 'farukictmbstu@gmail.com', '2017-18', '2-2', 'BSc(Engg.)', 'ICT', 'BSMRH'),
('IT-19025', '19025', 'md mursalin', '01558954586', 'farukictmbstu@gmail.com', '2018-19', '3-2', 'BSc(Engg.)', 'ICT', 'JAMH');

-- --------------------------------------------------------

--
-- Table structure for table `student_year`
--

CREATE TABLE `student_year` (
  `id` int(30) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_year`
--

INSERT INTO `student_year` (`id`, `name`) VALUES
(1, '1st Year 1st Semester'),
(2, '1st Year 2nd Semester'),
(3, '2nd Year 1st Semester'),
(4, '2nd Year 2nd Semester'),
(5, '3rd Year 1st Semester'),
(6, '3rd Year 2nd Semester'),
(7, '4th Year 1st Semester'),
(8, '4th Year 2nd Semester');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backlog`
--
ALTER TABLE `backlog`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`student_id`,`semester_name`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student_year`
--
ALTER TABLE `student_year`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `student_year`
--
ALTER TABLE `student_year`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
