-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 15, 2020 at 10:52 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_infos`
--

CREATE TABLE `book_infos` (
  `BookNo` int(11) NOT NULL,
  `BookName` varchar(100) NOT NULL,
  `Author` varchar(100) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `book_infos`
--

INSERT INTO `book_infos` (`BookNo`, `BookName`, `Author`, `Description`) VALUES
(1, 'math', 'A-math', 'math '),
(2, 'Science', 'Science-Author', 'Science'),
(3, 'Engligh', 'Engligh-Author', 'Engligh'),
(4, 'Thai-language', 'Thai-language-Author', 'Thai language'),
(5, 'Information and communication technology (ICT)', 'Information and communication technology (ICT)-Author', 'Information and communication technology (ICT)'),
(6, 'reading', 'reading-Author', 'reading'),
(7, 'computer science', 'computer science-Author', 'computer science'),
(8, 'art', 'art-Author', 'art'),
(9, 'physics', 'physics-Author', 'physics'),
(10, 'chemistry', 'chemistry-Author', 'chemistry'),
(11, 'health and hygeine', 'health and hygeine-Author', 'health and hygeine');

-- --------------------------------------------------------

--
-- Table structure for table `borrows`
--

CREATE TABLE `borrows` (
  `BorrowID` int(11) NOT NULL,
  `BorrowDate` date NOT NULL,
  `BookNo` int(11) NOT NULL,
  `StudentCode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ReturnDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `borrows`
--

INSERT INTO `borrows` (`BorrowID`, `BorrowDate`, `BookNo`, `StudentCode`, `ReturnDate`) VALUES
(1, '2541-02-01', 1, '6140200001', '2512-02-12'),
(2, '2541-02-02', 2, '6140200002', NULL),
(3, '2541-02-03', 3, '6140200003', '2512-02-13'),
(4, '2541-02-03', 4, '6140200006', '2512-02-13'),
(5, '2541-02-04', 5, '6140200008', NULL),
(6, '2541-02-05', 6, '6140200010', NULL),
(7, '2541-02-06', 7, '6140200015', '2512-02-16'),
(8, '2541-02-07', 8, '6140200017', '2512-02-17'),
(9, '2541-02-07', 9, '6140200024', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentCode` char(10) NOT NULL,
  `StudentName` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `BirthDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentCode`, `StudentName`, `Department`, `BirthDate`) VALUES
('6140200001', 'Mr.A', 'วิศวกรรมคอมพิวเตอร์', '2542-01-01'),
('6140200002', 'Mr.B', 'วิศวกรรมคอมพิวเตอร์', '2542-01-02'),
('6140200003', 'Mr.C', 'วิศวกรรมคอมพิวเตอร์', '2542-01-03'),
('6140200004', 'Mr.D', 'วิศวกรรมคอมพิวเตอร์', '2542-01-04'),
('6140200005', 'Mr.E', 'วิศวกรรมคอมพิวเตอร์', '2542-01-05'),
('6140200006', 'Mr.F', 'วิศวกรรมคอมพิวเตอร์', '2542-01-06'),
('6140200007', 'Mr.G', 'วิศวกรรมคอมพิวเตอร์', '2542-01-07'),
('6140200008', 'Mr.H', 'วิศวกรรมคอมพิวเตอร์', '2542-01-08'),
('6140200009', 'Mr.I', 'วิศวกรรมคอมพิวเตอร์', '2542-01-09'),
('6140200010', 'Mr.J', 'วิศวกรรมคอมพิวเตอร์', '2542-01-10'),
('6140200011', 'Mr.K', 'วิศวกรรมคอมพิวเตอร์', '2542-01-11'),
('6140200012', 'Mr.L', 'วิศวกรรมคอมพิวเตอร์', '2542-01-12'),
('6140200013', 'Mr.M', 'วิศวกรรมคอมพิวเตอร์', '2542-01-13'),
('6140200014', 'Mr.N', 'วิศวกรรมคอมพิวเตอร์', '2542-01-14'),
('6140200015', 'Mr.O', 'วิศวกรรมคอมพิวเตอร์', '2542-01-15'),
('6140200016', 'Mr.P', 'วิศวกรรมไฟฟ้า', '2542-01-16'),
('6140200017', 'Mr.Q', 'วิศวกรรมไฟฟ้า', '2542-01-17'),
('6140200018', 'Mr.R', 'วิศวกรรมไฟฟ้า', '2542-01-18'),
('6140200019', 'Mr.S', 'วิศวกรรมไฟฟ้า', '2542-01-19'),
('6140200020', 'Mr.T', 'วิศวกรรมไฟฟ้า', '2542-01-20'),
('6140200021', 'Mr.U', 'วิศวกรรมไฟฟ้า', '2542-01-21'),
('6140200022', 'Mr.V', 'วิศวกรรมไฟฟ้า', '2542-01-22'),
('6140200023', 'Mr.W', 'วิศวกรรมไฟฟ้า', '2542-01-23'),
('6140200024', 'Mr.X', 'วิศวกรรมไฟฟ้า', '2542-01-24'),
('6140200025', 'Mr.Y', 'วิศวกรรมไฟฟ้า', '2542-01-25'),
('6140200026', 'Mr.Z', 'วิศวกรรมไฟฟ้า', '2542-01-26'),
('6140200100', 'นายรัตนศักดิ์ แสนรังค์', 'วิศวกรรมคอมพิวเตอร์', '2542-09-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_infos`
--
ALTER TABLE `book_infos`
  ADD PRIMARY KEY (`BookNo`);

--
-- Indexes for table `borrows`
--
ALTER TABLE `borrows`
  ADD PRIMARY KEY (`BorrowID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_infos`
--
ALTER TABLE `book_infos`
  MODIFY `BookNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21516;

--
-- AUTO_INCREMENT for table `borrows`
--
ALTER TABLE `borrows`
  MODIFY `BorrowID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
