CREATE DATABASE  IF NOT EXISTS `finaldb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `finaldb`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: finaldb
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `adminID` int NOT NULL AUTO_INCREMENT,
  `adminName` text,
  `adminAge` int DEFAULT NULL,
  `contactAdd` text,
  `personalEmail` text,
  `adminEmail` text,
  `adminPass` text,
  PRIMARY KEY (`adminID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Nguyen Van A',40,'1/1 Cau Giay, HN','vawna@gmail.com','ngvana1@gmail.com','83b3053ksr'),(2,'Tran Van B',35,'2/2 To Hieu, HN','vanb@gmail.com','trvanb2@gmail.com','5s8giww83k'),(3,'Nguyen Thi C',33,'3/3 Van Lang, HN','thic@gmail.com','ngthic3@gmao;c.om','tw0ljugd9e'),(4,'Le Thi D',30,'4/4 To Huu, Hn','thid@gmail.com','lethid4@gmail.com','6seeckdfqn'),(5,'Luu Thanh E',36,'5/5 Le Van Luong, HN','thanhe@gmail.com','luthanhe5@gmail.com','7o5uovnet0'),(6,'Doan Thuan An',19,'165 Cau Giay','adf@gmail.com','adf@gmail.com','123459'),(7,'Nguyen Trung',30,'Cau Giay','ngtr@gmaill.com','ngtrung7@gmail.com','asd@#1123q'),(8,'Nguyen van Binh',30,'Cau Giay ','ru@gmail.com','ru@gmail.com','123456');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `booking_view`
--

