-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: mergesms
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account_sm`
--

DROP TABLE IF EXISTS `account_sm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_sm` (
  `account_no` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `account_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`account_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_sm`
--

LOCK TABLES `account_sm` WRITE;
/*!40000 ALTER TABLE `account_sm` DISABLE KEYS */;
INSERT INTO `account_sm` VALUES (1,'LOADING','557751******2100'),(2,'ENCASHMENT','557751******3108');
/*!40000 ALTER TABLE `account_sm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent_charge`
--

DROP TABLE IF EXISTS `agent_charge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent_charge` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id,amount,charge',
  `amount` int(11) DEFAULT NULL,
  `charge` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=199 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent_charge`
--

LOCK TABLES `agent_charge` WRITE;
/*!40000 ALTER TABLE `agent_charge` DISABLE KEYS */;
INSERT INTO `agent_charge` VALUES (100,1000,11.50),(101,1500,17.25),(102,2000,23.00),(103,2500,28.75),(104,3000,34.50),(105,3500,40.25),(106,4000,46.00),(107,4500,51.75),(108,5000,57.50),(109,5500,63.25),(110,6000,69.00),(111,6500,74.75),(112,7000,80.50),(113,7500,86.25),(114,8000,92.00),(115,8500,97.75),(116,9000,103.50),(117,9500,109.25),(118,10000,115.00),(119,10500,120.75),(120,11000,126.50),(121,11500,132.25),(122,12000,138.00),(123,12500,143.75),(124,13000,149.50),(125,13500,155.25),(126,14000,161.00),(127,14500,166.75),(128,15000,172.50),(129,15500,178.25),(130,16000,184.00),(131,16500,189.75),(132,17000,195.50),(133,17500,201.25),(134,18000,207.00),(135,18500,212.75),(136,19000,218.50),(137,19500,224.25),(138,20000,230.00),(139,20500,235.75),(140,21000,241.50),(141,21500,247.25),(142,22000,253.00),(143,22500,258.75),(144,23000,264.50),(145,23500,270.25),(146,24000,276.00),(147,24500,281.75),(148,25000,287.50),(149,25500,293.25),(150,26000,299.00),(151,26500,304.75),(152,27000,310.50),(153,27500,316.25),(154,28000,322.00),(155,28500,327.75),(156,29000,333.50),(157,29500,339.25),(158,30000,345.00),(159,30500,350.75),(160,31000,356.50),(161,31500,362.25),(162,32000,368.00),(163,32500,373.75),(164,33000,379.50),(165,33500,385.25),(166,34000,391.00),(167,34500,396.75),(168,35000,402.50),(169,35500,408.25),(170,36000,414.00),(171,36500,419.75),(172,37000,425.50),(173,37500,431.25),(174,38000,437.00),(175,38500,442.75),(176,39000,448.50),(177,39500,454.25),(178,40000,460.00),(179,40500,465.75),(180,41000,471.50),(181,41500,477.25),(182,42000,483.00),(183,42500,488.75),(184,43000,494.50),(185,43500,500.25),(186,44000,506.00),(187,44500,511.75),(188,45000,517.50),(189,45500,523.25),(190,46000,529.00),(191,46500,534.75),(192,47000,540.50),(193,47500,546.25),(194,48000,552.00),(195,48500,557.75),(196,49000,563.50),(197,49500,569.25),(198,50000,575.00);
/*!40000 ALTER TABLE `agent_charge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcement`
--

DROP TABLE IF EXISTS `announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcement` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` longblob NOT NULL,
  `imgLoc` varchar(300) NOT NULL,
  `status` smallint(5) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement`
--

LOCK TABLES `announcement` WRITE;
/*!40000 ALTER TABLE `announcement` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branch` (
  `branch_no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(45) NOT NULL,
  `address` int(10) unsigned NOT NULL,
  `contact` varchar(45) NOT NULL,
  `main` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`branch_no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (4,'Branch 1 (MAIN)',17520,'09394380608','');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `computation_sm`
--

DROP TABLE IF EXISTS `computation_sm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `computation_sm` (
  `comp_id` int(11) NOT NULL AUTO_INCREMENT,
  `incoming` decimal(18,3) NOT NULL,
  `outgoing` decimal(18,3) NOT NULL,
  `account_no` int(11) NOT NULL,
  PRIMARY KEY (`comp_id`),
  KEY `FK_computation_sm_1` (`account_no`),
  CONSTRAINT `FK_computation_sm_1` FOREIGN KEY (`account_no`) REFERENCES `account_sm` (`account_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `computation_sm`
--

LOCK TABLES `computation_sm` WRITE;
/*!40000 ALTER TABLE `computation_sm` DISABLE KEYS */;
INSERT INTO `computation_sm` VALUES (1,0.015,0.015,1),(2,0.015,0.015,2);
/*!40000 ALTER TABLE `computation_sm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_sm`
--

DROP TABLE IF EXISTS `config_sm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_sm` (
  `config_sm_no` int(45) NOT NULL AUTO_INCREMENT,
  `offset` int(45) DEFAULT NULL,
  `value` varchar(45) DEFAULT NULL,
  `static` int(1) DEFAULT NULL,
  `config_sm_type_no` int(45) DEFAULT NULL,
  `data_spec` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`config_sm_no`),
  KEY `FK_config_sm_1` (`config_sm_type_no`),
  CONSTRAINT `FK_config_sm_1` FOREIGN KEY (`config_sm_type_no`) REFERENCES `config_sm_type` (`config_sm_type_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_sm`
--

LOCK TABLES `config_sm` WRITE;
/*!40000 ALTER TABLE `config_sm` DISABLE KEYS */;
INSERT INTO `config_sm` VALUES (1,0,'date',0,10,'datetime'),(2,2,'amount',0,10,'decimal'),(3,3,'was',1,10,NULL),(4,4,'transferred',1,10,NULL),(5,5,'from',1,10,NULL),(6,7,'with',1,10,NULL),(7,8,'card',1,10,NULL),(8,9,'no.',1,10,NULL),(9,10,'smart_money',0,10,'varchar'),(10,11,'to',1,10,NULL),(11,12,'account',0,10,'int'),(12,13,'Your',1,10,NULL),(13,14,'avail',1,10,NULL),(14,15,'bal:',1,10,NULL),(15,16,'balance',0,10,'decimal'),(16,17,'ref_no',0,10,'varchar'),(17,1,'date',0,11,'datetime'),(18,3,'You',1,11,NULL),(19,4,'have',1,11,NULL),(20,5,'transferred',1,11,NULL),(21,6,'amount',0,11,'decimal'),(22,7,'from',1,11,NULL),(23,8,'account',0,11,'int'),(24,9,'to',1,11,NULL),(25,11,'with',1,11,NULL),(26,12,'card',1,11,NULL),(27,13,'no.',1,11,NULL),(28,14,'smart_money',0,11,'varchar'),(29,15,'Your',1,11,NULL),(30,16,'avail',1,11,NULL),(31,17,'bal:',1,11,NULL),(32,18,'balance',0,11,'decimal'),(33,19,'ref_no',0,11,'varchar'),(34,0,'date',0,12,'datetime'),(35,2,'amount',0,12,'decimal'),(36,3,'has',1,12,NULL),(37,4,'been',1,12,NULL),(38,5,'loaded',1,12,NULL),(39,6,'to',1,12,NULL),(40,7,'Card',1,12,NULL),(41,8,'account',0,12,'int'),(42,9,'Smart',1,12,NULL),(43,10,'Money',1,12,NULL),(44,12,'balance',0,12,'decimal'),(45,13,'ref_no',0,12,'varchar'),(46,0,'date',0,13,'datetime'),(47,2,'amount',0,13,'decimal'),(48,3,'has',1,13,NULL),(49,4,'been',1,13,NULL),(50,5,'reloaded',1,13,NULL),(51,6,'to',1,13,NULL),(52,7,'account',0,13,'int'),(53,8,'at',1,13,NULL),(54,9,'smart_money',0,13,'varchar'),(55,10,'de',1,13,NULL),(56,11,'Oro',1,13,NULL),(57,14,'Avail',1,13,NULL),(58,15,'bal',1,13,NULL),(59,16,'balance',0,13,'decimal'),(60,17,'ref_no',0,13,'varchar'),(61,0,'date',0,14,'datetime'),(62,2,'You',1,14,NULL),(63,3,'have',1,14,NULL),(64,4,'paid',1,14,NULL),(65,5,'amount',0,14,'decimal'),(66,6,'to',1,14,NULL),(67,7,'SMART',1,14,NULL),(68,8,'account',1,14,NULL),(69,9,'smart_money',0,14,'varchar'),(70,10,'from',1,14,NULL),(71,11,'account',0,14,'int'),(72,12,'Avail',1,14,NULL),(73,13,'Bal:',1,14,NULL),(74,14,'balance',0,14,'decimal'),(75,15,'ref_no',0,14,'varchar'),(92,0,'date',0,16,'datetime'),(93,2,'You',1,16,NULL),(94,3,'have',1,16,NULL),(95,4,'paid',1,16,NULL),(96,5,'amount',0,16,'decimal'),(97,6,'to',1,16,NULL),(98,7,'Smart',1,16,NULL),(99,8,'Bro',1,16,NULL),(100,9,'account',1,16,NULL),(101,10,'smart_money',0,16,'varchar'),(102,11,'from',1,16,NULL),(103,12,'account',0,16,'int'),(104,13,'Avail',1,16,NULL),(105,14,'Bal:',1,16,NULL),(106,15,'balance',0,16,'decimal'),(107,16,'ref_no',0,16,'varchar'),(108,0,'date',0,17,'datetime'),(109,2,'amount',0,17,'decimal'),(110,3,'has',1,17,NULL),(111,4,'been',1,17,NULL),(112,5,'loaded',1,17,NULL),(113,6,'to',1,17,NULL),(114,7,'Card',1,17,NULL),(115,8,'smart_money',0,17,'varchar'),(116,9,'Smart',1,17,NULL),(117,10,'Money',1,17,NULL),(118,11,'Bal:',1,17,NULL),(119,12,'balance',0,17,'decimal'),(120,13,'ref_no',0,17,'varchar'),(121,0,'date',0,18,'datetime'),(122,2,'amount',0,18,'decimal'),(123,3,'was',1,18,NULL),(124,4,'transferred',1,18,NULL),(125,5,'from',1,18,NULL),(126,7,'with',1,18,NULL),(127,8,'card',1,18,NULL),(128,9,'no.',1,18,NULL),(129,10,'smart_money',0,18,'varchar'),(130,11,'to',1,18,NULL),(131,12,'account',0,18,'int'),(132,13,'Your',1,18,NULL),(133,14,'avail',1,18,NULL),(134,15,'balance',0,18,'decimal'),(135,16,'ref_no',0,18,'varchar');
/*!40000 ALTER TABLE `config_sm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_sm_type`
--

DROP TABLE IF EXISTS `config_sm_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_sm_type` (
  `config_sm_type_no` int(45) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(10) DEFAULT NULL,
  `sm_status_no` int(45) DEFAULT NULL,
  PRIMARY KEY (`config_sm_type_no`),
  KEY `FK_config` (`sm_status_no`),
  CONSTRAINT `FK_config` FOREIGN KEY (`sm_status_no`) REFERENCES `status_sm` (`sm_status_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_sm_type`
--

LOCK TABLES `config_sm_type` WRITE;
/*!40000 ALTER TABLE `config_sm_type` DISABLE KEYS */;
INSERT INTO `config_sm_type` VALUES (10,'pending 1',NULL,1),(11,'sent 1',NULL,3),(12,'BDO',NULL,1),(13,'BDO LATEST',NULL,1),(14,'paybills_smart',NULL,3),(16,'paybills_smartbro',NULL,3),(17,'PENDING_RRN',NULL,1),(18,'pending_xxx',NULL,1);
/*!40000 ALTER TABLE `config_sm_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `cust_id` int(45) NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `mname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) NOT NULL,
  `loc_id` int(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `ext` int(3) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `date_registered` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cust_id`),
  KEY `FK_customer_1` (`loc_id`),
  CONSTRAINT `FK_customer_1` FOREIGN KEY (`loc_id`) REFERENCES `location` (`loc_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3896 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (3808,'OFFLINE','-','CUSTOMER',NULL,NULL,0,NULL,NULL,'2016-10-06 00:55:22'),(3809,'ANA','C','SINFOROSO',16279,'09483110355',0,'1990-01-25',1,'2017-08-20 17:44:46'),(3810,'ELSA','C','RUIZ',16468,'09300861433',0,'1955-06-07',0,'2017-08-21 14:20:43'),(3811,'ANELITA','B','SERDONS',16493,'09480093905',0,'1959-05-23',1,'2017-08-21 14:59:01'),(3812,'JOY','M','LATAGAN',16494,'09083787250',0,'1979-07-13',1,'2017-08-21 15:02:52'),(3813,'BERNADETH','N','PEÑA',16464,'09163557305',0,'1982-06-03',1,'2017-08-21 15:06:08'),(3814,'RICA MAE ','D','COPIAN',16478,'09161724117',0,'1991-06-10',1,'2017-08-21 15:18:40'),(3815,'JOCELYN','J','AGUILAR',16454,'09304568390',0,'1979-05-09',1,'2017-08-21 15:32:32'),(3816,'JAMER ','M','CALMANTE',16494,'09125643798',0,'1995-08-06',1,'2017-08-21 15:39:26'),(3817,'JAN REI','B','CELON',16478,'09995617881',0,'1995-07-25',0,'2017-08-21 15:53:02'),(3818,'ADELFA ','P','BETITO',16451,'09553026230',0,'1955-04-26',1,'2017-08-21 15:57:03'),(3819,'PRINCESS','K','LEAN',16468,'09564328712',0,'1995-05-10',1,'2017-08-21 16:06:23'),(3820,'ANGIEVE ','P','ABO',16444,'09204951288',0,'1979-12-17',1,'2017-08-21 16:30:43'),(3821,'MARY ROSE','O','MAHINAY',16474,'09555129482',0,'1992-07-01',1,'2017-08-21 16:48:46'),(3822,'JERIMY','G','SALIRE',16451,'09509315814',0,'2000-01-03',0,'2017-08-21 16:50:13'),(3823,'MARIA VICTORIA','R','HA',16467,'09104696920',0,'1964-05-24',1,'2017-08-21 18:44:19'),(3824,'ANALYN','P','PALCON',16495,'09460806910',0,'1988-10-15',1,'2017-08-22 09:37:44'),(3825,'ABEGUEL','C','PEDIMONTE',16481,'09367180317',0,'1991-12-09',1,'2017-08-22 09:40:51'),(3826,'MARK MICHAEL','C','PINEDA',16455,'09101077258',0,'1991-01-25',0,'2017-08-22 14:15:04'),(3827,'LILIBETH','P','PADERNAL',16495,'09503517947',0,'1988-12-07',1,'2017-08-22 14:17:22'),(3828,'MELIANE','B','CABRILLOS',16494,'09305833443',0,'1979-11-05',1,'2017-08-22 14:18:55'),(3829,'MAXINNE','T','TANGUIN',16469,'09064030135',0,'1995-07-12',1,'2017-08-22 14:20:18'),(3830,'MARGIE','T','EMBIDO',16480,'09309450466',0,'1987-12-09',1,'2017-08-22 14:24:57'),(3831,'MARIA FE','L','RONQUILLO',16447,'09501796136',0,'1986-03-26',1,'2017-08-22 14:27:59'),(3832,'SHIELA ','D','ANDO',16490,'09325608452',0,'1991-05-27',1,'2017-08-22 14:29:32'),(3833,'EMILY','M','JUAREZ',16455,'09301512317',0,'1990-02-09',1,'2017-08-22 14:31:14'),(3834,'MARY','S','QUIPED',16451,'09486620588',0,'1992-03-06',1,'2017-08-22 14:33:00'),(3835,'JENNIFER','D','PETRACHE',16481,'09464128909',0,'1991-04-06',1,'2017-08-22 14:34:17'),(3836,'ROMALYN','S','BUSTERO',16445,'09465705423',0,'1989-04-07',1,'2017-08-22 14:37:10'),(3837,'ERLINDA','T','ROCO',16463,'09494421188',0,'1988-06-24',1,'2017-08-22 14:38:27'),(3838,'LERMA','N','NUEVO',16455,'09478109353',0,'1988-04-12',1,'2017-08-22 14:41:29'),(3839,'NOELLYN ARIANE','C','LOGRONIO',16447,'09506832200',0,'1995-03-09',1,'2017-08-22 14:43:26'),(3840,'JHON VINCENT','D','TANGUIN',16467,'09285757695',0,'1996-01-04',0,'2017-08-22 14:52:24'),(3841,'RIZZA','C','ROMBAON',16457,'09277421574',0,'1995-02-07',1,'2017-08-22 14:55:15'),(3842,'JUVY','C','BELEN',16468,'09072384846',0,'1989-12-02',1,'2017-08-22 15:15:17'),(3843,'CHANIE','D','PENA',16467,'0939675347845',0,'1989-02-01',1,'2017-08-22 15:48:31'),(3844,'ADA','A','REBUTIACO',16467,'09464125589',0,'1988-12-30',1,'2017-08-22 15:50:36'),(3845,'ELENA','B','DELA UMBRIA',16487,'09232864685',0,'1949-11-14',1,'2017-08-22 16:31:34'),(3846,'AMOR','O','MOISES',16443,'09195904467',0,'1988-07-22',0,'2017-08-23 18:05:24'),(3847,'ELAINE','B','GONZAGA',16444,'09262764923',0,'1965-10-24',1,'2017-08-24 07:38:12'),(3848,'FLORDELYN','A','ARADOR',16446,'09750932883',0,'1986-06-25',1,'2017-08-24 09:41:45'),(3849,'SHENA MAE','P','SAN JUAN',16447,'09207393226',0,'1991-09-23',1,'2017-08-24 15:44:38'),(3850,'ANALIZA ','R','PORTOGAL',16445,'09395969558',0,'1979-10-26',0,'2017-08-24 17:55:10'),(3851,'CHERRIE','B','LAUREL',16452,'09756341534',0,'1975-08-25',1,'2017-08-25 08:50:47'),(3852,'RUBY','O','TOPASI',16486,'09468060162',0,'1995-10-11',1,'2017-08-25 09:05:56'),(3853,'DAVID','R','ESCALANTE',16447,'09061145703',0,'1997-07-10',0,'2017-08-25 09:14:02'),(3854,'ANGELYN','A','BELGA',16451,'09362788355',0,'1991-12-27',1,'2017-08-25 09:50:43'),(3855,'MA.CRISTINA','M','MALATE',16487,'09089795936',0,'1980-07-31',1,'2017-08-25 09:54:24'),(3856,'MICHAEL','V','GARCES',16447,'09358310187',0,'1979-07-11',0,'2017-08-25 10:18:16'),(3857,'CAROL JANE','M','SALOMON',16487,'09468851015',0,'1979-08-12',1,'2017-08-25 10:35:45'),(3858,'REZEN','T','BATENCILA',16487,'09757208522',0,'1981-08-25',1,'2017-08-25 11:17:47'),(3859,'MANUEL','M','REBUTICA',16447,'09276419651',0,'1973-09-24',0,'2017-08-25 11:37:15'),(3860,'JERRY','L','ORGANIS',16447,'09756352161',0,'1976-05-26',0,'2017-08-25 11:53:24'),(3861,'JOSE','J','BARCELON',16447,'09983325118',0,'1987-07-18',0,'2017-08-25 11:57:23'),(3862,'RUDY','Q','LOPEZ',16495,'09999253970',0,'1968-03-13',0,'2017-08-25 12:07:04'),(3863,'RUBY ANN','C','HONOFRE',16471,'09107522372',0,'2003-04-28',1,'2017-08-25 12:12:21'),(3864,'MARITES','C','MEJERA',16468,'09300861433',0,'1977-05-08',1,'2017-08-25 12:13:45'),(3865,'DAISY','B','CERIAS',16481,'09153859903',0,'1993-04-20',1,'2017-08-25 12:22:15'),(3866,'MA.KATHRINA','V','SINAHONO',33119,'09307353742',0,'1995-10-17',1,'2017-08-25 12:24:46'),(3867,'FLORENIA','R','LLAGAS',16467,'09995829140',0,'1949-01-31',1,'2017-08-25 13:20:33'),(3868,'REA NAOMIE','B','LENTIGAN',16487,'09356327898',0,'1989-06-23',1,'2017-08-26 14:18:21'),(3869,'MARY JOY','T','POBOCAN',16469,'09462354787',0,'1988-12-10',0,'2017-08-26 14:26:18'),(3870,'MARIA','C','BOLALIN',16494,'09475372110',0,'1958-05-25',1,'2017-08-26 15:09:20'),(3871,'IMELDA','M','CASTRO',16494,'09236578499',0,'1989-07-23',1,'2017-08-27 10:02:23'),(3872,'MARY GRACE','F','PILLARDA',16484,'09206252416',0,'1992-03-05',1,'2017-08-27 11:07:00'),(3873,'MARIA ','B','BOLALIN',16494,'09125374896',0,'1959-04-24',1,'2017-08-27 12:49:34'),(3874,'TRINIDAD','B','ALANIS',16469,'09185544361',0,'1953-07-20',1,'2017-08-27 14:32:24'),(3875,'LEYNARD','O','PONTINEZA',16494,'09501261544',0,'1960-06-05',0,'2017-09-05 17:05:12'),(3886,'BEVIN','P','NIñO',17520,'09394380608',NULL,'2017-09-06',1,'2017-09-11 17:56:55'),(3887,'MICHEAL','M','JORDAN',2,NULL,NULL,NULL,NULL,'2017-09-11 18:11:40'),(3888,'GERRY','R','AN',17230,NULL,NULL,NULL,NULL,'2017-09-11 20:37:02'),(3889,'KEVIN','A','CABANOS',17577,NULL,NULL,NULL,NULL,'2017-09-20 18:26:59'),(3890,'NUKI','L','CABANOS',1286,'09',NULL,'2017-09-01',0,'2017-09-29 05:32:31'),(3891,'ANEL','E','ENOBIO',17520,NULL,NULL,NULL,NULL,'2017-10-04 16:17:45'),(3892,'ALDRIN','B','BAMBILLA',17577,'09365144796',NULL,'1986-04-22',1,'2017-10-04 17:21:22'),(3893,'CHRIS ANGELO','F','ESPINOSA',17578,NULL,NULL,NULL,NULL,'2017-10-04 20:53:18'),(3894,'BRYAN','O','NINO',17520,NULL,NULL,NULL,NULL,'2017-10-14 12:46:38'),(3895,'ANTON','S','TIBLE',17238,NULL,NULL,NULL,NULL,'2017-11-14 15:47:59');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_identification`
--

DROP TABLE IF EXISTS `customer_identification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_identification` (
  `id_no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cust_id` int(45) NOT NULL,
  `identification_type_no` int(10) unsigned NOT NULL,
  `description_no` varchar(45) NOT NULL,
  `idcard_no` varchar(45) NOT NULL,
  `expiration_date` date NOT NULL,
  PRIMARY KEY (`id_no`),
  KEY `FK_customer_identification_1` (`cust_id`),
  KEY `FK_customer_identification_2` (`identification_type_no`),
  CONSTRAINT `FK_customer_identification_1` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_customer_identification_2` FOREIGN KEY (`identification_type_no`) REFERENCES `identification_type` (`identification_type_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_identification`
--

LOCK TABLES `customer_identification` WRITE;
/*!40000 ALTER TABLE `customer_identification` DISABLE KEYS */;
INSERT INTO `customer_identification` VALUES (5,3809,1,'','00000','0000-00-00'),(6,3810,1,'','0000','0000-00-00'),(7,3811,1,'','0000','0000-00-00'),(8,3812,1,'','0000','0000-00-00'),(9,3813,1,'','0000','0000-00-00'),(10,3814,1,'','0000','0000-00-00'),(11,3815,1,'','0000','0000-00-00'),(12,3816,1,'','0000','0000-00-00'),(13,3817,1,'','0000','0000-00-00'),(14,3818,1,'','0000','0000-00-00'),(15,3819,1,'','0000','0000-00-00'),(17,3820,1,'','0000','0000-00-00'),(18,3821,1,'','0000','0000-00-00'),(19,3822,1,'','0000','0000-00-00'),(20,3823,1,'','0000','0000-00-00'),(22,3824,1,'','0000','0000-00-00'),(23,3825,1,'','0000','0000-00-00'),(24,3826,1,'','0000','0000-00-00'),(25,3827,1,'','0000','0000-00-00'),(26,3828,1,'','0000','0000-00-00'),(27,3829,1,'','0000','0000-00-00'),(28,3830,1,'','O000','0000-00-00'),(29,3831,1,'','0000','0000-00-00'),(30,3832,1,'','0000','0000-00-00'),(31,3833,1,'','0000','0000-00-00'),(32,3834,1,'','0000','0000-00-00'),(33,3835,1,'','0000','0000-00-00'),(34,3836,1,'','0000','0000-00-00'),(35,3837,1,'','0000','0000-00-00'),(36,3838,1,'','0000','0000-00-00'),(37,3839,1,'','0000','0000-00-00'),(38,3840,1,'','0000','0000-00-00'),(39,3841,1,'','0000','0000-00-00'),(40,3842,1,'','0000','0000-00-00'),(41,3843,1,'','0000','0000-00-00'),(42,3844,1,'','0000','0000-00-00'),(43,3845,1,'','0000','0000-00-00'),(45,3846,1,'','00','0000-00-00'),(46,3847,1,'','00','0000-00-00'),(47,3848,1,'','00','0000-00-00'),(48,3849,1,'','00','0000-00-00'),(49,3850,1,'','00','0000-00-00'),(50,3851,1,'','00','0000-00-00'),(51,3852,1,'','00','0000-00-00'),(52,3853,1,'','00','0000-00-00'),(53,3854,1,'','00','0000-00-00'),(54,3855,1,'','00','0000-00-00'),(55,3856,1,'','00','0000-00-00'),(56,3857,1,'','00','0000-00-00'),(57,3858,1,'','00','0000-00-00'),(58,3859,1,'','00','0000-00-00'),(59,3860,1,'','00','0000-00-00'),(60,3861,1,'','00','0000-00-00'),(61,3862,1,'','00','0000-00-00'),(62,3863,1,'','00','0000-00-00'),(63,3864,1,'','00','0000-00-00'),(64,3865,1,'','00','0000-00-00'),(65,3866,1,'','00','0000-00-00'),(66,3867,1,'','00','0000-00-00'),(67,3868,1,'','00','0000-00-00'),(68,3869,1,'','00','0000-00-00'),(69,3870,1,'','00','0000-00-00'),(70,3871,1,'','00','0000-00-00'),(71,3872,1,'','00','0000-00-00'),(72,3873,1,'','00','0000-00-00'),(73,3874,1,'','00','0000-00-00'),(74,3875,1,'','00','0000-00-00');
/*!40000 ALTER TABLE `customer_identification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposit_sm`
--

DROP TABLE IF EXISTS `deposit_sm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deposit_sm` (
  `deposit_no` int(45) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `person_incharge` varchar(45) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `user_id` int(45) DEFAULT NULL,
  PRIMARY KEY (`deposit_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposit_sm`
--

LOCK TABLES `deposit_sm` WRITE;
/*!40000 ALTER TABLE `deposit_sm` DISABLE KEYS */;
/*!40000 ALTER TABLE `deposit_sm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fr_entry`
--

DROP TABLE IF EXISTS `fr_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fr_entry` (
  `fr_entry_no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(45) NOT NULL,
  `fr_type_no` int(10) unsigned NOT NULL,
  `date` date NOT NULL,
  `branch_no` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `cust_id` int(10) unsigned DEFAULT NULL,
  `date_entry` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `amount` decimal(18,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`fr_entry_no`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fr_entry`
--

LOCK TABLES `fr_entry` WRITE;
/*!40000 ALTER TABLE `fr_entry` DISABLE KEYS */;
INSERT INTO `fr_entry` VALUES (1,'Beg Cash',9,'2017-08-04',4,1,NULL,'2017-08-04 18:18:39',98513.00),(3,'Cash adjustment (claimed)',8,'2017-08-04',4,1,NULL,'2017-08-05 07:36:28',34196.00),(4,'Short Cash Count',4,'2017-08-05',4,1,NULL,'2017-08-05 08:19:33',290.00),(6,'additinal cash',9,'2017-08-05',4,1,NULL,'2017-08-05 10:49:38',115715.00),(8,'unsynced\r\n06110f9b2ce1\r\n1000 jennifer',8,'2017-08-05',4,1,NULL,'2017-08-05 17:57:38',1000.00),(9,'additinal',9,'2017-08-05',4,1,NULL,'2017-08-05 18:57:46',50000.00),(10,'unsynced(55988010dbda) 3000',8,'2017-08-05',4,1,NULL,'2017-08-05 18:59:48',3000.00),(11,'additional(ate lai)',9,'2017-08-06',4,1,NULL,'2017-08-06 07:44:49',72100.00),(12,'addional(ate lai)',9,'2017-08-06',4,1,NULL,'2017-08-06 12:36:16',100000.00),(13,'unsynced(43784e2856c1)anelyn magalona',8,'2017-08-06',4,1,NULL,'2017-08-06 15:58:01',800.00),(14,'unsynced(ba3cd48d5a42)wilma comiso',8,'2017-08-06',4,1,NULL,'2017-08-06 16:05:39',1000.00),(15,'additional(smart padala cash)',9,'2017-08-06',4,1,NULL,'2017-08-06 17:31:57',50000.00),(16,'additional(ate lai)',9,'2017-08-07',4,1,NULL,'2017-08-07 11:10:33',60000.00),(17,'unsynced(97d234230d3f) (marilou nadala) 500',8,'2017-08-07',4,1,NULL,'2017-08-07 13:16:18',500.00),(18,'unsynced(199f28160bd4) dennis dauso (800)',8,'2017-08-07',4,1,NULL,'2017-08-07 13:32:11',800.00),(19,'additional(smart padala cash)',9,'2017-08-07',4,1,NULL,'2017-08-07 15:16:21',30000.00),(20,'unsynced(7422bc5fd3eb0)(1500) bernadeth pena',8,'2017-08-07',4,1,NULL,'2017-08-07 15:27:04',1500.00),(21,'unsynced(245ef210d8f1)200(maribel rentosa)',8,'2017-08-07',4,1,NULL,'2017-08-07 15:31:34',200.00),(22,'unsynced(089256000256)500(imee tolarba)',8,'2017-08-07',4,1,NULL,'2017-08-07 18:11:28',500.00),(23,'addditional(smart padala cash)',9,'2017-08-07',4,1,NULL,'2017-08-07 18:45:02',20000.00),(24,'additional(ate lai)',9,'2017-08-08',4,1,NULL,'2017-08-08 07:43:11',96000.00),(25,'additional(samart padala)',9,'2017-08-09',4,1,NULL,'2017-08-09 07:48:27',80000.00),(26,'unsynced(add4457d60a5)melody valle (500)',8,'2017-08-09',4,1,NULL,'2017-08-09 11:17:12',500.00),(27,'additional(smart padala cash)',9,'2017-08-09',4,1,NULL,'2017-08-09 18:21:46',50000.00),(28,'unsynced(93b1ec4c405e)300(christian)exprees p',8,'2017-08-09',4,1,NULL,'2017-08-09 18:27:23',300.00),(29,'additional(ate lai)',9,'2017-08-10',4,1,NULL,'2017-08-10 08:54:21',44496.00),(30,'unsynced(2f23b75bb700)2050(jessa camu)express',8,'2017-08-10',4,1,NULL,'2017-08-10 11:06:47',2050.00),(31,'unsynced(97d7fb865153)clyde odsinada(200)expr',8,'2017-08-10',4,1,NULL,'2017-08-10 16:45:33',200.00),(32,'unsynced(4d56464059da)550(babylyn torrero)exp',8,'2017-08-10',4,1,NULL,'2017-08-10 17:02:34',550.00),(33,'additional(samart padala cash)',9,'2017-08-10',4,1,NULL,'2017-08-10 18:50:25',50000.00),(34,'additional(ate lai)',9,'2017-08-11',4,1,NULL,'2017-08-11 10:11:41',50000.00),(35,'additional(smart padala cash)',9,'2017-08-11',4,1,NULL,'2017-08-11 16:27:10',50000.00),(36,'additional(ate lai)',9,'2017-08-12',4,1,NULL,'2017-08-12 08:03:41',21705.00),(37,'additional(ate lai)',9,'2017-08-12',4,1,NULL,'2017-08-12 08:04:37',39000.00),(38,'additional(ate lai)',9,'2017-08-12',4,1,NULL,'2017-08-12 11:27:22',50000.00),(39,'unsynced(81ac514b5a9d)monica capina (4000) ex',8,'2017-08-12',4,1,NULL,'2017-08-12 16:04:54',4000.00),(40,'unsynced(9683a6ace2a6)1000(maribeth tanang)ex',8,'2017-08-12',4,1,NULL,'2017-08-12 16:41:51',1000.00),(41,'unsynced(089263002771) ailyn grace sigara (22',8,'2017-08-12',4,1,NULL,'2017-08-12 17:39:01',2200.00),(42,'unsynced(8d475fba2dfa)800(jocelyn buenavente)',8,'2017-08-13',4,1,NULL,'2017-08-13 07:37:49',800.00),(43,'addtional(smart padala cash)',9,'2017-08-13',4,1,NULL,'2017-08-13 08:20:19',89670.00),(44,'unsynced(marlyn pulga)2700(ddb4f00fb2ee)expre',8,'2017-08-13',4,1,NULL,'2017-08-13 08:36:34',2700.00),(45,'unsynced(8809aae56666)1300(analyn balili)expr',8,'2017-08-13',4,1,NULL,'2017-08-13 10:27:07',1300.00),(46,'additional(ate lai)',9,'2017-08-13',4,1,NULL,'2017-08-13 11:39:48',68000.00),(47,'additional(smart padala cash)',9,'2017-08-13',4,1,NULL,'2017-08-13 15:30:09',50000.00),(49,'additional(smart padala cash)',9,'2017-08-13',4,1,NULL,'2017-08-13 17:46:55',50000.00),(50,'additional(ate lai)',9,'2017-08-14',4,1,NULL,'2017-08-14 08:19:39',32480.00),(51,'additional(cash smart padala)',9,'2017-08-14',4,1,NULL,'2017-08-14 13:59:00',10000.00),(52,'unsynced(9e16b107f10f)500(jocelyn buenevente)',8,'2017-08-14',4,1,NULL,'2017-08-14 14:28:47',500.00),(53,'additional(POS)kuya jhun',9,'2017-08-14',4,1,NULL,'2017-08-14 14:38:52',32000.00),(54,'unsynced(cd7abef9e4ee)1500(badeth pena)expres',8,'2017-08-14',4,1,NULL,'2017-08-14 15:50:28',1500.00),(55,'additional(smart padala cash)',9,'2017-08-14',4,1,NULL,'2017-08-14 17:06:20',20000.00),(56,'additional(c/o kuya jhun)',9,'2017-08-14',4,1,NULL,'2017-08-14 17:43:00',50000.00),(57,'additional(ate lai)',9,'2017-08-15',4,1,NULL,'2017-08-15 07:36:13',134000.00),(58,'unsynced(RRN:089266002214)adelfa pigao(2000)',8,'2017-08-15',4,1,NULL,'2017-08-15 16:17:11',2000.00),(59,'unsynced(25dc50de6d0f)dyna barrido(500)expres',8,'2017-08-15',4,1,NULL,'2017-08-15 18:50:41',500.00),(60,'additional(ATE LAI)',9,'2017-08-16',4,1,NULL,'2017-08-16 09:16:11',87407.00),(61,'unsynced(14482ce00db9)500(julieta dealino)exp',8,'2017-08-16',4,1,NULL,'2017-08-16 14:10:17',500.00),(62,'additional(smart padala cash)',9,'2017-08-17',4,1,NULL,'2017-08-17 07:39:31',90333.00),(63,'additional(ATE LAI)',9,'2017-08-17',4,1,NULL,'2017-08-17 07:57:13',60000.00),(64,'unsynced(7b252a1f7060)marielle sabina(1000)ba',8,'2017-08-17',4,1,NULL,'2017-08-17 16:34:29',1000.00),(65,'unsynced(494c467daece)daniela navera(1000)exp',8,'2017-08-17',4,1,NULL,'2017-08-17 16:44:58',1000.00),(67,'additional(smart padala cash)',9,'2017-08-18',4,1,NULL,'2017-08-18 08:58:28',79125.00),(68,'additional(ATE LAI)',9,'2017-08-18',4,1,NULL,'2017-08-18 08:59:02',50000.00),(69,'additional(ATE LAI)',9,'2017-08-19',4,1,NULL,'2017-08-19 09:26:39',96132.00),(70,'unsynced(7118e6514c29)marissa gudalupe(400)ex',8,'2017-08-19',4,1,NULL,'2017-08-19 09:28:08',400.00),(71,'unsynced(4369f4d219c)reinalyn dellosa(2000)ex',8,'2017-08-19',4,1,NULL,'2017-08-19 11:29:10',2000.00),(72,'unsynced(df40def053e9)orita payla(1100)expres',8,'2017-08-19',4,1,NULL,'2017-08-19 11:31:21',1100.00),(73,'unsynced(b1c79e17eefd)ailyn grace segara(2500',8,'2017-08-19',4,1,NULL,'2017-08-19 17:01:37',2500.00),(74,'unsynced(ad5c5864d039)janel odiver(500)expres',8,'2017-08-19',4,1,NULL,'2017-08-19 17:20:40',500.00),(75,'unsynced(e4380d7a1fc5)jocelyn buenevente(1100',8,'2017-08-19',4,1,NULL,'2017-08-19 17:29:56',1100.00),(76,'unsynced(9caa0459b460)maricel delos reyes(180',8,'2017-08-19',4,1,NULL,'2017-08-19 17:59:35',1800.00),(77,'unsynced(01d00475d0608)marlyn pulga(2400)expr',8,'2017-08-20',4,1,NULL,'2017-08-20 07:24:46',2400.00),(78,'additional(smart padala cash)',9,'2017-08-20',4,1,NULL,'2017-08-20 07:55:03',95972.00),(79,'additional(ATE LAI)',9,'2017-08-20',4,1,NULL,'2017-08-20 10:00:21',50000.00),(80,'unsynced(a195c2e35789)edna bendal(3000)N/C',8,'2017-08-20',4,1,NULL,'2017-08-20 11:04:05',3000.00),(81,'additional(smart padala cash)',9,'2017-08-20',4,1,NULL,'2017-08-20 13:31:12',30000.00),(82,'additonal(C/O KUYA JHUN)',9,'2017-08-20',4,1,NULL,'2017-08-20 14:33:24',61267.00),(83,'additional(ATE LAI)',9,'2017-08-20',4,1,NULL,'2017-08-20 14:35:17',50000.00),(84,'additional(smart padala cash)',9,'2017-08-21',4,1,NULL,'2017-08-21 09:02:11',77651.00),(85,'additional(ATE LAI)',9,'2017-08-21',4,1,NULL,'2017-08-21 09:08:31',50000.00),(86,'unsynced(314b9e767fc1)babylyn torrero(1500)ex',8,'2017-08-21',4,1,NULL,'2017-08-21 14:14:00',1500.00),(87,'additional(smart padala cash)',9,'2017-08-22',4,1,NULL,'2017-08-22 08:07:10',68083.00),(88,'ADDITIONAL(ATELAI)',9,'2017-08-22',4,1,NULL,'2017-08-22 15:02:04',22345.00),(89,'UNSYNCED(db0c23894cc9)clde odsinada(500)expre',8,'2017-08-22',4,1,NULL,'2017-08-22 15:37:24',500.00),(90,'additional(SMART PADALA CASH)',9,'2017-08-23',4,1,NULL,'2017-08-23 08:12:00',86346.00),(91,'ADDITIONAL C/O ATE LAI',9,'2017-08-23',4,1,NULL,'2017-08-23 10:18:59',16658.00),(92,'UNSYNC (BD435EF8BB2E/ JENELYN TOLENTINO)',8,'2017-08-23',4,1,NULL,'2017-08-23 17:12:06',500.00),(93,'SMART PADALA CASH',9,'2017-08-24',4,1,NULL,'2017-08-24 08:01:41',71192.00),(94,'ADDITIONAL CASH C/O ATE LAI',9,'2017-08-24',4,1,NULL,'2017-08-24 08:09:19',54418.00),(95,'Offset Transaction Outgoing',9,'2017-08-24',4,1,NULL,'2017-08-24 18:20:28',31033.00),(96,'unsynced(c18098023285)elaiza tenerife(express',8,'2017-08-25',4,1,NULL,'2017-08-25 13:14:15',250.00),(97,'unsynced(f0cbe6a99489)ma.christina moises(exp',8,'2017-08-25',4,1,NULL,'2017-08-25 18:06:21',1000.00),(98,'715bdfdb8976(09059075713)',9,'2017-08-25',4,1,NULL,'2017-08-25 18:37:46',430.00),(99,'additional(c/o ate lai)',9,'2017-08-26',4,1,NULL,'2017-08-26 08:21:48',67562.00),(100,'PAYMAYA(62a5eface092)orlando peranca',9,'2017-08-26',4,1,NULL,'2017-08-26 13:41:55',1035.00),(101,'Outgoing Error(c5f2ff0830e2)Milky Fernandez',9,'2017-08-26',4,1,NULL,'2017-08-26 13:54:15',1824.00),(102,'UNSYNCED(1c3a556dbd6b)ailyn grace segara(expr',8,'2017-08-26',4,1,NULL,'2017-08-26 17:39:58',2500.00),(103,'unsynced(be0e95bf84bc)jamaica pantia(expressp',8,'2017-08-26',4,1,NULL,'2017-08-26 18:43:32',600.00),(104,'unsynced(395fc193a817)jocelyn buenavente(expr',8,'2017-08-27',4,1,NULL,'2017-08-27 07:36:34',1400.00),(105,'unsynced(18bb8e68b4af)marlyn pulga(expresspay',8,'2017-08-27',4,1,NULL,'2017-08-27 07:46:18',2200.00),(106,'additional(c/o ATE LAI)',9,'2017-08-27',4,1,NULL,'2017-08-27 08:40:31',120000.00),(107,'unsynced(368310b245ec)mary jane ribo(expressp',8,'2017-08-27',4,1,NULL,'2017-08-27 10:10:16',2000.00),(108,'unsynced(1aa0a25abb97)mary jane ribo(expressp',8,'2017-08-27',4,1,NULL,'2017-08-27 10:48:05',1000.00),(109,'unsynced(3b8f8aa45079)mary ann sarcia(express',8,'2017-08-27',4,1,NULL,'2017-08-27 14:25:18',1030.00),(110,'unsynced(38deb57e83db)romeo pedres(expresspay',8,'2017-08-27',4,1,NULL,'2017-08-27 15:14:09',1000.00),(111,'PAYMAYA(404E443784FE)Outgoing',9,'2017-08-27',4,1,NULL,'2017-08-27 15:30:34',915.00),(112,'additiona(c/o KUYA RYAN)',9,'2017-08-27',4,1,NULL,'2017-08-27 17:35:35',47000.00),(113,'PAYMAYA(2D51ABBF4325)Outgoing',9,'2017-08-27',4,1,NULL,'2017-08-27 18:28:40',300.00),(114,'additional(C/O ATE LAI)',9,'2017-08-28',4,1,NULL,'2017-08-28 08:13:06',86000.00),(115,'unsynced(b5551af64b0e)mary ann lumacad(expres',8,'2017-08-28',4,1,NULL,'2017-08-28 11:14:30',1000.00),(116,'additional(POS CASH)c/o SHE',9,'2017-08-28',4,1,NULL,'2017-08-28 12:33:33',35297.00),(117,'UNSYNCED(82B64A9773FE)MELANIE NABO(EXPRESSPAY',8,'2017-08-28',4,1,NULL,'2017-08-28 14:44:40',500.00),(118,'OUTGOING(NOT ASSIGN 1AEE38B875FE)',9,'2017-08-28',4,1,NULL,'2017-08-28 18:28:44',1030.00);
/*!40000 ALTER TABLE `fr_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fr_type`
--

DROP TABLE IF EXISTS `fr_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fr_type` (
  `fr_type_no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`fr_type_no`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fr_type`
--

LOCK TABLES `fr_type` WRITE;
/*!40000 ALTER TABLE `fr_type` DISABLE KEYS */;
INSERT INTO `fr_type` VALUES (1,'Cash In',1),(2,'Cash Out',0),(3,'Cash Adjustment',1),(4,'Cash Adjustment',0),(5,'Payment',1),(6,'Receivable',0),(7,'Bill/Expense',0),(8,'Withdraw',0),(9,'Deposit',1);
/*!40000 ALTER TABLE `fr_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_account`
--

DROP TABLE IF EXISTS `general_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_account` (
  `account_no` int(45) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`account_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_account`
--

LOCK TABLES `general_account` WRITE;
/*!40000 ALTER TABLE `general_account` DISABLE KEYS */;
INSERT INTO `general_account` VALUES (1,'SMARTMONEY','Smart money transactions'),(2,'SMARTMONEY2','outgoing');
/*!40000 ALTER TABLE `general_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_account_add`
--

DROP TABLE IF EXISTS `general_account_add`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_account_add` (
  `gaa_no` int(45) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `account_no` int(45) DEFAULT NULL,
  `phoneType` int(2) unsigned NOT NULL,
  PRIMARY KEY (`gaa_no`),
  KEY `FK_general_account_address_1` (`account_no`),
  CONSTRAINT `FK_general_account_address_1` FOREIGN KEY (`account_no`) REFERENCES `general_account` (`account_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_account_add`
--

LOCK TABLES `general_account_add` WRITE;
/*!40000 ALTER TABLE `general_account_add` DISABLE KEYS */;
INSERT INTO `general_account_add` VALUES (1,'192.168.254.100','routed to smartmoney fixed ip',1,0),(2,'192.168.1.101','outgoing',2,0);
/*!40000 ALTER TABLE `general_account_add` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identification_type`
--

DROP TABLE IF EXISTS `identification_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identification_type` (
  `identification_type_no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`identification_type_no`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identification_type`
--

LOCK TABLES `identification_type` WRITE;
/*!40000 ALTER TABLE `identification_type` DISABLE KEYS */;
INSERT INTO `identification_type` VALUES (1,'Philippine passport or Foreign Passport'),(2,'Driver’s License'),(3,'Professional Regulations Commission (PRC) ID'),(4,'National Bureau of Investigation (NBI) Cleara'),(5,'Police clearance'),(6,'Postal ID'),(7,'Voter’s ID '),(8,'Barangay certification'),(9,'Government Service Insurance System (GSIS)'),(10,'Social Security System (SSS) card'),(11,'Overseas Workers Welfare Administration (OWWA'),(12,'Seaman’s Book'),(13,'Immigrant Certification of Registration'),(14,'Government Office and GOCC ID'),(15,'Certification from the National Council for t'),(16,'Department of Social Welfare and Development '),(17,'Certification Major Credit Cards'),(18,'Bureau of Internal Revenue (BIR) Taxpayer’s I'),(19,'Firearms License'),(20,'National ID'),(21,'Work Permit'),(22,'Diplomat ID'),(23,'Philhealth Card'),(24,'School ID');
/*!40000 ALTER TABLE `identification_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagelocation`
--

DROP TABLE IF EXISTS `imagelocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagelocation` (
  `img_no` int(45) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`img_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagelocation`
--

LOCK TABLES `imagelocation` WRITE;
/*!40000 ALTER TABLE `imagelocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `imagelocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `loc_id` int(11) NOT NULL,
  `barangay` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`loc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='loc_id,barangay,city,province,region';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (40448,'VIRGEN DELOS REMEDIOS','ANGELES CITY','PAMPANGA','REGION III (Central Luzon)'),(40449,'AMSIC','ANGELES CITY','PAMPANGA','REGION III (Central Luzon)'),(40450,'NINOY AQUINO (MARISOL)','ANGELES CITY','PAMPANGA','REGION III (Central Luzon)'),(40451,'BAGUINDOC (BAGUINLOC)','ANAO','TARLAC','REGION III (Central Luzon)'),(40452,'BANTOG','ANAO','TARLAC','REGION III (Central Luzon)'),(40453,'CAMPOS','ANAO','TARLAC','REGION III (Central Luzon)'),(40454,'CARMEN','ANAO','TARLAC','REGION III (Central Luzon)'),(40455,'CASILI','ANAO','TARLAC','REGION III (Central Luzon)'),(40456,'DON RAMON','ANAO','TARLAC','REGION III (Central Luzon)'),(40457,'HERNANDO','ANAO','TARLAC','REGION III (Central Luzon)'),(40458,'POBLACION','ANAO','TARLAC','REGION III (Central Luzon)'),(40459,'RIZAL','ANAO','TARLAC','REGION III (Central Luzon)'),(40460,'SAN FRANCISCO EAST','ANAO','TARLAC','REGION III (Central Luzon)'),(40461,'SAN FRANCISCO WEST','ANAO','TARLAC','REGION III (Central Luzon)'),(40462,'SAN JOSE NORTH','ANAO','TARLAC','REGION III (Central Luzon)'),(40463,'SAN JOSE SOUTH','ANAO','TARLAC','REGION III (Central Luzon)'),(40464,'SAN JUAN','ANAO','TARLAC','REGION III (Central Luzon)'),(40465,'SAN ROQUE','ANAO','TARLAC','REGION III (Central Luzon)'),(40466,'SANTO DOMINGO','ANAO','TARLAC','REGION III (Central Luzon)'),(40467,'SINENSE','ANAO','TARLAC','REGION III (Central Luzon)'),(40468,'SUAVERDEZ','ANAO','TARLAC','REGION III (Central Luzon)'),(40469,'BANGAN','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40470,'BATONLAPOC','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40471,'BENEG','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40472,'CAPAYAWAN','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40473,'CARAEL','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40474,'DANACBUNGA','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40475,'MAGUISGUIS','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40476,'MAMBOG','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40477,'MORAZA','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40478,'PACO (POB.)','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40479,'PANAN','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40480,'PAREL','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40481,'PAUDPOD','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40482,'POONBATO','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40483,'PORAC','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40484,'SAN ISIDRO','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40485,'SAN JUAN','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40486,'SAN MIGUEL','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40487,'SANTIAGO','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40488,'TAMPO (POB.)','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40489,'TAUGTOG','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40490,'VILLAR','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40491,'BANCAL','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40492,'BELBEL','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40493,'BINUCLUTAN','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40494,'BURGOS','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40495,'CABATUAN','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40496,'MALOMBOY','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40497,'NACOLCOL','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40498,'OWAOG-NIBLOC','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40499,'PALIS','BOTOLAN','ZAMBALES','REGION III (Central Luzon)'),(40500,'ADIA','AGONCILLO','BATANGAS','REGION IV-A (CALABARZON)'),(40501,'BAGONG SIKAT','AGONCILLO','BATANGAS','REGION IV-A (CALABARZON)'),(40502,'BALANGON','AGONCILLO','BATANGAS','REGION IV-A (CALABARZON)'),(40503,'BILIBINWANG','AGONCILLO','BATANGAS','REGION IV-A (CALABARZON)'),(40504,'BANGIN','AGONCILLO','BATANGAS','REGION IV-A (CALABARZON)'),(40505,'BARIGON','AGONCILLO','BATANGAS','REGION IV-A (CALABARZON)'),(40506,'CORAL NA MUNTI','AGONCILLO','BATANGAS','REGION IV-A (CALABARZON)'),(40507,'GUITNA','AGONCILLO','BATANGAS','REGION IV-A (CALABARZON)'),(40508,'MABINI','AGONCILLO','BATANGAS','REGION IV-A (CALABARZON)'),(40509,'PAMIGA','AGONCILLO','BATANGAS','REGION IV-A (CALABARZON)'),(40510,'PANHULAN','AGONCILLO','BATANGAS','REGION IV-A (CALABARZON)'),(40511,'PANSIPIT','AGONCILLO','BATANGAS','REGION IV-A (CALABARZON)'),(40512,'POBLACION','AGONCILLO','BATANGAS','REGION IV-A (CALABARZON)'),(40513,'POOK','AGONCILLO','BATANGAS','REGION IV-A (CALABARZON)'),(40514,'SAN JACINTO','AGONCILLO','BATANGAS','REGION IV-A (CALABARZON)'),(40515,'SAN TEODORO','AGONCILLO','BATANGAS','REGION IV-A (CALABARZON)'),(40516,'SANTA CRUZ','AGONCILLO','BATANGAS','REGION IV-A (CALABARZON)'),(40517,'SANTO TOMAS','AGONCILLO','BATANGAS','REGION IV-A (CALABARZON)'),(40518,'SUBIC IBABA','AGONCILLO','BATANGAS','REGION IV-A (CALABARZON)'),(40519,'SUBIC ILAYA','AGONCILLO','BATANGAS','REGION IV-A (CALABARZON)'),(40520,'BANYAGA','AGONCILLO','BATANGAS','REGION IV-A (CALABARZON)'),(40521,'AMUYONG','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40522,'BARANGAY I (POB.)','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40523,'BARANGAY II (POB.)','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40524,'BARANGAY III (POB.)','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40525,'BARANGAY IV (POB.)','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40526,'BARANGAY V (POB.)','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40527,'BUCK ESTATE','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40528,'ESPERANZA IBABA','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40529,'KAYTITINGA I','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40530,'LUKSUHIN','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40531,'MANGAS I','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40532,'MARAHAN I','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40533,'MATAGBAK I','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40534,'PAJO','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40535,'SIKAT','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40536,'SINALIW MALAKI','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40537,'SINALIW NA MUNTI','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40538,'SULSUGIN','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40539,'TAYWANAK IBABA','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40540,'TAYWANAK ILAYA','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40541,'UPLI','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40542,'KAYSUYO','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40543,'LUKSUHIN ILAYA','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40544,'PALUMLUM','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40545,'BILOG','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40546,'ESPERANZA ILAYA','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40547,'KAYTITINGA II','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40548,'KAYTITINGA III','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40549,'MANGAS II','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40550,'MARAHAN II','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40551,'MATAGBAK II','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40552,'SANTA TERESA','ALFONSO','CAVITE','REGION IV-A (CALABARZON)'),(40553,'DEL CARMEN','ALAMINOS','LAGUNA','REGION IV-A (CALABARZON)'),(40554,'PALMA','ALAMINOS','LAGUNA','REGION IV-A (CALABARZON)'),(40555,'BARANGAY I (POB.)','ALAMINOS','LAGUNA','REGION IV-A (CALABARZON)'),(40556,'BARANGAY II (POB.)','ALAMINOS','LAGUNA','REGION IV-A (CALABARZON)'),(40557,'BARANGAY III (POB.)','ALAMINOS','LAGUNA','REGION IV-A (CALABARZON)'),(40558,'BARANGAY IV (POB.)','ALAMINOS','LAGUNA','REGION IV-A (CALABARZON)'),(40559,'SAN AGUSTIN','ALAMINOS','LAGUNA','REGION IV-A (CALABARZON)'),(40560,'SAN ANDRES','ALAMINOS','LAGUNA','REGION IV-A (CALABARZON)'),(40561,'SAN BENITO','ALAMINOS','LAGUNA','REGION IV-A (CALABARZON)'),(40562,'SAN GREGORIO','ALAMINOS','LAGUNA','REGION IV-A (CALABARZON)'),(40563,'SAN ILDEFONSO','ALAMINOS','LAGUNA','REGION IV-A (CALABARZON)'),(40564,'SAN JUAN','ALAMINOS','LAGUNA','REGION IV-A (CALABARZON)'),(40565,'SAN MIGUEL','ALAMINOS','LAGUNA','REGION IV-A (CALABARZON)'),(40566,'SAN ROQUE','ALAMINOS','LAGUNA','REGION IV-A (CALABARZON)'),(40567,'SANTA ROSA','ALAMINOS','LAGUNA','REGION IV-A (CALABARZON)'),(40568,'BINAGBAG','AGDANGAN','QUEZON','REGION IV-A (CALABARZON)'),(40569,'DAYAP','AGDANGAN','QUEZON','REGION IV-A (CALABARZON)'),(40570,'IBABANG KINAGUNAN','AGDANGAN','QUEZON','REGION IV-A (CALABARZON)'),(40571,'ILAYANG KINAGUNAN','AGDANGAN','QUEZON','REGION IV-A (CALABARZON)'),(40572,'KANLURANG CALUTAN','AGDANGAN','QUEZON','REGION IV-A (CALABARZON)'),(40573,'KANLURANG MALIGAYA','AGDANGAN','QUEZON','REGION IV-A (CALABARZON)'),(40574,'SALVACION','AGDANGAN','QUEZON','REGION IV-A (CALABARZON)'),(40575,'SILANGANG CALUTAN','AGDANGAN','QUEZON','REGION IV-A (CALABARZON)'),(40576,'SILANGANG MALIGAYA','AGDANGAN','QUEZON','REGION IV-A (CALABARZON)'),(40577,'SILDORA','AGDANGAN','QUEZON','REGION IV-A (CALABARZON)'),(40578,'POBLACION I','AGDANGAN','QUEZON','REGION IV-A (CALABARZON)'),(40579,'POBLACION II','AGDANGAN','QUEZON','REGION IV-A (CALABARZON)'),(40580,'BAGUMBAYAN','ANGONO','RIZAL','REGION IV-A (CALABARZON)'),(40581,'KALAYAAN','ANGONO','RIZAL','REGION IV-A (CALABARZON)'),(40582,'POBLACION IBABA','ANGONO','RIZAL','REGION IV-A (CALABARZON)'),(40583,'POBLACION ITAAS','ANGONO','RIZAL','REGION IV-A (CALABARZON)'),(40584,'SAN ISIDRO','ANGONO','RIZAL','REGION IV-A (CALABARZON)'),(40585,'SAN PEDRO','ANGONO','RIZAL','REGION IV-A (CALABARZON)'),(40586,'SAN ROQUE','ANGONO','RIZAL','REGION IV-A (CALABARZON)'),(40587,'SAN VICENTE','ANGONO','RIZAL','REGION IV-A (CALABARZON)'),(40588,'SANTO NI?O','ANGONO','RIZAL','REGION IV-A (CALABARZON)'),(40589,'MAHABANG PARANG','ANGONO','RIZAL','REGION IV-A (CALABARZON)'),(40590,'AGOT','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40591,'AGUMAYMAYAN','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40592,'AMOINGON','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40593,'APITONG','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40594,'BALAGASAN','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40595,'BALARING','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40596,'BALIMBING','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40597,'BALOGO','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40598,'BANGBANGALON','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40599,'BAMBAN','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40600,'BANTAD','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40601,'BANTAY','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40602,'BAYUTI','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40603,'BINUNGA','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40604,'BOI','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40605,'BOTON','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40606,'BULIASNIN','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40607,'BUNGANAY','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40608,'MALIGAYA','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40609,'CAGANHAO','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40610,'CANAT','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40611,'CATUBUGAN','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40612,'CAWIT','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40613,'DAIG','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40614,'DAYPAY','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40615,'DUYAY','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40616,'IHATUB','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40617,'ISOK II POB. (KALAMIAS)','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40618,'HINAPULAN','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40619,'LAYLAY','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40620,'LUPAC','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40621,'MAHINHIN','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40622,'MAINIT','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40623,'MALBOG','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40624,'MALUSAK (POB.)','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40625,'MANSIWAT','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40626,'MATAAS NA BAYAN (POB.)','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40627,'MAYBO','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40628,'MERCADO (POB.)','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40629,'MURALLON (POB.)','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40630,'OGBAC','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40631,'PAWA','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40632,'PILI','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40633,'POCTOY','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40634,'PORAS','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40635,'PUTING BUHANGIN','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40636,'PUYOG','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40637,'SABONG','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40638,'SAN MIGUEL (POB.)','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40639,'SANTOL','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40640,'SAWI','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40641,'TABI','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40642,'TABIGUE','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40643,'TAGWAK','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40644,'TAMBUNAN','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40645,'TAMPUS (POB.)','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40646,'TANZA','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40647,'TUGOS','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40648,'TUMAGABOK','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40649,'TUMAPON','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40650,'ISOK I (POB.)','BOAC (Capital)','MARINDUQUE','REGION IV-B (MIMAROPA)'),(40651,'BALAO','ABRA DE ILOG','OCCIDENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40652,'CABACAO','ABRA DE ILOG','OCCIDENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40653,'LUMANGBAYAN','ABRA DE ILOG','OCCIDENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40654,'POBLACION','ABRA DE ILOG','OCCIDENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40655,'SAN VICENTE','ABRA DE ILOG','OCCIDENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40656,'TIBAG','ABRA DE ILOG','OCCIDENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40657,'UDALO (CAMURONG)','ABRA DE ILOG','OCCIDENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40658,'WAWA','ABRA DE ILOG','OCCIDENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40659,'ARMADO','ABRA DE ILOG','OCCIDENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40660,'ALAG','BACO','ORIENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40661,'BANGKATAN','BACO','ORIENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40662,'BURBULI','BACO','ORIENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40663,'CATWIRAN I','BACO','ORIENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40664,'CATWIRAN II','BACO','ORIENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40665,'DULANGAN I','BACO','ORIENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40666,'DULANGAN II','BACO','ORIENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40667,'LUMANG BAYAN','BACO','ORIENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40668,'MALAPAD','BACO','ORIENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40669,'MANGANGAN I','BACO','ORIENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40670,'MANGANGAN II','BACO','ORIENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40671,'MAYABIG','BACO','ORIENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40672,'PAMBISAN','BACO','ORIENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40673,'PULANG-TUBIG','BACO','ORIENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40674,'PUTICAN-CABULO','BACO','ORIENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40675,'SAN ANDRES','BACO','ORIENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40676,'SAN IGNACIO (DULANGAN III)','BACO','ORIENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40677,'SANTA CRUZ','BACO','ORIENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40678,'SANTA ROSA I','BACO','ORIENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40679,'SANTA ROSA II','BACO','ORIENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40680,'TABON-TABON','BACO','ORIENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40681,'TAGUMPAY','BACO','ORIENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40682,'WATER','BACO','ORIENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40683,'BARAS (MANGYAN MINORITY)','BACO','ORIENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40684,'BAYANAN','BACO','ORIENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40685,'LANTUYANG (MANGYAN MINORITY)','BACO','ORIENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40686,'POBLACION','BACO','ORIENTAL MINDORO','REGION IV-B (MIMAROPA)'),(40687,'APO-APORAWAN','ABORLAN','PALAWAN','REGION IV-B (MIMAROPA)'),(40688,'APOC-APOC','ABORLAN','PALAWAN','REGION IV-B (MIMAROPA)'),(40689,'APORAWAN','ABORLAN','PALAWAN','REGION IV-B (MIMAROPA)'),(40690,'BARAKE','ABORLAN','PALAWAN','REGION IV-B (MIMAROPA)'),(40691,'CABIGAAN','ABORLAN','PALAWAN','REGION IV-B (MIMAROPA)'),(40692,'GOGOGNAN','ABORLAN','PALAWAN','REGION IV-B (MIMAROPA)'),(40693,'IRAAN','ABORLAN','PALAWAN','REGION IV-B (MIMAROPA)'),(40694,'ISAUB','ABORLAN','PALAWAN','REGION IV-B (MIMAROPA)'),(40695,'JOSE RIZAL','ABORLAN','PALAWAN','REGION IV-B (MIMAROPA)'),(40696,'MABINI','ABORLAN','PALAWAN','REGION IV-B (MIMAROPA)'),(40697,'MAGBABADIL','ABORLAN','PALAWAN','REGION IV-B (MIMAROPA)'),(40698,'PLARIDEL','ABORLAN','PALAWAN','REGION IV-B (MIMAROPA)'),(40699,'RAMON MAGSAYSAY','ABORLAN','PALAWAN','REGION IV-B (MIMAROPA)'),(40700,'SAGPANGAN','ABORLAN','PALAWAN','REGION IV-B (MIMAROPA)'),(40701,'SAN JUAN','ABORLAN','PALAWAN','REGION IV-B (MIMAROPA)'),(40702,'TAGPAIT','ABORLAN','PALAWAN','REGION IV-B (MIMAROPA)'),(40703,'TIGMAN','ABORLAN','PALAWAN','REGION IV-B (MIMAROPA)'),(40704,'POBLACION','ABORLAN','PALAWAN','REGION IV-B (MIMAROPA)'),(40705,'CULANDANUM','ABORLAN','PALAWAN','REGION IV-B (MIMAROPA)'),(40706,'BONLAO','ALCANTARA','ROMBLON','REGION IV-B (MIMAROPA)'),(40707,'CALAGONSAO','ALCANTARA','ROMBLON','REGION IV-B (MIMAROPA)'),(40708,'CAMILI','ALCANTARA','ROMBLON','REGION IV-B (MIMAROPA)'),(40709,'CAMOD-OM','ALCANTARA','ROMBLON','REGION IV-B (MIMAROPA)'),(40710,'MADALAG','ALCANTARA','ROMBLON','REGION IV-B (MIMAROPA)'),(40711,'POBLACION','ALCANTARA','ROMBLON','REGION IV-B (MIMAROPA)'),(40712,'SAN ISIDRO','ALCANTARA','ROMBLON','REGION IV-B (MIMAROPA)'),(40713,'TUGDAN','ALCANTARA','ROMBLON','REGION IV-B (MIMAROPA)'),(40714,'BAGSIK','ALCANTARA','ROMBLON','REGION IV-B (MIMAROPA)'),(40715,'GUI-OB','ALCANTARA','ROMBLON','REGION IV-B (MIMAROPA)'),(40716,'LAWAN','ALCANTARA','ROMBLON','REGION IV-B (MIMAROPA)'),(40717,'SAN ROQUE','ALCANTARA','ROMBLON','REGION IV-B (MIMAROPA)'),(40718,'BACLAYON','BACACAY','ALBAY','REGION V (Bicol Region)'),(40719,'BANAO','BACACAY','ALBAY','REGION V (Bicol Region)'),(40720,'BARIW','BACACAY','ALBAY','REGION V (Bicol Region)'),(40721,'BASUD','BACACAY','ALBAY','REGION V (Bicol Region)'),(40722,'BAYANDONG','BACACAY','ALBAY','REGION V (Bicol Region)'),(40723,'BONGA (UPPER)','BACACAY','ALBAY','REGION V (Bicol Region)'),(40724,'BUANG','BACACAY','ALBAY','REGION V (Bicol Region)'),(40725,'CABASAN','BACACAY','ALBAY','REGION V (Bicol Region)'),(40726,'CAGBULACAO','BACACAY','ALBAY','REGION V (Bicol Region)'),(40727,'CAGRARAY','BACACAY','ALBAY','REGION V (Bicol Region)'),(40728,'CAJOGUTAN','BACACAY','ALBAY','REGION V (Bicol Region)'),(40729,'CAWAYAN','BACACAY','ALBAY','REGION V (Bicol Region)'),(40730,'DAMACAN','BACACAY','ALBAY','REGION V (Bicol Region)'),(40731,'GUBAT ILAWOD','BACACAY','ALBAY','REGION V (Bicol Region)'),(40732,'GUBAT IRAYA','BACACAY','ALBAY','REGION V (Bicol Region)'),(40733,'HINDI','BACACAY','ALBAY','REGION V (Bicol Region)'),(40734,'IGANG','BACACAY','ALBAY','REGION V (Bicol Region)'),(40735,'LANGATON','BACACAY','ALBAY','REGION V (Bicol Region)'),(40736,'MANAET','BACACAY','ALBAY','REGION V (Bicol Region)'),(40737,'MAPULANG DAGA','BACACAY','ALBAY','REGION V (Bicol Region)'),(40738,'MATAAS','BACACAY','ALBAY','REGION V (Bicol Region)'),(40739,'MISIBIS','BACACAY','ALBAY','REGION V (Bicol Region)'),(40740,'NAHAPUNAN','BACACAY','ALBAY','REGION V (Bicol Region)'),(40741,'NAMANDAY','BACACAY','ALBAY','REGION V (Bicol Region)'),(40742,'NAMANTAO','BACACAY','ALBAY','REGION V (Bicol Region)'),(40743,'NAPAO','BACACAY','ALBAY','REGION V (Bicol Region)'),(40744,'PANARAYON','BACACAY','ALBAY','REGION V (Bicol Region)'),(40745,'PIGCOBOHAN','BACACAY','ALBAY','REGION V (Bicol Region)'),(40746,'PILI ILAWOD','BACACAY','ALBAY','REGION V (Bicol Region)'),(40747,'PILI IRAYA','BACACAY','ALBAY','REGION V (Bicol Region)'),(40748,'BARANGAY 1 (POB.)','BACACAY','ALBAY','REGION V (Bicol Region)'),(40749,'BARANGAY 10 (POB.)','BACACAY','ALBAY','REGION V (Bicol Region)'),(40750,'BARANGAY 11 (POB.)','BACACAY','ALBAY','REGION V (Bicol Region)'),(40751,'BARANGAY 12 (POB.)','BACACAY','ALBAY','REGION V (Bicol Region)'),(40752,'BARANGAY 13 (POB.)','BACACAY','ALBAY','REGION V (Bicol Region)'),(40753,'BARANGAY 14 (POB.)','BACACAY','ALBAY','REGION V (Bicol Region)'),(40754,'BARANGAY 2 (POB.)','BACACAY','ALBAY','REGION V (Bicol Region)'),(40755,'BARANGAY 3 (POB.)','BACACAY','ALBAY','REGION V (Bicol Region)'),(40756,'BARANGAY 4 (POB.)','BACACAY','ALBAY','REGION V (Bicol Region)'),(40757,'BARANGAY 5 (POB.)','BACACAY','ALBAY','REGION V (Bicol Region)'),(40758,'BARANGAY 6 (POB.)','BACACAY','ALBAY','REGION V (Bicol Region)'),(40759,'BARANGAY 7 (POB.)','BACACAY','ALBAY','REGION V (Bicol Region)'),(40760,'BARANGAY 8 (POB.)','BACACAY','ALBAY','REGION V (Bicol Region)'),(40761,'BARANGAY 9 (POB.)','BACACAY','ALBAY','REGION V (Bicol Region)'),(40762,'PONGCO (LOWER BONGA)','BACACAY','ALBAY','REGION V (Bicol Region)'),(40763,'BUSDAC (SAN JOSE)','BACACAY','ALBAY','REGION V (Bicol Region)'),(40764,'SAN PABLO','BACACAY','ALBAY','REGION V (Bicol Region)'),(40765,'SAN PEDRO','BACACAY','ALBAY','REGION V (Bicol Region)'),(40766,'SOGOD','BACACAY','ALBAY','REGION V (Bicol Region)'),(40767,'SULA','BACACAY','ALBAY','REGION V (Bicol Region)'),(40768,'TAMBILAGAO (TAMBOGNON)','BACACAY','ALBAY','REGION V (Bicol Region)'),(40769,'TAMBONGON (TAMBILAGAO)','BACACAY','ALBAY','REGION V (Bicol Region)'),(40770,'TANAGAN','BACACAY','ALBAY','REGION V (Bicol Region)'),(40771,'USON','BACACAY','ALBAY','REGION V (Bicol Region)'),(40772,'VINISITAHAN-BASUD (MAINLAND)','BACACAY','ALBAY','REGION V (Bicol Region)'),(40773,'VINISITAHAN-NAPAO (LSLAND)','BACACAY','ALBAY','REGION V (Bicol Region)'),(40774,'ANGAS','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40775,'BACTAS','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40776,'BINATAGAN','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40777,'CAAYUNAN','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40778,'GUINATUNGAN','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40779,'HINAMPACAN','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40780,'LANGA','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40781,'LANITON','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40782,'LIDONG','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40783,'MAMPILI','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40784,'MANDAZO','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40785,'MANGCAMAGONG','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40786,'MANMUNTAY','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40787,'MANTUGAWE','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40788,'MATNOG','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40789,'MOCONG','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40790,'OLIVA','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40791,'PAGSANGAHAN','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40792,'PINAGWARASAN','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40793,'PLARIDEL','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40794,'POBLACION 1','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40795,'SAN FELIPE','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40796,'SAN JOSE','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40797,'SAN PASCUAL','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40798,'TABA-TABA','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40799,'TACAD','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40800,'TAISAN','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40801,'TUACA','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40802,'POBLACION 2','BASUD','CAMARINES NORTE','REGION V (Bicol Region)'),(40803,'AGDANGAN POB. (SAN CAYETANO)','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40804,'ANTIPOLO','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40805,'BAGUMBAYAN','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40806,'CARANDAY (LA PURISIMA)','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40807,'CRISTO REY','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40808,'DEL PILAR','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40809,'DEL ROSARIO (POB.)','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40810,'IYAGAN','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40811,'LA MEDALLA','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40812,'LOURDES','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40813,'NABABARERA','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40814,'SAGRADA','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40815,'SALVACION','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40816,'BULUANG (SAN ANTONIO)','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40817,'SAN FRANCISCO (POB.)','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40818,'SAN ISIDRO','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40819,'SAN JOSE (POB.)','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40820,'SAN JUAN','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40821,'SAN NICOLAS (POB.)','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40822,'SAN RAFAEL (IKPAN)','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40823,'PUGAY (SAN RAFAEL)','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40824,'SAN RAMON (POB.)','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40825,'SAN ROQUE (POB.)','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40826,'SAN VICENTE','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40827,'SANTA CRUZ (POB.)','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40828,'SANTA EULALIA','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40829,'SANTA ISABEL','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40830,'SANTA TERESA (VIGA)','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40831,'SANTA TERESITA','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40832,'TAPOL','BAAO','CAMARINES SUR','REGION V (Bicol Region)'),(40833,'ANTIPOLO','BAGAMANOC','CATANDUANES','REGION V (Bicol Region)'),(40834,'BACAK','BAGAMANOC','CATANDUANES','REGION V (Bicol Region)'),(40835,'BAGATABAO','BAGAMANOC','CATANDUANES','REGION V (Bicol Region)'),(40836,'BUGAO','BAGAMANOC','CATANDUANES','REGION V (Bicol Region)'),(40837,'CAHAN','BAGAMANOC','CATANDUANES','REGION V (Bicol Region)'),(40838,'HINIPAAN','BAGAMANOC','CATANDUANES','REGION V (Bicol Region)'),(40839,'MAGSAYSAY','BAGAMANOC','CATANDUANES','REGION V (Bicol Region)'),(40840,'POBLACION','BAGAMANOC','CATANDUANES','REGION V (Bicol Region)'),(40841,'QUIGARAY','BAGAMANOC','CATANDUANES','REGION V (Bicol Region)'),(40842,'QUEZON (PANCAYANAN)','BAGAMANOC','CATANDUANES','REGION V (Bicol Region)'),(40843,'SAGRADA','BAGAMANOC','CATANDUANES','REGION V (Bicol Region)'),(40844,'SALVACION (PANUTO)','BAGAMANOC','CATANDUANES','REGION V (Bicol Region)'),(40845,'SAN ISIDRO','BAGAMANOC','CATANDUANES','REGION V (Bicol Region)'),(40846,'SAN RAFAEL (MAHANTOD)','BAGAMANOC','CATANDUANES','REGION V (Bicol Region)'),(40847,'SAN VICENTE','BAGAMANOC','CATANDUANES','REGION V (Bicol Region)'),(40848,'SANTA MESA','BAGAMANOC','CATANDUANES','REGION V (Bicol Region)'),(40849,'SANTA TERESA','BAGAMANOC','CATANDUANES','REGION V (Bicol Region)'),(40850,'SUCHAN','BAGAMANOC','CATANDUANES','REGION V (Bicol Region)'),(40851,'AMBOLONG','AROROY','MASBATE','REGION V (Bicol Region)'),(40852,'AMOROY','AROROY','MASBATE','REGION V (Bicol Region)'),(40853,'AMUTAG','AROROY','MASBATE','REGION V (Bicol Region)'),(40854,'BAGAUMA','AROROY','MASBATE','REGION V (Bicol Region)'),(40855,'BALAWING','AROROY','MASBATE','REGION V (Bicol Region)'),(40856,'BALETE','AROROY','MASBATE','REGION V (Bicol Region)'),(40857,'BANGON','AROROY','MASBATE','REGION V (Bicol Region)'),(40858,'CABANGCALAN','AROROY','MASBATE','REGION V (Bicol Region)'),(40859,'CABAS-AN','AROROY','MASBATE','REGION V (Bicol Region)'),(40860,'CALANAY','AROROY','MASBATE','REGION V (Bicol Region)'),(40861,'CAPSAY','AROROY','MASBATE','REGION V (Bicol Region)'),(40862,'CONCEPCION','AROROY','MASBATE','REGION V (Bicol Region)'),(40863,'DAYHAGAN','AROROY','MASBATE','REGION V (Bicol Region)'),(40864,'DON PABLO DELA ROSA','AROROY','MASBATE','REGION V (Bicol Region)'),(40865,'GUMAHANG','AROROY','MASBATE','REGION V (Bicol Region)'),(40866,'JABOYOAN','AROROY','MASBATE','REGION V (Bicol Region)'),(40867,'LANANG','AROROY','MASBATE','REGION V (Bicol Region)'),(40868,'LUY-A','AROROY','MASBATE','REGION V (Bicol Region)'),(40869,'MACABUG','AROROY','MASBATE','REGION V (Bicol Region)'),(40870,'MALUBI','AROROY','MASBATE','REGION V (Bicol Region)'),(40871,'MANAGANAGA','AROROY','MASBATE','REGION V (Bicol Region)'),(40872,'MANAMOC','AROROY','MASBATE','REGION V (Bicol Region)'),(40873,'MARIPOSA','AROROY','MASBATE','REGION V (Bicol Region)'),(40874,'MATABA','AROROY','MASBATE','REGION V (Bicol Region)'),(40875,'MATALANGTALANG','AROROY','MASBATE','REGION V (Bicol Region)'),(40876,'MATANGOG','AROROY','MASBATE','REGION V (Bicol Region)'),(40877,'NABONGSORAN','AROROY','MASBATE','REGION V (Bicol Region)'),(40878,'PANGLE','AROROY','MASBATE','REGION V (Bicol Region)'),(40879,'PANIQUE','AROROY','MASBATE','REGION V (Bicol Region)'),(40880,'PINANAAN','AROROY','MASBATE','REGION V (Bicol Region)'),(40881,'POBLACION','AROROY','MASBATE','REGION V (Bicol Region)'),(40882,'PURO','AROROY','MASBATE','REGION V (Bicol Region)'),(40883,'SAN AGUSTIN','AROROY','MASBATE','REGION V (Bicol Region)'),(40884,'SAN ISIDRO','AROROY','MASBATE','REGION V (Bicol Region)'),(40885,'SAWANG','AROROY','MASBATE','REGION V (Bicol Region)'),(40886,'SYNDICATE','AROROY','MASBATE','REGION V (Bicol Region)'),(40887,'TALABAAN','AROROY','MASBATE','REGION V (Bicol Region)'),(40888,'TALIB','AROROY','MASBATE','REGION V (Bicol Region)'),(40889,'TIGBAO','AROROY','MASBATE','REGION V (Bicol Region)'),(40890,'TINAGO','AROROY','MASBATE','REGION V (Bicol Region)'),(40891,'TINIGBAN','AROROY','MASBATE','REGION V (Bicol Region)'),(40892,'ALEGRIA','BARCELONA','SORSOGON','REGION V (Bicol Region)'),(40893,'BAGACAY','BARCELONA','SORSOGON','REGION V (Bicol Region)'),(40894,'BANGATE','BARCELONA','SORSOGON','REGION V (Bicol Region)'),(40895,'BUGTONG','BARCELONA','SORSOGON','REGION V (Bicol Region)'),(40896,'CAGANG','BARCELONA','SORSOGON','REGION V (Bicol Region)'),(40897,'FABRICA','BARCELONA','SORSOGON','REGION V (Bicol Region)'),(40898,'JIBONG','BARCELONA','SORSOGON','REGION V (Bicol Region)'),(40899,'LAGO','BARCELONA','SORSOGON','REGION V (Bicol Region)'),(40900,'LAYOG','BARCELONA','SORSOGON','REGION V (Bicol Region)'),(40901,'LUNETA','BARCELONA','SORSOGON','REGION V (Bicol Region)'),(40902,'MACABARI','BARCELONA','SORSOGON','REGION V (Bicol Region)'),(40903,'MAPAPAC','BARCELONA','SORSOGON','REGION V (Bicol Region)'),(40904,'OLANDIA','BARCELONA','SORSOGON','REGION V (Bicol Region)'),(40905,'PAGHALUBAN','BARCELONA','SORSOGON','REGION V (Bicol Region)'),(40906,'POBLACION CENTRAL','BARCELONA','SORSOGON','REGION V (Bicol Region)'),(40907,'POBLACION NORTE','BARCELONA','SORSOGON','REGION V (Bicol Region)'),(40908,'POBLACION SUR','BARCELONA','SORSOGON','REGION V (Bicol Region)'),(40909,'PUTIAO','BARCELONA','SORSOGON','REGION V (Bicol Region)'),(40910,'SAN ANTONIO','BARCELONA','SORSOGON','REGION V (Bicol Region)'),(40911,'SAN ISIDRO','BARCELONA','SORSOGON','REGION V (Bicol Region)'),(40912,'SAN RAMON','BARCELONA','SORSOGON','REGION V (Bicol Region)'),(40913,'SAN VICENTE','BARCELONA','SORSOGON','REGION V (Bicol Region)'),(40914,'SANTA CRUZ','BARCELONA','SORSOGON','REGION V (Bicol Region)'),(40915,'SANTA LOURDES','BARCELONA','SORSOGON','REGION V (Bicol Region)'),(40916,'TAGDON','BARCELONA','SORSOGON','REGION V (Bicol Region)'),(40917,'CABANGILA','ALTAVAS','AKLAN','REGION VI (Western Visayas)'),(40918,'CABUGAO','ALTAVAS','AKLAN','REGION VI (Western Visayas)'),(40919,'CATMON','ALTAVAS','AKLAN','REGION VI (Western Visayas)'),(40920,'DALIPDIP','ALTAVAS','AKLAN','REGION VI (Western Visayas)'),(40921,'GINICTAN','ALTAVAS','AKLAN','REGION VI (Western Visayas)'),(40922,'LINAYASAN','ALTAVAS','AKLAN','REGION VI (Western Visayas)'),(40923,'LUMAYNAY','ALTAVAS','AKLAN','REGION VI (Western Visayas)'),(40924,'LUPO','ALTAVAS','AKLAN','REGION VI (Western Visayas)'),(40925,'MAN-UP','ALTAVAS','AKLAN','REGION VI (Western Visayas)'),(40926,'ODIONG','ALTAVAS','AKLAN','REGION VI (Western Visayas)'),(40927,'POBLACION','ALTAVAS','AKLAN','REGION VI (Western Visayas)'),(40928,'QUINASAY-AN','ALTAVAS','AKLAN','REGION VI (Western Visayas)'),(40929,'TALON','ALTAVAS','AKLAN','REGION VI (Western Visayas)'),(40930,'TIBIAO','ALTAVAS','AKLAN','REGION VI (Western Visayas)'),(40931,'BAYO GRANDE','ANINI-Y','ANTIQUE','REGION VI (Western Visayas)'),(40932,'BAYO PEQUE?O','ANINI-Y','ANTIQUE','REGION VI (Western Visayas)'),(40933,'BUTUAN','ANINI-Y','ANTIQUE','REGION VI (Western Visayas)'),(40934,'CASAY','ANINI-Y','ANTIQUE','REGION VI (Western Visayas)'),(40935,'CASAY VIEJO','ANINI-Y','ANTIQUE','REGION VI (Western Visayas)'),(40936,'IBA','ANINI-Y','ANTIQUE','REGION VI (Western Visayas)'),(40937,'IGBARABATUAN','ANINI-Y','ANTIQUE','REGION VI (Western Visayas)'),(40938,'IGPALGE','ANINI-Y','ANTIQUE','REGION VI (Western Visayas)'),(40939,'IGTUMAROM','ANINI-Y','ANTIQUE','REGION VI (Western Visayas)'),(40940,'LISUB A','ANINI-Y','ANTIQUE','REGION VI (Western Visayas)'),(40941,'LISUB B','ANINI-Y','ANTIQUE','REGION VI (Western Visayas)'),(40942,'MABUYONG','ANINI-Y','ANTIQUE','REGION VI (Western Visayas)'),(40943,'MAGDALENA','ANINI-Y','ANTIQUE','REGION VI (Western Visayas)'),(40944,'NASULI C','ANINI-Y','ANTIQUE','REGION VI (Western Visayas)'),(40945,'NATO','ANINI-Y','ANTIQUE','REGION VI (Western Visayas)'),(40946,'POBLACION','ANINI-Y','ANTIQUE','REGION VI (Western Visayas)'),(40947,'SAGUA','ANINI-Y','ANTIQUE','REGION VI (Western Visayas)'),(40948,'SALVACION','ANINI-Y','ANTIQUE','REGION VI (Western Visayas)'),(40949,'SAN FRANCISCO','ANINI-Y','ANTIQUE','REGION VI (Western Visayas)'),(40950,'SAN RAMON','ANINI-Y','ANTIQUE','REGION VI (Western Visayas)'),(40951,'SAN ROQUE','ANINI-Y','ANTIQUE','REGION VI (Western Visayas)'),(40952,'TAGAYTAY','ANINI-Y','ANTIQUE','REGION VI (Western Visayas)'),(40953,'TALISAYAN','ANINI-Y','ANTIQUE','REGION VI (Western Visayas)'),(40954,'AGCABUGAO','CUARTERO','CAPIZ','REGION VI (Western Visayas)'),(40955,'AGDAHON','CUARTERO','CAPIZ','REGION VI (Western Visayas)'),(40956,'AGNAGA','CUARTERO','CAPIZ','REGION VI (Western Visayas)'),(40957,'ANGUB','CUARTERO','CAPIZ','REGION VI (Western Visayas)'),(40958,'BALINGASAG','CUARTERO','CAPIZ','REGION VI (Western Visayas)'),(40959,'BITO-ON ILAWOD','CUARTERO','CAPIZ','REGION VI (Western Visayas)'),(40960,'BITO-ON ILAYA','CUARTERO','CAPIZ','REGION VI (Western Visayas)'),(40961,'BUN-OD','CUARTERO','CAPIZ','REGION VI (Western Visayas)'),(40962,'CARATAYA','CUARTERO','CAPIZ','REGION VI (Western Visayas)'),(40963,'LUNAYAN','CUARTERO','CAPIZ','REGION VI (Western Visayas)'),(40964,'MAHUNODHUNOD','CUARTERO','CAPIZ','REGION VI (Western Visayas)'),(40965,'MAINDANG','CUARTERO','CAPIZ','REGION VI (Western Visayas)'),(40966,'MAINIT','CUARTERO','CAPIZ','REGION VI (Western Visayas)'),(40967,'MALAGAB-I','CUARTERO','CAPIZ','REGION VI (Western Visayas)'),(40968,'NAGBA','CUARTERO','CAPIZ','REGION VI (Western Visayas)'),(40969,'POBLACION ILAWOD','CUARTERO','CAPIZ','REGION VI (Western Visayas)'),(40970,'POBLACION ILAYA','CUARTERO','CAPIZ','REGION VI (Western Visayas)'),(40971,'POBLACION TAKAS','CUARTERO','CAPIZ','REGION VI (Western Visayas)'),(40972,'PUTI-AN','CUARTERO','CAPIZ','REGION VI (Western Visayas)'),(40973,'SAN ANTONIO','CUARTERO','CAPIZ','REGION VI (Western Visayas)'),(40974,'SINABSABAN','CUARTERO','CAPIZ','REGION VI (Western Visayas)'),(40975,'MAHABANG SAPA','CUARTERO','CAPIZ','REGION VI (Western Visayas)'),(40976,'AGSANAYAN','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(40977,'AVILA','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(40978,'BANBAN','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(40979,'BACJAO (CALUMINGAN)','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(40980,'CANSILAYAN','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(40981,'DAGSA-AN','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(40982,'DARAGAN','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(40983,'EAST VALENCIA','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(40984,'GETULIO','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(40985,'MABINI','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(40986,'MAGSAYSAY','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(40987,'MCLAIN','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(40988,'MONTPILLER','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(40989,'NAVALAS','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(40990,'NAZARET','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(40991,'NEW POBLACION (CALINGAO)','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(40992,'OLD POBLACION','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(40993,'PI?A','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(40994,'RIZAL','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(40995,'SALVACION','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(40996,'SAN FERNANDO','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(40997,'SAN ISIDRO','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(40998,'SAN MIGUEL','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(40999,'SAN NICOLAS','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(41000,'SAN PEDRO','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(41001,'SAN ROQUE','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(41002,'SANTO ROSARIO','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(41003,'SAWANG','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(41004,'SUPANG','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(41005,'TACAY','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(41006,'TAMINLA','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(41007,'TANAG','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(41008,'TASTASAN','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(41009,'TINADTARAN','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(41010,'UMILIG','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(41011,'ZALDIVAR','BUENAVISTA','GUIMARAS','REGION VI (Western Visayas)'),(41012,'ADCADARAO','AJUY','ILOILO','REGION VI (Western Visayas)'),(41013,'AGBOBOLO','AJUY','ILOILO','REGION VI (Western Visayas)'),(41014,'BADIANGAN','AJUY','ILOILO','REGION VI (Western Visayas)'),(41015,'BARRIDO','AJUY','ILOILO','REGION VI (Western Visayas)'),(41016,'BATO BIASONG','AJUY','ILOILO','REGION VI (Western Visayas)'),(41017,'BAY-ANG','AJUY','ILOILO','REGION VI (Western Visayas)'),(41018,'BUCANA BUNGLAS','AJUY','ILOILO','REGION VI (Western Visayas)'),(41019,'CENTRAL','AJUY','ILOILO','REGION VI (Western Visayas)'),(41020,'CULASI','AJUY','ILOILO','REGION VI (Western Visayas)'),(41021,'LANJAGAN','AJUY','ILOILO','REGION VI (Western Visayas)'),(41022,'LUCA','AJUY','ILOILO','REGION VI (Western Visayas)'),(41023,'MALAYU-AN','AJUY','ILOILO','REGION VI (Western Visayas)'),(41024,'MANGOROCORO','AJUY','ILOILO','REGION VI (Western Visayas)'),(41025,'NASIDMAN','AJUY','ILOILO','REGION VI (Western Visayas)'),(41026,'PANTALAN NABAYE','AJUY','ILOILO','REGION VI (Western Visayas)'),(41027,'PANTALAN NAVARRO','AJUY','ILOILO','REGION VI (Western Visayas)'),(41028,'PEDADA','AJUY','ILOILO','REGION VI (Western Visayas)'),(41029,'PILI','AJUY','ILOILO','REGION VI (Western Visayas)'),(41030,'PINANTAN DIEL','AJUY','ILOILO','REGION VI (Western Visayas)'),(41031,'PINANTAN ELIZALDE','AJUY','ILOILO','REGION VI (Western Visayas)'),(41032,'PINAY ESPINOSA','AJUY','ILOILO','REGION VI (Western Visayas)'),(41033,'POBLACION','AJUY','ILOILO','REGION VI (Western Visayas)'),(41034,'PROGRESO','AJUY','ILOILO','REGION VI (Western Visayas)'),(41035,'PUENTE BUNGLAS','AJUY','ILOILO','REGION VI (Western Visayas)'),(41036,'PUNTA BURI','AJUY','ILOILO','REGION VI (Western Visayas)'),(41037,'ROJAS','AJUY','ILOILO','REGION VI (Western Visayas)'),(41038,'SAN ANTONIO','AJUY','ILOILO','REGION VI (Western Visayas)'),(41039,'SILAGON','AJUY','ILOILO','REGION VI (Western Visayas)'),(41040,'SANTO ROSARIO','AJUY','ILOILO','REGION VI (Western Visayas)'),(41041,'TAGUBANHAN','AJUY','ILOILO','REGION VI (Western Visayas)'),(41042,'TAGUHANGIN','AJUY','ILOILO','REGION VI (Western Visayas)'),(41043,'TANDUYAN','AJUY','ILOILO','REGION VI (Western Visayas)'),(41044,'TIPACLA','AJUY','ILOILO','REGION VI (Western Visayas)'),(41045,'TUBOGAN','AJUY','ILOILO','REGION VI (Western Visayas)'),(41046,'ALANGILAN','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41047,'ALIJIS','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41048,'BANAGO','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41049,'BARANGAY 1 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41050,'BARANGAY 10 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41051,'BARANGAY 11 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41052,'BARANGAY 12 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41053,'BARANGAY 13 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41054,'BARANGAY 14 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41055,'BARANGAY 15 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41056,'BARANGAY 16 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41057,'BARANGAY 17 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41058,'BARANGAY 18 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41059,'BARANGAY 19 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41060,'BARANGAY 2 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41061,'BARANGAY 20 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41062,'BARANGAY 21 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41063,'BARANGAY 22 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41064,'BARANGAY 23 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41065,'BARANGAY 24 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41066,'BARANGAY 25 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41067,'BARANGAY 26 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41068,'BARANGAY 27 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41069,'BARANGAY 28 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41070,'BARANGAY 29 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41071,'BARANGAY 3 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41072,'BARANGAY 30 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41073,'BARANGAY 31 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41074,'BARANGAY 32 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41075,'BARANGAY 33 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41076,'BARANGAY 34 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41077,'BARANGAY 35 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41078,'BARANGAY 36 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41079,'BARANGAY 37 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41080,'BARANGAY 38 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41081,'BARANGAY 39 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41082,'BARANGAY 4 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41083,'BARANGAY 40 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41084,'BARANGAY 41 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41085,'BARANGAY 5 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41086,'BARANGAY 6 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41087,'BARANGAY 7 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41088,'BARANGAY 8 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41089,'BARANGAY 9 (POB.)','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41090,'BATA','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41091,'CABUG','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41092,'ESTEFANIA','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41093,'FELISA','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41094,'GRANADA','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41095,'MANDALAGAN','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41096,'MANSILINGAN','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41097,'MONTEVISTA','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41098,'PAHANOCOY','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41099,'PUNTA TAYTAY','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41100,'SINGCANG-AIRPORT','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41101,'SUM-AG','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41102,'TACULING','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41103,'TANGUB','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41104,'VILLAMONTE','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41105,'VISTA ALEGRE','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41106,'HANDUMANAN','BACOLOD CITY (Capital)','NEGROS OCCIDENTAL','REGION VI (Western Visayas)'),(41107,'BAHI','ALBURQUERQUE','BOHOL','REGION VII (Central Visayas)'),(41108,'BASACDACU','ALBURQUERQUE','BOHOL','REGION VII (Central Visayas)'),(41109,'CANTIGUIB','ALBURQUERQUE','BOHOL','REGION VII (Central Visayas)'),(41110,'DANGAY','ALBURQUERQUE','BOHOL','REGION VII (Central Visayas)'),(41111,'EAST POBLACION','ALBURQUERQUE','BOHOL','REGION VII (Central Visayas)'),(41112,'PONONG','ALBURQUERQUE','BOHOL','REGION VII (Central Visayas)'),(41113,'SAN AGUSTIN','ALBURQUERQUE','BOHOL','REGION VII (Central Visayas)'),(41114,'SANTA FILOMENA','ALBURQUERQUE','BOHOL','REGION VII (Central Visayas)'),(41115,'TAGBUANE','ALBURQUERQUE','BOHOL','REGION VII (Central Visayas)'),(41116,'TORIL','ALBURQUERQUE','BOHOL','REGION VII (Central Visayas)'),(41117,'WEST POBLACION','ALBURQUERQUE','BOHOL','REGION VII (Central Visayas)'),(41118,'CABADIANGAN','ALCANTARA','CEBU','REGION VII (Central Visayas)'),(41119,'CABIL-ISAN','ALCANTARA','CEBU','REGION VII (Central Visayas)'),(41120,'CANDABONG','ALCANTARA','CEBU','REGION VII (Central Visayas)'),(41121,'LAWAAN','ALCANTARA','CEBU','REGION VII (Central Visayas)'),(41122,'MANGA','ALCANTARA','CEBU','REGION VII (Central Visayas)'),(41123,'PALANAS','ALCANTARA','CEBU','REGION VII (Central Visayas)'),(41124,'POBLACION','ALCANTARA','CEBU','REGION VII (Central Visayas)'),(41125,'POLO','ALCANTARA','CEBU','REGION VII (Central Visayas)'),(41126,'SALAGMAYA','ALCANTARA','CEBU','REGION VII (Central Visayas)'),(41127,'BIO-OS','AMLAN (AYUQUITAN)','NEGROS ORIENTAL','REGION VII (Central Visayas)'),(41128,'JANTIANON','AMLAN (AYUQUITAN)','NEGROS ORIENTAL','REGION VII (Central Visayas)'),(41129,'JUGNO','AMLAN (AYUQUITAN)','NEGROS ORIENTAL','REGION VII (Central Visayas)'),(41130,'MAG-ABO','AMLAN (AYUQUITAN)','NEGROS ORIENTAL','REGION VII (Central Visayas)'),(41131,'POBLACION','AMLAN (AYUQUITAN)','NEGROS ORIENTAL','REGION VII (Central Visayas)'),(41132,'SILAB','AMLAN (AYUQUITAN)','NEGROS ORIENTAL','REGION VII (Central Visayas)'),(41133,'TAMBOJANGIN','AMLAN (AYUQUITAN)','NEGROS ORIENTAL','REGION VII (Central Visayas)'),(41134,'TANDAYAG','AMLAN (AYUQUITAN)','NEGROS ORIENTAL','REGION VII (Central Visayas)'),(41135,'BALOLONG','ENRIQUE VILLANUEVA','SIQUIJOR','REGION VII (Central Visayas)'),(41136,'BINO-ONGAN','ENRIQUE VILLANUEVA','SIQUIJOR','REGION VII (Central Visayas)'),(41137,'BITAUG','ENRIQUE VILLANUEVA','SIQUIJOR','REGION VII (Central Visayas)'),(41138,'BOLOT','ENRIQUE VILLANUEVA','SIQUIJOR','REGION VII (Central Visayas)'),(41139,'CAMOGAO','ENRIQUE VILLANUEVA','SIQUIJOR','REGION VII (Central Visayas)'),(41140,'CANGMANGKI','ENRIQUE VILLANUEVA','SIQUIJOR','REGION VII (Central Visayas)'),(41141,'LIBO','ENRIQUE VILLANUEVA','SIQUIJOR','REGION VII (Central Visayas)'),(41142,'LOMANGCAPAN','ENRIQUE VILLANUEVA','SIQUIJOR','REGION VII (Central Visayas)'),(41143,'LOTLOTON','ENRIQUE VILLANUEVA','SIQUIJOR','REGION VII (Central Visayas)'),(41144,'MANAN-AO','ENRIQUE VILLANUEVA','SIQUIJOR','REGION VII (Central Visayas)'),(41145,'OLAVE','ENRIQUE VILLANUEVA','SIQUIJOR','REGION VII (Central Visayas)'),(41146,'PARIAN','ENRIQUE VILLANUEVA','SIQUIJOR','REGION VII (Central Visayas)'),(41147,'POBLACION','ENRIQUE VILLANUEVA','SIQUIJOR','REGION VII (Central Visayas)'),(41148,'TULAPOS','ENRIQUE VILLANUEVA','SIQUIJOR','REGION VII (Central Visayas)'),(41149,'CAUCAB','ALMERIA','BILIRAN','REGION VIII (Eastern Visayas)'),(41150,'IYOSAN','ALMERIA','BILIRAN','REGION VIII (Eastern Visayas)'),(41151,'JAMORAWON','ALMERIA','BILIRAN','REGION VIII (Eastern Visayas)'),(41152,'LO-OK','ALMERIA','BILIRAN','REGION VIII (Eastern Visayas)'),(41153,'MATANGA','ALMERIA','BILIRAN','REGION VIII (Eastern Visayas)'),(41154,'PILI','ALMERIA','BILIRAN','REGION VIII (Eastern Visayas)'),(41155,'POBLACION','ALMERIA','BILIRAN','REGION VIII (Eastern Visayas)'),(41156,'PULANG BATO','ALMERIA','BILIRAN','REGION VIII (Eastern Visayas)'),(41157,'SALANGI','ALMERIA','BILIRAN','REGION VIII (Eastern Visayas)'),(41158,'SAMPAO','ALMERIA','BILIRAN','REGION VIII (Eastern Visayas)'),(41159,'TABUNAN','ALMERIA','BILIRAN','REGION VIII (Eastern Visayas)'),(41160,'TALAHID','ALMERIA','BILIRAN','REGION VIII (Eastern Visayas)'),(41161,'TAMARINDO','ALMERIA','BILIRAN','REGION VIII (Eastern Visayas)'),(41162,'AGUINALDO','ARTECHE','EASTERN SAMAR','REGION VIII (Eastern Visayas)'),(41163,'BALUD (POB.)','ARTECHE','EASTERN SAMAR','REGION VIII (Eastern Visayas)'),(41164,'BATO (SAN LUIS)','ARTECHE','EASTERN SAMAR','REGION VIII (Eastern Visayas)'),(41165,'BERI','ARTECHE','EASTERN SAMAR','REGION VIII (Eastern Visayas)'),(41166,'BIGO','ARTECHE','EASTERN SAMAR','REGION VIII (Eastern Visayas)'),(41167,'BUENAVISTA','ARTECHE','EASTERN SAMAR','REGION VIII (Eastern Visayas)'),(41168,'CAGSALAY','ARTECHE','EASTERN SAMAR','REGION VIII (Eastern Visayas)'),(41169,'CAMPACION','ARTECHE','EASTERN SAMAR','REGION VIII (Eastern Visayas)'),(41170,'CARAPDAPAN','ARTECHE','EASTERN SAMAR','REGION VIII (Eastern Visayas)'),(41171,'CASIDMAN','ARTECHE','EASTERN SAMAR','REGION VIII (Eastern Visayas)'),(41172,'CATUMSAN','ARTECHE','EASTERN SAMAR','REGION VIII (Eastern Visayas)'),(41173,'CENTRAL (POB.)','ARTECHE','EASTERN SAMAR','REGION VIII (Eastern Visayas)'),(41174,'CONCEPCION','ARTECHE','EASTERN SAMAR','REGION VIII (Eastern Visayas)'),(41175,'GARDEN (POB.)','ARTECHE','EASTERN SAMAR','REGION VIII (Eastern Visayas)'),(41176,'INAYAWAN','ARTECHE','EASTERN SAMAR','REGION VIII (Eastern Visayas)'),(41177,'MACARTHUR','ARTECHE','EASTERN SAMAR','REGION VIII (Eastern Visayas)'),(41178,'RAWIS (POB.)','ARTECHE','EASTERN SAMAR','REGION VIII (Eastern Visayas)'),(41179,'TANGBO','ARTECHE','EASTERN SAMAR','REGION VIII (Eastern Visayas)'),(41180,'TAWAGAN','ARTECHE','EASTERN SAMAR','REGION VIII (Eastern Visayas)'),(41181,'TEBALAWON','ARTECHE','EASTERN SAMAR','REGION VIII (Eastern Visayas)'),(41182,'ALANGILAN','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41183,'ANIBONGAN','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41184,'BUAYA','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41185,'BAGACAY','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41186,'BAHAY','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41187,'BALINSASAYAO','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41188,'BALOCAWE','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41189,'BALOCAWEHAY','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41190,'BARAYONG','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41191,'BAYABAS','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41192,'BITO (POB.)','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41193,'BUENAVISTA','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41194,'BULAK','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41195,'BUNGA','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41196,'BUNTAY (POB.)','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41197,'BURUBUD-AN','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41198,'CAGBOLO','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41199,'CAN-UGUIB (POB.)','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41200,'CAN-APORONG','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41201,'CANMARATING','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41202,'CAPILIAN','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41203,'CADAC-AN','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41204,'COMBIS','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41205,'DINGLE','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41206,'GUINTAGBUCAN (POB.)','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41207,'HAMPIPILA','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41208,'KATIPUNAN','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41209,'KIKILO','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41210,'LARAY','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41211,'LAWA-AN','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41212,'LIBERTAD','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41213,'LOYONSAWANG (POB.)','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41214,'MAHAGNA (NEW CAGBOLO)','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41215,'MAG-ATUBANG','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41216,'MAHAYAHAY','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41217,'MAITUM','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41218,'MALAGUICAY','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41219,'MATAGNAO','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41220,'NALIBUNAN (POB.)','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41221,'NEBGA','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41222,'ODIONGAN','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41223,'PAGSANG-AN','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41224,'PAGUITE','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41225,'PARASANON','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41226,'PICAS SUR','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41227,'PILAR','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41228,'PINAMANAGAN','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41229,'SALVACION','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41230,'SAN FRANCISCO','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41231,'SAN ISIDRO','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41232,'SAN ROQUE','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41233,'SANTA FE (POB.)','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41234,'SANTA LUCIA (POB.)','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41235,'SANTO NI?O (POB.)','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41236,'TABIGUE','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41237,'TADOC','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41238,'NEW TALIGUE','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41239,'OLD TALIGUE','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41240,'TIB-O','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41241,'TINALIAN','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41242,'TINOCOLAN','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41243,'TUY-A','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41244,'VICTORY (POB.)','ABUYOG','LEYTE','REGION VIII (Eastern Visayas)'),(41245,'ALEJANDRO VILLAGE (SANTIAGO)','ALLEN','NORTHERN SAMAR','REGION VIII (Eastern Visayas)'),(41246,'BONIFACIO','ALLEN','NORTHERN SAMAR','REGION VIII (Eastern Visayas)'),(41247,'CABACUNGAN','ALLEN','NORTHERN SAMAR','REGION VIII (Eastern Visayas)'),(41248,'CALARAYAN','ALLEN','NORTHERN SAMAR','REGION VIII (Eastern Visayas)'),(41249,'GUIN-ARAWAYAN','ALLEN','NORTHERN SAMAR','REGION VIII (Eastern Visayas)'),(41250,'JUBASAN','ALLEN','NORTHERN SAMAR','REGION VIII (Eastern Visayas)'),(41251,'KINABRANAN ZONE I (POB.)','ALLEN','NORTHERN SAMAR','REGION VIII (Eastern Visayas)'),(41252,'KINAGUITMAN','ALLEN','NORTHERN SAMAR','REGION VIII (Eastern Visayas)'),(41253,'LAGUNDI','ALLEN','NORTHERN SAMAR','REGION VIII (Eastern Visayas)'),(41254,'LIPATA','ALLEN','NORTHERN SAMAR','REGION VIII (Eastern Visayas)'),(41255,'LONDRES','ALLEN','NORTHERN SAMAR','REGION VIII (Eastern Visayas)'),(41256,'SABANG ZONE I (POB.)','ALLEN','NORTHERN SAMAR','REGION VIII (Eastern Visayas)'),(41257,'SANTA RITA','ALLEN','NORTHERN SAMAR','REGION VIII (Eastern Visayas)'),(41258,'TASVILLA','ALLEN','NORTHERN SAMAR','REGION VIII (Eastern Visayas)'),(41259,'FREDERIC','ALLEN','NORTHERN SAMAR','REGION VIII (Eastern Visayas)'),(41260,'IMELDA','ALLEN','NORTHERN SAMAR','REGION VIII (Eastern Visayas)'),(41261,'LO-OC','ALLEN','NORTHERN SAMAR','REGION VIII (Eastern Visayas)'),(41262,'KINABRANAN ZONE II (POB.)','ALLEN','NORTHERN SAMAR','REGION VIII (Eastern Visayas)'),(41263,'SABANG ZONE II (POB.)','ALLEN','NORTHERN SAMAR','REGION VIII (Eastern Visayas)'),(41264,'VICTORIA','ALLEN','NORTHERN SAMAR','REGION VIII (Eastern Visayas)'),(41265,'BACJAO','ALMAGRO','SAMAR (WESTERN SAMAR)','REGION VIII (Eastern Visayas)'),(41266,'BIASONG I','ALMAGRO','SAMAR (WESTERN SAMAR)','REGION VIII (Eastern Visayas)'),(41267,'COSTA RICA','ALMAGRO','SAMAR (WESTERN SAMAR)','REGION VIII (Eastern Visayas)'),(41268,'GUIN-ANSAN','ALMAGRO','SAMAR (WESTERN SAMAR)','REGION VIII (Eastern Visayas)'),(41269,'KERIKITE','ALMAGRO','SAMAR (WESTERN SAMAR)','REGION VIII (Eastern Visayas)'),(41270,'LUNANG I (LOOK)','ALMAGRO','SAMAR (WESTERN SAMAR)','REGION VIII (Eastern Visayas)'),(41271,'LUNANG II','ALMAGRO','SAMAR (WESTERN SAMAR)','REGION VIII (Eastern Visayas)'),(41272,'MALOBAGO','ALMAGRO','SAMAR (WESTERN SAMAR)','REGION VIII (Eastern Visayas)'),(41273,'MARASBARAS','ALMAGRO','SAMAR (WESTERN SAMAR)','REGION VIII (Eastern Visayas)'),(41274,'PANJOBJOBAN I','ALMAGRO','SAMAR (WESTERN SAMAR)','REGION VIII (Eastern Visayas)'),(41275,'POBLACION','ALMAGRO','SAMAR (WESTERN SAMAR)','REGION VIII (Eastern Visayas)'),(41276,'TALAHID','ALMAGRO','SAMAR (WESTERN SAMAR)','REGION VIII (Eastern Visayas)'),(41277,'TONGA-TONGA','ALMAGRO','SAMAR (WESTERN SAMAR)','REGION VIII (Eastern Visayas)'),(41278,'IMELDA (BADJANG)','ALMAGRO','SAMAR (WESTERN SAMAR)','REGION VIII (Eastern Visayas)'),(41279,'BIASONG II','ALMAGRO','SAMAR (WESTERN SAMAR)','REGION VIII (Eastern Visayas)'),(41280,'COSTA RICA II','ALMAGRO','SAMAR (WESTERN SAMAR)','REGION VIII (Eastern Visayas)'),(41281,'MABUHAY','ALMAGRO','SAMAR (WESTERN SAMAR)','REGION VIII (Eastern Visayas)'),(41282,'MAGSAYSAY','ALMAGRO','SAMAR (WESTERN SAMAR)','REGION VIII (Eastern Visayas)'),(41283,'PANJOBJOBAN II','ALMAGRO','SAMAR (WESTERN SAMAR)','REGION VIII (Eastern Visayas)'),(41284,'RO?O','ALMAGRO','SAMAR (WESTERN SAMAR)','REGION VIII (Eastern Visayas)'),(41285,'SAN ISIDRO','ALMAGRO','SAMAR (WESTERN SAMAR)','REGION VIII (Eastern Visayas)'),(41286,'SAN JOSE','ALMAGRO','SAMAR (WESTERN SAMAR)','REGION VIII (Eastern Visayas)'),(41287,'VELOSO','ALMAGRO','SAMAR (WESTERN SAMAR)','REGION VIII (Eastern Visayas)'),(41288,'AMAGUSAN','ANAHAWAN','SOUTHERN LEYTE','REGION VIII (Eastern Visayas)'),(41289,'CALINTAAN','ANAHAWAN','SOUTHERN LEYTE','REGION VIII (Eastern Visayas)'),(41290,'CANLABIAN','ANAHAWAN','SOUTHERN LEYTE','REGION VIII (Eastern Visayas)'),(41291,'CAPACUHAN','ANAHAWAN','SOUTHERN LEYTE','REGION VIII (Eastern Visayas)'),(41292,'KAGINGKINGAN','ANAHAWAN','SOUTHERN LEYTE','REGION VIII (Eastern Visayas)'),(41293,'LEWING','ANAHAWAN','SOUTHERN LEYTE','REGION VIII (Eastern Visayas)'),(41294,'LO-OK','ANAHAWAN','SOUTHERN LEYTE','REGION VIII (Eastern Visayas)'),(41295,'MAHALO','ANAHAWAN','SOUTHERN LEYTE','REGION VIII (Eastern Visayas)'),(41296,'MAINIT','ANAHAWAN','SOUTHERN LEYTE','REGION VIII (Eastern Visayas)'),(41297,'MANIGAWONG','ANAHAWAN','SOUTHERN LEYTE','REGION VIII (Eastern Visayas)'),(41298,'POBLACION','ANAHAWAN','SOUTHERN LEYTE','REGION VIII (Eastern Visayas)'),(41299,'SAN VICENTE','ANAHAWAN','SOUTHERN LEYTE','REGION VIII (Eastern Visayas)'),(41300,'TAGUP-ON','ANAHAWAN','SOUTHERN LEYTE','REGION VIII (Eastern Visayas)'),(41301,'COGON','ANAHAWAN','SOUTHERN LEYTE','REGION VIII (Eastern Visayas)'),(41302,'AGUADA','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41303,'BALATANAY','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41304,'BALUNO','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41305,'BEGANG','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41306,'BINUANGAN','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41307,'BUSAY','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41308,'CABUNBATA','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41309,'CALVARIO','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41310,'CARBON','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41311,'DIKI','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41312,'ISABELA EASTSIDE (POB.)','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41313,'ISABELA PROPER (POB.)','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41314,'DONA RAMONA T. ALANO (ISABELA WESTSITE)','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41315,'KAPATAGAN GRANDE','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41316,'KAUMPURNAH ZONE I','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41317,'KAUMPURNAH ZONE II','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41318,'KAUMPURNAH ZONE III','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41319,'KUMALARANG','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41320,'LA PIEDAD (POB.)','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41321,'LAMPINIGAN','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41322,'LANOTE','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41323,'LUKBUTON','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41324,'LUMBANG','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41325,'MAKIRI','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41326,'MALIGUE (LUNOT)','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41327,'MARANG-MARANG','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41328,'MARKETSITE (POB.)','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41329,'MENZI','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41330,'PANIGAYAN','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41331,'PANUNSULAN','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41332,'PORT AREA (POB.)','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41333,'RIVERSIDE','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41334,'SAN RAFAEL','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41335,'SANTA BARBARA','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41336,'SANTA CRUZ (POB.)','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41337,'SEASIDE (POB.)','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41338,'SUMAGDANG','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41339,'SUNRISE VILLAGE (POB.)','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41340,'TABIAWAN','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41341,'TABUK (POB.)','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41342,'TIMPUL','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41343,'KAPAYAWAN','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41344,'MASULA','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41345,'SMALL KAPATAGAN','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41346,'TAMPALAN','CITY OF ISABELA (Capital)','CITY OF ISABELA (Not a Province)','REGION IX (Zamboanga Peninsula)'),(41347,'ALIGUAY','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41348,'ANTIPOLO','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41349,'ASENIERO','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41350,'BA-AO','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41351,'BANBANAN','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41352,'BARCELONA','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41353,'BAYLIMANGO','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41354,'BURGOS','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41355,'CANLUCANI','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41356,'CARANG','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41357,'DAMPALAN','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41358,'DARO','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41359,'DIWA-AN','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41360,'GUIMPUTLAN','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41361,'HILLTOP','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41362,'ILAYA','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41363,'LARAYAN','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41364,'LIYANG','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41365,'MARIA CRISTINA','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41366,'MARIA URAY','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41367,'MASIDLAKON','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41368,'NAPO','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41369,'OPAO','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41370,'ORO','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41371,'OWAON','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41372,'OYAN','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41373,'POLO','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41374,'POTUNGAN','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41375,'SAN FRANCISCO','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41376,'SAN NICOLAS','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41377,'SAN PEDRO','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41378,'SAN VICENTE','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41379,'SICAYAB BOCANA','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41380,'SIGAYAN','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41381,'SILINOG','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41382,'SINONOC','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41383,'SANTO NI?O','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41384,'SULANGON','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41385,'TAG-OLO','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41386,'TAGUILON','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41387,'KAUSWAGAN (TALISAY)','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41388,'TAMION','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41389,'BAGTING (POB.)','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41390,'BANONONG (POB.)','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41391,'CAWA-CAWA (POB.)','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41392,'DAWO (POB.)','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41393,'MATAGOBTOB POB. (TALISAY)','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41394,'LINABO (POB.)','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41395,'POTOL (POB.)','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41396,'SANTA CRUZ (POB.)','DAPITAN CITY','ZAMBOANGA DEL NORTE','REGION IX (Zamboanga Peninsula)'),(41397,'ACAD','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41398,'ALANG-ALANG','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41399,'ALEGRIA','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41400,'ANONANG','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41401,'BAGONG MANDAUE','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41402,'BAGONG MASLOG','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41403,'BAGONG OSLOB','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41404,'BAGONG PITOGO','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41405,'BAKI','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41406,'BALAS','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41407,'BALIDE','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41408,'BALINTAWAK','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41409,'BAYABAS','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41410,'BEMPOSA','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41411,'CABILINAN','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41412,'CAMPO UNO','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41413,'CEBONEG','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41414,'COMMONWEALTH','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41415,'GUBAAN','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41416,'INASAGAN','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41417,'INROAD','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41418,'KAHAYAGAN EAST (KATIPUNAN)','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41419,'KAHAYAGAN WEST','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41420,'KAUSWAGAN','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41421,'LA VICTORIA','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41422,'LANTUNGAN','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41423,'LIBERTAD','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41424,'LINTUGOP','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41425,'LUBID','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41426,'MAGUIKAY','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41427,'MAHAYAHAY','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41428,'MONTE ALEGRE','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41429,'MONTELA','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41430,'NAPO','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41431,'PANAGHIUSA','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41432,'POBLACION','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41433,'RESTHOUSE','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41434,'ROMARATE','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41435,'SAN JOSE','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41436,'SAN JUAN','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41437,'SAPA LOBOC','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41438,'TAGULALO','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41439,'LA PAZ (TINIBTIBAN)','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41440,'WATERFALL','AURORA','ZAMBOANGA DEL SUR','REGION IX (Zamboanga Peninsula)'),(41441,'ALEGRIA','ALICIA','ZAMBOANGA SIBUGAY','REGION IX (Zamboanga Peninsula)'),(41442,'MILAGROSA (BALUNO)','ALICIA','ZAMBOANGA SIBUGAY','REGION IX (Zamboanga Peninsula)'),(41443,'BELLA','ALICIA','ZAMBOANGA SIBUGAY','REGION IX (Zamboanga Peninsula)'),(41444,'CALADES','ALICIA','ZAMBOANGA SIBUGAY','REGION IX (Zamboanga Peninsula)'),(41445,'DAWA-DAWA','ALICIA','ZAMBOANGA SIBUGAY','REGION IX (Zamboanga Peninsula)'),(41446,'GULAYON','ALICIA','ZAMBOANGA SIBUGAY','REGION IX (Zamboanga Peninsula)'),(41447,'ILISAN','ALICIA','ZAMBOANGA SIBUGAY','REGION IX (Zamboanga Peninsula)'),(41448,'KAWAYAN','ALICIA','ZAMBOANGA SIBUGAY','REGION IX (Zamboanga Peninsula)'),(41449,'KAUSWAGAN','ALICIA','ZAMBOANGA SIBUGAY','REGION IX (Zamboanga Peninsula)'),(41450,'LA PAZ','ALICIA','ZAMBOANGA SIBUGAY','REGION IX (Zamboanga Peninsula)'),(41451,'LAMBUYOGAN','ALICIA','ZAMBOANGA SIBUGAY','REGION IX (Zamboanga Peninsula)'),(41452,'LAPIRAWAN','ALICIA','ZAMBOANGA SIBUGAY','REGION IX (Zamboanga Peninsula)'),(41453,'LITAYON','ALICIA','ZAMBOANGA SIBUGAY','REGION IX (Zamboanga Peninsula)'),(41454,'LUTIMAN','ALICIA','ZAMBOANGA SIBUGAY','REGION IX (Zamboanga Peninsula)'),(41455,'NAGA-NAGA','ALICIA','ZAMBOANGA SIBUGAY','REGION IX (Zamboanga Peninsula)'),(41456,'PANDAN-PANDAN','ALICIA','ZAMBOANGA SIBUGAY','REGION IX (Zamboanga Peninsula)'),(41457,'PAYONGAN','ALICIA','ZAMBOANGA SIBUGAY','REGION IX (Zamboanga Peninsula)'),(41458,'POBLACION','ALICIA','ZAMBOANGA SIBUGAY','REGION IX (Zamboanga Peninsula)'),(41459,'SANTA MARIA','ALICIA','ZAMBOANGA SIBUGAY','REGION IX (Zamboanga Peninsula)'),(41460,'SANTO NI?O','ALICIA','ZAMBOANGA SIBUGAY','REGION IX (Zamboanga Peninsula)'),(41461,'TALAPTAP','ALICIA','ZAMBOANGA SIBUGAY','REGION IX (Zamboanga Peninsula)'),(41462,'TAMPALAN','ALICIA','ZAMBOANGA SIBUGAY','REGION IX (Zamboanga Peninsula)'),(41463,'TANDIONG MUSLIM','ALICIA','ZAMBOANGA SIBUGAY','REGION IX (Zamboanga Peninsula)'),(41464,'TIMBANG-TIMBANG','ALICIA','ZAMBOANGA SIBUGAY','REGION IX (Zamboanga Peninsula)'),(41465,'BAGONG BUHAY','ALICIA','ZAMBOANGA SIBUGAY','REGION IX (Zamboanga Peninsula)'),(41466,'CONCEPCION','ALICIA','ZAMBOANGA SIBUGAY','REGION IX (Zamboanga Peninsula)'),(41467,'KAPATAGAN','ALICIA','ZAMBOANGA SIBUGAY','REGION IX (Zamboanga Peninsula)'),(41468,'BALINTAD','BAUNGON','BUKIDNON','REGION X (Northern Mindanao)'),(41469,'BUENAVISTA','BAUNGON','BUKIDNON','REGION X (Northern Mindanao)'),(41470,'DANATAG','BAUNGON','BUKIDNON','REGION X (Northern Mindanao)'),(41471,'KALILANGAN','BAUNGON','BUKIDNON','REGION X (Northern Mindanao)'),(41472,'LACOLAC','BAUNGON','BUKIDNON','REGION X (Northern Mindanao)'),(41473,'LANGAON','BAUNGON','BUKIDNON','REGION X (Northern Mindanao)'),(41474,'LIBORAN','BAUNGON','BUKIDNON','REGION X (Northern Mindanao)'),(41475,'LINGATING','BAUNGON','BUKIDNON','REGION X (Northern Mindanao)'),(41476,'MABUHAY','BAUNGON','BUKIDNON','REGION X (Northern Mindanao)'),(41477,'MABUNGA','BAUNGON','BUKIDNON','REGION X (Northern Mindanao)'),(41478,'NICDAO','BAUNGON','BUKIDNON','REGION X (Northern Mindanao)'),(41479,'IMBATUG (POB.)','BAUNGON','BUKIDNON','REGION X (Northern Mindanao)'),(41480,'PUALAS','BAUNGON','BUKIDNON','REGION X (Northern Mindanao)'),(41481,'SALIMBALAN','BAUNGON','BUKIDNON','REGION X (Northern Mindanao)'),(41482,'SAN VICENTE','BAUNGON','BUKIDNON','REGION X (Northern Mindanao)'),(41483,'SAN MIGUEL','BAUNGON','BUKIDNON','REGION X (Northern Mindanao)'),(41484,'ALGA','CATARMAN','CAMIGUIN','REGION X (Northern Mindanao)'),(41485,'BONBON','CATARMAN','CAMIGUIN','REGION X (Northern Mindanao)'),(41486,'BURA','CATARMAN','CAMIGUIN','REGION X (Northern Mindanao)'),(41487,'CATIBAC','CATARMAN','CAMIGUIN','REGION X (Northern Mindanao)'),(41488,'COMPOL','CATARMAN','CAMIGUIN','REGION X (Northern Mindanao)'),(41489,'LAWIGAN','CATARMAN','CAMIGUIN','REGION X (Northern Mindanao)'),(41490,'LILOAN','CATARMAN','CAMIGUIN','REGION X (Northern Mindanao)'),(41491,'LOOC','CATARMAN','CAMIGUIN','REGION X (Northern Mindanao)'),(41492,'MAINIT','CATARMAN','CAMIGUIN','REGION X (Northern Mindanao)'),(41493,'MANDUAO','CATARMAN','CAMIGUIN','REGION X (Northern Mindanao)'),(41494,'PANGHIAWAN','CATARMAN','CAMIGUIN','REGION X (Northern Mindanao)'),(41495,'POBLACION','CATARMAN','CAMIGUIN','REGION X (Northern Mindanao)'),(41496,'SANTO NI?O','CATARMAN','CAMIGUIN','REGION X (Northern Mindanao)'),(41497,'TANGARO','CATARMAN','CAMIGUIN','REGION X (Northern Mindanao)'),(41498,'ALEGRIA','BACOLOD','LANAO DEL NORTE','REGION X (Northern Mindanao)'),(41499,'BABALAYA','BACOLOD','LANAO DEL NORTE','REGION X (Northern Mindanao)'),(41500,'BABALAYAN TOWNSITE','BACOLOD','LANAO DEL NORTE','REGION X (Northern Mindanao)'),(41501,'BINUNI','BACOLOD','LANAO DEL NORTE','REGION X (Northern Mindanao)'),(41502,'DEMOLOGAN','BACOLOD','LANAO DEL NORTE','REGION X (Northern Mindanao)'),(41503,'DIMARAO','BACOLOD','LANAO DEL NORTE','REGION X (Northern Mindanao)'),(41504,'ESPERANZA','BACOLOD','LANAO DEL NORTE','REGION X (Northern Mindanao)'),(41505,'KAHAYAG','BACOLOD','LANAO DEL NORTE','REGION X (Northern Mindanao)'),(41506,'LIANGAN EAST','BACOLOD','LANAO DEL NORTE','REGION X (Northern Mindanao)'),(41507,'PUNOD (MALIWANAG)','BACOLOD','LANAO DEL NORTE','REGION X (Northern Mindanao)'),(41508,'MATI','BACOLOD','LANAO DEL NORTE','REGION X (Northern Mindanao)'),(41509,'MINAULON','BACOLOD','LANAO DEL NORTE','REGION X (Northern Mindanao)'),(41510,'PAGAYAWAN','BACOLOD','LANAO DEL NORTE','REGION X (Northern Mindanao)'),(41511,'POBLACION BACOLOD','BACOLOD','LANAO DEL NORTE','REGION X (Northern Mindanao)'),(41512,'RUPAGAN','BACOLOD','LANAO DEL NORTE','REGION X (Northern Mindanao)'),(41513,'DELABAYAN WEST','BACOLOD','LANAO DEL NORTE','REGION X (Northern Mindanao)'),(41514,'BALINTONGA','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41515,'BANISILON','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41516,'BURGOS','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41517,'CALUBE','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41518,'CAPUTOL','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41519,'CASUSAN','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41520,'CONAT','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41521,'CULPAN','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41522,'DALISAY','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41523,'DULLAN','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41524,'IBABAO','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41525,'TUBOD (JUAN BACAYO)','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41526,'LABO','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41527,'LAWA-AN','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41528,'LOBOGON','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41529,'LUMBAYAO','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41530,'MAKAWA','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41531,'MANAMONG','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41532,'MATIPAZ','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41533,'MAULAR','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41534,'MITAZAN','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41535,'MOHON','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41536,'MONTERICO','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41537,'NABUNA','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41538,'PALAYAN','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41539,'PELONG','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41540,'OSPITAL (POB.)','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41541,'ROXAS','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41542,'SAN PEDRO','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41543,'SANTA ANA','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41544,'SINAMPONGAN','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41545,'TAGUANAO','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41546,'TAWI-TAWI','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41547,'TORIL','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41548,'TUBURAN','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41549,'ZAMORA','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41550,'MACUBON (SINA-AD)','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41551,'TUGAYA','ALORAN','MISAMIS OCCIDENTAL','REGION X (Northern Mindanao)'),(41552,'BAYBAY','ALUBIJID','MISAMIS ORIENTAL','REGION X (Northern Mindanao)'),(41553,'BENIGWAYAN','ALUBIJID','MISAMIS ORIENTAL','REGION X (Northern Mindanao)'),(41554,'CALATCAT','ALUBIJID','MISAMIS ORIENTAL','REGION X (Northern Mindanao)'),(41555,'LAGTANG','ALUBIJID','MISAMIS ORIENTAL','REGION X (Northern Mindanao)'),(41556,'LANAO','ALUBIJID','MISAMIS ORIENTAL','REGION X (Northern Mindanao)'),(41557,'LOGUILO','ALUBIJID','MISAMIS ORIENTAL','REGION X (Northern Mindanao)'),(41558,'LOURDES','ALUBIJID','MISAMIS ORIENTAL','REGION X (Northern Mindanao)'),(41559,'LUMBO','ALUBIJID','MISAMIS ORIENTAL','REGION X (Northern Mindanao)'),(41560,'MOLOCBOLOC','ALUBIJID','MISAMIS ORIENTAL','REGION X (Northern Mindanao)'),(41561,'POBLACION','ALUBIJID','MISAMIS ORIENTAL','REGION X (Northern Mindanao)'),(41562,'SAMPATULOG','ALUBIJID','MISAMIS ORIENTAL','REGION X (Northern Mindanao)'),(41563,'SUNGAY','ALUBIJID','MISAMIS ORIENTAL','REGION X (Northern Mindanao)'),(41564,'TALABA','ALUBIJID','MISAMIS ORIENTAL','REGION X (Northern Mindanao)'),(41565,'TAPARAK','ALUBIJID','MISAMIS ORIENTAL','REGION X (Northern Mindanao)'),(41566,'TUGASNON','ALUBIJID','MISAMIS ORIENTAL','REGION X (Northern Mindanao)'),(41567,'TULA','ALUBIJID','MISAMIS ORIENTAL','REGION X (Northern Mindanao)'),(41568,'BAGONGON','COMPOSTELA','COMPOSTELA VALLEY','REGION XI (Davao Region)'),(41569,'GABI','COMPOSTELA','COMPOSTELA VALLEY','REGION XI (Davao Region)'),(41570,'LAGAB','COMPOSTELA','COMPOSTELA VALLEY','REGION XI (Davao Region)'),(41571,'MANGAYON','COMPOSTELA','COMPOSTELA VALLEY','REGION XI (Davao Region)'),(41572,'MAPACA','COMPOSTELA','COMPOSTELA VALLEY','REGION XI (Davao Region)'),(41573,'MAPARAT','COMPOSTELA','COMPOSTELA VALLEY','REGION XI (Davao Region)'),(41574,'NEW ALEGRIA','COMPOSTELA','COMPOSTELA VALLEY','REGION XI (Davao Region)'),(41575,'NGAN','COMPOSTELA','COMPOSTELA VALLEY','REGION XI (Davao Region)'),(41576,'OSME?A','COMPOSTELA','COMPOSTELA VALLEY','REGION XI (Davao Region)'),(41577,'PANANSALAN','COMPOSTELA','COMPOSTELA VALLEY','REGION XI (Davao Region)'),(41578,'POBLACION','COMPOSTELA','COMPOSTELA VALLEY','REGION XI (Davao Region)'),(41579,'SAN JOSE','COMPOSTELA','COMPOSTELA VALLEY','REGION XI (Davao Region)'),(41580,'SAN MIGUEL','COMPOSTELA','COMPOSTELA VALLEY','REGION XI (Davao Region)'),(41581,'SIOCON','COMPOSTELA','COMPOSTELA VALLEY','REGION XI (Davao Region)'),(41582,'TAMIA','COMPOSTELA','COMPOSTELA VALLEY','REGION XI (Davao Region)'),(41583,'AURORA','COMPOSTELA','COMPOSTELA VALLEY','REGION XI (Davao Region)'),(41584,'BINANCIAN','ASUNCION (SAUG)','DAVAO DEL NORTE','REGION XI (Davao Region)'),(41585,'BUAN','ASUNCION (SAUG)','DAVAO DEL NORTE','REGION XI (Davao Region)'),(41586,'BUCLAD','ASUNCION (SAUG)','DAVAO DEL NORTE','REGION XI (Davao Region)'),(41587,'CABAYWA','ASUNCION (SAUG)','DAVAO DEL NORTE','REGION XI (Davao Region)'),(41588,'CAMANSA','ASUNCION (SAUG)','DAVAO DEL NORTE','REGION XI (Davao Region)'),(41589,'CAMONING','ASUNCION (SAUG)','DAVAO DEL NORTE','REGION XI (Davao Region)'),(41590,'CANATAN','ASUNCION (SAUG)','DAVAO DEL NORTE','REGION XI (Davao Region)'),(41591,'CONCEPCION','ASUNCION (SAUG)','DAVAO DEL NORTE','REGION XI (Davao Region)'),(41592,'DO?A ANDREA','ASUNCION (SAUG)','DAVAO DEL NORTE','REGION XI (Davao Region)'),(41593,'MAGATOS','ASUNCION (SAUG)','DAVAO DEL NORTE','REGION XI (Davao Region)'),(41594,'NAPUNGAS','ASUNCION (SAUG)','DAVAO DEL NORTE','REGION XI (Davao Region)'),(41595,'NEW BANTAYAN','ASUNCION (SAUG)','DAVAO DEL NORTE','REGION XI (Davao Region)'),(41596,'NEW SANTIAGO','ASUNCION (SAUG)','DAVAO DEL NORTE','REGION XI (Davao Region)'),(41597,'PAMACAUN','ASUNCION (SAUG)','DAVAO DEL NORTE','REGION XI (Davao Region)'),(41598,'CAMBANOGOY (POB.)','ASUNCION (SAUG)','DAVAO DEL NORTE','REGION XI (Davao Region)'),(41599,'SAGAYEN','ASUNCION (SAUG)','DAVAO DEL NORTE','REGION XI (Davao Region)'),(41600,'SAN VICENTE','ASUNCION (SAUG)','DAVAO DEL NORTE','REGION XI (Davao Region)'),(41601,'SANTA FILOMENA','ASUNCION (SAUG)','DAVAO DEL NORTE','REGION XI (Davao Region)'),(41602,'SONLON','ASUNCION (SAUG)','DAVAO DEL NORTE','REGION XI (Davao Region)'),(41603,'NEW LOON','ASUNCION (SAUG)','DAVAO DEL NORTE','REGION XI (Davao Region)'),(41604,'ALEGRE','BANSALAN','DAVAO DEL SUR','REGION XI (Davao Region)'),(41605,'ALTA VISTA','BANSALAN','DAVAO DEL SUR','REGION XI (Davao Region)'),(41606,'ANONANG','BANSALAN','DAVAO DEL SUR','REGION XI (Davao Region)'),(41607,'BITAUG','BANSALAN','DAVAO DEL SUR','REGION XI (Davao Region)'),(41608,'BONIFACIO','BANSALAN','DAVAO DEL SUR','REGION XI (Davao Region)'),(41609,'BUENAVISTA','BANSALAN','DAVAO DEL SUR','REGION XI (Davao Region)'),(41610,'DARAPUAY','BANSALAN','DAVAO DEL SUR','REGION XI (Davao Region)'),(41611,'DOLO','BANSALAN','DAVAO DEL SUR','REGION XI (Davao Region)'),(41612,'EMAN','BANSALAN','DAVAO DEL SUR','REGION XI (Davao Region)'),(41613,'KINUSKUSAN','BANSALAN','DAVAO DEL SUR','REGION XI (Davao Region)'),(41614,'LIBERTAD','BANSALAN','DAVAO DEL SUR','REGION XI (Davao Region)'),(41615,'LINAWAN','BANSALAN','DAVAO DEL SUR','REGION XI (Davao Region)'),(41616,'MABUHAY','BANSALAN','DAVAO DEL SUR','REGION XI (Davao Region)'),(41617,'MABUNGA','BANSALAN','DAVAO DEL SUR','REGION XI (Davao Region)'),(41618,'MANAGA','BANSALAN','DAVAO DEL SUR','REGION XI (Davao Region)'),(41619,'MARBER','BANSALAN','DAVAO DEL SUR','REGION XI (Davao Region)'),(41620,'NEW CLARIN (MIRAL)','BANSALAN','DAVAO DEL SUR','REGION XI (Davao Region)'),(41621,'POBLACION','BANSALAN','DAVAO DEL SUR','REGION XI (Davao Region)'),(41622,'RIZAL','BANSALAN','DAVAO DEL SUR','REGION XI (Davao Region)'),(41623,'SANTO NI?O','BANSALAN','DAVAO DEL SUR','REGION XI (Davao Region)'),(41624,'SIBAYAN','BANSALAN','DAVAO DEL SUR','REGION XI (Davao Region)'),(41625,'TINONGTONGAN','BANSALAN','DAVAO DEL SUR','REGION XI (Davao Region)'),(41626,'TUBOD','BANSALAN','DAVAO DEL SUR','REGION XI (Davao Region)'),(41627,'UNION','BANSALAN','DAVAO DEL SUR','REGION XI (Davao Region)'),(41628,'POBLACION DOS','BANSALAN','DAVAO DEL SUR','REGION XI (Davao Region)'),(41629,'BACULIN','BAGANGA','DAVAO ORIENTAL','REGION XI (Davao Region)'),(41630,'BANAO','BAGANGA','DAVAO ORIENTAL','REGION XI (Davao Region)'),(41631,'BATAWAN','BAGANGA','DAVAO ORIENTAL','REGION XI (Davao Region)'),(41632,'BATIANO','BAGANGA','DAVAO ORIENTAL','REGION XI (Davao Region)'),(41633,'BINONDO','BAGANGA','DAVAO ORIENTAL','REGION XI (Davao Region)'),(41634,'BOBONAO','BAGANGA','DAVAO ORIENTAL','REGION XI (Davao Region)'),(41635,'CAMPAWAN','BAGANGA','DAVAO ORIENTAL','REGION XI (Davao Region)'),(41636,'CENTRAL (POB.)','BAGANGA','DAVAO ORIENTAL','REGION XI (Davao Region)'),(41637,'DAPNAN','BAGANGA','DAVAO ORIENTAL','REGION XI (Davao Region)'),(41638,'KINABLANGAN','BAGANGA','DAVAO ORIENTAL','REGION XI (Davao Region)'),(41639,'LAMBAJON','BAGANGA','DAVAO ORIENTAL','REGION XI (Davao Region)'),(41640,'MAHANUB','BAGANGA','DAVAO ORIENTAL','REGION XI (Davao Region)'),(41641,'MIKIT','BAGANGA','DAVAO ORIENTAL','REGION XI (Davao Region)'),(41642,'SALINGCOMOT','BAGANGA','DAVAO ORIENTAL','REGION XI (Davao Region)'),(41643,'SAN ISIDRO','BAGANGA','DAVAO ORIENTAL','REGION XI (Davao Region)'),(41644,'SAN VICTOR','BAGANGA','DAVAO ORIENTAL','REGION XI (Davao Region)'),(41645,'LUCOD','BAGANGA','DAVAO ORIENTAL','REGION XI (Davao Region)'),(41646,'SAOQUEGUE','BAGANGA','DAVAO ORIENTAL','REGION XI (Davao Region)'),(41647,'BAO','ALAMADA','COTABATO (NORTH COTABATO)','REGION XII (Soccsksargen)'),(41648,'BARANGIRAN','ALAMADA','COTABATO (NORTH COTABATO)','REGION XII (Soccsksargen)'),(41649,'CAMANSI','ALAMADA','COTABATO (NORTH COTABATO)','REGION XII (Soccsksargen)'),(41650,'DADO','ALAMADA','COTABATO (NORTH COTABATO)','REGION XII (Soccsksargen)'),(41651,'GUILING','ALAMADA','COTABATO (NORTH COTABATO)','REGION XII (Soccsksargen)'),(41652,'KITACUBONG (POB.)','ALAMADA','COTABATO (NORTH COTABATO)','REGION XII (Soccsksargen)'),(41653,'MACABASA','ALAMADA','COTABATO (NORTH COTABATO)','REGION XII (Soccsksargen)'),(41654,'MALITUBOG','ALAMADA','COTABATO (NORTH COTABATO)','REGION XII (Soccsksargen)'),(41655,'MAPUROK','ALAMADA','COTABATO (NORTH COTABATO)','REGION XII (Soccsksargen)'),(41656,'PACAO','ALAMADA','COTABATO (NORTH COTABATO)','REGION XII (Soccsksargen)'),(41657,'PARUAYAN','ALAMADA','COTABATO (NORTH COTABATO)','REGION XII (Soccsksargen)'),(41658,'PIGCAWARAN','ALAMADA','COTABATO (NORTH COTABATO)','REGION XII (Soccsksargen)'),(41659,'POLAYAGAN','ALAMADA','COTABATO (NORTH COTABATO)','REGION XII (Soccsksargen)'),(41660,'RANGAYEN','ALAMADA','COTABATO (NORTH COTABATO)','REGION XII (Soccsksargen)'),(41661,'LOWER DADO','ALAMADA','COTABATO (NORTH COTABATO)','REGION XII (Soccsksargen)'),(41662,'MIRASOL','ALAMADA','COTABATO (NORTH COTABATO)','REGION XII (Soccsksargen)'),(41663,'RARADANGAN','ALAMADA','COTABATO (NORTH COTABATO)','REGION XII (Soccsksargen)'),(41664,'BAGUA','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41665,'KALANGANAN','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41666,'POBLACION','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41667,'ROSARY HEIGHTS','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41668,'TAMONTAKA','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41669,'BAGUA I','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41670,'BAGUA II','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41671,'BAGUA III','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41672,'KALANGANAN I','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41673,'KALANGANAN II','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41674,'POBLACION I','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41675,'POBLACION II','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41676,'POBLACION III','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41677,'POBLACION IV','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41678,'POBLACION V','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41679,'POBLACION VI','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41680,'POBLACION VII','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41681,'POBLACION VIII','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41682,'POBLACION IX','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41683,'ROSARY HEIGHTS I','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41684,'ROSARY HEIGHTS II','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41685,'ROSARY HEIGHTS III','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41686,'ROSARY HEIGHTS IV','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41687,'ROSARY HEIGHTS V','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41688,'ROSARY HEIGHTS VI','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41689,'ROSARY HEIGHTS VII','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41690,'ROSARY HEIGHTS VIII','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41691,'ROSARY HEIGHTS IX','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41692,'ROSARY HEIGHTS X','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41693,'ROSARY HEIGHTS XI','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41694,'ROSARY HEIGHTS XII','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41695,'ROSARY HEIGHTS XIII','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41696,'TAMONTAKA I','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41697,'TAMONTAKA II','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41698,'TAMONTAKA III','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41699,'TAMONTAKA IV','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41700,'TAMONTAKA V','COTABATO CITY','COTABATO CITY (Not a Province)','REGION XII (Soccsksargen)'),(41701,'ALEGRIA','ALABEL (Capital)','SARANGANI','REGION XII (Soccsksargen)'),(41702,'BAGACAY','ALABEL (Capital)','SARANGANI','REGION XII (Soccsksargen)'),(41703,'BALUNTAY','ALABEL (Capital)','SARANGANI','REGION XII (Soccsksargen)'),(41704,'DATAL ANGGAS','ALABEL (Capital)','SARANGANI','REGION XII (Soccsksargen)'),(41705,'DOMOLOK','ALABEL (Capital)','SARANGANI','REGION XII (Soccsksargen)'),(41706,'KAWAS','ALABEL (Capital)','SARANGANI','REGION XII (Soccsksargen)'),(41707,'MARIBULAN','ALABEL (Capital)','SARANGANI','REGION XII (Soccsksargen)'),(41708,'PAG-ASA','ALABEL (Capital)','SARANGANI','REGION XII (Soccsksargen)'),(41709,'PARAISO','ALABEL (Capital)','SARANGANI','REGION XII (Soccsksargen)'),(41710,'POBLACION (ALABEL)','ALABEL (Capital)','SARANGANI','REGION XII (Soccsksargen)'),(41711,'SPRING','ALABEL (Capital)','SARANGANI','REGION XII (Soccsksargen)'),(41712,'TOKAWAL','ALABEL (Capital)','SARANGANI','REGION XII (Soccsksargen)'),(41713,'BENITEZ (POB.)','BANGA','SOUTH COTABATO','REGION XII (Soccsksargen)'),(41714,'CABUDIAN','BANGA','SOUTH COTABATO','REGION XII (Soccsksargen)'),(41715,'CABULING','BANGA','SOUTH COTABATO','REGION XII (Soccsksargen)'),(41716,'CINCO (BARRIO 5)','BANGA','SOUTH COTABATO','REGION XII (Soccsksargen)'),(41717,'DERILON','BANGA','SOUTH COTABATO','REGION XII (Soccsksargen)'),(41718,'EL NONOK','BANGA','SOUTH COTABATO','REGION XII (Soccsksargen)'),(41719,'IMPROGO VILLAGE (POB.)','BANGA','SOUTH COTABATO','REGION XII (Soccsksargen)'),(41720,'KUSAN (BARRIO 8)','BANGA','SOUTH COTABATO','REGION XII (Soccsksargen)'),(41721,'LAM-APOS','BANGA','SOUTH COTABATO','REGION XII (Soccsksargen)'),(41722,'LAMBA','BANGA','SOUTH COTABATO','REGION XII (Soccsksargen)'),(41723,'LAMBINGI','BANGA','SOUTH COTABATO','REGION XII (Soccsksargen)'),(41724,'LAMPARI','BANGA','SOUTH COTABATO','REGION XII (Soccsksargen)'),(41725,'LIWANAY (BARRIO 1)','BANGA','SOUTH COTABATO','REGION XII (Soccsksargen)'),(41726,'MALAYA (BARRIO 9)','BANGA','SOUTH COTABATO','REGION XII (Soccsksargen)'),(41727,'PUNONG GRANDE (BARRIO 2)','BANGA','SOUTH COTABATO','REGION XII (Soccsksargen)'),(41728,'RANG-AY (BARRIO 4)','BANGA','SOUTH COTABATO','REGION XII (Soccsksargen)'),(41729,'REYES (POB.)','BANGA','SOUTH COTABATO','REGION XII (Soccsksargen)'),(41730,'RIZAL (BARRIO 3)','BANGA','SOUTH COTABATO','REGION XII (Soccsksargen)'),(41731,'RIZAL POBLACION','BANGA','SOUTH COTABATO','REGION XII (Soccsksargen)'),(41732,'SAN JOSE (BARRIO 7)','BANGA','SOUTH COTABATO','REGION XII (Soccsksargen)'),(41733,'SAN VICENTE (BARRIO 6)','BANGA','SOUTH COTABATO','REGION XII (Soccsksargen)'),(41734,'YANGCO POBLACION','BANGA','SOUTH COTABATO','REGION XII (Soccsksargen)'),(41735,'BAI SARIFINANG','BAGUMBAYAN','SULTAN KUDARAT','REGION XII (Soccsksargen)'),(41736,'BIWANG','BAGUMBAYAN','SULTAN KUDARAT','REGION XII (Soccsksargen)'),(41737,'BUSOK','BAGUMBAYAN','SULTAN KUDARAT','REGION XII (Soccsksargen)'),(41738,'DAGUMA','BAGUMBAYAN','SULTAN KUDARAT','REGION XII (Soccsksargen)'),(41739,'KAPAYA','BAGUMBAYAN','SULTAN KUDARAT','REGION XII (Soccsksargen)'),(41740,'KINAYAO','BAGUMBAYAN','SULTAN KUDARAT','REGION XII (Soccsksargen)'),(41741,'MASIAG','BAGUMBAYAN','SULTAN KUDARAT','REGION XII (Soccsksargen)'),(41742,'POBLACION','BAGUMBAYAN','SULTAN KUDARAT','REGION XII (Soccsksargen)'),(41743,'SOUTH SEPAKA','BAGUMBAYAN','SULTAN KUDARAT','REGION XII (Soccsksargen)'),(41744,'TUKA','BAGUMBAYAN','SULTAN KUDARAT','REGION XII (Soccsksargen)'),(41745,'CHUA','BAGUMBAYAN','SULTAN KUDARAT','REGION XII (Soccsksargen)'),(41746,'DALUGA','BAGUMBAYAN','SULTAN KUDARAT','REGION XII (Soccsksargen)'),(41747,'KABULANAN','BAGUMBAYAN','SULTAN KUDARAT','REGION XII (Soccsksargen)'),(41748,'KANULAY','BAGUMBAYAN','SULTAN KUDARAT','REGION XII (Soccsksargen)'),(41749,'MONTEVERDE','BAGUMBAYAN','SULTAN KUDARAT','REGION XII (Soccsksargen)'),(41750,'SANTO NI?O','BAGUMBAYAN','SULTAN KUDARAT','REGION XII (Soccsksargen)'),(41751,'SUMILIL','BAGUMBAYAN','SULTAN KUDARAT','REGION XII (Soccsksargen)'),(41752,'TITULOK','BAGUMBAYAN','SULTAN KUDARAT','REGION XII (Soccsksargen)'),(41753,'SISON','BAGUMBAYAN','SULTAN KUDARAT','REGION XII (Soccsksargen)'),(41754,'ABILAN','BUENAVISTA','AGUSAN DEL NORTE','REGION XIII (Caraga)'),(41755,'AGONG-ONG','BUENAVISTA','AGUSAN DEL NORTE','REGION XIII (Caraga)'),(41756,'ALUBIJID','BUENAVISTA','AGUSAN DEL NORTE','REGION XIII (Caraga)'),(41757,'GUINABSAN','BUENAVISTA','AGUSAN DEL NORTE','REGION XIII (Caraga)'),(41758,'MACALANG','BUENAVISTA','AGUSAN DEL NORTE','REGION XIII (Caraga)'),(41759,'MALAPONG','BUENAVISTA','AGUSAN DEL NORTE','REGION XIII (Caraga)'),(41760,'MALPOC','BUENAVISTA','AGUSAN DEL NORTE','REGION XIII (Caraga)'),(41761,'MANAPA','BUENAVISTA','AGUSAN DEL NORTE','REGION XIII (Caraga)'),(41762,'MATABAO','BUENAVISTA','AGUSAN DEL NORTE','REGION XIII (Caraga)'),(41763,'POBLACION 1','BUENAVISTA','AGUSAN DEL NORTE','REGION XIII (Caraga)'),(41764,'POBLACION 2','BUENAVISTA','AGUSAN DEL NORTE','REGION XIII (Caraga)'),(41765,'POBLACION 3','BUENAVISTA','AGUSAN DEL NORTE','REGION XIII (Caraga)'),(41766,'POBLACION 4','BUENAVISTA','AGUSAN DEL NORTE','REGION XIII (Caraga)'),(41767,'POBLACION 5','BUENAVISTA','AGUSAN DEL NORTE','REGION XIII (Caraga)'),(41768,'POBLACION 6','BUENAVISTA','AGUSAN DEL NORTE','REGION XIII (Caraga)'),(41769,'POBLACION 7','BUENAVISTA','AGUSAN DEL NORTE','REGION XIII (Caraga)'),(41770,'POBLACION 8','BUENAVISTA','AGUSAN DEL NORTE','REGION XIII (Caraga)'),(41771,'POBLACION 9','BUENAVISTA','AGUSAN DEL NORTE','REGION XIII (Caraga)'),(41772,'POBLACION 10','BUENAVISTA','AGUSAN DEL NORTE','REGION XIII (Caraga)'),(41773,'RIZAL','BUENAVISTA','AGUSAN DEL NORTE','REGION XIII (Caraga)'),(41774,'SACOL','BUENAVISTA','AGUSAN DEL NORTE','REGION XIII (Caraga)'),(41775,'SANGAY','BUENAVISTA','AGUSAN DEL NORTE','REGION XIII (Caraga)'),(41776,'TALO-AO','BUENAVISTA','AGUSAN DEL NORTE','REGION XIII (Caraga)'),(41777,'LOWER OLAVE','BUENAVISTA','AGUSAN DEL NORTE','REGION XIII (Caraga)'),(41778,'SIMBALAN','BUENAVISTA','AGUSAN DEL NORTE','REGION XIII (Caraga)'),(41779,'CALAITAN','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41780,'CHARITO','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41781,'FILI','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41782,'HAMOGAWAY','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41783,'KATIPUNAN','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41784,'MABUHAY','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41785,'MARCELINA','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41786,'MAYGATASAN','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41787,'NOLI','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41788,'OSME?A','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41789,'PANAYTAY','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41790,'POBLACION','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41791,'SAGMONE','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41792,'SAGUMA','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41793,'SALVACION','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41794,'SAN ISIDRO','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41795,'SANTA IRENE','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41796,'TAGLATAWAN','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41797,'VERDU','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41798,'WAWA','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41799,'BERSEBA','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41800,'BUCAC','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41801,'CAGBAS','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41802,'CANAYUGAN','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41803,'CLARO CORTEZ','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41804,'GAMAO','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41805,'GETSEMANE','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41806,'GRACE ESTATE','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41807,'MAGKIANGKANG','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41808,'MAHAYAG','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41809,'MONTIVESTA','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41810,'MT. ARARAT','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41811,'MT. CARMEL','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41812,'MT. OLIVE','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41813,'NEW SALEM','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41814,'PINAGALAAN','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41815,'SAN AGUSTIN','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41816,'SAN JUAN','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41817,'SANTA TERESITA','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41818,'SANTO NI?O','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41819,'TAGLIBAS','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41820,'TAGUBAY','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41821,'VILLA UNDAYON','CITY OF BAYUGAN','AGUSAN DEL SUR','REGION XIII (Caraga)'),(41822,'CATADMAN','BASILISA (RIZAL)','DINAGAT ISLANDS','REGION XIII (Caraga)'),(41823,'COLUMBUS','BASILISA (RIZAL)','DINAGAT ISLANDS','REGION XIII (Caraga)'),(41824,'CORING','BASILISA (RIZAL)','DINAGAT ISLANDS','REGION XIII (Caraga)'),(41825,'CORTES','BASILISA (RIZAL)','DINAGAT ISLANDS','REGION XIII (Caraga)'),(41826,'DO?A HELENE','BASILISA (RIZAL)','DINAGAT ISLANDS','REGION XIII (Caraga)'),(41827,'FERDINAND','BASILISA (RIZAL)','DINAGAT ISLANDS','REGION XIII (Caraga)'),(41828,'GEOTINA','BASILISA (RIZAL)','DINAGAT ISLANDS','REGION XIII (Caraga)'),(41829,'IMEE (BACTASAN)','BASILISA (RIZAL)','DINAGAT ISLANDS','REGION XIII (Caraga)'),(41830,'MELGAR','BASILISA (RIZAL)','DINAGAT ISLANDS','REGION XIII (Caraga)'),(41831,'MONTAG','BASILISA (RIZAL)','DINAGAT ISLANDS','REGION XIII (Caraga)'),(41832,'NAVARRO','BASILISA (RIZAL)','DINAGAT ISLANDS','REGION XIII (Caraga)'),(41833,'POBLACION','BASILISA (RIZAL)','DINAGAT ISLANDS','REGION XIII (Caraga)'),(41834,'PUERTO PRINCESA','BASILISA (RIZAL)','DINAGAT ISLANDS','REGION XIII (Caraga)'),(41835,'RITA GLENDA','BASILISA (RIZAL)','DINAGAT ISLANDS','REGION XIII (Caraga)'),(41836,'ROXAS','BASILISA (RIZAL)','DINAGAT ISLANDS','REGION XIII (Caraga)'),(41837,'SERING','BASILISA (RIZAL)','DINAGAT ISLANDS','REGION XIII (Caraga)'),(41838,'TAG-ABACA','BASILISA (RIZAL)','DINAGAT ISLANDS','REGION XIII (Caraga)'),(41839,'BENGLEN','BASILISA (RIZAL)','DINAGAT ISLANDS','REGION XIII (Caraga)'),(41840,'DIEGAS','BASILISA (RIZAL)','DINAGAT ISLANDS','REGION XIII (Caraga)'),(41841,'EDERA','BASILISA (RIZAL)','DINAGAT ISLANDS','REGION XIII (Caraga)'),(41842,'NEW NAZARETH','BASILISA (RIZAL)','DINAGAT ISLANDS','REGION XIII (Caraga)'),(41843,'ROMA','BASILISA (RIZAL)','DINAGAT ISLANDS','REGION XIII (Caraga)'),(41844,'SANTA MONICA','BASILISA (RIZAL)','DINAGAT ISLANDS','REGION XIII (Caraga)'),(41845,'SANTO NI?O','BASILISA (RIZAL)','DINAGAT ISLANDS','REGION XIII (Caraga)'),(41846,'SOMBRADO','BASILISA (RIZAL)','DINAGAT ISLANDS','REGION XIII (Caraga)'),(41847,'VILLA ECLEO','BASILISA (RIZAL)','DINAGAT ISLANDS','REGION XIII (Caraga)'),(41848,'VILLA PANTINOPLE','BASILISA (RIZAL)','DINAGAT ISLANDS','REGION XIII (Caraga)'),(41849,'POBLACION (ALEGRIA)','ALEGRIA','SURIGAO DEL NORTE','REGION XIII (Caraga)'),(41850,'ALIPAO','ALEGRIA','SURIGAO DEL NORTE','REGION XIII (Caraga)'),(41851,'BUDLINGIN','ALEGRIA','SURIGAO DEL NORTE','REGION XIII (Caraga)'),(41852,'CAMP EDUARD (GEOTINA)','ALEGRIA','SURIGAO DEL NORTE','REGION XIII (Caraga)'),(41853,'OMBONG','ALEGRIA','SURIGAO DEL NORTE','REGION XIII (Caraga)'),(41854,'PONGTUD','ALEGRIA','SURIGAO DEL NORTE','REGION XIII (Caraga)'),(41855,'SAN PEDRO','ALEGRIA','SURIGAO DEL NORTE','REGION XIII (Caraga)'),(41856,'FERLDA','ALEGRIA','SURIGAO DEL NORTE','REGION XIII (Caraga)'),(41857,'JULIO OUANO (POB.)','ALEGRIA','SURIGAO DEL NORTE','REGION XIII (Caraga)'),(41858,'SAN JUAN','ALEGRIA','SURIGAO DEL NORTE','REGION XIII (Caraga)'),(41859,'ANAHAW','ALEGRIA','SURIGAO DEL NORTE','REGION XIII (Caraga)'),(41860,'GAMUTON','ALEGRIA','SURIGAO DEL NORTE','REGION XIII (Caraga)'),(41861,'AMAGA','BAROBO','SURIGAO DEL SUR','REGION XIII (Caraga)'),(41862,'BAHI','BAROBO','SURIGAO DEL SUR','REGION XIII (Caraga)'),(41863,'CABACUNGAN','BAROBO','SURIGAO DEL SUR','REGION XIII (Caraga)'),(41864,'CAMBAGANG','BAROBO','SURIGAO DEL SUR','REGION XIII (Caraga)'),(41865,'CAUSWAGAN','BAROBO','SURIGAO DEL SUR','REGION XIII (Caraga)'),(41866,'DAPDAP','BAROBO','SURIGAO DEL SUR','REGION XIII (Caraga)'),(41867,'DUGHAN','BAROBO','SURIGAO DEL SUR','REGION XIII (Caraga)'),(41868,'GAMUT','BAROBO','SURIGAO DEL SUR','REGION XIII (Caraga)'),(41869,'JAVIER','BAROBO','SURIGAO DEL SUR','REGION XIII (Caraga)'),(41870,'KINAYAN','BAROBO','SURIGAO DEL SUR','REGION XIII (Caraga)'),(41871,'MAMIS','BAROBO','SURIGAO DEL SUR','REGION XIII (Caraga)'),(41872,'POBLACION','BAROBO','SURIGAO DEL SUR','REGION XIII (Caraga)'),(41873,'RIZAL','BAROBO','SURIGAO DEL SUR','REGION XIII (Caraga)'),(41874,'SAN JOSE','BAROBO','SURIGAO DEL SUR','REGION XIII (Caraga)'),(41875,'SAN VICENTE','BAROBO','SURIGAO DEL SUR','REGION XIII (Caraga)'),(41876,'SUA','BAROBO','SURIGAO DEL SUR','REGION XIII (Caraga)'),(41877,'SUDLON','BAROBO','SURIGAO DEL SUR','REGION XIII (Caraga)'),(41878,'UNIDAD','BAROBO','SURIGAO DEL SUR','REGION XIII (Caraga)'),(41879,'WAKAT','BAROBO','SURIGAO DEL SUR','REGION XIII (Caraga)'),(41880,'SAN ROQUE','BAROBO','SURIGAO DEL SUR','REGION XIII (Caraga)'),(41881,'TAMBIS','BAROBO','SURIGAO DEL SUR','REGION XIII (Caraga)'),(41882,'ARCO','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41883,'BA-AS','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41884,'BAIMBING','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41885,'BALAGTASAN','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41886,'BALAS','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41887,'BALOBO','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41888,'BATO','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41889,'BOHEYAKAN','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41890,'BUAHAN','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41891,'BOHEIBU','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41892,'BOHESAPA','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41893,'BULINGAN','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41894,'CABOBO','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41895,'CAMPO UNO','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41896,'COLONIA','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41897,'CALUGUSAN','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41898,'KULAY BATO','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41899,'LIMO-OK','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41900,'LO-OK','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41901,'LUMUTON','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41902,'LUKSUMBANG','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41903,'MALO-ONG CANAL','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41904,'MALO-ONG SAN JOSE','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41905,'PARANGBASAK','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41906,'SANTA CLARA','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41907,'TANDONG AHAS','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41908,'TUMAKID','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41909,'UBIT','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41910,'BOHEBESSEY','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41911,'BAUNGOS','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41912,'DANIT-PUNTOCAN','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41913,'SABONG','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41914,'SENGAL','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41915,'ULAME','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41916,'BOHENANGE','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41917,'BOHEYAWAS','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41918,'BULANTING','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41919,'LEBBUH','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41920,'MAGANDA','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41921,'MALAKAS','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41922,'MALIGAYA','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41923,'MALINIS (POB.)','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41924,'MATATAG','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41925,'MATIBAY','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41926,'SIMBANGON','CITY OF LAMITAN','BASILAN','ARMM - Autonomous Region in Muslim Mindanao'),(41927,'AMPAO','BACOLOD-KALAWI (BACOLOD GRANDE)','LANAO DEL SUR','ARMM - Autonomous Region in Muslim Mindanao'),(41928,'BAGOAINGUD','BACOLOD-KALAWI (BACOLOD GRANDE)','LANAO DEL SUR','ARMM - Autonomous Region in Muslim Mindanao'),(41929,'BALUT','BACOLOD-KALAWI (BACOLOD GRANDE)','LANAO DEL SUR','ARMM - Autonomous Region in Muslim Mindanao'),(41930,'BARUA','BACOLOD-KALAWI (BACOLOD GRANDE)','LANAO DEL SUR','ARMM - Autonomous Region in Muslim Mindanao'),(41931,'BUADIAWANI','BACOLOD-KALAWI (BACOLOD GRANDE)','LANAO DEL SUR','ARMM - Autonomous Region in Muslim Mindanao'),(41932,'BUBONG','BACOLOD-KALAWI (BACOLOD GRANDE)','LANAO DEL SUR','ARMM - Autonomous Region in Muslim Mindanao'),(41933,'DILABAYAN','BACOLOD-KALAWI (BACOLOD GRANDE)','LANAO DEL SUR','ARMM - Autonomous Region in Muslim Mindanao'),(41934,'DIPATUAN','BACOLOD-KALAWI (BACOLOD GRANDE)','LANAO DEL SUR','ARMM - Autonomous Region in Muslim Mindanao'),(41935,'DARAMOYOD','BACOLOD-KALAWI (BACOLOD GRANDE)','LANAO DEL SUR','ARMM - Autonomous Region in Muslim Mindanao'),(41936,'GANDAMATO','BACOLOD-KALAWI (BACOLOD GRANDE)','LANAO DEL SUR','ARMM - Autonomous Region in Muslim Mindanao'),(41937,'GURAIN','BACOLOD-KALAWI (BACOLOD GRANDE)','LANAO DEL SUR','ARMM - Autonomous Region in Muslim Mindanao'),(41938,'ILIAN','BACOLOD-KALAWI (BACOLOD GRANDE)','LANAO DEL SUR','ARMM - Autonomous Region in Muslim Mindanao'),(41939,'LAMA','BACOLOD-KALAWI (BACOLOD GRANDE)','LANAO DEL SUR','ARMM - Autonomous Region in Muslim Mindanao'),(41940,'LIAWAO','BACOLOD-KALAWI (BACOLOD GRANDE)','LANAO DEL SUR','ARMM - Autonomous Region in Muslim Mindanao'),(41941,'LUMBACA-INGUD','BACOLOD-KALAWI (BACOLOD GRANDE)','LANAO DEL SUR','ARMM - Autonomous Region in Muslim Mindanao'),(41942,'MADANDING','BACOLOD-KALAWI (BACOLOD GRANDE)','LANAO DEL SUR','ARMM - Autonomous Region in Muslim Mindanao'),(41943,'ORONG','BACOLOD-KALAWI (BACOLOD GRANDE)','LANAO DEL SUR','ARMM - Autonomous Region in Muslim Mindanao'),(41944,'PINDOLONAN','BACOLOD-KALAWI (BACOLOD GRANDE)','LANAO DEL SUR','ARMM - Autonomous Region in Muslim Mindanao'),(41945,'POBLACION I','BACOLOD-KALAWI (BACOLOD GRANDE)','LANAO DEL SUR','ARMM - Autonomous Region in Muslim Mindanao'),(41946,'POBLACION II','BACOLOD-KALAWI (BACOLOD GRANDE)','LANAO DEL SUR','ARMM - Autonomous Region in Muslim Mindanao'),(41947,'RAYA','BACOLOD-KALAWI (BACOLOD GRANDE)','LANAO DEL SUR','ARMM - Autonomous Region in Muslim Mindanao'),(41948,'ROROWAN','BACOLOD-KALAWI (BACOLOD GRANDE)','LANAO DEL SUR','ARMM - Autonomous Region in Muslim Mindanao'),(41949,'SUGOD','BACOLOD-KALAWI (BACOLOD GRANDE)','LANAO DEL SUR','ARMM - Autonomous Region in Muslim Mindanao'),(41950,'TAMBO','BACOLOD-KALAWI (BACOLOD GRANDE)','LANAO DEL SUR','ARMM - Autonomous Region in Muslim Mindanao'),(41951,'TUKA I','BACOLOD-KALAWI (BACOLOD GRANDE)','LANAO DEL SUR','ARMM - Autonomous Region in Muslim Mindanao'),(41952,'TUKA II','BACOLOD-KALAWI (BACOLOD GRANDE)','LANAO DEL SUR','ARMM - Autonomous Region in Muslim Mindanao'),(41953,'DICALONGAN (POB.)','AMPATUAN','MAGUINDANAO','ARMM - Autonomous Region in Muslim Mindanao'),(41954,'KAKAL','AMPATUAN','MAGUINDANAO','ARMM - Autonomous Region in Muslim Mindanao'),(41955,'KAMASI','AMPATUAN','MAGUINDANAO','ARMM - Autonomous Region in Muslim Mindanao'),(41956,'KAPINPILAN','AMPATUAN','MAGUINDANAO','ARMM - Autonomous Region in Muslim Mindanao'),(41957,'KAURAN','AMPATUAN','MAGUINDANAO','ARMM - Autonomous Region in Muslim Mindanao'),(41958,'MALATIMON','AMPATUAN','MAGUINDANAO','ARMM - Autonomous Region in Muslim Mindanao'),(41959,'MATAGABONG','AMPATUAN','MAGUINDANAO','ARMM - Autonomous Region in Muslim Mindanao'),(41960,'SANIAG','AMPATUAN','MAGUINDANAO','ARMM - Autonomous Region in Muslim Mindanao'),(41961,'TOMICOR','AMPATUAN','MAGUINDANAO','ARMM - Autonomous Region in Muslim Mindanao'),(41962,'TUBAK','AMPATUAN','MAGUINDANAO','ARMM - Autonomous Region in Muslim Mindanao'),(41963,'SALMAN','AMPATUAN','MAGUINDANAO','ARMM - Autonomous Region in Muslim Mindanao'),(41964,'ADJID','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41965,'BANGALAN','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41966,'BATO-BATO','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41967,'BUANZA','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41968,'BUD-TARAN','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41969,'BUNUT','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41970,'JATI-TUNGGAL','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41971,'KABBON MAAS','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41972,'KAGAY','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41973,'KAJATIAN','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41974,'KAN ISLAM','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41975,'KANDANG TUKAY','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41976,'KARAWAN','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41977,'KATIAN','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41978,'KUPPONG','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41979,'LAMBAYONG','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41980,'LANGPAS','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41981,'LICUP','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41982,'MALIMBAYA','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41983,'MANGGIS','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41984,'MANILOP','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41985,'PALIGUE','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41986,'PANABUAN','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41987,'PASIL','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41988,'POBLACION (INDANAN)','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41989,'SAPAH MALAUM','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41990,'PANGLIMA MISUARI (SASAK)','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41991,'SIONOGAN','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41992,'TAGBAK','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41993,'TIMBANGAN','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41994,'TUBIG DAKULAH','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41995,'TUBIG PARANG','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41996,'TUMANTANGIS','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41997,'SAWAKI','INDANAN','SULU','ARMM - Autonomous Region in Muslim Mindanao'),(41998,'BALIMBING PROPER','PANGLIMA SUGALA (BALIMBING) (Capital)','TAWI-TAWI','ARMM - Autonomous Region in Muslim Mindanao'),(41999,'BATU-BATU (POB.)','PANGLIMA SUGALA (BALIMBING) (Capital)','TAWI-TAWI','ARMM - Autonomous Region in Muslim Mindanao'),(42000,'BUAN','PANGLIMA SUGALA (BALIMBING) (Capital)','TAWI-TAWI','ARMM - Autonomous Region in Muslim Mindanao'),(42001,'DUNGON','PANGLIMA SUGALA (BALIMBING) (Capital)','TAWI-TAWI','ARMM - Autonomous Region in Muslim Mindanao'),(42002,'LUUK BUNTAL','PANGLIMA SUGALA (BALIMBING) (Capital)','TAWI-TAWI','ARMM - Autonomous Region in Muslim Mindanao'),(42003,'PARANGAN','PANGLIMA SUGALA (BALIMBING) (Capital)','TAWI-TAWI','ARMM - Autonomous Region in Muslim Mindanao'),(42004,'TABUNAN','PANGLIMA SUGALA (BALIMBING) (Capital)','TAWI-TAWI','ARMM - Autonomous Region in Muslim Mindanao'),(42005,'TUNGBANGKAW','PANGLIMA SUGALA (BALIMBING) (Capital)','TAWI-TAWI','ARMM - Autonomous Region in Muslim Mindanao'),(42006,'BAUNO GARING','PANGLIMA SUGALA (BALIMBING) (Capital)','TAWI-TAWI','ARMM - Autonomous Region in Muslim Mindanao'),(42007,'BELATAN HALU','PANGLIMA SUGALA (BALIMBING) (Capital)','TAWI-TAWI','ARMM - Autonomous Region in Muslim Mindanao'),(42008,'KARAHA','PANGLIMA SUGALA (BALIMBING) (Capital)','TAWI-TAWI','ARMM - Autonomous Region in Muslim Mindanao'),(42009,'KULAPE','PANGLIMA SUGALA (BALIMBING) (Capital)','TAWI-TAWI','ARMM - Autonomous Region in Muslim Mindanao'),(42010,'LIYABURAN','PANGLIMA SUGALA (BALIMBING) (Capital)','TAWI-TAWI','ARMM - Autonomous Region in Muslim Mindanao'),(42011,'MAGSAGGAW','PANGLIMA SUGALA (BALIMBING) (Capital)','TAWI-TAWI','ARMM - Autonomous Region in Muslim Mindanao'),(42012,'MALACCA','PANGLIMA SUGALA (BALIMBING) (Capital)','TAWI-TAWI','ARMM - Autonomous Region in Muslim Mindanao'),(42013,'SUMANGDAY','PANGLIMA SUGALA (BALIMBING) (Capital)','TAWI-TAWI','ARMM - Autonomous Region in Muslim Mindanao'),(42014,'TUNDON','PANGLIMA SUGALA (BALIMBING) (Capital)','TAWI-TAWI','ARMM - Autonomous Region in Muslim Mindanao');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `network_charge`
--

DROP TABLE IF EXISTS `network_charge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `network_charge` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id,amount,charge',
  `amount` int(11) DEFAULT NULL,
  `charge` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `network_charge`
--

LOCK TABLES `network_charge` WRITE;
/*!40000 ALTER TABLE `network_charge` DISABLE KEYS */;
INSERT INTO `network_charge` VALUES (1,1000,3.50),(2,1500,5.25),(3,2000,7.00),(4,2500,8.75),(5,3000,10.50),(6,3500,12.25),(7,4000,14.00),(8,4500,15.75),(9,5000,17.50),(10,5500,19.25),(11,6000,21.00),(12,6500,22.75),(13,7000,24.50),(14,7500,26.25),(15,8000,28.00),(16,8500,29.75),(17,9000,31.50),(18,9500,33.25),(19,10000,35.00),(20,10500,36.75),(21,11000,38.50),(22,11500,40.25),(23,12000,42.00),(24,12500,43.75),(25,13000,45.50),(26,13500,47.25),(27,14000,49.00),(28,14500,50.75),(29,15000,52.50),(30,15500,54.25),(31,16000,56.00),(32,16500,57.75),(33,17000,59.50),(34,17500,61.25),(35,18000,63.00),(36,18500,64.75),(37,19000,66.50),(38,19500,68.25),(39,20000,70.00),(40,20500,71.75),(41,21000,73.50),(42,21500,75.25),(43,22000,77.00),(44,22500,78.75),(45,23000,80.50),(46,23500,82.25),(47,24000,84.00),(48,24500,85.75),(49,25000,87.50),(50,25500,89.25),(51,26000,91.00),(52,26500,92.75),(53,27000,94.50),(54,27500,96.25),(55,28000,98.00),(56,28500,99.75),(57,29000,101.50),(58,29500,103.25),(59,30000,105.00),(60,30500,106.75),(61,31000,108.50),(62,31500,110.25),(63,32000,112.00),(64,32500,113.75),(65,33000,115.50),(66,33500,117.25),(67,34000,119.00),(68,34500,120.75),(69,35000,122.50),(70,35500,124.25),(71,36000,126.00),(72,36500,127.75),(73,37000,129.50),(74,37500,131.25),(75,38000,133.00),(76,38500,134.75),(77,39000,136.50),(78,39500,138.25),(79,40000,140.00),(80,40500,141.75),(81,41000,143.50),(82,41500,145.25),(83,42000,147.00),(84,42500,148.75),(85,43000,150.50),(86,43500,152.25),(87,44000,154.00),(88,44500,155.75),(89,45000,157.50),(90,45500,159.25),(91,46000,161.00),(92,46500,162.75),(93,47000,164.50),(94,47500,166.25),(95,48000,168.00),(96,48500,169.75),(97,49000,171.50),(98,49500,173.25),(99,50000,175.00);
/*!40000 ALTER TABLE `network_charge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_remark`
--

DROP TABLE IF EXISTS `request_remark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_remark` (
  `req_rem_no` int(45) NOT NULL AUTO_INCREMENT,
  `req_rem_desc` varchar(45) NOT NULL,
  PRIMARY KEY (`req_rem_no`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_remark`
--

LOCK TABLES `request_remark` WRITE;
/*!40000 ALTER TABLE `request_remark` DISABLE KEYS */;
INSERT INTO `request_remark` VALUES (1,'None'),(2,'Invalid'),(3,'Exceeded'),(4,'Follow-up'),(5,'GR ATIENZA');
/*!40000 ALTER TABLE `request_remark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secureip`
--

DROP TABLE IF EXISTS `secureip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secureip` (
  `entry_no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) NOT NULL,
  `invalid` int(2) unsigned NOT NULL,
  `verified` int(2) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`entry_no`)
) ENGINE=InnoDB AUTO_INCREMENT=738 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secureip`
--

LOCK TABLES `secureip` WRITE;
/*!40000 ALTER TABLE `secureip` DISABLE KEYS */;
INSERT INTO `secureip` VALUES (1,'192.168.1.100',1,1,0),(2,'192.168.1.100',0,1,3),(3,'192.168.1.100',0,1,1),(4,'192.168.1.100',0,1,1),(5,'192.168.1.100',1,1,0),(6,'192.168.1.100',0,1,3),(7,'192.168.1.100',0,1,1),(8,'192.168.1.100',0,1,3),(9,'192.168.1.100',0,1,1),(10,'192.168.1.100',0,1,3),(11,'192.168.1.100',0,1,3),(12,'192.168.1.100',0,1,1),(13,'192.168.1.100',0,1,3),(14,'192.168.1.100',0,1,3),(15,'192.168.1.100',0,1,3),(16,'::1',0,1,3),(17,'192.168.1.100',1,1,0),(18,'192.168.1.100',0,1,3),(19,'192.168.1.100',0,1,1),(20,'192.168.1.100',0,1,3),(21,'::1',0,1,1),(22,'192.168.1.100',0,1,3),(23,'::1',0,1,1),(24,'::1',1,1,0),(25,'::1',0,1,1),(26,'192.168.1.100',0,1,3),(27,'::1',0,1,1),(28,'::1',0,1,1),(29,'192.168.1.100',1,1,0),(30,'192.168.1.100',0,1,3),(31,'::1',0,1,1),(32,'::1',0,1,1),(33,'::1',0,1,1),(34,'::1',0,1,1),(35,'192.168.1.100',0,1,3),(36,'192.168.1.100',0,1,3),(37,'192.168.1.100',0,1,1),(38,'192.168.1.100',1,1,0),(39,'::1',0,1,1),(40,'192.168.1.2',1,1,0),(41,'192.168.1.2',0,1,3),(42,'192.168.1.100',0,1,3),(43,'192.168.1.100',0,1,3),(44,'192.168.1.100',1,1,0),(45,'192.168.1.100',1,1,0),(46,'192.168.1.100',0,1,3),(47,'192.168.1.100',0,1,3),(48,'::1',0,1,1),(49,'::1',0,1,1),(50,'192.168.1.100',0,1,3),(51,'::1',0,1,1),(52,'::1',0,1,1),(53,'::1',0,1,3),(54,'192.168.1.100',0,1,3),(55,'::1',0,1,1),(56,'::1',0,1,1),(57,'192.168.1.100',0,1,3),(58,'::1',0,1,1),(59,'::1',0,1,1),(60,'::1',0,1,1),(61,'::1',0,1,1),(62,'::1',0,1,1),(63,'::1',0,1,1),(64,'::1',0,1,1),(65,'::1',0,1,1),(66,'::1',0,1,1),(67,'::1',0,1,1),(68,'::1',0,1,1),(69,'192.168.254.106',0,1,3),(70,'::1',0,1,1),(71,'::1',0,1,1),(72,'::1',0,1,1),(73,'::1',0,1,1),(74,'::1',0,1,1),(75,'::1',0,1,1),(76,'::1',1,1,0),(77,'::1',1,1,0),(78,'::1',0,1,1),(79,'::1',0,1,1),(80,'::1',0,1,1),(81,'::1',0,1,1),(82,'::1',0,1,1),(83,'::1',0,1,1),(84,'::1',0,1,1),(85,'::1',0,1,1),(86,'::1',0,1,1),(87,'::1',0,1,1),(88,'::1',0,1,1),(89,'::1',0,1,1),(90,'::1',0,1,1),(91,'::1',0,1,1),(92,'::1',0,1,1),(93,'::1',0,1,1),(94,'::1',0,1,3),(95,'::1',0,1,1),(96,'::1',0,1,1),(97,'192.168.254.103',0,1,3),(98,'192.168.254.103',0,1,3),(99,'::1',0,1,1),(100,'::1',0,1,1),(101,'::1',0,1,1),(102,'::1',0,1,1),(103,'::1',0,1,1),(104,'::1',0,1,1),(105,'::1',0,1,3),(106,'::1',0,1,1),(107,'::1',0,1,1),(108,'::1',0,1,3),(109,'::1',0,1,3),(110,'::1',0,1,1),(111,'::1',0,1,1),(112,'::1',0,1,1),(113,'::1',1,1,0),(114,'192.168.1.100',0,1,1),(115,'192.168.1.100',1,1,0),(116,'192.168.1.101',1,1,0),(117,'192.168.1.101',0,1,3),(118,'::1',0,1,1),(119,'192.168.1.100',0,1,3),(120,'192.168.1.100',0,1,3),(121,'::1',0,1,1),(122,'::1',0,1,1),(123,'::1',0,1,1),(124,'::1',0,1,1),(125,'::1',0,1,1),(126,'::1',0,1,1),(127,'::1',0,1,1),(128,'::1',0,1,1),(129,'::1',0,1,1),(130,'::1',0,1,1),(131,'::1',0,1,1),(132,'::1',0,1,1),(133,'::1',0,1,1),(134,'::1',0,1,1),(135,'::1',0,1,1),(136,'::1',1,1,0),(137,'::1',1,1,0),(138,'::1',0,1,1),(139,'::1',0,1,1),(140,'::1',0,1,1),(141,'::1',0,1,1),(142,'::1',0,1,1),(143,'::1',0,1,1),(144,'::1',0,1,1),(145,'::1',1,1,0),(146,'192.168.1.100',1,1,0),(147,'192.168.1.100',0,1,3),(148,'::1',0,1,1),(149,'::1',1,0,0),(150,'::1',1,0,0),(151,'::1',1,0,0),(152,'::1',1,0,0),(153,'::1',0,0,1),(154,'::1',1,0,0),(155,'::1',1,0,0),(156,'::1',0,0,1),(157,'::1',0,0,1),(158,'192.168.1.100',0,0,3),(159,'192.168.1.100',1,0,0),(160,'192.168.1.100',1,0,0),(161,'::1',0,0,1),(162,'::1',0,0,1),(163,'::1',0,0,1),(164,'::1',0,0,1),(165,'::1',1,0,0),(166,'::1',1,0,0),(167,'::1',0,0,1),(168,'::1',0,0,1),(169,'::1',0,0,1),(170,'::1',0,0,1),(171,'::1',0,0,1),(172,'::1',0,0,1),(173,'::1',0,0,1),(174,'::1',0,0,1),(175,'::1',0,0,1),(176,'::1',0,0,1),(177,'::1',1,0,0),(178,'::1',0,0,1),(179,'::1',0,0,1),(180,'::1',0,0,1),(181,'::1',0,0,1),(182,'::1',0,0,1),(183,'::1',0,0,1),(184,'::1',0,0,1),(185,'::1',0,0,1),(186,'::1',0,0,1),(187,'::1',0,0,1),(188,'::1',0,0,1),(189,'::1',0,0,1),(190,'::1',0,0,3),(191,'::1',0,0,1),(192,'::1',0,0,1),(193,'::1',0,0,1),(194,'::1',0,0,1),(195,'::1',0,0,1),(196,'::1',0,0,1),(197,'::1',0,0,1),(198,'::1',0,0,1),(199,'::1',0,0,1),(200,'::1',0,0,1),(201,'::1',0,0,1),(202,'::1',0,0,1),(203,'::1',0,0,1),(204,'::1',0,0,1),(205,'::1',0,0,1),(206,'192.168.1.29',0,0,1),(207,'192.168.1.29',1,0,0),(208,'192.168.1.29',1,0,0),(209,'192.168.1.29',1,0,0),(210,'192.168.1.29',1,0,0),(211,'192.168.1.29',1,0,0),(212,'192.168.1.29',0,0,3),(213,'192.168.1.29',0,0,1),(214,'192.168.1.29',0,0,3),(215,'192.168.1.29',0,0,1),(216,'192.168.1.29',1,0,0),(217,'192.168.1.29',0,0,3),(218,'::1',0,0,1),(219,'::1',0,0,3),(220,'::1',0,0,3),(221,'192.168.1.29',0,0,1),(222,'::1',0,0,1),(223,'::1',0,0,1),(224,'::1',0,0,3),(225,'::1',0,0,1),(226,'::1',0,0,3),(227,'::1',0,0,1),(228,'::1',0,0,1),(229,'::1',0,0,1),(230,'::1',0,0,1),(231,'::1',0,0,1),(232,'::1',0,0,1),(233,'192.168.1.100',1,0,0),(234,'192.168.1.100',1,0,0),(235,'192.168.1.100',0,0,3),(236,'::1',0,0,1),(237,'::1',0,0,1),(238,'::1',0,0,1),(239,'192.168.1.100',0,0,1),(240,'192.168.1.100',1,0,0),(241,'192.168.1.100',0,0,3),(242,'192.168.1.100',0,0,1),(243,'192.168.1.100',1,0,0),(244,'192.168.1.100',1,0,0),(245,'192.168.1.100',0,0,3),(246,'::1',0,0,1),(247,'::1',0,0,1),(248,'::1',0,0,1),(249,'::1',0,0,1),(250,'::1',0,0,1),(251,'::1',0,0,1),(252,'::1',0,0,1),(253,'::1',0,0,1),(254,'::1',0,0,1),(255,'::1',0,0,1),(256,'::1',0,0,1),(257,'::1',1,0,0),(258,'::1',1,0,0),(259,'::1',0,0,3),(260,'::1',0,0,1),(261,'::1',1,0,0),(262,'::1',0,0,3),(263,'::1',0,0,1),(264,'::1',1,0,0),(265,'::1',0,0,3),(266,'::1',0,0,1),(267,'::1',0,0,1),(268,'::1',0,0,1),(269,'::1',0,0,3),(270,'::1',0,0,1),(271,'::1',0,0,3),(272,'::1',0,0,1),(273,'::1',0,0,3),(274,'::1',0,0,1),(275,'::1',0,0,3),(276,'::1',0,0,1),(277,'::1',0,0,3),(278,'::1',0,0,1),(279,'::1',0,0,1),(280,'::1',0,0,1),(281,'::1',0,0,1),(282,'::1',0,0,1),(283,'::1',0,0,1),(284,'::1',1,0,0),(285,'::1',0,0,1),(286,'::1',0,0,1),(287,'::1',0,0,1),(288,'::1',0,0,3),(289,'::1',0,0,3),(290,'::1',0,0,3),(291,'::1',0,0,3),(292,'::1',0,0,1),(293,'::1',0,0,1),(294,'::1',0,0,3),(295,'::1',0,0,1),(296,'::1',0,0,3),(297,'::1',0,0,1),(298,'::1',1,0,0),(299,'::1',0,0,1),(300,'::1',0,0,3),(301,'::1',0,0,1),(302,'::1',0,0,1),(303,'::1',0,0,1),(304,'::1',0,0,1),(305,'::1',0,0,1),(306,'::1',1,0,0),(307,'::1',0,0,1),(308,'::1',1,0,0),(309,'::1',0,0,1),(310,'::1',0,0,1),(311,'::1',0,0,1),(312,'::1',1,0,0),(313,'::1',0,0,1),(314,'::1',0,0,1),(315,'::1',1,0,0),(316,'::1',1,0,0),(317,'::1',0,0,3),(318,'::1',0,0,1),(319,'::1',0,0,1),(320,'::1',0,0,1),(321,'::1',1,0,0),(322,'::1',0,0,3),(323,'::1',0,0,1),(324,'::1',0,0,3),(325,'::1',0,0,3),(326,'::1',0,0,1),(327,'::1',0,0,3),(328,'::1',0,0,1),(329,'::1',1,0,0),(330,'::1',0,0,1),(331,'::1',0,0,3),(332,'::1',0,0,1),(333,'::1',1,0,0),(334,'::1',1,0,0),(335,'::1',0,0,1),(336,'::1',0,0,1),(337,'::1',0,0,1),(338,'::1',0,0,1),(339,'::1',0,0,1),(340,'::1',0,0,1),(341,'::1',0,0,1),(342,'::1',0,0,1),(343,'::1',1,0,0),(344,'::1',0,0,1),(345,'::1',0,0,1),(346,'::1',0,0,3),(347,'::1',0,0,1),(348,'::1',0,0,1),(349,'::1',0,0,1),(350,'::1',0,0,1),(351,'::1',0,0,1),(352,'::1',1,0,0),(353,'::1',0,0,1),(354,'::1',0,0,1),(355,'::1',0,0,1),(356,'::1',1,0,0),(357,'::1',0,0,1),(358,'::1',0,0,1),(359,'::1',0,0,1),(360,'::1',1,0,0),(361,'::1',0,0,1),(362,'::1',0,0,1),(363,'::1',0,0,3),(364,'::1',0,0,1),(365,'::1',0,0,3),(366,'::1',0,0,1),(367,'::1',0,0,3),(368,'::1',1,0,0),(369,'::1',1,0,0),(370,'::1',0,0,3),(371,'::1',0,0,3),(372,'::1',1,0,0),(373,'::1',0,0,1),(374,'::1',0,0,3),(375,'::1',0,0,1),(376,'::1',0,0,3),(377,'::1',0,0,3),(378,'::1',0,0,1),(379,'::1',0,0,1),(380,'::1',0,0,1),(381,'::1',0,0,1),(382,'::1',0,0,1),(383,'::1',0,0,3),(384,'::1',0,0,1),(385,'::1',0,0,3),(386,'::1',0,0,1),(387,'::1',0,0,1),(388,'::1',0,0,1),(389,'::1',0,0,1),(390,'::1',0,0,1),(391,'::1',0,0,1),(392,'::1',0,0,1),(393,'::1',0,0,1),(394,'::1',0,0,1),(395,'::1',1,0,0),(396,'::1',0,0,1),(397,'::1',0,0,1),(398,'::1',0,0,1),(399,'::1',0,0,1),(400,'192.168.1.100',0,0,1),(401,'::1',1,0,0),(402,'::1',0,0,1),(403,'::1',0,0,1),(404,'192.168.1.127',0,0,1),(405,'192.168.1.127',0,0,3),(406,'192.168.1.127',0,0,1),(407,'::1',0,0,1),(408,'::1',0,0,1),(409,'::1',0,0,1),(410,'::1',0,0,1),(411,'::1',0,0,1),(412,'::1',0,0,1),(413,'::1',0,0,1),(414,'::1',1,0,0),(415,'::1',0,0,3),(416,'::1',0,0,1),(417,'::1',1,0,0),(418,'::1',0,0,1),(419,'::1',0,0,1),(420,'::1',0,0,1),(421,'::1',0,0,1),(422,'::1',0,0,1),(423,'::1',0,0,1),(424,'::1',0,0,1),(425,'::1',0,0,1),(426,'::1',0,0,1),(427,'::1',1,0,0),(428,'::1',0,0,1),(429,'::1',0,0,1),(430,'::1',1,0,0),(431,'::1',1,0,0),(432,'::1',0,0,3),(433,'::1',1,0,0),(434,'::1',0,0,1),(435,'::1',0,0,1),(436,'::1',0,0,3),(437,'::1',0,0,1),(438,'::1',0,0,3),(439,'::1',0,0,3),(440,'::1',0,0,3),(441,'::1',0,0,1),(442,'::1',1,0,0),(443,'::1',0,0,3),(444,'::1',0,0,1),(445,'::1',1,0,0),(446,'::1',1,0,0),(447,'::1',0,0,1),(448,'::1',1,0,0),(449,'::1',0,0,3),(450,'::1',0,0,3),(451,'::1',0,0,1),(452,'::1',0,0,3),(453,'::1',0,0,1),(454,'::1',1,0,0),(455,'::1',0,0,3),(456,'::1',0,0,1),(457,'::1',1,0,0),(458,'::1',1,0,0),(459,'::1',0,0,3),(460,'::1',0,0,1),(461,'::1',1,0,0),(462,'::1',0,0,3),(463,'::1',0,0,1),(464,'::1',1,0,0),(465,'::1',1,0,0),(466,'::1',0,0,3),(467,'::1',0,0,1),(468,'::1',0,0,1),(469,'::1',1,0,0),(470,'::1',1,0,0),(471,'::1',0,0,1),(472,'::1',0,0,1),(473,'::1',1,0,0),(474,'::1',1,0,0),(475,'::1',0,0,3),(476,'::1',0,0,1),(477,'::1',0,0,1),(478,'::1',0,0,1),(479,'::1',0,0,1),(480,'::1',0,0,1),(481,'::1',0,0,1),(482,'::1',0,0,1),(483,'::1',1,0,0),(484,'::1',0,0,3),(485,'::1',0,0,1),(486,'::1',0,0,1),(487,'::1',0,0,1),(488,'::1',0,0,1),(489,'::1',0,0,1),(490,'::1',1,0,0),(491,'::1',0,0,1),(492,'::1',0,0,1),(493,'::1',0,0,3),(494,'::1',0,0,1),(495,'::1',0,0,1),(496,'::1',1,0,0),(497,'::1',0,0,1),(498,'::1',0,0,1),(499,'::1',0,0,1),(500,'::1',0,0,1),(501,'::1',0,0,1),(502,'::1',0,0,1),(503,'::1',1,0,0),(504,'::1',1,0,0),(505,'::1',1,0,0),(506,'::1',0,0,1),(507,'::1',1,0,0),(508,'::1',0,0,1),(509,'::1',0,0,1),(510,'::1',0,0,1),(511,'::1',0,0,1),(512,'::1',1,0,0),(513,'::1',0,0,1),(514,'::1',1,0,0),(515,'::1',1,0,0),(516,'::1',0,0,1),(517,'::1',0,0,3),(518,'::1',0,0,1),(519,'::1',1,0,0),(520,'::1',0,0,3),(521,'::1',0,0,1),(522,'::1',0,0,3),(523,'::1',0,0,1),(524,'::1',0,0,3),(525,'::1',0,0,1),(526,'::1',0,0,1),(527,'::1',0,0,1),(528,'::1',0,0,1),(529,'::1',0,0,1),(530,'::1',0,0,3),(531,'::1',0,0,1),(532,'::1',0,0,1),(533,'::1',1,0,0),(534,'::1',1,0,0),(535,'::1',0,0,3),(536,'::1',0,0,1),(537,'::1',0,0,3),(538,'::1',0,0,1),(539,'::1',0,0,1),(540,'::1',0,0,1),(541,'::1',0,0,1),(542,'::1',0,0,3),(543,'::1',0,0,1),(544,'::1',0,0,1),(545,'::1',0,0,1),(546,'::1',0,0,1),(547,'::1',0,0,1),(548,'::1',0,0,1),(549,'::1',0,0,1),(550,'::1',0,0,1),(551,'::1',0,0,1),(552,'::1',0,0,3),(553,'::1',0,0,1),(554,'::1',0,0,1),(555,'::1',0,0,1),(556,'::1',0,0,3),(557,'::1',0,0,3),(558,'::1',0,0,1),(559,'::1',0,0,1),(560,'::1',0,0,1),(561,'::1',0,0,1),(562,'::1',0,0,1),(563,'::1',0,0,1),(564,'::1',0,0,1),(565,'::1',0,0,1),(566,'::1',0,0,1),(567,'::1',0,0,1),(568,'::1',0,0,1),(569,'::1',0,0,1),(570,'::1',0,0,1),(571,'::1',0,0,1),(572,'::1',0,0,1),(573,'::1',1,0,0),(574,'::1',0,0,1),(575,'::1',0,0,1),(576,'::1',0,0,1),(577,'::1',0,0,1),(578,'::1',0,0,1),(579,'::1',1,0,0),(580,'::1',0,0,3),(581,'::1',0,0,1),(582,'::1',0,0,1),(583,'::1',0,0,1),(584,'::1',0,0,1),(585,'::1',1,0,0),(586,'::1',0,0,1),(587,'::1',0,0,1),(588,'::1',0,0,1),(589,'::1',1,0,0),(590,'::1',1,0,0),(591,'::1',0,0,3),(592,'::1',0,0,1),(593,'::1',0,0,1),(594,'::1',0,0,1),(595,'::1',0,0,1),(596,'::1',0,0,1),(597,'::1',0,0,1),(598,'::1',0,0,1),(599,'::1',0,0,1),(600,'::1',0,0,1),(601,'::1',0,0,1),(602,'::1',0,0,1),(603,'::1',0,0,1),(604,'::1',0,0,1),(605,'::1',0,0,1),(606,'::1',0,0,1),(607,'::1',0,0,1),(608,'::1',0,0,1),(609,'::1',0,0,1),(610,'::1',0,0,1),(611,'::1',0,0,1),(612,'::1',0,0,1),(613,'::1',0,0,1),(614,'::1',0,0,1),(615,'::1',0,0,1),(616,'::1',0,0,1),(617,'::1',0,0,1),(618,'::1',0,0,1),(619,'::1',0,0,1),(620,'::1',0,0,1),(621,'::1',0,0,1),(622,'::1',0,0,1),(623,'::1',0,0,1),(624,'::1',0,0,1),(625,'::1',0,0,1),(626,'::1',0,0,1),(627,'::1',0,0,1),(628,'::1',0,0,1),(629,'::1',0,0,1),(630,'::1',0,0,1),(631,'::1',0,0,1),(632,'::1',0,0,1),(633,'::1',0,0,1),(634,'::1',0,0,1),(635,'::1',0,0,1),(636,'::1',0,0,1),(637,'::1',0,0,1),(638,'::1',0,0,1),(639,'::1',0,0,3),(640,'::1',0,0,1),(641,'::1',0,0,1),(642,'::1',0,0,1),(643,'::1',0,0,1),(644,'::1',0,0,1),(645,'::1',0,0,1),(646,'::1',0,0,1),(647,'::1',0,0,1),(648,'::1',0,0,1),(649,'::1',0,0,1),(650,'::1',0,0,1),(651,'::1',0,0,1),(652,'::1',0,0,1),(653,'::1',0,0,1),(654,'::1',1,0,0),(655,'::1',0,0,1),(656,'::1',0,0,1),(657,'::1',0,0,1),(658,'::1',0,0,1),(659,'::1',0,0,1),(660,'::1',0,0,1),(661,'::1',0,0,1),(662,'::1',0,0,1),(663,'::1',0,0,1),(664,'::1',0,0,1),(665,'::1',0,0,1),(666,'::1',0,0,1),(667,'::1',0,0,1),(668,'::1',0,0,1),(669,'::1',0,0,1),(670,'::1',0,0,1),(671,'::1',0,0,1),(672,'::1',0,0,1),(673,'::1',0,0,1),(674,'::1',0,0,1),(675,'::1',0,0,1),(676,'::1',0,0,1),(677,'::1',0,0,1),(678,'::1',0,0,1),(679,'::1',0,0,3),(680,'::1',0,0,1),(681,'::1',0,0,1),(682,'::1',0,0,1),(683,'::1',0,0,1),(684,'::1',0,0,1),(685,'::1',0,0,1),(686,'192.168.0.3',0,0,1),(687,'::1',1,0,0),(688,'::1',1,0,0),(689,'::1',0,0,1),(690,'::1',0,0,1),(691,'::1',0,0,1),(692,'::1',0,0,1),(693,'::1',0,0,1),(694,'::1',0,0,1),(695,'::1',0,0,1),(696,'::1',0,0,1),(697,'::1',0,0,1),(698,'::1',0,0,1),(699,'::1',0,0,1),(700,'::1',0,0,1),(701,'::1',0,0,1),(702,'::1',0,0,1),(703,'::1',0,0,1),(704,'::1',0,0,1),(705,'::1',0,0,1),(706,'::1',0,0,1),(707,'::1',0,0,1),(708,'::1',0,0,1),(709,'::1',0,0,1),(710,'::1',0,0,1),(711,'::1',0,0,1),(712,'::1',0,0,1),(713,'::1',0,0,1),(714,'::1',0,0,1),(715,'::1',0,0,1),(716,'::1',0,0,1),(717,'::1',0,0,1),(718,'::1',0,0,1),(719,'::1',0,0,1),(720,'::1',0,0,1),(721,'::1',1,0,0),(722,'::1',1,0,0),(723,'::1',1,0,0),(724,'::1',0,0,1),(725,'::1',0,0,1),(726,'::1',0,0,1),(727,'::1',0,0,1),(728,'::1',0,0,1),(729,'::1',0,0,1),(730,'::1',0,0,1),(731,'::1',0,0,1),(732,'::1',0,0,1),(733,'::1',0,0,1),(734,'::1',0,0,1),(735,'::1',0,0,1),(736,'::1',0,0,1),(737,'::1',0,0,3);
/*!40000 ALTER TABLE `secureip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_charge`
--

DROP TABLE IF EXISTS `service_charge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_charge` (
  `service_no` int(45) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,2) DEFAULT NULL,
  `charge` decimal(18,2) NOT NULL,
  `res` varchar(45) NOT NULL,
  PRIMARY KEY (`service_no`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_charge`
--

LOCK TABLES `service_charge` WRITE;
/*!40000 ALTER TABLE `service_charge` DISABLE KEYS */;
INSERT INTO `service_charge` VALUES (1,1000.00,15.00,'\r'),(2,1500.00,23.00,'\r'),(3,2000.00,30.00,'\r'),(4,2500.00,38.00,'\r'),(5,3000.00,45.00,'\r'),(6,3500.00,53.00,'\r'),(7,4000.00,60.00,'\r'),(8,4500.00,68.00,'\r'),(9,5000.00,75.00,'\r'),(10,5500.00,83.00,'\r'),(11,6000.00,90.00,'\r'),(12,6500.00,98.00,'\r'),(13,7000.00,105.00,'\r'),(14,7500.00,113.00,'\r'),(15,8000.00,120.00,'\r'),(16,8500.00,128.00,'\r'),(17,9000.00,135.00,'\r'),(18,9500.00,143.00,'\r'),(19,10000.00,150.00,'\r'),(20,10500.00,158.00,'\r'),(21,11000.00,165.00,'\r'),(22,11500.00,173.00,'\r'),(23,12000.00,180.00,'\r'),(24,12500.00,188.00,'\r'),(25,13000.00,195.00,'\r'),(26,13500.00,203.00,'\r'),(27,14000.00,210.00,'\r'),(28,14500.00,218.00,'\r'),(29,15000.00,225.00,'\r'),(30,15500.00,233.00,'\r'),(31,16000.00,240.00,'\r'),(32,16500.00,248.00,'\r'),(33,17000.00,255.00,'\r'),(34,17500.00,263.00,'\r'),(35,18000.00,270.00,'\r'),(36,18500.00,278.00,'\r'),(37,19000.00,285.00,'\r'),(38,19500.00,293.00,'\r'),(39,20000.00,300.00,'\r'),(40,20500.00,308.00,'\r'),(41,21000.00,315.00,'\r'),(42,21500.00,323.00,'\r'),(43,22000.00,330.00,'\r'),(44,22500.00,338.00,'\r'),(45,23000.00,345.00,'\r'),(46,23500.00,353.00,'\r'),(47,24000.00,360.00,'\r'),(48,24500.00,368.00,'\r'),(49,25000.00,375.00,'\r'),(50,25500.00,383.00,'\r'),(51,26000.00,351.00,'\r'),(52,26500.00,358.00,'\r'),(53,27000.00,365.00,'\r'),(54,27500.00,372.00,'\r'),(55,28000.00,378.00,'\r'),(56,28500.00,385.00,'\r'),(57,29000.00,392.00,'\r'),(58,29500.00,399.00,'\r'),(59,30000.00,405.00,'\r'),(60,30500.00,412.00,'\r'),(61,31000.00,419.00,'\r'),(62,31500.00,426.00,'\r'),(63,32000.00,432.00,'\r'),(64,32500.00,439.00,'\r'),(65,33000.00,446.00,'\r'),(66,33500.00,453.00,'\r'),(67,34000.00,459.00,'\r'),(68,34500.00,466.00,'\r'),(69,35000.00,473.00,'\r'),(70,35500.00,480.00,'\r'),(71,36000.00,486.00,'\r'),(72,36500.00,493.00,'\r'),(73,37000.00,500.00,'\r'),(74,37500.00,507.00,'\r'),(75,38000.00,513.00,'\r'),(76,38500.00,520.00,'\r'),(77,39000.00,527.00,'\r'),(78,39500.00,534.00,'\r'),(79,40000.00,540.00,'\r'),(80,40500.00,547.00,'\r'),(81,41000.00,554.00,'\r'),(82,41500.00,561.00,'\r'),(83,42000.00,567.00,'\r'),(84,42500.00,574.00,'\r'),(85,43000.00,581.00,'\r'),(86,43500.00,588.00,'\r'),(87,44000.00,594.00,'\r'),(88,44500.00,601.00,'\r'),(89,45000.00,608.00,'\r'),(90,45500.00,615.00,'\r'),(91,46000.00,621.00,'\r'),(92,46500.00,628.00,'\r'),(93,47000.00,635.00,'\r'),(94,47500.00,642.00,'\r'),(95,48000.00,648.00,'\r'),(96,48500.00,655.00,'\r'),(97,49000.00,662.00,'\r'),(98,49500.00,669.00,'\r'),(99,50000.00,675.00,'');
/*!40000 ALTER TABLE `service_charge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sm_net_charge`
--

DROP TABLE IF EXISTS `sm_net_charge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sm_net_charge` (
  `network_charge_no` int(11) NOT NULL COMMENT 'network_charge_no,amount,charge',
  `amount` int(11) DEFAULT NULL,
  `charge` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`network_charge_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sm_net_charge`
--

LOCK TABLES `sm_net_charge` WRITE;
/*!40000 ALTER TABLE `sm_net_charge` DISABLE KEYS */;
INSERT INTO `sm_net_charge` VALUES (2,1000,5.00),(3,1500,7.50),(4,2000,10.00),(5,2500,12.50),(6,3000,15.00),(7,3500,17.50),(8,4000,20.00),(9,4500,22.50),(10,5000,25.00),(11,5500,27.50),(12,6000,30.00),(13,6500,32.50),(14,7000,35.00),(15,7500,37.50),(16,8000,40.00),(17,8500,42.50),(18,9000,45.00),(19,9500,47.50),(20,10000,50.00),(21,10500,52.50),(22,11000,55.00),(23,11500,57.50),(24,12000,60.00),(25,12500,62.50),(26,13000,65.00),(27,13500,67.50),(28,14000,70.00),(29,14500,72.50),(30,15000,75.00),(31,15500,77.50),(32,16000,80.00),(33,16500,82.50),(34,17000,85.00),(35,17500,87.50),(36,18000,90.00),(37,18500,92.50),(38,19000,95.00),(39,19500,97.50),(40,20000,100.00),(41,20500,102.50),(42,21000,105.00),(43,21500,107.50),(44,22000,110.00),(45,22500,112.50),(46,23000,115.00),(47,23500,117.50),(48,24000,120.00),(49,24500,122.50),(50,25000,125.00),(51,25500,127.50),(52,26000,130.00),(53,26500,132.50),(54,27000,135.00),(55,27500,137.50),(56,28000,140.00),(57,28500,142.50),(58,29000,145.00),(59,29500,147.50),(60,30000,150.00),(61,30500,152.50),(62,31000,155.00),(63,31500,157.50),(64,32000,160.00),(65,32500,162.50),(66,33000,165.00),(67,33500,167.50),(68,34000,170.00),(69,34500,172.50),(70,35000,175.00),(71,35500,177.50),(72,36000,180.00),(73,36500,182.50),(74,37000,185.00),(75,37500,187.50),(76,38000,190.00),(77,38500,192.50),(78,39000,195.00),(79,39500,197.50),(80,40000,200.00),(81,40500,202.50),(82,41000,205.00),(83,41500,207.50),(84,42000,210.00),(85,42500,212.50),(86,43000,215.00),(87,43500,217.50),(88,44000,220.00),(89,44500,222.50),(90,45000,225.00),(91,45500,227.50),(92,46000,230.00),(93,46500,232.50),(94,47000,235.00),(95,47500,237.50),(96,48000,240.00),(97,48500,242.50),(98,49000,245.00),(99,49500,247.50),(100,50000,250.00),(101,50500,252.50),(102,0,0.00);
/*!40000 ALTER TABLE `sm_net_charge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms`
--

DROP TABLE IF EXISTS `sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` varchar(500) NOT NULL,
  `date` bigint(20) unsigned NOT NULL,
  `address` varchar(45) NOT NULL,
  `macaddress` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index_2` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms`
--

LOCK TABLES `sms` WRITE;
/*!40000 ALTER TABLE `sms` DISABLE KEYS */;
INSERT INTO `sms` VALUES (1,'11Nov 0937: Received P1,500.00 with P17.25 commission from 09209723716 to LOADING.LIBRE ang pag-claim! Ref:d690ca2e97af Bal:P127,960.38',1510364212064,'SMARTMoney','macaddress'),(13,'12Nov 1129:Sent P970.00 from LOADING to ****1106 at 09128737975. Also deducted P18.50 from your account.Bal:P225,505.63.Ref:69d56635b7a9',1510457348035,'SmartPadala','macaddress'),(14,'CONFIRM Ref:69d56635b7a9 Ilagay ang Cellphone #s sa ibaba at i-send sa 8890. Customer Cellphone#: Receiver Cellphone#: ',1510457353933,'SmartPadala','macaddress'),(15,'12Nov 1143: Received P500.00 with P11.50 commission from 09491683770 to LOADING.LIBRE ang pag-claim! Ref:5bee6ba56fab Bal:P226,017.13',1510458177374,'SmartPadala','macaddress'),(16,'12Nov 1201: Received P1,500.00 with P17.25 commission from 09215664514 to LOADING.LIBRE ang pag-claim! Ref:0798e6762d15 Bal:P227,534.38',1510459234868,'SmartPadala','macaddress'),(17,'12Nov 1253: Received P400.00 with P11.50 commission from 09478165506 to LOADING.LIBRE ang pag-claim! Ref:4a9cb8b0b35d Bal:P227,945.88',1510462342541,'SmartPadala','macaddress'),(18,'12Nov 1322: Received P200.00 with P11.50 commission from 09478168370 to LOADING.LIBRE ang pag-claim! Ref:dffcb8b9306a Bal:P228,157.38',1510464091460,'SmartPadala','macaddress'),(19,'12Nov 1520:Remittance of P3,000.00 & commission of P34.50 was added to your account.Avail Bal:P231,191.88.Ref:2198df8136fb',1510471151379,'SmartPadala','macaddress');
/*!40000 ALTER TABLE `sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_archive`
--

DROP TABLE IF EXISTS `sms_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_archive` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` varchar(500) NOT NULL,
  `date` bigint(20) unsigned NOT NULL,
  `address` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index_2` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_archive`
--

LOCK TABLES `sms_archive` WRITE;
/*!40000 ALTER TABLE `sms_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_archive` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `updateStat` AFTER INSERT ON `sms_archive` FOR EACH ROW update triggertable set stat = 0 */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sms_config`
--

DROP TABLE IF EXISTS `sms_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `status` int(1) NOT NULL,
  `direction` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_config`
--

LOCK TABLES `sms_config` WRITE;
/*!40000 ALTER TABLE `sms_config` DISABLE KEYS */;
INSERT INTO `sms_config` VALUES (11,'outgoing_w_acct',3,0),(10,'incomming_w_acct',1,1),(9,'incomming',1,1);
/*!40000 ALTER TABLE `sms_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_config_static`
--

DROP TABLE IF EXISTS `sms_config_static`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_config_static` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sms_config_id` int(11) DEFAULT NULL,
  `word` varchar(45) DEFAULT NULL,
  `word_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_config_static`
--

LOCK TABLES `sms_config_static` WRITE;
/*!40000 ALTER TABLE `sms_config_static` DISABLE KEYS */;
INSERT INTO `sms_config_static` VALUES (1,9,'of',2),(2,9,'&',4),(3,9,'commission',5),(4,9,'of',6),(5,9,'added',9),(6,9,'was',8),(7,9,'your',11),(8,10,'Received',2),(9,10,'with',4),(10,10,'commission',6),(11,10,'from',7),(12,10,'ang',11),(13,10,'to',9),(14,10,'pag-claim!',12),(15,11,'from',3),(16,11,'to',5),(17,11,'at',7),(18,11,'Also',9),(19,11,'deducted',10),(20,11,'from',12),(21,11,'your',13);
/*!40000 ALTER TABLE `sms_config_static` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_config_value`
--

