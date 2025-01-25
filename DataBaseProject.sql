-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: databaseproject
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
-- Table structure for table `blood`
--

DROP TABLE IF EXISTS `blood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blood` (
  `bl_id` int NOT NULL,
  `b_group` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `d_id` int DEFAULT NULL,
  `bn_id` int DEFAULT NULL,
  PRIMARY KEY (`bl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood`
--

LOCK TABLES `blood` WRITE;
/*!40000 ALTER TABLE `blood` DISABLE KEYS */;
INSERT INTO `blood` VALUES (1,'A+',1,11),(2,'B-',2,22),(3,'O+',3,24),(4,'AB+',4,26),(5,'A-',5,30),(6,'B+',6,32),(7,'AB-',7,40),(8,'B-',8,47),(9,'O-',9,59),(10,'A+',10,68);
/*!40000 ALTER TABLE `blood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blood_clinicalanalyst`
--

DROP TABLE IF EXISTS `blood_clinicalanalyst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blood_clinicalanalyst` (
  `bl_id` int NOT NULL AUTO_INCREMENT,
  `analyst_id` int NOT NULL,
  PRIMARY KEY (`bl_id`,`analyst_id`),
  KEY `analyst_id` (`analyst_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood_clinicalanalyst`
--

LOCK TABLES `blood_clinicalanalyst` WRITE;
/*!40000 ALTER TABLE `blood_clinicalanalyst` DISABLE KEYS */;
INSERT INTO `blood_clinicalanalyst` VALUES (2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(5,10),(10,10),(6,11),(10,11),(9,13),(4,20),(2,29),(1,30),(7,32),(3,39),(8,42);
/*!40000 ALTER TABLE `blood_clinicalanalyst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blood_transfusion`
--

DROP TABLE IF EXISTS `blood_transfusion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blood_transfusion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int DEFAULT NULL,
  `blood_id` int DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `intakeDate` date DEFAULT NULL,
  `transfusion_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patient_id` (`patient_id`),
  KEY `blood_id` (`blood_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood_transfusion`
--

LOCK TABLES `blood_transfusion` WRITE;
/*!40000 ALTER TABLE `blood_transfusion` DISABLE KEYS */;
INSERT INTO `blood_transfusion` VALUES (1,1,11442,3.8,'2024-07-03','2024-07-04'),(2,2,12313,1.3,'2024-08-16','2024-08-17'),(3,3,11432,1.3,'2024-07-15','2024-07-16'),(4,4,15432,1.6,'2024-01-05','2024-01-06'),(5,5,19990,1.9,'2024-11-06','2024-11-07'),(6,6,16669,2,'2024-12-17','2024-12-18'),(7,7,19000,3.2,'2024-07-09','2024-07-10'),(8,8,12544,2.1,'2024-11-16','2024-11-17'),(9,9,12908,2.4,'2024-11-05','2024-11-06'),(10,10,15566,3.1,'2024-05-06','2024-05-07');
/*!40000 ALTER TABLE `blood_transfusion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloodbank`
--

DROP TABLE IF EXISTS `bloodbank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bloodbank` (
  `bn_id` int NOT NULL,
  `manager_id` int NOT NULL,
  `name` varchar(55) COLLATE utf8mb4_general_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`bn_id`),
  UNIQUE KEY `manager_id` (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloodbank`
--

LOCK TABLES `bloodbank` WRITE;
/*!40000 ALTER TABLE `bloodbank` DISABLE KEYS */;
INSERT INTO `bloodbank` VALUES (11,4,'Unity Hospital','Houston'),(22,2,'Mercy Medical','Los Angeles'),(24,6,'Sunrise Clinic','San Francisco'),(26,8,'Harbor Clinic','Seattle'),(30,1,'City Hospital','New York'),(32,3,'Central Clinic','Chicago'),(40,9,'Summit Hospital','Denver'),(47,5,'Hope Clinic','Miami'),(59,7,'Valley Hospital','Phoenix'),(68,10,'Lakeside Clinic','Minneapolis');
/*!40000 ALTER TABLE `bloodbank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinicalanalyst`
--

DROP TABLE IF EXISTS `clinicalanalyst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinicalanalyst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinicalanalyst`
--

LOCK TABLES `clinicalanalyst` WRITE;
/*!40000 ALTER TABLE `clinicalanalyst` DISABLE KEYS */;
INSERT INTO `clinicalanalyst` VALUES (1,'Weel Smeth'),(2,'Jolen'),(3,'Tom'),(4,'Kim lee'),(5,'Sela'),(6,'slena'),(7,'Chan'),(8,'Fleix'),(9,'Tolean'),(10,'jeemry');
/*!40000 ALTER TABLE `clinicalanalyst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_donor`
--

DROP TABLE IF EXISTS `contact_donor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_donor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `d_id` int NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `donor_patient_fk` (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_donor`
--

LOCK TABLES `contact_donor` WRITE;
/*!40000 ALTER TABLE `contact_donor` DISABLE KEYS */;
INSERT INTO `contact_donor` VALUES (1,1,'apt. 5A,usa','0555339200'),(2,2,'Suite 102,spain','0548299896'),(3,3,'43 Rue Jouffroy','0544869022'),(4,4,'4-1 Kio, Japan','0592154766'),(5,5,'Floor, Australia','0508053567'),(6,6,'Suite 102,usa','0563866533'),(7,7,'Vinbaeltet 34,spain','0500286441'),(8,8,'Bronok,Singapore','0598003786'),(9,9,' Spinnaker,usa','0548669499'),(10,10,'Estrada Portugal','0580666030');
/*!40000 ALTER TABLE `contact_donor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_patient`
--

DROP TABLE IF EXISTS `contact_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_patient` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(111) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contact_patient_fk` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_patient`
--

LOCK TABLES `contact_patient` WRITE;
/*!40000 ALTER TABLE `contact_patient` DISABLE KEYS */;
INSERT INTO `contact_patient` VALUES (1,'Jhon Beech','apt. 5A,usa','40.32.2555'),(2,'Ann Ford','54,rue Royale','7025551838'),(3,'Lana Waxe','Vinbaeltet 34,spain',' 95204555'),(4,'Alex Tles','8489 Strong St.','9555 98-07'),(5,'Cristiano Tles','149 Spinnaker,usa','4155551450'),(6,'Diana Lee','897 Long Airport Avenue','25542-7555'),(7,'Sara Smeth','67, rue des Cinquante Otages',' 49 6 6690'),(8,'Kai Lee','Lyonerstr. 34','6505555787'),(9,'Talisca','5557  North Pendale Street','2125557818'),(10,'Sara weel','Erling Skakkes gate 78','2035552570');
/*!40000 ALTER TABLE `contact_patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donor`
--

DROP TABLE IF EXISTS `donor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donor` (
  `d_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `age` int DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bgroup` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `disease` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bquantity` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `d_date` date DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor`
--

LOCK TABLES `donor` WRITE;
/*!40000 ALTER TABLE `donor` DISABLE KEYS */;
INSERT INTO `donor` VALUES (1,'Alex',25,'Male','1','Scabies ','500 ml','2023-01-01'),(2,'Hala',30,'Female','2','Scarlet fever','400 ml','2023-02-01'),(3,'David',35,'Male','3','Schizophrenia ','350 ml','2024-03-01'),(4,'Mila',40,'Female','4','Scoliosis ','450 ml','2023-04-01'),(5,'Sam',34,'Male','5','Shingles ','550 ml','2024-05-01'),(6,'Kyle',28,'Female','6',' Shortness of breath','300 ml','2023-06-01'),(7,'Erik',37,'Male','7','Schizophrenia ','400ml','2024-03-01'),(8,'Lina',26,'Female','8','Shingles ','250ml','2023-10-10'),(9,'Adam',42,'Male','9','Scoliosis ','450ml','2023-02-09'),(10,'Alexa',32,'Female','10',' Shortness of breath','350ml','2023-12-24');
/*!40000 ALTER TABLE `donor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donor_registrationteam`
--

DROP TABLE IF EXISTS `donor_registrationteam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donor_registrationteam` (
  `d_id` int NOT NULL,
  `reg_id` int NOT NULL,
  PRIMARY KEY (`d_id`,`reg_id`),
  KEY `reg_id` (`reg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor_registrationteam`
--

LOCK TABLES `donor_registrationteam` WRITE;
/*!40000 ALTER TABLE `donor_registrationteam` DISABLE KEYS */;
INSERT INTO `donor_registrationteam` VALUES (7,7),(8,8),(9,9),(10,10),(22,11),(19,20),(28,21),(26,22),(17,23),(32,23),(30,32),(29,37),(20,39),(43,43);
/*!40000 ALTER TABLE `donor_registrationteam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bn_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bn_id` (`bn_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (1,30,'City Hospital','New York'),(2,22,'Mercy Medical','Los Angeles'),(3,32,'Central Clinic','Chicago'),(4,11,'Unity Hospital','Chicago'),(5,47,'Unity Hospital','Miami'),(6,24,'Sunrise Medical','Boston'),(7,59,'River Health','Seattle'),(8,26,'Valley Care','Phoenix'),(9,40,'Summit Clinic','Denver'),(10,68,'Ocean Hospital','San Francisco');
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `manager_id` int NOT NULL,
  `name` varchar(55) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (1,'Ali'),(2,'Fahad'),(3,'Ahmed'),(4,'Yaser'),(5,'Saud'),(6,'Saad'),(7,'Rayan'),(8,'Jaser'),(9,'Fahad'),(10,'Mohammed');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `age` int DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `b_group` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'Jhon Beech',35,'Male','A'),(2,'Ann Ford',42,'Male','-B'),(3,'Lana Waxe',28,'Female','-AB'),(4,'Alex Tles',50,'Male','-A'),(5,'Cristiano Tles',37,'Male','O'),(6,'Diana Lee',39,'Female','+AB'),(7,'Sara Smeth',20,'Female','A'),(8,'Kai Lee',12,'Male','+A'),(9,'Talisca',33,'Male','-A'),(10,'Sara weel',18,'Female','O');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registrationteam`
--

DROP TABLE IF EXISTS `registrationteam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registrationteam` (
  `reg_id` int NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`reg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrationteam`
--

LOCK TABLES `registrationteam` WRITE;
/*!40000 ALTER TABLE `registrationteam` DISABLE KEYS */;
INSERT INTO `registrationteam` VALUES (1,'Faris'),(2,'Hassan'),(3,'Sami'),(4,'Khalead'),(5,'Sultan'),(6,'Badr'),(7,'Rayan'),(8,'Saad'),(9,'Fhaad'),(10,'Rakan');
/*!40000 ALTER TABLE `registrationteam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registrationteam_patient`
--

DROP TABLE IF EXISTS `registrationteam_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registrationteam_patient` (
  `reg_id` int NOT NULL,
  `patient_id` int NOT NULL,
  PRIMARY KEY (`reg_id`,`patient_id`),
  KEY `patient_id` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrationteam_patient`
--

LOCK TABLES `registrationteam_patient` WRITE;
/*!40000 ALTER TABLE `registrationteam_patient` DISABLE KEYS */;
INSERT INTO `registrationteam_patient` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `registrationteam_patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-11  0:49:56
