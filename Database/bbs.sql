# MySQL-Front 5.1  (Build 4.2)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: bbs
# ------------------------------------------------------
# Server version 5.1.47-community

DROP DATABASE IF EXISTS `bbs`;
CREATE DATABASE `bbs` /*!40100 DEFAULT CHARACTER SET gbk */;
USE `bbs`;

#
# Source for table bbs
#

DROP TABLE IF EXISTS `bbs`;
CREATE TABLE `bbs` (
  `AnnounceID` int(11) NOT NULL AUTO_INCREMENT,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `Child` int(11) NOT NULL DEFAULT '0',
  `BoardID` int(11) NOT NULL DEFAULT '0',
  `UserName` varchar(50) NOT NULL DEFAULT '',
  `UserEmail` varchar(255) NOT NULL DEFAULT '',
  `Topic` varchar(255) NOT NULL DEFAULT '',
  `Title` varchar(50) NOT NULL,
  `Body` longtext NOT NULL,
  `DateAndTime` varchar(30) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `Expression` varchar(255) NOT NULL DEFAULT '',
  `istop` int(11) NOT NULL DEFAULT '0',
  `islock` int(11) NOT NULL,
  `isgood` int(11) NOT NULL DEFAULT '0',
  `isvote` int(11) NOT NULL,
  `heart` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `lastre` varchar(30) DEFAULT NULL,
  `state` int(1) DEFAULT NULL,
  PRIMARY KEY (`AnnounceID`),
  KEY `boardbbs1` (`BoardID`)
) ENGINE=MyISAM AUTO_INCREMENT=153 DEFAULT CHARSET=gbk;

#
# Dumping data for table bbs
#