DROP TABLE IF EXISTS `sms_config_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_config_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stripl` int(11) DEFAULT NULL,
  `stripr` int(11) DEFAULT NULL,
  `slot` varchar(45) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `sms_config_id` int(11) DEFAULT NULL,
  `exp` varchar(45) DEFAULT NULL,
  `exp_index` int(11) DEFAULT NULL,
  `colname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_config_value`
--

LOCK TABLES `sms_config_value` WRITE;
/*!40000 ALTER TABLE `sms_config_value` DISABLE KEYS */;
INSERT INTO `sms_config_value` VALUES (1,0,0,'13',0,9,':',2,'ref_no'),(2,1,0,'3',1,9,NULL,0,'amount'),(3,1,4,'13',1,9,':',1,'balance'),(4,1,0,'7',1,9,NULL,0,'com'),(5,0,0,'10',1,10,'.',0,'account'),(6,0,0,'13',0,10,':',1,'ref_no'),(7,1,0,'3',1,10,NULL,0,'amount'),(8,1,0,'14',1,10,':',1,'balance'),(9,1,0,'5',1,10,NULL,0,'com'),(10,0,0,'4',1,11,NULL,0,'account'),(11,0,0,'14',0,11,':',2,'ref_no'),(12,1,0,'2',1,11,NULL,0,'amount'),(13,1,4,'14',1,11,':',1,'balance'),(14,0,0,'11',1,11,NULL,0,'com');
/*!40000 ALTER TABLE `sms_config_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_stack`
--

DROP TABLE IF EXISTS `sms_stack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_stack` (
  `sms_no` int(45) NOT NULL AUTO_INCREMENT,
  `sms_body` varchar(300) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `reserve` varchar(45) NOT NULL,
  PRIMARY KEY (`sms_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_stack`
--

LOCK TABLES `sms_stack` WRITE;
/*!40000 ALTER TABLE `sms_stack` DISABLE KEYS */;
INSERT INTO `sms_stack` VALUES (1,'sdfsdf','09394380608',1,'0');
/*!40000 ALTER TABLE `sms_stack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_sm`
--

DROP TABLE IF EXISTS `status_sm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_sm` (
  `sm_status_no` int(45) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `incoming` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`sm_status_no`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_sm`
--

LOCK TABLES `status_sm` WRITE;
/*!40000 ALTER TABLE `status_sm` DISABLE KEYS */;
INSERT INTO `status_sm` VALUES (1,'Pending','',1),(2,'Claimed','',1),(3,'Sent','',2),(4,'Payment IN','Excluded incomming',1),(5,'Payment OUT','excluded Outgoing',3),(6,'Return IN','excluded in comming',1),(7,'Return OUT','Invalid outgoing',3),(8,'VERIFICATION','for verification by the admin',1);
/*!40000 ALTER TABLE `status_sm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmp`
--

DROP TABLE IF EXISTS `tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp` (
  `num` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `ledger` int(45) DEFAULT NULL,
  `ledgername` varchar(45) DEFAULT NULL,
  `credit` decimal(18,2) DEFAULT NULL,
  `debit` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmp`
--

LOCK TABLES `tmp` WRITE;
/*!40000 ALTER TABLE `tmp` DISABLE KEYS */;
INSERT INTO `tmp` VALUES (1,'2017-08-29','Claimed Transaction',2,'Cash Out',7500.00,NULL);
/*!40000 ALTER TABLE `tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_sm`
--

DROP TABLE IF EXISTS `transaction_sm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_sm` (
  `tran_id` int(45) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `smart_money` varchar(45) DEFAULT NULL,
  `account` int(45) DEFAULT NULL,
  `ref_no` varchar(100) NOT NULL,
  `amount` decimal(20,2) DEFAULT NULL,
  `status` int(45) DEFAULT NULL,
  `balance` decimal(20,2) DEFAULT NULL,
  `cash_amount` decimal(20,2) DEFAULT NULL,
  `network_charge_no` int(45) DEFAULT NULL,
  `computation_no` int(45) DEFAULT NULL,
  `date_claimed` datetime DEFAULT NULL,
  `service_charge` decimal(20,2) DEFAULT NULL,
  `cust_id` int(45) DEFAULT NULL,
  `body_sms` varchar(300) DEFAULT NULL,
  `branch_no` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `off_cust_id` varchar(45) DEFAULT NULL,
  `com` decimal(18,2) DEFAULT NULL,
  `direction` tinyint(1) DEFAULT NULL,
  `macaddress` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tran_id`),
  KEY `FK_transaction_sm_0_1` (`account`),
  KEY `FK_transaction_sm_0_2` (`status`),
  KEY `FK_transaction_sm_0_3` (`network_charge_no`),
  KEY `FK_transaction_sm_0_4` (`cust_id`),
  KEY `FK_transaction_sm_0_5` (`computation_no`),
  KEY `FK_transaction_sm_0_6` (`branch_no`),
  CONSTRAINT `FK_transaction_sm_0_1` FOREIGN KEY (`account`) REFERENCES `account_sm` (`account_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_transaction_sm_0_2` FOREIGN KEY (`status`) REFERENCES `status_sm` (`sm_status_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_transaction_sm_0_3` FOREIGN KEY (`network_charge_no`) REFERENCES `sm_net_charge` (`network_charge_no`),
  CONSTRAINT `FK_transaction_sm_0_4` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_transaction_sm_0_5` FOREIGN KEY (`computation_no`) REFERENCES `computation_sm` (`comp_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_transaction_sm_0_6` FOREIGN KEY (`branch_no`) REFERENCES `branch` (`branch_no`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_sm`
--

LOCK TABLES `transaction_sm` WRITE;
/*!40000 ALTER TABLE `transaction_sm` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction_sm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `triggertable`
--

DROP TABLE IF EXISTS `triggertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `triggertable` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stat` int(10) unsigned NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `triggertable`
--

LOCK TABLES `triggertable` WRITE;
/*!40000 ALTER TABLE `triggertable` DISABLE KEYS */;
INSERT INTO `triggertable` VALUES (1,1);
/*!40000 ALTER TABLE `triggertable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tservice_charge`
--

DROP TABLE IF EXISTS `tservice_charge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tservice_charge` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id,amount,charge',
  `amount` int(11) DEFAULT NULL,
  `charge` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=199 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tservice_charge`
--

LOCK TABLES `tservice_charge` WRITE;
/*!40000 ALTER TABLE `tservice_charge` DISABLE KEYS */;
INSERT INTO `tservice_charge` VALUES (100,1000,15.00),(101,1500,22.50),(102,2000,30.00),(103,2500,37.50),(104,3000,45.00),(105,3500,52.50),(106,4000,60.00),(107,4500,67.50),(108,5000,75.00),(109,5500,82.50),(110,6000,90.00),(111,6500,97.50),(112,7000,105.00),(113,7500,112.50),(114,8000,120.00),(115,8500,127.50),(116,9000,135.00),(117,9500,142.50),(118,10000,150.00),(119,10500,157.50),(120,11000,165.00),(121,11500,172.50),(122,12000,180.00),(123,12500,187.50),(124,13000,195.00),(125,13500,202.50),(126,14000,210.00),(127,14500,217.50),(128,15000,225.00),(129,15500,232.50),(130,16000,240.00),(131,16500,247.50),(132,17000,255.00),(133,17500,262.50),(134,18000,270.00),(135,18500,277.50),(136,19000,285.00),(137,19500,292.50),(138,20000,300.00),(139,20500,307.50),(140,21000,315.00),(141,21500,322.50),(142,22000,330.00),(143,22500,337.50),(144,23000,345.00),(145,23500,352.50),(146,24000,360.00),(147,24500,367.50),(148,25000,375.00),(149,25500,382.50),(150,26000,390.00),(151,26500,397.50),(152,27000,405.00),(153,27500,412.50),(154,28000,420.00),(155,28500,427.50),(156,29000,435.00),(157,29500,442.50),(158,30000,450.00),(159,30500,457.50),(160,31000,465.00),(161,31500,472.50),(162,32000,480.00),(163,32500,487.50),(164,33000,495.00),(165,33500,502.50),(166,34000,510.00),(167,34500,517.50),(168,35000,525.00),(169,35500,532.50),(170,36000,540.00),(171,36500,547.50),(172,37000,555.00),(173,37500,562.50),(174,38000,570.00),(175,38500,577.50),(176,39000,585.00),(177,39500,592.50),(178,40000,600.00),(179,40500,607.50),(180,41000,615.00),(181,41500,622.50),(182,42000,630.00),(183,42500,637.50),(184,43000,645.00),(185,43500,652.50),(186,44000,660.00),(187,44500,667.50),(188,45000,675.00),(189,45500,682.50),(190,46000,690.00),(191,46500,697.50),(192,47000,705.00),(193,47500,712.50),(194,48000,720.00),(195,48500,727.50),(196,49000,735.00),(197,49500,742.50),(198,50000,750.00);
/*!40000 ALTER TABLE `tservice_charge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Nino','ninobevin@gmail.com','$2y$10$53noJfpD9SNDxr274jm5N.ICLDrXaCzAch24DLTe7lkEKbHmjNTva','AezmFuTonOWXFOz7FBPUc3W0EyxfEIrJfRp2vdfrlPY2fh9BhptjFWpayzl8','2017-09-01 06:28:38','2017-09-01 06:28:38'),(2,'Mike','mikegmail@gmail.com','$2y$10$QZW9heCbI9s3JpXnq2.PguHMtD8PUvpD.ijZa71IxJn/96UQGW3tO',NULL,'2017-11-12 16:48:40','2017-11-12 16:51:04');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersettings`
--

DROP TABLE IF EXISTS `usersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersettings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `formColor` varchar(20) NOT NULL,
  `headColor` varchar(20) NOT NULL,
  `tableHeadColor` varchar(20) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersettings`
--

LOCK TABLES `usersettings` WRITE;
/*!40000 ALTER TABLE `usersettings` DISABLE KEYS */;
INSERT INTO `usersettings` VALUES (1,'#c0c0c0','#000000','#008080',2),(3,'#c0c0c0','#000000','#c0c0c0',1),(4,'#c0c0c0','#1e1e1e','#0000d5',3),(5,'#c0c0c0','#1e1e1e','#265a88',4),(6,'#c0c0c0','#1e1e1e','#265a88',7),(7,'#c0c0c0','#1e1e1e','#265a88',8);
/*!40000 ALTER TABLE `usersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `view_claimed_sm`
--

DROP TABLE IF EXISTS `view_claimed_sm`;
/*!50001 DROP VIEW IF EXISTS `view_claimed_sm`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_claimed_sm` AS SELECT 
 1 AS `tran_id`,
 1 AS `date`,
 1 AS `smart_money`,
 1 AS `account`,
 1 AS `ref_no`,
 1 AS `amount`,
 1 AS `status`,
 1 AS `balance`,
 1 AS `cash_amount`,
 1 AS `network_charge_no`,
 1 AS `computation_no`,
 1 AS `date_claimed`,
 1 AS `service_charge`,
 1 AS `cust_id`,
 1 AS `body_sms`,
 1 AS `branch_no`,
 1 AS `user_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_pending_sm`
--

DROP TABLE IF EXISTS `view_pending_sm`;
/*!50001 DROP VIEW IF EXISTS `view_pending_sm`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_pending_sm` AS SELECT 
 1 AS `tran_id`,
 1 AS `date`,
 1 AS `smart_money`,
 1 AS `account`,
 1 AS `ref_no`,
 1 AS `amount`,
 1 AS `status`,
 1 AS `balance`,
 1 AS `cash_amount`,
 1 AS `network_charge_no`,
 1 AS `computation_no`,
 1 AS `date_claimed`,
 1 AS `service_charge`,
 1 AS `cust_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_sent2`
--

DROP TABLE IF EXISTS `view_sent2`;
/*!50001 DROP VIEW IF EXISTS `view_sent2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_sent2` AS SELECT 
 1 AS `tran_id`,
 1 AS `date`,
 1 AS `smart_money`,
 1 AS `account`,
 1 AS `ref_no`,
 1 AS `amount`,
 1 AS `status`,
 1 AS `balance`,
 1 AS `cash_amount`,
 1 AS `network_charge_no`,
 1 AS `computation_no`,
 1 AS `date_claimed`,
 1 AS `service_charge`,
 1 AS `cust_id`,
 1 AS `body_sms`,
 1 AS `branch_no`,
 1 AS `user_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_sent_sm`
--

DROP TABLE IF EXISTS `view_sent_sm`;
/*!50001 DROP VIEW IF EXISTS `view_sent_sm`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_sent_sm` AS SELECT 
 1 AS `tran_id`,
 1 AS `date`,
 1 AS `smart_money`,
 1 AS `account`,
 1 AS `ref_no`,
 1 AS `amount`,
 1 AS `status`,
 1 AS `balance`,
 1 AS `cash_amount`,
 1 AS `network_charge_no`,
 1 AS `computation_no`,
 1 AS `date_claimed`,
 1 AS `service_charge`,
 1 AS `cust_id`,
 1 AS `net_charge`,
 1 AS `sales_prof`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `withdraw_sm`
--

DROP TABLE IF EXISTS `withdraw_sm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `withdraw_sm` (
  `withdraw_no` int(45) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `person_incharge` varchar(45) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `user_id` int(45) DEFAULT NULL,
  PRIMARY KEY (`withdraw_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw_sm`
--

LOCK TABLES `withdraw_sm` WRITE;
/*!40000 ALTER TABLE `withdraw_sm` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdraw_sm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mergesms'
--
/*!50003 DROP PROCEDURE IF EXISTS `generateFinancialReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `generateFinancialReport`(`dateFrom` DATE, `dateTo` DATE)
BEGIN

	
    drop table IF EXISTS tmp ;
    
   create  table tmp
(
num integer null,
date date null,
description varchar(45),
ledger integer(45),
ledgername varchar(45),
credit decimal(18,2),
debit decimal(18,2)

);
	set @count = 1;
    set @dateInc = dateFrom;
	while @dateInc <= dateTo do
    
    
		insert into tmp(num,date,description,ledger,ledgername,credit)
			select @count,date_format(date_claimed,'%Y-%m-%d'),'Claimed Transaction',2,'Cash Out',sum(cash_amount) 
				from transaction_sm where date_format(date_claimed,'%Y-%m-%d') = @dateInc 
                and status = 2  group by date_format(date_claimed,'%Y-%m-%d');
		insert into tmp(num,date,description,ledger,ledgername,debit)
			select @count,date_format(date,'%Y-%m-%d'),'Sent Transaction',1,'Cash In',sum(cash_amount) 
				from transaction_sm where date_format(date,'%Y-%m-%d') = @dateInc 
                and status = 3  and branch_no is not null  group by date_format(date,'%Y-%m-%d');
    
		insert into tmp(num,date,description,ledger,ledgername,debit)
			select @count,a.date,a.description,a.fr_type_no,b.name,a.amount 
				from fr_entry a join fr_type b 
					on a.fr_type_no = b.fr_type_no where a.date = @dateInc
				and b.type = 1;
		
		insert into tmp(num,date,description,ledger,ledgername,credit)
			select @count,a.date,a.description,a.fr_type_no,b.name,a.amount 
				from fr_entry a join fr_type b 
					on a.fr_type_no = b.fr_type_no where a.date = @dateInc
				and b.type = 0;
        
        set @dateInc = date_add(@dateInc,interval 1 day);
	
    end while;
	
    select * from tmp;

    



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `genReportDailySm` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `genReportDailySm`(`start_date` VARCHAR(45), `end_date` VARCHAR(45))
begin

	 drop temporary table if exists table_temp ;
   

		
    create temporary table table_temp
    (
		id  int(45),
        dates date null,
        pending decimal(18,2) null,
        sent decimal(18,2) null,
        claimed decimal(18,2) null,
        withdraw decimal(18,2) null,
        deposit  decimal(18,2) null
        
    );
		insert into table_temp
        select day(date),date_format(date,'%Y-%m-%d') as dates,sum(amount),0.00,0.00,0.00,0.00 from transaction_sm
		where date_format(date,'%Y-%m-%d') between start_date and end_date and status=1
		group by day(date); 
	
    
		insert into table_temp	
		select  day(date),date_format(date,'%Y-%m-%d'),0.00,sum(cash_amount),0.00,0.00,0.00 from transaction_sm
		where date_format(date,'%Y-%m-%d') between start_date and end_date and status=3
		group by  day(date);
	
    
		insert into table_temp
        select day(date_claimed),date_format(date_claimed,'%Y-%m-%d'),0.00,0.00,sum(cash_amount),0.00,0.00 from transaction_sm
		where date_format(date_claimed,'%Y-%m-%d') between start_date and end_date and status=2
		group by day(date_claimed); 
        
        insert into table_temp
        select  day(date),date_format(date,'%Y-%m-%d'),0.00,0.00,0.00,0.00,sum(amount) from deposit_sm
		where date_format(date,'%Y-%m-%d') between start_date and end_date
		group by day(date); 
        
         insert into table_temp
        select day(date),date_format(date,'%Y-%m-%d'),0.00,0.00,0.00,sum(amount),0.00 from withdraw_sm
		where date_format(date,'%Y-%m-%d') between start_date and end_date
		group by day(date); 
        
        
	
	
    #select a.week as week_d, a.dates as dates,sum(a.amount) as pending,sum(b.amount) as sent,sum(c.amount) as claimed from table_pending a
    #left join table_sent b on a.week=b.week  left join table_claimed c on c.week=a.week group by a.week;
    
     select id,dates as DATE,sum(pending) as PENDING,sum(claimed) as CLAIMED,sum(sent) as SENT,sum(deposit) as DEPOSIT,
     sum(withdraw) as WITHDRAW from table_temp where dates is not null
     group by dates order by dates;
    
    
   #select * from table_temp;
    
    #select * from table_claimed;
   
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `genReportDailySmTEST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `genReportDailySmTEST`(`start_date` VARCHAR(45), `end_date` VARCHAR(45))
begin

	 drop temporary table if exists table_temp ;
   

		
    create temporary table table_temp
    (
		id  int(45),
        dates date null,
        pending decimal(18,2) null,
        
        sent decimal(18,2) null,
        trans_charge decimal(18,2),
        vSent_amount decimal(18,2),
        Sent_net_prof decimal(18,2),
        
        claimed decimal(18,2) null,
        vClaimed decimal(18,2) null,
        claimed_net_prof decimal(18,2),
        
        withdraw decimal(18,2) null,
        deposit  decimal(18,2) null
        
    );
		insert into table_temp
        select day(date),date_format(date,'%Y-%m-%d') as dates,sum(amount),
        0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00           
        from view_pending_sm
		where date_format(date,'%Y-%m-%d') between start_date and end_date
		group by date_format(date,'%Y-%m-%d'); 
	
    
		insert into table_temp	
		select  day(date),date_format(date,'%Y-%m-%d'),0.00,
        sum(cash_amount),sum(net_charge),sum(amount),sum(sales_prof),
        0.00,0.00,0.00,0.00,0.00          
        from view_sent_sm
		where date_format(date,'%Y-%m-%d') between start_date and end_date
		group by  date_format(date,'%Y-%m-%d');
	
    
		insert into table_temp
        select day(date_claimed),date_format(date_claimed,'%Y-%m-%d'),0.00,
        0.00, 0.00, 0.00, 0.00,
        sum(cash_amount),sum(amount),sum(sales_prof),0.00,0.00
        from view_claimed_sm
		where date_format(date_claimed,'%Y-%m-%d') between start_date and end_date
		group by date_format(date_claimed,'%Y-%m-%d'); 
        
        insert into table_temp
        select  day(date),date_format(date,'%Y-%m-%d'),0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,sum(amount) from deposit_sm
		where date_format(date,'%Y-%m-%d') between start_date and end_date
		group by date_format(date,'%Y-%m-%d'); 
        
         insert into table_temp
        select day(date),date_format(date,'%Y-%m-%d'),0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,sum(amount),0.00 from withdraw_sm
		where date_format(date,'%Y-%m-%d') between start_date and end_date
		group by date_format(date,'%Y-%m-%d'); 
        
        
	
	
    #select a.week as week_d, a.dates as dates,sum(a.amount) as pending,sum(b.amount) as sent,sum(c.amount) as claimed from table_pending a
    #left join table_sent b on a.week=b.week  left join table_claimed c on c.week=a.week group by a.week;
    
      select id,dates as DATE,sum(pending) as PENDING,
      sum(claimed) as CLAIMED,sum(vClaimed) as CLAIM_PAMOUNT,sum(claimed_net_prof) as NET_PROF_CLAIM,
      
     sum(sent) as SENT,sum(trans_charge) as NCHARGE,sum(vSent_amount) as SENT_PAMOUNT,sum(Sent_net_prof) as NET_PROF_SENT,
	 sum(deposit) as DEPOSIT,
     sum(withdraw) as WITHDRAW from table_temp 
     group by dates order by dates; 
    
    
    
     /*
        sent decimal(18,2) null,
        trans_charge decimal(18,2),
        vSent_amount decimal(18,2),
        Sent_net_prof decimal(18,2),
        
        claimed decimal(18,2) null,
        vClaimed decimal(18,2) null,
        claimed_net_prof decimal(18,2),
       */ 
    
    
    
    
    
    #select * from table_claimed;
   
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `genReportMonthlySm` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `genReportMonthlySm`(`start_date` VARCHAR(45), `end_date` VARCHAR(45))
begin

	 drop temporary table if exists table_temp ;
   

		
    create temporary table table_temp
    (
		id  int(45),
        dates date null,
        pending decimal(18,2) null,
        sent decimal(18,2) null,
        claimed decimal(18,2) null,
        withdraw decimal(18,2) null,
        deposit  decimal(18,2) null
        
    );
		insert into table_temp
        select month(date),date_format(date,'%Y-%m-%d') as dates,sum(amount),0.00,0.00,0.00,0.00 from transaction_sm
		where date_format(date,'%Y-%m-%d') between start_date and end_date and status=1
		group by month(date); 
	
    
		insert into table_temp	
		select  month(date),date_format(date,'%Y-%m-%d'),0.00,sum(cash_amount),0.00,0.00,0.00 from transaction_sm
		where date_format(date,'%Y-%m-%d') between start_date and end_date and status=3
		group by  month(date);
	
    
		insert into table_temp
        select month(date_claimed),date_format(date_claimed,'%Y-%m-%d'),0.00,0.00,sum(cash_amount),0.00,0.00 from transaction_sm
		where date_format(date_claimed,'%Y-%m-%d') between start_date and end_date and status=2
		group by month(date_claimed); 
        
        insert into table_temp
        select  month(date),date_format(date,'%Y-%m-%d'),0.00,0.00,0.00,0.00,sum(amount) from deposit_sm
		where date_format(date,'%Y-%m-%d') between start_date and end_date
		group by month(date); 
        
         insert into table_temp
        select month(date),date_format(date,'%Y-%m-%d'),0.00,0.00,0.00,sum(amount),0.00 from withdraw_sm
		where date_format(date,'%Y-%m-%d') between start_date and end_date
		group by month(date); 
        
        
	
	
    #select a.week as week_d, a.dates as dates,sum(a.amount) as pending,sum(b.amount) as sent,sum(c.amount) as claimed from table_pending a
    #left join table_sent b on a.week=b.week  left join table_claimed c on c.week=a.week group by a.week;
    
      select id,dates as DATE,sum(pending) as PENDING,sum(claimed) as CLAIMED,sum(sent) as SENT,sum(deposit) as DEPOSIT,
     sum(withdraw) as WITHDRAW from table_temp where dates is not null
     group by id order by dates;
    
    
    #select * from table_claimed;
   
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `genReportMonthlySmTEST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `genReportMonthlySmTEST`(`start_date` VARCHAR(45), `end_date` VARCHAR(45))
begin

	 drop temporary table if exists table_temp ;
   

		
    create temporary table table_temp
    (
		id  int(45),
        dates date null,
        pending decimal(18,2) null,
        
        sent decimal(18,2) null,
        trans_charge decimal(18,2),
        vSent_amount decimal(18,2),
        Sent_net_prof decimal(18,2),
        
        claimed decimal(18,2) null,
        vClaimed decimal(18,2) null,
        claimed_net_prof decimal(18,2),
        
        withdraw decimal(18,2) null,
        deposit  decimal(18,2) null
        
    );
		insert into table_temp
        select month(date),date_format(date,'%Y-%m-%d') as dates,sum(amount),
        0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00           
        from view_pending_sm
		where date_format(date,'%Y-%m-%d') between start_date and end_date
		group by month(date); 
	
    
		insert into table_temp	
		select  month(date),date_format(date,'%Y-%m-%d'),0.00,
        sum(cash_amount),sum(net_charge),sum(amount),sum(sales_prof),
        0.00,0.00,0.00,0.00,0.00          
        from view_sent_sm
		where date_format(date,'%Y-%m-%d') between start_date and end_date
		group by  month(date);
	
    
		insert into table_temp
        select month(date_claimed),date_format(date_claimed,'%Y-%m-%d'),0.00,
        0.00, 0.00, 0.00, 0.00,
        sum(cash_amount),sum(amount),sum(sales_prof),0.00,0.00
        from view_claimed_sm
		where date_format(date_claimed,'%Y-%m-%d') between start_date and end_date
		group by month(date_claimed); 
        
        insert into table_temp
        select  month(date),date_format(date,'%Y-%m-%d'),0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,sum(amount) from deposit_sm
		where date_format(date,'%Y-%m-%d') between start_date and end_date
		group by month(date); 
        
         insert into table_temp
        select month(date),date_format(date,'%Y-%m-%d'),0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,sum(amount),0.00 from withdraw_sm
		where date_format(date,'%Y-%m-%d') between start_date and end_date
		group by month(date); 
        
        
	
	
    #select a.week as week_d, a.dates as dates,sum(a.amount) as pending,sum(b.amount) as sent,sum(c.amount) as claimed from table_pending a
    #left join table_sent b on a.week=b.week  left join table_claimed c on c.week=a.week group by a.week;
    
      select id,dates as DATE,sum(pending) as PENDING,
      sum(claimed) as CLAIMED,sum(vClaimed) as CLAIM_PAMOUNT,sum(claimed_net_prof) as NET_PROF_CLAIM,
      
     sum(sent) as SENT,sum(trans_charge) as NCHARGE,sum(vSent_amount) as SENT_PAMOUNT,sum(Sent_net_prof) as NET_PROF_SENT,
	 sum(deposit) as DEPOSIT,
     sum(withdraw) as WITHDRAW from table_temp where dates is not null
     group by id order by dates;
    
    
    
     /*
        sent decimal(18,2) null,
        trans_charge decimal(18,2),
        vSent_amount decimal(18,2),
        Sent_net_prof decimal(18,2),
        
        claimed decimal(18,2) null,
        vClaimed decimal(18,2) null,
        claimed_net_prof decimal(18,2),
       */ 
    
    
    
    
    
    #select * from table_claimed;
   
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `genReportSpecSmTEST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `genReportSpecSmTEST`(`start_date` VARCHAR(45), `end_date` VARCHAR(45))
begin

	 drop temporary table if exists table_temp ;
   

		
    create temporary table table_temp
    (
		id  int(45),
        dates datetime null,
        pending decimal(18,2) null,
        
        sent decimal(18,2) null,
        trans_charge decimal(18,2) null,
        vSent_amount decimal(18,2)null,
        Sent_net_prof decimal(18,2)null,
        
        claimed decimal(18,2) null,
        vClaimed decimal(18,2) null,
        claimed_net_prof decimal(18,2)null,
        
        withdraw decimal(18,2) null,
        deposit  decimal(18,2) null
        
    );
		insert into table_temp
        select day(date),date,(amount),
        0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00           
        from view_pending_sm
		where date_format(date,'%Y-%m-%d') = start_date;
		
	
    
		insert into table_temp	
		select  day(date),date,0.00,
        (cash_amount),(net_charge),(amount),(sales_prof),
        0.00,0.00,0.00,0.00,0.00          
        from view_sent_sm
		where date_format(date,'%Y-%m-%d') = start_date;
    
		insert into table_temp
        select day(date_claimed),date_claimed,0.00,
        0.00, 0.00, 0.00, 0.00,
        (cash_amount),(amount),(sales_prof),0.00,0.00
        from view_claimed_sm
		where date_format(date_claimed,'%Y-%m-%d') = start_date;
        
        insert into table_temp
        select  day(date),date,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,(amount) from deposit_sm
		where date_format(date,'%Y-%m-%d') = start_date;
        
         insert into table_temp
        select day(date),date,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,(amount),0.00 from withdraw_sm
		where date_format(date,'%Y-%m-%d') = start_date;
	
	
    #select a.week as week_d, a.dates as dates,(a.amount) as pending,(b.amount) as sent,(c.amount) as claimed from table_pending a
    #left join table_sent b on a.week=b.week  left join table_claimed c on c.week=a.week group by a.week;
    
      select id,dates as DATE,(pending) as PENDING,
      (claimed) as CLAIMED,(vClaimed) as CLAIM_PAMOUNT,(claimed_net_prof) as NET_PROF_CLAIM,
      
     (sent) as SENT,(trans_charge) as NCHARGE,(vSent_amount) as SENT_PAMOUNT,(Sent_net_prof) as NET_PROF_SENT,
	 (deposit) as DEPOSIT,
     (withdraw) as WITHDRAW from table_temp where dates is not null
		order by dates;
    
    
    
     /*
        sent decimal(18,2) 0.00,
        trans_charge decimal(18,2),
        vSent_amount decimal(18,2),
        Sent_net_prof decimal(18,2),
        
        claimed decimal(18,2) 0.00,
        vClaimed decimal(18,2) 0.00,
        claimed_net_prof decimal(18,2),
       */ 
    
    
    
    
    
    #select * from table_claimed;
   
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `genReportSpecSmTEST2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `genReportSpecSmTEST2`(`start_date` VARCHAR(45), `end_date` VARCHAR(45))
begin

	 drop temporary table if exists table_temp ;
   

		
    create temporary table table_temp
    (
		id  int(45),
        dates datetime null,
        REF_NO varchar(45),
        pending decimal(18,2) null,
        
        sent decimal(18,2) null,
        trans_charge decimal(18,2) null,
        vSent_amount decimal(18,2)null,
        Sent_net_prof decimal(18,2)null,
        
        claimed decimal(18,2) null,
        vClaimed decimal(18,2) null,
        claimed_net_prof decimal(18,2)null,
        
        withdraw decimal(18,2) null,
        deposit  decimal(18,2) null
        
    );
		insert into table_temp
        select day(date),date,REF_NO,(amount),
        0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00           
        from view_pending_sm
		where date_format(date,'%Y-%m-%d') = start_date;
		
	
    
		insert into table_temp	
		select  day(date),date,REF_NO,0.00,
        (cash_amount),(net_charge),(amount),(sales_prof),
        0.00,0.00,0.00,0.00,0.00          
        from view_sent_sm
		where date_format(date,'%Y-%m-%d') = start_date;
    
		insert into table_temp
        select day(date_claimed),date_claimed,REF_NO,0.00,
        0.00, 0.00, 0.00, 0.00,
        (cash_amount),(amount),(sales_prof),0.00,0.00
        from view_claimed_sm
		where date_format(date_claimed,'%Y-%m-%d') = start_date;
        
        insert into table_temp
        select  day(date),date,'none',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,(amount) from deposit_sm
		where date_format(date,'%Y-%m-%d') = start_date;
        
         insert into table_temp
        select day(date),date,'none',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,(amount),0.00 from withdraw_sm
		where date_format(date,'%Y-%m-%d') = start_date;
	
	
    #select a.week as week_d, a.dates as dates,(a.amount) as pending,(b.amount) as sent,(c.amount) as claimed from table_pending a
    #left join table_sent b on a.week=b.week  left join table_claimed c on c.week=a.week group by a.week;
    
      select id,dates as DATE,REF_NO as Reference,(pending) as PENDING,
      (claimed) as CLAIMED,(vClaimed) as CLAIM_PAMOUNT,(claimed_net_prof) as NET_PROF_CLAIM,
      
     (sent) as SENT,(trans_charge) as NCHARGE,(vSent_amount) as SENT_PAMOUNT,(Sent_net_prof) as NET_PROF_SENT,
	 (deposit) as DEPOSIT,
     (withdraw) as WITHDRAW from table_temp where dates is not null
		order by dates;
    
    
    
     /*
        sent decimal(18,2) 0.00,
        trans_charge decimal(18,2),
        vSent_amount decimal(18,2),
        Sent_net_prof decimal(18,2),
        
        claimed decimal(18,2) 0.00,
        vClaimed decimal(18,2) 0.00,
        claimed_net_prof decimal(18,2),
       */ 
    
    
    
    
    
    #select * from table_claimed;
   
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `genReportTodaySm` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `genReportTodaySm`(`start_date` VARCHAR(45), `end_date` VARCHAR(45))
begin

	 drop temporary table if exists table_temp ;
   

		
    create temporary table table_temp
    (
		
        dates datetime null,
        pending decimal(18,2)  null,
        sent decimal(18,2)  null ,
        claimed decimal(18,2)  null,
        withdraw decimal(18,2)  null,
        deposit  decimal(18,2)  null
        
    );
		insert into table_temp
        select date as dates,sum(amount),null,null,null,null from transaction_sm
		where date_format(date,'%Y-%m-%d') = date_format(now(),'%Y-%m-%d') and status=1;
	
	
    
		insert into table_temp	
		select date as dates,0.00,sum(cash_amount),0.00,0.00,0.00 from transaction_sm
		where date_format(date,'%Y-%m-%d') = date_format(now(),'%Y-%m-%d')  and status=3;
		
	
    
		insert into table_temp
        select date as dates,null,null,sum(cash_amount),null,null from transaction_sm
		where date_format(date_claimed,'%Y-%m-%d') = date_format(now(),'%Y-%m-%d')  and status=2;
		
        
        insert into table_temp
        select date as dates,null,null,null,null,sum(amount) from deposit_sm
		where date_format(date,'%Y-%m-%d') = date_format(now(),'%Y-%m-%d') ;
		
        
         insert into table_temp
        select date as dates,null,null,null,sum(amount),null from withdraw_sm
		where date_format(date,'%Y-%m-%d') = date_format(now(),'%Y-%m-%d') ;

        
        
	
	
    #select a.week as week_d, a.dates as dates,sum(a.amount) as pending,sum(b.amount) as sent,sum(c.amount) as claimed from table_pending a
    #left join table_sent b on a.week=b.week  left join table_claimed c on c.week=a.week group by a.week;
    
      select '#',dates as DATE,pending as PENDING,claimed as CLAIMED,sent as SENT,deposit as DEPOSIT,
    withdraw as WITHDRAW from table_temp where dates is not null
      order by dates;
    
    
    #select * from table_claimed;
   
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `genReportTodaySmTEST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `genReportTodaySmTEST`(`start_date` VARCHAR(45), `end_date` VARCHAR(45))
begin

	 drop temporary table if exists table_temp ;
   

		
    create temporary table table_temp
    (
		id  int(45),
        dates datetime null,
        pending decimal(18,2) null,
        
        sent decimal(18,2) null,
        trans_charge decimal(18,2) null,
        vSent_amount decimal(18,2)null,
        Sent_net_prof decimal(18,2)null,
        
        claimed decimal(18,2) null,
        vClaimed decimal(18,2) null,
        claimed_net_prof decimal(18,2)null,
        
        withdraw decimal(18,2) null,
        deposit  decimal(18,2) null
        
    );
		insert into table_temp
        select day(date),date,(amount),
        0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00           
        from view_pending_sm
		where date_format(date,'%Y-%m-%d') = start_date;
		
	
    
		insert into table_temp	
		select  day(date),date,0.00,
        (cash_amount),(net_charge),(amount),(sales_prof),
        0.00,0.00,0.00,0.00,0.00          
        from view_sent_sm
		where date_format(date,'%Y-%m-%d') = start_date;
    
		insert into table_temp
        select day(date_claimed),date_claimed,0.00,
        0.00, 0.00, 0.00, 0.00,
        (cash_amount),(amount),(sales_prof),0.00,0.00
        from view_claimed_sm
		where date_format(date_claimed,'%Y-%m-%d') = start_date;
        
        insert into table_temp
        select  day(date),date,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,(amount) from deposit_sm
		where date_format(date,'%Y-%m-%d') = start_date;
        
         insert into table_temp
        select day(date),date,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,(amount),0.00 from withdraw_sm
		where date_format(date,'%Y-%m-%d') = start_date;
	
	
    #select a.week as week_d, a.dates as dates,(a.amount) as pending,(b.amount) as sent,(c.amount) as claimed from table_pending a
    #left join table_sent b on a.week=b.week  left join table_claimed c on c.week=a.week group by a.week;
    
      select id,dates as DATE,(pending) as PENDING,
      (claimed) as CLAIMED,(vClaimed) as CLAIM_PAMOUNT,(claimed_net_prof) as NET_PROF_CLAIM,
      
     (sent) as SENT,(trans_charge) as NCHARGE,(vSent_amount) as SENT_PAMOUNT,(Sent_net_prof) as NET_PROF_SENT,
	 (deposit) as DEPOSIT,
     (withdraw) as WITHDRAW from table_temp where dates is not null
		order by dates;
    
    
    
     /*
        sent decimal(18,2) 0.00,
        trans_charge decimal(18,2),
        vSent_amount decimal(18,2),
        Sent_net_prof decimal(18,2),
        
        claimed decimal(18,2) 0.00,
        vClaimed decimal(18,2) 0.00,
        claimed_net_prof decimal(18,2),
       */ 
    
    
    
    
    
    #select * from table_claimed;
   
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `genReportWeeklySm` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `genReportWeeklySm`(`start_date` VARCHAR(45), `end_date` VARCHAR(45))
begin

	 drop temporary table if exists table_temp ;
   

		
    create temporary table table_temp
    (
		id  int(45),
        dates date null,
        pending decimal(18,2) null,
        sent decimal(18,2) null,
        claimed decimal(18,2) null,
        withdraw decimal(18,2) null,
        deposit  decimal(18,2) null
        
    );
		insert into table_temp
        select week(date),date_format(date,'%Y-%m-%d') as dates,sum(amount),0.00,0.00,0.00,0.00 from transaction_sm
		where date_format(date,'%Y-%m-%d') between start_date and end_date and status=1
		group by week(date); 
	
    
		insert into table_temp	
		select week(date),date_format(date,'%Y-%m-%d'),0.00,sum(cash_amount),0.00,0.00,0.00 from transaction_sm
		where date_format(date,'%Y-%m-%d') between start_date and end_date and status=3
		group by week(date);
	
    
		insert into table_temp
        select week(date_claimed),date_format(date_claimed,'%Y-%m-%d'),0.00,0.00,sum(cash_amount),0.00,0.00 from transaction_sm
		where date_format(date_claimed,'%Y-%m-%d') between start_date and end_date and status=2
		group by week(date_claimed); 
        
        insert into table_temp
        select week(date),date_format(date,'%Y-%m-%d'),0.00,0.00,0.00,0.00,sum(amount) from deposit_sm
		where date_format(date,'%Y-%m-%d') between start_date and end_date
		group by week(date); 
        
         insert into table_temp
        select week(date),date_format(date,'%Y-%m-%d'),0.00,0.00,0.00,sum(amount),0.00 from withdraw_sm
		where date_format(date,'%Y-%m-%d') between start_date and end_date
		group by week(date); 
        
        
	
	
    #select a.week as week_d, a.dates as dates,sum(a.amount) as pending,sum(b.amount) as sent,sum(c.amount) as claimed from table_pending a
    #left join table_sent b on a.week=b.week  left join table_claimed c on c.week=a.week group by a.week;
    
      select id,dates as DATE,sum(pending) as PENDING,sum(claimed) as CLAIMED,sum(sent) as SENT,sum(deposit) as DEPOSIT,
     sum(withdraw) as WITHDRAW from table_temp where dates is not null
     group by id order by dates;
    
    
    #select * from table_claimed;
   
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `genReportWeeklySmTEST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `genReportWeeklySmTEST`(`start_date` VARCHAR(45), `end_date` VARCHAR(45))
begin

	 drop temporary table if exists table_temp ;
   

		
    create temporary table table_temp
    (
		id  int(45),
        dates date null,
        pending decimal(18,2) null,
        
        sent decimal(18,2) null,
        trans_charge decimal(18,2),
        vSent_amount decimal(18,2),
        Sent_net_prof decimal(18,2),
        
        claimed decimal(18,2) null,
        vClaimed decimal(18,2) null,
        claimed_net_prof decimal(18,2),
        
        withdraw decimal(18,2) null,
        deposit  decimal(18,2) null
        
    );
		insert into table_temp
        select week(date),date_format(date,'%Y-%m-%d') as dates,sum(amount),
        0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00           
        from view_pending_sm
		where date_format(date,'%Y-%m-%d') between start_date and end_date
		group by week(date); 
	
    
		insert into table_temp	
		select  week(date),date_format(date,'%Y-%m-%d'),0.00,
        sum(cash_amount),sum(net_charge),sum(amount),sum(sales_prof),
        0.00,0.00,0.00,0.00,0.00          
        from view_sent_sm
		where date_format(date,'%Y-%m-%d') between start_date and end_date
		group by  week(date);
	
    
		insert into table_temp
        select week(date_claimed),date_format(date_claimed,'%Y-%m-%d'),0.00,
        0.00, 0.00, 0.00, 0.00,
        sum(cash_amount),sum(amount),sum(sales_prof),0.00,0.00
        from view_claimed_sm
		where date_format(date_claimed,'%Y-%m-%d') between start_date and end_date
		group by week(date_claimed); 
        
        insert into table_temp
        select  week(date),date_format(date,'%Y-%m-%d'),0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,sum(amount) from deposit_sm
		where date_format(date,'%Y-%m-%d') between start_date and end_date
		group by week(date); 
        
         insert into table_temp
        select week(date),date_format(date,'%Y-%m-%d'),0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,sum(amount),0.00 from withdraw_sm
		where date_format(date,'%Y-%m-%d') between start_date and end_date
		group by week(date); 
        
        
	
	
    #select a.week as week_d, a.dates as dates,sum(a.amount) as pending,sum(b.amount) as sent,sum(c.amount) as claimed from table_pending a
    #left join table_sent b on a.week=b.week  left join table_claimed c on c.week=a.week group by a.week;
    
      select id,dates as DATE,sum(pending) as PENDING,
      sum(claimed) as CLAIMED,sum(vClaimed) as CLAIM_PAMOUNT,sum(claimed_net_prof) as NET_PROF_CLAIM,
      
     sum(sent) as SENT,sum(trans_charge) as NCHARGE,sum(vSent_amount) as SENT_PAMOUNT,sum(Sent_net_prof) as NET_PROF_SENT,
	 sum(deposit) as DEPOSIT,
     sum(withdraw) as WITHDRAW from table_temp where dates is not null
     group by id order by dates;
    
    
    
     /*
        sent decimal(18,2) null,
        trans_charge decimal(18,2),
        vSent_amount decimal(18,2),
        Sent_net_prof decimal(18,2),
        
        claimed decimal(18,2) null,
        vClaimed decimal(18,2) null,
        claimed_net_prof decimal(18,2),
       */ 
    
    
    
    
    
    #select * from table_claimed;
   
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getBalance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getBalance`(`dateTo` DATE)
BEGIN
	   drop table if exists tempBal;
       create table tempBal(balance decimal(18,2)); 
        
       select @startDate :=  date from fr_entry limit 1;	   	   
	   select @sumClaimed := sum(cash_amount) from transaction_sm where date_format(date_claimed,'%Y-%m-%d') 
		   between date_format(@startDate,'%Y-%m-%d') and date_format(dateTo,'%Y-%m-%d') and status=2;
	   select @sumSent := sum(cash_amount) from transaction_sm where date_format(date,'%Y-%m-%d') 
		   between date_format(@startDate,'%Y-%m-%d') and date_format(dateTo,'%Y-%m-%d') and status=3;
	   select @sumDebit := sum(a.amount) 
				from fr_entry a join fr_type b 
					on a.fr_type_no = b.fr_type_no where date_format(date,'%Y-%m-%d') <= dateTo 
				and b.type = 1;
	   select @sumCredit := sum(a.amount)  
				from fr_entry a join fr_type b 
					on a.fr_type_no = b.fr_type_no where date_format(date,'%Y-%m-%d') <= dateTo 
				and b.type = 0;
       
	insert into tempBal(balance)  select ifnull(@sumDebit,0)+ifnull(@sumSent,0)-ifnull(@sumCredit,0)-ifnull(@sumClaimed,0) ;
	
    select balance as balance from tempBal;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `view_claimed_sm`
