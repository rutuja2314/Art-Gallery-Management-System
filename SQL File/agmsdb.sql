-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2024 at 07:48 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 987654331, 'tester1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-01-29 00:51:53');

-- --------------------------------------------------------

--
-- Table structure for table `tblartist`
--

CREATE TABLE `tblartist` (
  `ID` int(10) NOT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Education` mediumtext DEFAULT NULL,
  `Award` mediumtext DEFAULT NULL,
  `Profilepic` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblartist`
--

INSERT INTO `tblartist` (`ID`, `Name`, `MobileNumber`, `Email`, `Education`, `Award`, `Profilepic`, `CreationDate`) VALUES
(1, 'Mohan Das', 7987987987, 'mohan@gmail.com', 'Completed his fine arts from kg fine arts college.\r\nSpecialized in drawing and ceramic.', 'Winner of Hugo Boss Prize in 2019, MacArthur Fellowship\r\n', 'ecebbecf28c2692aeb021597fbddb174.jpg', '2024-01-21 13:31:25'),
(2, 'Dev', 3287987987, 'dev@gmail.com', 'Completed his fine arts from kg fine arts college.\r\nSpecialized in painting and ceramic.', 'Winner of Hugo Boss Prize in 2019, MacArthur Fellowship\r\n', 'ad04ad2d96ae326a9ca9de47d9e2fc74.jpg', '2024-01-21 13:31:25'),
(3, 'Kanha', 9687987987, 'kanha@gmail.com', 'Completed his fine arts from kg fine arts college.\r\nSpecialized in painting and ceramic.', 'Winner of Hugo Boss Prize in 2019, MacArthur Fellowship\r\n', 'ad04ad2d96ae326a9ca9de47d9e2fc74.jpg', '2024-01-21 13:31:25'),
(4, 'Abir Rajwansh', 5687987987, 'abir@gmail.com', 'Completed his fine arts from klijfine arts college.\r\nSpecialized in painting and ceramic.', 'Winner of Hugo Boss Prize in 2019, MacArthur Fellowship\r\n', 'ad04ad2d96ae326a9ca9de47d9e2fc74.jpg', '2024-01-21 13:31:25'),
(5, 'Krisna Dutt', 9187987987, 'krish@gmail.com', 'Completed his fine arts from kg fine arts college.\r\nSpecialized in painting and ceramic.', 'Winner of Hugo Boss Prize in 2019, MacArthur Fellowship\r\n', 'ad04ad2d96ae326a9ca9de47d9e2fc74.jpg', '2024-01-21 13:31:25'),
(6, 'Kajol Mannati', 8187987987, 'kajol@gmail.com', 'Completed his fine arts from kg fine arts college.\r\nSpecialized in painting and ceramic.', 'Winner of Hugo Boss Prize in 2019, MacArthur Fellowship\r\n', 'ad04ad2d96ae326a9ca9de47d9e2fc74.jpg', '2024-01-21 13:31:25'),
(7, 'Meera Singh', 2987987987, 'meera@gmail.com', 'Fine Arts in Painting from College of Art, New Delhi in 2012,\r\nSpecialized in printmaking and ceramic.', 'award-winning artist, and has received a scholarship from the Ministry of Culture, Government of India in 2014 as well as the Jean-Claude Reynal Scholarship (France) in 2019.\r\n', 'ad04ad2d96ae326a9ca9de47d9e2fc74.jpg', '2024-01-21 13:31:25'),
(8, 'Narayan Das', 9987987987, 'narayan@gmail.com', 'Completed his fine arts from hjai fine arts college.\r\nSpecialized in painting and ceramic.', 'Winner of Young Artist Award in 2009, MacArthur Fellowship\r\n', 'ad04ad2d96ae326a9ca9de47d9e2fc74.jpg', '2024-01-21 13:31:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblartmedium`
--

CREATE TABLE `tblartmedium` (
  `ID` int(5) NOT NULL,
  `ArtMedium` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblartmedium`
--

INSERT INTO `tblartmedium` (`ID`, `ArtMedium`, `CreationDate`) VALUES
(1, 'Wood and Bronze', '2024-01-22 04:57:04'),
(2, 'Acrylic on canvas', '2024-01-22 04:57:34'),
(3, 'Resin', '2024-01-22 04:58:00'),
(4, 'Mixed Media', '2024-01-22 06:09:12'),
(5, 'Bronze', '2024-01-22 06:09:35'),
(6, 'Fibre', '2024-01-22 06:09:53'),
(7, 'Steel', '2024-01-22 06:10:16'),
(8, 'Metal', '2024-01-22 06:10:35'),
(9, 'Oil on Canvas', '2024-01-22 06:11:31'),
(10, 'Oil on Linen', '2024-01-22 06:12:12'),
(11, 'Acrylics on paper', '2024-01-22 06:13:11'),
(12, 'Hand-painted on particle wood/MDF', '2024-01-22 06:14:03');

-- --------------------------------------------------------

--
-- Table structure for table `tblartproduct`
--

CREATE TABLE `tblartproduct` (
  `ID` int(5) NOT NULL,
  `Title` varchar(250) DEFAULT NULL,
  `Dimension` varchar(250) DEFAULT NULL,
  `Orientation` varchar(100) DEFAULT NULL,
  `Size` varchar(100) DEFAULT NULL,
  `Artist` int(5) DEFAULT NULL,
  `ArtType` int(5) DEFAULT NULL,
  `ArtMedium` int(5) DEFAULT NULL,
  `SellingPricing` decimal(10,0) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `Image` varchar(250) DEFAULT NULL,
  `Image1` varchar(250) DEFAULT NULL,
  `RefNum` int(10) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblartproduct`
--

INSERT INTO `tblartproduct` (`ID`, `Title`, `Dimension`, `Orientation`, `Size`, `Artist`, `ArtType`, `ArtMedium`, `SellingPricing`, `Description`, `Image`, `Image1`, `RefNum`, `CreationDate`) VALUES
(2, 'Radhe Krishna Painting', '56x56', 'Landscape', 'Medium', 1, 4, 9, '200', 'It is a painting of Radha Krishna.\r\nIt is a painting of Radha Krishna.\r\nIt is a painting of Radha Krishna.It is a painting of Radha Krishna.\r\nIt is a painting of Radha Krishna.It is a painting of Radha Krishna.It is a painting of Radha Krishna.', 'c565ad988a4c6fc0a9f429af43c47cce1671771454.jpg', '48424793dc9ea732f6118d4ba4326509.jpg', 586429003, '2024-01-23 04:57:34'),
(3, 'Shiv Tandav Painting', '100X50 inches', 'Potrait', 'Large', 6, 4, 10, '350', 'It is a painting of shiv tandav.\r\nIt is a painting of shiv tandav.\r\nIt is a painting of shiv tandav.It is a painting of shiv tandav.It is a painting of shiv tandav.It is a painting of shiv tandav.It is a painting of shiv tandav.\r\nIt is a painting of shiv tandav.It is a painting of shiv tandav.', 'cd235e034297cda7b6f935dbd4881a2f1671771582.jpg', 'cd235e034297cda7b6f935dbd4881a2f1671771582.jpg', 686429002, '2024-01-23 04:59:42'),
(4, '', '', '', '', 0, 0, 0, '0', '', '508652faabdd333b34a0ce4a1dd443411671771753.jpg', '', 686429003, '2024-01-23 05:02:33'),
(5, 'HKjhkj', '100x200', 'Landscape', 'Large', 7, 3, 9, '200', 'gjhgj', '7d108db512f6a6a929cd0d0ad3b593e81671772410.jpg', '', 586429004, '2024-01-23 05:13:30'),
(7, 'African Elephant Sculpture', '1600x1600', 'Potrait', 'Large', 4, 10, 1, '0', 'African Elephant Sculpture made from Bronze', 'f15a3ed45562f9741c6523ed4135291f1712077872.jpg', 'th (3).jpg', 657963149, '2024-01-23 17:11:12'),
(8, 'Human Sculpture', '1620x2430', 'Potrait', 'Medium', 5, 10, 1, '0', 'Human Sculpture made from Wood', 'aa6d372aeb8ffcc4684e4f0d155da1171712077936.jpg', 'th (2).jpg', 832653647, '2024-04-02 17:12:16'),
(9, 'Viridescent', '1620x2430', 'Landscape', 'Large', 6, 11, 6, '0', 'A Serigraph Painting', 'e6cf8a999799e12f22b838d240a9309c1712078280.jpg', 'im212080.jpg', 181180391, '2024-04-02 17:18:00'),
(10, 'Cherry', '1620x2430', 'Landscape', 'Large', 7, 11, 2, '0', 'A Serigraph Painting made with Acrylic', '59001834384a8a1d761c6127bf4918cb1712078399.jpg', 'im297660.jpg', 932134098, '2024-04-02 17:19:59'),
(11, 'Tiger Print', '1600x1600', 'Potrait', 'Medium', 1, 12, 9, '0', 'A Tiger Print made from acrylic on canvas', 'd1fa6f0f066ad00c427fb03cb012e6ae1712078550.jpg', 'tiger-popart.jpg', 409258113, '2024-04-02 17:22:30'),
(12, 'Print Fish', '2001x1417', 'Landscape', 'Large', 3, 12, 4, '0', 'A Fish Print which is Linecut print art', 'e02a95f77576315ffe5547c333739efb1712078662.png', '5b7e1949168a89b3da9a3fe098ac4e0e.png', 319870388, '2024-04-02 17:24:22'),
(13, 'Eventide Sea and Waves', '2803x2029', 'Landscape', 'Large', 4, 13, 9, '0', 'Eventide Sea and Waves Oil Painting', '1f68c55d54297df76b9f27d9ec13c5571712078840.jpg', 'Fine-Art-Eventide-Sea-and-Waves-Original-Oil-Painting-on-Canvas-by-artist-Darko-Topalski1.jpg', 434400975, '2024-01-24 17:27:20');

-- --------------------------------------------------------

--
-- Table structure for table `tblarttype`
--

CREATE TABLE `tblarttype` (
  `ID` int(5) NOT NULL,
  `ArtType` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblarttype`
--

INSERT INTO `tblarttype` (`ID`, `ArtType`, `CreationDate`) VALUES
(10, 'Sculptures', '2024-01-24 17:00:28'),
(11, 'Serigraphs', '2024-01-24 17:00:44'),
(12, 'Prints', '2024-01-24 17:00:55'),
(13, 'Painting', '2024-01-24 17:01:13'),
(14, 'Street Art', '2024-01-24 17:01:28'),
(15, 'Visual Art', '2024-01-24 17:01:44'),
(16, 'Conceptual Art', '2024-01-24 17:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `ID` int(10) NOT NULL,
  `EnquiryNumber` varchar(10) NOT NULL,
  `Artpdid` int(9) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Message` varchar(250) DEFAULT NULL,
  `EnquiryDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` varchar(10) DEFAULT NULL,
  `AdminRemark` varchar(200) NOT NULL,
  `AdminRemarkdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`ID`, `EnquiryNumber`, `Artpdid`, `FullName`, `Email`, `MobileNumber`, `Message`, `EnquiryDate`, `Status`, `AdminRemark`, `AdminRemarkdate`) VALUES
(1, '230873611', 4, 'Rutuja Sawant', 'rss12@gmail.com', 1234567890, 'This is for testing Purpose.', '2024-01-17 18:16:47', 'Answer', 'test purpose', '2024-01-25 05:47:14'),
(2, '227883179', 5, 'Tanashree Gund', 'tanu23@gmail.com', 1234434321, 'I want this painting', '2024-01-18 18:42:42', 'Answer', 'testing purpose', '2024-01-25 05:47:36'),
(4, '173449616', 3, 'Swati Rangate', 'swati34@gmail.com', 7412885963, 'when will be more pictures coming?', '2024-01-25 05:54:40', NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '<span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">An art gallery is&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">an exhibition space to display and sell artworks</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">. As a result, the art gallery is a commercial enterprise working with a portfolio of artists. The gallery acts as the dealer representing, supporting, and distributing the artworks by the artists in question.</span><br>', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', 'Dr.D.Y.PatilInstituteOfTechnology,Pimpri', 'info@gmail.com', 1234567890, NULL, '10:30 am to 7:30 pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblartist`
--
ALTER TABLE `tblartist`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblartmedium`
--
ALTER TABLE `tblartmedium`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblartproduct`
--
ALTER TABLE `tblartproduct`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblarttype`
--
ALTER TABLE `tblarttype`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CardId` (`Artpdid`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblartist`
--
ALTER TABLE `tblartist`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblartmedium`
--
ALTER TABLE `tblartmedium`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblartproduct`
--
ALTER TABLE `tblartproduct`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblarttype`
--
ALTER TABLE `tblarttype`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
