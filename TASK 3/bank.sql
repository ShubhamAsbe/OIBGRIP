-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2022 at 04:11 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `ID` int(10) NOT NULL,
  `Acc` varchar(25) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `Pin` varchar(25) NOT NULL,
  `Acc_type` varchar(25) NOT NULL,
  `Nationality` varchar(25) NOT NULL,
  `Caste` varchar(25) NOT NULL,
  `MICR_No` varchar(25) NOT NULL,
  `Gender` varchar(25) NOT NULL,
  `Mobile` varchar(12) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Sec_Q` varchar(100) NOT NULL,
  `Sec_A` varchar(100) NOT NULL,
  `Balance` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ID`, `Acc`, `Name`, `DOB`, `Pin`, `Acc_type`, `Nationality`, `Caste`, `MICR_No`, `Gender`, `Mobile`, `Address`, `Sec_Q`, `Sec_A`, `Balance`) VALUES
(3, '3346', 'sdcvbn', 'Thu Jul 02  2020', '882', 'Current', 'American', 'wsc', '988', 'Male', '9876543210', 'Sangiv', 'What is your best memory?', 'wsd', '100000'),
(4, '3597', 'shubham asbe', 'Mon Feb 11 2002', '76', 'Saving', 'Indian	', 'Hindu', '851', 'Male', '8698816985', 'pimple nilakh', 'What is your nice name?', 'SSA', '710000'),
(5, '1466', 'SSA', 'Sun Feb 29 00:00:00 IST 2004', '23', 'Saving', 'Indian	', 'Hindu', '232', 'Male', '8698816985', 'pimple nilkah', 'What is your nice name?', 'Shub', '510000'),
(6, '7967', 'siddhant', 'Tue Sep 30 22:16:59 IST 1997', '437', 'Select', 'Indian	', 'Hindu', '238', 'Male', '9768540123', 'pimple nilkah', 'What is your nice name?', 'sid', '300000'),
(7, '9701', 'Faijan Momin', 'Sat Jul 06 13:16:30 IST 2002', '123', 'Select', 'Indian	', 'Muslim', '722', 'Male', '8765432190', 'junnar', 'What is your nice name?', 'DFM', '200000'),
(8, '9364', 'Sahil Shinde', 'Mon Aug 31 12:41:21 IST 2020', '123', 'Saving', 'Indian	', 'Hindu', '146', 'Male', '8901234567', 'balawadi', 'What is your nice name?', 'ST', '400000'),
(9, '2453', 'Shubham', 'Mon Feb 11 15:03:43 IST 2002', '123', 'Saving', 'Indian	', 'Hindu', '292', 'Male', '8698816985', 'pune', 'What is your nice name?', 'SSA', '1000'),
(10, '6914', 'abc', 'Wed Aug 12 19:00:15 IST 2020', '67', 'Saving', 'Indian	', 'hindu', '882', 'Male', '1234567890', 'sangvi', 'What is your nice name?', 'abc', '100000'),
(11, '4850', 'sumit', 'Fri May 31 21:19:45 IST 2002', '354', 'Saving', 'Indian	', 'hindu', '184', 'Male', '6789054321', 'sangvi', 'What is your nice name?', 'meow', '400000'),
(12, '934', 'Shubham sunil asbe', 'Thu Feb 20 00:00:00 IST 2003', '123', 'Saving', 'Indian	', 'Hindu', '508', 'Male', '1234567890', 'Baner', 'What is your nice name?', 'SSA', '500');

-- --------------------------------------------------------

--
-- Table structure for table `balances`
--

