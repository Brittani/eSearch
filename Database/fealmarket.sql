# MySQL-Front 5.1  (Build 4.2)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: fealmarket
# ------------------------------------------------------
# Server version 5.1.47-community

DROP DATABASE IF EXISTS `fealmarket`;
CREATE DATABASE `fealmarket` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `fealmarket`;

#
# Source for table admin
#

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `pw` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Dumping data for table admin
#

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'iobig','12346');
INSERT INTO `admin` VALUES (2,'admin','330624');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table dcxx
#

DROP TABLE IF EXISTS `dcxx`;
CREATE TABLE `dcxx` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `information` text,
  `name_table` varchar(20) NOT NULL DEFAULT '',
  `title_table` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Dumping data for table dcxx
#

LOCK TABLES `dcxx` WRITE;
/*!40000 ALTER TABLE `dcxx` DISABLE KEYS */;
INSERT INTO `dcxx` VALUES (1,'红烧鱼 10元  糖醋里脊 8元  红烧鱼 10元  糖醋里脊 8元  红烧鱼 10元  糖醋里脊 8元  红烧鱼 10元  糖醋里脊 8元  \n电话：13458062364','iobig','馨香快餐 ');
INSERT INTO `dcxx` VALUES (2,'菠菜炒鸡蛋 8元 酸辣藕片 8元 火爆圆白菜盖饭10元 菠菜炒鸡蛋 8元 酸辣藕片 8元 火爆圆白菜盖饭10元 \n电话：0571-85290890','io_big@163.com','好乐佳快餐');
/*!40000 ALTER TABLE `dcxx` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table ordertable
#

DROP TABLE IF EXISTS `ordertable`;
CREATE TABLE `ordertable` (
  `PID` int(11) NOT NULL AUTO_INCREMENT,
  `orderID` varchar(50) NOT NULL DEFAULT '',
  `productID` varchar(20) NOT NULL DEFAULT '',
  `productName` varchar(20) NOT NULL DEFAULT '',
  `price` varchar(10) NOT NULL DEFAULT '',
  `quantity` varchar(20) NOT NULL DEFAULT '',
  `thisDate` varchar(20) NOT NULL DEFAULT '',
  `owner` varchar(20) NOT NULL DEFAULT '',
  `buyer` varchar(255) NOT NULL DEFAULT '',
  `address_T` varchar(30) DEFAULT NULL,
  `phone_T` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB AUTO_INCREMENT=2011010 DEFAULT CHARSET=utf8;

#
# Dumping data for table ordertable
#

LOCK TABLES `ordertable` WRITE;
/*!40000 ALTER TABLE `ordertable` DISABLE KEYS */;
INSERT INTO `ordertable` VALUES (2011008,'06309286ea4fd14898392645c7c07bd020115241847','5','æ©˜è‰²ç»å…¸','50','1','2011/5/24/18:47','iobig@163.com','io_big@163.com','å¤§å®¶','5475123156432');
INSERT INTO `ordertable` VALUES (2011009,'06309286ea4fd14898392645c7c07bd02011528036','3','æ©˜è‰²ç»å…¸','50','1','2011/5/28/0:36','iobig@163.com','io_big@163.com','1','1');
/*!40000 ALTER TABLE `ordertable` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table products
#

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(20) NOT NULL DEFAULT '',
  `ProductNum` varchar(20) DEFAULT NULL,
  `ProductPrice` varchar(10) NOT NULL DEFAULT '',
  `ProductBrand` varchar(20) DEFAULT NULL,
  `Data` varchar(20) NOT NULL DEFAULT '',
  `Owner` varchar(20) NOT NULL DEFAULT '',
  `Sold` varchar(20) DEFAULT '5',
  `pageMap` varchar(50) DEFAULT NULL,
  `pageSmallImg` varchar(50) NOT NULL DEFAULT '',
  `PageBigImg` varchar(50) NOT NULL DEFAULT '',
  `type_table` varchar(20) DEFAULT NULL,
  `desc_T` varchar(255) DEFAULT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Dumping data for table products
#

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'猫妖','12','75','MeterBorn','2011/5/24/21:17','iobig@163.com','5','Products/iobig@163.com/111422241/12030682_04[1].jp','Products/iobig@163.com/111422241/a3.jpg','Products/iobig@163.com/111422241/12030682_04[].jpg','1','美丽时尚','时尚包包');
INSERT INTO `products` VALUES (2,'米兰格子包','10','120','KAPA','2011/5/24/21:17','iobig@163.com','5','Products/iobig@163.com/111422243/12030495_04[1].jp','Products/iobig@163.com/111422243/a2.jpg','Products/iobig@163.com/111422243/01_m[4].jpg','1','美丽时尚','时尚包包');
INSERT INTO `products` VALUES (5,'橘色经典','10','50','Yp','2011/5/24/21:17','iobig@163.com','5','Products/iobig@163.com/11142232/12030284_04[1].jpg','Products/iobig@163.com/11142232/a1.jpg','Products/iobig@163.com/11142232/01_m[3].jpg','1','美丽时尚','时尚包包');
INSERT INTO `products` VALUES (6,'56','78','67','09','2011/6/2/14:3','iobig@163.com','5','Products/iobig@163.com/201162143/2.jpg','Products/iobig@163.com/201162143/1.jpg','Products/iobig@163.com/201162143/0.jpg','1','不会不vjh ','');
INSERT INTO `products` VALUES (7,'23412','澶ф硶','浜嗭紱','澶ф硶','2011/6/4/20:39','io_big@163.com','5','Products/io_big@163.com/2011642039/2.jpg','Products/io_big@163.com/2011642039/1.jpg','Products/io_big@163.com/2011642039/0.jpg','6','闃垮彂','');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table status
#

DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `nameID` varchar(20) NOT NULL DEFAULT '',
  `pw` varchar(32) NOT NULL DEFAULT '',
  `shopName` varchar(20) DEFAULT NULL,
  `Email` varchar(25) NOT NULL DEFAULT '' COMMENT 'not null unique',
  `shopLogo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

#
# Dumping data for table status
#

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (25,'noID','e10adc3949ba59abbe56e057f20f883e','empty','iobig@163.com','empty');
INSERT INTO `status` VALUES (32,'noID','a3590023df66ac92ae35e3316026d17d','empty','io33@iobig.co,m','empty');
INSERT INTO `status` VALUES (33,'noID','e10adc3949ba59abbe56e057f20f883e','empty','uib@163.com','empty');
INSERT INTO `status` VALUES (34,'noID','e10adc3949ba59abbe56e057f20f883e','empty','io_big@163.com','empty');
INSERT INTO `status` VALUES (35,'noID','e10adc3949ba59abbe56e057f20f883e','empty','jl@163.com','empty');
INSERT INTO `status` VALUES (36,'noID','e10adc3949ba59abbe56e057f20f883e','empty','jl@126.com','empty');
INSERT INTO `status` VALUES (37,'noID','e10adc3949ba59abbe56e057f20f883e','empty','11@126.com','empty');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table xykd
#

DROP TABLE IF EXISTS `xykd`;
CREATE TABLE `xykd` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `information` text,
  `name_table` varchar(20) NOT NULL DEFAULT '',
  `title_table` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Dumping data for table xykd
#

LOCK TABLES `xykd` WRITE;
/*!40000 ALTER TABLE `xykd` DISABLE KEYS */;
INSERT INTO `xykd` VALUES (1,'西7架空层  服务时间：8：00--20：00','iobig','申通快递');
INSERT INTO `xykd` VALUES (2,'西7架空层  服务时间：8：00--20：00','io_big@163.com','圆通快递');
INSERT INTO `xykd` VALUES (3,'西7架空层  服务时间：8：00--20：00','io_big@163.com','中通快递');
/*!40000 ALTER TABLE `xykd` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
