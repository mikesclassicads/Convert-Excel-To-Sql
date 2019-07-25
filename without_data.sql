-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2019 at 07:18 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `databaseproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `cas`
--

DROP TABLE IF EXISTS `cas`;
CREATE TABLE `cas` (
  `CAS Number` varchar(255) NOT NULL,
  `Component Name` varchar(255) NOT NULL,
  `Limit Type 1` varchar(255) NOT NULL,
  `Limit  Value 1` varchar(255) NOT NULL,
  `Limit Type 2` varchar(255) NOT NULL,
  `Limit Value 2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dryingparameter`
--

DROP TABLE IF EXISTS `dryingparameter`;
CREATE TABLE `dryingparameter` (
  `Drying Parameter Number` varchar(255) NOT NULL,
  `Drying Parameter` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `extrusionparameter`
--

DROP TABLE IF EXISTS `extrusionparameter`;
CREATE TABLE `extrusionparameter` (
  `Extrusion Parameter Number` varchar(11) NOT NULL,
  `Extrusion Parameter` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
CREATE TABLE `features` (
  `Feature Number` varchar(255) NOT NULL,
  `Feature Rank` varchar(255) NOT NULL,
  `Feature` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `injectionparameter`
--

DROP TABLE IF EXISTS `injectionparameter`;
CREATE TABLE `injectionparameter` (
  `Injection Parameter Number` varchar(255) NOT NULL,
  `Injection Parameter` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `maindata`
--

DROP TABLE IF EXISTS `maindata`;
CREATE TABLE `maindata` (
  `Autonumber` varchar(255) NOT NULL,
  `Tradename Number` varchar(255) NOT NULL,
  `Formulation Number` varchar(255) NOT NULL,
  `Feature 1` varchar(255) NOT NULL,
  `Feature 2` varchar(255) NOT NULL,
  `Feature 3` varchar(255) NOT NULL,
  `Feature 4` varchar(255) NOT NULL,
  `Feature 5` varchar(255) NOT NULL,
  `Feature 6` varchar(255) NOT NULL,
  `Feature 7` varchar(255) NOT NULL,
  `Feature 8` varchar(255) NOT NULL,
  `Color` varchar(255) NOT NULL,
  `Clarity` varchar(255) NOT NULL,
  `Resin Form` varchar(255) NOT NULL,
  `Hardness` varchar(255) NOT NULL,
  `Shore Scale` varchar(255) NOT NULL,
  `Specific Gravity` varchar(255) NOT NULL,
  `Tensile Strength (psi)` varchar(255) NOT NULL,
  `Elongation at Break (%)` varchar(255) NOT NULL,
  `300% Modulus (psi)` varchar(255) NOT NULL,
  `Tear Strength (pli)` varchar(255) NOT NULL,
  `Rheology (Pa?sec)` varchar(255) NOT NULL,
  `Revision Date` varchar(255) NOT NULL,
  `Tensile Date` varchar(255) NOT NULL,
  `Tear Date` varchar(255) NOT NULL,
  `Rheology Date` varchar(255) NOT NULL,
  `Comments` varchar(10000) NOT NULL,
  `User Creating Form (from VBA)` varchar(255) NOT NULL,
  `Injection Parameter` varchar(255) NOT NULL,
  `Extrusion Parameter` varchar(255) NOT NULL,
  `Drying Parameter` varchar(255) NOT NULL,
  `Rubber 1` varchar(255) NOT NULL,
  `Rubber 2` varchar(255) NOT NULL,
  `Rubber 3` varchar(255) NOT NULL,
  `Rubber 4` varchar(255) NOT NULL,
  `Oil 1` varchar(255) NOT NULL,
  `Oil 2` varchar(255) NOT NULL,
  `Solids Content` varchar(255) NOT NULL,
  `Odor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `odor`
--

