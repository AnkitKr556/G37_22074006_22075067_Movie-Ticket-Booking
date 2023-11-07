-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: BoxOffice
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.23.04.1

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
-- Table structure for table `accounts_bookings`
--

DROP TABLE IF EXISTS `accounts_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_bookings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `useat` varchar(100) NOT NULL,
  `shows_id` int NOT NULL,
  `user_id` int NOT NULL,
  `len` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accounts_bookings_shows_id_ce920ea8_fk_accounts_shows_shows` (`shows_id`),
  KEY `accounts_bookings_user_id_dd095ae2_fk_auth_user_id` (`user_id`),
  CONSTRAINT `accounts_bookings_shows_id_ce920ea8_fk_accounts_shows_shows` FOREIGN KEY (`shows_id`) REFERENCES `accounts_shows` (`shows`),
  CONSTRAINT `accounts_bookings_user_id_dd095ae2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_bookings`
--

LOCK TABLES `accounts_bookings` WRITE;
/*!40000 ALTER TABLE `accounts_bookings` DISABLE KEYS */;
INSERT INTO `accounts_bookings` VALUES (32,'#A2,#B1,#D2',8,1,3),(33,'#A4,#B4,#C4,#D4',8,1,4),(35,'#A9,#B7,#D8',8,1,3),(36,'#A5,#C5',9,3,2),(37,'#C5,#C6',8,1,2),(38,'#B5',7,1,1),(39,'#D3,#D8',12,1,2),(40,'',6,3,1),(41,'',6,3,1),(42,'#D10',6,3,1),(43,'#D9,#D10',6,3,2),(44,'#A3,#D9,#D10',6,3,3),(45,'',6,3,1),(46,'#B7,#B8',6,3,2),(47,'#A3',12,3,1);
/*!40000 ALTER TABLE `accounts_bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cinema`
--

DROP TABLE IF EXISTS `accounts_cinema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_cinema` (
  `cinema` int NOT NULL AUTO_INCREMENT,
  `cinema_name` varchar(50) NOT NULL,
  `phoneno` varchar(15) NOT NULL,
  `city` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`cinema`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cinema`
--

LOCK TABLES `accounts_cinema` WRITE;
/*!40000 ALTER TABLE `accounts_cinema` DISABLE KEYS */;
INSERT INTO `accounts_cinema` VALUES (1,'IP Sigra','9874563210','Varanasi','Sigra , Varanasi, U.P.'),(4,'IP Vijaya','7894612345','Varanasi','Bhelupur, Varanasi'),(6,'Carnival Cinemas','7894612345','Varanasi','2nd Floor PDR Mall, Luxa Rd, Varanasi');
/*!40000 ALTER TABLE `accounts_cinema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_movie`
--

DROP TABLE IF EXISTS `accounts_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_movie` (
  `movie` int NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(50) NOT NULL,
  `movie_des` longtext NOT NULL,
  `movie_rating` decimal(3,1) NOT NULL,
  `movie_poster` varchar(100) NOT NULL,
  `movie_genre` varchar(50) NOT NULL,
  `movie_duration` varchar(10) NOT NULL,
  `movie_trailer` varchar(200) NOT NULL,
  `movie_rdate` date NOT NULL,
  PRIMARY KEY (`movie`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_movie`
--

LOCK TABLES `accounts_movie` WRITE;
/*!40000 ALTER TABLE `accounts_movie` DISABLE KEYS */;
INSERT INTO `accounts_movie` VALUES (2,'Aankh Micholi','A family of misfits sets out to get the daughter of the house married to a well-to-do NRI visiting their town in Punjab. What ensues is a series of outlandish comical twists and turns as they all go out of their way to hide some secrets about the girl from the prospective suitor and his family. From the director of Oh My God and 102 Not Out comes a family entertainer like no other!',8.4,'movies/poster/Aankh_Micholi.png','Comedy','1hr 45min','https://www.youtube.com/watch?v=KBuUqcJ5rco&t=1s&pp=ygUVYWFua2ggbWljaG9saSB0cmFpbGVy','2023-11-02'),(3,'Leo','A cafe owner becomes a local hero but his actions being forth consequences from a dangerous world that can shake his carefully constructed life',8.4,'movies/poster/leo_paYoeXO.png','Action | Thriller','2hr 44min','https://www.youtube.com/watch?v=Po3jStA673E','2023-10-19'),(4,'Tiger3','Tiger and Zoya are back - to save the country and their family. This time it`s personal!',8.0,'movies/poster/tiger3_4uyHYa7.png','Action | Thriller','1hr 45min','https://www.youtube.com/watch?v=36IOMO_NL5M','2023-11-12'),(5,'Aquaman And The Lost Kingdom','When an ancient power is unleashed, Aquaman must forge an uneasy alliance with an unlikely ally to protect Atlantis, and the world, from irreversible devastation.',7.6,'movies/poster/aquaman_XHJbbVd.png','Action | Adventure | Fantasy | Superhero','1hr 45min','https://www.youtube.com/watch?v=FV3bqvOHRQo','2023-12-21'),(6,'The Marvels','Carol Danvers aka Captain Marvel has reclaimed her identity from the tyrannical Kree and taken revenge on the Supreme Intelligence. But unintended consequences see Carol shouldering the burden of a destabilized universe.',8.2,'movies/poster/Marves_tdPGcrS.png','Action |  Adventure | Fantasy','1hr 35min','https://www.youtube.com/watch?v=wS_qbDztgVY','2023-11-10'),(7,'Tejus','Tejas showcases the courageous journey of a female fighter pilot, Tejas Gill. Determined to safeguard the nation from threats of terrorism, she is willing to go to any length for the love of her country.',5.8,'movies/poster/Tejus_TcbYgyx.png','Drama | Thriller','1h 58m','https://www.youtube.com/watch?v=pQmQUWe4UeU','2023-10-27'),(8,'12th Fail','Based on Anurag Pathak`s bestselling novel of the same name, 12th Fail depicts the true story of an IPS officer Manoj Kumar Sharma hailing from a small town in Chambal, who fearlessly embraced the idea of restarting his academic journey and reclaiming his destiny at a place where millions of students attempt for the world`s toughest competitive exam, UPSC.',9.5,'movies/poster/12_fail.png','Drama','2h 27m','https://www.youtube.com/watch?v=Ws8xbyBafI0','2023-10-27');
/*!40000 ALTER TABLE `accounts_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_shows`
--

DROP TABLE IF EXISTS `accounts_shows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_shows` (
  `shows` int NOT NULL AUTO_INCREMENT,
  `time` time(6) NOT NULL,
  `price` int NOT NULL,
  `cinema_id` int NOT NULL,
  `movie_id` int NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`shows`),
  KEY `accounts_shows_cinema_id_a9c57c57_fk_accounts_cinema_cinema` (`cinema_id`),
  KEY `accounts_shows_movie_id_68d70362_fk_accounts_movie_movie` (`movie_id`),
  CONSTRAINT `accounts_shows_cinema_id_a9c57c57_fk_accounts_cinema_cinema` FOREIGN KEY (`cinema_id`) REFERENCES `accounts_cinema` (`cinema`),
  CONSTRAINT `accounts_shows_movie_id_68d70362_fk_accounts_movie_movie` FOREIGN KEY (`movie_id`) REFERENCES `accounts_movie` (`movie`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_shows`
--

LOCK TABLES `accounts_shows` WRITE;
/*!40000 ALTER TABLE `accounts_shows` DISABLE KEYS */;
INSERT INTO `accounts_shows` VALUES (6,'12:00:00.000000',300,1,2,'2023-11-09'),(7,'12:00:00.000000',300,1,2,'2023-11-05'),(8,'18:00:00.000000',300,1,3,'2023-11-08'),(9,'11:39:52.000000',350,4,3,'2023-11-05'),(10,'12:00:00.000000',430,6,4,'2023-12-11'),(11,'12:00:00.000000',400,6,5,'2023-11-30'),(12,'00:00:00.000000',370,4,6,'2023-11-15'),(13,'12:00:00.000000',260,6,7,'2023-11-03'),(14,'12:00:00.000000',380,4,8,'2023-10-25'),(15,'18:00:00.000000',370,1,8,'2023-11-17');
/*!40000 ALTER TABLE `accounts_shows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add cinema',7,'add_cinema'),(26,'Can change cinema',7,'change_cinema'),(27,'Can delete cinema',7,'delete_cinema'),(28,'Can view cinema',7,'view_cinema'),(29,'Can add movie',8,'add_movie'),(30,'Can change movie',8,'change_movie'),(31,'Can delete movie',8,'delete_movie'),(32,'Can view movie',8,'view_movie'),(33,'Can add shows',9,'add_shows'),(34,'Can change shows',9,'change_shows'),(35,'Can delete shows',9,'delete_shows'),(36,'Can view shows',9,'view_shows'),(37,'Can add bookings',10,'add_bookings'),(38,'Can change bookings',10,'change_bookings'),(39,'Can delete bookings',10,'delete_bookings'),(40,'Can view bookings',10,'view_bookings');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$yIzA6K2A7fhoPHkiOdmZ0n$3p7E7GoPoMI88r56+HuvR8pxwSi4fB5rr8tShlhXcZE=','2023-11-05 12:19:40.001072',1,'Ankit','ANKIT','KUMAR','akvns777999@gmail.com',1,1,'2023-10-27 11:54:29.816536'),(2,'pbkdf2_sha256$600000$7jg8Uz8yGmizP7DR5wSLf1$/lw5XC4Ut3RT3kovPDP2Psp1Yn7+s/b8UksqrMOcS5M=','2023-10-27 22:08:35.671980',0,'user','Chetan','','',0,1,'2023-10-27 13:11:00.649874'),(3,'pbkdf2_sha256$600000$LP5T19ckTG8fArJMYhBD9T$E3Ye+A6OWnkWnXXV8I8IvOZ18zBRdbhAqcCFvj214V4=','2023-11-05 17:54:11.395454',0,'sam','sam','bhavsar','sam@itbhu.ac.in',0,1,'2023-11-02 22:33:53.400149');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-10-27 12:07:26.782381','1','IP Sigra',1,'[{\"added\": {}}]',7,1),(2,'2023-10-27 12:12:18.665515','1','Endgame',1,'[{\"added\": {}}]',8,1),(3,'2023-10-27 12:13:41.862290','1','IP Sigra | Endgame | 12:00',1,'[{\"added\": {}}]',9,1),(4,'2023-10-27 12:13:58.976194','2','IP Sigra | Endgame | 3 Pm',1,'[{\"added\": {}}]',9,1),(5,'2023-10-29 18:20:40.248872','2','Aankh Micholi',1,'[{\"added\": {}}]',8,1),(6,'2023-10-29 18:23:55.186315','3','Leo',1,'[{\"added\": {}}]',8,1),(7,'2023-10-29 18:43:55.485676','4','Tiger3',1,'[{\"added\": {}}]',8,1),(8,'2023-10-29 18:47:58.324415','5','Aquaman And The Lost Kingdom',1,'[{\"added\": {}}]',8,1),(9,'2023-10-29 18:49:23.303960','6','The Marvels',1,'[{\"added\": {}}]',8,1),(10,'2023-10-29 18:50:03.166159','6','The Marvels',2,'[{\"changed\": {\"fields\": [\"Movie genre\", \"Movie duration\"]}}]',8,1),(11,'2023-10-29 18:54:15.451386','7','Tejus',1,'[{\"added\": {}}]',8,1),(12,'2023-10-29 18:55:40.158205','8','12th Fail',1,'[{\"added\": {}}]',8,1),(13,'2023-10-29 18:58:53.701371','8','12th Fail',2,'[{\"changed\": {\"fields\": [\"Movie poster\"]}}]',8,1),(14,'2023-10-29 18:59:12.307963','4','Tiger3',2,'[{\"changed\": {\"fields\": [\"Movie poster\"]}}]',8,1),(15,'2023-11-02 21:49:53.416075','7','Tejus',2,'[{\"changed\": {\"fields\": [\"Movie rdate\"]}}]',8,1),(16,'2023-11-02 21:50:25.332290','9','check',1,'[{\"added\": {}}]',8,1),(17,'2023-11-02 23:47:39.802973','2','Aankh Micholi',2,'[{\"changed\": {\"fields\": [\"Movie trailer\", \"Movie rdate\"]}}]',8,1),(18,'2023-11-02 23:48:17.156403','1','Endgame',2,'[{\"changed\": {\"fields\": [\"Movie trailer\", \"Movie rdate\"]}}]',8,1),(19,'2023-11-05 09:15:40.371104','1','Endgame',3,'',8,1),(20,'2023-11-05 09:43:12.296322','6','IP Sigra | Aankh Micholi | 12:00:00',1,'[{\"added\": {}}]',9,1),(21,'2023-11-05 09:44:26.281362','7','IP Sigra | Aankh Micholi | 12:00:00',1,'[{\"added\": {}}]',9,1),(22,'2023-11-05 09:47:38.835657','8','IP Sigra | Leo | 18:00:00',1,'[{\"added\": {}}]',9,1),(23,'2023-11-05 10:15:47.757002','8','IP Sigra | Leo | 18:00:00',2,'[{\"changed\": {\"fields\": [\"Time\"]}}]',9,1),(24,'2023-11-05 10:19:05.762116','30','Ankit | Aankh Micholi | #A2,#D5',3,'',10,1),(25,'2023-11-05 11:39:17.660621','4','IP Vijaya',1,'[{\"added\": {}}]',7,1),(26,'2023-11-05 11:39:59.480412','9','IP Vijaya | Leo | 11:39:52',1,'[{\"added\": {}}]',9,1),(27,'2023-11-05 13:15:13.810175','9','check',3,'',8,1),(28,'2023-11-05 14:11:09.536939','5','Aquaman And The Lost Kingdom',2,'[{\"changed\": {\"fields\": [\"Movie rdate\"]}}]',8,1),(29,'2023-11-05 14:11:26.452365','6','The Marvels',2,'[{\"changed\": {\"fields\": [\"Movie rdate\"]}}]',8,1),(30,'2023-11-05 14:11:41.196056','8','12th Fail',2,'[{\"changed\": {\"fields\": [\"Movie rdate\"]}}]',8,1),(31,'2023-11-05 17:46:53.407372','6','Carnival Cinemas',1,'[{\"added\": {}}]',7,1),(32,'2023-11-05 17:47:43.725921','10','Carnival Cinemas | Tiger3 | 12:00:00',1,'[{\"added\": {}}]',9,1),(33,'2023-11-05 17:48:23.567745','11','Carnival Cinemas | Aquaman And The Lost Kingdom | 12:00:00',1,'[{\"added\": {}}]',9,1),(34,'2023-11-05 17:48:43.618941','12','IP Vijaya | The Marvels | 00:00:00',1,'[{\"added\": {}}]',9,1),(35,'2023-11-05 17:49:05.483984','13','Carnival Cinemas | Tejus | 12:00:00',1,'[{\"added\": {}}]',9,1),(36,'2023-11-05 17:49:41.719728','14','IP Vijaya | 12th Fail | 12:00:00',1,'[{\"added\": {}}]',9,1),(37,'2023-11-05 17:50:31.973491','15','IP Sigra | 12th Fail | 18:00:00',1,'[{\"added\": {}}]',9,1),(38,'2023-11-05 17:51:08.710123','31','Ankit | Leo | #A2,#D2',3,'',10,1),(39,'2023-11-05 17:51:14.839696','34','Ankit | Leo | #A4,#B4,#C4,#D4',2,'[]',10,1),(40,'2023-11-05 17:51:21.318763','34','Ankit | Leo | #A4,#B4,#C4,#D4',3,'',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (10,'accounts','bookings'),(7,'accounts','cinema'),(8,'accounts','movie'),(9,'accounts','shows'),(1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-10-27 11:48:36.135718'),(2,'auth','0001_initial','2023-10-27 11:48:36.729233'),(3,'accounts','0001_initial','2023-10-27 11:48:37.030713'),(4,'accounts','0002_shows_date','2023-10-27 11:48:37.095755'),(5,'accounts','0003_movie_movie_trailer','2023-10-27 11:48:37.130881'),(6,'accounts','0004_movie_movie_rdate','2023-10-27 11:48:37.173224'),(7,'admin','0001_initial','2023-10-27 11:48:37.299515'),(8,'admin','0002_logentry_remove_auto_add','2023-10-27 11:48:37.307252'),(9,'admin','0003_logentry_add_action_flag_choices','2023-10-27 11:48:37.314867'),(10,'contenttypes','0002_remove_content_type_name','2023-10-27 11:48:37.404481'),(11,'auth','0002_alter_permission_name_max_length','2023-10-27 11:48:37.457325'),(12,'auth','0003_alter_user_email_max_length','2023-10-27 11:48:37.486411'),(13,'auth','0004_alter_user_username_opts','2023-10-27 11:48:37.496691'),(14,'auth','0005_alter_user_last_login_null','2023-10-27 11:48:37.551106'),(15,'auth','0006_require_contenttypes_0002','2023-10-27 11:48:37.555252'),(16,'auth','0007_alter_validators_add_error_messages','2023-10-27 11:48:37.564410'),(17,'auth','0008_alter_user_username_max_length','2023-10-27 11:48:37.625176'),(18,'auth','0009_alter_user_last_name_max_length','2023-10-27 11:48:37.669400'),(19,'auth','0010_alter_group_name_max_length','2023-10-27 11:48:37.686211'),(20,'auth','0011_update_proxy_permissions','2023-10-27 11:48:37.695331'),(21,'auth','0012_alter_user_first_name_max_length','2023-10-27 11:48:37.737667'),(22,'sessions','0001_initial','2023-10-27 11:48:37.765700'),(23,'accounts','0005_alter_movie_movie_trailer','2023-11-02 20:32:40.981118'),(24,'accounts','0006_alter_movie_movie_rdate_alter_movie_movie_trailer_and_more','2023-11-05 14:12:03.940673'),(25,'accounts','0007_alter_movie_movie_trailer','2023-11-05 14:12:03.945279');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('4tjh24mvzlbq3ouqys7rvnxz304psgkn','.eJxVjMsOwiAQRf-FtSEgj4JL934DmWEGqRqalHZl_HdD0oVu7znnvkWCfatp77ymmcRFGHH63RDyk9sA9IB2X2Re2rbOKIciD9rlbSF-XQ_376BCr6O2OpAzPlowSmNURDCxKd5ORCUWYASKHHzAorzNzoGN5LLyOmSNZ_H5AvWbOGw:1qzhK7:TEFjQD5pC7OG6FFm7svREsViO4INTZfNg49YKUoDLg4','2023-11-19 17:54:11.399545'),('lilfyrcnpl7laqz5czp6g69n8d1br72q','.eJxVjMsOwiAQRf-FtSHDs-DSvd9ABhikaiAp7cr479qkC93ec859sYDbWsM2aAlzZmcm2el3i5ge1HaQ79hunafe1mWOfFf4QQe_9kzPy-H-HVQc9VtPxWkN3qBSBBoweynRoAVThARwIpLyExVyAixI65xxBgt6rUT0JrH3B7VmNq4:1qwMcF:6MMqu-tTsKeuZuO4i-cQhgjIDPJEPrWeEiduqs1OvSs','2023-11-10 13:11:07.271852'),('tshhz3lyxt57r1m1fpuuq4i5axxuvuzv','.eJxVjDkOwjAURO_iGlnYzvdCSc8ZrIkXHEC2FCcV4u4kUgpoppj3Zt7MY12KX3ua_RTZhQl2-u1GhGeqO4gP1HvjodVlnka-K_ygnd9aTK_r4f4dFPSyrc8gpaEEEQYzCCGdUTJuIUyGgUsKOVkNktrkaK12IB1CkiCDTGCfL7iUN34:1qwhsC:dbOUt2Qsdt6b0IQQT4_OcPgQtYs3Nsm2ZbVwatGbSyM','2023-11-11 11:53:00.488827');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-06  3:34:33
