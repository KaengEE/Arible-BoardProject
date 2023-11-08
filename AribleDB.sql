CREATE DATABASE  IF NOT EXISTS `minipj` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `minipj`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: minipj
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `content_idx` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `writer_idx` int NOT NULL,
  `regDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `count` int DEFAULT '0',
  `board_idx` int DEFAULT NULL,
  `content` varchar(500) NOT NULL,
  PRIMARY KEY (`content_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'제목',0,NULL,0,3,'<p>내용</p>'),(2,'가나다라마바사',0,NULL,0,2,'<p><b>가나다라</b></p>'),(6,'무슨게시판제목',4,'2023-11-03 15:06:53',36,3,'<p><u>무슨게시판밑줄</u></p>'),(7,'가나다라7',3,'2023-11-03 16:35:51',25,2,'<p>가나다라2</p>'),(10,'작성테스트1',3,'2023-11-06 10:10:48',13,1,'<p>작성테스트</p>'),(11,'테스트1',3,'2023-11-06 13:52:03',1,3,'<p>테스트1테스트1테스트1테스트1테스트1<br></p>'),(12,'테스트1',3,'2023-11-06 13:52:08',0,3,'<p>테스트1테스트1테스트1테스트1테스트1<br></p>'),(13,'테스트2',3,'2023-11-06 13:52:16',3,3,'<p>테스트2테스트2테스트2테스트2<span style=\"background-color: rgb(255, 255, 0);\">테스트2테스트2테스트2</span><br></p>'),(14,'테스트2',3,'2023-11-06 13:52:27',1,3,'<p>테스트2테스트2테스트2테스트2테스트2테스트2<br></p>'),(15,'테스트3',3,'2023-11-06 13:52:34',0,3,'<p>테스트3테스트3<br></p>'),(16,'테스트3',3,'2023-11-06 13:52:41',0,3,'<p>테스트3테스트3테스트3테스트3테스트3<br></p>'),(17,'테스트3',3,'2023-11-06 13:52:45',0,3,'<p>테스트3테스트3<br></p>'),(18,'테스트3',3,'2023-11-06 13:52:49',0,3,'<p>테스트3테스트3테스트3테스트3<br></p>'),(19,'테스트44',3,'2023-11-06 13:52:59',4,2,'<p>테스트3테스트3<br></p>'),(20,'테스트4',3,'2023-11-06 13:53:07',0,2,'<p>테스트4테스트4<br></p>'),(21,'테스트4',3,'2023-11-06 13:53:11',0,2,'<p>테스트4테스트4테스트4<br></p>'),(22,'테스트4테스트4',3,'2023-11-06 13:53:15',0,2,'<p>테스트4테스트4테스트4<br></p>'),(23,'테스트5',3,'2023-11-06 13:53:21',0,2,'<p>테스트5테스트5테스트5테스트5<br></p>'),(24,'테스트5',3,'2023-11-06 13:53:25',0,2,'<p>테스트5테스트5테스트5테스트5테스트5<br></p>'),(25,'빨간색',3,'2023-11-07 16:26:31',1,2,'<p><font color=\"#ff0000\">빨간색</font><br></p>'),(26,'표작성',3,'2023-11-08 14:08:13',3,3,'<p><br></p><table class=\"table table-bordered\"><tbody><tr><td><br></td><td>가나다라</td><td>마바사</td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td>테이블</td><td>테스트</td><td><br></td></tr></tbody></table><p><br></p>'),(27,'링크',3,'2023-11-08 14:09:09',1,3,'<p><a href=\"http://www.naver.com\" target=\"_blank\">네이버</a><br></p>'),(29,'목록테스트',3,'2023-11-08 14:14:23',1,1,'<ul><li>123</li><li>목록</li></ul>'),(30,'글정렬',3,'2023-11-08 14:14:38',1,1,'<p style=\"text-align: center; \">가운데정렬</p>'),(31,'코드소스입력',3,'2023-11-08 14:18:32',3,1,'<pre>&lt;h1&gt;코드입력&lt;h1&gt;</pre><p>&lt;h1&gt;글자입력&lt;h1&gt;</p>'),(32,'글작성',5,'2023-11-08 14:21:28',3,1,'<p>이 블로그를 추천합니다!</p><p><a href=\"https://blog.naver.com/drv982/222920654635\" target=\"_blank\">https://blog.naver.com/drv982/222920654635</a><br></p>');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `info` (
  `info_idx` int NOT NULL AUTO_INCREMENT,
  `info_title` varchar(45) DEFAULT NULL,
  `info_content` varchar(45) DEFAULT NULL,
  `info_writer_idx` varchar(45) NOT NULL,
  `regDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `info_file` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`info_idx`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info`
--

LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
INSERT INTO `info` VALUES (7,'테스트1수정','테스트1테스트1테스트1테스트1','3','2023-11-07 12:31:12','1699333918783_3.jpg'),(4,'테스트1','123456','3','2023-11-06 11:26:38','1699237598973_1.jpg');
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `board_idx` int NOT NULL AUTO_INCREMENT,
  `board_name` varchar(500) NOT NULL,
  `board_title` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`board_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'추천블로그','추천하고싶은 블로그에 대해 이야기해요'),(2,'자유게시판','자유로운 주제로 이야기해요'),(3,'나만의꿀팁','나만의 꿀팁을 공유해요');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qna`
--

DROP TABLE IF EXISTS `qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qna` (
  `qna_idx` int NOT NULL AUTO_INCREMENT,
  `question` varchar(500) DEFAULT NULL,
  `answer` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`qna_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qna`
--

LOCK TABLES `qna` WRITE;
/*!40000 ALTER TABLE `qna` DISABLE KEYS */;
INSERT INTO `qna` VALUES (1,'운영시간이 어떻게 되나요?','월~금 오전9시부터 오후6시까지입니다.'),(2,'고객센터전화번호를 알고싶어요','1111-1111로 연락주시거나 abcd@naver.com에 문의 남겨주시기 바랍니다.'),(3,'선정기준이 어떻게 되나요?','블로그 선정기준은 방문자수, 블로그지수, 공감수 등으로 선정하고 있습니다.');
/*!40000 ALTER TABLE `qna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reply` (
  `reply_idx` int NOT NULL AUTO_INCREMENT,
  `reply` varchar(45) DEFAULT NULL,
  `reply_writer_idx` varchar(45) DEFAULT NULL,
  `reply_regDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `content_idx` int NOT NULL,
  PRIMARY KEY (`reply_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` VALUES (2,'댓글2','4','2023-11-06 12:27:01',10),(6,'테스트','3','2023-11-06 12:51:52',8),(10,'123','3','2023-11-06 13:36:03',6),(11,'테스트','4','2023-11-06 13:39:22',8),(12,'테스트','4','2023-11-06 13:46:27',6),(13,'정말재밌네요','3','2023-11-07 15:50:37',5),(14,'댓글수정','3','2023-11-07 15:56:10',7);
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userno` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `id` varchar(45) NOT NULL,
  `pw` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `age` varchar(45) DEFAULT NULL,
  `blog` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userno`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'펭수','peng','1234','peng@naver.com','22','peng123.blog'),(4,'홍길순','hong1','1234','hong1@naver.com','19','hong.blog'),(5,'김삿갓','kim123','1234','kim123@naver.com','55','kim123.blog'),(6,'강남순','gang','1234','gang@naver.com','22','gang.blog');
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

-- Dump completed on 2023-11-08 15:53:43
