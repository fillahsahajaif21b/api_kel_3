/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.21-MariaDB : Database - db_kel_3
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_kel_3` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_kel_3`;

/*Table structure for table `event` */

DROP TABLE IF EXISTS `event`;

CREATE TABLE `event` (
  `kode_event` char(12) NOT NULL,
  `nama_event` varchar(255) DEFAULT NULL,
  `deskripsi_event` text DEFAULT NULL,
  `kode_kegiatan` char(12) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  PRIMARY KEY (`kode_event`),
  KEY `kode_kegiatan` (`kode_kegiatan`),
  CONSTRAINT `event_ibfk_1` FOREIGN KEY (`kode_kegiatan`) REFERENCES `kegiatan` (`kode_kegiatan`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `event` */

/*Table structure for table `kegiatan` */

DROP TABLE IF EXISTS `kegiatan`;

CREATE TABLE `kegiatan` (
  `kode_kegiatan` char(12) NOT NULL,
  `nama_kegiatan` varchar(100) DEFAULT NULL,
  `jenis_kegiatan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`kode_kegiatan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `kegiatan` */

/*Table structure for table `panitia` */

DROP TABLE IF EXISTS `panitia`;

CREATE TABLE `panitia` (
  `id_panitia` int(12) NOT NULL AUTO_INCREMENT,
  `kode_event` char(12) DEFAULT NULL,
  `no_iden` char(20) DEFAULT NULL,
  `nama_panitia` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(100) DEFAULT NULL,
  `role_panitia` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_panitia`),
  KEY `kode_event` (`kode_event`),
  CONSTRAINT `panitia_ibfk_1` FOREIGN KEY (`kode_event`) REFERENCES `event` (`kode_event`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `panitia` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
