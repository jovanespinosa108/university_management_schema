CREATE DATABASE  IF NOT EXISTS `university_management_schema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `university_management_schema`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: university_management_schema
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `students_id` int NOT NULL AUTO_INCREMENT,
  `students_name` varchar(90) NOT NULL,
  `students_email` varchar(45) NOT NULL,
  PRIMARY KEY (`students_id`),
  UNIQUE KEY `students_id_UNIQUE` (`students_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Cathy Wornell','cathywornel@uniedu.com'),(2,'Alan Welsch','alanWelsch@uniedu.com'),(3,'Sarah Wu','saraWu@uniedu.com'),(4,'John Uhler','john_uhler@uniedu.com'),(5,'Caroline Willsky','carolinewillsky@uniedu.com'),(6,'Moe Trancik','moeTrancik@uniedu.com'),(7,'Jessika Tsitsiklis','jessika_tsitsiklis@uniedu.com'),(8,'Gregory Trancik','gregorytrancik@uniedu.com'),(9,'Jinhua Yamamoto','jinhuaYamamoto@uniedu.com'),(10,'Yossi Sontag','yossi_sontag@uniedu.com'),(11,'Gilbert Sterman','gilbertsterman@uniedu.com'),(12,'Susan Thaler','susanthaler@uniedu.com'),(13,'Suvrit Suri','suvrit_suri@uniedu.com'),(14,'Charles Silbey','charlesSilbey@uniedu.com'),(15,'Jesse Ross','ross_Jesse@uniedu.com'),(16,'Noelle Rigobon','noellerigobon@uniedu.com'),(17,'David Ozdaglar','davidOzdaglar@uniedu.com'),(18,'Tavneet Sra','tavneet_sra@uniedu.com'),(19,'Elchanan Knittel','elchananKnittel@uniedu.com'),(20,'Tommi Jegelka','tommi_Jegelka@uniedu.com'),(21,'Polina Karaman','polinaKaraman@uniedu.com');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-02 22:25:45
