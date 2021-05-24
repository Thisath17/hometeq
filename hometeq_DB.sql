-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2021 at 04:49 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `severside_tute`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderNo` int(4) NOT NULL,
  `userId` int(4) NOT NULL,
  `orderDateTime` datetime NOT NULL,
  `orderTotal` decimal(8,0) NOT NULL DEFAULT 0,
  `orderStatus` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderNo`, `userId`, `orderDateTime`, `orderTotal`, `orderStatus`) VALUES
(1, 4, '2021-05-23 17:06:47', '0', 'Placed'),
(2, 4, '2021-05-23 17:06:51', '0', 'Placed'),
(3, 4, '2021-05-23 17:14:50', '0', 'Placed'),
(4, 4, '2021-05-23 17:20:45', '1966490', 'Placed'),
(5, 4, '2021-05-23 17:40:52', '1966490', 'Placed'),
(6, 4, '2021-05-23 17:40:53', '1966490', 'Placed'),
(7, 4, '2021-05-23 17:41:43', '359998', 'Placed'),
(8, 4, '2021-05-23 17:42:46', '2949735', 'Placed');

-- --------------------------------------------------------

--
-- Table structure for table `order_line`
--

CREATE TABLE `order_line` (
  `oderLineId` int(4) NOT NULL,
  `orderNo` int(4) NOT NULL,
  `prodId` int(4) NOT NULL,
  `quantityOrdered` int(4) NOT NULL,
  `subTotal` decimal(8,0) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_line`
--

INSERT INTO `order_line` (`oderLineId`, `orderNo`, `prodId`, `quantityOrdered`, `subTotal`) VALUES
(1, 4, 2, 10, '1966490'),
(2, 5, 2, 10, '1966490'),
(3, 6, 2, 10, '1966490'),
(4, 7, 4, 2, '359998'),
(5, 8, 2, 15, '2949735');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prodid` int(4) NOT NULL,
  `prodName` varchar(30) COLLATE utf8_bin NOT NULL,
  `prodPicNameSmall` varchar(100) COLLATE utf8_bin NOT NULL,
  `prodNameLarge` varchar(100) COLLATE utf8_bin NOT NULL,
  `prodDescripShort` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `prodDescripLong` varchar(3000) COLLATE utf8_bin DEFAULT NULL,
  `prodPrice` decimal(6,0) NOT NULL,
  `prodQuality` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prodid`, `prodName`, `prodPicNameSmall`, `prodNameLarge`, `prodDescripShort`, `prodDescripLong`, `prodPrice`, `prodQuality`) VALUES
(1, 'DELL5406-256I3-DUNE', 'lapsmall1.jpg', 'lapbig1.jpg', 'Dell Inspiron 5406 2in1 - 11th Gen, i3 Dune, 4GB RAM, 256 SSD, UHD graphics ', 'Type	Laptops\r\nSuitability	For University Students/For Professionals\r\nModel	Dell Inspiron 5406 i3 Dune\r\nGeneration	11th Gen\r\nProcessor	11th Generation Intel (R) Core (TM) i3-1115G4 Processor (6MB Cache, up to 4.1 GHz)\r\nIntegrated GPU	Intel(R) UHD Graphics with shared graphics memory\r\nStorage	256GB M.2 PCIe NVMe Solid State Drive\r\nCard Reader	1 SD card reader\r\nOptical Drive	No DVD RW\r\nDisplay - Panel Size	14.0-inch\r\nDisplay - Resolution	FHD (1920 x 1080)', '138599', 30),
(2, 'DELL-5502-512-I7-BLU', 'lapsmall2.jpg', 'lapbig2.jpg', 'Dell Inspiron 5502 - 11th Gen, i7, Blue, 8GB RAM, 512 SSD, MX330 VGA', 'Type	Laptops\r\nSuitability	For University Students/For Professionals\r\nModel	Dell Inspiron 5502 i7', '196649', 40),
(3, 'AS-I3-X515-10GEN-SIL', 'lapsmall3.jpg', 'lapbig3.jpg', 'ASUS Laptop X515 Silver, i3, Up To 3.4 GHz, 4GB RAM, 1 TB HDD', 'Name	ASUS Laptop X515 Silver, i3, Up To 3.4 GHz, 4GB RAM, 1 TB HDD\r\nType	Laptops\r\nSuitability	For University Students/For Professionals\r\nModel	ASUS I3 Laptop', '89999', 70),
(4, 'AS-I7-X513-256-11GEN-BLU', 'lapsmall4.jpg', 'lapbig4.jpg', 'ASUS VivoBook X513EP-BQ119T, i7, Up To 4.7 GHz, 8GB RAM, 1TB HDD, 256 SSD, 11th Gen', 'Type	Laptops\r\nSuitability	For School Students/For University Students/For Professionals\r\nModel	ASUS VIVO BOOK (X513EP-BQ119T)\r\nGeneration	11th Gen\r\nProcessor	Intel® Core™ i7-1165', '179999', 60);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(4) NOT NULL,
  `userType` varchar(1) NOT NULL,
  `userFName` varchar(50) NOT NULL,
  `userSName` varchar(50) NOT NULL,
  `userAddress` varchar(50) NOT NULL,
  `userPostCode` varchar(50) NOT NULL,
  `userTellNo` varchar(50) NOT NULL,
  `userEmail` varchar(50) NOT NULL,
  `userPassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userType`, `userFName`, `userSName`, `userAddress`, `userPostCode`, `userTellNo`, `userEmail`, `userPassword`) VALUES
(4, '', 'Thisath', 'Desilva', 'Palutrha, hewagama, wellawaya', '92300', '0751456287', 'john@g.com', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderNo`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `order_line`
--
ALTER TABLE `order_line`
  ADD PRIMARY KEY (`oderLineId`),
  ADD KEY `INDEX1` (`orderNo`),
  ADD KEY `INDEX2` (`prodId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prodid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderNo` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_line`
--
ALTER TABLE `order_line`
  MODIFY `oderLineId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prodid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
