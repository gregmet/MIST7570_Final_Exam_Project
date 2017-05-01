CREATE DATABASE  IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `test`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `productid` int(11) DEFAULT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `ProductImage` varchar(255) DEFAULT NULL,
  `Price` varchar(255) DEFAULT NULL,
  `Inventory` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1102,'White Polo Shirt','http://res.cloudinary.com/dltb0dabh/image/upload/v1493577370/s7-1021349_standard_dizxo9.jpg','25.00',10);
INSERT INTO `products` VALUES (1103,'Red Polo Shirt','https://cdnd.lystit.com/photos/2013/06/18/polo-by-ralph-lauren-red-polo-shirt-product-1-10911669-973915009.jpeg','30.00',10);
INSERT INTO `products` VALUES (1104,'Blue Polo Shirt','http://s7d2.scene7.com/is/image/PoloGSI/s7-1161022_standard?$flyout_main$&cropN=0.12,0,0.7993,1&iv=YeSdm2&wid=470&hei=590','25.00',10);
INSERT INTO `products` VALUES (1105,'Jeans','http://www.beautybyyasmin.com/wp-content/uploads/2015/07/men-jeans-1.jpg','55.00',10);
INSERT INTO `products` VALUES (1106,'Khaki Chinos','https://www.tillys.com/tillys/images/catalog/large/277784406.jpg','60.00',10);
INSERT INTO `products` VALUES (1107,'Gray Chinos','http://images.express.com/is/image/expressfashion/25_323_4502_935_29.jpg?cache=on&wid=361&fmt=jpeg&qlt=75,1&resmode=sharp2&op_usm=1,1,5,0','60.00',10);
INSERT INTO `products` VALUES (1108,' White Nike Air Force 1','http://images.footlocker.com/pi/15121115/zoom/nike-air-force-1-high-mens','125.00',10);


/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-30 18:09:41
