-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: hms
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Current Database: `hms`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hms` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hms`;

--
-- Table structure for table `designation`
--

DROP TABLE IF EXISTS `designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `designation` (
  `emp_id` int NOT NULL,
  `emp_title` varchar(45) NOT NULL,
  `mail_id` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designation`
--

LOCK TABLES `designation` WRITE;
/*!40000 ALTER TABLE `designation` DISABLE KEYS */;
INSERT INTO `designation` VALUES (2,'Python Developer','surya2@gmail.com'),(3,'Java Developer','manisaketh3@gmail.com'),(4,'.net Developer','deepak4@gmail.com'),(5,'c Developer','dwjith5@gmail.com'),(6,'c++ Developer','ayyappa6@gmail.com'),(7,'ruby Developer','sai7@gmail.com'),(8,'data analyst','rakesh8@gmail.com'),(9,'database Developer','harsha9@gmail.com'),(10,'app Developer','ntr10@gmail.com'),(11,'mean stack Developer','sunny11@gmail.com');
/*!40000 ALTER TABLE `designation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_details`
--

DROP TABLE IF EXISTS `doctor_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_details` (
  `doctor_id` int NOT NULL AUTO_INCREMENT,
  `doctor_name` varchar(100) NOT NULL DEFAULT 'None',
  `doctor_age` int DEFAULT '0',
  `doctor_address` varchar(100) DEFAULT 'None',
  `doctor_phone_number` int NOT NULL DEFAULT '0',
  `doctor_qualification` varchar(100) DEFAULT 'None',
  PRIMARY KEY (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_details`
--

LOCK TABLES `doctor_details` WRITE;
/*!40000 ALTER TABLE `doctor_details` DISABLE KEYS */;
INSERT INTO `doctor_details` VALUES (7,'ashok',35,'dubai',123456789,'MBBS'),(8,'praveen',45,'usa',123456789,'MBBS'),(9,'harsha',80,'rajamundry',123456789,'MBBS'),(10,'ram',70,'vijayawada',123456789,'MBBS'),(11,'chandar',50,'bangloure',123456789,'MBBS'),(12,'pahul',35,'hyd',123456789,'MBBS');
/*!40000 ALTER TABLE `doctor_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_details`
--

DROP TABLE IF EXISTS `finance_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finance_details` (
  `finance_id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int DEFAULT NULL,
  `department` varchar(100) NOT NULL,
  `reason1` varchar(100) NOT NULL,
  `Debit` int NOT NULL DEFAULT '0',
  `credit` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`finance_id`),
  KEY `patient_id` (`patient_id`),
  CONSTRAINT `finance_details_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient_details` (`id`),
  CONSTRAINT `finance_details_chk_1` CHECK (((`Debit` >= 0) and (`credit` >= 0)))
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_details`
--

LOCK TABLES `finance_details` WRITE;
/*!40000 ALTER TABLE `finance_details` DISABLE KEYS */;
INSERT INTO `finance_details` VALUES (101,101,'lab','blood test',3000,0),(102,101,'lab','blood test',0,250),(103,110,'lab','blood test',3000,0);
/*!40000 ALTER TABLE `finance_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_details`
--

DROP TABLE IF EXISTS `login_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_details` (
  `user_role` varchar(45) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_details`
--

LOCK TABLES `login_details` WRITE;
/*!40000 ALTER TABLE `login_details` DISABLE KEYS */;
INSERT INTO `login_details` VALUES ('Admin','admin','1234'),('Doctor','ayyappa','1234'),('Doctor','dinesh','dini'),('Doctor','harsha','1234'),('Doctor','mohan','123456a'),('Doctor','pavanyendluri588','Pavan@99499'),('Doctor','prudhviyendluri4','Prudhvi@99');
/*!40000 ALTER TABLE `login_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_details`
--

DROP TABLE IF EXISTS `patient_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `mname` varchar(100) DEFAULT NULL,
  `lname` varchar(40) DEFAULT NULL,
  `dob` varchar(200) NOT NULL DEFAULT '1990-10-25',
  `bloodgroup` varchar(20) DEFAULT NULL,
  `phone_number` bigint NOT NULL DEFAULT '1234567890',
  `phone_number2` bigint NOT NULL DEFAULT '1234567890',
  `age` int DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `emailid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_details`
--

LOCK TABLES `patient_details` WRITE;
/*!40000 ALTER TABLE `patient_details` DISABLE KEYS */;
INSERT INTO `patient_details` VALUES (101,'pavan','ram chandar','yendluri','2002-11-02','A+',9110564858,9949978983,25,'male','tadepalli','guntur','None'),(102,'ayyappa','reddy','mopuri','1990-10-25','None',9000098902,1234567890,20,'male','None','None','None'),(103,'chandar',NULL,NULL,'1990-10-25',NULL,1234567890,1234567890,21,'male',NULL,NULL,NULL),(104,'prudhvi',NULL,NULL,'1990-10-25',NULL,1234567890,1234567890,17,'male',NULL,NULL,NULL),(105,'deepak','rohhit','reddy','1990-10-25','None',1234567890,1234567890,22,'male','None','None','None'),(106,'abhi',NULL,NULL,'1990-10-25',NULL,1234567890,1234567890,34,'male',NULL,NULL,NULL),(107,'lokesh',NULL,NULL,'1990-10-25',NULL,1234567890,1234567890,12,'male',NULL,NULL,NULL),(108,'rahul',NULL,NULL,'1990-10-25',NULL,1234567890,1234567890,13,'male',NULL,NULL,NULL),(109,'kolla',NULL,NULL,'1990-10-25',NULL,1234567890,1234567890,56,'male',NULL,NULL,NULL),(110,'dasta',NULL,NULL,'1990-10-25',NULL,1234567890,1234567890,55,'male',NULL,NULL,NULL),(111,'venkat','None','None','1990-10-25','b+',9110564858,1234567890,10,'male','None','None','None'),(112,'maha',NULL,NULL,'1990-10-25',NULL,1234567890,1234567890,17,'female',NULL,NULL,NULL),(113,'jaya',NULL,NULL,'1990-10-25',NULL,1234567890,1234567890,19,'female',NULL,NULL,NULL),(114,'sweety','None','None','1990-10-25','None',1234567890,1234567890,266,'female','None','None','None'),(115,'yogitha','None','None','1990-10-25','None',1234567890,1234567890,26,'female','None','None','None'),(116,'sathvik','None','None','1990-10-25','o+',9182544489,1234567890,19,'male','None','guntur','None'),(117,'sai',NULL,NULL,'1990-10-25',NULL,1234567890,1234567890,49,'male',NULL,NULL,NULL),(118,'harsha',NULL,NULL,'1990-10-25',NULL,1234567890,1234567890,33,'male',NULL,NULL,NULL),(119,'raja',NULL,NULL,'1990-10-25',NULL,1234567890,1234567890,22,'male',NULL,NULL,NULL),(120,'Ronny',NULL,'Caiafa','1990-10-25',NULL,1234567890,1234567890,26,'female',NULL,NULL,NULL),(121,'Marge',NULL,'Limmel','1990-10-25',NULL,1234567890,1234567890,26,'male',NULL,NULL,NULL),(122,'Norah',NULL,'Waymire','1990-10-25',NULL,1234567890,1234567890,26,'male',NULL,NULL,NULL),(123,'Aliza',NULL,'Baltimore','1990-10-25',NULL,1234567890,1234567890,26,'female',NULL,NULL,NULL),(124,'Mozell',NULL,'Pelkowski','1990-10-25',NULL,1234567890,1234567890,26,'male',NULL,NULL,NULL),(125,'Viola',NULL,'Bitsuie','1990-10-25',NULL,1234567890,1234567890,26,'male',NULL,NULL,NULL),(126,'Franklyn',NULL,'Emard','1990-10-25',NULL,1234567890,1234567890,26,'female',NULL,NULL,NULL),(127,'Willodean',NULL,'Konopacki','1990-10-25',NULL,1234567890,1234567890,26,'male',NULL,NULL,NULL),(128,'Beckie',NULL,'Silvestrini','1990-10-25',NULL,1234567890,1234567890,26,'male',NULL,NULL,NULL),(129,'Rebecka',NULL,'Gesick','1990-10-25',NULL,1234567890,1234567890,26,'female',NULL,NULL,NULL),(130,'Frederica',NULL,'Blunk','1990-10-25',NULL,1234567890,1234567890,26,'male',NULL,NULL,NULL),(131,'Glen',NULL,'Bartolet','1990-10-25',NULL,1234567890,1234567890,26,'male',NULL,NULL,NULL),(132,'Freeman',NULL,'Gochal','1990-10-25',NULL,1234567890,1234567890,26,'female',NULL,NULL,NULL),(133,'Vincent',NULL,'Meinerding','1990-10-25',NULL,1234567890,1234567890,26,'male',NULL,NULL,NULL),(134,'Rima',NULL,'Bevelacqua','1990-10-25',NULL,1234567890,1234567890,16,'female',NULL,NULL,NULL),(135,'Glendora',NULL,'Sarbacher','1990-10-25',NULL,1234567890,1234567890,43,'male',NULL,NULL,NULL),(136,'Avery',NULL,'Steier','1990-10-25',NULL,1234567890,1234567890,26,'male',NULL,NULL,NULL),(137,'Cristy',NULL,'Lother','1990-10-25',NULL,1234567890,1234567890,23,'female',NULL,NULL,NULL),(138,'Nicolette',NULL,'Brossart','1990-10-25',NULL,1234567890,1234567890,26,'female',NULL,NULL,NULL),(139,'Tracey',NULL,'Modzelewski','1990-10-25',NULL,1234567890,1234567890,56,'male',NULL,NULL,NULL),(140,'Virgina',NULL,'Tegarden','1990-10-25',NULL,1234567890,1234567890,43,'female',NULL,NULL,NULL),(141,'Tiera',NULL,'Frankel','1990-10-25',NULL,1234567890,1234567890,23,'female',NULL,NULL,NULL),(142,'Alaine',NULL,'Bergesen','1990-10-25',NULL,1234567890,1234567890,45,'male',NULL,NULL,NULL),(143,'Earleen',NULL,'Mai','1990-10-25',NULL,1234567890,1234567890,23,'female',NULL,NULL,NULL),(144,'Leonida',NULL,'Gobern','1990-10-25',NULL,1234567890,1234567890,55,'male',NULL,NULL,NULL),(145,'mohan','reddy','v','1989','a+',9059010846,9110564858,20,'male','None','ongole','None'),(146,'venkat','None','None','1989','a+',994997898,9110564858,25,'male','None','vijayawada','None');
/*!40000 ALTER TABLE `patient_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_queue`
--

DROP TABLE IF EXISTS `patient_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_queue` (
  `patient_id` int NOT NULL DEFAULT '1',
  `queue_type` varchar(40) NOT NULL DEFAULT 'None',
  `queue_status` varchar(40) NOT NULL DEFAULT 'None',
  `reason` varchar(40) NOT NULL DEFAULT 'None',
  `doctor_id` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`patient_id`),
  KEY `doctor_id` (`doctor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_queue`
--

LOCK TABLES `patient_queue` WRITE;
/*!40000 ALTER TABLE `patient_queue` DISABLE KEYS */;
INSERT INTO `patient_queue` VALUES (101,'ipo','completed','nose bleading',7),(104,'opd','waiting','headance',8),(105,'ipo','waiting','cut on neck',9),(107,'opd','waiting','stomach pain',12),(108,'ipo','not attended','leg facture',10),(109,'opd','completed','vomit',11),(110,'ipo','waiting','hand facture',7),(115,'opd','not attended','eye redness',8),(122,'ipo','not attended','eye surgery',11),(124,'ipo','waiting','accident',9),(134,'opd','completed','pregencey operation',10);
/*!40000 ALTER TABLE `patient_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_table`
--

DROP TABLE IF EXISTS `patient_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_table` (
  `patient_id` int NOT NULL,
  `patient_type` varchar(40) NOT NULL,
  `problem` varchar(40) NOT NULL DEFAULT 'UNKNOWN',
  `reffered_by` varchar(40) NOT NULL,
  `send_to` varchar(40) DEFAULT NULL,
  `doctor_username` varchar(30) NOT NULL,
  PRIMARY KEY (`patient_id`),
  CONSTRAINT `patient_table_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_table`
--

LOCK TABLES `patient_table` WRITE;
/*!40000 ALTER TABLE `patient_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms_details`
--

DROP TABLE IF EXISTS `rooms_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms_details` (
  `room_ID` int NOT NULL,
  `room_floor` int NOT NULL,
  `room_no` int NOT NULL,
  `rooms_status` varchar(40) NOT NULL,
  `booked_person_id` int DEFAULT NULL,
  PRIMARY KEY (`room_ID`),
  KEY `booked_person_id` (`booked_person_id`),
  CONSTRAINT `rooms_details_ibfk_1` FOREIGN KEY (`booked_person_id`) REFERENCES `patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms_details`
--

LOCK TABLES `rooms_details` WRITE;
/*!40000 ALTER TABLE `rooms_details` DISABLE KEYS */;
INSERT INTO `rooms_details` VALUES (11,1,1,'maintenance',101),(12,1,2,'occupied',101),(13,1,3,'unoccupied',123),(14,1,4,'occupied',108),(15,1,5,'occupied',101),(21,2,1,'unoccupied',103),(22,2,2,'occupied',101),(23,2,3,'occupied',101),(24,2,4,'unoccupied',101),(25,2,5,'occupied',101),(31,3,1,'occupied',101),(32,3,2,'occupied',101),(33,3,3,'unoccupied',101),(34,3,4,'maintenance',101),(35,3,5,'occupied',101),(41,4,1,'unoccupied',107),(42,4,2,'unoccupied',146),(43,4,3,'occupied',101),(44,4,4,'maintenance',101),(45,4,5,'occupied',101),(51,5,1,'occupied',101),(52,5,2,'occupied',101),(53,5,3,'occupied',101),(54,5,4,'maintenance',101),(55,5,5,'occupied',101);
/*!40000 ALTER TABLE `rooms_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_record`
--

DROP TABLE IF EXISTS `student_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_record` (
  `s_id` varchar(50) NOT NULL,
  `c_code` varchar(100) NOT NULL,
  `hindi` int NOT NULL,
  `english` int NOT NULL,
  `python` int NOT NULL,
  `physics` int NOT NULL,
  `computing` int NOT NULL,
  `math` int NOT NULL,
  `biology` int NOT NULL,
  `business` int NOT NULL,
  `t_score` int NOT NULL,
  `average` varchar(50) NOT NULL,
  `ranking` varchar(50) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `s_name` varchar(50) NOT NULL,
  `exam_no` varchar(50) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_record`
--

LOCK TABLES `student_record` WRITE;
/*!40000 ALTER TABLE `student_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_record` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-28 20:48:06
