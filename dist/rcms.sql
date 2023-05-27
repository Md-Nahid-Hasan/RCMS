-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2022 at 04:39 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rcms`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mobileNumber` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `total` varchar(200) DEFAULT NULL,
  `createdBy` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `name`, `mobileNumber`, `email`, `date`, `total`, `createdBy`) VALUES
(1, 'Md Nahid Hasan', '01620753043', 'nahid@gmail.com', '09-03-2022', '1320', 'admin@gmail.com'),
(2, 'Md Jahid Hasan', '01676810049', 'jahid@gmail.com', '09-03-2022', '1540', 'admin@gmail.com'),
(3, 'Md Sabbir Hosen', '01836568891', 'sabbir@gmail.com', '09-03-2022', '2170', 'admin@gmail.com'),
(4, 'Jannatul Mawa', '01676810049', 'jannat@gmail.com', '09-03-2022', '3570', 'admin@gmail.com'),
(5, 'Sharif', '01620753043', 'sharif@gmail.com', '09-03-2022', '1640', 'ashiq@gmail.com'),
(6, 'Rahnuma', '01961817049', 'rahnuma@gmail.com', '10-03-2022', '570', 'admin@gmail.com'),
(7, 'Samsul Islam', '01822661517', 'samsu@gmail.com', '10-03-2022', '570', 'admin@gmail.com'),
(8, 'Mehrab Hossain', '01913363473', 'mehrab@gmail.com', '12-03-2022', '340', 'admin@gmail.com'),
(9, 'lina', '01234567891', 'lina@gmail.com', '12-03-2022', '380', 'meherabh@gmail.com'),
(10, 'Fatema ', '01620753043', 'fatema@gmail.com', '18-03-2022', '780', 'nahid@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Coffee'),
(10, 'Soup'),
(11, 'Tea'),
(12, 'Pizza'),
(13, 'Burger'),
(14, 'Sandwich');

-- --------------------------------------------------------

--
-- Table structure for table `newproduct`
--

CREATE TABLE `newproduct` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newproduct`
--

INSERT INTO `newproduct` (`id`, `name`, `category`, `price`) VALUES
(1, 'Cold Coffee', 'Coffee', '160'),
(2, 'Thai Soup', 'Soup', '250'),
(4, 'Chinese Soup', 'Soup', '280'),
(5, 'Black Coffe', 'Coffee', '180'),
(6, 'Hot Coffe', 'Coffee', '195'),
(7, 'Italian Soup', 'Soup', '170'),
(8, 'Lemon Tea', 'Tea', '60'),
(9, 'Green Tea', 'Tea', '70'),
(10, 'Milk Tea', 'Tea', '30'),
(11, 'Black Tea', 'Tea', '40'),
(12, 'Pizza Roma', 'Pizza', '250'),
(13, 'Cheez', 'Pizza', '200'),
(14, 'Bella Italia', 'Pizza', '220'),
(15, 'Potato Corn Burger', 'Burger', '180'),
(16, 'Chicken Burger', 'Burger', '160'),
(17, 'Stuffed Bean Burger', 'Burger', '200'),
(18, 'Clubhouse Sandwich', 'Sandwich', '135'),
(19, 'Beef Sandwich', 'Sandwich', '150'),
(20, 'Chicken Sandwich', 'Sandwich', '120');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobileNumber` varchar(11) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `securityQuestion` varchar(150) DEFAULT NULL,
  `answer` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `mobileNumber`, `address`, `password`, `securityQuestion`, `answer`, `status`) VALUES
(1, 'nahid ', 'nahid@gmail.com', '01620753043', 'mirpur', '0123', 'What is your wife name?', 'Rahnuma Rah', 'true'),
(5, 'admin', 'admin@gmail.com', '01620753042', 'Mirpur-1216', 'admin', 'What is yout favorite color?', 'White', 'true'),
(6, 'robin', 'robin@gmail.com', '01620753046', 'rangpur', '0123', 'Favorite soports?', 'cricket', 'false'),
(7, 'Robin Ahmad', 'r@gmail.com', '01681900121', 'Rangpur', '123', 'Favorite Game?', 'Liton', 'true'),
(8, 'Ashiqul Islam', 'ashiq@gmail.com', '01622631383', 'Noakhali', '123123', 'What is favorite player?', 'Mahmudullah', 'true'),
(9, 'Meherab Hossain', 'meherabh@gmail.com', '01756408164', 'Mirpur, Dhaka', 'mhk@1234', 'what is my name?', 'my name is meherab', 'true');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newproduct`
--
ALTER TABLE `newproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `newproduct`
--
ALTER TABLE `newproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
