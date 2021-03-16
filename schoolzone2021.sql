-- MySQL dump 10.13  Distrib 5.6.28, for Win64 (x86_64)
--
-- Host: localhost    Database: schoolzone2021
-- ------------------------------------------------------
-- Server version	5.6.28-log

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
-- Table structure for table `comm_batch_access`
--

DROP TABLE IF EXISTS `comm_batch_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_batch_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `batchMaster_Id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `batchMaster_Id` (`batchMaster_Id`),
  KEY `userId` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_batch_access`
--

LOCK TABLES `comm_batch_access` WRITE;
/*!40000 ALTER TABLE `comm_batch_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `comm_batch_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_message_log`
--

DROP TABLE IF EXISTS `comm_message_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_message_log` (
  `index` int(11) NOT NULL AUTO_INCREMENT,
  `message_type` varchar(255) DEFAULT NULL COMMENT 'Email/SMS',
  `User_Id` int(11) DEFAULT NULL,
  `sender_address` varchar(255) DEFAULT NULL,
  `message_format_log_id` varchar(255) DEFAULT NULL,
  `Status` longtext,
  `ID` varchar(255) DEFAULT NULL,
  `SUBMITDATE` varchar(255) DEFAULT NULL,
  `timestamp` varchar(255) DEFAULT NULL,
  `sender_name` varchar(50) NOT NULL,
  `no_of_characters` int(11) DEFAULT '0',
  `Decrypt_Msg` longtext,
  `SenderHeader` varchar(255) DEFAULT NULL,
  `userIdType` varchar(255) DEFAULT NULL COMMENT 'CR_Id / SBM_Id / AD_Id',
  `moduleType` varchar(255) DEFAULT NULL COMMENT 'Communication / Login / Modification / FeeAllocation',
  `DeliveryAPIStatus` varchar(255) DEFAULT NULL,
  `template_Id` varchar(255) DEFAULT NULL,
  `email_Subjects` varchar(255) DEFAULT NULL,
  `attachment_path` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_message_log`
--

LOCK TABLES `comm_message_log` WRITE;
/*!40000 ALTER TABLE `comm_message_log` DISABLE KEYS */;
INSERT INTO `comm_message_log` VALUES (1,'SMS',1,'9833620268',NULL,'SUBMIT_SUCCESS','6a0b7fda-35d3-219e-4eaa-9025434b9602',NULL,'2021-03-11 02:03:01','1',42,'Dear Staff, Your Verfication Pin : V532661','SIWSAD','StaffLoginId','UserVerfication',NULL,'1207161192523376255',NULL,NULL),(2,'Email',1,'patelakshay55@gmail.com',NULL,'Success',NULL,NULL,'2021-03-11 02:03:01','1',42,'Dear Staff, Your Verfication Pin : V532661','SIWSAD','StaffLoginId','UserVerfication',NULL,NULL,'Verfication Code',NULL);
/*!40000 ALTER TABLE `comm_message_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_headermaster`
--

DROP TABLE IF EXISTS `fee_headermaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fee_headermaster` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionmaster_Id` int(11) NOT NULL,
  `header_name` varchar(255) NOT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `type_of_receipt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_headermaster`
--

LOCK TABLES `fee_headermaster` WRITE;
/*!40000 ALTER TABLE `fee_headermaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `fee_headermaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result_assessment_pattern`
--

DROP TABLE IF EXISTS `result_assessment_pattern`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `result_assessment_pattern` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `examtype_Id` int(11) NOT NULL,
  `coursemaster_Id` int(11) NOT NULL,
  `out_of_marks` varchar(255) DEFAULT NULL,
  `passing_marks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result_assessment_pattern`
--

LOCK TABLES `result_assessment_pattern` WRITE;
/*!40000 ALTER TABLE `result_assessment_pattern` DISABLE KEYS */;
/*!40000 ALTER TABLE `result_assessment_pattern` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setup_academicyear`
--

DROP TABLE IF EXISTS `setup_academicyear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setup_academicyear` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `academic_year` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `isDefault` int(11) NOT NULL DEFAULT '0',
  `sectionmaster_Id` int(11) NOT NULL,
  `sequence_no` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setup_academicyear`
--

LOCK TABLES `setup_academicyear` WRITE;
/*!40000 ALTER TABLE `setup_academicyear` DISABLE KEYS */;
INSERT INTO `setup_academicyear` VALUES (1,'AY-2017-18','2017-18',NULL,'2017-06-05','2018-03-17',0,1,2),(2,'AY-2018-19','2018-19',NULL,'2018-06-12','2019-04-12',1,1,1);
/*!40000 ALTER TABLE `setup_academicyear` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setup_batchmaster`
--

DROP TABLE IF EXISTS `setup_batchmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setup_batchmaster` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `program_Id` int(11) NOT NULL,
  `academicyear_Id` int(11) NOT NULL,
  `batch_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setup_batchmaster`
--

LOCK TABLES `setup_batchmaster` WRITE;
/*!40000 ALTER TABLE `setup_batchmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `setup_batchmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setup_coursemaster`
--

DROP TABLE IF EXISTS `setup_coursemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setup_coursemaster` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `programmaster_Id` varchar(11) DEFAULT NULL,
  `groupmaster_Id` varchar(11) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `sem_Id` varchar(255) DEFAULT NULL,
  `course_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setup_coursemaster`
--

LOCK TABLES `setup_coursemaster` WRITE;
/*!40000 ALTER TABLE `setup_coursemaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `setup_coursemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setup_coursetopic`
--

DROP TABLE IF EXISTS `setup_coursetopic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setup_coursetopic` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `coursemaster_Id` int(11) NOT NULL,
  `topic_name` varchar(255) DEFAULT NULL,
  `topic_abbreviation` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `weightage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setup_coursetopic`
--

LOCK TABLES `setup_coursetopic` WRITE;
/*!40000 ALTER TABLE `setup_coursetopic` DISABLE KEYS */;
/*!40000 ALTER TABLE `setup_coursetopic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setup_departmentmaster`
--

DROP TABLE IF EXISTS `setup_departmentmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setup_departmentmaster` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionmaster_Id` int(11) NOT NULL,
  `department_name` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `department_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setup_departmentmaster`
--

LOCK TABLES `setup_departmentmaster` WRITE;
/*!40000 ALTER TABLE `setup_departmentmaster` DISABLE KEYS */;
INSERT INTO `setup_departmentmaster` VALUES (1,1,'IT','IT','All'),(2,1,'CS','CS','All');
/*!40000 ALTER TABLE `setup_departmentmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setup_examtypemaster`
--

DROP TABLE IF EXISTS `setup_examtypemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setup_examtypemaster` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `programmaster_Id` int(11) NOT NULL,
  `exam_type_name` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setup_examtypemaster`
--

LOCK TABLES `setup_examtypemaster` WRITE;
/*!40000 ALTER TABLE `setup_examtypemaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `setup_examtypemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setup_groupmaster`
--

DROP TABLE IF EXISTS `setup_groupmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setup_groupmaster` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `programmaster_Id` int(11) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `previous_group_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setup_groupmaster`
--

LOCK TABLES `setup_groupmaster` WRITE;
/*!40000 ALTER TABLE `setup_groupmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `setup_groupmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setup_links`
--

DROP TABLE IF EXISTS `setup_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setup_links` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` varchar(11) DEFAULT NULL,
  `depth` int(11) DEFAULT '0',
  `header` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setup_links`
--

LOCK TABLES `setup_links` WRITE;
/*!40000 ALTER TABLE `setup_links` DISABLE KEYS */;
INSERT INTO `setup_links` VALUES (1,'0',0,'Settings',NULL),(2,'1',1,'User Management','user_management/homescreen.php');
/*!40000 ALTER TABLE `setup_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setup_links_access`
--

DROP TABLE IF EXISTS `setup_links_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setup_links_access` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `user_id` int(6) NOT NULL,
  `function_id` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setup_links_access`
--

LOCK TABLES `setup_links_access` WRITE;
/*!40000 ALTER TABLE `setup_links_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `setup_links_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setup_programmaster`
--

DROP TABLE IF EXISTS `setup_programmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setup_programmaster` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionmaster_Id` int(11) NOT NULL,
  `program_name` varchar(255) NOT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `program_code` varchar(255) DEFAULT NULL,
  `year_of_program` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setup_programmaster`
--

LOCK TABLES `setup_programmaster` WRITE;
/*!40000 ALTER TABLE `setup_programmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `setup_programmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setup_sectionmaildetails`
--

DROP TABLE IF EXISTS `setup_sectionmaildetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setup_sectionmaildetails` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionmaster_Id` int(11) NOT NULL,
  `host` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `setFromAddress` varchar(255) NOT NULL,
  `setFromName` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setup_sectionmaildetails`
--

LOCK TABLES `setup_sectionmaildetails` WRITE;
/*!40000 ALTER TABLE `setup_sectionmaildetails` DISABLE KEYS */;
INSERT INTO `setup_sectionmaildetails` VALUES (1,1,'mail.siwscollege.edu.in','itadmin@siwscollege.edu.in','Pass@2314','itadmin@siwscollege.edu.in','SIWS');
/*!40000 ALTER TABLE `setup_sectionmaildetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setup_sectionmaster`
--

DROP TABLE IF EXISTS `setup_sectionmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setup_sectionmaster` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `section_name` varchar(255) NOT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `section_logo` varchar(255) DEFAULT NULL,
  `school_type` varchar(255) DEFAULT NULL,
  `board` varchar(255) DEFAULT NULL,
  `address` longtext,
  `contact_no` varchar(255) DEFAULT NULL,
  `principal` varchar(255) DEFAULT NULL,
  `principal_contact_no` varchar(255) DEFAULT NULL,
  `principal_mobile` varchar(255) DEFAULT NULL,
  `principal_email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `udise_no` varchar(255) DEFAULT NULL,
  `funding_type` varchar(255) DEFAULT NULL,
  `open_login` varchar(22) NOT NULL DEFAULT '1',
  `maintenance_message` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setup_sectionmaster`
--

LOCK TABLES `setup_sectionmaster` WRITE;
/*!40000 ALTER TABLE `setup_sectionmaster` DISABLE KEYS */;
INSERT INTO `setup_sectionmaster` VALUES (1,'South Indians\' Welfare Society\'s','SIWS','assets/section_logos/siws_logo.png','School Type','School Board','School Address','9999999998','Principal','8888888888','8888888888','s@gmail.com','sdd','dsd','sd','1','The portal is under maintenance. Please try again after sometime');
/*!40000 ALTER TABLE `setup_sectionmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_activitylog`
--

DROP TABLE IF EXISTS `user_activitylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_activitylog` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `activityType_Id` int(11) NOT NULL,
  `user_Id` int(11) NOT NULL,
  `userType` int(11) NOT NULL COMMENT '0 : Staff, 1 : Student',
  `pagelink_Id` varchar(255) DEFAULT NULL,
  `timeStamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_activitylog`
--

LOCK TABLES `user_activitylog` WRITE;
/*!40000 ALTER TABLE `user_activitylog` DISABLE KEYS */;
INSERT INTO `user_activitylog` VALUES (4,1,1,0,NULL,'2021-03-11 20:12:34'),(5,1,1,0,NULL,'2021-03-11 23:15:01'),(6,1,1,0,NULL,'2021-03-15 04:18:35'),(7,1,1,0,NULL,'2021-03-16 03:49:21'),(8,1,1,0,NULL,'2021-03-16 03:58:38'),(9,2,1,0,'2','2021-03-16 06:43:35'),(10,2,1,0,'2','2021-03-16 07:24:52'),(11,2,1,0,'2','2021-03-15 20:17:00'),(12,2,1,0,'2','2021-03-15 20:27:46'),(13,2,1,0,'2','2021-03-15 21:31:56'),(14,2,1,0,'2','2021-03-15 21:34:42'),(15,2,1,0,'2','2021-03-15 21:35:07'),(16,2,1,0,'2','2021-03-15 21:37:40'),(17,2,1,0,'2','2021-03-15 21:38:13'),(18,2,1,0,'2','2021-03-15 21:38:54'),(19,2,1,0,'2','2021-03-15 21:39:22'),(20,2,1,0,'2','2021-03-15 21:40:18'),(21,2,1,0,'2','2021-03-15 21:41:44');
/*!40000 ALTER TABLE `user_activitylog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_activitymaster`
--

DROP TABLE IF EXISTS `user_activitymaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_activitymaster` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `activityType` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_activitymaster`
--

LOCK TABLES `user_activitymaster` WRITE;
/*!40000 ALTER TABLE `user_activitymaster` DISABLE KEYS */;
INSERT INTO `user_activitymaster` VALUES (1,'Login'),(2,'Menu');
/*!40000 ALTER TABLE `user_activitymaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_batchaccess`
--

DROP TABLE IF EXISTS `user_batchaccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_batchaccess` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `batchmaster_Id` int(11) NOT NULL,
  `stafflogin_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_batchaccess`
--

LOCK TABLES `user_batchaccess` WRITE;
/*!40000 ALTER TABLE `user_batchaccess` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_batchaccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_stafflogin`
--

DROP TABLE IF EXISTS `user_stafflogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_stafflogin` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `login_count` varchar(255) DEFAULT NULL,
  `reg_mobile_no` varchar(255) DEFAULT NULL,
  `reg_email_address` varchar(255) DEFAULT NULL,
  `gsuite_login_Id` varchar(255) DEFAULT NULL,
  `gsuite_email_address` varchar(255) DEFAULT NULL,
  `staff_type` varchar(255) DEFAULT NULL COMMENT '1: Admin, 0: Staff',
  `staff_status` varchar(255) DEFAULT NULL COMMENT '1: Active, 0: Disable',
  `departmentmaster_Id` varchar(255) DEFAULT NULL,
  `verificationCode` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_stafflogin`
--

LOCK TABLES `user_stafflogin` WRITE;
/*!40000 ALTER TABLE `user_stafflogin` DISABLE KEYS */;
INSERT INTO `user_stafflogin` VALUES (1,'test','$2y$10$Qbd1UysYux5fd81w0PqFhu0wzhoRziONHrycrfpExubGm8JC2nsVi','42','9833244989','patelakshay55@gmail.com',NULL,NULL,'1','1','1','V532661','2021-03-13');
/*!40000 ALTER TABLE `user_stafflogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_studentregister`
--

DROP TABLE IF EXISTS `user_studentregister`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_studentregister` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(255) NOT NULL,
  `gr_no` varchar(255) DEFAULT NULL,
  `student_Id` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_studentregister`
--

LOCK TABLES `user_studentregister` WRITE;
/*!40000 ALTER TABLE `user_studentregister` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_studentregister` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-16 15:40:51
