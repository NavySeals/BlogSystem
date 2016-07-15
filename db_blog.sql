# MySQL-Front 5.0  (Build 1.0)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: localhost    Database: db_blog
# ------------------------------------------------------
# Server version 5.0.67-community-nt

DROP DATABASE IF EXISTS `db_blog`;
CREATE DATABASE `db_blog` /*!40100 DEFAULT CHARACTER SET gb2312 */;
USE `db_blog`;

#
# Table structure for table article
#

CREATE TABLE `article` (
  `Id` int(11) NOT NULL auto_increment,
  `title` varchar(50) default NULL,
  `content` text,
  `username` varchar(50) default NULL,
  `date` datetime default NULL,
  `hasread` int(11) default '0',
  PRIMARY KEY  (`Id`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312 COMMENT='文章表';

#
# Table structure for table bloginfo
#

CREATE TABLE `bloginfo` (
  `username` varchar(20) NOT NULL default '',
  `blogtitle` varchar(50) default NULL,
  `idiograph` varchar(50) default NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312 COMMENT='个性设置表';

#
# Table structure for table critique
#

CREATE TABLE `critique` (
  `Id` int(11) NOT NULL auto_increment,
  `AId` int(11) default NULL,
  `content` text,
  `username` varchar(50) default NULL,
  PRIMARY KEY  (`Id`),
  KEY `AId` (`AId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gb2312 COMMENT='评论表';

#
# Table structure for table dianjiliang
#

CREATE TABLE `dianjiliang` (
  `Id` int(11) NOT NULL auto_increment,
  `AId` int(11) default NULL,
  `ip` varchar(255) default NULL,
  `time` date default NULL,
  PRIMARY KEY  (`Id`),
  KEY `AId` (`AId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gb2312 COMMENT='点击量表';

#
# Table structure for table user
#

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL default '',
  `password` varchar(20) default NULL,
  `nickname` varchar(20) default NULL,
  `question` varchar(50) default NULL,
  `answer` varchar(50) default NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312 COMMENT='用户表';

#
#  Foreign keys for table article
#

ALTER TABLE `article`
ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`);

#
#  Foreign keys for table bloginfo
#

ALTER TABLE `bloginfo`
ADD CONSTRAINT `bloginfo_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`);

#
#  Foreign keys for table critique
#

ALTER TABLE `critique`
ADD CONSTRAINT `critique_ibfk_1` FOREIGN KEY (`AId`) REFERENCES `article` (`Id`);

#
#  Foreign keys for table dianjiliang
#

ALTER TABLE `dianjiliang`
ADD CONSTRAINT `dianjiliang_ibfk_1` FOREIGN KEY (`AId`) REFERENCES `article` (`Id`);


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