DROP TABLE IF EXISTS `booking_view`;
/*!50001 DROP VIEW IF EXISTS `booking_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `booking_view` AS SELECT 
 1 AS `cusID`,
 1 AS `cusName`,
 1 AS `cusEmail`,
 1 AS `resID`,
 1 AS `date`,
 1 AS `tickID`,
 1 AS `dateAvailable`,
 1 AS `type`,
 1 AS `sale`,
 1 AS `trainID`,
 1 AS `Time`,
 1 AS `Departure`,
 1 AS `Destination`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `cusID` int NOT NULL AUTO_INCREMENT,
  `cusName` text,
  `cusEmail` text,
  `cusAge` int DEFAULT NULL,
  `cusGender` text,
  PRIMARY KEY (`cusID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Tran Chung','trch@gmail.com',13,'Male'),(2,'Nguyen Hong Duy','duyhg@gmail.com',22,'Male'),(3,'Tran Gia Han','haan@gmail.com',28,'Male'),(4,'Le Thanh Thuy','thuythan@gmail.com',10,'Female'),(5,'Bui Cat Tuong','sandwall@gmail.com',43,'Female'),(7,'Nguyen Linh Chi','linch@gmail.com',47,'Female'),(8,'Duong Kim Ngan','ngaan@gmail.com',50,'Female'),(9,'Pham Quynh Anh','qanh@gmail.com',29,'Female'),(10,'Phan Thanh Hien','hienphan@gmail.com',16,'Female'),(11,'Doan Thuan An','adf@gmail.com',20,'Male'),(12,'Nguyen Van Tinh','tinh2342@gmail.com',19,'Male');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `resID` int NOT NULL AUTO_INCREMENT,
  `date` text,
  `tickID` int DEFAULT NULL,
  `adminID` int DEFAULT NULL,
  `cusID` int DEFAULT NULL,
  PRIMARY KEY (`resID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,'10/16/2021',1,1,1),(2,'11/6/2021',7,2,5),(3,'8/15/2021',9,5,4),(4,'1/1/2022',6,4,6),(5,'12/20/2021',5,3,10),(6,'12/24/2021',2,3,2),(7,'9/9/2021',4,1,3),(8,'8/3/2021',3,2,8),(9,'6/9/2021',10,2,9),(10,'10/31/2021',8,5,7);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `tickID` int NOT NULL AUTO_INCREMENT,
  `dateAvailable` text,
  `trainID` int DEFAULT NULL,
  `resID` int DEFAULT NULL,
  `type` text,
  `sale` int DEFAULT NULL,
  PRIMARY KEY (`tickID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,'12/16/2021',1,1,'A',1000000),(2,'6/9/2021',3,2,'B',600000),(3,'9/15/2021',2,3,'A',1000000),(4,'2/6/2022',2,4,'A',1000000),(5,'12/31/2021',2,5,'B',600000),(6,'12/24/2021',4,6,'C',200000),(7,'12/20/2021',1,7,'C',200000),(8,'9/9/2021',5,8,'A',1000000),(9,'1/1/2022',4,9,'B',600000),(10,'12/8/2021',5,10,'A',1000000);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `train`
--

DROP TABLE IF EXISTS `train`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `train` (
  `trainID` int NOT NULL AUTO_INCREMENT,
  `Time` text,
  `Departure` text,
  `Destination` text,
  PRIMARY KEY (`trainID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train`
--

LOCK TABLES `train` WRITE;
/*!40000 ALTER TABLE `train` DISABLE KEYS */;
INSERT INTO `train` VALUES (1,'6:00','HA NOI','TP HCM'),(2,'18:00','BAC NINH','VINH'),(3,'6:00','VINH ','HUE'),(4,'18:00','DA NANG ','HA NOI'),(5,'6:00','TP HCM','MONG CAI');
/*!40000 ALTER TABLE `train` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worker`
--

DROP TABLE IF EXISTS `worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worker` (
  `workerID` int NOT NULL AUTO_INCREMENT,
  `trainID` int DEFAULT NULL,
  `workerName` text,
  `workerAge` int DEFAULT NULL,
  `workerEmail` text,
  `Shift` text,
  `Job` text,
  `drivingLicence` text,
  PRIMARY KEY (`workerID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker`
--

LOCK TABLES `worker` WRITE;
/*!40000 ALTER TABLE `worker` DISABLE KEYS */;
INSERT INTO `worker` VALUES (1,1,'Nguyen Van Bình',22,'binhng@gmail.com','Day','Driver','TRUE'),(2,1,'Nguyen Van Quoc',14,'qupcvan@gmail.com','Night','Conductor','FALSE'),(3,2,'Bui Thu Trang',25,'trang@gmail.com','Day','Driver','TRUE'),(4,2,'Tran Trong Dai',11,'trongdai@gmail.com','Day','Conductor','FALSE'),(5,3,'Nguyen Thu Hang',5,'thuhang@gmail.com','Day','Tech Assistant','FALSE'),(6,3,'Lê Van Linh',12,'vanlinh2@gmail.com','Day','Driver','TRUE'),(7,4,'Phan Thanh Hop',23,'hopphan@gmail.com','Night','Conductor','FALSE'),(8,4,'Do Thành ',15,'thanhddoo@gmail.com','Night','Driver','TRUE'),(9,5,'Dong Gang Thep',22,'metalista@gmail.com','Day','Driver','TRUE'),(10,5,'Doan Quoc Vuong',1,'vuongquoc@gmail.com','Night','Conductor','FALSE'),(11,3,'Doan Thuan An',24,'adf@gmail.com','Day','Manager','FALSE'),(12,3,'Nguyen Van K',24,'ngvK@gmail.com','Day','Conductor','FALSE'),(22,4,'Nguyen Van F',24,'nvf@gmail.com','Day','Manager','FALSE'),(24,3,'Nguyen Van T',5,'ngvt@gmail.com','Night','Guard','FALSE'),(25,3,'Nguyen G',24,'afj@gmail.com','day','Driver','TRUE');
/*!40000 ALTER TABLE `worker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `worker_view`
--

DROP TABLE IF EXISTS `worker_view`;
/*!50001 DROP VIEW IF EXISTS `worker_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `worker_view` AS SELECT 
 1 AS `workerID`,
 1 AS `trainID`,
 1 AS `workerName`,
 1 AS `workerAge`,
 1 AS `workerEmail`,
 1 AS `Shift`,
 1 AS `Job`,
 1 AS `drivingLicence`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'finaldb'
--
/*!50003 DROP PROCEDURE IF EXISTS `adminAdd/Edit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `adminAdd/Edit`(
_ID INT,
_Name text,
_age int,
_contactAdd text,
_personalEmail text,
_adminEmail text,
_adminPass text,
_check text
)
BEGIN
  IF _check = 'insert' Then
     insert into admin ( adminName, adminAge, contactAdd, personalEmail, adminEmail, adminPass)
	 values (_Name, _age, _contactAdd, _personalEmail, _adminEmail, _adminPass);
  End if;
  if _check = 'edit' then
   UPDATE admin
   set
   adminName = _Name,
   adminAge = _age,
   contactAdd =_contactAdd, 
   personalEmail =_personalEmail, 
   adminEmail =_adminEmail, 
   adminPass =_adminPass
   where adminID = _ID;
  End if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `bookingInfoViewAll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `bookingInfoViewAll`()
Select * from booking_view ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `customerAdd/Edit/Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `customerAdd/Edit/Delete`(
_cusID INT,
_Name text,
_Email text,
_Age text,
_Gender text,
_check text
)
BEGIN
  IF _check ='insert' Then
     insert into customer (cusID, cusName, cusEmail, cusAge, cusGender )
	 values ( _cusID, _Name, _Email, _Age, _Gender);
  end if;
  If _check = 'edit' then
   UPDATE customer
   set
   cusName = _Name,
   cusEmail =_Email, 
   cusAge =_Age, 
   cusGender =_Gender
   where cusID = _cusID;
  End if;
  If _check = 'delete' then
    DELETE FROM customer
    WHERE cusID= _cusID;
  end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `reservationAdd/Edit/Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `reservationAdd/Edit/Delete`(
_resID INT,
_date text,
_tickID int,
_adminID int,
_cusID int,
_check text
)
BEGIN
  IF _check ='insert' Then
     insert into reservation (resID, date, tickID, adminID, cusID )
	 values (_resID,_date, _tickID, _adminID, _cusID);
  end if;
  If _check = 'edit' then
   UPDATE reservation
   set
   date = _date,
   tickID = _tickID,
   adminID = _adminID,
   cusID = _cusID
   where resID = _resID;
  End if;
  If _check = 'delete' then
    DELETE FROM reservation
    WHERE resID= _resID;
  end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `searchBookingInfoByCustomerID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `searchBookingInfoByCustomerID`(
in _searchid int
)
BEGIN
select*from booking_view
where cusID like concat('%',_searchid,'%'); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `searchBookingInfoByReservationDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `searchBookingInfoByReservationDate`(
in _searchDate varchar(45)
)
BEGIN
select*from booking_view
where date like concat('%',_searchDate,'%'); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `searchBookingInfoByTicketID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `searchBookingInfoByTicketID`(
in _searchID int
)
BEGIN
select*from booking_view
where tickID like concat('%',_searchID,'%'); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `searchBookingInfoCustomerName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `searchBookingInfoCustomerName`(
in _searchname varchar(45)
)
BEGIN
select*from booking_view
where cusName like concat('%',_searchname,'%'); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `searchWorkerByTrainID&Shift` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `searchWorkerByTrainID&Shift`(
in _trainID int,
_shift text
)
BEGIN
select * from worker
where trainID like concat('%',_trainID,'%')
and Shift like concat('%',_shift,'%'); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ticketAdd/Edit/Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ticketAdd/Edit/Delete`(
_tickID int,
_dateAvailable text,
_trainID int,
_resID int,
_type text,
_sale int
)
BEGIN
  IF _check ='insert' Then
     insert into ticket (tickID, dateAvailable, trainID, resID, type, sale)
	 values (_tickID, _dateAvailable, _trainID, _resID, _type, _sale);
  end if;
  If _check = 'edit' then
   UPDATE ticket
   set
   dateAvailable = _dateAvailable, 
   trainID = _trainID, 
   resID = _resID, 
   type = _type, 
   sale = _sale
   where resID = _resID;
  End if;
  If _check = 'delete' then
    DELETE FROM reservation
    WHERE resID= _resID;
  end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `workerAdd/Edit/Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `workerAdd/Edit/Delete`(
_workerID int,
_trainID int,
_workerName text,
_workerAge int,
_workerEmail text,
_Shift text,
_Job text,
_drivingLicence text,
_check text
)
BEGIN
  IF _check ='insert' Then
     insert into worker (workerID, trainID, workerName, workerAge , workerEmail, Shift, Job, drivingLicence)
	 values (_workerID, _trainID, _workerName, _workerAge , _workerEmail, _Shift, _Job, _drivingLicence);
  end if;
  If _check = 'edit' then
   UPDATE worker
   set
   trainID = _trainID, 
   workerName = _workerName,
   workerAge = _workerAge, 
   workerEmail = _workerEmail, 
   Shift = _Shift, 
   Job = _Job, 
   drivingLicence = _drivingLicence
   where workerID = _workerID;
  End if;
  If _check = 'delete' then
    DELETE FROM worker
    WHERE workerID= _workerID;
  end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `workerViewAll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `workerViewAll`()
Select * from worker_view ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `booking_view`
--

/*!50001 DROP VIEW IF EXISTS `booking_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `booking_view` AS select `customer`.`cusID` AS `cusID`,`customer`.`cusName` AS `cusName`,`customer`.`cusEmail` AS `cusEmail`,`reservation`.`resID` AS `resID`,`reservation`.`date` AS `date`,`ticket`.`tickID` AS `tickID`,`ticket`.`dateAvailable` AS `dateAvailable`,`ticket`.`type` AS `type`,`ticket`.`sale` AS `sale`,`train`.`trainID` AS `trainID`,`train`.`Time` AS `Time`,`train`.`Departure` AS `Departure`,`train`.`Destination` AS `Destination` from (((`customer` join `reservation`) join `ticket`) join `train`) where ((`customer`.`cusID` = `reservation`.`cusID`) and (`ticket`.`tickID` = `reservation`.`tickID`) and (`ticket`.`trainID` = `train`.`trainID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `worker_view`
--

/*!50001 DROP VIEW IF EXISTS `worker_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `worker_view` AS select `worker`.`workerID` AS `workerID`,`worker`.`trainID` AS `trainID`,`worker`.`workerName` AS `workerName`,`worker`.`workerAge` AS `workerAge`,`worker`.`workerEmail` AS `workerEmail`,`worker`.`Shift` AS `Shift`,`worker`.`Job` AS `Job`,`worker`.`drivingLicence` AS `drivingLicence` from `worker` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-17 16:06:18
