-- MySQL dump 10.13  Distrib 8.0.41, for macos15 (x86_64)
--
-- Host: localhost    Database: moco_ac_db
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `Cities`
--

DROP TABLE IF EXISTS `Cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cities` (
  `City_ID` varchar(5) NOT NULL,
  `City_Name` varchar(50) DEFAULT NULL,
  `State` varchar(2) DEFAULT NULL,
  `Zip_Code` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`City_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cities`
--

LOCK TABLES `Cities` WRITE;
/*!40000 ALTER TABLE `Cities` DISABLE KEYS */;
INSERT INTO `Cities` VALUES ('CTY_1','BURTONSVILLE','MD','20866');
/*!40000 ALTER TABLE `Cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Crime_Location`
--

DROP TABLE IF EXISTS `Crime_Location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Crime_Location` (
  `Location_ID` varchar(4) NOT NULL,
  `Block_Address` varchar(300) DEFAULT NULL,
  `Place_ID` varchar(3) DEFAULT NULL,
  `City_ID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`Location_ID`),
  KEY `fk_City_ID` (`City_ID`),
  KEY `fk_Place_ID` (`Place_ID`),
  CONSTRAINT `fk_City_ID` FOREIGN KEY (`City_ID`) REFERENCES `Cities` (`City_ID`),
  CONSTRAINT `fk_Place_ID` FOREIGN KEY (`Place_ID`) REFERENCES `Place` (`Place_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Crime_Location`
--

LOCK TABLES `Crime_Location` WRITE;
/*!40000 ALTER TABLE `Crime_Location` DISABLE KEYS */;
INSERT INTO `Crime_Location` VALUES ('A159','3800 BLK  STEPPING STONE LA','PLR','CTY_1'),('A160','13500 BLK  GREENCASTLE RIDGE TER','PLR','CTY_1'),('A161','15000 BLK  PINE TOP LA','PLR','CTY_1'),('A162','14100 BLK  ALDORA CIR','PLR','CTY_1'),('A222','4300 BLK  ISLESWOOD TER','PLR','CTY_1'),('A223','13500 BLK  GREENCASTLE RIDGE TER','PLR','CTY_1'),('A224','4300 BLK  REGALWOOD TER','PLR','CTY_1'),('A225','4300 BLK  REGALWOOD TER','PLR','CTY_1'),('A226','3800 BLK  WATER DROP CT','PLR','CTY_1'),('A227','3900 BLK  BLACKBURN LA','PLR','CTY_1'),('A228','3900 BLK  BLACKBURN LA','PLR','CTY_1'),('A229','4300 BLK  THISTLEWOOD TER','PLR','CTY_1'),('A230','14700 BLK  CROSSWOOD TER','PLR','CTY_1'),('A231','14600 BLK  MC KNEW RD','PLR','CTY_1'),('A232','3600 BLK  AUTUMN GLEN CIR','PLR','CTY_1'),('A233','15000 BLK  PINE TOP LA','PLR','CTY_1'),('A234','14700 BLK  CROSSWOOD TER','PLR','CTY_1'),('A235','4200 BLK  DUNWOOD TER','PLR','CTY_1'),('A236','14100 BLK  ALDORA CIR','PLR','CTY_1'),('A302','4300 BLK  CEDAR TREE LA','RDW','CTY_1'),('A303','14900 BLK  MC KNEW RD','RDW','CTY_1'),('A304','4400 BLK  CAMLEY WAY','RDW','CTY_1'),('A305','14900 BLK  FALCONWOOD DR','RDW','CTY_1'),('A306','4300 BLK  THISTLEWOOD TER','RDW','CTY_1'),('A307','4300 BLK  REGALWOOD TER','RDW','CTY_1'),('A308','4200 BLK  LEATHERWOOD TER','RDW','CTY_1'),('A309','3800 BLK  DUSTIN RD','RDW','CTY_1'),('A310','15100 BLK  MC KNEW RD','RDW','CTY_1'),('A311','3100 BLK  WINIFRED DR','RDW','CTY_1'),('A312','4200 BLK  ARBOR WOOD CT','RDW','CTY_1'),('A314','4300 BLK  SANDY SPRING RD','RES','CTY_1'),('A318','4700 BLK  SANDY SPRING RD','RSF','CTY_1'),('A324','14900 BLK  SADDLE CREEK DR','RSF','CTY_1'),('A326','14300 BLK  OLD COLUMBIA PIK','REY','CTY_1'),('A341','4000 BLK  SPARROW HOUSE LA','RTD','CTY_1'),('A404','4300 BLK  LEATHERWOOD TER','STR','CTY_1'),('A405','3600 BLK  ALPEN GREEN WAY','STR','CTY_1'),('A406','','STR','CTY_1'),('A407','3900 BLK  DUNES WAY','STR','CTY_1'),('A461','14500 BLK  BENTLEY PARK DR','STR','CTY_1'),('A463','','STR','CTY_1'),('A464','','STR','CTY_1'),('A465','4300 BLK  LEATHERWOOD TER','STR','CTY_1'),('A466','15200 BLK  CEDAR TREE DR','STR','CTY_1'),('A467','4200 BLK  RED MAPLE CT','STR','CTY_1'),('A468','','STR','CTY_1'),('A469','4300 BLK  LEATHERWOOD TER','STR','CTY_1'),('A470','','STR','CTY_1'),('A471','','STR','CTY_1'),('A472','14100 BLK  ALDORA CIR','STR','CTY_1'),('A515','14500 BLK  BENTLEY PARK DR','STR','CTY_1'),('A516','3400 BLK  FORSYTHIA LA','STR','CTY_1'),('A517','3600 BLK  TURBRIDGE DR','STR','CTY_1'),('A518','4200 BLK  DUNWOOD TER','STR','CTY_1'),('A519','','STR','CTY_1'),('A520','3300 BLK  TAPESTRY CIR','STR','CTY_1'),('A521','14100 BLK  ARMILLA CT','STR','CTY_1'),('A522','4300 BLK  DUNWOOD TER','STR','CTY_1'),('A523','3700 BLK  AIRDIRE CT','STR','CTY_1'),('A524','','STR','CTY_1'),('A96','13500 BLK  GREENCASTLE RIDGE TER','PLR','CTY_1'),('A97','4300 BLK  LEATHERWOOD TER','PLR','CTY_1'),('A98','3800 BLK  LANSDALE CT','PLR','CTY_1'),('A99','14300 BLK  BEAKER CT','PLR','CTY_1');
/*!40000 ALTER TABLE `Crime_Location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Crime_Types`
--

DROP TABLE IF EXISTS `Crime_Types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Crime_Types` (
  `Crime_type_ID` varchar(2) NOT NULL,
  `Crime_Name1` varchar(150) DEFAULT NULL,
  `Crime_Name2` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Crime_type_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Crime_Types`
--

LOCK TABLES `Crime_Types` WRITE;
/*!40000 ALTER TABLE `Crime_Types` DISABLE KEYS */;
INSERT INTO `Crime_Types` VALUES ('C1','Crime Against Property','Motor Vehicle Theft'),('C2','Crime Against Property','Theft From Motor Vehicle'),('C3','Crime Against Property','Theft of Motor Vehicle Parts or Accessories');
/*!40000 ALTER TABLE `Crime_Types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Crimes_Main`
--

DROP TABLE IF EXISTS `Crimes_Main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Crimes_Main` (
  `CR_Number` int NOT NULL,
  `Crime_Type_ID` varchar(2) DEFAULT NULL,
  `Offense_Code` int DEFAULT NULL,
  `Location_ID` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`CR_Number`),
  KEY `fk_crime_type` (`Crime_Type_ID`),
  KEY `fk_offense_code` (`Offense_Code`),
  KEY `fk_Location_ID` (`Location_ID`),
  CONSTRAINT `fk_crime_type` FOREIGN KEY (`Crime_Type_ID`) REFERENCES `Crime_Types` (`Crime_type_ID`),
  CONSTRAINT `fk_Location_ID` FOREIGN KEY (`Location_ID`) REFERENCES `Crime_Location` (`Location_ID`),
  CONSTRAINT `fk_offense_code` FOREIGN KEY (`Offense_Code`) REFERENCES `Offense_Codes` (`Offense_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Crimes_Main`
--

LOCK TABLES `Crimes_Main` WRITE;
/*!40000 ALTER TABLE `Crimes_Main` DISABLE KEYS */;
INSERT INTO `Crimes_Main` VALUES (200000564,'C2',2305,'A311'),(200001104,'C3',2304,'A472'),(200001651,'C2',2305,'A324'),(200001889,'C3',2305,'A341'),(200002094,'C3',2304,'A162'),(200003201,'C3',2304,'A471'),(200003440,'C2',2305,'A312'),(200006306,'C1',2404,'A326'),(200007897,'C2',2305,'A310'),(200007905,'C2',2305,'A235'),(200007910,'C2',2305,'A234'),(200008116,'C2',2305,'A233'),(200008204,'C2',2305,'A232'),(200008436,'C2',2305,'A231'),(200011321,'C2',2305,'A230'),(200012065,'C2',2305,'A309'),(200012330,'C3',2304,'A161'),(200012346,'C3',2304,'A470'),(200013496,'C1',2404,'A99'),(200014150,'C3',2304,'A160'),(200014511,'C1',2404,'A98'),(200014534,'C2',2305,'A229'),(200015787,'C3',2304,'A159'),(200017897,'C2',2305,'A228'),(200017899,'C2',2305,'A227'),(200018010,'C2',2305,'A308'),(200018012,'C2',2305,'A224'),(200018018,'C2',2305,'A307'),(200018020,'C2',2305,'A226'),(200018088,'C2',2305,'A225'),(200020180,'C1',2404,'A407'),(200020365,'C2',2305,'A524'),(200021106,'C2',2305,'A522'),(200021111,'C2',2305,'A521'),(200021112,'C2',2305,'A520'),(200021290,'C2',2305,'A523'),(200021799,'C1',2404,'A318'),(200022087,'C3',2304,'A468'),(200022532,'C2',2305,'A518'),(200022535,'C3',2304,'A469'),(200024361,'C2',2305,'A223'),(200024511,'C1',2404,'A406'),(200025008,'C1',2404,'A405'),(200025795,'C3',2304,'A466'),(200025801,'C3',2304,'A465'),(200025804,'C3',2304,'A463'),(200025888,'C3',2304,'A464'),(200025982,'C3',2304,'A467'),(200027915,'C1',2404,'A404'),(200028345,'C2',2305,'A517'),(200029143,'C2',2305,'A516'),(200030829,'C2',2305,'A306'),(200031627,'C1',2404,'A97'),(200031631,'C3',2304,'A461'),(200032774,'C2',2305,'A303'),(200032787,'C2',2305,'A304'),(200032803,'C2',2305,'A305'),(200033253,'C1',2404,'A96'),(200034987,'C1',2404,'A314'),(200035730,'C2',2305,'A302'),(200035751,'C2',2305,'A222');
/*!40000 ALTER TABLE `Crimes_Main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dispatch_info`
--

DROP TABLE IF EXISTS `Dispatch_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Dispatch_info` (
  `District_ID` varchar(2) NOT NULL,
  `CR_Number` int NOT NULL,
  `Dispatch_Date_Time` datetime DEFAULT NULL,
  PRIMARY KEY (`District_ID`,`CR_Number`),
  KEY `fk_CR_Number` (`CR_Number`),
  CONSTRAINT `fk_CR_Number` FOREIGN KEY (`CR_Number`) REFERENCES `Crimes_Main` (`CR_Number`),
  CONSTRAINT `fk_District_ID` FOREIGN KEY (`District_ID`) REFERENCES `Police_District` (`District_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dispatch_info`
--

LOCK TABLES `Dispatch_info` WRITE;
/*!40000 ALTER TABLE `Dispatch_info` DISABLE KEYS */;
INSERT INTO `Dispatch_info` VALUES ('3D',200000564,'0001-04-20 08:49:00'),('3D',200001104,'0001-07-20 14:17:00'),('3D',200001651,'0001-10-20 10:56:00'),('3D',200001889,'0001-11-20 15:33:00'),('3D',200006306,'0002-07-20 11:39:00'),('3D',200011321,'0003-07-20 16:38:00'),('3D',200012065,'0003-11-20 18:16:00'),('3D',200015787,'0004-12-20 16:25:00'),('3D',200017897,'0005-02-20 06:58:00'),('3D',200017899,'0005-02-20 08:14:00'),('3D',200018010,'0005-03-20 07:45:00'),('3D',200018012,'0005-03-20 08:46:00'),('3D',200018018,'0005-03-20 10:12:00'),('3D',200018020,'0005-03-20 09:49:00'),('3D',200018088,'0005-03-20 18:45:00'),('3D',200021799,'0006-02-20 15:42:00'),('3D',200022087,'0006-04-20 19:31:00'),('3D',200022532,'0006-08-20 12:49:00'),('3D',200022535,'0006-08-20 12:55:00'),('3D',200025795,'0007-03-20 06:12:00'),('3D',200025801,'0007-03-20 08:37:00'),('3D',200025804,'0007-03-20 09:08:00'),('3D',200025888,'0007-03-20 19:19:00'),('3D',200025982,'0007-04-20 18:09:00'),('3D',200030829,'0008-08-20 14:09:00'),('3D',200034987,'0009-07-20 04:30:00'),('3D',200035730,'0009-12-20 08:10:00'),('3D',200035751,'0009-12-20 11:16:00');
/*!40000 ALTER TABLE `Dispatch_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Offense_Codes`
--

DROP TABLE IF EXISTS `Offense_Codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Offense_Codes` (
  `Offense_Code` int NOT NULL,
  `Offense_description` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`Offense_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Offense_Codes`
--

LOCK TABLES `Offense_Codes` WRITE;
/*!40000 ALTER TABLE `Offense_Codes` DISABLE KEYS */;
INSERT INTO `Offense_Codes` VALUES (2304,'LARCENY - AUTO PARTS'),(2305,'LARCENY - FROM AUTO'),(2404,'AUTO THEFT - VEHICLE THEFT');
/*!40000 ALTER TABLE `Offense_Codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Place`
--

DROP TABLE IF EXISTS `Place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Place` (
  `Place_ID` varchar(3) NOT NULL,
  `Place_Description` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Place_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Place`
--

LOCK TABLES `Place` WRITE;
/*!40000 ALTER TABLE `Place` DISABLE KEYS */;
INSERT INTO `Place` VALUES ('PLR','Parking Lot - Residential'),('RDW','Residence - Driveway'),('RES','Residence - Shed'),('REY','Residence - Yard'),('RSF','Residence - Single Family'),('RTD','Residence -Townhouse/Duplex'),('STR','Street - Residential');
/*!40000 ALTER TABLE `Place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Police_District`
--

DROP TABLE IF EXISTS `Police_District`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Police_District` (
  `District_ID` varchar(2) NOT NULL,
  `District_Name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`District_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Police_District`
--

LOCK TABLES `Police_District` WRITE;
/*!40000 ALTER TABLE `Police_District` DISABLE KEYS */;
INSERT INTO `Police_District` VALUES ('3D','SILVER SPRING');
/*!40000 ALTER TABLE `Police_District` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-13 16:29:07
