/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 6.0.11-alpha-community : Database - documentretrieval
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`documentretrieval` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `documentretrieval`;

/*Table structure for table `keywords` */

DROP TABLE IF EXISTS `keywords`;

CREATE TABLE `keywords` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `encfilename` varchar(250) DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

/*Data for the table `keywords` */

/*Table structure for table `owner` */

DROP TABLE IF EXISTS `owner`;

CREATE TABLE `owner` (
  `uid` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `uname` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `gen` varchar(100) DEFAULT NULL,
  `aname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `owner` */

insert  into `owner`(`uid`,`uname`,`pwd`,`email`,`phone`,`gen`,`aname`) values (1,'keerthi@gmail.com','3','keerthi@gmail.com','7410741010','male','ctr');

/*Table structure for table `req` */

DROP TABLE IF EXISTS `req`;

CREATE TABLE `req` (
  `reqid` int(50) NOT NULL AUTO_INCREMENT,
  `pkey` varchar(100) DEFAULT '--',
  `fid` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'pending',
  `oid` varchar(50) DEFAULT NULL,
  `uid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`reqid`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=latin1;

/*Data for the table `req` */

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `fid` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(250) DEFAULT NULL,
  `actualfname` varchar(250) DEFAULT NULL,
  `encryptedfilename` varchar(250) DEFAULT NULL,
  `skeygenerated` varchar(250) DEFAULT NULL,
  `skeyownergenerated` varchar(100) DEFAULT NULL,
  `uid` char(50) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `uname` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `gen` varchar(100) DEFAULT NULL,
  `aname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`uid`,`uname`,`pwd`,`email`,`phone`,`gen`,`aname`) values (1,'keerthi','3','keerthi@gmail.com','9177278562','female','Tpt'),(15,'suma','123','suma@gmail.com','9876543210','female','mr palli,Tpt');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
