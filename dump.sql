-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: quiz_app
-- ------------------------------------------------------
-- Server version	8.0.40-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `result_id` int NOT NULL,
  `option_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `answers_fk1` (`result_id`),
  KEY `answers_fk2` (`option_id`),
  CONSTRAINT `answers_fk1` FOREIGN KEY (`result_id`) REFERENCES `results` (`id`),
  CONSTRAINT `answers_fk2` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `options` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_id` int NOT NULL,
  `option_text` text NOT NULL,
  `isCorrect` tinyint(1) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `options_fk1` (`question_id`),
  CONSTRAINT `options_fk1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quiz_id` int NOT NULL,
  `question_text` text NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `questions_fk1` (`quiz_id`),
  CONSTRAINT `questions_fk1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quizzes`
--

DROP TABLE IF EXISTS `quizzes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quizzes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `time_limit` int NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `quizzes_fk1` (`user_id`),
  CONSTRAINT `quizzes_fk1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quizzes`
--

LOCK TABLES `quizzes` WRITE;
/*!40000 ALTER TABLE `quizzes` DISABLE KEYS */;
INSERT INTO `quizzes` VALUES (3,78,'jccjcnd','kdckn',12,'2025-01-16 16:15:46','2025-01-16 16:15:46'),(4,78,'jccjcnd','kdckn',12,'2025-01-16 16:15:46','2025-01-16 16:15:46'),(5,78,'jccjcnd','kdckn',12,'2025-01-16 16:15:46','2025-01-16 16:15:46'),(6,78,'jccjcnd','kdckn',12,'2025-01-16 16:15:46','2025-01-16 16:15:46'),(7,78,'jccjcnd','kdckn',12,'2025-01-16 16:15:48','2025-01-16 16:15:48'),(8,78,'jccjcnd','kdckn',12,'2025-01-16 16:15:48','2025-01-16 16:15:48'),(10,78,'jccjcnd','kdckn',12,'2025-01-16 16:16:15','2025-01-16 16:16:15'),(11,78,'jccjcnd','kdckn',12,'2025-01-16 16:16:15','2025-01-16 16:16:15'),(12,78,'jccjcnd','kdckn',12,'2025-01-16 16:16:15','2025-01-16 16:16:15'),(13,78,'jccjcnd','kdckn',12,'2025-01-16 16:16:15','2025-01-16 16:16:15'),(14,78,'jccjcnd','kdckn',12,'2025-01-16 16:16:16','2025-01-16 16:16:16'),(15,78,'jccjcnd','kdckn',12,'2025-01-16 16:16:16','2025-01-16 16:16:16'),(16,78,'jccjcnd','kdckn',12,'2025-01-16 16:16:30','2025-01-16 16:16:30'),(17,78,'jccjcnd','kdckn',12,'2025-01-16 16:16:35','2025-01-16 16:16:35'),(18,78,'bgb','gbgf',5,'2025-01-16 17:30:53','2025-01-16 17:30:53'),(19,78,'salom','cdc',12,'2025-01-19 13:14:54','2025-01-19 13:14:54'),(20,78,'salom','cdc',12,'2025-01-19 13:14:56','2025-01-19 13:14:56'),(21,78,'salom dunyo','hello world',12,'2025-01-19 13:19:51','2025-01-19 13:19:51'),(22,78,'salom dunyo','hello world',12,'2025-01-19 13:19:51','2025-01-19 13:19:51'),(23,78,'salom dunyo','hello world',12,'2025-01-19 13:19:52','2025-01-19 13:19:52'),(24,78,'salom dunyo','hello world',12,'2025-01-19 13:19:52','2025-01-19 13:19:52'),(25,78,'salom dunyo','hello world',12,'2025-01-19 13:19:52','2025-01-19 13:19:52'),(26,78,'salom dunyo','hello world',12,'2025-01-19 13:19:52','2025-01-19 13:19:52'),(27,78,'salom dunyo','hello world',12,'2025-01-19 13:19:53','2025-01-19 13:19:53'),(28,78,'salom dunyo','hello world',12,'2025-01-19 13:19:53','2025-01-19 13:19:53'),(29,78,'salom dunyo','hello world',12,'2025-01-19 13:19:53','2025-01-19 13:19:53'),(30,78,'bb','fbvdfb',2,'2025-01-19 14:39:07','2025-01-19 14:39:07'),(31,78,'rtbtb','vffb',12,'2025-01-20 14:28:09','2025-01-20 14:28:09'),(32,78,'dlgn','dvdev',545,'2025-01-20 14:34:33','2025-01-20 14:34:33'),(33,78,'dvdv','vss',1321,'2025-01-20 14:36:13','2025-01-20 14:36:13'),(34,78,'matem','qiyin',100,'2025-01-20 14:53:24','2025-01-20 14:53:24'),(35,78,'matem','qiyin',100,'2025-01-20 14:53:25','2025-01-20 14:53:25'),(36,78,'matem','qiyin',100,'2025-01-20 14:53:25','2025-01-20 14:53:25'),(37,78,'matem','qiyin',100,'2025-01-20 14:53:26','2025-01-20 14:53:26'),(38,78,'matem','qiyin',100,'2025-01-20 14:53:26','2025-01-20 14:53:26'),(39,78,'matem','qiyin',100,'2025-01-20 14:53:26','2025-01-20 14:53:26'),(40,78,'matem','qiyin',100,'2025-01-20 14:53:32','2025-01-20 14:53:32'),(41,78,'matem','qiyin',100,'2025-01-20 14:53:33','2025-01-20 14:53:33'),(42,78,'matem','qiyin',100,'2025-01-20 14:53:33','2025-01-20 14:53:33'),(43,78,'matem','qiyin',100,'2025-01-20 14:53:34','2025-01-20 14:53:34'),(44,78,'matem','qiyin',100,'2025-01-20 14:53:51','2025-01-20 14:53:51'),(45,78,'matem','qiyin',100,'2025-01-20 14:53:51','2025-01-20 14:53:51'),(46,78,'matem','qiyin',100,'2025-01-20 14:53:51','2025-01-20 14:53:51'),(47,78,'matem','qiyin',100,'2025-01-20 14:53:59','2025-01-20 14:53:59'),(48,78,'dscdc','scdc',255,'2025-01-20 14:56:03','2025-01-20 14:56:03'),(49,78,'dscdc','scdc',255,'2025-01-20 14:56:04','2025-01-20 14:56:04'),(50,78,'dscdc','scdc',255,'2025-01-20 14:56:04','2025-01-20 14:56:04'),(51,78,'dscdc','scdc',255,'2025-01-20 14:56:04','2025-01-20 14:56:04'),(52,78,'dscdc','scdc',255,'2025-01-20 14:56:05','2025-01-20 14:56:05'),(53,78,'dscdc','scdc',255,'2025-01-20 14:56:05','2025-01-20 14:56:05'),(54,78,'dscdc','scdc',255,'2025-01-20 14:56:52','2025-01-20 14:56:52'),(55,78,'kkk','jnj',47,'2025-01-20 14:59:18','2025-01-20 14:59:18'),(56,78,'cc','cd',11,'2025-01-20 15:04:31','2025-01-20 15:04:31'),(57,78,'cc','cd',11,'2025-01-20 15:04:56','2025-01-20 15:04:56'),(58,78,'cc','cd',11,'2025-01-20 15:04:57','2025-01-20 15:04:57'),(59,78,'cc','cd',11,'2025-01-20 15:04:57','2025-01-20 15:04:57'),(61,78,'ilm','cdc',45,'2025-01-20 15:40:24','2025-01-20 15:40:24'),(62,78,'ilm','cdc',45,'2025-01-20 15:40:27','2025-01-20 15:40:27'),(63,78,'ilm','cdc',45,'2025-01-20 15:41:34','2025-01-20 15:41:34'),(64,78,'ilm','xscs',54,'2025-01-20 15:42:18','2025-01-20 15:42:18'),(65,78,'ilm','xscs',54,'2025-01-20 15:42:18','2025-01-20 15:42:18'),(66,78,'ilm','xscs',54,'2025-01-20 15:42:19','2025-01-20 15:42:19'),(67,78,'ilm','xscs',54,'2025-01-20 15:42:19','2025-01-20 15:42:19'),(68,78,'ilm','xscs',54,'2025-01-20 15:42:19','2025-01-20 15:42:19'),(69,78,'ilm','xscs',54,'2025-01-20 15:42:19','2025-01-20 15:42:19'),(70,78,'ilm','xscs',54,'2025-01-20 15:42:19','2025-01-20 15:42:19'),(71,78,'ilm','xscs',54,'2025-01-20 15:42:20','2025-01-20 15:42:20'),(72,78,'ilm','xscs',54,'2025-01-20 15:42:20','2025-01-20 15:42:20'),(73,78,'ilm','xscs',54,'2025-01-20 15:43:28','2025-01-20 15:43:28'),(74,78,'ilm','xscs',54,'2025-01-20 15:43:28','2025-01-20 15:43:28'),(75,78,'ilm','xscs',54,'2025-01-20 15:43:28','2025-01-20 15:43:28'),(76,78,'ilm','xscs',54,'2025-01-20 15:43:29','2025-01-20 15:43:29'),(77,78,'ilm','xscs',54,'2025-01-20 15:43:29','2025-01-20 15:43:29'),(78,78,'xsxs','axasx',11,'2025-01-20 15:44:40','2025-01-20 15:44:40'),(79,78,'xsxs','axasx',11,'2025-01-20 15:46:48','2025-01-20 15:46:48'),(80,78,'xsxs','axasx',11,'2025-01-20 15:46:48','2025-01-20 15:46:48'),(81,78,'xsxs','axasx',11,'2025-01-20 15:46:48','2025-01-20 15:46:48'),(82,78,'n jn','hjun',48,'2025-01-20 15:47:54','2025-01-20 15:47:54'),(83,78,'fwee','vdvwew',555,'2025-01-20 15:49:04','2025-01-20 15:49:04'),(84,78,'zxx','x ',44,'2025-01-20 15:58:03','2025-01-20 15:58:03'),(85,78,'zxx','x jhj',44,'2025-01-20 16:40:11','2025-01-20 16:40:11'),(86,78,'zxx','x jhj',44,'2025-01-20 16:42:03','2025-01-20 16:42:03');
/*!40000 ALTER TABLE `quizzes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `results` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `quiz_id` int NOT NULL,
  `score` int NOT NULL,
  `started_at` datetime NOT NULL,
  `finished_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `results_fk1` (`user_id`),
  KEY `results_fk2` (`quiz_id`),
  CONSTRAINT `results_fk1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `results_fk2` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
