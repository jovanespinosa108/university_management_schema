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
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `grades_id` int NOT NULL AUTO_INCREMENT,
  `grades_students_id` int NOT NULL,
  `grades_professors_id` int NOT NULL,
  `grades_courses_id` int DEFAULT NULL,
  `grades_points` int DEFAULT NULL,
  PRIMARY KEY (`grades_id`),
  UNIQUE KEY `grades_id_UNIQUE` (`grades_id`),
  KEY `grades_professors_id_idx` (`grades_professors_id`),
  KEY `grades_students_id_idx` (`grades_students_id`),
  KEY `grades_courses_id_idx` (`grades_courses_id`),
  CONSTRAINT `grades_courses_id` FOREIGN KEY (`grades_courses_id`) REFERENCES `courses` (`courses_id`) ON DELETE CASCADE,
  CONSTRAINT `grades_professors_id` FOREIGN KEY (`grades_professors_id`) REFERENCES `professors` (`professors_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `grades_students_id` FOREIGN KEY (`grades_students_id`) REFERENCES `students` (`students_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (1,1,1,1,80),(2,1,2,2,90),(3,1,3,3,88),(4,1,4,4,97),(5,1,5,5,80),(6,2,1,1,85),(7,2,2,2,91),(8,2,3,3,84),(9,2,4,4,79),(10,2,5,5,88),(11,3,1,1,79),(12,3,2,2,86),(13,3,3,3,88),(14,3,4,4,76),(15,3,5,5,98),(16,4,1,1,81),(17,4,2,2,92),(18,4,3,3,83),(19,4,4,4,79),(20,4,5,5,88),(21,5,1,1,94),(22,5,2,2,97),(23,5,3,3,89),(24,5,4,4,81),(25,5,5,5,96),(26,5,7,7,99),(27,6,1,1,92),(28,6,2,2,83),(29,6,3,3,81),(30,6,4,4,94),(31,6,5,5,98),(32,6,6,6,95),(33,7,1,1,84),(34,7,2,2,81),(35,7,3,3,78),(36,7,4,4,81),(37,7,5,5,90),(38,7,8,8,82),(39,8,1,1,85),(40,8,2,2,80),(41,8,3,3,91),(42,8,4,4,95),(43,8,5,5,90),(44,8,8,8,83),(45,9,1,1,94),(46,9,2,2,83),(47,9,3,3,85),(48,9,4,4,98),(49,9,5,5,91),(50,9,7,7,80),(51,10,1,1,91),(52,10,2,2,85),(53,10,3,3,87),(54,10,4,4,99),(55,10,5,5,92),(56,10,7,7,85),(57,11,1,1,80),(58,11,2,2,94),(59,11,3,3,83),(60,11,4,4,92),(61,11,5,5,97),(62,11,6,6,88),(63,12,1,1,95),(64,12,2,2,91),(65,12,3,3,85),(66,12,4,4,93),(67,12,5,5,98),(68,12,6,6,84),(69,13,1,1,93),(70,13,2,2,90),(71,13,3,3,80),(72,13,4,4,95),(73,13,5,5,97),(74,13,6,6,89),(75,14,1,1,96),(76,14,2,2,87),(77,14,3,3,88),(78,14,4,4,90),(79,14,5,5,90),(80,14,6,6,86),(81,15,1,1,98),(82,15,2,2,86),(83,15,3,3,81),(84,15,4,4,85),(85,15,5,5,92),(86,15,6,6,85),(87,16,1,1,95),(88,16,2,2,88),(89,16,3,3,84),(90,16,4,4,87),(91,16,5,5,90),(92,16,6,6,93),(93,17,1,1,75),(94,17,2,2,80),(95,17,3,3,81),(96,17,4,4,78),(97,17,5,5,79),(98,17,6,6,82),(99,18,1,1,83),(100,18,2,2,81),(101,18,3,3,81),(102,18,4,4,85),(103,18,5,5,86),(104,18,6,6,89),(105,19,1,1,89),(106,19,2,2,88),(107,19,3,3,87),(108,19,4,4,91),(109,19,5,5,94),(110,19,6,6,90),(111,20,1,1,93),(112,20,2,2,87),(113,20,3,3,92),(114,20,4,4,91),(115,20,5,5,94),(116,20,6,6,98),(117,21,1,1,90),(118,21,2,2,91),(119,21,3,3,89),(120,21,4,4,96),(121,21,5,5,97),(122,21,6,6,99),(123,1,8,8,99),(124,2,7,7,85),(125,3,8,8,88),(126,4,7,7,92);
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
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