DROP TABLE IF EXISTS `odor`;
CREATE TABLE `odor` (
  `Odor Number` varchar(255) NOT NULL,
  `Odor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oil`
--

DROP TABLE IF EXISTS `oil`;
CREATE TABLE `oil` (
  `oil number` varchar(255) NOT NULL,
  `oil` varchar(255) NOT NULL,
  `CAS` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resinform`
--

DROP TABLE IF EXISTS `resinform`;
CREATE TABLE `resinform` (
  `Resin Form Number` varchar(255) NOT NULL,
  `Resin Form` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rubber`
--

DROP TABLE IF EXISTS `rubber`;
CREATE TABLE `rubber` (
  `Rubber Number` varchar(255) NOT NULL,
  `Rubber` varchar(255) NOT NULL,
  `CAS_num` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shorescale`
--

DROP TABLE IF EXISTS `shorescale`;
CREATE TABLE `shorescale` (
  `Shore Scale number` varchar(255) NOT NULL,
  `Shore Scale` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cas`
--
ALTER TABLE `cas`
  ADD PRIMARY KEY (`CAS Number`);

--
-- Indexes for table `dryingparameter`
--
ALTER TABLE `dryingparameter`
  ADD PRIMARY KEY (`Drying Parameter Number`);

--
-- Indexes for table `extrusionparameter`
--
ALTER TABLE `extrusionparameter`
  ADD PRIMARY KEY (`Extrusion Parameter Number`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`Feature Number`);

--
-- Indexes for table `injectionparameter`
--
ALTER TABLE `injectionparameter`
  ADD PRIMARY KEY (`Injection Parameter Number`);

--
-- Indexes for table `maindata`
--
ALTER TABLE `maindata`
  ADD PRIMARY KEY (`Autonumber`),
  ADD KEY `Feature 1` (`Feature 1`),
  ADD KEY `Feature 2` (`Feature 2`),
  ADD KEY `Feature 3` (`Feature 3`),
  ADD KEY `Feature 4` (`Feature 4`),
  ADD KEY `Feature 5` (`Feature 5`),
  ADD KEY `Feature 6` (`Feature 6`),
  ADD KEY `Feature 7` (`Feature 7`),
  ADD KEY `Feature 8` (`Feature 8`),
  ADD KEY `Resin Form` (`Resin Form`),
  ADD KEY `Shore Scale` (`Shore Scale`),
  ADD KEY `Injection Parameter` (`Injection Parameter`),
  ADD KEY `Rubber 1` (`Rubber 1`),
  ADD KEY `Rubber 2` (`Rubber 2`),
  ADD KEY `Rubber 3` (`Rubber 3`),
  ADD KEY `Rubber 4` (`Rubber 4`),
  ADD KEY `Oil 1` (`Oil 1`),
  ADD KEY `Oil 2` (`Oil 2`),
  ADD KEY `Odor` (`Odor`),
  ADD KEY `Extrusion Parameter` (`Extrusion Parameter`),
  ADD KEY `Drying Parameter` (`Drying Parameter`);

--
-- Indexes for table `odor`
--
ALTER TABLE `odor`
  ADD PRIMARY KEY (`Odor Number`);

--
-- Indexes for table `oil`
--
ALTER TABLE `oil`
  ADD PRIMARY KEY (`oil number`),
  ADD KEY `CAS` (`CAS`);

--
-- Indexes for table `resinform`
--
ALTER TABLE `resinform`
  ADD PRIMARY KEY (`Resin Form Number`);

--
-- Indexes for table `rubber`
--
ALTER TABLE `rubber`
  ADD PRIMARY KEY (`Rubber Number`);

--
-- Indexes for table `shorescale`
--
ALTER TABLE `shorescale`
  ADD PRIMARY KEY (`Shore Scale number`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `maindata`
--
ALTER TABLE `maindata`
  ADD CONSTRAINT `maindata_ibfk_1` FOREIGN KEY (`Feature 1`) REFERENCES `features` (`Feature Number`),
  ADD CONSTRAINT `maindata_ibfk_10` FOREIGN KEY (`Shore Scale`) REFERENCES `shorescale` (`Shore Scale number`),
  ADD CONSTRAINT `maindata_ibfk_11` FOREIGN KEY (`Injection Parameter`) REFERENCES `injectionparameter` (`Injection Parameter Number`),
  ADD CONSTRAINT `maindata_ibfk_12` FOREIGN KEY (`Rubber 1`) REFERENCES `rubber` (`Rubber Number`),
  ADD CONSTRAINT `maindata_ibfk_13` FOREIGN KEY (`Rubber 2`) REFERENCES `rubber` (`Rubber Number`),
  ADD CONSTRAINT `maindata_ibfk_14` FOREIGN KEY (`Rubber 3`) REFERENCES `rubber` (`Rubber Number`),
  ADD CONSTRAINT `maindata_ibfk_15` FOREIGN KEY (`Rubber 4`) REFERENCES `rubber` (`Rubber Number`),
  ADD CONSTRAINT `maindata_ibfk_16` FOREIGN KEY (`Oil 1`) REFERENCES `oil` (`oil number`),
  ADD CONSTRAINT `maindata_ibfk_17` FOREIGN KEY (`Oil 2`) REFERENCES `oil` (`oil number`),
  ADD CONSTRAINT `maindata_ibfk_18` FOREIGN KEY (`Odor`) REFERENCES `odor` (`Odor Number`),
  ADD CONSTRAINT `maindata_ibfk_19` FOREIGN KEY (`Extrusion Parameter`) REFERENCES `extrusionparameter` (`Extrusion Parameter Number`),
  ADD CONSTRAINT `maindata_ibfk_2` FOREIGN KEY (`Feature 2`) REFERENCES `features` (`Feature Number`),
  ADD CONSTRAINT `maindata_ibfk_20` FOREIGN KEY (`Drying Parameter`) REFERENCES `dryingparameter` (`Drying Parameter Number`),
  ADD CONSTRAINT `maindata_ibfk_3` FOREIGN KEY (`Feature 3`) REFERENCES `features` (`Feature Number`),
  ADD CONSTRAINT `maindata_ibfk_4` FOREIGN KEY (`Feature 4`) REFERENCES `features` (`Feature Number`),
  ADD CONSTRAINT `maindata_ibfk_5` FOREIGN KEY (`Feature 5`) REFERENCES `features` (`Feature Number`),
  ADD CONSTRAINT `maindata_ibfk_6` FOREIGN KEY (`Feature 6`) REFERENCES `features` (`Feature Number`),
  ADD CONSTRAINT `maindata_ibfk_7` FOREIGN KEY (`Feature 7`) REFERENCES `features` (`Feature Number`),
  ADD CONSTRAINT `maindata_ibfk_8` FOREIGN KEY (`Feature 8`) REFERENCES `features` (`Feature Number`),
  ADD CONSTRAINT `maindata_ibfk_9` FOREIGN KEY (`Resin Form`) REFERENCES `resinform` (`Resin Form Number`);

--
-- Constraints for table `oil`
--
ALTER TABLE `oil`
  ADD CONSTRAINT `oil_ibfk_1` FOREIGN KEY (`CAS`) REFERENCES `cas` (`CAS Number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
