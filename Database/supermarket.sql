# MySQL-Front 5.1  (Build 4.2)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: supermarket
# ------------------------------------------------------
# Server version 5.1.47-community

DROP DATABASE IF EXISTS `supermarket`;
CREATE DATABASE `supermarket` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `supermarket`;

#
# Source for table admin
#

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `pw` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

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
) ENGINE=InnoDB AUTO_INCREMENT=2885014 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Dumping data for table ordertable
#

LOCK TABLES `ordertable` WRITE;
/*!40000 ALTER TABLE `ordertable` DISABLE KEYS */;
INSERT INTO `ordertable` VALUES (2885001,'06309286ea4fd14898392645c7c07bd020115271517','2','米兰格子包','120','1','2011/5/25/1:1','iobig@163.com','io_big@163.com','杭州电子科技大学','13665470986');
INSERT INTO `ordertable` VALUES (2885002,'06309286ea4fd14898392645c7c07bd02011528033','5','橘色经典','50','11','2011/5/28/0:3','iobig@163.com','io_big@163.com','浙江工商大学','13458629086');
INSERT INTO `ordertable` VALUES (2885003,'b1e226c39eeb1fda6645a04342047b74201162178','4','修身衬衫','122','12','2011/6/2/7:8','iobig@163.com','iobig@163.com','浙江工业大学屏峰校区','15858177582');
INSERT INTO `ordertable` VALUES (2885004,'06309286ea4fd14898392645c7c07bd020116102328','10','女衬衣','188','1','2011/6/10/23:28','iobig@163.com','io_big@163.com','浙江工业大学','15858177582');
INSERT INTO `ordertable` VALUES (2885005,'2d48c24fb326e3ec3d1fb4fad5a84c4d201161100','6','眸色记忆水晶项链','158','1','2011/6/11/0:0','io_big@163.com','jl@126.com','浙江工商大学','13523458643');
INSERT INTO `ordertable` VALUES (2885010,'b1e226c39eeb1fda6645a04342047b74201161103','9','牛皮高水台女鞋','148','1','2011/6/11/0:3','io_big@163.com','jl@126.com','浙江工业大学','14523678623');
INSERT INTO `ordertable` VALUES (2885011,'2d48c24fb326e3ec3d1fb4fad5a84c4d201161106','3','时尚牛皮卡包','39','1','2011/6/11/0:6','iobig@163.com','jl@126.com','浙江工业大学','13276342485');
INSERT INTO `ordertable` VALUES (2885012,'b1e226c39eeb1fda6645a04342047b74201161107','2','橘色经典','50','12','2011/6/11/0:7','iobig@163.com','iobig@163.com','浙江工业大学','12531236547');
INSERT INTO `ordertable` VALUES (2885013,'cfc6f4e91e2d0e49c76aa1d53428a8832011611828','3','时尚牛皮卡包','39','1','2011/6/11/8:28','iobig@163.com','11@126.com','撒旦法烦恼','12441237654');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Dumping data for table products
#

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'米兰格子包','97','120','KAPA','2011/5/30/0:5','iobig@163.com','5','Products/iobig@163.com/201153005/2.jpg','Products/iobig@163.com/201153005/1.jpg','Products/iobig@163.com/201153005/0.jpg','1','材质：皮质 类型：单肩 大小：中型','');
INSERT INTO `products` VALUES (2,'橘色经典','56','50','YP','2011/5/30/0:51','iobig@163.com','32','Products/iobig@163.com/2011530051/2.jpg','Products/iobig@163.com/2011530051/1.jpg','Products/iobig@163.com/2011530051/0.jpg','1','材质：皮质 类型：单肩 大小：中型','');
INSERT INTO `products` VALUES (3,'时尚牛皮卡包','32','39','麦包包','2011/6/2/14:51','iobig@163.com','7','Products/iobig@163.com/2011621451/2.jpg','Products/iobig@163.com/2011621451/1.jpg','Products/iobig@163.com/2011621451/0.jpg','1','材质：牛皮                                                  \r\n颜色：深红色                      \r\n尺寸：8*11*2 cm\r\n【名称】：麦包包精简时尚牛皮卡包\r\n【产地】：中国\r\n【材料】：牛皮\r\n【颜色】：深红色\r\n【品质】：一等品\r\n【重量】：0.06KG      \r\n【产品编号】：1109009701\r\n【内部结构】：20个卡位                                \r\n材质：牛皮         ',NULL);
INSERT INTO `products` VALUES (4,'修身衬衫','133','122','O.SA','2011/6/2/14:52','iobig@163.com','5','Products/iobig@163.com/2011621452/0.jpg','Products/iobig@163.com/2011621452/1.jpg','Products/iobig@163.com/2011621452/2.jpg','2','面料特点：全工艺棉（100%棉），该面料轻薄透气，吸湿性强，木有弹力，比较容易起皱。手感细腻柔软。 颜色：粉色、白色、紫色、橙色',NULL);
INSERT INTO `products` VALUES (5,'五分袖衬衫','66','148','O.SA','2011/6/2/14:53','iobig@163.com','5','Products/iobig@163.com/2011621453/0.jpg','Products/iobig@163.com/2011621453/1.jpg','Products/iobig@163.com/2011621453/2.jpg','2','面料特点：全工艺棉（100%棉），该面料轻薄透气，吸湿性强，木有弹力，比较容易起皱。手感细腻柔软。 颜色：红色',NULL);
INSERT INTO `products` VALUES (6,'眸色记忆水晶项链','100','158','WINY','2011/6/2/14:53','io_big@163.com','6','Products/io_big@163.com/2011621453/0.jpg','Products/io_big@163.com/2011621453/1.jpg','Products/io_big@163.com/2011621453/2.jpg','3','    商品名称：WINY 时尚流行首饰 眸色记忆水晶项链 石榴红\r\n    生产厂家：winy\r\n    商品产地：\r\n    商品毛重：0.05\r\n    ',NULL);
INSERT INTO `products` VALUES (7,'说服力：工作型PPT该这样做','211','29','人民邮电出版社','2011/6/2/14:55','io_big@163.com','5','Products/io_big@163.com/2011621455/0.jpg','Products/io_big@163.com/2011621455/111.jpg','Products/io_big@163.com/2011621455/222.jpg','4','作　　者： 张志 等 著 丛 书 名：\r\n出 版 社： 人民邮电出版社ＩＳＢＮ：9787115248282出版时间：2011-03-01版　　次：1页　　数：180装　　帧：平装开　　本：',NULL);
INSERT INTO `products` VALUES (8,'甜蜜诱惑润唇膏','33','88','莎莎','2011/6/2/15:00','io_big@163.com','5','Products/io_big@163.com/2011621500/2.jpg','Products/io_big@163.com/2011621500/1.jpg','Products/io_big@163.com/2011621500/0.jpg','5','持久保持滋润，舒缓双唇无负担，无色透明，迷你小巧造型盒，不但可爱而且方便携带',NULL);
INSERT INTO `products` VALUES (9,'牛皮高水台女鞋','363','148','流行感觉','2011/6/2/15:05','io_big@163.com','6','Products/io_big@163.com/2011621505/0.jpg','Products/io_big@163.com/2011621505/1.jpg','Products/io_big@163.com/2011621505/22.jpg','6','鞋头：露趾 鞋面：牛皮、双色拼接 鞋跟：10cm 鞋底：橡胶 鞋里：猪皮 垫脚：猪皮 尺码：34、35、36、37、38、39 型号：H2-6910',NULL);
INSERT INTO `products` VALUES (10,'女衬衣','342','188','O.SA','2011/6/10/22:57','iobig@163.com','6','Products/iobig@163.com/20116102257/2.jpg','Products/iobig@163.com/20116102257/1.jpg','Products/iobig@163.com/20116102257/0.jpg','2','    商品名称：女衬衣SC91910\r\n   生产厂家：O.SA\r\n   商品颜色：浅紫，茶色\r\n   商品毛重：0.3\r\n   尺码：S，M，L，XL\r\n   ','');
INSERT INTO `products` VALUES (11,'黑色皱漆牛皮女皮鞋','5624','488','TATA','2011/6/10/23:6','io_big@163.com','5','Products/io_big@163.com/2011610236/2.jpg','Products/io_big@163.com/2011610236/1.jpg','Products/io_big@163.com/2011610236/0.jpg','6','商品名称：TATA他她2011春季黑色皱漆牛皮女皮鞋\r\n商品毛重：0.5\r\n商品主料：牛皮 \r\n商品内里：猪皮 \r\n产地：深圳 \r\n跟高：11.5cm\r\n水台：2cm','');
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
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Dumping data for table status
#

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (25,'123','e10adc3949ba59abbe56e057f20f883e','empty','iobig@163.com','empty');
INSERT INTO `status` VALUES (32,'noID','a3590023df66ac92ae35e3316026d17d','empty','io33@iobig.co,m','empty');
INSERT INTO `status` VALUES (33,'noID','e10adc3949ba59abbe56e057f20f883e','empty','uib@163.com','empty');
INSERT INTO `status` VALUES (34,'noID','e10adc3949ba59abbe56e057f20f883e','empty','io_big@163.com','empty');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table swzl
#