--

/*!50001 DROP VIEW IF EXISTS `view_claimed_sm`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_claimed_sm` AS select `transaction_sm`.`tran_id` AS `tran_id`,`transaction_sm`.`date` AS `date`,`transaction_sm`.`smart_money` AS `smart_money`,`transaction_sm`.`account` AS `account`,`transaction_sm`.`ref_no` AS `ref_no`,`transaction_sm`.`amount` AS `amount`,`transaction_sm`.`status` AS `status`,`transaction_sm`.`balance` AS `balance`,`transaction_sm`.`cash_amount` AS `cash_amount`,`transaction_sm`.`network_charge_no` AS `network_charge_no`,`transaction_sm`.`computation_no` AS `computation_no`,`transaction_sm`.`date_claimed` AS `date_claimed`,`transaction_sm`.`service_charge` AS `service_charge`,`transaction_sm`.`cust_id` AS `cust_id`,`transaction_sm`.`body_sms` AS `body_sms`,`transaction_sm`.`branch_no` AS `branch_no`,`transaction_sm`.`user_id` AS `user_id` from `transaction_sm` where (`transaction_sm`.`status` = 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_pending_sm`
--

/*!50001 DROP VIEW IF EXISTS `view_pending_sm`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_pending_sm` AS select `transaction_sm`.`tran_id` AS `tran_id`,`transaction_sm`.`date` AS `date`,`transaction_sm`.`smart_money` AS `smart_money`,`transaction_sm`.`account` AS `account`,`transaction_sm`.`ref_no` AS `ref_no`,`transaction_sm`.`amount` AS `amount`,`transaction_sm`.`status` AS `status`,`transaction_sm`.`balance` AS `balance`,`transaction_sm`.`cash_amount` AS `cash_amount`,`transaction_sm`.`network_charge_no` AS `network_charge_no`,`transaction_sm`.`computation_no` AS `computation_no`,`transaction_sm`.`date_claimed` AS `date_claimed`,`transaction_sm`.`service_charge` AS `service_charge`,`transaction_sm`.`cust_id` AS `cust_id` from `transaction_sm` where (`transaction_sm`.`status` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_sent2`
--

/*!50001 DROP VIEW IF EXISTS `view_sent2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_sent2` AS select `transaction_sm`.`tran_id` AS `tran_id`,`transaction_sm`.`date` AS `date`,`transaction_sm`.`smart_money` AS `smart_money`,`transaction_sm`.`account` AS `account`,`transaction_sm`.`ref_no` AS `ref_no`,`transaction_sm`.`amount` AS `amount`,`transaction_sm`.`status` AS `status`,`transaction_sm`.`balance` AS `balance`,`transaction_sm`.`cash_amount` AS `cash_amount`,`transaction_sm`.`network_charge_no` AS `network_charge_no`,`transaction_sm`.`computation_no` AS `computation_no`,`transaction_sm`.`date_claimed` AS `date_claimed`,`transaction_sm`.`service_charge` AS `service_charge`,`transaction_sm`.`cust_id` AS `cust_id`,`transaction_sm`.`body_sms` AS `body_sms`,`transaction_sm`.`branch_no` AS `branch_no`,`transaction_sm`.`user_id` AS `user_id` from `transaction_sm` where (`transaction_sm`.`status` = 3) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_sent_sm`
--

/*!50001 DROP VIEW IF EXISTS `view_sent_sm`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_sent_sm` AS select `a`.`tran_id` AS `tran_id`,`a`.`date` AS `date`,`a`.`smart_money` AS `smart_money`,`a`.`account` AS `account`,`a`.`ref_no` AS `ref_no`,`a`.`amount` AS `amount`,`a`.`status` AS `status`,`a`.`balance` AS `balance`,`a`.`cash_amount` AS `cash_amount`,`a`.`network_charge_no` AS `network_charge_no`,`a`.`computation_no` AS `computation_no`,`a`.`date_claimed` AS `date_claimed`,`a`.`service_charge` AS `service_charge`,`a`.`cust_id` AS `cust_id`,`b`.`charge` AS `net_charge`,(`a`.`cash_amount` - (`a`.`amount` + `b`.`charge`)) AS `sales_prof` from (`transaction_sm` `a` join `sm_net_charge` `b` on((`a`.`network_charge_no` = `b`.`network_charge_no`))) where (`a`.`status` = 3) */;
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

-- Dump completed on 2017-11-15 12:50:11