/*!40000 ALTER TABLE `results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_api_tokens`
--

DROP TABLE IF EXISTS `user_api_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_api_tokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_api_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_api_tokens`
--

LOCK TABLES `user_api_tokens` WRITE;
/*!40000 ALTER TABLE `user_api_tokens` DISABLE KEYS */;
INSERT INTO `user_api_tokens` VALUES (1,'197fa4a60ef103cce6c01d1e2834680bcc6e4e3028bae1a6083d4ebe8a2a2cdbd72139a3fb497ce5',56,'2025-01-01 14:24:21','2024-12-25 14:24:21'),(2,'e8f147c27b1931ab75bef8adff9d0620e07a33c4f2b5102f34a350b7f25972d10a4ced02d6935606',58,'2025-01-01 16:51:29','2024-12-25 16:51:29'),(3,'75485124dcd5c1afee15a9e6e3593729820962044d63caf0bffcb4cb8ad2b31cbb43d00208d29aef',61,'2025-01-01 17:59:38','2024-12-25 17:59:38'),(4,'d6c577c0960f78e618acd9b8306a7ea8d796f8aa018ac4c26e322afc94e5bd4e7e963536009d73a1',63,'2025-01-01 17:59:59','2024-12-25 17:59:59'),(5,'fd8e166d329a6ce51739f97bf3b62abb3f9d49e0da75558d853a5a7b65eee203e3e516192e6d020f',64,'2025-01-01 18:01:15','2024-12-25 18:01:15'),(6,'33d1ce0fd357a7338b1e39aff883befc3a9bc9511d1f3a80dc263e8e21cdce41eeee16f21b57ecbd',66,'2025-01-01 18:01:31','2024-12-25 18:01:31'),(7,'3b1ec1dfd6c3e522ffc0fd5a541e8cb62faa1408fed9a1b07e1ec4afa0734d0eabe9381bbf20d159',67,'2025-01-01 18:02:03','2024-12-25 18:02:03'),(8,'7c4e514a875ae5bbb455ff04bc5ff4aa0b89089327faccb189f78d3c8a2eb24aaf2a1fb78c6c5aee',68,'2025-01-01 18:02:35','2024-12-25 18:02:35'),(9,'f030a424a7603bf427262c9f90e5cccb9d5bb241ab57739a3252ead9a474f6f7c3e64a3dd5fd5219',69,'2025-01-02 16:01:22','2024-12-26 16:01:22'),(10,'c3731e8df862b11bf741d0e44269a7a48e74749349fba676a2b6ba09d7f73c01a187acba3b4b95dd',70,'2025-01-02 16:01:53','2024-12-26 16:01:53'),(11,'65c86d7b74432368c1a949e1d2337eeb940b09c8a97f93744b07ef7d5ef8da098e4c81d4b63cdfdb',71,'2025-01-02 17:11:02','2024-12-26 17:11:02'),(12,'0c072e0ce67f281b2d6f151a544217b92f138e8da3468ee7e667a98e7d9449e4ec8cbcd836341200',72,'2025-01-02 17:15:29','2024-12-26 17:15:29'),(13,'c31715e02da426997d6a044373a66eb006d8ea66650102fe47867bf5b2bd21a5486c839a564b48c0',73,'2025-01-02 17:16:35','2024-12-26 17:16:35'),(14,'39e348b409bd5df67deeeca3c4558ebe991c5a087f2e7772f1a2ff705960993207d52c8e2b9fc2da',74,'2025-01-02 17:29:47','2024-12-26 17:29:47'),(15,'c6f73751ec12abda491bd23ad1639ecb1b33f384e3fde3cdaab32f54695e25b221482eb07d7edbc2',75,'2025-01-02 17:30:13','2024-12-26 17:30:13'),(16,'5643a45014d485961dd5389b0278f8640d2ca4b0b1544475c6d3f1bcf1673a782ef421da56a54827',76,'2025-01-02 17:44:10','2024-12-26 17:44:10'),(17,'f06e660ba899f7229ab9d8fae55b8291b57bf443ac2981776d0fa7ebd84c6a907d7e7cc6992a8a5a',78,'2025-01-15 19:47:24','2025-01-08 19:47:24'),(18,'4df661045ddb55e88e1bb52c1729dd7faf85cea873ee44a6f72344483f42215b203455de46ab067a',78,'2025-01-15 19:58:49','2025-01-08 19:58:49'),(19,'a6da16a129eeff955bd46079e4557c440582115d90b9d193f1bed4f3e1ec02f7c33c794c990c0ff6',78,'2025-01-15 20:00:57','2025-01-08 20:00:57'),(20,'064ec3959c384c15c3da9b142aa75a68d3959c32afb9fdcfcbba22bf061248aa8786696094985e0f',78,'2025-01-15 20:01:29','2025-01-08 20:01:29'),(21,'26609517e8baa6d8a418857cd9c0305dfee3a593fe25e159ca682543c8998e0978edb1fe6543f4f7',78,'2025-01-15 20:02:03','2025-01-08 20:02:03'),(22,'fe00ef76635ec718d4ddd69d17e3d439232b519dfa8aef2e4ff5430b5cce9c23129c0ac7c703648f',79,'2025-01-16 13:19:02','2025-01-09 13:19:02'),(23,'498c4276bc03733d110d76a033d8b404d4738eeca36401f111a7c60898e959be20bad4a86ca76cb4',81,'2025-01-16 13:19:31','2025-01-09 13:19:31'),(24,'d9b873e044dfe3c03fa295ecca8b6a6590be602cca7b397b444ed8448920732350cc64bd06d40728',82,'2025-01-16 13:20:29','2025-01-09 13:20:29'),(25,'25c27ed76782f190041da1f3160167ad85b2bc031c8c8160de639273b386c06e2d7762dc337bf636',83,'2025-01-16 13:22:19','2025-01-09 13:22:19'),(26,'298a97edcb69c248b7313f8b33ef7045b854b65dbd113c0d3917febc2206ddd6e911c13e3154a7df',78,'2025-01-16 18:26:04','2025-01-09 18:26:04'),(27,'8d8b3fb3975b14d5b75f0898c45dee4aab5c23eb7a3a9e460cc9f55fae2e403231e5287abdce7d39',78,'2025-01-17 12:49:25','2025-01-10 12:49:25'),(28,'721c8850ed7b7a635c9e005d22a440a3a3206957283c64e5bef6dacded561d5536456de8a9dd7594',78,'2025-01-17 12:52:50','2025-01-10 12:52:50'),(29,'b57f2b6a45a5a2d8e8df4f0a20cd7244cd5c996dd33b2ca813e32013827f3d80cf1c06c08e459ab4',78,'2025-01-17 16:46:33','2025-01-10 16:46:33'),(30,'cac5a43f0b044b635bf87273e2089e18cffb8470dde703c7a0691381f5c31cdc686c4da1521c4436',78,'2025-01-17 16:46:33','2025-01-10 16:46:33'),(31,'7890788742dab7de77fa66dc3038de1a196a9036efabd469fc713b3cb6729635a25800c534d819d8',78,'2025-01-17 16:46:33','2025-01-10 16:46:33'),(32,'871d68d1697f30885999775b42919b019c32d3c18003a56eb19ba191eeb2478aacb95419023118cc',78,'2025-01-17 16:46:34','2025-01-10 16:46:34'),(33,'6d87e8b9df826e49332253f18018483eb833b8a6465c126c2dc13bec35b26cb16ab5099756c220e9',78,'2025-01-17 16:46:34','2025-01-10 16:46:34'),(34,'1c6001c8b570aa12725053855457a0ee1470a7c2701d381ecd200a67da20bf9464f301aba1e3dd88',78,'2025-01-17 16:46:34','2025-01-10 16:46:34'),(35,'fd3c8144f6bf122d5e822c3e1bad3cf3da5a2295f979206dabaef63c36d72b97661c6200b6f773b2',78,'2025-01-17 16:46:34','2025-01-10 16:46:34'),(36,'6d71b12a27230cb8ac16abe452bbc4515c7b007d655660de9f7a42058592b76fcf5278c235b5eabb',78,'2025-01-17 16:46:35','2025-01-10 16:46:35'),(37,'3391d0d1caaeb0981028a6a7da4d2ace60a968a10c6fc8bf2e9e9f449f1747f5a3238765bb9ebde3',78,'2025-01-17 16:46:35','2025-01-10 16:46:35'),(38,'4edfbf86f8b722568d2b9f78aa5e3bc6d1483a49e43369a106dd70afb8c42477321c0fc740dfec09',78,'2025-01-17 16:46:36','2025-01-10 16:46:36'),(39,'45590df17e9d7075ccb926a55a1fd2ab5ea2d08da21f8f306562bf0abe29ad1b6f3cb6896f4e1f60',78,'2025-01-17 16:46:37','2025-01-10 16:46:37'),(40,'296b964f94cfbee63f5c87f643e4d0621b055472d8c5b26c69622a186e2f7eb758a701f981036cf1',78,'2025-01-17 16:46:37','2025-01-10 16:46:37'),(41,'800abb80daf885b7f5cf22b27bf8053e146697713faf978bb9445751659d0cb9c358bf195d659005',78,'2025-01-17 16:46:37','2025-01-10 16:46:37'),(42,'4ce87440a8a82253d24395b32e4805ae8c627333e24157ed146bab68f6eedd58816a89dc5043e6f2',78,'2025-01-17 16:46:38','2025-01-10 16:46:38'),(43,'65e4e1cbd088a2a41953a8bed002688d2b12c357f51328c9e525516a8f63b6a7f33d5f20beaa8765',78,'2025-01-17 16:56:39','2025-01-10 16:56:39'),(44,'b9d957630f65f0dd83ff894d3e5ece9d5bfd493e72bc6e2fb535710d263797abf2cf8f97d7cfdf78',78,'2025-01-17 17:08:02','2025-01-10 17:08:02'),(45,'e75af16306b68d52eb72cea67c81a9c4344a00f936b41fc65e34b40df0ae62b1aa63f8a821ce311e',78,'2025-01-17 17:08:03','2025-01-10 17:08:03'),(46,'7a22222cb96c48890e77911ee6a215f2285a216f91cc7e492d7736099a7bff2749949efac5af125a',78,'2025-01-17 17:08:03','2025-01-10 17:08:03'),(47,'67809adc04c2cec7577a14925eee83b7a3f7b10efc989ee917ffaa7a57eb2950d4b792aa98994ac1',78,'2025-01-17 17:08:03','2025-01-10 17:08:03'),(48,'1968f2e9e5db35980a1b55f6ac2a0eb38f79b5e81e5ca72cdf584097ae5d1111b3c9e3e3ad80e4fc',78,'2025-01-17 17:24:14','2025-01-10 17:24:14'),(49,'5cf93a1cb1fac1f50c44fa30e75d9cfcef5f134d2770401eb6a58f864aad3c45958a0417654f31dc',78,'2025-01-17 17:28:35','2025-01-10 17:28:35'),(50,'920b708830b8132da28c8364e385748dd0621e5bd367a6c6ac3b24ab6ede1e8a950ff07402f73567',78,'2025-01-17 19:51:06','2025-01-10 19:51:06'),(51,'df084aafba75ab38da7f12740d91a5a3204d3a0a5bae0637b83b3782d67cf7eca005dc43bc76f33b',78,'2025-01-20 16:38:22','2025-01-13 16:38:22'),(52,'bfbc81e7ae36e6270d6bfc5f441844b667d600005330c7388888d8e38d3f85cabdac2386c392f955',78,'2025-01-20 18:45:10','2025-01-13 18:45:10'),(53,'3012147f6480951072ae82c99d7de40b70d2b364e64dc8d26722df3a0e0f4fb2f93c9c7277516cdb',78,'2025-01-21 14:12:31','2025-01-14 14:12:31'),(54,'b896f020227d56a24c45b00f99b4874f593056678edf2dc98593b7005a37fc962e7a3b7e251740c1',78,'2025-01-21 17:06:14','2025-01-14 17:06:14'),(55,'b7dd98d43695ffaedd4cb106a86e9b25d21a79fa4734ad31bc61e20b9235e74b75a76c5e0b92f84b',78,'2025-01-21 17:10:00','2025-01-14 17:10:00'),(56,'c0f5fe24c2a5d92fab31c866dccc6fb9000d67f80911e183afb384be2de6fa6a190017df1379d5a0',78,'2025-01-22 15:49:09','2025-01-15 15:49:09'),(57,'d578f8daefdca2e3bf90a82e5739bf79ee1f6b4f07269d837fd0def2b4b19dfe0301d43b0661323f',84,'2025-01-22 17:01:45','2025-01-15 17:01:45'),(58,'9113d682aea60c635221227a5f47fdae9108b775b34d0b456e40dcae59df3c98db2f0e97355b2545',84,'2025-01-22 17:02:22','2025-01-15 17:02:22'),(59,'9aa37ca1fb7b9801314383609cca6016de59bdb2792b8d95a07e6666dfcf5b15085c87f6c060d12e',85,'2025-01-22 17:06:00','2025-01-15 17:06:00'),(60,'e02954d0ff2f0a73efc06facc14b713a502924dfac2be644f21a8de9a0883246b77e295df9949d47',86,'2025-01-22 17:14:02','2025-01-15 17:14:02'),(61,'bb60e075f8f99b1c3bec9bc5f999773141d58d8cedc6c30f2275856d0c9bfcee98a3c3f3bc1c4e01',97,'2025-01-22 17:20:02','2025-01-15 17:20:02'),(62,'ebdf0b9277896e97942c5b5f6abe33930720f45bcf978bbc42f4951d8f15349c55e0ce475293de00',78,'2025-01-22 17:23:07','2025-01-15 17:23:07'),(63,'974bac2c5a2324db2f966a24a33c44649088294ff56e37c8462a5901d80bc32919f0ebc96f892367',98,'2025-01-22 17:27:34','2025-01-15 17:27:34'),(64,'10d296d871c520630620968d9c57707ad2add610f8788ebc5386d7227a63d9d2b992b7a5aee87f76',99,'2025-01-22 17:28:27','2025-01-15 17:28:27'),(65,'89c8d9b97a1b9af5c4f98ff5e9d7f5417054409bebe02ef89f27e1153c5af89f5c837c24cb1f5554',100,'2025-01-22 17:29:42','2025-01-15 17:29:42'),(66,'3898740d1c46c335609e76e1c483a5c295eb22e880383acd2b1162af99b7992316f975ee67f78c22',101,'2025-01-22 17:31:32','2025-01-15 17:31:32'),(67,'5b9978ed2e64b8ec71e44ac326220dac0856f52a3f09a64feedc200d74856e3765a8db1339612d75',102,'2025-01-22 17:38:23','2025-01-15 17:38:23'),(68,'a505fac91cdaef5d2c5b9e2ce3d20ed3e28788a2f4e2a4feaca05855b692128aa86723984e681920',103,'2025-01-22 17:39:47','2025-01-15 17:39:47'),(69,'a80b391762f6e680a8e927d448c33cdda141bbcfe62ce8cc3a0df56fd26a0159cb5019ea5c2d5790',104,'2025-01-22 17:42:45','2025-01-15 17:42:45'),(70,'56fc81f50cd3697eb7166628adc84a0db4d291ef932706b3ec7eabfb0b9d65868c4905ce5056a799',105,'2025-01-22 17:48:07','2025-01-15 17:48:07'),(71,'7f78bb8bf60eac9e915ce5e58f99b28a19561e4788bd99ea1e396f7b18ddc0d6b5c5496ba85adf41',106,'2025-01-22 17:50:08','2025-01-15 17:50:08'),(72,'4d185b3bd50fa96e4505164cc72491045e07219d0b2b534e30bb2ea5a0b560d4dd3c024a4d4bef49',107,'2025-01-22 17:51:30','2025-01-15 17:51:30'),(73,'672094ca1b4ae46860709106635ad46cce8e5fad44520ecb5af525966b5a533c34784505f247a60d',108,'2025-01-22 17:52:41','2025-01-15 17:52:41'),(74,'7db790ca0ac237cb553664f4e73250473bc08ae2e40a541c85ee9b38b0a7dc0331322b562466b52c',109,'2025-01-22 17:53:39','2025-01-15 17:53:39'),(75,'3cfb101e3ea7f569e1513fc7b2a49b7835d4124fbd31d5e0fff3e054c22ade015b1a1d02d03b8b95',110,'2025-01-22 17:56:03','2025-01-15 17:56:03'),(76,'6881b9f216b6e1ed4f630e075ccae6539447caa7343b2f7a1c86ba6e634e234571a98c675eee10ca',111,'2025-01-22 17:56:49','2025-01-15 17:56:49'),(77,'afd9134cffe71e7b0eaff8c23ba789f7c98e845bdb42e3f3bf28e2550fd56479b754dab8e2870725',78,'2025-01-23 15:06:47','2025-01-16 15:06:47'),(78,'4d828dabffe6ff238071c1b07197ebd97db0416b39bd7506e758dabc6e16aef28176a1e49ea1d1f2',78,'2025-01-23 16:02:53','2025-01-16 16:02:53'),(79,'f1d1d66284f67dcb6491017377ad91a96fecd188dc8c05570bc13754dd8cb310db1aadc2e95bfb48',78,'2025-01-23 16:15:20','2025-01-16 16:15:20'),(80,'fa2f8d296472ee7d01906b5d0e25b16963a04f822cf910daaf74c66b1bbce6f4310cb2b445c35778',78,'2025-01-23 17:30:33','2025-01-16 17:30:33'),(81,'a7edfaeee53411df878c5df9b45b71507caf4ae71ecaaaad83c3665715f6615c6e4b7d80bd84bdf5',78,'2025-01-26 13:14:34','2025-01-19 13:14:34'),(82,'f5e98242ebde39677798317b80656a16ee712dbdeba159f0ed2b3a8e9b5d319044702f368ed45945',78,'2025-01-26 14:38:54','2025-01-19 14:38:54'),(83,'130b6b8571ca72e1ac87e61f959ec8cd8a6535a45bd877506d270368c31a85ac6d1721309f9a5972',78,'2025-01-27 14:27:46','2025-01-20 14:27:46'),(84,'7939409bab98097a6ef8e89638a484a5e280db9014daf5239699dcbb1c5c5bbeea2bc39c4c0a4d41',78,'2025-01-27 15:40:01','2025-01-20 15:40:01');
/*!40000 ALTER TABLE `user_api_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Ali','ali@gmail.com','123456789',NULL,'2024-12-25 11:59:50'),(8,'Ali1','ali1@gmail.com','123456789','2024-12-25 12:05:50','2024-12-25 12:05:50'),(12,'Ali1','ali11@gmail.com','123456789','2024-12-25 12:05:56','2024-12-25 12:05:56'),(14,'Ali1','ali115@gmail.com','$2y$10$LLKxjT/Xz/s53nupG3ts5.qaOdcHMj2z01qEsz30tga7loFG.BRGq','2024-12-25 12:52:45','2024-12-25 12:52:45'),(17,'abbos ','abbos@gmail.com','$2y$10$.xwfu.EVzaRVDmjkBqy6eOnSmWJrLvRHaOwdezaKDupUhOo5x3l9K','2024-12-25 13:07:33','2024-12-25 13:07:33'),(19,'Aziz','aziz@gamil.com','$2y$10$fU70ECR2B21fIMb6hjrQr.OrdSS92ehwHj4shn2sXINKlbLNZgrUK','2024-12-25 14:06:31','2024-12-25 14:06:31'),(22,'Aziz','azizbek@gamil.com','$2y$10$e850pr8ubvo97/F9avf2gub..lYNioJ5B4M0p2SdbDBc1KhD0nCfW','2024-12-25 14:06:44','2024-12-25 14:06:44'),(54,'Aziz','azizbek34@gamil.com','$2y$10$3Qft4fE6mkU2yWOjR2Bm9.aHSMbetofRo.JmDwacafLOXuJP89CFy','2024-12-25 14:19:01','2024-12-25 14:19:01'),(56,'Aziz','azizbek3465@gamil.com','$2y$10$e6TYzEbcTkMv8gxAirCpquX31hzSrAj82Kl4Hm1SN2oolpCJYjAXy','2024-12-25 14:24:21','2024-12-25 14:24:21'),(58,'Aziz','azizbek346597997969@gamil.com','$2y$10$DXDlZRFn7RkyQ8NBUG.FU.2t2nTHi05U.LjkYwbtiuUuZVXX0rNnW','2024-12-25 16:51:29','2024-12-25 16:51:29'),(61,'Aziz','azizbek3465979979694@gamil.com','$2y$10$SR0USojwdJ8UbDqRoFq3jOfjZbZ83D3vTbUfKgUmOsrX43sPYFm62','2024-12-25 17:59:38','2024-12-25 17:59:38'),(63,'Aziz','azizbek34659@gamil.com','$2y$10$zwnQm75pMD5kvIynu4BOhOjjDsvkf8qiNC82FTUoGKX1UdXsyGLRK','2024-12-25 17:59:59','2024-12-25 17:59:59'),(64,'Aziz','azizbek346594@gamil.com','$2y$10$c7jnp9T7PW5nfe7ucParr..QZ5uawqhgnmfM0AcFo3iHAY4ZeiOqe','2024-12-25 18:01:15','2024-12-25 18:01:15'),(66,'Aziz','azizbek3465945@gamil.com','$2y$10$OXiesy09eKJNp.iO2gm2f.BOaXO8ZNPgNyNAnwVnUlhZr1U3EvPLK','2024-12-25 18:01:31','2024-12-25 18:01:31'),(67,'Aziz','azizbek23@gamil.com','$2y$10$6V/ocJf0tkHc9aYUFMnfweXgOKftBS59/N2iy80LU5EVQu0SB9roO','2024-12-25 18:02:03','2024-12-25 18:02:03'),(68,'Aziz','azizbek234@gamil.com','$2y$10$HVrLAr/J38Et7jx3PU4Dner9vzACUeIBtclbEd4.V5qFdIo2SXIju','2024-12-25 18:02:35','2024-12-25 18:02:35'),(69,'Kamronjon','Kamronjon@gmail.com','$2y$10$4IJoyehDbd8uxtVtg1rEhuPJLKyzWwwlL95jf6nwTXIwngCz2k7QG','2024-12-26 16:01:22','2024-12-26 16:01:22'),(70,'Kamronjon','Kamronjonbekxon@gmail.com','$2y$10$Ffi4jrjKKN/1j/0jEx904.qqLT28Astl8dB5aY0Gx392/bviHfGkG','2024-12-26 16:01:53','2024-12-26 16:01:53'),(71,'Kamronjon','Kamronjonbekxon3@gmail.com','$2y$10$qGnwbsTmz1Xc9.XnTBkM3uPggZHBAQ1xIkFDxYd4IaKC3K/TIaKSe','2024-12-26 17:11:02','2024-12-26 17:11:02'),(72,'Kamronjon','Kamronjonbekxon35@gmail.com','$2y$10$JGgoiBjcojLU8vmgXwwSluy92xjI3THL0TyG2jELp4e95dNYm1Jsm','2024-12-26 17:15:29','2024-12-26 17:15:29'),(73,'Kamronjon','Kamronjonbekxon350@gmail.com','$2y$10$DDVZzPA769RIFIcJ9RDh/OxCUrQzdv7I/x7Wh2aWowM8b1zy2j9iS','2024-12-26 17:16:35','2024-12-26 17:16:35'),(74,'Kamronjon','Kamronjonbekxon9350@gmail.com','$2y$10$JlyTHJzxXE1iBwv0Kt0yle2v88EPjo7ae628Mjt0LJK7kk7t2DCoy','2024-12-26 17:29:47','2024-12-26 17:29:47'),(75,'Kamronjon','khan9350@gmail.com','$2y$10$7eLuaNvvX2yptCwrK2R2Ou/F.vngVh6S9ZQE4lRHW.wROra/NL5Ae','2024-12-26 17:30:13','2024-12-26 17:30:13'),(76,'Kamronjon','khan93501@gmail.com','$2y$10$U415A0tUwb61L7sxWawfzeSgrd.nLas5f0kkuXIHkOS4cUniOozWC','2024-12-26 17:44:10','2024-12-26 17:44:10'),(77,'ali','alii@gmail.com','1234',NULL,NULL),(78,'axror','axror7@gmail.com','$2y$10$W80Aykk1MMdC6WSKPJUfy.pr0vCV279ifuTuQOdtFuzeJnpE7OOj2','2025-01-08 19:47:24','2025-01-08 19:47:24'),(79,'Mexriddin','mehriddin@gmail.com','$2y$10$yVs7EETg1tkKlC80KEeeAuZnHhHj2vhbyQ3bwtJZANYI/qpY6f6Iq','2025-01-09 13:19:02','2025-01-09 13:19:02'),(81,'kimdir','kimdir@gmail.com','$2y$10$X7gKYSl2VkGtbc3RHwMgl.hH83hz5F0werZWFy0ESM/V0/E9Zmzxm','2025-01-09 13:19:31','2025-01-09 13:19:31'),(82,'kim','kimm@gmail.com','$2y$10$jPfNdadztcZTrJrsqFlxa.JxrHqGNkMhIH2NJPY5ySy9lGRXr0pJe','2025-01-09 13:20:29','2025-01-09 13:20:29'),(83,'lll','lll@gmail.com','$2y$10$w3280A90cJ8BJlERbsF7T.I5Jfak3ukgnurqV9ukZDk/PqnLqbFxy','2025-01-09 13:22:19','2025-01-09 13:22:19'),(84,'Mexriddin','mehriddin1@gmail.com','$2y$10$LDxQyc1Txsq6g9ltBpGIL.Cx2J4B9dxKld/cuMMKrd5fegeVV2keu','2025-01-15 17:01:45','2025-01-15 17:01:45'),(85,'aziz','aziz1@gmail.com','$2y$10$J7fwTq7PsOinqHjIJtHNb.aGU9J8WbjklyUOhqyNvT6aCpN5QF5Ym','2025-01-15 17:06:00','2025-01-15 17:06:00'),(86,'Mexriddin','mehriddin2@gmail.com','$2y$10$YWToQBIRUBbaI8xBxqJWWOB/L3ycuvI3AiWoZ7W/k.qkVujdm5SZy','2025-01-15 17:14:02','2025-01-15 17:14:02'),(97,'Mexriddin','mehriddin3@gmail.com','$2y$10$XDbCM3B5yrgvi1gQMqy0cOpKKKyRdpelYe8NF3FgR2tPmP9RQyHvW','2025-01-15 17:20:02','2025-01-15 17:20:02'),(98,'Mexriddin','mehriddin4@gmail.com','$2y$10$s8gB5uraLNXasQRqv5DDuesREjmdiUDySpwSVSju77hV.A41EE1Uy','2025-01-15 17:27:34','2025-01-15 17:27:34'),(99,'Mexriddin','mehriddin5@gmail.com','$2y$10$BZOFldEhF7LgtxIEmkh1O.anWffYKSzoRrVA1gSqxb/pcI5eHNMAy','2025-01-15 17:28:27','2025-01-15 17:28:27'),(100,'Mexriddin','mehriddin6@gmail.com','$2y$10$zhjPce2iIqjXuRFAZPtRau1WfTjZS5lNcDVZoaUXvQ7rHOe8yc2fi','2025-01-15 17:29:42','2025-01-15 17:29:42'),(101,'Mexriddin','mehriddin7@gmail.com','$2y$10$Gikyrv/adqsw5F0H6PMgwOuGNPRlI2FgfHThJsSVS.fyy6fvsR0IO','2025-01-15 17:31:32','2025-01-15 17:31:32'),(102,'Mexriddin','mehriddin8@gmail.com','$2y$10$hlPeLazQ8kpCBVmy.GzEFef2RLGunmc7KmBWfZhBZ5LsPU4OWMr8K','2025-01-15 17:38:23','2025-01-15 17:38:23'),(103,'Mexriddin','mehriddin9@gmail.com','$2y$10$rdnBxCdNYE.Lm43Dw1Jyo.THmJCilffwdEvycf7COWvn5waMLfL2K','2025-01-15 17:39:47','2025-01-15 17:39:47'),(104,'Mexriddin','m@gmail.com','$2y$10$bPtG7fmzsKqoEimFIWN.NecFvVFzrlcMi.SKaTPBp3bPR7Lq1Vp5C','2025-01-15 17:42:45','2025-01-15 17:42:45'),(105,'axror','axror8@gmail.com','$2y$10$czaUrOscuNJcUcdbpD22fuJwlOsTSOZ0yn49LPBFFdWqoKL68nJ3m','2025-01-15 17:48:07','2025-01-15 17:48:07'),(106,'Mexriddin','m11@gmail.com','$2y$10$3U4pBAS5m//bjqeyusCoVefNqX7mk/Y/N0nKMTrBKUQ63Clf0A5Xy','2025-01-15 17:50:08','2025-01-15 17:50:08'),(107,'a','c@gmail.com','$2y$10$GXMQ31CbdRj6rH./hVeRoOFXCXsLra2iNmKD9buiRTAP9UVpySiki','2025-01-15 17:51:30','2025-01-15 17:51:30'),(108,'d','d@gmail.com','$2y$10$Fg9SrzblY0dSd8PAW.jo0eyesR8YWcvra7GvwXIlzKgpebJCF6Ula','2025-01-15 17:52:41','2025-01-15 17:52:41'),(109,'z','x@gmail.com','$2y$10$eH.LpaHf6R512JadsjGn5uMEvxv23dXPADzK5DVUFj/r.Bsfj225.','2025-01-15 17:53:39','2025-01-15 17:53:39'),(110,'v','vv@gmail.com','$2y$10$FADFD6MFBXMzdglqJxkIgupIyJG2MajVFgSHDcLEqhnLbnynWcOYm','2025-01-15 17:56:03','2025-01-15 17:56:03'),(111,'n','nn@gmail.com','$2y$10$5.S1WQY96AN/FGOvZm.8Nu4WSZo5R4GbKsp4VirqS1sw5X.DhvGtS','2025-01-15 17:56:49','2025-01-15 17:56:49');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-20 16:46:06