DROP TABLE IF EXISTS `swzl`;
CREATE TABLE `swzl` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `information` text,
  `name_table` varchar(20) NOT NULL DEFAULT '',
  `title_table` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Dumping data for table swzl
#

LOCK TABLES `swzl` WRITE;
/*!40000 ALTER TABLE `swzl` DISABLE KEYS */;
INSERT INTO `swzl` VALUES (1,'5.16号晚上，在西六取完钱就走了吧？银行卡也不拿了吧？\n得了，我帮你退卡了，卡在我这儿呢。\n\n卡背面有名字。所以来领卡的同学带上身份证或者学生证吧~~\n\n联系方式：138 6815 6501','iobig@163.com','5.16号,张超同学注意了');
/*!40000 ALTER TABLE `swzl` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table xwqs
#

DROP TABLE IF EXISTS `xwqs`;
CREATE TABLE `xwqs` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `information` text,
  `name_table` varchar(20) NOT NULL DEFAULT '',
  `title_table` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Dumping data for table xwqs
#

LOCK TABLES `xwqs` WRITE;
/*!40000 ALTER TABLE `xwqs` DISABLE KEYS */;
INSERT INTO `xwqs` VALUES (1,'寻5月24或25日在屏峰生活区门口小吃街上丢的公交卡！！卡正面贴着海贼王的卡贴！！有捡到的同学或见过的同学请帮帮忙，请联系15858178784（678487），万分感谢！！','io_big@163.com','寻找公交卡，上有海贼王的卡贴');
/*!40000 ALTER TABLE `xwqs` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
