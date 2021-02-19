-- MariaDB dump 10.18  Distrib 10.5.8-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: mymall
-- ------------------------------------------------------
-- Server version	10.5.8-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `seq` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `content` varchar(255) NOT NULL,
  `writer_id` varchar(10) NOT NULL,
  `reg_date` datetime NOT NULL,
  `mod_date` datetime DEFAULT NULL,
  PRIMARY KEY (`seq`) USING BTREE,
  KEY `fk_board_member_id` (`writer_id`),
  CONSTRAINT `fk_board_member_id` FOREIGN KEY (`writer_id`) REFERENCES `member` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'게시물1','내용','member5','2021-02-14 17:47:50',NULL),(2,'게시물2','내용','member5','2021-02-14 17:47:50',NULL),(3,'게시물3','내용','member5','2021-02-14 17:47:50',NULL),(4,'게시물4','내용','member5','2021-02-14 17:47:50',NULL),(5,'게시물5','내용','member5','2021-02-14 17:47:50',NULL),(6,'게시물6','내용','member5','2021-02-14 17:47:50',NULL),(7,'게시물7','내용','member5','2021-02-14 17:47:50',NULL),(8,'게시물8','내용','member5','2021-02-14 17:47:50',NULL),(9,'게시물9','내용','member5','2021-02-14 17:47:50',NULL),(10,'게시물10','바뀔거다','member5','2021-02-14 17:47:50','2021-02-15 14:37:05'),(11,'게시물11','내용','member5','2021-02-14 17:47:50',NULL),(12,'게시물12','내용','member5','2021-02-14 17:47:50',NULL),(13,'게시물13','내용','member5','2021-02-14 17:47:50',NULL),(14,'게시물14','내용','member5','2021-02-14 17:47:50',NULL),(15,'게시물15','내용','member5','2021-02-14 17:47:50',NULL),(16,'게시물16','내용','member5','2021-02-14 17:47:50',NULL),(17,'게시물17','내용','member5','2021-02-14 17:47:50',NULL),(18,'게시물18','내용','member5','2021-02-14 17:47:50',NULL),(19,'게시물19','내용','member5','2021-02-14 17:47:50',NULL),(20,'게시물20','내용','member5','2021-02-14 17:47:50',NULL),(21,'게시물21','내용','member5','2021-02-14 17:47:50',NULL),(22,'게시물22','내용','member5','2021-02-14 17:47:50',NULL),(23,'게시물23','내용','member5','2021-02-14 17:47:50',NULL),(24,'게시물24','내용','member5','2021-02-14 17:47:50',NULL),(25,'게시물25','내용','member5','2021-02-14 17:47:50',NULL),(26,'게시물26','내용','member5','2021-02-14 17:47:50',NULL),(27,'게시물27','내용','member5','2021-02-14 17:47:50',NULL),(28,'게시물28','내용','member5','2021-02-14 17:47:50',NULL),(29,'게시물29','내용','member5','2021-02-14 17:47:50',NULL),(30,'게시물30','내용','member5','2021-02-14 17:47:50',NULL),(31,'게시물31','내용','member5','2021-02-14 17:47:50',NULL),(32,'게시물32','내용','member5','2021-02-14 17:47:50',NULL),(33,'게시물33','내용','member5','2021-02-14 17:47:50',NULL),(34,'게시물34','내용','member5','2021-02-14 17:47:50',NULL),(35,'게시물35','내용','member5','2021-02-14 17:47:50',NULL),(36,'게시물36','내용','member5','2021-02-14 17:47:50',NULL),(37,'게시물37','내용','member5','2021-02-14 17:47:50',NULL),(38,'게시물38','내용','member5','2021-02-14 17:47:50',NULL),(39,'게시물39','내용','member5','2021-02-14 17:47:50',NULL),(40,'게시물40','내용','member5','2021-02-14 17:47:50',NULL),(41,'게시물41','내용','member5','2021-02-14 17:47:50',NULL),(42,'게시물42','내용','member5','2021-02-14 17:47:50',NULL),(43,'게시물43','내용','member5','2021-02-14 17:47:50',NULL),(44,'게시물44','내용','member5','2021-02-14 17:47:50',NULL),(45,'게시물45','내용','member5','2021-02-14 17:47:50',NULL),(46,'게시물46','내용','member5','2021-02-14 17:47:50',NULL),(47,'게시물47','내용','member5','2021-02-14 17:47:50',NULL),(48,'게시물48','내용','member5','2021-02-14 17:47:50',NULL),(49,'게시물49','내용','member5','2021-02-14 17:47:50',NULL),(50,'게시물50','내용','member5','2021-02-14 17:47:50',NULL),(51,'게시물51','내용','member5','2021-02-14 17:47:50',NULL),(52,'게시물52','내용','member5','2021-02-14 17:47:50',NULL),(53,'게시물53','내용','member5','2021-02-14 17:47:50',NULL),(54,'게시물54','내용','member5','2021-02-14 17:47:50',NULL),(55,'게시물55','내용','member5','2021-02-14 17:47:50',NULL),(56,'게시물56','내용','member5','2021-02-14 17:47:50',NULL),(57,'게시물57','내용','member5','2021-02-14 17:47:50',NULL),(58,'게시물58','내용','member5','2021-02-14 17:47:50',NULL),(59,'게시물59','내용','member5','2021-02-14 17:47:50',NULL),(60,'게시물60','내용','member5','2021-02-14 17:47:50',NULL),(61,'게시물61','내용','member5','2021-02-14 17:47:50',NULL),(62,'게시물62','내용','member5','2021-02-14 17:47:50',NULL),(63,'게시물63','내용','member5','2021-02-14 17:47:50',NULL),(64,'게시물64','내용','member5','2021-02-14 17:47:50',NULL),(65,'게시물65','내용','member5','2021-02-14 17:47:50',NULL),(66,'게시물66','내용','member5','2021-02-14 17:47:50',NULL),(67,'게시물67','내용','member5','2021-02-14 17:47:50',NULL),(68,'게시물68','내용','member5','2021-02-14 17:47:50',NULL),(69,'게시물69','내용','member5','2021-02-14 17:47:50',NULL),(70,'게시물70','내용','member5','2021-02-14 17:47:50',NULL),(71,'게시물71','내용','member5','2021-02-14 17:47:50',NULL),(72,'게시물72','내용','member5','2021-02-14 17:47:50',NULL),(73,'게시물73','내용','member5','2021-02-14 17:47:50',NULL),(74,'게시물74','내용','member5','2021-02-14 17:47:50',NULL),(75,'게시물75','내용','member5','2021-02-14 17:47:50',NULL),(76,'게시물76','내용','member5','2021-02-14 17:47:50',NULL),(77,'게시물77','내용','member5','2021-02-14 17:47:50',NULL),(78,'게시물78','내용','member5','2021-02-14 17:47:50',NULL),(79,'게시물79','내용','member5','2021-02-14 17:47:50',NULL),(80,'게시물80','내용','member5','2021-02-14 17:47:50',NULL),(81,'게시물81','내용','member5','2021-02-14 17:47:50',NULL),(82,'게시물82','내용','member5','2021-02-14 17:47:50',NULL),(83,'게시물83','내용','member5','2021-02-14 17:47:50',NULL),(84,'게시물84','내용','member5','2021-02-14 17:47:50',NULL),(85,'게시물85','내용','member5','2021-02-14 17:47:50',NULL),(86,'게시물86','내용','member5','2021-02-14 17:47:50',NULL),(87,'게시물87','내용','member5','2021-02-14 17:47:50',NULL),(88,'게시물88','내용','member5','2021-02-14 17:47:50',NULL),(89,'게시물89','내용','member5','2021-02-14 17:47:50',NULL),(90,'게시물90','내용','member5','2021-02-14 17:47:50',NULL),(91,'게시물91','내용','member5','2021-02-14 17:47:50',NULL),(92,'게시물92','내용','member5','2021-02-14 17:47:50',NULL),(93,'게시물93','내용','member5','2021-02-14 17:47:50',NULL),(94,'게시물94','내용','member5','2021-02-14 17:47:50',NULL),(95,'게시물95','내용','member5','2021-02-14 17:47:50',NULL),(96,'게시물96','내용','member5','2021-02-14 17:47:50',NULL),(97,'게시물97','내용','member5','2021-02-14 17:47:50',NULL),(98,'게시물98','내용','member5','2021-02-14 17:47:50',NULL),(99,'게시물99','내용','member5','2021-02-14 17:47:50',NULL),(100,'게시물100','내용','member5','2021-02-14 17:47:50',NULL),(101,'테스트 타이틀','테스트 컨텐트','member7','2021-02-15 02:24:27','2021-02-15 02:24:27'),(102,'테스트 타이틀','테스트 컨텐트','member7','2021-02-15 02:28:24','2021-02-15 02:28:24'),(103,'테스트 타이틀','테스트 컨텐트','member7','2021-02-15 02:32:56','2021-02-15 02:32:56'),(106,'테스트 타이틀','테스트 컨텐트','member7','2021-02-15 13:23:47','2021-02-15 13:23:47'),(109,'테스트 타이틀','테스트 컨텐트','member7','2021-02-15 13:25:37','2021-02-15 13:25:37'),(110,'테스트 타이틀','테스트 컨텐트','member7','2021-02-15 13:26:25','2021-02-15 13:26:25'),(112,'테스트 타이틀','테스트 컨텐트','member7','2021-02-15 13:27:40','2021-02-15 13:27:40'),(113,'보드 단위 테스트','내용','member8','2021-02-15 15:35:21','2021-02-15 15:35:21'),(114,'보드 단위 테스트','내용','member8','2021-02-15 15:45:57','2021-02-15 15:45:57'),(115,'테스트 타이틀','테스트 컨텐트','member7','2021-02-15 15:45:58','2021-02-15 15:45:58'),(116,'테스트 타이틀','테스트 컨텐트','member7','2021-02-15 15:45:58','2021-02-15 15:45:58'),(117,'보드 단위 테스트','내용','member8','2021-02-16 13:27:45','2021-02-16 13:27:45'),(118,'테스트 타이틀','테스트 컨텐트','member7','2021-02-16 13:27:46','2021-02-16 13:27:46'),(119,'테스트 타이틀','테스트 컨텐트','member7','2021-02-16 13:27:46','2021-02-16 13:27:46'),(120,'보드 단위 테스트','내용','member8','2021-02-16 13:36:33','2021-02-16 13:36:33'),(121,'테스트 타이틀','테스트 컨텐트','member7','2021-02-16 13:36:33','2021-02-16 13:36:33'),(122,'테스트 타이틀','테스트 컨텐트','member7','2021-02-16 13:36:33','2021-02-16 13:36:33'),(123,'보드 단위 테스트','내용','member8','2021-02-16 13:37:21','2021-02-16 13:37:21'),(124,'테스트 타이틀','테스트 컨텐트','member7','2021-02-16 13:37:21','2021-02-16 13:37:21'),(125,'테스트 타이틀','테스트 컨텐트','member7','2021-02-16 13:37:21','2021-02-16 13:37:21'),(126,'보드 단위 테스트','내용','member8','2021-02-16 13:38:30','2021-02-16 13:38:30'),(127,'테스트 타이틀','테스트 컨텐트','member7','2021-02-16 13:38:31','2021-02-16 13:38:31'),(128,'테스트 타이틀','테스트 컨텐트','member7','2021-02-16 13:38:31','2021-02-16 13:38:31'),(129,'보드 단위 테스트','내용','member8','2021-02-17 11:30:40','2021-02-17 11:30:40'),(130,'보드 단위 테스트','내용12212','member8','2021-02-17 11:32:26','2021-02-17 11:32:26'),(131,'보드 단위 테스트','내용','member8','2021-02-17 11:49:08','2021-02-17 11:49:08'),(132,'테스트 타이틀','테스트 컨텐트','member7','2021-02-17 11:49:09','2021-02-17 11:49:09'),(133,'테스트 타이틀','테스트 컨텐트','member7','2021-02-17 11:49:09','2021-02-17 11:49:09'),(134,'보드 단위 테스트','내용','member8','2021-02-17 13:33:51','2021-02-17 13:33:51'),(135,'테스트 타이틀','테스트 컨텐트','member7','2021-02-17 13:33:51','2021-02-17 13:33:51'),(136,'테스트 타이틀','테스트 컨텐트','member7','2021-02-17 13:33:51','2021-02-17 13:33:51'),(137,'보드 단위 테스트','내용','member8','2021-02-17 13:34:41','2021-02-17 13:34:41'),(139,'테스트 타이틀','테스트 컨텐트','member7','2021-02-17 13:34:41','2021-02-17 13:34:41'),(141,'141','ddd','member9','2021-02-17 14:04:54','2021-02-17 14:04:54');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` varchar(10) NOT NULL,
  `pwd` varchar(8) NOT NULL,
  `nick` varchar(8) NOT NULL,
  `base_address` varchar(20) NOT NULL DEFAULT '',
  `detail_address` varchar(20) NOT NULL DEFAULT '',
  `phone_number` varchar(11) NOT NULL,
  `reg_date` datetime NOT NULL,
  `mod_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('member1','qwer1234','nick1','기본주소','상세주소','010101031','2021-02-02 00:00:00',NULL),('member10','qwer1234','nick10','기본주소','상세주소','010101031','2021-02-02 00:00:00',NULL),('member2','qwer1234','nick2','기본주소','상세주소','010101031','2021-02-02 00:00:00',NULL),('member3','qwer1234','nick3','기본주소','상세주소','010101031','2021-02-02 00:00:00',NULL),('member4','qwer1234','nick4','기본주소','상세주소','010101031','2021-02-02 00:00:00',NULL),('member5','qwer1234','nick5','기본주소','상세주소','010101031','2021-02-02 00:00:00',NULL),('member6','qwer1234','nick6','기본주소','상세주소','010101031','2021-02-02 00:00:00',NULL),('member7','qwer1234','nick7','기본주소','상세주소','010101031','2021-02-02 00:00:00',NULL),('member8','qwer1234','nick8','기본주소','상세주소','010101031','2021-02-02 00:00:00',NULL),('member9','qwer1234','nick9','기본주소','상세주소','010101031','2021-02-02 00:00:00',NULL);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply` (
  `seq` bigint(20) NOT NULL AUTO_INCREMENT,
  `board_seq` bigint(20) NOT NULL,
  `content` varchar(50) NOT NULL,
  `replyer` varchar(12) NOT NULL,
  `reg_date` datetime NOT NULL,
  `mod_date` datetime DEFAULT NULL,
  PRIMARY KEY (`seq`),
  KEY `fk_reply_board_seq` (`board_seq`),
  CONSTRAINT `fk_reply_board_seq` FOREIGN KEY (`board_seq`) REFERENCES `board` (`seq`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` VALUES (1,5,'내용1','member10','2021-02-14 17:59:49',NULL),(2,5,'내용2','member10','2021-02-14 17:59:49',NULL),(3,5,'내용3','member10','2021-02-14 17:59:49',NULL),(4,5,'내용4','member10','2021-02-14 17:59:49',NULL),(5,5,'내용5','member10','2021-02-14 17:59:49',NULL),(6,5,'내용6','member10','2021-02-14 17:59:49',NULL),(7,5,'내용7','member10','2021-02-14 17:59:49',NULL),(8,5,'내용8','member10','2021-02-14 17:59:49',NULL),(9,5,'내용9','member10','2021-02-14 17:59:49',NULL),(10,5,'내용10','member10','2021-02-14 17:59:49',NULL),(11,5,'내용11','member10','2021-02-14 17:59:49',NULL),(12,5,'내용12','member10','2021-02-14 17:59:49',NULL),(13,5,'내용13','member10','2021-02-14 17:59:49',NULL),(14,5,'내용14','member10','2021-02-14 17:59:49',NULL),(15,5,'내용15','member10','2021-02-14 17:59:49',NULL),(16,5,'내용16','member10','2021-02-14 17:59:49',NULL),(17,5,'내용17','member10','2021-02-14 17:59:49',NULL),(18,5,'내용18','member10','2021-02-14 17:59:49',NULL),(19,5,'내용19','member10','2021-02-14 17:59:49',NULL),(20,5,'내용20','member10','2021-02-14 17:59:49',NULL),(21,5,'내용21','member10','2021-02-14 17:59:49',NULL),(22,5,'내용22','member10','2021-02-14 17:59:49',NULL),(23,5,'내용23','member10','2021-02-14 17:59:49',NULL),(24,5,'내용24','member10','2021-02-14 17:59:49',NULL),(25,5,'내용25','member10','2021-02-14 17:59:49',NULL),(26,5,'내용26','member10','2021-02-14 17:59:49',NULL),(27,5,'내용27','member10','2021-02-14 17:59:49',NULL),(28,5,'내용28','member10','2021-02-14 17:59:49',NULL),(29,5,'내용29','member10','2021-02-14 17:59:49',NULL),(30,5,'내용30','member10','2021-02-14 17:59:49',NULL),(31,5,'내용31','member10','2021-02-14 17:59:49',NULL),(32,5,'내용32','member10','2021-02-14 17:59:49',NULL),(33,5,'내용33','member10','2021-02-14 17:59:49',NULL),(34,5,'내용34','member10','2021-02-14 17:59:49',NULL),(35,5,'내용35','member10','2021-02-14 17:59:49',NULL),(36,5,'내용36','member10','2021-02-14 17:59:49',NULL),(37,5,'내용37','member10','2021-02-14 17:59:49',NULL),(38,5,'내용38','member10','2021-02-14 17:59:49',NULL),(39,5,'내용39','member10','2021-02-14 17:59:49',NULL),(40,5,'내용40','member10','2021-02-14 17:59:49',NULL),(41,5,'내용41','member10','2021-02-14 17:59:49',NULL),(42,5,'내용42','member10','2021-02-14 17:59:49',NULL),(43,5,'내용43','member10','2021-02-14 17:59:49',NULL),(44,5,'내용44','member10','2021-02-14 17:59:49',NULL),(45,5,'내용45','member10','2021-02-14 17:59:49',NULL),(46,5,'내용46','member10','2021-02-14 17:59:49',NULL),(47,5,'내용47','member10','2021-02-14 17:59:49',NULL),(48,5,'내용48','member10','2021-02-14 17:59:49',NULL),(49,5,'내용49','member10','2021-02-14 17:59:49',NULL),(50,5,'내용50','member10','2021-02-14 17:59:49',NULL),(51,5,'내용51','member10','2021-02-14 17:59:49',NULL),(52,5,'내용52','member10','2021-02-14 17:59:49',NULL),(53,5,'내용53','member10','2021-02-14 17:59:49',NULL),(54,5,'내용54','member10','2021-02-14 17:59:49',NULL),(55,5,'내용55','member10','2021-02-14 17:59:49',NULL),(56,5,'내용56','member10','2021-02-14 17:59:49',NULL),(57,5,'내용57','member10','2021-02-14 17:59:49',NULL),(58,5,'내용58','member10','2021-02-14 17:59:49',NULL),(59,5,'내용59','member10','2021-02-14 17:59:49',NULL),(60,5,'내용60','member10','2021-02-14 17:59:49',NULL),(61,5,'내용61','member10','2021-02-14 17:59:49',NULL),(62,5,'내용62','member10','2021-02-14 17:59:49',NULL),(63,5,'내용63','member10','2021-02-14 17:59:49',NULL),(64,5,'내용64','member10','2021-02-14 17:59:49',NULL),(65,5,'내용65','member10','2021-02-14 17:59:49',NULL),(66,5,'내용66','member10','2021-02-14 17:59:49',NULL),(67,5,'내용67','member10','2021-02-14 17:59:49',NULL),(68,5,'내용68','member10','2021-02-14 17:59:49',NULL),(69,5,'내용69','member10','2021-02-14 17:59:49',NULL),(70,5,'내용70','member10','2021-02-14 17:59:49',NULL),(71,5,'내용71','member10','2021-02-14 17:59:49',NULL),(72,5,'내용72','member10','2021-02-14 17:59:49',NULL),(73,5,'내용73','member10','2021-02-14 17:59:49',NULL),(74,5,'내용74','member10','2021-02-14 17:59:49',NULL),(75,5,'내용75','member10','2021-02-14 17:59:49',NULL),(76,5,'내용76','member10','2021-02-14 17:59:49',NULL),(77,5,'내용77','member10','2021-02-14 17:59:49',NULL),(78,5,'내용78','member10','2021-02-14 17:59:49',NULL),(79,5,'내용79','member10','2021-02-14 17:59:49',NULL),(80,5,'내용80','member10','2021-02-14 17:59:49',NULL),(81,5,'내용81','member10','2021-02-14 17:59:49',NULL),(82,5,'내용82','member10','2021-02-14 17:59:49',NULL),(83,5,'내용83','member10','2021-02-14 17:59:49',NULL),(84,5,'내용84','member10','2021-02-14 17:59:49',NULL),(85,5,'내용85','member10','2021-02-14 17:59:49',NULL),(86,5,'내용86','member10','2021-02-14 17:59:49',NULL),(87,5,'내용87','member10','2021-02-14 17:59:49',NULL),(88,5,'내용88','member10','2021-02-14 17:59:49',NULL),(89,5,'내용89','member10','2021-02-14 17:59:49',NULL),(90,5,'내용90','member10','2021-02-14 17:59:49',NULL),(91,5,'내용91','member10','2021-02-14 17:59:49',NULL),(92,5,'내용92','member10','2021-02-14 17:59:49',NULL),(93,5,'내용93','member10','2021-02-14 17:59:49',NULL),(94,5,'내용94','member10','2021-02-14 17:59:49',NULL),(95,5,'내용95','member10','2021-02-14 17:59:49',NULL),(96,5,'내용96','member10','2021-02-14 17:59:49',NULL),(97,5,'내용97','member10','2021-02-14 17:59:49',NULL),(98,5,'내용98','member10','2021-02-14 17:59:49',NULL),(99,5,'내용99','member10','2021-02-14 17:59:49',NULL),(100,5,'내용100','member10','2021-02-14 17:59:49',NULL),(101,7,'내용101','member11','2021-02-14 18:00:23',NULL),(102,7,'내용102','member11','2021-02-14 18:00:23',NULL),(103,7,'내용103','member11','2021-02-14 18:00:23',NULL),(104,7,'내용104','member11','2021-02-14 18:00:23',NULL),(105,7,'내용105','member11','2021-02-14 18:00:23',NULL),(106,7,'내용106','member11','2021-02-14 18:00:23',NULL),(107,7,'내용107','member11','2021-02-14 18:00:23',NULL),(108,7,'내용108','member11','2021-02-14 18:00:23',NULL),(109,7,'내용109','member11','2021-02-14 18:00:23',NULL),(110,7,'내용110','member11','2021-02-14 18:00:23',NULL),(111,7,'내용111','member11','2021-02-14 18:00:23',NULL),(112,7,'내용112','member11','2021-02-14 18:00:23',NULL),(113,7,'내용113','member11','2021-02-14 18:00:23',NULL),(114,7,'내용114','member11','2021-02-14 18:00:23',NULL),(115,7,'내용115','member11','2021-02-14 18:00:23',NULL),(116,7,'내용116','member11','2021-02-14 18:00:23',NULL),(117,7,'내용117','member11','2021-02-14 18:00:23',NULL),(118,7,'내용118','member11','2021-02-14 18:00:23',NULL),(119,7,'내용119','member11','2021-02-14 18:00:23',NULL),(120,7,'내용120','member11','2021-02-14 18:00:23',NULL),(121,7,'내용121','member11','2021-02-14 18:00:23',NULL),(122,7,'내용122','member11','2021-02-14 18:00:23',NULL),(123,7,'내용123','member11','2021-02-14 18:00:23',NULL),(124,7,'내용124','member11','2021-02-14 18:00:23',NULL),(125,7,'내용125','member11','2021-02-14 18:00:23',NULL),(126,7,'내용126','member11','2021-02-14 18:00:23',NULL),(127,7,'내용127','member11','2021-02-14 18:00:23',NULL),(128,7,'내용128','member11','2021-02-14 18:00:23',NULL),(129,7,'내용129','member11','2021-02-14 18:00:23',NULL),(130,7,'내용130','member11','2021-02-14 18:00:23',NULL),(131,7,'내용131','member11','2021-02-14 18:00:23',NULL),(132,7,'내용132','member11','2021-02-14 18:00:23',NULL),(133,7,'내용133','member11','2021-02-14 18:00:23',NULL),(134,7,'내용134','member11','2021-02-14 18:00:23',NULL),(135,7,'내용135','member11','2021-02-14 18:00:23',NULL),(136,7,'내용136','member11','2021-02-14 18:00:23',NULL),(137,7,'내용137','member11','2021-02-14 18:00:23',NULL),(138,7,'내용138','member11','2021-02-14 18:00:23',NULL),(139,7,'내용139','member11','2021-02-14 18:00:23',NULL),(140,7,'내용140','member11','2021-02-14 18:00:23',NULL),(141,7,'내용141','member11','2021-02-14 18:00:23',NULL),(142,7,'내용142','member11','2021-02-14 18:00:23',NULL),(143,7,'내용143','member11','2021-02-14 18:00:23',NULL),(144,7,'내용144','member11','2021-02-14 18:00:23',NULL),(145,7,'내용145','member11','2021-02-14 18:00:23',NULL),(146,7,'내용146','member11','2021-02-14 18:00:23',NULL),(147,7,'내용147','member11','2021-02-14 18:00:23',NULL),(148,7,'내용148','member11','2021-02-14 18:00:23',NULL),(149,7,'내용149','member11','2021-02-14 18:00:23',NULL),(150,7,'내용150','member11','2021-02-14 18:00:23',NULL),(151,7,'내용151','member11','2021-02-14 18:00:23',NULL),(152,7,'내용152','member11','2021-02-14 18:00:23',NULL),(153,7,'내용153','member11','2021-02-14 18:00:23',NULL),(154,7,'내용154','member11','2021-02-14 18:00:23',NULL),(155,7,'내용155','member11','2021-02-14 18:00:23',NULL),(156,7,'내용156','member11','2021-02-14 18:00:23',NULL),(157,7,'내용157','member11','2021-02-14 18:00:23',NULL),(158,7,'내용158','member11','2021-02-14 18:00:23',NULL),(159,7,'내용159','member11','2021-02-14 18:00:23',NULL),(160,7,'내용160','member11','2021-02-14 18:00:23',NULL),(161,7,'내용161','member11','2021-02-14 18:00:23',NULL),(162,7,'내용162','member11','2021-02-14 18:00:23',NULL),(163,7,'내용163','member11','2021-02-14 18:00:23',NULL),(164,7,'내용164','member11','2021-02-14 18:00:23',NULL),(165,7,'내용165','member11','2021-02-14 18:00:23',NULL),(166,7,'내용166','member11','2021-02-14 18:00:23',NULL),(167,7,'내용167','member11','2021-02-14 18:00:23',NULL),(168,7,'내용168','member11','2021-02-14 18:00:23',NULL),(169,7,'내용169','member11','2021-02-14 18:00:23',NULL),(170,7,'내용170','member11','2021-02-14 18:00:23',NULL),(171,7,'내용171','member11','2021-02-14 18:00:23',NULL),(172,7,'내용172','member11','2021-02-14 18:00:23',NULL),(173,7,'내용173','member11','2021-02-14 18:00:23',NULL),(174,7,'내용174','member11','2021-02-14 18:00:23',NULL),(175,7,'내용175','member11','2021-02-14 18:00:23',NULL),(176,7,'내용176','member11','2021-02-14 18:00:23',NULL),(177,7,'내용177','member11','2021-02-14 18:00:23',NULL),(178,7,'내용178','member11','2021-02-14 18:00:23',NULL),(179,7,'내용179','member11','2021-02-14 18:00:23',NULL),(180,7,'내용180','member11','2021-02-14 18:00:23',NULL),(181,7,'내용181','member11','2021-02-14 18:00:23',NULL),(182,7,'내용182','member11','2021-02-14 18:00:23',NULL),(183,7,'내용183','member11','2021-02-14 18:00:23',NULL),(184,7,'내용184','member11','2021-02-14 18:00:23',NULL),(185,7,'내용185','member11','2021-02-14 18:00:23',NULL),(186,7,'내용186','member11','2021-02-14 18:00:23',NULL),(187,7,'내용187','member11','2021-02-14 18:00:23',NULL),(188,7,'내용188','member11','2021-02-14 18:00:23',NULL),(189,7,'내용189','member11','2021-02-14 18:00:23',NULL),(190,7,'내용190','member11','2021-02-14 18:00:23',NULL),(191,7,'내용191','member11','2021-02-14 18:00:23',NULL),(192,7,'내용192','member11','2021-02-14 18:00:23',NULL),(193,7,'내용193','member11','2021-02-14 18:00:23',NULL),(194,7,'내용194','member11','2021-02-14 18:00:23',NULL),(195,7,'내용195','member11','2021-02-14 18:00:23',NULL),(196,7,'내용196','member11','2021-02-14 18:00:23',NULL),(197,7,'내용197','member11','2021-02-14 18:00:23',NULL),(198,7,'내용198','member11','2021-02-14 18:00:23',NULL),(199,7,'내용199','member11','2021-02-14 18:00:23',NULL),(200,7,'내용200','member11','2021-02-14 18:00:23',NULL);
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mod_date` datetime(6) DEFAULT NULL,
  `reg_date` datetime(6) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'2021-02-18 14:24:46.220523','2021-02-18 14:24:46.220523','unool6976@gmail.com','김영현','https://lh3.googleusercontent.com/-TTKNFsGLQTE/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucnd1FAgrr_fmeRhvtrTa6uS5ZuaNQ/s96-c/photo.jpg','GUEST');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mymall'
--
/*!50003 DROP PROCEDURE IF EXISTS `InsertBoard100` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertBoard100`(IN startIdx INT,IN id VARCHAR(10))
BEGIN 
DECLARE i INT DEFAULT startIdx; 
DECLARE untill INT DEFAULT startIdx + 99; 

