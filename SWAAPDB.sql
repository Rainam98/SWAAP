/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.0.27-community-nt : Database - swaap
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`swaap` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `swaap`;

/*Table structure for table `branchtable` */

DROP TABLE IF EXISTS `branchtable`;

CREATE TABLE `branchtable` (
  `id` int(11) NOT NULL auto_increment,
  `branch_name` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `status` bit(1) default NULL,
  `username` varchar(255) default NULL,
  `cityVO` int(11) default NULL,
  `stateVO` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKcntg4qydjnv1fx6arsa7hr4it` (`cityVO`),
  KEY `FKrjjchixud5qy9lf1dapeu88b2` (`stateVO`),
  CONSTRAINT `FKrjjchixud5qy9lf1dapeu88b2` FOREIGN KEY (`stateVO`) REFERENCES `statetable` (`id`),
  CONSTRAINT `FKcntg4qydjnv1fx6arsa7hr4it` FOREIGN KEY (`cityVO`) REFERENCES `citytable` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `branchtable` */

insert  into `branchtable`(`id`,`branch_name`,`password`,`status`,`username`,`cityVO`,`stateVO`) values (1,'Naranpura','380013','','Naranpura_Mall',1,1);

/*Table structure for table `categorytable` */

DROP TABLE IF EXISTS `categorytable`;

CREATE TABLE `categorytable` (
  `id` int(11) NOT NULL auto_increment,
  `category_name` varchar(255) default NULL,
  `status` bit(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `categorytable` */

insert  into `categorytable`(`id`,`category_name`,`status`) values (1,'Grocery','');

/*Table structure for table `citytable` */

DROP TABLE IF EXISTS `citytable`;

CREATE TABLE `citytable` (
  `id` int(11) NOT NULL auto_increment,
  `city_name` varchar(255) default NULL,
  `status` bit(1) default NULL,
  `stateVO` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKl57sua3nedtuqgy5gq1xy0gnq` (`stateVO`),
  CONSTRAINT `FKl57sua3nedtuqgy5gq1xy0gnq` FOREIGN KEY (`stateVO`) REFERENCES `statetable` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `citytable` */

insert  into `citytable`(`id`,`city_name`,`status`,`stateVO`) values (1,'Ahmedabad','',1),(2,'Gandhinagar','',1),(6,'Mumbai','\0',5),(7,'Udaipur','',6);

/*Table structure for table `offertable` */

DROP TABLE IF EXISTS `offertable`;

CREATE TABLE `offertable` (
  `id` int(11) NOT NULL auto_increment,
  `discount_percent` varchar(255) default NULL,
  `offer_name` varchar(255) default NULL,
  `offer_valid_from` varchar(255) default NULL,
  `offer_valid_till` varchar(255) default NULL,
  `status` bit(1) default NULL,
  `categoryVO` int(11) default NULL,
  `productVO` int(11) default NULL,
  `subCategoryVO` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKcp72onp1e8mpswxi4n9p5xsfr` (`categoryVO`),
  KEY `FK9d57o690bocarmlrg21c7rlh3` (`productVO`),
  KEY `FKsdjqql26bhk46tax2bf272chj` (`subCategoryVO`),
  CONSTRAINT `FK9d57o690bocarmlrg21c7rlh3` FOREIGN KEY (`productVO`) REFERENCES `producttable` (`id`),
  CONSTRAINT `FKcp72onp1e8mpswxi4n9p5xsfr` FOREIGN KEY (`categoryVO`) REFERENCES `categorytable` (`id`),
  CONSTRAINT `FKsdjqql26bhk46tax2bf272chj` FOREIGN KEY (`subCategoryVO`) REFERENCES `subcategorytable` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `offertable` */

insert  into `offertable`(`id`,`discount_percent`,`offer_name`,`offer_valid_from`,`offer_valid_till`,`status`,`categoryVO`,`productVO`,`subCategoryVO`) values (1,'10','Uttrayan','01/08/2020','01/09/2020','',1,1,1);

/*Table structure for table `producttable` */

DROP TABLE IF EXISTS `producttable`;

CREATE TABLE `producttable` (
  `id` int(11) NOT NULL auto_increment,
  `barcode_file_name` varchar(255) default NULL,
  `barcode_file_path` varchar(255) default NULL,
  `product_name` varchar(255) default NULL,
  `product_price` varchar(255) default NULL,
  `product_weight` varchar(255) default NULL,
  `status` bit(1) default NULL,
  `branchVO` int(11) default NULL,
  `categoryVO` int(11) default NULL,
  `subCategoryVO` int(11) default NULL,
  `product_description` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKse4xjyjwe0nixhdrqovnro43c` (`branchVO`),
  KEY `FKqrs83mbawg4rd3q3eydl2ceny` (`categoryVO`),
  KEY `FKlecsho96kuhgubi2h86k7xeeb` (`subCategoryVO`),
  CONSTRAINT `FKlecsho96kuhgubi2h86k7xeeb` FOREIGN KEY (`subCategoryVO`) REFERENCES `subcategorytable` (`id`),
  CONSTRAINT `FKqrs83mbawg4rd3q3eydl2ceny` FOREIGN KEY (`categoryVO`) REFERENCES `categorytable` (`id`),
  CONSTRAINT `FKse4xjyjwe0nixhdrqovnro43c` FOREIGN KEY (`branchVO`) REFERENCES `branchtable` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `producttable` */

insert  into `producttable`(`id`,`barcode_file_name`,`barcode_file_path`,`product_name`,`product_price`,`product_weight`,`status`,`branchVO`,`categoryVO`,`subCategoryVO`,`product_description`) values (1,NULL,NULL,'Gram','50','1','',1,1,1,'It is brown in color and are of 2 types');

/*Table structure for table `statetable` */

DROP TABLE IF EXISTS `statetable`;

CREATE TABLE `statetable` (
  `id` int(11) NOT NULL auto_increment,
  `state_name` varchar(255) default NULL,
  `status` bit(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `statetable` */

insert  into `statetable`(`id`,`state_name`,`status`) values (1,'Gujarat',''),(5,'Maharashtra',''),(6,'Rajasthan','');

/*Table structure for table `subcategorytable` */

DROP TABLE IF EXISTS `subcategorytable`;

CREATE TABLE `subcategorytable` (
  `id` int(11) NOT NULL auto_increment,
  `status` bit(1) default NULL,
  `subCategory_name` varchar(255) default NULL,
  `categoryVO` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKfaok2g41rrf85x91xfisua59o` (`categoryVO`),
  CONSTRAINT `FKfaok2g41rrf85x91xfisua59o` FOREIGN KEY (`categoryVO`) REFERENCES `categorytable` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `subcategorytable` */

insert  into `subcategorytable`(`id`,`status`,`subCategory_name`,`categoryVO`) values (1,'','Pulses',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
