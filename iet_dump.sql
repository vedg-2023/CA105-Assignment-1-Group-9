-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: iet
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `accomodation`
--

DROP TABLE IF EXISTS `accomodation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accomodation` (
  `acco_id` varchar(10) NOT NULL,
  `staff_id` varchar(10) DEFAULT NULL,
  `acco_date` date DEFAULT NULL,
  `acco_city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`acco_id`),
  KEY `staff_id` (`staff_id`),
  CONSTRAINT `accomodation_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accomodation`
--

LOCK TABLES `accomodation` WRITE;
/*!40000 ALTER TABLE `accomodation` DISABLE KEYS */;
INSERT INTO `accomodation` VALUES ('AC0001','WX0001','2023-11-15','Nagpur'),('AC0002','WX0003','2023-11-20','Mysuru'),('AC0003','WX0005','2023-11-10','Chandigarh'),('AC0004','WX0007','2023-11-05','Coimbatore'),('AC0005','WX0009','2023-11-25','Lucknow'),('AC0006','WX0011','2023-11-08','Vadodara'),('AC0007','WX0013','2023-10-25','Kolkata'),('AC0008','WX0015','2023-10-30','Bhopal'),('AC0009','WX0017','2023-10-15','Hyderabad'),('AC0010','WX0019','2023-11-12','Thane'),('AC0011','WX0002','2023-05-05','Jaipur'),('AC0012','WX0004','2023-05-10','Ahmedabad'),('AC0013','WX0006','2023-05-15','Bangalore'),('AC0014','WX0008','2023-05-20','Pune'),('AC0015','WX0010','2023-05-25','Chennai'),('AC0016','WX0012','2023-06-05','Delhi'),('AC0017','WX0014','2023-06-10','Indore'),('AC0018','WX0016','2023-06-15','Mumbai'),('AC0019','WX0018','2023-06-20','Nagpur'),('AC0020','WX0020','2023-06-25','Bengaluru');
/*!40000 ALTER TABLE `accomodation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent`
--

DROP TABLE IF EXISTS `agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agent` (
  `agent_id` varchar(10) NOT NULL,
  `agent_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`agent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent`
--

LOCK TABLES `agent` WRITE;
/*!40000 ALTER TABLE `agent` DISABLE KEYS */;
INSERT INTO `agent` VALUES ('A0001','Aarav Patel'),('A0002','Sanya Desai'),('A0003','Vikram Sharma'),('A0004','Anaya Kapoor'),('A0005','Rohan Mehra'),('A0006','Isha Singh'),('A0007','Arjun Kumar'),('A0008','Neha Reddy'),('A0009','Raj Malhotra'),('A0010','Priya Verma'),('A0011','Aditya Gupta'),('A0012','Pooja Joshi'),('A0013','Varun Bansal'),('A0014','Kavya Khanna'),('A0015','Aryan Kapoor'),('A0016','Ishita Gupta'),('A0017','Akash Sharma'),('A0018','Meera Singh'),('A0019','Rahul Agarwal'),('A0020','Sneha Yadav');
/*!40000 ALTER TABLE `agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `ticket_id` varchar(10) NOT NULL,
  `p_id` varchar(10) NOT NULL,
  `agent_id` varchar(10) DEFAULT NULL,
  `schedule_id` varchar(10) NOT NULL,
  `seat_id` varchar(10) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `disc_percent` int DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ticket_id`),
  KEY `p_id` (`p_id`),
  KEY `agent_id` (`agent_id`),
  KEY `schedule_id` (`schedule_id`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `passenger` (`p_id`),
  CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`agent_id`) REFERENCES `agent` (`agent_id`),
  CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`schedule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES ('T0001','P0001','A0011','SCH0099','S0001',500,10,'confirmed'),('T0002','P0002','A0011','SCH0099','S0002',550,12,'confirmed'),('T0003','P0003','A0011','SCH0099','S0003',600,10,'confirmed'),('T0004','P0004','A0011','SCH0099','S0004',480,12,'confirmed'),('T0005','P0005','A0011','SCH0099','S0005',520,10,'confirmed'),('T0006','P0006','A0011','SCH0099','S0006',540,12,'confirmed'),('T0007','P0007','A0011','SCH0099','S0007',580,10,'confirmed'),('T0008','P0008','A0011','SCH0099','S0008',620,12,'confirmed'),('T0009','P0009','A0011','SCH0099','S0009',660,10,'confirmed'),('T0010','P0010','A0011','SCH0099','S0010',700,10,'confirmed'),('T0011','P0001','A0011','SCH0099','S0001',500,10,'confirmed'),('T0012','P0002','A0011','SCH0100','S0002',550,12,'confirmed'),('T0013','P0003','A0011','SCH0101','S0003',600,10,'confirmed'),('T0014','P0004','A0011','SCH0102','S0004',480,12,'confirmed'),('T0015','P0005','A0011','SCH0103','S0005',520,10,'confirmed'),('T0016','P0006','A0011','SCH0104','S0006',540,12,'confirmed'),('T1060','P0014','A0016','SCH0041','S0033',189,12,'confirmed'),('T1108','P0002',NULL,'SCH0057','S0035',839,0,'confirmed'),('T1196','P0021',NULL,'SCH0006','S0037',865,12,'confirmed'),('T1203','P0023','A0017','SCH0066','S0038',114,0,'confirmed'),('T1212','P0021',NULL,'SCH0010','S0038',888,12,'confirmed'),('T1236','P0030',NULL,'SCH0067','S0039',630,0,'confirmed'),('T1418','P0017',NULL,'SCH0023','S0005',572,10,'confirmed'),('T1641','P0002','A0020','SCH0053','S0051',51,0,'confirmed'),('T1683','P0007',NULL,'SCH0001','S0052',926,10,'confirmed'),('T1951','P0024',NULL,'SCH0047','S0061',841,12,'confirmed'),('T2045','P0024','A0016','SCH0084','S0001',899,12,'confirmed'),('T2291','P0017','A0016','SCH0102','S0071',776,10,'confirmed'),('T2401','P0005',NULL,'SCH0072','S0075',20,0,'confirmed'),('T2457','P0030',NULL,'SCH0100','S0076',308,0,'confirmed'),('T2496','P0003',NULL,'SCH0083','S0078',963,10,'confirmed'),('T2570','P0002',NULL,'SCH0024','S0080',482,0,'confirmed'),('T2725','P0001',NULL,'SCH0073','S0085',615,12,'confirmed'),('T2790','P0001',NULL,'SCH0072','S0087',996,12,'confirmed'),('T2792','P0026',NULL,'SCH0064','S0087',496,12,'confirmed'),('T2807','P0023',NULL,'SCH0061','S0009',505,0,'confirmed'),('T2867','P0029','A0010','SCH0095','S0089',276,10,'confirmed'),('T2881','P0010',NULL,'SCH0013','S0089',535,0,'confirmed'),('T2928','P0012',NULL,'SCH0024','S0091',617,0,'confirmed'),('T3183','P0005',NULL,'SCH0055','S0099',594,0,'confirmed'),('T3211','P0002',NULL,'SCH0013','S0010',762,0,'confirmed'),('T3212','P0011',NULL,'SCH0073','S0100',114,10,'confirmed'),('T3229','P0002',NULL,'SCH0062','S0100',772,0,'confirmed'),('T3268','P0023','A0001','SCH0100','S0101',998,0,'confirmed'),('T3307','P0020','A0017','SCH0058','S0011',14,12,'confirmed'),('T3325','P0016','A0011','SCH0069','S0103',948,0,'confirmed'),('T3361','P0013',NULL,'SCH0049','S0104',318,0,'confirmed'),('T3407','P0006',NULL,'SCH0068','S0106',215,12,'confirmed'),('T3467','P0024',NULL,'SCH0098','S0108',423,12,'confirmed'),('T3525','P0016',NULL,'SCH0030','S0109',533,0,'confirmed'),('T3526','P0006',NULL,'SCH0027','S0109',404,12,'confirmed'),('T3545','P0017',NULL,'SCH0011','S0110',857,10,'confirmed'),('T3603','P0008',NULL,'SCH0073','S0012',51,0,'confirmed'),('T3676','P0027',NULL,'SCH0008','S0114',772,10,'confirmed'),('T3787','P0014',NULL,'SCH0053','S0012',570,12,'confirmed'),('T3835','P0003',NULL,'SCH0021','S0119',64,10,'confirmed'),('T3875','P0028',NULL,'SCH0071','S0120',924,0,'confirmed'),('T4081','P0014',NULL,'SCH0105','S0013',981,12,'confirmed'),('T5706','P0018',NULL,'SCH0070','S0018',984,10,'confirmed'),('T6619','P0015','A0012','SCH0010','S0021',484,0,'confirmed'),('T7004','P0004','A0020','SCH0069','S0022',260,12,'confirmed'),('T8820','P0026',NULL,'SCH0056','S0028',809,12,'confirmed'),('T8866','P0029',NULL,'SCH0023','S0028',683,10,'confirmed'),('T8887','P0030',NULL,'SCH0010','S0028',858,0,'confirmed'),('T9070','P0021',NULL,'SCH0097','S0029',696,12,'confirmed'),('T9605','P0029','A0011','SCH0061','S0030',897,10,'confirmed');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coach`
--

DROP TABLE IF EXISTS `coach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coach` (
  `coach_id` varchar(10) NOT NULL,
  `mileage` int DEFAULT NULL,
  `last_mntn_dt` date DEFAULT NULL,
  `train_id` varchar(10) DEFAULT NULL,
  `driver_id` varchar(10) DEFAULT NULL,
  `codriver_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`coach_id`),
  KEY `driver_id` (`driver_id`),
  KEY `codriver_id` (`codriver_id`),
  CONSTRAINT `coach_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `staff` (`staff_id`),
  CONSTRAINT `coach_ibfk_2` FOREIGN KEY (`codriver_id`) REFERENCES `staff` (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach`
--

LOCK TABLES `coach` WRITE;
/*!40000 ALTER TABLE `coach` DISABLE KEYS */;
INSERT INTO `coach` VALUES ('C0001',4500,'2023-03-12','T001','WX0001','WX0002'),('C0002',5200,'2023-02-28','T001','WX0003','WX0004'),('C0003',3500,'2023-01-15','T001','WX0005','WX0006'),('C0004',4800,'2023-04-20','T001','WX0007','WX0008'),('C0005',5800,'2023-05-10','T001','WX0009','WX0010'),('C0006',3200,'2023-06-05','T001','WX0011','WX0012'),('C0007',5500,'2023-07-15','T001','WX0013','WX0014'),('C0008',4000,'2023-08-22','T001','WX0015','WX0016'),('C0009',4200,'2023-09-28','T001','WX0017','WX0018'),('C0010',3600,'2023-10-15','T001','WX0019','WX0020'),('C0011',5100,'2023-01-05','T002','WX0002','WX0003'),('C0012',3300,'2023-02-10','T002','WX0004','WX0005'),('C0013',4900,'2023-03-25','T002','WX0006','WX0007'),('C0014',3800,'2023-04-30','T002','WX0008','WX0009'),('C0015',4200,'2023-05-20','T002','WX0010','WX0011'),('C0016',5500,'2023-06-15','T002','WX0012','WX0013'),('C0017',3400,'2023-07-28','T002','WX0014','WX0015'),('C0018',4700,'2023-08-15','T002','WX0016','WX0017'),('C0019',5900,'2023-09-02','T002','WX0018','WX0019'),('C0020',3900,'2023-10-10','T002','WX0020','WX0001'),('C0021',4100,'2023-02-01','T003','WX0003','WX0004'),('C0022',5300,'2023-03-18','T003','WX0005','WX0006'),('C0023',3700,'2023-04-05','T003','WX0007','WX0008'),('C0024',5000,'2023-05-12','T003','WX0009','WX0010'),('C0025',6000,'2023-06-20','T003','WX0011','WX0012'),('C0026',3300,'2023-07-25','T003','WX0013','WX0014'),('C0027',4600,'2023-08-10','T003','WX0015','WX0016'),('C0028',5700,'2023-09-15','T003','WX0017','WX0018'),('C0029',3800,'2023-10-22','T003','WX0019','WX0020'),('C0030',4400,'2023-11-05','T003','WX0002','WX0003'),('C0031',4900,'2023-01-20','T004','WX0004','WX0005'),('C0032',3500,'2023-02-28','T004','WX0006','WX0007'),('C0033',5200,'2023-03-15','T004','WX0008','WX0009'),('C0034',4000,'2023-04-20','T004','WX0010','WX0011'),('C0035',4800,'2023-05-10','T004','WX0012','WX0013'),('C0036',4200,'2023-06-05','T004','WX0014','WX0015'),('C0037',5500,'2023-07-15','T004','WX0016','WX0017'),('C0038',3600,'2023-08-22','T004','WX0018','WX0019'),('C0039',5300,'2023-09-28','T004','WX0020','WX0001'),('C0040',4700,'2023-10-15','T004','WX0002','WX0003');
/*!40000 ALTER TABLE `coach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `include`
--

DROP TABLE IF EXISTS `include`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `include` (
  `schedule_id` varchar(10) DEFAULT NULL,
  `act_start_date` date DEFAULT NULL,
  `act_end_date` date DEFAULT NULL,
  `act_depart_time` time DEFAULT NULL,
  `act_arrival_time` time DEFAULT NULL,
  KEY `schedule_id` (`schedule_id`),
  CONSTRAINT `include_ibfk_1` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`schedule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `include`
--

LOCK TABLES `include` WRITE;
/*!40000 ALTER TABLE `include` DISABLE KEYS */;
INSERT INTO `include` VALUES ('SCH0001','2023-10-10','2023-10-10','08:00:00','14:10:00'),('SCH0002','2023-10-15','2023-10-15','10:30:00','16:10:00'),('SCH0003','2023-10-20','2023-10-20','13:45:00','19:55:00'),('SCH0004','2023-10-25','2023-10-25','17:00:00','22:40:00'),('SCH0005','2023-10-30','2023-10-30','19:30:00','01:40:00'),('SCH0006','2023-11-05','2023-11-05','22:00:00','03:40:00'),('SCH0007','2023-10-10','2023-10-10','08:00:00','14:10:00'),('SCH0008','2023-10-15','2023-10-15','10:30:00','16:10:00'),('SCH0009','2023-10-20','2023-10-20','13:45:00','19:55:00'),('SCH0010','2023-10-25','2023-10-25','17:00:00','22:40:00'),('SCH0011','2023-10-30','2023-10-30','19:30:00','01:40:00'),('SCH0012','2023-11-05','2023-11-05','22:00:00','03:40:00'),('SCH0013','2023-10-10','2023-10-10','08:00:00','14:40:00'),('SCH0014','2023-10-15','2023-10-15','10:30:00','16:40:00'),('SCH0015','2023-10-20','2023-10-20','13:45:00','21:25:00'),('SCH0016','2023-10-25','2023-10-25','17:00:00','23:10:00'),('SCH0017','2023-10-30','2023-10-30','19:30:00','02:10:00'),('SCH0018','2023-11-05','2023-11-05','22:00:00','04:10:00'),('SCH0019','2023-10-10','2023-10-10','08:00:00','14:40:00'),('SCH0020','2023-10-15','2023-10-15','10:30:00','16:40:00'),('SCH0021','2023-10-20','2023-10-20','13:45:00','21:25:00'),('SCH0022','2023-10-25','2023-10-25','17:00:00','23:10:00'),('SCH0023','2023-10-30','2023-10-30','19:30:00','02:10:00'),('SCH0024','2023-11-05','2023-11-05','22:00:00','04:10:00'),('SCH0025','2023-10-10','2023-10-10','08:00:00','17:00:00'),('SCH0026','2023-10-15','2023-10-15','10:30:00','19:00:00'),('SCH0027','2023-10-20','2023-10-20','13:45:00','22:45:00'),('SCH0028','2023-10-25','2023-10-25','17:00:00','01:30:00'),('SCH0029','2023-10-30','2023-10-30','19:30:00','04:30:00'),('SCH0030','2023-11-05','2023-11-05','22:00:00','06:30:00'),('SCH0031','2023-10-10','2023-10-10','08:00:00','17:00:00'),('SCH0032','2023-10-15','2023-10-15','10:30:00','19:00:00'),('SCH0033','2023-10-20','2023-10-20','13:45:00','22:45:00'),('SCH0034','2023-10-25','2023-10-25','17:00:00','01:30:00'),('SCH0035','2023-10-30','2023-10-30','19:30:00','04:30:00'),('SCH0036','2023-11-05','2023-11-05','22:00:00','06:30:00'),('SCH0037','2023-10-10','2023-10-10','08:00:00','13:50:00'),('SCH0038','2023-10-15','2023-10-15','10:30:00','15:50:00'),('SCH0039','2023-10-20','2023-10-20','13:45:00','19:35:00'),('SCH0040','2023-10-25','2023-10-25','17:00:00','22:20:00'),('SCH0041','2023-10-30','2023-10-30','19:30:00','01:20:00'),('SCH0042','2023-11-05','2023-11-05','22:00:00','03:20:00'),('SCH0043','2023-10-10','2023-10-10','08:00:00','13:50:00'),('SCH0044','2023-10-15','2023-10-15','10:30:00','15:50:00'),('SCH0045','2023-10-20','2023-10-20','13:45:00','19:35:00'),('SCH0046','2023-10-25','2023-10-25','17:00:00','22:20:00'),('SCH0047','2023-10-30','2023-10-30','19:30:00','01:20:00'),('SCH0048','2023-11-05','2023-11-05','22:00:00','03:20:00'),('SCH0049','2023-10-10','2023-10-10','08:00:00','15:05:00'),('SCH0050','2023-10-15','2023-10-15','10:30:00','17:05:00'),('SCH0051','2023-10-20','2023-10-20','13:45:00','20:50:00'),('SCH0052','2023-10-25','2023-10-25','17:00:00','23:25:00'),('SCH0053','2023-10-30','2023-10-30','19:30:00','03:25:00'),('SCH0054','2023-11-05','2023-11-05','22:00:00','04:25:00'),('SCH0055','2023-10-10','2023-10-10','08:00:00','15:05:00'),('SCH0056','2023-10-15','2023-10-15','10:30:00','17:05:00'),('SCH0057','2023-10-20','2023-10-20','13:45:00','20:50:00'),('SCH0058','2023-10-25','2023-10-25','17:00:00','23:25:00'),('SCH0059','2023-10-30','2023-10-30','19:30:00','03:25:00'),('SCH0060','2023-11-05','2023-11-05','22:00:00','04:25:00'),('SCH0061','2023-10-10','2023-10-10','08:00:00','16:15:00'),('SCH0062','2023-10-15','2023-10-15','10:30:00','18:15:00'),('SCH0063','2023-10-20','2023-10-20','13:45:00','22:00:00'),('SCH0064','2023-10-10','2023-10-10','08:00:00','16:15:00'),('SCH0065','2023-10-15','2023-10-15','10:30:00','18:15:00'),('SCH0066','2023-10-20','2023-10-20','13:45:00','22:00:00'),('SCH0067','2023-10-25','2023-10-25','17:00:00','00:15:00'),('SCH0068','2023-10-30','2023-10-30','19:30:00','03:15:00'),('SCH0069','2023-10-10','2023-10-10','08:00:00','19:15:00'),('SCH0070','2023-10-15','2023-10-15','10:30:00','21:15:00'),('SCH0071','2023-10-20','2023-10-20','13:45:00','01:00:00'),('SCH0072','2023-10-10','2023-10-10','08:00:00','19:15:00'),('SCH0073','2023-10-15','2023-10-15','10:30:00','21:15:00'),('SCH0074','2023-10-20','2023-10-20','13:45:00','01:00:00'),('SCH0075','2023-10-25','2023-10-25','17:00:00','05:45:00'),('SCH0076','2023-10-30','2023-10-30','19:30:00','08:45:00'),('SCH0077','2023-10-10','2023-10-10','08:00:00','13:30:00'),('SCH0078','2023-10-15','2023-10-15','10:30:00','15:30:00'),('SCH0079','2023-10-20','2023-10-20','13:45:00','19:15:00'),('SCH0080','2023-10-10','2023-10-10','08:00:00','13:30:00'),('SCH0081','2023-10-15','2023-10-15','10:30:00','15:30:00'),('SCH0082','2023-10-20','2023-10-20','13:45:00','19:15:00'),('SCH0083','2023-10-25','2023-10-25','17:00:00','22:00:00'),('SCH0084','2023-10-30','2023-10-30','19:30:00','01:00:00'),('SCH0085','2023-11-01','2023-11-01','08:00:00','11:00:00'),('SCH0086','2023-11-05','2023-11-05','10:30:00','13:30:00'),('SCH0087','2023-11-10','2023-11-10','13:45:00','17:15:00'),('SCH0088','2023-11-15','2023-11-15','17:00:00','20:00:00'),('SCH0089','2023-11-01','2023-11-01','08:00:00','11:00:00'),('SCH0090','2023-11-05','2023-11-05','10:30:00','13:30:00'),('SCH0091','2023-11-10','2023-11-10','13:45:00','17:15:00'),('SCH0092','2023-11-01','2023-11-01','08:00:00','14:00:00'),('SCH0093','2023-11-05','2023-11-05','10:30:00','16:30:00'),('SCH0094','2023-11-10','2023-11-10','13:45:00','20:15:00'),('SCH0095','2023-11-15','2023-11-15','17:00:00','23:00:00'),('SCH0096','2023-11-01','2023-11-01','08:00:00','14:00:00'),('SCH0097','2023-11-05','2023-11-05','10:30:00','16:30:00'),('SCH0098','2023-11-10','2023-11-10','13:45:00','20:15:00');
/*!40000 ALTER TABLE `include` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance`
--

DROP TABLE IF EXISTS `maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintenance` (
  `mntn_id` varchar(10) NOT NULL,
  `coach_id` varchar(10) DEFAULT NULL,
  `mntn_date` date DEFAULT NULL,
  `next_mntn_date` date DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mntn_id`),
  KEY `coach_id` (`coach_id`),
  CONSTRAINT `maintenance_ibfk_1` FOREIGN KEY (`coach_id`) REFERENCES `coach` (`coach_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance`
--

LOCK TABLES `maintenance` WRITE;
/*!40000 ALTER TABLE `maintenance` DISABLE KEYS */;
INSERT INTO `maintenance` VALUES ('M0001','C0001','2023-03-12','2023-09-12','routine'),('M0002','C0003','2023-01-15','2023-07-15','routine'),('M0003','C0004','2023-04-20','2023-10-20','routine'),('M0004','C0006','2023-06-05','2023-12-05','routine'),('M0005','C0008','2023-08-22','2024-02-22','routine'),('M0006','C0009','2023-09-28','2024-03-28','routine'),('M0007','C0010','2023-10-15','2024-04-15','routine'),('M0008','C0012','2023-02-10','2023-08-10','routine'),('M0009','C0013','2023-03-25','2023-09-25','routine'),('M0010','C0014','2023-04-30','2023-10-30','routine'),('M0011','C0015','2023-05-20','2023-11-20','routine'),('M0012','C0017','2023-07-28','2024-01-28','routine'),('M0013','C0018','2023-08-15','2024-02-15','routine'),('M0014','C0020','2023-10-10','2024-04-10','routine'),('M0015','C0021','2023-02-01','2023-08-01','routine'),('M0016','C0023','2023-04-05','2023-10-05','routine'),('M0017','C0026','2023-07-25','2024-01-25','routine'),('M0018','C0027','2023-08-10','2024-02-10','routine'),('M0019','C0029','2023-10-22','2024-04-22','routine'),('M0020','C0030','2023-11-05','2024-05-05','routine');
/*!40000 ALTER TABLE `maintenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `op_days`
--

DROP TABLE IF EXISTS `op_days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `op_days` (
  `route_id` varchar(10) DEFAULT NULL,
  `days` varchar(10) DEFAULT NULL,
  KEY `route_id` (`route_id`),
  CONSTRAINT `op_days_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `op_days`
--

LOCK TABLES `op_days` WRITE;
/*!40000 ALTER TABLE `op_days` DISABLE KEYS */;
INSERT INTO `op_days` VALUES ('R0001','Monday'),('R0001','Tuesday'),('R0001','Wednesday'),('R0001','Thursday'),('R0001','Friday'),('R0001','Saturday'),('R0002','Friday'),('R0002','Saturday'),('R0002','Sunday'),('R0002','Monday'),('R0002','Tuesday'),('R0002','Wednesday'),('R0003','Sunday'),('R0004','Wednesday'),('R0004','Thursday'),('R0004','Friday'),('R0004','Saturday'),('R0004','Sunday'),('R0004','Monday'),('R0005','Thursday'),('R0005','Friday'),('R0005','Saturday'),('R0005','Sunday'),('R0005','Monday'),('R0005','Tuesday'),('R0006','Sunday'),('R0006','Monday'),('R0006','Tuesday'),('R0006','Wednesday'),('R0006','Thursday'),('R0006','Friday'),('R0007','Saturday'),('R0008','Monday'),('R0008','Wednesday'),('R0008','Saturday'),('R0009','Sunday'),('R0009','Monday'),('R0009','Tuesday'),('R0009','Wednesday'),('R0009','Thursday'),('R0009','Friday'),('R0009','Saturday'),('R0010','Sunday'),('R0010','Monday'),('R0010','Tuesday'),('R0010','Wednesday'),('R0010','Thursday'),('R0010','Friday'),('R0010','Saturday');
/*!40000 ALTER TABLE `op_days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passenger` (
  `p_id` varchar(10) NOT NULL,
  `p_name` varchar(50) DEFAULT NULL,
  `p_birhtdate` date DEFAULT NULL,
  `p_gender` varchar(20) DEFAULT NULL,
  `p_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger`
--

LOCK TABLES `passenger` WRITE;
/*!40000 ALTER TABLE `passenger` DISABLE KEYS */;
INSERT INTO `passenger` VALUES ('P0001','Aarav Gupta','2005-03-15','Male','Child'),('P0002','Diya Patel','1990-08-22','Female','Adult'),('P0003','Rohan Sharma','1982-05-10','Male','Senior Citizen'),('P0004','Priya Singh','2010-12-03','Female','Child'),('P0005','Amit Verma','1985-06-18','Male','Adult'),('P0006','Ananya Das','2008-09-25','Female','Child'),('P0007','Nikhil Joshi','1976-11-07','Male','Senior Citizen'),('P0008','Sneha Deshmukh','1995-04-14','Female','Adult'),('P0009','Vijay Kumar','1950-02-28','Male','Senior Citizen'),('P0010','Swati Singh','1989-07-12','Female','Adult'),('P0011','Rajesh Khanna','1970-10-05','Male','Senior Citizen'),('P0012','Meena Choudhary','1983-01-20','Female','Adult'),('P0013','Sanjay Dubey','1998-06-08','Male','Adult'),('P0014','Rekha Sharma','2012-09-16','Female','Child'),('P0015','Arjun Menon','1980-12-29','Male','Adult'),('P0016','Anjali Desai','1992-04-02','Female','Adult'),('P0017','Rahul Gupta','1945-07-18','Male','Senior Citizen'),('P0018','Kiran Patel','1968-11-25','Female','Senior Citizen'),('P0019','Vishal Nair','1996-03-07','Male','Adult'),('P0020','Preeti Barua','2003-08-14','Female','Child'),('P0021','Aditya Kumar','2007-02-19','Male','Child'),('P0022','Shreya Gupta','1993-09-28','Female','Adult'),('P0023','Aryan Singh','1988-06-15','Male','Adult'),('P0024','Aisha Sharma','2015-11-04','Female','Child'),('P0025','Rahul Verma','1986-04-21','Male','Adult'),('P0026','Ishita Das','2011-07-30','Female','Child'),('P0027','Alok Joshi','1972-12-12','Male','Senior Citizen'),('P0028','Shalini Desai','1999-05-07','Female','Adult'),('P0029','Vikram Kumar','1955-08-23','Male','Senior Citizen'),('P0030','Neeta Singh','1987-01-17','Female','Adult');
/*!40000 ALTER TABLE `passenger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route` (
  `route_id` varchar(10) NOT NULL,
  `route` varchar(50) DEFAULT NULL,
  `start_station_id` varchar(10) DEFAULT NULL,
  `end_station_id` varchar(10) DEFAULT NULL,
  `distance` int DEFAULT NULL,
  `time_taken` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`route_id`),
  KEY `start_station_id` (`start_station_id`),
  KEY `end_station_id` (`end_station_id`),
  CONSTRAINT `route_ibfk_1` FOREIGN KEY (`start_station_id`) REFERENCES `station` (`station_id`),
  CONSTRAINT `route_ibfk_2` FOREIGN KEY (`end_station_id`) REFERENCES `station` (`station_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES ('R0001','Mumbai Central to Gandhinagar','S0001','S0021',548,'5 Hours 40 Minutes'),('R0002','New Delhi to Himachal','S0002','S0022',412,'6 Hours 10 Minutes'),('R0003','Secunderabad to Visakhapatnam','S0023','S0024',500,'8 Hours 30 Minutes'),('R0004','Mumbai Central to Sainagar Shirdi','S0001','S0025',248,'5 Hours 20 Minutes'),('R0005','Mumbai Central to Solapur','S0001','S0026',400,'6 Hours 35 Minutes'),('R0006','Bhopal to Delhi','S0012','S0027',700,'7 Hours 45 Minutes'),('R0007','Lonavala to Ajmer','S0028','S0029',1062,'10 Hours 45 Minutes'),('R0008','Dharwad to Bengaluru','S0030','S0005',432,'5 Hours'),('R0009','Bhopal to Indore','S0012','S0017',246,'3 Hours'),('R0010','Mumbai Central to Goa','S0001','S0031',588,'6 Hours'),('R0011','Gandhinagar to Mumbai Central','S0021','S0001',548,'5 Hours 40 Minutes'),('R0012','Himachal to New Delhi','S0022','S0002',412,'6 Hours 10 Minutes'),('R0013','Visakhapatnam to Secunderabad','S0024','S0023',500,'8 Hours 30 Minutes'),('R0014','Sainagar Shirdi to Mumbai Central','S0025','S0001',248,'5 Hours 20 Minutes'),('R0015','Solapur to Mumbai Central','S0026','S0001',400,'6 Hours 35 Minutes'),('R0016','Delhi to Bhopal','S0027','S0012',700,'7 Hours 45 Minutes'),('R0017','Ajmer to Lonavala','S0029','S0028',1062,'10 Hours 45 Minutes'),('R0018','Bengaluru to Dharwad','S0005','S0030',432,'5 Hours'),('R0019','Indore to Bhopal','S0017','S0012',246,'3 Hours'),('R0020','Goa to Mumbai Central','S0031','S0001',588,'6 Hours');
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `schedule_id` varchar(10) NOT NULL,
  `route_id` varchar(10) DEFAULT NULL,
  `train_id` varchar(10) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `depart_time` time DEFAULT NULL,
  `arrival_time` time DEFAULT NULL,
  PRIMARY KEY (`schedule_id`),
  KEY `route_id` (`route_id`),
  CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES ('SCH0001','R0001','T001','2023-10-10','2023-10-10','08:00:00','13:40:00'),('SCH0002','R0001','T001','2023-10-15','2023-10-15','10:30:00','16:10:00'),('SCH0003','R0001','T001','2023-10-20','2023-10-20','13:45:00','19:25:00'),('SCH0004','R0001','T001','2023-10-25','2023-10-25','17:00:00','22:40:00'),('SCH0005','R0001','T001','2023-10-30','2023-10-30','19:30:00','01:10:00'),('SCH0006','R0001','T001','2023-11-05','2023-11-05','22:00:00','03:40:00'),('SCH0007','R0011','T001','2023-10-10','2023-10-10','08:00:00','13:40:00'),('SCH0008','R0011','T001','2023-10-15','2023-10-15','10:30:00','16:10:00'),('SCH0009','R0011','T001','2023-10-20','2023-10-20','13:45:00','19:25:00'),('SCH0010','R0011','T001','2023-10-25','2023-10-25','17:00:00','22:40:00'),('SCH0011','R0011','T001','2023-10-30','2023-10-30','19:30:00','01:10:00'),('SCH0012','R0011','T001','2023-11-05','2023-11-05','22:00:00','03:40:00'),('SCH0013','R0002','T002','2023-10-10','2023-10-10','08:00:00','14:10:00'),('SCH0014','R0002','T002','2023-10-15','2023-10-15','10:30:00','16:40:00'),('SCH0015','R0002','T002','2023-10-20','2023-10-20','13:45:00','20:55:00'),('SCH0016','R0002','T002','2023-10-25','2023-10-25','17:00:00','23:10:00'),('SCH0017','R0002','T002','2023-10-30','2023-10-30','19:30:00','01:40:00'),('SCH0018','R0002','T002','2023-11-05','2023-11-05','22:00:00','04:10:00'),('SCH0019','R0012','T002','2023-10-10','2023-10-10','08:00:00','14:10:00'),('SCH0020','R0012','T002','2023-10-15','2023-10-15','10:30:00','16:40:00'),('SCH0021','R0012','T002','2023-10-20','2023-10-20','13:45:00','20:55:00'),('SCH0022','R0012','T002','2023-10-25','2023-10-25','17:00:00','23:10:00'),('SCH0023','R0012','T002','2023-10-30','2023-10-30','19:30:00','01:40:00'),('SCH0024','R0012','T002','2023-11-05','2023-11-05','22:00:00','04:10:00'),('SCH0025','R0003','T003','2023-10-10','2023-10-10','08:00:00','16:30:00'),('SCH0026','R0003','T003','2023-10-15','2023-10-15','10:30:00','19:00:00'),('SCH0027','R0003','T003','2023-10-20','2023-10-20','13:45:00','22:15:00'),('SCH0028','R0003','T003','2023-10-25','2023-10-25','17:00:00','01:30:00'),('SCH0029','R0003','T003','2023-10-30','2023-10-30','19:30:00','04:00:00'),('SCH0030','R0003','T003','2023-11-05','2023-11-05','22:00:00','06:30:00'),('SCH0031','R0013','T003','2023-10-10','2023-10-10','08:00:00','16:30:00'),('SCH0032','R0013','T003','2023-10-15','2023-10-15','10:30:00','19:00:00'),('SCH0033','R0013','T003','2023-10-20','2023-10-20','13:45:00','22:15:00'),('SCH0034','R0013','T003','2023-10-25','2023-10-25','17:00:00','01:30:00'),('SCH0035','R0013','T003','2023-10-30','2023-10-30','19:30:00','04:00:00'),('SCH0036','R0013','T003','2023-11-05','2023-11-05','22:00:00','06:30:00'),('SCH0037','R0004','T004','2023-10-10','2023-10-10','08:00:00','13:20:00'),('SCH0038','R0004','T004','2023-10-15','2023-10-15','10:30:00','15:50:00'),('SCH0039','R0004','T004','2023-10-20','2023-10-20','13:45:00','19:05:00'),('SCH0040','R0004','T004','2023-10-25','2023-10-25','17:00:00','22:20:00'),('SCH0041','R0004','T004','2023-10-30','2023-10-30','19:30:00','00:50:00'),('SCH0042','R0004','T004','2023-11-05','2023-11-05','22:00:00','03:20:00'),('SCH0043','R0014','T004','2023-10-10','2023-10-10','08:00:00','13:20:00'),('SCH0044','R0014','T004','2023-10-15','2023-10-15','10:30:00','15:50:00'),('SCH0045','R0014','T004','2023-10-20','2023-10-20','13:45:00','19:05:00'),('SCH0046','R0014','T004','2023-10-25','2023-10-25','17:00:00','22:20:00'),('SCH0047','R0014','T004','2023-10-30','2023-10-30','19:30:00','00:50:00'),('SCH0048','R0014','T004','2023-11-05','2023-11-05','22:00:00','03:20:00'),('SCH0049','R0005','T005','2023-10-10','2023-10-10','08:00:00','14:35:00'),('SCH0050','R0005','T005','2023-10-15','2023-10-15','10:30:00','17:05:00'),('SCH0051','R0005','T005','2023-10-20','2023-10-20','13:45:00','20:20:00'),('SCH0052','R0005','T005','2023-10-25','2023-10-25','17:00:00','23:25:00'),('SCH0053','R0005','T005','2023-10-30','2023-10-30','19:30:00','02:55:00'),('SCH0054','R0005','T005','2023-11-05','2023-11-05','22:00:00','04:25:00'),('SCH0055','R0015','T005','2023-10-10','2023-10-10','08:00:00','14:35:00'),('SCH0056','R0015','T005','2023-10-15','2023-10-15','10:30:00','17:05:00'),('SCH0057','R0015','T005','2023-10-20','2023-10-20','13:45:00','20:20:00'),('SCH0058','R0015','T005','2023-10-25','2023-10-25','17:00:00','23:25:00'),('SCH0059','R0015','T005','2023-10-30','2023-10-30','19:30:00','02:55:00'),('SCH0060','R0015','T005','2023-11-05','2023-11-05','22:00:00','04:25:00'),('SCH0061','R0006','T006','2023-10-10','2023-10-10','08:00:00','15:45:00'),('SCH0062','R0006','T006','2023-10-15','2023-10-15','10:30:00','18:15:00'),('SCH0063','R0006','T006','2023-10-20','2023-10-20','13:45:00','21:30:00'),('SCH0064','R0016','T006','2023-10-10','2023-10-10','08:00:00','15:45:00'),('SCH0065','R0016','T006','2023-10-15','2023-10-15','10:30:00','18:15:00'),('SCH0066','R0016','T006','2023-10-20','2023-10-20','13:45:00','21:30:00'),('SCH0067','R0016','T006','2023-10-25','2023-10-25','17:00:00','00:15:00'),('SCH0068','R0016','T006','2023-10-30','2023-10-30','19:30:00','02:45:00'),('SCH0069','R0007',NULL,'2023-10-10','2023-10-10','08:00:00','18:45:00'),('SCH0070','R0007',NULL,'2023-10-15','2023-10-15','10:30:00','21:15:00'),('SCH0071','R0007',NULL,'2023-10-20','2023-10-20','13:45:00','00:30:00'),('SCH0072','R0017','T007','2023-10-10','2023-10-10','08:00:00','18:45:00'),('SCH0073','R0017','T007','2023-10-15','2023-10-15','10:30:00','21:15:00'),('SCH0074','R0017','T007','2023-10-20','2023-10-20','13:45:00','00:30:00'),('SCH0075','R0017','T007','2023-10-25','2023-10-25','17:00:00','05:45:00'),('SCH0076','R0017','T007','2023-10-30','2023-10-30','19:30:00','08:15:00'),('SCH0077','R0008','T008','2023-10-10','2023-10-10','08:00:00','13:00:00'),('SCH0078','R0008','T008','2023-10-15','2023-10-15','10:30:00','15:30:00'),('SCH0079','R0008','T008','2023-10-20','2023-10-20','13:45:00','18:45:00'),('SCH0080','R0018','T008','2023-10-10','2023-10-10','08:00:00','13:00:00'),('SCH0081','R0018','T008','2023-10-15','2023-10-15','10:30:00','15:30:00'),('SCH0082','R0018','T008','2023-10-20','2023-10-20','13:45:00','18:45:00'),('SCH0083','R0018','T008','2023-10-25','2023-10-25','17:00:00','22:00:00'),('SCH0084','R0018','T008','2023-10-30','2023-10-30','19:30:00','00:30:00'),('SCH0085','R0009','T009','2023-11-01','2023-11-01','08:00:00','11:00:00'),('SCH0086','R0009','T009','2023-11-05','2023-11-05','10:30:00','13:30:00'),('SCH0087','R0009','T009','2023-11-10','2023-11-10','13:45:00','16:45:00'),('SCH0088','R0009','T009','2023-11-15','2023-11-15','17:00:00','20:00:00'),('SCH0089','R0019','T009','2023-11-01','2023-11-01','08:00:00','11:00:00'),('SCH0090','R0019','T009','2023-11-05','2023-11-05','10:30:00','13:30:00'),('SCH0091','R0019','T009','2023-11-10','2023-11-10','13:45:00','16:45:00'),('SCH0092','R0010','T010','2023-11-01','2023-11-01','08:00:00','14:00:00'),('SCH0093','R0010','T010','2023-11-05','2023-11-05','10:30:00','16:30:00'),('SCH0094','R0010','T010','2023-11-10','2023-11-10','13:45:00','19:45:00'),('SCH0095','R0010','T010','2023-11-15','2023-11-15','17:00:00','23:00:00'),('SCH0096','R0020','T010','2023-11-01','2023-11-01','08:00:00','14:00:00'),('SCH0097','R0020','T010','2023-11-05','2023-11-05','10:30:00','16:30:00'),('SCH0098','R0020','T010','2023-11-10','2023-11-10','13:45:00','19:45:00'),('SCH0099','R0001','T001','2023-09-15','2023-09-15','12:00:00','17:40:00'),('SCH0100','R0002','T001','2023-09-16','2023-09-16','12:30:00','18:40:00'),('SCH0101','R0003','T001','2023-09-17','2023-09-17','14:00:00','20:30:00'),('SCH0102','R0004','T001','2023-09-18','2023-09-18','13:45:00','19:05:00'),('SCH0103','R0005','T001','2023-09-19','2023-09-19','11:15:00','17:50:00'),('SCH0104','R0006','T001','2023-09-20','2023-09-20','10:30:00','16:15:00'),('SCH0105','R0007','T001','2023-09-21','2023-09-21','09:45:00','15:30:00'),('SCH0106','R0008','T001','2023-09-22','2023-09-22','08:30:00','14:20:00'),('SCH0107','R0009','T001','2023-09-23','2023-09-23','16:20:00','22:10:00'),('SCH0108','R0010','T001','2023-09-24','2023-09-24','15:00:00','21:30:00');
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seats`
--

DROP TABLE IF EXISTS `seats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seats` (
  `seat_id` varchar(10) NOT NULL,
  `coach_id` varchar(10) DEFAULT NULL,
  `seat_no` int DEFAULT NULL,
  PRIMARY KEY (`seat_id`),
  KEY `coach_id` (`coach_id`),
  CONSTRAINT `seats_ibfk_1` FOREIGN KEY (`coach_id`) REFERENCES `coach` (`coach_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seats`
--

LOCK TABLES `seats` WRITE;
/*!40000 ALTER TABLE `seats` DISABLE KEYS */;
INSERT INTO `seats` VALUES ('S0001','C0001',1),('S0002','C0001',2),('S0003','C0001',3),('S0004','C0001',4),('S0005','C0001',5),('S0006','C0001',6),('S0007','C0001',7),('S0008','C0001',8),('S0009','C0001',9),('S0010','C0001',10),('S0011','C0001',11),('S0012','C0001',12),('S0013','C0001',13),('S0014','C0001',14),('S0015','C0001',15),('S0016','C0001',16),('S0017','C0001',17),('S0018','C0001',18),('S0019','C0001',19),('S0020','C0001',20),('S0021','C0001',21),('S0022','C0001',22),('S0023','C0001',23),('S0024','C0001',24),('S0025','C0001',25),('S0026','C0001',26),('S0027','C0001',27),('S0028','C0001',28),('S0029','C0001',29),('S0030','C0001',30),('S0031','C0002',1),('S0032','C0002',2),('S0033','C0002',3),('S0034','C0002',4),('S0035','C0002',5),('S0036','C0002',6),('S0037','C0002',7),('S0038','C0002',8),('S0039','C0002',9),('S0040','C0002',10),('S0041','C0002',11),('S0042','C0002',12),('S0043','C0002',13),('S0044','C0002',14),('S0045','C0002',15),('S0046','C0002',16),('S0047','C0002',17),('S0048','C0002',18),('S0049','C0002',19),('S0050','C0002',20),('S0051','C0002',21),('S0052','C0002',22),('S0053','C0002',23),('S0054','C0002',24),('S0055','C0002',25),('S0056','C0002',26),('S0057','C0002',27),('S0058','C0002',28),('S0059','C0002',29),('S0060','C0002',30),('S0061','C0002',31),('S0062','C0002',32),('S0063','C0002',33),('S0064','C0002',34),('S0065','C0002',35),('S0066','C0002',36),('S0067','C0002',37),('S0068','C0002',38),('S0069','C0002',39),('S0070','C0002',40),('S0071','C0002',41),('S0072','C0002',42),('S0073','C0002',43),('S0074','C0002',44),('S0075','C0002',45),('S0076','C0002',46),('S0077','C0002',47),('S0078','C0002',48),('S0079','C0002',49),('S0080','C0002',50),('S0081','C0002',51),('S0082','C0002',52),('S0083','C0002',53),('S0084','C0002',54),('S0085','C0002',55),('S0086','C0002',56),('S0087','C0002',57),('S0088','C0002',58),('S0089','C0002',59),('S0090','C0002',60),('S0091','C0003',1),('S0092','C0003',2),('S0093','C0003',3),('S0094','C0003',4),('S0095','C0003',5),('S0096','C0003',6),('S0097','C0003',7),('S0098','C0003',8),('S0099','C0003',9),('S0100','C0003',10),('S0101','C0003',11),('S0102','C0003',12),('S0103','C0003',13),('S0104','C0003',14),('S0105','C0003',15),('S0106','C0003',16),('S0107','C0003',17),('S0108','C0003',18),('S0109','C0003',19),('S0110','C0003',20),('S0111','C0003',21),('S0112','C0003',22),('S0113','C0003',23),('S0114','C0003',24),('S0115','C0003',25),('S0116','C0003',26),('S0117','C0003',27),('S0118','C0003',28),('S0119','C0003',29),('S0120','C0003',30);
/*!40000 ALTER TABLE `seats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` varchar(10) NOT NULL,
  `staff_name` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `pincode` int DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('WX0001','Amit Sharma','9876543210','Mumbai',400001),('WX0002','Priya Patel','9988776655','Delhi',110001),('WX0003','Rahul Singh','7654321098','Chennai',600001),('WX0004','Pooja Gupta','8765432109','Kolkata',700001),('WX0005','Ravi Verma','9898989898','Bangalore',560001),('WX0006','Anita Das','9090909090','Hyderabad',500001),('WX0007','Nitin Joshi','8765432101','Ahmedabad',380001),('WX0008','Sneha Deshmukh','9876543212','Pune',411001),('WX0009','Vijay Kumar','9988776656','Jaipur',302001),('WX0010','Swati Singh','7654321099','Lucknow',226001),('WX0011','Rajesh Khanna','8765432102','Kochi',682001),('WX0012','Meena Choudhary','9090909091','Bhopal',462001),('WX0013','Sanjay Dubey','8765432103','Patna',800001),('WX0014','Rekha Sharma','9898989899','Kanpur',208001),('WX0015','Arjun Menon','9090909092','Coimbatore',641001),('WX0016','Anjali Desai','9876543214','Nagpur',440001),('WX0017','Rahul Gupta','9988776658','Indore',452001),('WX0018','Kiran Patel','7654321101','Vadodara',390001),('WX0019','Vishal Nair','8765432105','Thiruvananthapuram',695001),('WX0020','Preeti Barua','9090909093','Guwahati',781001),('WX1234','Ketan Vibhuti','9812131415','Pune',411007);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station` (
  `station_id` varchar(10) NOT NULL,
  `station_name` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `pincode` int DEFAULT NULL,
  PRIMARY KEY (`station_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
INSERT INTO `station` VALUES ('S0001','Mumbai Central','Mumbai',400001),('S0002','New Delhi Junction','New Delhi',110001),('S0003','Chennai Central','Chennai',600001),('S0004','Howrah Junction','Kolkata',700001),('S0005','Bangalore City','Bangalore',560001),('S0006','Hyderabad Deccan','Hyderabad',500001),('S0007','Ahmedabad Junction','Ahmedabad',380001),('S0008','Pune Junction','Pune',411001),('S0009','Jaipur Junction','Jaipur',302001),('S0010','Lucknow Charbagh','Lucknow',226001),('S0011','Kochi Junction','Kochi',682001),('S0012','Bhopal Junction','Bhopal',462001),('S0013','Patna Junction','Patna',800001),('S0014','Kanpur Central','Kanpur',208001),('S0015','Coimbatore Junction','Coimbatore',641001),('S0016','Nagpur Junction','Nagpur',440001),('S0017','Indore Junction','Indore',452001),('S0018','Vadodara Junction','Vadodara',390001),('S0019','Thiruvananthapuram Central','Thiruvananthapuram',695001),('S0020','Guwahati Junction','Guwahati',781001),('S0021','Gandhinagar Junction','Gandhinagar',382001),('S0022','Shimla Junction','Himachal',171001),('S0023','Secunderabad Junction','Secunderabad',500003),('S0024','Visakhapatnam Junction','Visakhapatnam',530001),('S0025','Sainagar Shirdi','Shirdi',423109),('S0026','Solapur Junction','Solapur',413001),('S0027','Old Delhi Junction','Delhi',110006),('S0028','Lonavala','Lonavala',410401),('S0029','Ajmer Junction','Ajmer',305001),('S0030','Dharwad','Dharwad',580001),('S0031','Goa','Goa',403001);
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `train`
--

DROP TABLE IF EXISTS `train`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `train` (
  `train_id` varchar(10) NOT NULL,
  `train_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`train_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train`
--

LOCK TABLES `train` WRITE;
/*!40000 ALTER TABLE `train` DISABLE KEYS */;
INSERT INTO `train` VALUES ('T001','Rajdhani Express'),('T002','Shatabdi Express'),('T003','Duronto Express'),('T004','Garib Rath'),('T005','Deccan Queen'),('T006','Konkan Kanya Express'),('T007','Hawrah Mail'),('T008','Mumbai Local'),('T009','Chennai Express'),('T010','Kolkata Express'),('T011','Ganga Jamuna Express'),('T012','Malabar Express'),('T013','Jodhpur Express'),('T014','Bengaluru Shatabdi'),('T015','Punjab Mail'),('T016','Goa Express'),('T017','Ahmedabad Express'),('T018','Kochi Rajya Rani'),('T019','Ooty Mountain Rail'),('T020','Delhi Metro');
/*!40000 ALTER TABLE `train` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-15 21:26:47