WHILE i <= untill DO  

INSERT INTO `mymall`.`board`
(`seq`,
`title`,
`content`,
`writer_id`,
`reg_date`,
`mod_date`)
VALUES
(NULL,
CONCAT('게시물',i),
'내용',
id,
NOW(),
null);

SET i = i + 1; 

END WHILE; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertMember10` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertMember10`(IN startIdx INT)
BEGIN 
DECLARE i INT DEFAULT startIdx; 
DECLARE utill INT DEFAULT startIdx+9; 

WHILE i <= utill DO  

   INSERT INTO `mymall`.`member` 
(`seq`,`id`,`pwd`,`nick`,`base_address`,`detail_address`,`phone_number`,`reg_date`,`mod_date`) 
VALUES 
(null,concat('member',i),'qwer1234',concat('nick',i),'기본주소','상세주소','010101031','2021-02-02',null); /* 닉네임에 var라는 인자를 넣어서 쿼리 완성 */

SET i = i + 1; 

END WHILE; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertReply100` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertReply100`(IN startIdx INT, IN boardseq INT ,IN rep VARCHAR(10))
BEGIN
DECLARE i INT DEFAULT startIdx;
DECLARE utill INT DEFAULT startIdx + 99;

WHILE i <= utill DO 

INSERT INTO `mymall`.`reply`
(`seq`,
`board_seq`,
`content`,
`replyer`,
`reg_date`,
`mod_date`)
VALUES
(null,
boardseq,
CONCAT('내용',i),
rep,
NOW(),
null);



SET i = i + 1;
END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-19 16:11:43
