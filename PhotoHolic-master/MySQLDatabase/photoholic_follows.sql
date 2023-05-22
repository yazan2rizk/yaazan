CREATE DATABASE  IF NOT EXISTS `photoholic` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `photoholic`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: photoholic
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `follows`
--

DROP TABLE IF EXISTS `follows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `follows` (
  `followee_user_id` int(11) NOT NULL,
  `follower_user_id` int(11) NOT NULL,
  `followed_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`followee_user_id`,`follower_user_id`),
  KEY `follower_user_id_idx` (`follower_user_id`),
  CONSTRAINT `followee_user_id` FOREIGN KEY (`followee_user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `follower_user_id` FOREIGN KEY (`follower_user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follows`
--

LOCK TABLES `follows` WRITE;
/*!40000 ALTER TABLE `follows` DISABLE KEYS */;
INSERT INTO `follows` VALUES (1,1,'2017-10-18 19:07:19'),(1,2,'2017-10-17 02:35:49'),(1,6,'2017-10-17 11:06:37'),(1,7,'2017-10-17 11:13:07'),(1,8,'2017-10-18 21:20:10'),(1,10,'2017-10-18 11:11:23'),(1,12,'2017-10-18 17:24:06'),(1,24,'2017-11-03 10:10:59'),(1,28,'2017-10-29 23:30:19'),(1,32,'2017-11-03 14:03:35'),(2,1,'2017-10-17 02:32:00'),(2,8,'2017-10-18 21:14:42'),(2,12,'2017-10-18 17:24:11'),(2,15,'2017-10-21 13:48:03'),(2,28,'2017-10-29 23:40:33'),(2,33,'2017-11-03 15:03:08'),(2,34,'2017-12-02 15:41:58'),(3,1,'2017-10-17 02:33:31'),(3,2,'2017-10-17 02:35:44'),(3,8,'2017-10-17 11:12:44'),(3,12,'2017-10-18 17:23:37'),(3,14,'2017-10-18 19:12:05'),(3,28,'2017-10-29 23:40:38'),(3,33,'2017-11-03 15:03:26'),(4,1,'2017-10-17 02:32:05'),(4,2,'2017-10-18 17:23:03'),(4,10,'2017-10-18 11:11:31'),(4,12,'2017-10-18 17:23:41'),(4,23,'2017-11-03 10:13:11'),(4,28,'2017-10-29 23:40:42'),(5,1,'2017-10-17 02:33:53'),(5,2,'2017-10-17 02:35:53'),(5,6,'2017-12-02 15:20:50'),(5,12,'2017-10-18 17:23:46'),(5,28,'2017-10-29 23:40:49'),(6,1,'2017-10-17 10:51:01'),(6,8,'2017-10-17 11:12:51'),(6,10,'2017-10-18 21:58:07'),(6,12,'2017-10-18 17:23:50'),(6,24,'2017-11-03 10:08:44'),(6,28,'2017-10-29 23:40:45'),(6,32,'2017-11-03 14:03:01'),(7,1,'2017-10-24 19:45:00'),(7,2,'2017-10-18 17:23:07'),(7,12,'2017-10-18 17:23:53'),(8,1,'2017-10-24 19:45:05'),(8,2,'2017-10-18 20:56:10'),(8,10,'2017-10-18 11:11:39'),(8,12,'2017-10-18 17:23:33'),(8,14,'2017-10-18 19:11:52'),(8,28,'2017-10-29 23:30:01'),(8,30,'2017-11-03 00:04:04'),(8,33,'2017-11-03 15:03:02'),(9,1,'2017-10-24 19:44:38'),(9,8,'2017-11-03 14:33:37'),(9,12,'2017-10-18 17:23:56'),(10,1,'2017-10-18 19:07:04'),(10,2,'2017-10-18 21:54:56'),(10,8,'2017-10-18 11:14:40'),(10,12,'2017-10-18 17:23:58'),(10,28,'2017-10-29 23:40:53'),(11,1,'2017-10-24 19:44:35'),(11,2,'2017-10-18 17:23:00'),(11,12,'2017-10-18 17:24:01'),(12,1,'2017-10-19 22:05:59'),(12,2,'2017-10-19 22:06:11'),(12,7,'2017-10-19 22:06:24'),(12,8,'2017-10-19 22:02:38'),(12,9,'2017-10-19 22:06:37'),(12,10,'2017-10-19 22:07:06'),(12,28,'2017-10-29 23:40:58'),(12,33,'2017-11-03 17:04:45'),(13,1,'2017-10-24 19:44:43'),(13,2,'2017-10-22 12:53:29'),(14,1,'2017-10-24 19:44:40'),(14,8,'2017-10-19 21:59:46'),(14,10,'2017-10-19 22:07:10'),(14,15,'2017-10-21 13:48:11'),(14,32,'2017-11-03 14:07:10'),(15,1,'2017-10-24 19:44:48'),(15,28,'2017-10-29 23:41:57'),(16,1,'2017-10-24 19:44:45'),(16,28,'2017-10-29 23:30:13'),(17,1,'2017-10-24 19:44:55'),(22,1,'2017-10-24 19:44:52'),(23,1,'2017-10-24 19:45:03'),(23,24,'2017-11-03 10:09:23'),(24,1,'2017-10-24 19:44:32'),(25,1,'2017-10-24 19:38:15'),(27,23,'2017-11-03 10:13:24'),(28,8,'2017-10-29 23:37:24'),(28,9,'2017-10-29 23:37:51'),(28,10,'2017-10-29 23:36:14'),(28,22,'2017-10-29 23:36:58'),(34,30,'2017-12-02 15:44:17');
/*!40000 ALTER TABLE `follows` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-02 16:04:07
