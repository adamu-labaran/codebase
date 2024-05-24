-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: week8
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `tech_books`
--

DROP TABLE IF EXISTS `tech_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tech_books` (
  `book_id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `publication_date` date DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tech_books`
--

LOCK TABLES `tech_books` WRITE;
/*!40000 ALTER TABLE `tech_books` DISABLE KEYS */;
INSERT INTO `tech_books` VALUES (1,'Introduction to Machine Learning','Alpaydin',45.99,'2014-10-01','machine learning'),(2,'Deep Learning','Goodfellow et al.',79.99,'2016-11-18','machine learning'),(3,'Data Science from Scratch','Grus',39.99,'2015-04-14','data science'),(4,'Computer Vision: Algorithms and Applications','Szeliski',59.99,'2010-09-03','computer vision'),(5,'Python Programming','Zelle',29.99,'2017-12-01','programming'),(6,'Artificial Intelligence: A Modern Approach','Russell & Norvig',99.99,'2020-04-15','artificial intelligence'),(7,'Programming in Haskell','Hutton',49.99,'2007-02-15','programming'),(8,'The Pragmatic Programmer','Hunt & Thomas',54.99,'1999-10-20','software engineering'),(9,'Design Patterns: Elements of Reusable Object-Oriented Software','Gamma et al.',47.99,'1994-10-21','software engineering'),(10,'Pattern Recognition and Machine Learning','Bishop',84.99,'2006-08-17','machine learning'),(11,'Python Data Science Handbook','VanderPlas',60.00,'2016-11-04','data science'),(12,'Hands-On Machine Learning with Scikit-Learn, Keras, and TensorFlow','Géron',49.99,'2019-09-05','machine learning'),(13,'Learning OpenCV 3','Bradski & Kaehler',56.99,'2016-12-28','computer vision'),(14,'Fluent Python','Ramalho',62.99,'2015-08-20','programming'),(15,'Grokking Algorithms','Bhargava',34.99,'2016-05-01','programming'),(16,'Machine Learning Yearning','Ng',0.00,'2018-06-21','machine learning'),(17,'Automate the Boring Stuff with Python','Sweigart',29.99,'2015-04-14','programming'),(18,'Data Science for Business','Provost & Fawcett',47.99,'2013-07-27','data science'),(19,'Building Machine Learning Powered Applications','White',39.99,'2020-01-02','machine learning'),(20,'Deep Learning with Python','Chollet',49.99,'2017-10-28','machine learning'),(21,'Reinforcement Learning: An Introduction','Sutton & Barto',64.99,'2018-11-13','machine learning'),(22,'Clean Code','Martin',54.99,'2008-08-01','software engineering'),(23,'Effective Java','Bloch',45.99,'2008-05-28','programming'),(24,'Python for Data Analysis','McKinney',44.99,'2017-10-09','data science'),(25,'Software Engineering at Google','Winters, Manshreck, Wright',59.99,'2020-03-01','software engineering');
/*!40000 ALTER TABLE `tech_books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-24 22:08:06
