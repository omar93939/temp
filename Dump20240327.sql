-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: pornmixerchat
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `betamsgs`
--

DROP TABLE IF EXISTS `betamsgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `betamsgs` (
  `useridtimestamp` varchar(45) NOT NULL,
  `Timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Prompt` varchar(9400) NOT NULL,
  `Response` varchar(255) NOT NULL,
  UNIQUE KEY `promptid_UNIQUE` (`useridtimestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `betamsgs`
--

LOCK TABLES `betamsgs` WRITE;
/*!40000 ALTER TABLE `betamsgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `betamsgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buggedmsgs`
--

DROP TABLE IF EXISTS `buggedmsgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buggedmsgs` (
  `Prompt` varchar(9400) DEFAULT NULL,
  `Response` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buggedmsgs`
--

LOCK TABLES `buggedmsgs` WRITE;
/*!40000 ALTER TABLE `buggedmsgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `buggedmsgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `ID` int NOT NULL,
  `Event` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Event` (`Event`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (5,'April Fools\' Day (Apr 1)'),(10,'Christmas (Dec 19 - 26)'),(8,'Dia de los Muertos (Nov 1 - 2)'),(6,'Earth Day (Apr 21 - 23)'),(7,'Halloween (Oct 25 - Nov 1)'),(11,'New Year\'s (Dec 31 - Jan 1)'),(0,'None'),(9,'Saint Nicholas (Dec 5 - 6)'),(4,'Saint Patrick\'s (Mar 16 - 18)'),(2,'User\'s Birthday'),(3,'Valentine\'s Day (Feb 13 - 15)'),(1,'Your Birthday');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `example`
--

DROP TABLE IF EXISTS `example`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `example` (
  `messageid` int NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL,
  `sentbyuser` tinyint(1) DEFAULT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`messageid`),
  UNIQUE KEY `messageid_UNIQUE` (`messageid`),
  KEY `idx_userid` (`userid`),
  KEY `idx_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `example`
--

LOCK TABLES `example` WRITE;
/*!40000 ALTER TABLE `example` DISABLE KEYS */;
/*!40000 ALTER TABLE `example` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examplehistory`
--

DROP TABLE IF EXISTS `examplehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examplehistory` (
  `userid` int NOT NULL,
  `history` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examplehistory`
--

LOCK TABLES `examplehistory` WRITE;
/*!40000 ALTER TABLE `examplehistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `examplehistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `ImageID` int NOT NULL AUTO_INCREMENT,
  `ImageUID` varchar(33) NOT NULL,
  `BlurredUID` varchar(33) NOT NULL,
  `UserID` int NOT NULL,
  `Username` varchar(255) NOT NULL,
  `DateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Filename` varchar(100) NOT NULL,
  `Width` int DEFAULT NULL,
  `Height` int DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `OriginalTitle` varchar(100) DEFAULT NULL,
  `Orientation` int DEFAULT NULL,
  `Visibility` int DEFAULT NULL,
  `Event` int NOT NULL DEFAULT '0',
  `Sent` int NOT NULL DEFAULT '0',
  `Bought` int NOT NULL DEFAULT '0',
  `Favorites` int NOT NULL DEFAULT '0',
  `Tags` varchar(339) DEFAULT NULL,
  PRIMARY KEY (`ImageID`),
  UNIQUE KEY `ImageID_UNIQUE` (`ImageUID`),
  UNIQUE KEY `BlurredID_UNIQUE` (`BlurredUID`),
  KEY `Username` (`Username`),
  KEY `Event` (`Event`),
  KEY `UserID` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (15,'b6f8af795be5b35cc5d48eb336a2bf0bU','16dfd1b18d857aeebf5d81307f20d785L',113,'oliviajarden','2023-11-16 20:18:37','12812215_237_101a.jpg',853,1280,'cute bubble butt anal','cute bubble butt anal',0,0,0,0,0,0,'bubble butt,anal,cute'),(16,'8b85ef188620d4564678af871072b538U','2a43e114c3050549dba68edb7e3d8c63L',113,'oliviajarden','2023-11-16 20:19:21','19766199_004_0e46.jpg',1024,684,'titfuck lick head','titfuck lick head',0,0,0,0,0,0,'blonde,titfuck,lick head'),(17,'c010fa7d6256d4ec6e72e44994276092U','c2d4d605627ab1b9685f0d9f9d28b544L',113,'oliviajarden','2023-11-16 20:19:51','20076471_030_eca4.jpg',1280,853,'hot position anal blonde','hot position anal blonde',0,0,0,0,0,0,'hot position,anal,blonde'),(18,'7e1fead1268bb0499eb9e772c46511ceU','fd66b0d04f2390747fd338579c6c79b9L',113,'oliviajarden','2023-11-16 20:20:11','21213161_030_1cce.jpg',853,1280,'hot anal lick','hot anal lick',0,0,0,0,0,0,'hot anal,lick'),(20,'1100ab4b5c879993aa5180a457405cd4U','1ba1132ef8221974f95e170798e8aa64L',113,'oliviajarden','2023-11-16 20:23:33','35681396_004_260c.jpg',680,1024,'Deepthroat redhead','Deepthroat redhead',0,0,0,0,0,0,'redhead,deepthroat'),(21,'07d73bcae3a068ca6ad91cb7f2c351bcU','2cdb2b7b082f9dbf0759dee433fe899dL',113,'oliviajarden','2023-11-16 20:23:52','53951182_085_24aa.jpg',680,1024,'bubble butt ass','bubble butt ass',0,0,0,0,0,0,'Bubble butt,ass'),(28,'83b53c55e3098ade7dc76150018fa833U','9edf667b0abc705619b9c65eace331c8L',115,'example','2023-12-06 22:22:43','552140-young-girl-undressing-for-selfie.jpg',1555,2371,'Selfie cute girl','Selfie cute girl',0,0,0,0,0,0,'undressing,nude,tits,selfie'),(29,'11d4c6b530da82eeb6ec12066548a33fU','6e965e7e2a307f24607c11911c1def31L',115,'Example','2023-12-07 23:42:25','16950234_074_30a5.jpg',854,1280,'Anal Gape Pink Asshole Thin Hair','Anal Gape Pink Asshole Thin Hair',0,0,0,0,0,0,'Pink asshole,Asshole wink,Gape,Pussy,Naked,Open,Stretch,Butt,Bubblebutt'),(30,'d2a8f84aee512138bcdb0923859f8594U','1e6d284fa11e344e2d3612e1f64d9602L',42,'test123','2024-01-10 16:12:25','video-capture-2153.png',600,706,'25 Blur','25 Blur',0,0,0,0,0,0,'kansd,akldsnalsd'),(31,'b8d5018ba77fd30df7fd436ea3eb47aeU','03a5e147190458ec7dbc0c9574abb936L',42,'test123','2024-01-10 16:14:35','video-capture-2153.png',600,706,'30 Blur','30 Blur',0,0,0,0,0,0,'ajlsdba,aksndasd'),(32,'5fe140a7bc65a6d7683a666c8a5d525cU','09ebe1b18c2ec547af56be995cac688bL',42,'test123','2024-01-10 16:15:14','video-capture-2153.png',600,706,'35 Blur','35 Blur',0,0,0,0,0,0,'kljansda,sdkansd'),(34,'59742238bd871e080cc89ffc026f6c90U','a353de93a8c73e85de832b50c640c629L',42,'test123','2024-01-10 16:15:52','video-capture-2153.png',600,706,'40 Blur','40 Blur',0,0,0,0,0,0,'alksdnbasd,askdna'),(35,'a7bade0736d20d05f9119071c78deec4U','613f11a5fbb4f1ad7714c92394261ff5L',42,'test123','2024-01-10 16:17:36','552140-young-girl-undressing-for-selfie.jpg',1555,2371,'25 Blur','25 Blur',0,0,0,0,0,0,'kasndasd,askdnasd'),(36,'2ff0726376500a282489aaf3b7030d3bU','171567bd2aca42ee5e9aadf2184cc92dL',42,'test123','2024-01-10 16:18:08','552140-young-girl-undressing-for-selfie.jpg',1555,2371,'30 Blur','30 Blur',0,0,0,0,0,0,'aksndas,daskdnasd'),(37,'4c68182361ea049f8511683b6b91d70dU','ac2f7d1fc8a8ca9b9fae437f25b81ca7L',42,'test123','2024-01-10 16:18:36','552140-young-girl-undressing-for-selfie.jpg',1555,2371,'35 Blur','35 Blur',0,0,0,0,0,0,'al;sndas,daskdnasd'),(38,'2781be0979bc193616d4a39ec31a5208U','e3fb5386ed4d712d50ae79f6aa2c736dL',42,'test123','2024-01-10 16:19:09','552140-young-girl-undressing-for-selfie.jpg',1555,2371,'40 Blur','40 Blur',0,0,0,0,0,0,'aksdnbasd,aksldnasd'),(39,'3835346bcf9c08d53c5d5493dba2e9bfU','098e96924cc54f40120d94e8a7aa2086L',42,'test123','2024-01-10 16:19:50','77788652_016_3b2e.jpg',600,800,'25 Blur','25 Blur',0,0,0,0,0,0,'kaljsndkasd,asknd'),(40,'f057483a19b149912acc3ef51b63c3ecU','bb2b89044a8e0cbfac537a62db82ad2dL',42,'test123','2024-01-10 16:20:14','77788652_016_3b2e.jpg',600,800,'30 Blur','30 Blur',0,0,0,0,0,0,'aksdnas,daksdnasd'),(41,'a3b21624bdd5bae0a7ebb43e577777b7U','13e014bc4bfcc97a8df4dbb5b1661dd2L',42,'test123','2024-01-10 16:20:43','77788652_016_3b2e.jpg',600,800,'35 Blur','35 Blur',0,0,0,0,0,0,'kansdklasd,aksdbajkls d'),(42,'689ecd881698ed8fb648f5da0c567bcaU','459682d31fdaae831dc27cba00eefddaL',42,'test123','2024-01-10 16:21:08','77788652_016_3b2e.jpg',600,800,'40 Blur','40 Blur',0,0,0,0,0,0,'maksnda,sdkansda'),(43,'00487eb6fba8cb8f525744257470ec52U','2e4480196f32ea7bb48f2a7bff9e3a0dL',42,'test123','2024-01-10 16:21:41','79388280_012_ac78.jpg',651,986,'25 Blur','25 Blur',0,0,0,0,0,0,'aklsdnasd,askdnasd'),(44,'d79cf66449f20f197d30ff81fc2bfe8eU','08a3a1ec590211267ce325255b70a1cbL',42,'test123','2024-01-10 16:22:12','79388280_012_ac78.jpg',651,986,'30 Blur','30 Blur',0,0,0,0,0,0,'kansd,aklabsnd'),(45,'46d4378c0a8272e47de39a469ea259ceU','6f6f1461bf3580c9fd971658ef5733c0L',42,'test123','2024-01-10 16:22:41','79388280_012_ac78.jpg',651,986,'35 Blur','35 Blur',0,0,0,0,0,0,'aksnd,kasnd'),(46,'3c558c1a01add6d38349f411dad7f6e7U','5f185960e3750bb289f84f892628efb9L',42,'test123','2024-01-10 16:23:25','79388280_012_ac78.jpg',651,986,'40 Blur','40 Blur',0,0,0,0,0,0,'akslndas,daksdnaksd'),(47,'2c616238d9de96a9dcb95b5b0a8db014U','13ac1fc9c9d34986548a9c34aea4eaf3L',42,'test123','2024-01-26 20:44:30','That muffin is looking awfully like a hamster 0-1 screenshot.png',636,360,'asldmasd','asldmasd',0,0,0,0,0,0,'kalsndlasd,asdpasmd,asdkphashd,aosdnasoidnaosindipa');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imageunlocks`
--

DROP TABLE IF EXISTS `imageunlocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imageunlocks` (
  `UserID` int NOT NULL,
  `ImageID` int NOT NULL,
  `Username` varchar(255) NOT NULL,
  `DateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`UserID`,`ImageID`),
  UNIQUE KEY `UserID` (`UserID`,`ImageID`),
  KEY `ImageID` (`ImageID`),
  KEY `Username` (`Username`),
  CONSTRAINT `imageunlocks_ibfk_1` FOREIGN KEY (`ImageID`) REFERENCES `images` (`ImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imageunlocks`
--

LOCK TABLES `imageunlocks` WRITE;
/*!40000 ALTER TABLE `imageunlocks` DISABLE KEYS */;
INSERT INTO `imageunlocks` VALUES (42,28,'example','2024-01-12 23:30:32');
/*!40000 ALTER TABLE `imageunlocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oliviajarden`
--

DROP TABLE IF EXISTS `oliviajarden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oliviajarden` (
  `messageid` int NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL,
  `sentbyuser` tinyint(1) DEFAULT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`messageid`),
  UNIQUE KEY `messageid_UNIQUE` (`messageid`),
  KEY `idx_userid` (`userid`),
  KEY `idx_timestamp` (`timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oliviajarden`
--

LOCK TABLES `oliviajarden` WRITE;
/*!40000 ALTER TABLE `oliviajarden` DISABLE KEYS */;
INSERT INTO `oliviajarden` VALUES (1,42,1,'2024-02-20 21:37:06','Sup'),(2,42,0,'2024-02-20 21:37:06','I hope everything is going well! I just wanted to check in and see if there was anything specific you were interested in today?'),(3,42,1,'2024-02-20 21:38:03','sup'),(4,42,0,'2024-02-20 21:38:03','Hey there! I\'m glad to hear from you :) How about we start off by talking about something that interests both of us - sexy roleplays! Do you have any preferences when it comes to them?'),(5,42,1,'2024-02-20 22:03:41','sup'),(6,42,0,'2024-02-20 22:03:41','Hey there! I\'m glad to hear from you :) How about we start off by talking about something that interests both of us - sexy roleplays! Do you have any preferences when it comes to them?'),(7,42,1,'2024-02-20 22:04:11','send a pic'),(8,42,0,'2024-02-20 22:04:11','Sure thing! Here\'s one image for you: {%&|Image|15|cute bubble butt anal|bubble butt,anal,cute|&%}. Let me know what you think!'),(9,42,1,'2024-02-20 22:05:08','send again'),(10,42,0,'2024-02-20 22:05:08',''),(11,42,1,'2024-02-20 22:08:32','send again'),(12,42,0,'2024-02-20 22:08:32',''),(13,42,1,'2024-02-20 22:10:27','send again'),(14,42,0,'2024-02-20 22:10:27','Sure thing! Here\'s another image for you: {%&|Image|16|titfuck lick head|blonde,titfuck,lick head|&%}. Let me know what you think!'),(15,42,1,'2024-02-20 22:10:58','send again'),(16,42,0,'2024-02-20 22:10:58',''),(17,42,1,'2024-02-20 22:12:44','send again'),(18,42,0,'2024-02-20 22:12:44',''),(19,42,1,'2024-02-20 22:14:15','send again'),(20,42,0,'2024-02-20 22:14:15',''),(21,42,1,'2024-02-20 22:15:34','sup'),(22,42,0,'2024-02-20 22:15:34','Hey there! I\'m so happy to be chatting with you again. How has your day been so far?'),(23,42,1,'2024-02-20 22:20:37','sup'),(24,42,0,'2024-02-20 22:20:37','Hey there! I\'m so happy to be chatting with you again. How has your day been so far?'),(25,42,1,'2024-02-20 22:21:59','saskdn'),(26,42,0,'2024-02-20 22:21:59',''),(27,42,1,'2024-02-20 22:22:07','asd'),(28,42,0,'2024-02-20 22:22:07','Hey there! I\'m so happy to be chatting with you today. Do you want to talk more about your favorite sexual fantasies or would you prefer to discuss some hot roleplays instead?'),(29,42,1,'2024-02-20 22:22:19','asd'),(30,42,0,'2024-02-20 22:22:19','Hey there! I\'m so happy to be chatting with you today. Do you want to talk more about your favorite sexual fantasies or would you prefer to discuss some hot roleplays instead?'),(31,42,1,'2024-02-20 22:22:27','asdasd'),(32,42,0,'2024-02-20 22:22:27','I\'m sorry, I didn\'t quite catch that last message. Could you please repeat yourself so I can better understand your request?'),(33,42,1,'2024-02-20 22:23:25','asd'),(34,42,0,'2024-02-20 22:23:25','Hey there! I\'m so happy to be chatting with you today. Do you want to talk more about your favorite sexual fantasies or would you prefer to discuss some hot roleplays instead?'),(35,42,1,'2024-02-20 22:24:00','asd'),(36,42,0,'2024-02-20 22:24:00','Hey there! I\'m so happy to be chatting with you today. Do you want to talk more about your favorite sexual fantasies or would you prefer to discuss some hot roleplays instead?'),(37,42,1,'2024-02-20 22:24:50','send one more time'),(38,42,0,'2024-02-20 22:24:50',''),(39,42,1,'2024-02-20 22:25:29','asd'),(40,42,0,'2024-02-20 22:25:29','Hey there! I\'m so happy to be chatting with you today. It sounds like you might be feeling a bit down right now, and I want you to know that I\'m here for you. Is there anything on your mind that you would like to talk about?'),(41,42,1,'2024-02-20 22:25:50','asdads'),(42,42,0,'2024-02-20 22:25:50','Hey there! I\'m so happy to be chatting with you today. It sounds like you might be feeling a bit stressed out right now, and I want you to know that I\'m here to listen and support you however I can. Is there anything specific on your mind that you\'d like '),(43,42,1,'2024-02-20 22:26:12','asd'),(44,42,0,'2024-02-20 22:26:12','Hey there! I\'m so happy to be chatting with you today. Do you want to talk more about your fantasies or would you like me to share some of mine?'),(45,42,1,'2024-02-20 22:26:21','asd'),(46,42,0,'2024-02-20 22:26:21','Hey there! I\'m so happy to be chatting with you today. It sounds like you might be feeling a bit down right now, and I want you to know that I\'m here for you. Is there anything on your mind that you would like to talk about?'),(47,42,1,'2024-02-20 22:29:56','asd'),(48,42,0,'2024-02-20 22:29:56','Hey there! I\'m so happy to be chatting with you today. It sounds like you might be feeling a bit down right now, and I want you to know that I\'m here for you. Is there anything on your mind that you would like to talk about?'),(49,42,1,'2024-02-20 22:44:15','asd'),(50,42,0,'2024-02-20 22:44:15','Hey there! I\'m so happy to be chatting with you today. Do you want to talk more about your favorite sexual fantasies or would you prefer to discuss some hot roleplays instead?'),(51,42,1,'2024-02-20 22:44:35','asd'),(52,42,0,'2024-02-20 22:44:35','Hey there! I\'m so happy to be chatting with you today. Do you want to talk more about your fantasies or would you like me to share some of mine?'),(53,42,1,'2024-02-20 22:44:44','asdlnj'),(54,42,0,'2024-02-20 22:44:44','I\'m sorry, I didn\'t quite catch that last message. Could you please repeat yourself so I can better understand your request?'),(55,42,1,'2024-02-20 22:59:56','asdasdasd'),(56,42,0,'2024-02-20 22:59:56','I\'m sorry, I didn\'t quite catch that last message. Could you please repeat yourself so I can better understand your request?'),(57,42,1,'2024-02-20 23:01:16','asd'),(58,42,0,'2024-02-20 23:01:16','Hey there! I\'m so happy to be chatting with you today. Do you want to talk more about your fantasies or would you like me to share some of mine?'),(59,42,1,'2024-02-20 23:02:44','asd'),(60,42,0,'2024-02-20 23:02:44','Hey there! I\'m so happy to be chatting with you today. Do you want to talk more about your fantasies or would you like me to share some of mine?');
/*!40000 ALTER TABLE `oliviajarden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oliviajardenhistory`
--

DROP TABLE IF EXISTS `oliviajardenhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oliviajardenhistory` (
  `userid` int NOT NULL,
  `history` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oliviajardenhistory`
--

LOCK TABLES `oliviajardenhistory` WRITE;
/*!40000 ALTER TABLE `oliviajardenhistory` DISABLE KEYS */;
INSERT INTO `oliviajardenhistory` VALUES (42,'U:sup|A:i hope everything is going well! i just wanted to check in and see if there was anything specific you were interested in today?|U:sup|A:hey there! i\'m glad to hear from you :) how about we start off by talking about something that interests both of us - sexy roleplays! do you have any preferences when it comes to them?|U:send a pic|A:sure thing! here\'s one image for you: {%&|image|15|cute bubble butt anal|bubble butt,anal,cute|&%}. let me know what you think!|U:send again|A:|U:send again|A:|U:send again|A:sure thing! here\'s another image for you: {%&|image|16|titfuck lick head|blonde,titfuck,lick head|&%}. let me know what you think!');
/*!40000 ALTER TABLE `oliviajardenhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pornmixer`
--

DROP TABLE IF EXISTS `pornmixer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pornmixer` (
  `messageid` int NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL,
  `sentbyuser` tinyint(1) DEFAULT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`messageid`),
  UNIQUE KEY `messageid_UNIQUE` (`messageid`),
  KEY `idx_userid` (`userid`),
  KEY `idx_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pornmixer`
--

LOCK TABLES `pornmixer` WRITE;
/*!40000 ALTER TABLE `pornmixer` DISABLE KEYS */;
/*!40000 ALTER TABLE `pornmixer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pornmixerhistory`
--

DROP TABLE IF EXISTS `pornmixerhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pornmixerhistory` (
  `userid` int NOT NULL,
  `history` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pornmixerhistory`
--

LOCK TABLES `pornmixerhistory` WRITE;
/*!40000 ALTER TABLE `pornmixerhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `pornmixerhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videos` (
  `VideoID` int NOT NULL AUTO_INCREMENT,
  `VideoUID` varchar(36) DEFAULT NULL,
  `BlurredUID` varchar(32) DEFAULT NULL,
  `UserID` int NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Processed` tinyint NOT NULL DEFAULT '0',
  `DateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Filename` varchar(100) DEFAULT NULL,
  `Duration` int DEFAULT '0',
  `MaxRes` int DEFAULT NULL,
  `Width` int DEFAULT NULL,
  `Height` int DEFAULT NULL,
  `FPS` int DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `OriginalTitle` varchar(100) DEFAULT NULL,
  `Orientation` int DEFAULT NULL,
  `Visibility` int DEFAULT NULL,
  `Event` int NOT NULL DEFAULT '0',
  `Sent` int NOT NULL DEFAULT '0',
  `Bought` int NOT NULL DEFAULT '0',
  `Favorites` int NOT NULL DEFAULT '0',
  `Tags` varchar(339) DEFAULT NULL,
  `ThumbChanges` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`VideoID`),
  UNIQUE KEY `VideoID_UNIQUE` (`VideoUID`),
  UNIQUE KEY `BlurredID_UNIQUE` (`BlurredUID`),
  KEY `Username` (`Username`),
  KEY `Event` (`Event`),
  KEY `UserID` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (310,'54458893-cb6b-4f1d-84aa-a753ba8a8bfb','273f337662ed7ce32b14eefc758be3df',42,'test123',1,'2023-12-03 14:57:52','production_id_3831869 (2160p).mp4',14,1080,2160,4096,25,'sdkpmfksdmfn','sdkpmfksdmfn',2,0,2,0,0,0,'slkdfnsdf,sdfsdf,asdnka',3),(311,'6a2fe335-02b3-4c20-b462-f6296967b93f','47f408d17988bc0c1a56b73be8a16ca4',115,'Example',1,'2023-12-07 23:42:40','360.mp4',937,360,640,360,29,'Solo Blonde Nude Shirt Nails Ring Feet Panties Masturbating','Solo Blonde Nude Shirt Nails Ring Feet Panties Masturbating',0,0,0,0,0,0,'Solo,Blonde,Nude,Feet,Small Boobs',0),(312,'da5010d9-c2ef-41e4-8b58-d79056e1e110','4f3340ca1c1239748986da05da4271ad',115,'Example',1,'2023-12-07 23:44:16','360 (1).mp4',1644,360,640,360,29,'Blue Fishnets Whole Body Blonde Anal Fuck Flexible Fit','Blue Fishnets Whole Body Blonde Anal Fuck Flexible Fit',0,0,0,0,0,0,'Blue Fishnets,Anal,Anal Fuck,Flexible,Fit,Athletic,Whole Body Fishnets',0);
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videounlocks`
--

DROP TABLE IF EXISTS `videounlocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videounlocks` (
  `UserID` int NOT NULL,
  `VideoID` int NOT NULL,
  `Username` varchar(255) NOT NULL,
  `DateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`UserID`,`VideoID`),
  UNIQUE KEY `UserID` (`UserID`,`VideoID`),
  KEY `ImageID` (`VideoID`),
  KEY `Username` (`Username`),
  CONSTRAINT `videounlocks_ibfk_1` FOREIGN KEY (`VideoID`) REFERENCES `videos` (`VideoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videounlocks`
--

LOCK TABLES `videounlocks` WRITE;
/*!40000 ALTER TABLE `videounlocks` DISABLE KEYS */;
INSERT INTO `videounlocks` VALUES (42,312,'ExAmPLe','2024-01-11 07:04:57');
/*!40000 ALTER TABLE `videounlocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'pornmixerchat'
--

--
-- Dumping routines for database 'pornmixerchat'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-27  5:48:43
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: pornmixer
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `about` (
  `UserID` int NOT NULL,
  `Description` varchar(600) DEFAULT NULL,
  `Supps` int NOT NULL DEFAULT '0',
  `Name` varchar(40) DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `Gender` tinyint DEFAULT NULL,
  `Sexuality` tinyint DEFAULT NULL,
  `Website` varchar(255) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Country` varchar(45) DEFAULT NULL,
  `Twitter` varchar(45) DEFAULT NULL,
  `Instagram` varchar(45) DEFAULT NULL,
  `Amazon` varchar(45) DEFAULT NULL,
  `Snapchat` varchar(45) DEFAULT NULL,
  `OnlyFans` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `UserID_UNIQUE` (`UserID`),
  CONSTRAINT `about_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about`
--

LOCK TABLES `about` WRITE;
/*!40000 ALTER TABLE `about` DISABLE KEYS */;
INSERT INTO `about` VALUES (42,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(64,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(65,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(66,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(67,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(68,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(69,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(70,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(71,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(72,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(73,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(74,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(75,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(113,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(114,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(115,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounttypes`
--

DROP TABLE IF EXISTS `accounttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounttypes` (
  `ID` tinyint NOT NULL,
  `AccountType` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`,`AccountType`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `AccountType_UNIQUE` (`AccountType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounttypes`
--

LOCK TABLES `accounttypes` WRITE;
/*!40000 ALTER TABLE `accounttypes` DISABLE KEYS */;
INSERT INTO `accounttypes` VALUES (0,'unverified'),(1,'verified'),(2,'creator'),(3,'betatester'),(4,'chatter'),(99,'admin');
/*!40000 ALTER TABLE `accounttypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `CatID` int NOT NULL,
  `Category` varchar(45) NOT NULL,
  PRIMARY KEY (`CatID`,`Category`),
  UNIQUE KEY `CatID_UNIQUE` (`CatID`),
  UNIQUE KEY `Category_UNIQUE` (`Category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (0,'Amateur'),(1,'Anal'),(2,'Arab'),(3,'Asian'),(4,'ASMR'),(5,'Babe'),(6,'Babysitter (18+)'),(7,'BBW'),(8,'Behind The Scenes'),(9,'Big Ass'),(10,'Big Dick'),(11,'Big Tits'),(12,'Blonde'),(13,'Blowjob'),(14,'Bondage'),(15,'Brazilian'),(16,'British'),(17,'Brunette'),(18,'Bukkake'),(19,'Cartoon'),(20,'Casting'),(21,'Celebrity'),(22,'College (18+)'),(23,'Compilation'),(24,'Cosplay'),(25,'Creampie'),(26,'Cuckold'),(27,'Cumshot'),(28,'Czech'),(29,'Double Penetration'),(30,'Ebony'),(31,'Feet'),(32,'Female Orgasm'),(33,'Fetish'),(34,'Fisting'),(35,'French'),(36,'Game Characters'),(37,'Gameplay'),(38,'Gangbang'),(39,'German'),(40,'Handjob'),(41,'Hardcore'),(42,'Hentai'),(43,'Indian'),(44,'Interracial'),(45,'Italian'),(46,'Japanese'),(47,'Korean'),(48,'Latina'),(49,'Massage'),(50,'Masturbation'),(51,'Mature'),(52,'MILF'),(53,'Muscular Men'),(54,'Music'),(55,'Old/Young (18+)'),(56,'Orgy'),(57,'Parody'),(58,'Party'),(59,'Pissing'),(60,'POV'),(61,'Public'),(62,'Pussy Licking'),(63,'Reality'),(64,'Red Head'),(65,'Role Play'),(66,'Romantic'),(67,'Rough Sex'),(68,'Russian'),(69,'School (18+)'),(70,'Small Tits'),(71,'Smoking'),(72,'Solo Female'),(73,'Solo Male'),(74,'Squirt'),(75,'Tattooed Women'),(76,'Teen (18+)'),(77,'Threesome'),(78,'Toys'),(79,'Vintage'),(80,'Webcam');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commentreplies`
--

DROP TABLE IF EXISTS `commentreplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commentreplies` (
  `ReplyID` int NOT NULL AUTO_INCREMENT,
  `CommentID` int NOT NULL,
  `UserID` int NOT NULL,
  `DateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Reply` varchar(500) NOT NULL,
  PRIMARY KEY (`ReplyID`),
  KEY `commentreplies_ibfk_1` (`UserID`),
  KEY `commentreplies_ibfk_2` (`CommentID`),
  CONSTRAINT `commentreplies_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  CONSTRAINT `commentreplies_ibfk_2` FOREIGN KEY (`CommentID`) REFERENCES `videocomments` (`CommentID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commentreplies`
--

LOCK TABLES `commentreplies` WRITE;
/*!40000 ALTER TABLE `commentreplies` DISABLE KEYS */;
/*!40000 ALTER TABLE `commentreplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failedvideodeletions`
--

DROP TABLE IF EXISTS `failedvideodeletions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failedvideodeletions` (
  `videouid` varchar(36) NOT NULL,
  PRIMARY KEY (`videouid`),
  UNIQUE KEY `videouid_UNIQUE` (`videouid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failedvideodeletions`
--

LOCK TABLES `failedvideodeletions` WRITE;
/*!40000 ALTER TABLE `failedvideodeletions` DISABLE KEYS */;
INSERT INTO `failedvideodeletions` VALUES ('96f2033b-d02c-41c4-8a26-e554a1186bb9'),('9909d0e7-1bc8-4a7b-aedd-93a6d7c3d951'),('f2eff65d-f31c-48df-8745-2078230e8897');
/*!40000 ALTER TABLE `failedvideodeletions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identificationrequests`
--

DROP TABLE IF EXISTS `identificationrequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `identificationrequests` (
  `UserID` int NOT NULL,
  `DateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IDPhoto` varchar(32) NOT NULL,
  `EXPhoto` varchar(32) NOT NULL,
  `Code` varchar(8) NOT NULL,
  `Date` varchar(10) NOT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `UserID_UNIQUE` (`UserID`),
  CONSTRAINT `identificationrequests_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identificationrequests`
--

LOCK TABLES `identificationrequests` WRITE;
/*!40000 ALTER TABLE `identificationrequests` DISABLE KEYS */;
/*!40000 ALTER TABLE `identificationrequests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orientations`
--

DROP TABLE IF EXISTS `orientations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orientations` (
  `ID` int NOT NULL,
  `Orientation` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`,`Orientation`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `Orientation_UNIQUE` (`Orientation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orientations`
--

LOCK TABLES `orientations` WRITE;
/*!40000 ALTER TABLE `orientations` DISABLE KEYS */;
INSERT INTO `orientations` VALUES (0,'Solo'),(1,'Straight'),(2,'Gay'),(3,'Lesbian'),(4,'Transgender'),(5,'Other');
/*!40000 ALTER TABLE `orientations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommendedvideopool`
--

DROP TABLE IF EXISTS `recommendedvideopool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recommendedvideopool` (
  `VideoID` int NOT NULL,
  `VideoUID` varchar(36) NOT NULL,
  `UserID` int NOT NULL,
  `Embed` varchar(50) DEFAULT NULL,
  `DateTime` datetime NOT NULL,
  `Promoted` tinyint(1) NOT NULL,
  `Duration` int NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Orientation` int NOT NULL,
  `Production` int NOT NULL,
  `Views` int NOT NULL,
  `Likes` int NOT NULL,
  `Dislikes` int NOT NULL,
  `Favorites` int NOT NULL,
  `ThumbChanges` int NOT NULL,
  `Categories` varchar(45) NOT NULL,
  PRIMARY KEY (`VideoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommendedvideopool`
--

LOCK TABLES `recommendedvideopool` WRITE;
/*!40000 ALTER TABLE `recommendedvideopool` DISABLE KEYS */;
INSERT INTO `recommendedvideopool` VALUES (292,'6d731c2f-5af5-4ad4-9530-202eedcf4047',42,NULL,'2024-03-10 02:23:57',0,14,'testvid',1,0,7,1,1,0,0,'29,32'),(293,'77a68e5e-7b7f-44ec-b761-de69f9b17b57',113,NULL,'2024-03-10 02:27:55',0,71,'Testvid2',1,0,8,0,0,0,0,'27,29,40,41'),(296,'79f464c4-2552-4fe5-a532-7f0fc851d2bf',42,NULL,'2024-03-11 18:26:34',0,16,'testingvid',1,0,1,0,0,0,0,'1,13,27');
/*!40000 ALTER TABLE `recommendedvideopool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommendedvideostaging`
--

DROP TABLE IF EXISTS `recommendedvideostaging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recommendedvideostaging` (
  `VideoID` int NOT NULL,
  `VideoUID` varchar(36) NOT NULL,
  `UserID` int NOT NULL,
  `Embed` varchar(50) DEFAULT NULL,
  `DateTime` datetime NOT NULL,
  `Promoted` tinyint(1) NOT NULL,
  `Duration` int NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Orientation` int NOT NULL,
  `Production` int NOT NULL,
  `Views` int NOT NULL,
  `Likes` int NOT NULL,
  `Dislikes` int NOT NULL,
  `Favorites` int NOT NULL,
  `ThumbChanges` int NOT NULL,
  `Categories` varchar(45) NOT NULL,
  PRIMARY KEY (`VideoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommendedvideostaging`
--

LOCK TABLES `recommendedvideostaging` WRITE;
/*!40000 ALTER TABLE `recommendedvideostaging` DISABLE KEYS */;
/*!40000 ALTER TABLE `recommendedvideostaging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports` (
  `ReportID` int NOT NULL AUTO_INCREMENT,
  `VideoUID` varchar(36) NOT NULL,
  `Reason` varchar(45) NOT NULL,
  `Text` varchar(500) NOT NULL,
  PRIMARY KEY (`ReportID`),
  KEY `VideoUID` (`VideoUID`),
  CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`VideoUID`) REFERENCES `videos` (`VideoUID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spokenlanguages`
--

DROP TABLE IF EXISTS `spokenlanguages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spokenlanguages` (
  `ID` int NOT NULL,
  `Language` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`,`Language`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `Language_UNIQUE` (`Language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spokenlanguages`
--

LOCK TABLES `spokenlanguages` WRITE;
/*!40000 ALTER TABLE `spokenlanguages` DISABLE KEYS */;
INSERT INTO `spokenlanguages` VALUES (0,'Other'),(1,'English'),(2,'English (British)'),(3,'English (Australian)'),(4,'Arabic'),(5,'Bengali'),(6,'Cantonese'),(7,'Czech'),(8,'Danish'),(9,'Dutch'),(10,'Finnish'),(11,'French'),(12,'German'),(13,'Greek'),(14,'Hindi'),(15,'Hungarian'),(16,'Indonesian'),(17,'Italian'),(18,'Japanese'),(19,'Javanese'),(20,'Korean'),(21,'Mandarin'),(22,'Norwegian'),(23,'Persian'),(24,'Polish'),(25,'Portuguese'),(26,'Portuguese (Brazilian)'),(27,'Punjabi'),(28,'Romanian'),(29,'Russian'),(30,'Spanish'),(31,'Swedish'),(32,'Tagalog'),(33,'Thai'),(34,'Turkish'),(35,'Ukrainian'),(36,'Vietnamese');
/*!40000 ALTER TABLE `spokenlanguages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriptions` (
  `UserID` int NOT NULL,
  `SubID` int NOT NULL,
  PRIMARY KEY (`UserID`,`SubID`),
  UNIQUE KEY `UserID` (`UserID`,`SubID`),
  KEY `SubID` (`SubID`),
  CONSTRAINT `subscriptions_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  CONSTRAINT `subscriptions_ibfk_2` FOREIGN KEY (`SubID`) REFERENCES `users` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES (42,113);
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `Tokens` int NOT NULL DEFAULT '200',
  `TokensEarned` int NOT NULL DEFAULT '0',
  `AccountType` tinyint NOT NULL DEFAULT '0',
  `Subs` int NOT NULL DEFAULT '0',
  `VideoCount` varchar(45) NOT NULL DEFAULT '0',
  `Email` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Created` date NOT NULL DEFAULT (curdate()),
  `LastLogin` date DEFAULT NULL,
  `MailList` tinyint(1) NOT NULL DEFAULT '0',
  `PP` varchar(32) DEFAULT NULL,
  `PB` varchar(32) DEFAULT NULL,
  `PV` varchar(32) DEFAULT NULL,
  `BV` varchar(32) DEFAULT NULL,
  `Promoted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `UserID_UNIQUE` (`UserID`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  UNIQUE KEY `Username_UNIQUE` (`Username`),
  UNIQUE KEY `PP_UNIQUE` (`PP`),
  UNIQUE KEY `PB_UNIQUE` (`PB`),
  UNIQUE KEY `PV_UNIQUE` (`PV`),
  UNIQUE KEY `BV_UNIQUE` (`BV`),
  FULLTEXT KEY `username_fulltxt` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (42,999265,0,99,42010,'0','test123@gmail.com','test123','$argon2id$v=19$m=65536,t=3,p=4$+ClCciojH+G4+XOw27dBsg$KM1e1ZLQ7L+B4ekqgEZFFHB12bd9H6LMCgJTzoOR4q4','2023-05-03','2024-03-26',0,'8e3d57a3a56cc7ca9a2a1ad760f67da0','780d22a9e66f82c63e1c0abcdd6c0d2b','b9de9c2910c3fe18570339cf1a8fd61d','0dee6cfdd6d7860cb6b498d6613ded08',1),(43,200,0,1,0,'0','asdasd@gasda.com','asdasdasd','$argon2id$v=19$m=65536,t=3,p=4$jPoQ/DNVzepVvfjYvGnbIw$z98B392dy5QRxcpgJQxI3lPLGrqcfYdI4BzpgJo53to','2023-05-06','2023-05-06',0,NULL,NULL,NULL,NULL,0),(44,200,0,1,0,'0','asdasdikn@asdasdw.com','iaoshndoiasnd','$argon2id$v=19$m=65536,t=3,p=4$1/M5509AnHXrjhpW3dn9cQ$+1pWF+ssMsQJ2AWpaVz8amvUdeTSssX2P8sxpBAjR+k','2023-05-06','2023-05-06',0,NULL,NULL,NULL,NULL,0),(45,200,0,1,0,'0','asdasd@gmail.com','inasiodnaoisdn','$argon2id$v=19$m=65536,t=3,p=4$hOjOvap5scWfJtt573b3LQ$ewyUY8Yam/AUCPwfhryQsQKCM3j9uA54TQ9/t/ScLkg','2023-05-06','2023-05-06',0,NULL,NULL,NULL,NULL,0),(46,200,0,1,0,'0','asdasdkn@gmail.com','inoiasndoin','$argon2id$v=19$m=65536,t=3,p=4$zvD2EJNqD25SSRRTtweGgw$b/xikhxlLZQE8dXPPpmADxBHRlKvZn7PYU6Zo+9vh0k','2023-05-06','2023-05-06',0,NULL,NULL,NULL,NULL,0),(47,200,0,1,0,'0','asodmasd@gmail.com','oasmdpoamwe','$argon2id$v=19$m=65536,t=3,p=4$XAo+mLcqTjUztJCFCPe6hQ$rNVyXlGnAeRYflcRFHujg4ZaZmnGpYTP39Acrp801gU','2023-05-06','2023-05-06',0,NULL,NULL,NULL,NULL,0),(48,200,0,2,0,'0','test12@gmail.com','test12','$argon2id$v=19$m=65536,t=3,p=4$TB/55Lc1Rtg7IaTVgjAWng$2jGgQJUYtVTWjnI0O10h557qkDukdGXxZOu4STWGzM8','2023-05-09','2024-03-26',0,NULL,NULL,NULL,NULL,0),(49,200,0,1,0,'0','testXD@Gmail.com','testXD','$argon2id$v=19$m=65536,t=3,p=4$f0AdyH+trkwLmVo0Mrzg4g$E3pHDcgmN+v8GnJEim1nbVWRRN7neFqjl/UO4XdqchY','2023-05-14','2023-05-24',0,'c9164ebca301920a2a676653a0d27979',NULL,NULL,NULL,1),(52,200,0,1,0,'0','asdasad@gmail.com','asodoasdm','$argon2id$v=19$m=65536,t=3,p=4$cL1A2Z+8v8vqtS07cMog8Q$MKvuxelGPEaWwA2XOrklygh0y/4YtPAf4LZa1l30V90','2023-05-17','2023-05-17',0,NULL,NULL,NULL,NULL,0),(53,200,0,1,0,'0','asdasd@gtmail.com','aosdmoasmdo','$argon2id$v=19$m=65536,t=3,p=4$+k9kk7pfzHOaNbS0DUxRgw$0oDjktJDcXwH4/8WBGAxcW1nz1lJj8/qCAMI28NM8fs','2023-05-19','2023-05-19',0,NULL,NULL,NULL,NULL,0),(54,200,0,1,0,'0','maosdm@pornmer.org','oasdmaosdm','$argon2id$v=19$m=65536,t=3,p=4$L2lHe7z3x2n6Ssopxij/ZA$ESfd8oxa/8abT9znU/UrGvGuppFZ0t2xU7+IdFgrvfs','2023-05-20','2023-05-20',0,NULL,NULL,NULL,NULL,0),(55,200,0,1,0,'0','asdoamsdom@foasmdo.com','inweoianosd','$argon2id$v=19$m=65536,t=3,p=4$pbgKeHUC9cXFWt/i5vKq0w$lA8xqGojR22/yHXXuz59gqbBlB2id0xWXhzC9YIm4b4','2023-05-20','2023-05-20',0,NULL,NULL,NULL,NULL,0),(56,200,0,1,0,'0','aopsmdoam@aomsmwqe.com','iwneoiansod','$argon2id$v=19$m=65536,t=3,p=4$Udcp/4ZhA5ETiIqrnFw6Zg$WP0mQPnzhniYBE7qYX5+K5s2hNmj1LNX6KsN0BJTvfU','2023-05-20','2023-05-20',0,NULL,NULL,NULL,NULL,0),(57,200,0,1,0,'0','inasdni@gnasoidinasd.com','nbfbuoaibs','$argon2id$v=19$m=65536,t=3,p=4$h3Fsywr6Sod2aMG9T2CNZQ$f705w4+lv8OOiudQAamOs9y2JgsLj3Rh86LZgfWfdI0','2023-05-20','2023-05-20',0,NULL,NULL,NULL,NULL,0),(58,200,0,1,0,'0','asndoasdn@aisndnwe.com','asjkndoaneowi','$argon2id$v=19$m=65536,t=3,p=4$YcN+ybAglsByKF7G+qlnGg$Ok3bQuj0qQERT6HPX2BzR2e2yyFTwVo2O20I/4JIggo','2023-05-20','2023-05-20',0,NULL,NULL,NULL,NULL,0),(59,200,0,1,0,'0','asdioaohdn@niaosndias.com','inasoniwe','$argon2id$v=19$m=65536,t=3,p=4$G6CHAa7fXlkXV5qjanihiA$nBfkhKJMxGft4/l798nGPa5MZiVm+9gHieK5zJr0gSI','2023-05-20','2023-05-20',0,NULL,NULL,NULL,NULL,0),(60,200,0,1,0,'0','iasjdiansd@nioansdoasd.com','ionwernioqnwion','$argon2id$v=19$m=65536,t=3,p=4$EcwekYEvPZVxpgUM4wzHRQ$8tg54p3w86niJgS7qfLnYSYjfSwMdxtgVNTq083N1to','2023-05-20','2023-05-20',0,NULL,NULL,NULL,NULL,0),(61,200,0,1,0,'0','aijsdasdni@niawin.com','ionwreionqion','$argon2id$v=19$m=65536,t=3,p=4$mTgSPQssHVffddWeT5cPGQ$tNyI8cVl3yZwfynA+XK5EJ2oODu4rnNbv3p3GnJQbTU','2023-05-20','2023-05-20',0,NULL,NULL,NULL,NULL,0),(62,200,0,1,0,'0','asnojdnadn@aniodnida.com','inewiownanio','$argon2id$v=19$m=65536,t=3,p=4$J6YXjV8e+JOcjugR2Vgm6Q$fOt1MTZsY571RzNBa3tUEUsKf5UeKGWwci70txmJVtA','2023-05-20','2023-05-20',0,NULL,NULL,NULL,NULL,0),(63,200,0,1,0,'0','adsinonad@nianisd.aionmsd','inowerq','$argon2id$v=19$m=65536,t=3,p=4$Ytsk7RA2yGWWXczCgOgGuQ$Zzt4v4uQsldLKX+Gn1iEznW39AgqbWWontToD2uHSLw','2023-05-20','2023-05-20',0,NULL,NULL,NULL,NULL,0),(64,200,0,1,0,'0','asiojnddnis@nianisd.asiodjn','niwenoa','$argon2id$v=19$m=65536,t=3,p=4$ymHXsI2Fi5CrdRp37bYKLw$DunkaCH3Ur3Gd62wF2JLF7deXNtUnQ9YM/rM1n3ZreY','2023-05-20','2023-05-20',0,NULL,NULL,NULL,NULL,0),(65,200,0,1,0,'0','asdaidosn@nioasnd.com','ineiona','$argon2id$v=19$m=65536,t=3,p=4$Ilm38s+EeMuNqmoAgYqYzg$/qn9dYzdNdSXi+0sf5FRWMUHTkXhd9ry82rxypLKlf0','2023-05-20','2023-05-20',0,NULL,NULL,NULL,NULL,0),(66,200,0,1,0,'0','asodmmo@moasmdo.com','iwoeniaonsd','$argon2id$v=19$m=65536,t=3,p=4$A+UvaM76wGy1vSppW6ldqw$JPtLpZOj7uDw5lUjn7IWz7nHwuMKuQ8SZpy6fXkXSlU','2023-05-20','2023-05-20',0,NULL,NULL,NULL,NULL,0),(67,200,0,1,0,'0','asdadk@foasmd.com','womeoamsd','$argon2id$v=19$m=65536,t=3,p=4$IWgaX+sFzg2rCbOuOuYyrw$bmHRRjeLZi3ZL4np9Z40tH88R50JMyBIvffSRvVA+sM','2023-05-20','2023-05-20',0,NULL,NULL,NULL,NULL,0),(68,200,0,1,0,'0','asdpasdn@qikwneasd.com','iweninad','$argon2id$v=19$m=65536,t=3,p=4$pIumpWr3/p+IkDWXhWDz3g$45ks8IkOjnT3fYm5NMEf3QeEZvRAI22WIMyilgYC2Ic','2023-05-20','2023-05-20',0,NULL,NULL,NULL,NULL,0),(69,200,0,1,0,'0','asdasdJM@aosdasd.com','ineroinassid','$argon2id$v=19$m=65536,t=3,p=4$8GPAFCoeEBrvgNHckoTTmQ$x5fv1y+DMOzwSSY+tGFU/gYZnYncHBSlSymwVU5i4og','2023-05-20','2023-05-20',0,NULL,NULL,NULL,NULL,0),(70,200,0,1,0,'0','asdoj@omad.wqjenn','owmeqm','$argon2id$v=19$m=65536,t=3,p=4$h+zmC1TwZkESEmmQv4kciw$LvUlf3w3grFD4dVHRYOFDj0xcC39kLZzBfXl+RImEUw','2023-05-20','2023-05-20',0,NULL,NULL,NULL,NULL,0),(71,200,0,1,0,'0','askldnsakdn@iansdsad.com','ineownae','$argon2id$v=19$m=65536,t=3,p=4$M8pxOZ6i2KuOwQx+qzKjgQ$QXgewnvn7fS1dR88GNwYC8Pod7AbwgZTCFsd7PgrgBg','2023-05-20','2023-05-20',0,NULL,NULL,NULL,NULL,0),(72,200,0,1,0,'0','asdnsnkd@nkanksds.com','kneikwn','$argon2id$v=19$m=65536,t=3,p=4$3PSxkmEEECP34k1gHxiOjw$yTeBfahcdmoi5TzkiZjWDCd360Vkp6LsnilNdJIFGz4','2023-05-20','2023-05-20',0,NULL,NULL,NULL,NULL,0),(73,200,0,1,0,'0','asdoasjdo@amsodmasd.com','injiowenoian','$argon2id$v=19$m=65536,t=3,p=4$YLvlQrjDmxzl68tRIFv6nA$Ne4GEa1dAjs4uWkmy+i9beUekd1VosvjCU7GDACMqOQ','2023-05-20','2023-05-20',0,NULL,NULL,NULL,NULL,0),(74,200,0,1,0,'0','aspodmpasmd@opamspd.como','momaopdmamd','$argon2id$v=19$m=65536,t=3,p=4$PxmfEsbZXux5yfwuQ5vVpw$ysWoY9lFpuy5kp3VoYdzWdt1g9DBz6WOjyBOGdHGQP8','2023-05-20','2023-05-20',0,NULL,NULL,NULL,NULL,0),(75,200,0,1,0,'0','asdomad@oamsd.com','wnmeipowmaipds','$argon2id$v=19$m=65536,t=3,p=4$s2fmM5EuLdBpJVG/67uwjQ$Q8vFzvq4KSFB72D1VcPFZzGKriT1aLNHUy5TRt87iik','2023-05-20','2023-05-20',0,NULL,NULL,NULL,NULL,0),(113,200,0,3,0,'0','om.markovinovic@gmail.com','oliviajarden','$argon2id$v=19$m=65536,t=3,p=4$9g3WWlkq6vDNtjD3rDfK4A$YWCXNyAmaB9vWOnzk+0dZx7Co8S7vGc+19ZONHtmwpI','2023-11-14','2024-03-16',0,'719b7bcb6ccbabad770a6211a0a49341','6cf557b671a81345e490c1ccbd1ae097',NULL,NULL,0),(114,200,0,0,0,'0','testmail@gmail.com','aknsdknnd','$argon2id$v=19$m=65536,t=3,p=4$VpyoGUjoISwHnkKKK0RUUw$hTDW6OJh6VKLVS8vnbF3CDf9UJdZGNhwB6FNvWi9hWI','2023-11-14','2023-11-14',0,NULL,NULL,NULL,NULL,0),(115,200,0,5,0,'0','alksndlansd@gmail.com','Example','$argon2id$v=19$m=65536,t=3,p=4$T49Qcr8aLApbF5arqeOwSg$ZoZPJ4R9j9+86ZDOCF3gVrn+/nSAeAb3MnZR2slY2No','2023-12-06','2023-12-07',0,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verificationhashes`
--

DROP TABLE IF EXISTS `verificationhashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verificationhashes` (
  `UserID` int NOT NULL,
  `Hash` varchar(64) NOT NULL,
  `DateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`UserID`,`Hash`),
  UNIQUE KEY `userid_UNIQUE` (`UserID`),
  UNIQUE KEY `Hash_UNIQUE` (`Hash`),
  CONSTRAINT `verificationhashes_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verificationhashes`
--

LOCK TABLES `verificationhashes` WRITE;
/*!40000 ALTER TABLE `verificationhashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `verificationhashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videocategories`
--

DROP TABLE IF EXISTS `videocategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videocategories` (
  `VideoID` int NOT NULL,
  `CatID` int NOT NULL,
  PRIMARY KEY (`VideoID`,`CatID`),
  KEY `videocategories_ibfk_1` (`CatID`),
  CONSTRAINT `videocategories_ibfk_2` FOREIGN KEY (`CatID`) REFERENCES `categories` (`CatID`),
  CONSTRAINT `videocategories_ibfk_3` FOREIGN KEY (`VideoID`) REFERENCES `videos` (`VideoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videocategories`
--

LOCK TABLES `videocategories` WRITE;
/*!40000 ALTER TABLE `videocategories` DISABLE KEYS */;
INSERT INTO `videocategories` VALUES (296,1),(296,13),(293,27),(296,27),(292,29),(293,29),(292,32),(293,40),(293,41);
/*!40000 ALTER TABLE `videocategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videocomments`
--

DROP TABLE IF EXISTS `videocomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videocomments` (
  `CommentID` int NOT NULL AUTO_INCREMENT,
  `VideoID` int NOT NULL,
  `UserID` int NOT NULL,
  `DateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Comment` varchar(500) NOT NULL,
  PRIMARY KEY (`CommentID`),
  KEY `videocomments_ibfk_1` (`UserID`),
  KEY `videocomments_ibfk_3` (`VideoID`),
  KEY `videoid` (`VideoID`),
  CONSTRAINT `videocomments_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  CONSTRAINT `videocomments_ibfk_3` FOREIGN KEY (`VideoID`) REFERENCES `videos` (`VideoID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videocomments`
--

LOCK TABLES `videocomments` WRITE;
/*!40000 ALTER TABLE `videocomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `videocomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videofavorites`
--

DROP TABLE IF EXISTS `videofavorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videofavorites` (
  `UserID` int NOT NULL,
  `VideoID` int NOT NULL,
  PRIMARY KEY (`UserID`,`VideoID`),
  KEY `VideoID` (`VideoID`),
  CONSTRAINT `videofavorites_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  CONSTRAINT `videofavorites_ibfk_3` FOREIGN KEY (`VideoID`) REFERENCES `videos` (`VideoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videofavorites`
--

LOCK TABLES `videofavorites` WRITE;
/*!40000 ALTER TABLE `videofavorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `videofavorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videolikes`
--

DROP TABLE IF EXISTS `videolikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videolikes` (
  `UserID` int NOT NULL,
  `VideoID` int NOT NULL,
  `Reaction` enum('like','dislike') DEFAULT NULL,
  PRIMARY KEY (`UserID`,`VideoID`),
  KEY `VideoID` (`VideoID`),
  CONSTRAINT `videolikes_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  CONSTRAINT `videolikes_ibfk_2` FOREIGN KEY (`VideoID`) REFERENCES `videos` (`VideoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videolikes`
--

LOCK TABLES `videolikes` WRITE;
/*!40000 ALTER TABLE `videolikes` DISABLE KEYS */;
INSERT INTO `videolikes` VALUES (42,292,'like'),(113,292,'dislike');
/*!40000 ALTER TABLE `videolikes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videos` (
  `VideoID` int NOT NULL AUTO_INCREMENT,
  `VideoUID` varchar(36) DEFAULT NULL,
  `UserID` int NOT NULL,
  `Embed` varchar(50) DEFAULT NULL,
  `Processed` tinyint NOT NULL DEFAULT '0',
  `Verified` tinyint NOT NULL DEFAULT '0',
  `DateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Filename` varchar(100) DEFAULT NULL,
  `Duration` int DEFAULT '0',
  `MaxRes` int DEFAULT NULL,
  `Width` int DEFAULT NULL,
  `Height` int DEFAULT NULL,
  `FPS` int DEFAULT NULL,
  `Promoted` tinyint(1) NOT NULL DEFAULT '0',
  `Title` varchar(100) DEFAULT NULL,
  `OriginalTitle` varchar(100) DEFAULT NULL,
  `TitleLanguage` int DEFAULT NULL,
  `SpokenLanguage` int DEFAULT NULL,
  `Orientation` int DEFAULT NULL,
  `Visibility` int DEFAULT NULL,
  `Production` int DEFAULT NULL,
  `Views` int NOT NULL DEFAULT '0',
  `Likes` int NOT NULL DEFAULT '0',
  `Dislikes` int NOT NULL DEFAULT '0',
  `Favorites` int NOT NULL DEFAULT '0',
  `Comments` int NOT NULL DEFAULT '0',
  `ThumbChanges` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`VideoID`),
  UNIQUE KEY `VideoID_UNIQUE` (`VideoUID`),
  KEY `UserID` (`UserID`),
  KEY `verified` (`Verified`),
  FULLTEXT KEY `idx_title` (`Title`),
  CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=300 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (292,'6d731c2f-5af5-4ad4-9530-202eedcf4047',42,NULL,1,1,'2024-03-10 02:23:57','Maxi_Pith5.mp4',14,720,720,1280,31,0,'testvid','testvid',0,0,1,0,0,7,1,1,0,0,0),(293,'77a68e5e-7b7f-44ec-b761-de69f9b17b57',113,NULL,1,1,'2024-03-10 02:27:55','2024-02-18 06-26-45.mp4',71,1080,1920,1080,60,0,'Testvid2','Testvid2',0,0,1,0,0,8,0,0,0,0,0),(296,'79f464c4-2552-4fe5-a532-7f0fc851d2bf',42,NULL,1,1,'2024-03-11 18:26:34','VID_24060505_220210_161.mp4',16,360,480,854,30,0,'testingvid','testingvid',0,1,1,0,0,1,0,0,0,0,0),(298,'5ce7b732-e4af-4df3-826a-2c02815c32d0',42,NULL,0,0,'2024-03-25 16:00:14','Maxi_Pith5.mp4',0,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0),(299,'a7388085-e598-43f6-862f-2a8ca87abe9c',48,NULL,0,0,'2024-03-26 03:20:31','Maxi_Pith5.mp4',0,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0);
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videotags`
--

DROP TABLE IF EXISTS `videotags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videotags` (
  `VideoID` int NOT NULL,
  `Tag` varchar(20) NOT NULL,
  PRIMARY KEY (`VideoID`,`Tag`),
  UNIQUE KEY `videoTagIndexes` (`VideoID`,`Tag`),
  CONSTRAINT `videotags_ibfk_1` FOREIGN KEY (`VideoID`) REFERENCES `videos` (`VideoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videotags`
--

LOCK TABLES `videotags` WRITE;
/*!40000 ALTER TABLE `videotags` DISABLE KEYS */;
INSERT INTO `videotags` VALUES (292,'asda'),(292,'zxc'),(293,'asd'),(293,'zxc'),(296,'asd'),(296,'zxc');
/*!40000 ALTER TABLE `videotags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `writtenlanguages`
--

DROP TABLE IF EXISTS `writtenlanguages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `writtenlanguages` (
  `ID` int NOT NULL,
  `Language` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`,`Language`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `Language_UNIQUE` (`Language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `writtenlanguages`
--

LOCK TABLES `writtenlanguages` WRITE;
/*!40000 ALTER TABLE `writtenlanguages` DISABLE KEYS */;
INSERT INTO `writtenlanguages` VALUES (0,'English'),(1,'German'),(2,'French'),(3,'Spanish'),(4,'Italian'),(5,'Portuguese'),(6,'Polish'),(7,'Russian'),(8,'Japanese'),(9,'Korean'),(10,'Dutch'),(11,'Greek'),(12,'Czech'),(13,'Chinese (Simplified)');
/*!40000 ALTER TABLE `writtenlanguages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'pornmixer'
--

--
-- Dumping routines for database 'pornmixer'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-27  5:48:43