LOCK TABLES `bbs` WRITE;
/*!40000 ALTER TABLE `bbs` DISABLE KEYS */;
INSERT INTO `bbs` VALUES (130,1,115,1,'admin','111@126.com','pic/Image1.gif','2222','你好。。。。','2011/05/23 20:40:51',0,'zjut','1024',0,0,0,0,'face3.gif','回复','2011/05/23 20:40:51',0);
INSERT INTO `bbs` VALUES (131,1,115,1,'admin','111@126.com','pic/Image1.gif','2222','你 打法的萨芬 ','2011/05/23 21:19:12',0,'zjut','1024',0,0,0,0,'face3.gif','回复','2011/05/23 21:19:12',0);
INSERT INTO `bbs` VALUES (132,1,0,2,'admin','111@126.com','pic/Image1.gif','你你','九龙九龙看见了','2011/05/23 21:49:29',13,'zjut','1024',0,0,0,1,'face3.gif','讨论','2011/05/23 21:49:29',1);
INSERT INTO `bbs` VALUES (133,0,0,0,'admin','111@126.com','pic/Image2.gif','1e3wqew','fdsafdsaf','2011/05/24 22:09:46',1,'zjut','1024',0,0,0,1,'face3.gif','原创','2011/05/24 22:09:46',1);
INSERT INTO `bbs` VALUES (134,0,0,0,'admin','111@126.com','pic/Image2.gif','1e3wqew','gyhg','2011/05/24 22:14:04',0,'zjut','1024',0,0,0,1,'face3.gif','原创','2011/05/24 22:14:04',1);
INSERT INTO `bbs` VALUES (135,0,0,0,'admin','111@126.com','pic/Image2.gif','','','2011/05/24 22:15:43',0,'zjut','1024',0,0,0,1,'face3.gif','原创','2011/05/24 22:15:43',1);
INSERT INTO `bbs` VALUES (136,0,0,0,'admin','111@126.com','pic/Image2.gif','ffhfhf','fhfhfhf','2011/05/24 22:16:19',0,'zjut','1024',0,0,0,1,'face3.gif','原创','2011/05/24 22:16:19',1);
INSERT INTO `bbs` VALUES (137,0,0,0,'admin','111@126.com','pic/Image2.gif','jkjkj','jkjk','2011/05/24 22:19:20',0,'zjut','1024',0,0,0,1,'face3.gif','原创','2011/05/24 22:19:20',1);
INSERT INTO `bbs` VALUES (138,0,0,0,'admin','111@126.com','pic/Image2.gif','fhfh','hfhfh','2011/05/24 22:20:42',0,'zjut','1024',0,0,0,1,'face3.gif','原创','2011/05/24 22:20:42',1);
INSERT INTO `bbs` VALUES (139,1,0,1,'admin','111@126.com','pic/Image2.gif','hjhj','hhjhj','2011/05/24 22:23:25',0,'zjut','1024',0,0,0,1,'face3.gif','原创','2011/05/24 22:23:25',1);
INSERT INTO `bbs` VALUES (140,1,0,1,'admin','111@126.com','pic/Image2.gif','ere','ewr','2011/05/24 22:26:20',0,'zjut','1024',0,0,0,1,'face3.gif','原创','2011/05/24 22:26:20',1);
INSERT INTO `bbs` VALUES (141,1,0,2,'admin','111@126.com','pic/Image2.gif','fdsafd1313','fdsafdsa1313','2011/05/24 22:31:43',21,'zjut','1024',0,0,0,1,'face3.gif','原创','2011/05/24 22:31:43',1);
INSERT INTO `bbs` VALUES (142,0,0,0,'admin','111@126.com','pic/Image2.gif','fdasfdas','fdsafdsafdsa','2011/05/24 23:32:17',14,'zjut','1024',0,0,0,1,'face3.gif','原创','2011/05/24 23:32:17',1);
INSERT INTO `bbs` VALUES (143,1,0,1,'admin','111@126.com','pic/Image2.gif','fdasf','fdsafdsaf','2011/05/24 23:44:49',13,'zjut','1024',0,0,0,1,'face3.gif','原创','2011/05/24 23:44:49',1);
INSERT INTO `bbs` VALUES (144,2,0,6,'admin','111@126.com','pic/Image2.gif','daf','adfadf','2011/05/27 01:54:18',1,'0.0.0.0','1024',0,0,0,0,'face3.gif','原创','2011/05/27 01:54:18',1);
INSERT INTO `bbs` VALUES (145,1,0,1,'admin','111@126.com','pic/Image2.gif','压根','呀部分','2011/05/27 15:18:50',1,'0.0.0.0','1024',0,0,0,0,'face3.gif','原创','2011/05/27 15:18:50',1);
INSERT INTO `bbs` VALUES (146,1,0,1,'admin','111@126.com','pic/Image2.gif','667','','2011/05/31 21:15:24',1,'0.0.0.0','1024',0,0,0,1,'face3.gif','原创','2011/05/31 21:15:24',1);
INSERT INTO `bbs` VALUES (147,2,0,6,'admin','111@126.com','pic/Image2.gif','test','hello','2011/06/01 13:31:31',1,'0.0.0.0','1024',0,0,0,1,'face3.gif','原创','2011/06/01 13:31:31',1);
INSERT INTO `bbs` VALUES (148,2,0,6,'admin','111@126.com','pic/Image2.gif','招暑期兼职数人','工作内容：收银员、服务员<BR>工作地点：市民中心内的休闲吧（钱江新城那边，坐车大概1个半小时）<BR>工作<SPAN class=t_tag onclick=tagshow(event) href=\"http://bbs.zjut.com/tag.php?name=%E6%97%B6%E9%97%B4\">时间</SPAN>：7月份开始做，每天6-8小时<BR>工资：8元/小时，干得好可以上浮<BR>需要人数：4人<BR>要求：能吃苦耐劳，工作诚恳。&nbsp; &nbsp;有餐饮工作经验的优先<BR>各位有兴趣的话可以<SPAN class=t_tag onclick=tagshow(event) href=\"http://bbs.zjut.com/tag.php?name=%E8%81%94%E7%B3%BB\">联系</SPAN>我，敝人姓汪，539754。','2011/06/02 17:44:07',2,'0.0.0.0','1024',0,0,0,0,'face3.gif','原创','2011/06/02 17:44:07',1);
INSERT INTO `bbs` VALUES (149,2,0,3,'admin','111@126.com','pic/Image2.gif','去肯德基购买全家饱','去肯德基购买全家饱，要的人留下信息和报名','2011/06/02 17:50:17',1,'0.0.0.0','1024',0,0,0,1,'face3.gif','原创','2011/06/02 17:50:17',1);
INSERT INTO `bbs` VALUES (150,2,0,0,'111','111@163.com','pic/Image2.gif','周末去活动','<P>哪个活动人数多就举办哪个活动，想要参加的同学请留下联系方式、参加活动项目、人数等各类信息</P>','2011/06/02 17:56:12',1,'0.0.0.0','1024',0,0,0,1,'face3.gif','原创','2011/06/02 17:56:12',1);
INSERT INTO `bbs` VALUES (151,2,0,0,'admin','111@126.com','pic/Image2.gif','周末去郊游','<P>有意向者请报名参加， 并留下相关联系方式</P>','2011/06/11 00:57:15',8,'0.0.0.0','1024',0,0,0,1,'face3.gif','原创','2011/06/11 00:57:15',1);
INSERT INTO `bbs` VALUES (152,2,151,0,'admin','111@126.com','pic/Image2.gif','周末去郊游','王丽萍 13258061235 报名参加','2011/06/11 00:58:07',0,'0.0.0.0','1024',0,0,0,0,'face3.gif','回复','2011/06/11 00:58:07',0);
/*!40000 ALTER TABLE `bbs` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table bbslink
#

DROP TABLE IF EXISTS `bbslink`;
CREATE TABLE `bbslink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `boardname` varchar(50) NOT NULL DEFAULT '',
  `readme` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(150) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

#
# Dumping data for table bbslink
#

LOCK TABLES `bbslink` WRITE;
/*!40000 ALTER TABLE `bbslink` DISABLE KEYS */;
/*!40000 ALTER TABLE `bbslink` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table bbsnews
#

DROP TABLE IF EXISTS `bbsnews`;
CREATE TABLE `bbsnews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `boardid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `username` varchar(50) NOT NULL DEFAULT '',
  `addtime` varchar(30) NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `bbsnewsboardid` (`boardid`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

#
# Dumping data for table bbsnews
#

LOCK TABLES `bbsnews` WRITE;
/*!40000 ALTER TABLE `bbsnews` DISABLE KEYS */;
/*!40000 ALTER TABLE `bbsnews` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table board
#

DROP TABLE IF EXISTS `board`;
CREATE TABLE `board` (
  `boardid` int(11) NOT NULL DEFAULT '0',
  `BoardType` varchar(50) NOT NULL DEFAULT '',
  `classType` int(11) NOT NULL DEFAULT '0',
  `readme` varchar(255) NOT NULL DEFAULT '',
  `moderid` int(4) DEFAULT NULL,
  `BoardMaster` varchar(50) DEFAULT '',
  `lockboard` int(11) NOT NULL DEFAULT '0',
  `Forumlogo` varchar(255) NOT NULL DEFAULT '',
  `indexIMG` varchar(255) NOT NULL DEFAULT '',
  `lastrootid` int(11) DEFAULT NULL,
  `lasttitle` varchar(255) DEFAULT '',
  `boarduser` mediumtext,
  `lastposttime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`boardid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# Dumping data for table board
#

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (0,'郊游',2,'漫步蓝天下',NULL,'苏茉',0,'','',NULL,'',NULL,NULL);
INSERT INTO `board` VALUES (1,'生活漫谈',1,'在这里，读懂生活',11,'晨晨',0,'','',NULL,'',NULL,NULL);
INSERT INTO `board` VALUES (2,'技术交流',1,'不唯上，不唯新，只唯实',1,'晨晨',0,'','',NULL,'',NULL,NULL);
INSERT INTO `board` VALUES (3,'团购',2,'SHOPIPING',11,'苏茉',0,'','',NULL,'',NULL,NULL);
INSERT INTO `board` VALUES (4,'文学荟萃',1,'群英聚焦，探讨文化',1,'晨晨',0,'','',NULL,'',NULL,NULL);
INSERT INTO `board` VALUES (5,'其他',1,'',NULL,'晨晨',0,'','',NULL,'',NULL,NULL);
INSERT INTO `board` VALUES (6,'兼职',2,'给生活增添色彩',NULL,'苏茉',0,'','',NULL,'',NULL,NULL);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table bookmark
#

DROP TABLE IF EXISTS `bookmark`;
CREATE TABLE `bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(100) DEFAULT NULL,
  `topic` varchar(100) DEFAULT NULL,
  `addtime` varchar(19) DEFAULT NULL,
  KEY `bookmarkUserName` (`username`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# Dumping data for table bookmark
#

LOCK TABLES `bookmark` WRITE;
/*!40000 ALTER TABLE `bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookmark` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table classtype
#

DROP TABLE IF EXISTS `classtype`;
CREATE TABLE `classtype` (
  `id` int(10) NOT NULL DEFAULT '0',
  `classType` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# Dumping data for table classtype
#

LOCK TABLES `classtype` WRITE;
/*!40000 ALTER TABLE `classtype` DISABLE KEYS */;
INSERT INTO `classtype` VALUES (2,'广而告之');
INSERT INTO `classtype` VALUES (1,'交友交流');
/*!40000 ALTER TABLE `classtype` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table config
#

DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `ForumName` varchar(20) NOT NULL DEFAULT '',
  `ForumURL` varchar(100) NOT NULL DEFAULT '',
  `CompanyName` varchar(40) NOT NULL DEFAULT '',
  `HostUrl` varchar(100) NOT NULL DEFAULT '',
  `SystemEmail` varchar(50) NOT NULL DEFAULT '',
  `Logo` varchar(100) NOT NULL DEFAULT '',
  `IpFlag` int(11) NOT NULL DEFAULT '0',
  `guestuser` int(11) NOT NULL DEFAULT '0',
  `ads1` mediumtext NOT NULL,
  `ads2` mediumtext NOT NULL,
  `Copyright` varchar(255) NOT NULL DEFAULT '',
  `Version` varchar(255) NOT NULL DEFAULT '',
  `TitleFlag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uploadFlag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `wealthReg` int(11) NOT NULL DEFAULT '0',
  `wealthAnnounce` int(11) NOT NULL DEFAULT '0',
  `wealthReannounce` int(11) NOT NULL DEFAULT '0',
  `wealthDel` int(11) NOT NULL DEFAULT '0',
  `wealthLogin` int(11) NOT NULL DEFAULT '0',
  `epReg` int(11) NOT NULL DEFAULT '0',
  `epAnnounce` int(11) NOT NULL DEFAULT '0',
  `epReannounce` int(11) NOT NULL DEFAULT '0',
  `epDel` int(11) NOT NULL DEFAULT '0',
  `epLogin` int(11) NOT NULL DEFAULT '0',
  `cpReg` int(11) NOT NULL DEFAULT '0',
  `cpAnnounce` int(11) NOT NULL DEFAULT '0',
  `cpReannounce` int(11) NOT NULL DEFAULT '0',
  `cpDel` int(11) NOT NULL DEFAULT '0',
  `cpLogin` int(11) NOT NULL DEFAULT '0',
  `Maxonline` int(11) NOT NULL DEFAULT '0',
  `MaxonlineDate` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# Dumping data for table config
#

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('交友论坛','http://bbs.zjut.com/bbs','BBS　作品','http://bbs.zjut.com','111@126.com','pic/LOGO.GIF',0,1,'','','版权所有：  <a href=http://bbs.zjut.com><font face=Verdana, Arial, Helvetica, sans-serif size=1><b>BBS<font color=#CC0000>.Com</font></b></font></a>','   版本：<a href=http://bbs.zjut.com/bbs>Ver0.1</a>',1,1,100,3,1,5,2,0,2,1,3,1,30,2,1,3,1,1,'2002-06-15 10:29:49');
INSERT INTO `config` VALUES ('交友论坛','http://bbs.zjut.com/bbs','BBS　作品','http://bbs.zjut.com','111@126.com','pic/LOGO.GIF',0,1,'','','版权所有：  <a href=http://bbs.zjut.com><font face=Verdana, Arial, Helvetica, sans-serif size=1><b>BBS<font color=#CC0000>.Com</font></b></font></a>','   版本：<a href=http://bbs.zjut.com/bbs>Ver0.1</a>',1,1,100,3,1,5,2,0,2,1,3,1,30,2,1,3,1,1,'2002-06-15 10:29:49');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table friend
#

DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `F_id` int(11) NOT NULL AUTO_INCREMENT,
  `F_username` varchar(50) DEFAULT NULL,
  `F_friend` varchar(50) DEFAULT NULL,
  `F_addtime` varchar(19) DEFAULT NULL,
  KEY `F_id` (`F_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# Dumping data for table friend
#

LOCK TABLES `friend` WRITE;
/*!40000 ALTER TABLE `friend` DISABLE KEYS */;
/*!40000 ALTER TABLE `friend` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table log
#

DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `l_username` varchar(50) DEFAULT NULL,
  `l_content` varchar(50) DEFAULT NULL,
  `l_url` varchar(255) DEFAULT NULL,
  `l_addtime` varchar(19) DEFAULT NULL,
  KEY `l_id` (`l_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# Dumping data for table log
#

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table message
#

DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(50) DEFAULT NULL,
  `incept` varchar(50) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` mediumtext,
  `flag` int(11) DEFAULT '0',
  `sendtime` varchar(19) DEFAULT NULL,
  `delR` int(11) DEFAULT '0',
  `delS` int(11) DEFAULT '0',
  `isSend` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=gbk;

#
# Dumping data for table message
#

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table online
#

DROP TABLE IF EXISTS `online`;
CREATE TABLE `online` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '',
  `bbstype` int(4) NOT NULL,
  `ip` varchar(50) NOT NULL DEFAULT '',
  `startime` varchar(30) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `browser` varchar(100) NOT NULL DEFAULT '',
  `state` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=gbk;

#
# Dumping data for table online
#

LOCK TABLES `online` WRITE;
/*!40000 ALTER TABLE `online` DISABLE KEYS */;
INSERT INTO `online` VALUES (71,'游客',0,'0:0:0:0:0:0:0:1','2011/05/23 19:13:53','index',1);
INSERT INTO `online` VALUES (72,'admin',10,'127.0.0.1','2011/05/24 19:13:23','index',1);
INSERT INTO `online` VALUES (73,'admin',10,'127.0.0.1','2011/05/24 22:08:30','index',1);
INSERT INTO `online` VALUES (74,'admin',10,'127.0.0.1','2011/05/24 22:25:17','index',1);
INSERT INTO `online` VALUES (75,'游客',0,'127.0.0.1','2011/05/24 22:25:17','index',1);
INSERT INTO `online` VALUES (76,'admin',10,'127.0.0.1','2011/05/24 22:30:57','index',0);
INSERT INTO `online` VALUES (77,'admin',10,'127.0.0.1','2011/05/24 23:30:43','index',1);
INSERT INTO `online` VALUES (78,'游客',0,'127.0.0.1','2011/05/24 23:48:12','index',1);
INSERT INTO `online` VALUES (79,'admin',10,'127.0.0.1','2011/05/24 23:48:41','index',1);
INSERT INTO `online` VALUES (80,'admin',10,'127.0.0.1','2011/05/24 23:52:34','index',1);
INSERT INTO `online` VALUES (81,'admin',10,'127.0.0.1','2011/05/24 23:55:10','index',1);
INSERT INTO `online` VALUES (82,'admin',10,'127.0.0.1','2011/05/24 23:56:58','index',1);
INSERT INTO `online` VALUES (83,'admin',10,'0:0:0:0:0:0:0:1','2011/05/26 19:54:18','index',1);
INSERT INTO `online` VALUES (84,'admin',10,'0:0:0:0:0:0:0:1','2011/05/27 01:30:47','index',1);
INSERT INTO `online` VALUES (85,'游客',0,'0:0:0:0:0:0:0:1','2011/05/27 13:18:07','index',1);
INSERT INTO `online` VALUES (86,'游客',0,'0:0:0:0:0:0:0:1','2011/05/27 13:24:50','index',0);
INSERT INTO `online` VALUES (87,'admin',0,'0:0:0:0:0:0:0:1','2011/05/27 15:18:18','index',0);
INSERT INTO `online` VALUES (88,'游客',0,'0:0:0:0:0:0:0:1','2011/05/27 16:49:39','index',1);
INSERT INTO `online` VALUES (89,'游客',0,'0:0:0:0:0:0:0:1','2011/05/27 23:25:52','index',0);
INSERT INTO `online` VALUES (90,'游客',0,'0:0:0:0:0:0:0:1','2011/05/29 16:41:55','index',1);
INSERT INTO `online` VALUES (91,'游客',0,'0:0:0:0:0:0:0:1','2011/05/29 16:41:55','index',1);
INSERT INTO `online` VALUES (92,'游客',0,'0:0:0:0:0:0:0:1','2011/05/30 00:56:56','index',0);
INSERT INTO `online` VALUES (93,'admin',0,'0:0:0:0:0:0:0:1','2011/05/31 21:06:37','index',1);
INSERT INTO `online` VALUES (94,'游客',0,'0:0:0:0:0:0:0:1','2011/05/31 23:49:08','index',0);
INSERT INTO `online` VALUES (95,'admin',0,'0:0:0:0:0:0:0:1','2011/06/01 13:30:30','index',0);
INSERT INTO `online` VALUES (96,'游客',0,'0:0:0:0:0:0:0:1','2011/06/02 17:33:32','index',0);
INSERT INTO `online` VALUES (97,'admin',0,'0:0:0:0:0:0:0:1','2011/06/02 17:33:36','index',0);
INSERT INTO `online` VALUES (98,'admin',0,'0:0:0:0:0:0:0:1','2011/06/02 17:36:13','index',0);
INSERT INTO `online` VALUES (99,'111',0,'0:0:0:0:0:0:0:1','2011/06/02 17:52:48','index',0);
INSERT INTO `online` VALUES (100,'游客',0,'0:0:0:0:0:0:0:1','2011/06/10 13:10:16','index',0);
INSERT INTO `online` VALUES (101,'游客',0,'0:0:0:0:0:0:0:1','2011/06/10 19:54:47','index',0);
INSERT INTO `online` VALUES (102,'admin',0,'0:0:0:0:0:0:0:1','2011/06/10 21:22:49','index',1);
INSERT INTO `online` VALUES (103,'admin',0,'0:0:0:0:0:0:0:1','2011/06/11 00:13:42','index',0);
INSERT INTO `online` VALUES (104,'admin',0,'0:0:0:0:0:0:0:1','2011/06/11 00:50:04','index',0);
INSERT INTO `online` VALUES (105,'admin',0,'0:0:0:0:0:0:0:1','2011/06/11 08:21:42','index',0);
INSERT INTO `online` VALUES (106,'admin',0,'0:0:0:0:0:0:0:1','2011/06/11 17:54:13','index',0);
/*!40000 ALTER TABLE `online` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table user
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(50) NOT NULL DEFAULT '',
  `nickName` varchar(50) DEFAULT NULL,
  `UserEmail` varchar(255) DEFAULT NULL,
  `Article` int(11) DEFAULT '0',
  `UserPassword` varchar(11) NOT NULL DEFAULT '',
  `sign` mediumtext,
  `Sex` varchar(10) DEFAULT NULL,
  `homepage` varchar(255) DEFAULT NULL,
  `addDate` varchar(30) DEFAULT '0000-00-00 00:00:00',
  `logins` int(11) DEFAULT '0',
  `face` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  `qq` varchar(50) DEFAULT NULL,
  `lastlogin` varchar(30) DEFAULT '0000-00-00 00:00:00',
  `bbstype` int(11) DEFAULT '0',
  `lockuser` int(11) DEFAULT '0',
  `userWealth` int(11) DEFAULT '0',
  `userEP` int(11) DEFAULT '0',
  `userCP` int(11) DEFAULT '0',
  PRIMARY KEY (`UserID`),
  KEY `UserName` (`UserName`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=gbk;

#
# Dumping data for table user
#

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','管理員','111@126.com',6,'admin','一切掌握在手中','0',NULL,'2011-05-11 08:10:12',5,'pic/Image2.gif',0,0,'3413154513',NULL,0,0,0,0,0);
INSERT INTO `user` VALUES (2,'111','苏茉','111@163.com',0,'111','我的地盘我做主','1','','2011/05/11 17:13:46',1,'pic/Image2.gif',0,0,'4454648','null',0,0,0,0,0);
INSERT INTO `user` VALUES (3,'222','晨晨','222@163.com',0,'222','开心每一天','1','','2011/05/11 13:43:36',1,'pic/Image2.gif',0,0,'313413545','null',0,0,0,0,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table vote
#

DROP TABLE IF EXISTS `vote`;
CREATE TABLE `vote` (
  `voteid` int(11) NOT NULL AUTO_INCREMENT,
  `announceid` int(11) NOT NULL DEFAULT '0',
  `vote` mediumtext NOT NULL,
  `votenum` int(11) NOT NULL,
  `voteuser` mediumtext NOT NULL,
  `votetype` int(30) NOT NULL,
  `votetime` varchar(30) CHARACTER SET gb2312 NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`voteid`),
  KEY `voteid` (`voteid`)
) ENGINE=MyISAM AUTO_INCREMENT=172 DEFAULT CHARSET=gbk;

#
# Dumping data for table vote
#

LOCK TABLES `vote` WRITE;
/*!40000 ALTER TABLE `vote` DISABLE KEYS */;
INSERT INTO `vote` VALUES (161,142,'fdsafdsa',10,'admin',1,'2011-05-24 11:32:17');
INSERT INTO `vote` VALUES (162,143,'fdsafdsa',1,'admin',1,'2011-05-24 11:44:49');
INSERT INTO `vote` VALUES (163,146,'1\r',0,'admin',1,'2011-05-31 09:15:24');
INSERT INTO `vote` VALUES (164,146,'2\r',0,'admin',1,'2011-05-31 09:15:24');
INSERT INTO `vote` VALUES (165,147,'棒棒糖',0,'admin',0,'2011-06-01 01:31:31');
INSERT INTO `vote` VALUES (166,149,'全家饱',0,'admin',0,'2011-06-02 05:50:17');
INSERT INTO `vote` VALUES (167,150,'爬山\r',0,'111',1,'2011-06-02 05:56:12');
INSERT INTO `vote` VALUES (168,150,'烧烤\r',0,'111',1,'2011-06-02 05:56:12');
INSERT INTO `vote` VALUES (169,150,'太子湾\r',0,'111',1,'2011-06-02 05:56:12');
INSERT INTO `vote` VALUES (170,151,'太子湾\r',2,'admin',1,'2011-06-11 12:57:15');
INSERT INTO `vote` VALUES (171,151,'西湖\r',1,'admin',1,'2011-06-11 12:57:15');
/*!40000 ALTER TABLE `vote` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
