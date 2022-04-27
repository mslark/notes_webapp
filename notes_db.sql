-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: notes_db
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(3000) NOT NULL,
  `removed` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (87,'╨Ш╨╜╤Б╤В╤А╤Г╨║╤Ж╨╕╤П\r\n╨Ф╨╗╤П ╤Б╨╛╨╖╨┤╨░╨╜╨╕╤П ╨╜╨╛╨▓╨╛╨╣ ╨╖╨░╨╝╨╡╤В╨║╨╕ ╨╜╨░╨╢╨╝╨╕╤В╨╡ \"+\", ╨▓╨▓╨╡╨┤╨╕╤В╨╡ ╤В╨╡╨║╤Б╤В ╨▓ ╨┐╨╛╨╗╨╡ ╨▓╨▓╨╛╨┤╨░ ╨╕ ╨╜╨░╨╢╨╝╨╕╤В╨╡ \"╨Ю╤В╨┐╤А╨░╨▓╨╕╤В╤М\".\r\n╨Ф╨╗╤П ╤А╨╡╨┤╨░╨║╤В╨╕╤А╨╛╨▓╨░╨╜╨╕╤П ╨╗╤О╨▒╨╛╨╣ ╨╖╨░╨╝╨╡╤В╨║╨╕ ╨║╨╗╨╕╨║╨╜╨╕╤В╨╡ ╨╜╨░ ╨╜╨╡╤С.\r\n╨Ф╨╗╤П ╤Г╨┤╨░╨╗╨╡╨╜╨╕╤П ╨╗╤О╨▒╨╛╨╣ ╨╖╨░╨╝╨╡╤В╨║╨╕ ╨╜╨░╨╢╨╝╨╕╤В╨╡ \"X\" ╤А╤П╨┤╨╛╨╝ ╤Б ╨╖╨░╨╝╨╡╤В╨║╨╛╨╣\r\n╨Ф╨╗╤П ╤Г╨┤╨░╨╗╨╡╨╜╨╕╤П ╨▓╤Б╨╡╤Е ╨╖╨░╨╝╨╡╤В╨╛╨║ ╨║╨╗╨╕╨║╨╜╨╕╤В╨╡ \"╨г╨┤╨░╨╗╨╕╤В╤М ╨▓╤Б╨╡\"',0);
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-28  2:24:59
