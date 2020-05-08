-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2020 at 10:22 PM
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
-- Database: `creditfeepaymentsystem`
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
(1, 'ICT-1101', 'Basic Electrical Circuit ', 3.00, '1-1'),
(2, 'ICT-1102', 'Basic Electrical Circuit Lab', 1.00, '1-1'),
(3, 'ICT-1103', 'Computer Programming ', 3.00, '1-1'),
(4, 'ICT-1104', 'Computer Programming Lab ', 1.00, '1-1'),
(5, 'ICT-1105', 'Physics', 3.00, '1-1'),
(6, 'ICT-1107', 'Mathematics-I(Differential and Integral Calculus)', 3.00, '1-1'),
(7, 'ICT-1109', 'Technical Communicative English', 3.00, '1-1'),
(8, 'ICT-1110', 'Technical Communicative English Lab', 1.00, '1-1'),
(9, 'ICT-1111', 'Technology, Environment and Society', 2.00, '1-1'),
(10, 'ICT-1114', 'Introduction to Information Technology Lab', 1.00, '1-1'),
(11, 'ICT-1201', 'Electronics-I(Electronic Devices and Circuit Theory)', 3.00, '1-2'),
(12, 'ICT-1202', 'Electronics-I(Electronic Devices and Circuit Theory) Lab', 1.00, '1-2'),
(13, 'ICT-1203', 'Programming with C++', 3.00, '1-2'),
(14, 'ICT-1204', 'Programming with C++ Lab', 1.00, '1-2'),
(15, 'ICT-1205', 'Data Structure', 3.00, '1-2'),
(16, 'ICT-1206', 'Data Structure Lab', 1.00, '1-2'),
(17, 'ICT-1207', 'Discrete Mathematics', 3.00, '1-2'),
(18, 'ICT-1209', 'Mathematics-II(Matrics and Co-ordinate Geometry)', 3.00, '1-2'),
(19, 'ICT-1210', 'Software Development Project-I', 1.00, '1-2'),
(20, 'ICT-1211', 'Bhashani Studies', 2.00, '1-2'),
(21, 'ICT-2101', 'Electronics-II(Operational Amplifier and Integrated Circuits)', 3.00, '2-1'),
(22, 'ICT-2102', 'Electronics-II(Operational Amplifier and Integrated Circuits) Lab', 1.00, '2-1'),
(23, 'ICT-2103', 'Digital Logic Design', 3.00, '2-1'),
(24, 'ICT-2104', 'Digital Logic Design Lab', 1.00, '2-1'),
(25, 'ICT-2105', 'Object Oriented Programming With Java', 3.00, '2-1'),
(26, 'ICT-2106', 'Object Oriented Programming With Java Lab', 1.00, '2-1'),
(27, 'ICT-2108', 'Algorithm Design and Analysis Lab', 1.00, '2-1'),
(28, 'ICT-2108', 'Algorithm Design and Analysis Lab', 1.00, '2-1'),
(29, 'ICT-2109', 'Mathematics-III(Differential Equation and Vector Calculus)', 3.00, '2-1'),
(30, 'ICT-2111', 'Economics', 3.00, '2-1'),
(31, 'ICT-2201', 'computer organization and architecture', 3.00, '2-2'),
(32, 'ICT-2203', 'Computer Based Numerical Methods', 3.00, '2-2'),
(33, 'ICT-2204', 'Computer Based Numerical Methods Lab', 1.00, '2-2'),
(34, 'ICT-2205', 'Advanced  Java and Mobile Application ', 3.00, '2-2'),
(35, 'ICT-2206', 'Advanced  Java and Mobile Application Lab', 1.00, '2-2'),
(36, 'ICT-2207', 'Database Management Systems', 3.00, '2-2'),
(37, 'ICT-2208', 'Database Management Systems Lab', 1.00, '2-2'),
(38, 'ICT-2209', 'Mathematics-IV (Complex Variables and Fourier Analysis) ', 3.00, '2-2'),
(39, 'ICT-2211', 'Statistics', 3.00, '2-2'),
(40, 'ICT-3101', 'Analog and Digital Communication', 3.00, '3-1'),
(41, 'ICT-3102', 'Analog and Digital Communication Lab', 1.00, '3-1'),
(42, 'ICT-3103', 'Microprocessor and Assembly Language', 3.00, '3-1'),
(43, 'ICT-3104', 'Microprocessor and Assembly Language Lab', 1.00, '3-1'),
(44, 'ICT-3105', 'Object Oriented Analysis and Design', 3.00, '3-1'),
(45, 'ICT-3107', 'Operating Systems', 3.00, '3-1'),
(46, 'ICT-3108', 'Operating Systems Lab', 1.00, '3-1'),
(47, 'ICT-3109', 'Financial and Managerial Accounting', 3.00, '3-1'),
(48, 'ICT-3110', 'Software Development Project-II', 1.00, '3-1'),
(49, 'ICT-3201', 'Microwave Engineering', 3.00, '3-2'),
(50, 'ICT-3203', 'Bio-informatics', 3.00, '3-2'),
(51, 'ICT-3205', 'Computer Peripheral and Interfacing', 3.00, '3-2'),
(52, 'ICT-3206', 'Computer Peripheral and Interfacing Lab', 1.00, '3-2'),
(53, 'ICT-3207', 'Computer Networks', 3.00, '3-2'),
(54, 'ICT-3208', 'Computer planning and Designing Lab', 1.00, '3-2'),
(55, 'ICT-3209', 'Software Engineering', 3.00, '3-2'),
(56, 'ICT-3210', 'Software Engineering Lab', 1.00, '3-2'),
(57, 'ICT-3211', 'Data Mining', 3.00, '3-2'),
(58, 'ICT-4000', 'Research Thesis/Project', 2.00, '4-1'),
(59, 'ICT-4101', 'Telecommunication Engineering', 3.00, '4-1'),
(60, 'ICT-4103', 'Simulation and Modeling', 3.00, '4-1'),
(61, 'ICT-4105', 'Network Security and Cyber Law', 3.00, '4-1'),
(62, 'ICT-4107', 'E-Commerce and Web Programming', 3.00, '4-1'),
(63, 'ICT-4108', 'E-Commerce and Web Programming Lab', 3.00, '4-1'),
(64, 'ICT-4110', 'Research Methodology', 3.00, '4-1'),
(65, 'ICT-4111', 'Digital Image Processing', 3.00, '4-1'),
(66, 'ICT-4112', 'Digital Image Processing Lab', 1.00, '4-1'),
(67, 'ICT-4000', 'Research Thesis/Project', 2.00, '4-2'),
(68, 'ICT-4201', 'Wireless and Mobile Communication', 3.00, '4-2'),
(69, 'ICT-4202', 'Wireless and Mobile Communication Lab', 1.00, '4-2'),
(70, 'ICT-4203', 'Optical Communication', 3.00, '4-2'),
(71, 'ICT-4204', 'Optical Communication Lab', 1.00, '4-2'),
(72, 'ICT-4205', 'Digital Signal Processing', 3.00, '4-2'),
(73, 'ICT-4206', 'Digital Signal Processing Lab', 1.00, '4-2'),
(74, 'ICT-4211', 'Artificial Intelligence', 3.00, '4-2'),
(75, 'ICT-4212', 'Artificial Intelligence Lab', 1.00, '4-2');

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
('IT-17032', '3-1'),
('IT-17035', '3-1'),
('IT-17042', '3-1'),
('IT-17052', '3-1'),
('IT-17062', '3-1'),
('IT-17072', '3-1'),
('it-17092', '3-1'),
('IT-17095', '3-1'),
('IT-18001', '2-1'),
('it-19001', '1-1'),
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
('CH-17028', '17028', 'Md. Mahfuz Shariar', '01990633612', 'mahfuzshariar@gmail.com', '2016-17', '3-1', 'B.Sc(Hons)', 'CHEMISTRY', 'SZRH'),
('IT-16005', '16005', 'md rh', '4', 'mnhruhan@gmail.com', '4', '2-2', 'BSc(Engg.)', 'ESRM', 'BSMRH'),
('IT-16062', '16062', 'MD NOYON ALI', '01747385482', 'mnhruhan@gmail.com', '2015-16', '3-1', 'BSc(Engg.)', 'ICT', 'BSMRH'),
('IT-17009', '17005', 'ruhan', '0171543543', 'mnhruhan@gamil.com', '2016-17', '3-1', 'BSc(Engg.)', 'ICT', 'JAMH'),
('IT-17019', '17019', 'md tonmoy', '01558954586', 'farukictmbstu@gmail.com', '2016-17', '3-1', 'BSc(Engg.)', 'ICT', 'JAMH'),
('IT-17025', '17025', 'md Bashar', '01558954586', 'farukictmbstu@gmail.com', '2016-17', '2-1', 'BSc(Engg.)', 'ICT', 'JAMH'),
('IT-17035', '17035', 'md faruk hosen', '01558954586', 'farukictmbstu@gmail.com', '2016-17', '3-1', 'BSc(Engg.)', 'ICT', 'BSMRH'),
('IT-17052', '17052', 'md raf', '8080', 'farukictmbstu@gmail.com', '2016-17', '3-1', 'BSc(Engg.)', 'ICT', 'JAMH'),
('it-17067', '17067', 'md altaf', '01558954586', 'farukictmbstu@gmail.com', '2016-17', '3-1', 'BSc(Engg.)', 'ICT', 'BSMRH'),
('IT-17072', '17072', 'md niloy', '01558954586', 'farukictmbstu@gmail.com', '2016-17', '3-1', 'BSc(Engg.)', 'ICT', 'JAMH'),
('IT-18014', '18014', 'Md. Rafiul Islam', '01706983320', 'rafiul@gmail.com', '2017-18', '2-2', 'B.Sc(Engg)', 'ICT', 'BSMRH'),
('ST-17014', '17014', 'Md. Nazmul Hossain', '01796756134', 'mdnazmulhossain@gmail.com', '2016-17', '3-1', 'B.Sc(Hons)', 'STATISTICS', 'BSMRH'),
('ST-17056', '17056', 'Md. Shamim Rrza', '01720535681', 'mdshamimreza@gmail.com', '2016-17', '3-1', 'B.Sc(Hons)', 'STATISTICS', 'BSMRH');

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
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `student_year`
--
ALTER TABLE `student_year`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
