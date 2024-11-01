-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2024 at 03:10 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2024-10-10 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(1, 1, 'sk@gmail.com', '2024-07-11', '2024-07-18', 'I want this package.', '2024-01-16 06:38:36', 2, 'u', '2024-08-30 05:18:29'),
(2, 2, 'pk@gmail.com', '2024-07-10', '2024-07-13', 'There is some discount', '2024-01-17 06:43:25', 1, NULL, '2024-08-31 01:21:17'),
(3, 4, 'abir@gmail.com', '2024-07-11', '2024-07-15', 'When I get conformation', '2024-01-17 06:44:39', 2, 'a', '2024-08-30 05:18:52'),
(4, 2, 'nk@gmail.com', '2024-07-02', '2024-07-08', 'NA', '2024-08-31 02:03:27', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'Salman khan', 'salman@gmail.com', '01403314487', 'Enquiry for panam city Trip', 'Kindly provide me more offer.', '2024-07-16 06:30:32', 1),
(2, 'Shakhrukh khan', 'shakhrukh@gmail.com', '01674258631', 'Enquiry', 'Any Offer for Bowel Trip', '2024-07-18 06:31:38', NULL),
(3, 'Amir khan', 'amisr@gmail.com', '01646689721', 'Any offer for North', 'Any Offer for Comilla Bird Trip', '2024-07-19 06:32:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(6, 'Sk@gmail.com', 'Booking Issues', 'I am not able to book package', '2024-08-20 06:36:03', 'Ok, We will fix the issue asap', '2024-09-30 05:20:03'),
(7, 'Lk@gmail.com', 'Refund', 'I want my refund', '2024-08-25 06:56:29', NULL, '2024-09-30 05:20:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '										<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font><br><br></strong>Welcome to Google! Bangladesh. 1Google Web Services BD Private Limited Google\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <a href=\"http://in.docs.google.com/info/terms/\">http://in.docs.google.com/info/terms/</a>. In addition, when using particular Google services or third party services, you and Google shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Google also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n<p align=\"justify\"><font size=\"2\">Welcome to Google! Bangladesh. Google Web Services India Private Limited Google\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </font><a href=\"http://in.docs.google.com/info/terms/\"><font size=\"2\">http://in.docs.google.com/info/terms/</font></a><font size=\"2\">. In addition, when using particular Google services or third party services, you and Google shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Google also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n<p align=\"justify\"><font size=\"2\">Welcome to Google! Bangladesh. Bangladesh Web Services Bangladesh Private Limited Google\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </font><a href=\"http://in.docs.google.com/info/terms/\"><font size=\"2\">http://in.docs.google.com/info/terms/</font></a><font size=\"2\">. In addition, when using particular Yahoo services or third party services, you and Google shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n										'),
(2, 'privacy', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At Pip Pip Go Travel, we prioritize your privacy and are committed to protecting your personal information. We collect details such as your contact information and booking preferences to enhance your travel experience and tailor our services to your needs. Your information is never shared with third parties without your consent, except when necessary to fulfill your travel arrangements. We use industry-standard security measures to safeguard your data, and you have the right to access, modify, or delete your information at any time. Our privacy policy may be updated occasionally, and we will inform you of any changes.</span>\r\n										'),
(3, 'aboutus', '										<div><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; text-align: justify; font-weight: bold;\">Welcome to Pip Pip Go Travel!!!</span></div><span style=\"font-family: &quot;courier new&quot;;\"><span style=\"color: rgb(0, 0, 0); font-size: 15px; text-align: justify;\">Since then, our courteous and committed team members have always ensured a pleasant and enjoyable tour for the clients. This arduous effort has enabled pip pip go to be recognized as a dependable Travel Solutions provider with one office Uttara.</span><span style=\"color: rgb(80, 80, 80); font-size: 13px;\">&nbsp;We have got packages to suit the discerning traveler\'s budget and savor. Book your dream vacation online. Supported quality and proposals of our travel consultants, we have a tendency to welcome you to decide on from holidays packages and customize them according to your plan.</span></span>\r\n										'),
(11, 'contact', '																				<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address-Uttara Azompur,Kachabazar,Muktizodda road,Nurjahan Towr,5C</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltourpackages`
--
INSERT INTO `tbltourpackages` 
(`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) 
VALUES
(1, 'Bawal Park Gazipur Day Tour 2024 (Group Package)', 'Day Tour', 'Gazipur, Bangladesh', 1200, 'Round trip transportation from Dhaka to Bawal Park - Entry fees - Guided tour of the park - Light refreshments - Scenic walk through the forest trails and exploration of Bawal National Park - Photography opportunities and relaxation time', 'This day tour to Bawal Park in Gazipur offers a scenic escape from the city. The trip starts in Dhaka, with a comfortable ride to Gazipur. Explore the park’s beautiful forest trails, take time to capture stunning photos, and unwind with nature. You’ll have a guided tour through the main attractions of Bawal Park, including the lake and a short hike through the lush greenery.', 'bhawal_national_park.jpg', '2024-10-31 10:00:00', '2024-10-01 08:00:00'),
(2, 'Panam City Day Tour', 'Day Tour', 'Panam City, Sonargaon, Bangladesh', 1500, 'Round trip transportation from Dhaka to Panam City - Entry fees to historical sites - Guided tour of Panam City’s historic buildings and landmarks - Light refreshments','Experience a memorable day exploring Panam City, known for its ancient architecture and rich history. Departing from Dhaka, this day tour offers a guided exploration of Panam City’s famous structures, dating back to the Bengal Sultanate era. Learn about the heritage of Sonargaon while enjoying scenic views, historic buildings, and a glimpse into Bangladesh’s vibrant past.','panam_city.jpg', '2024-10-15 05:21:58', '2024-10-15 05:20:56'),
(3, 'Gazipur Safari Park Day Trip', 'Day Tour', 'Gazipur Safari Park, Bangladesh', 1800, 'Round trip transportation from Dhaka to Gazipur Safari Park - Entry fees - Guided safari experience through animal enclosures - Light refreshments', 'Enjoy an adventurous day at Gazipur Safari Park, where you’ll have the chance to see exotic animals up close in a natural setting. This day tour includes a guided safari through various animal enclosures, a scenic drive through the park, and dedicated time for photography. Perfect for families and wildlife enthusiasts.', 'safari2.jpg', '2024-09-15 05:21:58', '2024-10-30 05:20:56'),
(4, 'Zinda Park Day Trip', 'Day Tour', 'Zinda Park, Narayanganj, Bangladesh', 1000, 'Round trip transportation from Dhaka to Zinda Park - Entry fees - Guided park tour - Refreshments provided', 'Escape to Zinda Park for a refreshing day trip filled with natural beauty and peaceful surroundings. This tour offers a guided walk through the park, showcasing its scenic lakes, gardens, and traditional Bangladeshi village ambiance. Enjoy relaxation and recreation in a serene setting, ideal for families and groups.', 'zinda_park.jpg',  '2024-12-10 09:00:00', '2024-11-20 08:00:00'),
(5, 'Nuhash Polli Resort Day Trip', 'Day Tour', 'Nuhash Polli, Gazipur, Bangladesh', 1500, 'Round trip transportation from Dhaka to Nuhash Polli - Entry fees - Guided tour of Nuhash Polli\'s attractions - Light refreshments', 'Enjoy a relaxing day at Nuhash Polli Resort, a scenic retreat created by the famous author Humayun Ahmed. This day trip includes a guided tour through the gardens, lakes, and unique architectural features. Ideal for those seeking a tranquil getaway, this trip offers a mix of natural beauty and cultural history.', 'nuhash_polli_resort.jpg', '2024-12-15 09:00:00', '2024-11-25 08:00:00'),
(6, 'Shalbon Bihar Day Trip', 'Day Tour', 'Shalbon Bihar, Comilla, Bangladesh', 1300, 'Round trip transportation from Dhaka to Shalbon Bihar - Entry fees - Guided tour of Shalbon Bihar and nearby archaeological sites - Light refreshments', 'Discover the ancient heritage of Shalbon Bihar with this enriching day trip. Located in Comilla, Shalbon Bihar is a historical Buddhist monastery complex dating back to the 8th century. This guided tour includes a walk through the archaeological site, exploration of the museum, and an insightful look into Bangladesh\'s Buddhist history. Perfect for history enthusiasts and culture lovers.', 'shalbon_bihar.jpg', '2024-12-20 09:00:00', '2024-11-30 08:00:00'),
(7, 'Comilla Zoo and Botanical Garden Day Trip', 'Day Tour', 'Comilla, Bangladesh', 1100, 'Round trip transportation from Dhaka to Comilla Zoo and Botanical Garden - Entry fees - Guided tour of the zoo and botanical garden - Light refreshments', 'Spend a day exploring the Comilla Zoo and Botanical Garden, a great destination for nature and wildlife enthusiasts. This guided tour includes visits to various animal enclosures, a walk through the botanical garden, and free time for relaxation and photography in the serene natural environment. Ideal for families and groups looking to enjoy nature and learn about local flora and fauna.', 'comilla_zoo_botanical_garden.jpg', '2024-12-25 09:00:00', '2024-12-01 08:00:00'),
(8, 'Bhawal Resort Day Trip', 'Day Tour', 'Bhawal Resort, Gazipur, Bangladesh', 2000, 'Round trip transportation from Dhaka to Bhawal Resort - Entry fees - Access to resort facilities - Guided tour of surrounding natural areas - Lunch and refreshments', 'Unwind with a relaxing day trip to Bhawal Resort, nestled in the lush greenery of Gazipur. Enjoy access to resort amenities, including gardens, pool, and recreational areas. This day trip offers a guided tour of nearby natural attractions and the opportunity to spend the day surrounded by beautiful landscapes. Ideal for families, friends, and groups looking for a peaceful getaway.', 'bhawal_resort.jpg', '2024-12-30 09:00:00', '2024-12-10 08:00:00'),
(9, 'Lalbagh Fort Day Trip', 'Day Tour', 'Lalbagh Fort, Dhaka, Bangladesh', 800, 'Round trip transportation within Dhaka to Lalbagh Fort - Entry fees - Guided tour of Lalbagh Fort\'s historical sites - Light refreshments', 'Step back in time with a day trip to Lalbagh Fort, a historic Mughal fort in Dhaka. This guided tour explores the fort’s architecture, gardens, and museum, offering insight into Bangladesh\'s rich history. Ideal for history enthusiasts and families, this trip provides a chance to experience one of Dhaka\'s most iconic landmarks.', 'lalbag.jpg', '2024-12-28 09:00:00', '2024-12-05 08:00:00');




-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Shakhawat Hossain', '01444564646', 'shakhawat@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-10-16 06:33:20', '2024-10-31 02:00:40'),
(2, 'Mehrab', '01987198797', 'mehrab@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-10-16 06:33:20', '2024-10-31 02:00:48'),
(3, 'Fahim kutta', '1398756416', 'kuttafahim@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-10-16 06:33:20', '2024-10-31 02:00:48'),
(4, 'Abir', '01478975644', 'abir@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-10-16 06:33:20', '2024-10-31 02:00:48'),
(5, 'Iftekhar', '01987894654', 'iftekhar@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-10-16 06:33:20', '2024-10-31 02:00:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
