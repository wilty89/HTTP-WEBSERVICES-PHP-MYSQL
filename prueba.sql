-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: prueba
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
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `price` int(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (0,'[value-2]','[value-3]',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(1,'LG P880 4X HD','My first awesome phone!',336,3,'2014-06-01 01:12:26','2014-05-31 21:42:26'),(2,'Google Nexus 4','The most awesome phone of 2013!',299,2,'2014-06-01 01:12:26','2014-05-31 21:42:26'),(3,'Samsung Galaxy S4','How about no?',600,3,'2014-06-01 01:12:26','2014-05-31 21:42:26'),(6,'Bench Shirt','The best shirt!',29,1,'2014-06-01 01:12:26','2014-05-31 06:42:21'),(7,'Lenovo Laptop','My business partner.',399,2,'2014-06-01 01:13:45','2014-05-31 06:43:39'),(8,'Samsung Galaxy Tab 10.1','Good tablet.',259,2,'2014-06-01 01:14:13','2014-05-31 06:44:08'),(9,'Spalding Watch','My sports watch.',199,1,'2014-06-01 01:18:36','2014-05-31 06:48:31'),(10,'Sony Smart Watch','The coolest smart watch!',300,2,'2014-06-06 17:10:01','2014-06-05 22:39:51'),(11,'Huawei Y300','For testing purposes.',100,2,'2014-06-06 17:11:04','2014-06-05 22:40:54'),(12,'Abercrombie Lake Arnold Shirt','Perfect as gift!',60,1,'2014-06-06 17:12:21','2014-06-05 22:42:11'),(13,'Abercrombie Allen Brook Shirt','Cool red shirt!',70,1,'2014-06-06 17:12:59','2014-06-05 22:42:49'),(26,'Another product','Awesome product!',555,2,'2014-11-22 19:07:34','2014-11-22 01:37:34'),(28,'Wallet','You can absolutely use this one!',799,6,'2014-12-04 21:12:03','2014-12-04 03:42:03'),(31,'Amanda Waller Shirt','New awesome shirt!',333,1,'2014-12-13 00:52:54','2014-12-12 07:22:54'),(42,'Nike Shoes for Men','Nike Shoes',12999,3,'2015-12-12 06:47:08','2015-12-12 11:17:08'),(48,'Bristol Shoes','Awesome shoes.',999,5,'2016-01-08 06:36:37','2016-01-08 11:06:37'),(60,'Rolex Watch','Luxury watch.',25000,1,'2016-01-11 15:46:02','2016-01-11 20:16:02');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `clave` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (2,'wilber','qwerty1234');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `usuario` varchar(50) CHARACTER SET latin1 NOT NULL,
  `clave` varchar(50) CHARACTER SET latin1 NOT NULL,
  `fecha` date NOT NULL,
  `ipad` varchar(12) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES ('Recursos','user1234','2018-11-30','127.0.0.1'),('root','klkconklk','2018-11-30','127.0.0.1'),('ccna2','itla2018','2018-11-30','172.20.10.1'),('Wilber','1234','2018-11-30','172.20.10.1'),('Cool','phpclass','2018-11-30','172.20.10.1'),('pruebas1','asderfb','2022-07-09','::1'),('pruebas1','asderfb','2022-07-09','::1'),('pruebas1','asderfb','2022-07-09','::1'),('pruebas1','79652745','2022-07-16','::1');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-20 19:07:09
