-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: family_food
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `diet`
--

DROP TABLE IF EXISTS `diet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `diet` (
  `diet_id` int(11) NOT NULL,
  `Diet_name` varchar(30) DEFAULT NULL,
  `Number_of_meals` int(11) DEFAULT NULL,
  PRIMARY KEY (`diet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diet`
--

LOCK TABLES `diet` WRITE;
/*!40000 ALTER TABLE `diet` DISABLE KEYS */;
/*!40000 ALTER TABLE `diet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diet_menu`
--

DROP TABLE IF EXISTS `diet_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `diet_menu` (
  `diet_menu_id` int(11) NOT NULL,
  `diet_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`diet_menu_id`),
  KEY `diet_id` (`diet_id`),
  KEY `menu_id` (`menu_id`),
  CONSTRAINT `diet_menu_ibfk_1` FOREIGN KEY (`diet_id`) REFERENCES `diet` (`diet_id`),
  CONSTRAINT `diet_menu_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diet_menu`
--

LOCK TABLES `diet_menu` WRITE;
/*!40000 ALTER TABLE `diet_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `diet_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `Menu_name` varchar(30) DEFAULT NULL,
  `Menu_type` varchar(30) DEFAULT NULL,
  `Variety` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_menu`
--

DROP TABLE IF EXISTS `product_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product_menu` (
  `product_menu_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `quantify` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_menu_id`),
  KEY `product_id` (`product_id`),
  KEY `menu_id` (`menu_id`),
  CONSTRAINT `product_menu_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `product_menu_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_menu`
--

LOCK TABLES `product_menu` WRITE;
/*!40000 ALTER TABLE `product_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `Product_name` varchar(30) DEFAULT NULL,
  `Calories` int(11) DEFAULT NULL,
  `Proteins` int(11) DEFAULT NULL,
  `Fats` int(11) DEFAULT NULL,
  `Carbohydrates` int(11) DEFAULT NULL,
  `Category` varchar(30) DEFAULT NULL,
  `Weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `User_name` varchar(30) DEFAULT NULL,
  `Gender` varchar(30) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Date_of_birth` date DEFAULT NULL,
  `Height` int(11) DEFAULT NULL,
  `Weight` int(11) DEFAULT NULL,
  `Activity_level` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_diet`
--

DROP TABLE IF EXISTS `user_diet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_diet` (
  `user_diet_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `diet_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_diet_id`),
  KEY `user_id` (`user_id`),
  KEY `diet_id` (`diet_id`),
  CONSTRAINT `user_diet_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `user_diet_ibfk_2` FOREIGN KEY (`diet_id`) REFERENCES `diet` (`diet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_diet`
--

LOCK TABLES `user_diet` WRITE;
/*!40000 ALTER TABLE `user_diet` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_diet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-19 10:34:58
