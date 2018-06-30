-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: employees_leave_card
-- ------------------------------------------------------
-- Server version	5.7.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employee_info`
--

DROP TABLE IF EXISTS `employee_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Position` varchar(45) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `Civil Status` varchar(45) DEFAULT NULL,
  `Entrance to Duty` date DEFAULT NULL,
  `Unit` varchar(45) DEFAULT NULL,
  `GSIS Policy No.` varchar(45) DEFAULT NULL,
  `TIN No.` varchar(45) DEFAULT NULL,
  `National Reference Card No.` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_info`
--

LOCK TABLES `employee_info` WRITE;
/*!40000 ALTER TABLE `employee_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_sick_leave`
--

DROP TABLE IF EXISTS `employee_sick_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_sick_leave` (
  `EARNED` double NOT NULL DEFAULT '1.25',
  `Absence Undertime W/ Pay` double DEFAULT NULL,
  `Balance` double DEFAULT NULL,
  `Absence Undertime W/ o Pay` double DEFAULT NULL,
  `sick_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sick_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_sick_leave`
--

LOCK TABLES `employee_sick_leave` WRITE;
/*!40000 ALTER TABLE `employee_sick_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_sick_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_vacation_leave`
--

DROP TABLE IF EXISTS `employee_vacation_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_vacation_leave` (
  `EARNED` double NOT NULL DEFAULT '1.25',
  `Absence Undertime W/ Pay` double DEFAULT NULL,
  `Balance` double DEFAULT NULL,
  `Absence Undertime W/o Pay` double DEFAULT NULL,
  `vacation_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`vacation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_vacation_leave`
--

LOCK TABLES `employee_vacation_leave` WRITE;
/*!40000 ALTER TABLE `employee_vacation_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_vacation_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `particulars`
--

DROP TABLE IF EXISTS `particulars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `particulars` (
  `idPARTICULARS` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` date DEFAULT NULL,
  `TIME` varchar(45) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `Remarks` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPARTICULARS`),
  KEY `employee_id_idx` (`employee_id`),
  CONSTRAINT `employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employee_info` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `particulars`
--

LOCK TABLES `particulars` WRITE;
/*!40000 ALTER TABLE `particulars` DISABLE KEYS */;
INSERT INTO `particulars` VALUES (0,NULL,NULL,1,NULL),(1,NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `particulars` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-30 11:59:03
