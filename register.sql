-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2020 at 08:47 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizdb1`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `user_id` int(11) NOT NULL,
  `user` varchar(30) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `gender` char(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phonenumber` int(12) NOT NULL,
  `dob` date NOT NULL,
  `score` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`user_id`, `user`, `pass`, `gender`, `email`, `phonenumber`, `dob`, `score`) VALUES
(1, 'akshat', 'achu', 'M', 'achinttya2019aa@vitstudent.ac.in', 123456789, '0000-00-00', 5),
(2, 'narendra modi', 'modi', 'M', 'narendramodi@gmail.com', 456123789, '0000-00-00', 0),
(3, 'rahul', 'rahul', 'M', 'rahul@gmail.com', 2147483647, '0000-00-00', 0),
(4, 'achintya', 'achu', 'M', 'achintya@gmail.cm', 789546123, '0000-00-00', 0),
(5, 'rocky bhai', 'rocky', 'M', 'rockybhai@gmail.com', 80613076, '0000-00-00', 0),
(6, 'akshat1234', 'akshat', 'M', 'akshatgpt1@gmail.com', 986547899, '0000-00-00', 0),
(7, 'akshatgupta', 'akshat', 'M', 'akshatgpt136@gmail.com', 789562330, '0000-00-00', 0),
(8, 'dsadas', '45', 'M', 'dsadas@das.com', 4564655, '0000-00-00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