CREATE TABLE `balances` (
  `ID` int(10) NOT NULL,
  `Date` varchar(50) NOT NULL,
  `Acc_no` varchar(25) NOT NULL,
  `Acc_no_transfer` varchar(25) NOT NULL,
  `D_T_W` varchar(25) NOT NULL,
  `Bal_before` varchar(25) NOT NULL,
  `Amount` varchar(25) NOT NULL,
  `Bal_after` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `balances`
--

INSERT INTO `balances` (`ID`, `Date`, `Acc_no`, `Acc_no_transfer`, `D_T_W`, `Bal_before`, `Amount`, `Bal_after`) VALUES
(2, '27-07-2020', '1466', 'NULL', 'Deposit', '570000', '10000', '580000'),
(3, '27-07-2020', '1466', '9701', 'Transfer', '580000', '100000', '480000'),
(4, '27-07-2020', '7967', 'NULL', 'Deposit', '200000', '100000', '300000'),
(5, '27-07-2020', '7967', '1466', 'Transfer', '300000', '50000', '250000'),
(6, '27-07-2020', '3597', 'NULL', 'Withdrawl', '300000', '100000', '200000'),
(7, '27-07-2020', '3597', 'NULL', 'Deposit', '200000', '200000', '400000'),
(8, '27-07-2020', '3346', 'NULL', 'Deposit', '123', '100000', '100123'),
(9, '27-07-2020', '3346', 'NULL', 'Withdrawl', '100123', '123', '100000'),
(10, '27-07-2020', '1466', 'NULL', 'Deposit', '530000', '100000', '630000'),
(11, '27-07-2020', '1466', 'NULL', 'Withdrawl', '630000', '30000', '600000'),
(12, '27-07-2020', '7967', 'NULL', 'Deposit', '250000', '50000', '300000'),
(13, '27-07-2020', '1466', 'NULL', 'Deposit', '600000', '100000', '700000'),
(14, '27-07-2020', '1466', 'NULL', 'Withdrawl', '700000', '100000', '600000'),
(15, '27-07-2020', '9701', 'NULL', 'Deposit', '300000', '100000', '400000'),
(16, '28-07-2020', '7967', '1466', 'Transfer', '300000', '100000', '200000'),
(17, '28-07-2020', '7967', 'NULL', 'Deposit', '200000', '10000', '210000'),
(18, '28-07-2020', '7967', '3597', 'Transfer', '210000', '10000', '200000'),
(19, '28-07-2020', '7967', 'NULL', 'Withdrawl', '210000', '10000', '200000'),
(20, '28-07-2020', '1466', '7967', 'Transfer', '700000', '100000', '600000'),
(21, '28-07-2020', '9364', 'NULL', 'Deposit', '500000', '10000', '510000'),
(22, '28-07-2020', '9364', '1466', 'Transfer', '510000', '60000', '450000'),
(23, '28-07-2020', '9364', 'NULL', 'Withdrawl', '450000', '50000', '400000'),
(24, '16-08-2020', '2453', 'NULL', 'Deposit', '1000', '1000', '2000'),
(25, '16-08-2020', '2453', '1466', 'Transfer', '2000', '1000', '1000'),
(26, '17-08-2020', '3597', 'NULL', 'Withdrawl', '410000', '10000', '400000'),
(27, '17-08-2020', '3597', 'NULL', 'Deposit', '400000', '10000', '410000'),
(28, '17-08-2020', '3597', '1466', 'Transfer', '410000', '10000', '400000'),
(29, '17-08-2020', '1466', 'NULL', 'Withdrawl', '671000', '71000', '600000'),
(30, '23-08-2020', '1466', 'NULL', 'Deposit', '600000', '10000', '610000'),
(31, '23-08-2020', '1466', '3597', 'Transfer', '610000', '100000', '510000'),
(32, '23-08-2020', '1466', 'NULL', 'Deposit', '510000', '10000', '520000'),
(33, '23-08-2020', '1466', 'NULL', 'Withdrawl', '520000', '20000', '500000'),
(34, '23-08-2020', '4850', '1466', 'Transfer', '500000', '100000', '400000'),
(35, '26-10-2020', '934', 'NULL', 'Deposit', '10000', '1000', '11000'),
(36, '26-10-2020', '934', '9701', 'Transfer', '11000', '10000', '1000'),
(37, '26-10-2020', '934', 'NULL', 'Withdrawl', '1000', '500', '500'),
(38, '13-10-2021', '1466', 'NULL', 'Withdrawl', '600000', '100000', '500000'),
(39, '14-10-2021', '9701', 'NULL', 'Deposit', '410000', '90000', '500000'),
(40, '14-10-2021', '9701', '3597', 'Transfer', '500000', '200000', '300000'),
(41, '14-10-2021', '9701', 'NULL', 'Withdrawl', '300000', '100000', '200000'),
(42, '19-01-2022', '1466', 'NULL', 'Deposit', '500000', '10000', '510000'),
(43, '19-01-2022', '1466', '3597', 'Transfer', '510000', '100000', '410000'),
(44, '20-09-2022', '3597', 'NULL', 'Deposit', '800000', '10000', '810000'),
(45, '20-09-2022', '3597', '1466', 'Transfer', '810000', '100000', '710000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `balances`
--
ALTER TABLE `balances`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `balances`
--
ALTER TABLE `balances`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
