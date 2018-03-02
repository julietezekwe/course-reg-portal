-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2018 at 09:20 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schools`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `fac_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `course_code` varchar(3) NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `fac_id`, `dept_id`, `course_name`, `course_code`, `update_at`, `created_at`) VALUES
(1, 1, 1, 'Intro to Medicine', 'ME1', '2018-01-25 22:20:58', '0000-00-00 00:00:00'),
(2, 1, 1, 'Medicine Beginner', 'ME2', '2018-01-25 22:23:30', '0000-00-00 00:00:00'),
(3, 1, 1, 'Medicine Intermidiate', 'ME3', '2018-01-25 22:23:54', '0000-00-00 00:00:00'),
(4, 1, 1, 'Medicine Advanced', 'ME4', '2018-01-25 22:24:12', '0000-00-00 00:00:00'),
(5, 1, 1, 'Medicine Project', 'ME5', '2018-01-25 22:24:33', '0000-00-00 00:00:00'),
(6, 1, 2, 'Lab Project', 'LA5', '2018-01-25 22:25:42', '0000-00-00 00:00:00'),
(7, 1, 2, 'Lab Intro', 'LA1', '2018-01-25 22:25:58', '0000-00-00 00:00:00'),
(8, 1, 2, 'Lab Beginner', 'LA2', '2018-01-25 22:26:15', '0000-00-00 00:00:00'),
(9, 1, 2, 'Lab Intermidiate', 'LA3', '2018-01-25 22:26:32', '0000-00-00 00:00:00'),
(10, 1, 2, 'Lab Advanced', 'LA4', '2018-01-25 22:26:48', '0000-00-00 00:00:00'),
(11, 1, 3, 'Radiology Advanced', 'RA4', '2018-01-25 22:27:20', '0000-00-00 00:00:00'),
(12, 1, 3, 'Radiology Intro', 'RA1', '2018-01-25 22:27:35', '0000-00-00 00:00:00'),
(13, 1, 3, 'Radiology Intermidiate', 'RA3', '2018-01-25 22:27:48', '0000-00-00 00:00:00'),
(14, 1, 3, 'Radiology Beginner', 'RA2', '2018-01-25 22:29:21', '0000-00-00 00:00:00'),
(15, 1, 3, 'Radiology Project', 'RA5', '2018-01-25 22:29:37', '0000-00-00 00:00:00'),
(16, 2, 6, 'Into to Computer Engineering', 'CE1', '2018-01-26 20:24:13', '0000-00-00 00:00:00'),
(17, 2, 6, 'Beginner to Computer Engineering', 'CE2', '2018-01-26 20:24:35', '0000-00-00 00:00:00'),
(18, 2, 6, 'Intermediate to Computer Engineering', 'CE3', '2018-01-26 20:24:55', '0000-00-00 00:00:00'),
(19, 2, 6, 'Advanced Computer Engineering', 'CE4', '2018-01-26 20:25:12', '0000-00-00 00:00:00'),
(20, 2, 6, 'Computer Engineering Project', 'CE5', '2018-01-26 20:25:47', '0000-00-00 00:00:00'),
(21, 5, 13, 'Mathematics Intro', 'MA1', '2018-01-26 20:26:52', '0000-00-00 00:00:00'),
(22, 5, 12, 'Computer Science Intro', 'CO1', '2018-01-26 20:27:39', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `dept_id` int(11) NOT NULL,
  `fac_id` int(11) NOT NULL,
  `dept_name` varchar(100) NOT NULL,
  `dept_code` varchar(3) NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dept_id`, `fac_id`, `dept_name`, `dept_code`, `update_at`, `created_at`) VALUES
(1, 1, 'Medicine and Surgery', 'MES', '2018-01-25 22:04:55', '0000-00-00 00:00:00'),
(2, 1, 'Medicine Laboratory', 'LAB', '2018-01-25 22:05:36', '0000-00-00 00:00:00'),
(3, 1, 'Radiography', 'RAD', '2018-01-25 22:13:20', '0000-00-00 00:00:00'),
(4, 1, 'Nursing', 'NUR', '2018-01-25 22:13:39', '0000-00-00 00:00:00'),
(5, 1, 'Anatomy', 'ANA', '2018-01-25 22:14:00', '0000-00-00 00:00:00'),
(6, 2, 'Computer Enginering', 'COE', '2018-01-26 20:19:58', '0000-00-00 00:00:00'),
(7, 2, 'Chemical Enginering', 'CHE', '2018-01-26 20:20:21', '0000-00-00 00:00:00'),
(8, 3, 'Economics', 'ECO', '2018-01-26 20:20:43', '0000-00-00 00:00:00'),
(9, 3, 'Psychology', 'PSY', '2018-01-26 20:20:57', '0000-00-00 00:00:00'),
(10, 4, 'English', 'ENG', '2018-01-26 20:21:18', '0000-00-00 00:00:00'),
(11, 4, 'Law', 'LAW', '2018-01-26 20:21:41', '0000-00-00 00:00:00'),
(12, 5, 'Computer Science', 'COS', '2018-01-26 20:21:55', '0000-00-00 00:00:00'),
(13, 5, 'Mathematics', 'MAT', '2018-01-26 20:22:30', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `fac_id` int(11) NOT NULL,
  `fac_name` varchar(100) NOT NULL,
  `fac_code` varchar(3) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`fac_id`, `fac_name`, `fac_code`, `updated_at`, `created_at`) VALUES
(1, 'Medical Sciences', 'MED', '2018-01-25 21:56:11', '0000-00-00 00:00:00'),
(2, 'Engineering', 'ENG', '2018-01-25 21:56:39', '0000-00-00 00:00:00'),
(3, 'Social Sciences', 'SOS', '2018-01-25 21:57:07', '0000-00-00 00:00:00'),
(4, 'Art', 'ART', '2018-01-25 21:57:19', '0000-00-00 00:00:00'),
(5, 'Natural Sciences', 'NAS', '2018-01-25 21:58:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `registered_courses`
--

CREATE TABLE `registered_courses` (
  `reg_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fac_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` enum('approved','pending','disapproved','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registered_courses`
--

INSERT INTO `registered_courses` (`reg_id`, `user_id`, `fac_id`, `dept_id`, `course_id`, `updated_at`, `created_at`, `status`) VALUES
(1, 1, 1, 3, 13, '2018-01-26 20:49:32', '0000-00-00 00:00:00', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `fac_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `privillege` enum('admin','student','','') NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `fac_id`, `dept_id`, `user_name`, `password`, `privillege`, `updated_at`, `created_at`) VALUES
(1, 1, 3, 'dimma', 'dimma', 'student', '2018-01-26 20:46:19', '2018-01-26 20:46:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `fac_id` (`fac_id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`dept_id`),
  ADD KEY `fac_id` (`fac_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`fac_id`);

--
-- Indexes for table `registered_courses`
--
ALTER TABLE `registered_courses`
  ADD PRIMARY KEY (`reg_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `fac_id` (`fac_id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fac_id` (`fac_id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `fac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `registered_courses`
--
ALTER TABLE `registered_courses`
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`fac_id`) REFERENCES `faculty` (`fac_id`),
  ADD CONSTRAINT `courses_ibfk_2` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`dept_id`);

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`fac_id`) REFERENCES `faculty` (`fac_id`);

--
-- Constraints for table `registered_courses`
--
ALTER TABLE `registered_courses`
  ADD CONSTRAINT `registered_courses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `registered_courses_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  ADD CONSTRAINT `registered_courses_ibfk_3` FOREIGN KEY (`fac_id`) REFERENCES `faculty` (`fac_id`),
  ADD CONSTRAINT `registered_courses_ibfk_4` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`dept_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`fac_id`) REFERENCES `faculty` (`fac_id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`dept_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
