/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.20-MariaDB : Database - db_bengkel2010039
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_bengkel2010039` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_bengkel2010039`;

/*Table structure for table `detail_service2010039` */

DROP TABLE IF EXISTS `detail_service2010039`;

CREATE TABLE `detail_service2010039` (
  `iddetail` int(11) NOT NULL AUTO_INCREMENT,
  `nofak` varchar(10) DEFAULT NULL,
  `kodemekanik` varchar(10) DEFAULT NULL,
  `kodesp` varchar(10) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  PRIMARY KEY (`iddetail`),
  KEY `nofak` (`nofak`),
  KEY `kodesp` (`kodesp`),
  KEY `kodemekanik` (`kodemekanik`),
  CONSTRAINT `detail_service2010039_ibfk_5` FOREIGN KEY (`nofak`) REFERENCES `service2010039` (`nofak`) ON UPDATE CASCADE,
  CONSTRAINT `detail_service2010039_ibfk_8` FOREIGN KEY (`kodesp`) REFERENCES `sparepart2010039` (`kodesp`) ON UPDATE CASCADE,
  CONSTRAINT `detail_service2010039_ibfk_9` FOREIGN KEY (`kodemekanik`) REFERENCES `mekanik2010039` (`kodemekanik`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

/*Data for the table `detail_service2010039` */

insert  into `detail_service2010039`(`iddetail`,`nofak`,`kodemekanik`,`kodesp`,`qty`,`harga`) values 
(1,'F0001','MK0001','SP0001',1,65000),
(7,NULL,'MK0001','SP0003',1,75000),
(8,'F0013','MK0001','SP0003',2,65000),
(9,'F0014','MK0001','SP0001',1,50000),
(10,'F0015','MK0001','SP0001',1,50000),
(11,'F0016','MK0001','SP0003',1,65000),
(12,'F0017','MK0002','SP0001',1,50000),
(13,'F0018','MK0001','SP0001',1,50000),
(14,'F0018','MK0001','SP0002',1,15000),
(16,'F0019','MK0001','SP0003',2,65000),
(17,'F0020','MK0001','SP0001',1,50000),
(18,'F0021','MK0001','SP0002',1,15000),
(19,'F0022','MK0002','SP0001',1,50000),
(20,'F0023','MK0002','SP0001',1,50000),
(21,'F0024','MK0002','SP0001',1,50000);

/*Table structure for table `login2010039` */

DROP TABLE IF EXISTS `login2010039`;

CREATE TABLE `login2010039` (
  `username` char(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `login2010039` */

insert  into `login2010039`(`username`,`nama`,`password`,`email`,`lastlogin`) values 
('U001','RAFI','12345','chandra@gmail.com','2021-11-26 16:57:40'),
('U002','YOBA','111','yobasan@gmail.com',NULL);

/*Table structure for table `mekanik2010039` */

DROP TABLE IF EXISTS `mekanik2010039`;

CREATE TABLE `mekanik2010039` (
  `kodemekanik` varchar(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `nohp` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`kodemekanik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `mekanik2010039` */

insert  into `mekanik2010039`(`kodemekanik`,`nama`,`alamat`,`nohp`) values 
('MK0001','ADE FADILLAH','SOLOK','087337175'),
('MK0002','DITO BANGSUL','PADANG','08462462499');

/*Table structure for table `service2010039` */

DROP TABLE IF EXISTS `service2010039`;

CREATE TABLE `service2010039` (
  `nofak` varchar(10) NOT NULL,
  `tgl` date DEFAULT NULL,
  `username` char(10) DEFAULT NULL,
  `kodemekanik` varchar(10) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `keluhan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`nofak`),
  KEY `kodemekanik` (`kodemekanik`),
  KEY `username` (`username`),
  CONSTRAINT `service2010039_ibfk_1` FOREIGN KEY (`kodemekanik`) REFERENCES `mekanik2010039` (`kodemekanik`) ON UPDATE CASCADE,
  CONSTRAINT `service2010039_ibfk_2` FOREIGN KEY (`username`) REFERENCES `login2010039` (`username`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `service2010039` */

insert  into `service2010039`(`nofak`,`tgl`,`username`,`kodemekanik`,`total`,`keluhan`) values 
('F0001','2021-10-04','U001','MK0001',20000,'Ban Bocor'),
('F0002','2021-10-04','U002','MK0001',35000,'GANTI BUSI'),
('F0003','2021-10-06','U001','MK0002',65000,'GANTI BAN'),
('F0004','2021-10-06','U001','MK0001',65000,'GANTI BAN'),
('F0005','2021-10-06','U001','MK0002',115000,'GANTI BAN'),
('F0006','2021-10-06','U001','MK0002',20000,'GANTI BUSI'),
('F0007','2021-10-06','U001','MK0001',65000,'GANTI BAN'),
('F0008','2021-10-06','U001','MK0001',75000,'GANTI SPION'),
('F0009','2021-10-06','U001','MK0001',65000,'GANTI BAN'),
('F0010','2021-10-06','U001','MK0001',75000,'GANTI SPION'),
('F0011','2021-10-06','U001','MK0001',75000,'GANTI SPION'),
('F0012','2021-10-06','U001','MK0001',75000,'GANTI SPION'),
('F0013','2021-10-06','U001','MK0001',140000,'GANTI SPION'),
('F0014','2021-10-06','U001','MK0001',65000,'GANTI BAN'),
('F0015','2021-10-06','U001','MK0001',65000,'GANTI BUSI'),
('F0016','2021-10-06','U001','MK0001',75000,'GANTI SPION'),
('F0017','2021-10-06','U001','MK0002',65000,'GANTI BAN'),
('F0018','2021-10-06','U001','MK0001',85000,'GANTI BUSI DAN GANTI BAN'),
('F0019','2021-10-06','U001','MK0001',140000,'GANTI SPION'),
('F0020','2021-10-06','U001','MK0001',65000,'GANTI BAN'),
('F0021','2021-10-06','U001','MK0001',20000,'GANTI BUSI'),
('F0022','2021-10-06','U001','MK0002',65000,'GANTI BAN'),
('F0023','2021-10-31','U001','MK0002',65000,'GANTI BAN'),
('F0024','2021-11-26','U001','MK0002',65000,'GANTI BAN');

/*Table structure for table `sparepart2010039` */

DROP TABLE IF EXISTS `sparepart2010039`;

CREATE TABLE `sparepart2010039` (
  `kodesp` varchar(10) NOT NULL,
  `namasp` varchar(100) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `ongkos` double DEFAULT NULL,
  PRIMARY KEY (`kodesp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sparepart2010039` */

insert  into `sparepart2010039`(`kodesp`,`namasp`,`harga`,`stok`,`ongkos`) values 
('SP0001','BAN',50000,41,15000),
('SP0002','BUSI',15000,28,5000),
('SP0003','SPION',65000,93,10000);

/*Table structure for table `temp2010039` */

DROP TABLE IF EXISTS `temp2010039`;

CREATE TABLE `temp2010039` (
  `kodesp` varchar(10) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `harga` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `temp2010039` */

/* Trigger structure for table `detail_service2010039` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `pengurangan_stok` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `pengurangan_stok` AFTER INSERT ON `detail_service2010039` FOR EACH ROW BEGIN
	UPDATE sparepart2010039 SET stok = stok-new.qty WHERE kodesp=new.kodesp;
    END */$$


DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
