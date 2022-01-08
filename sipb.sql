/*
SQLyog Professional v12.5.1 (64 bit)
MySQL - 5.7.33 : Database - sipb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sipb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sipb`;

/*Table structure for table `bencana` */

DROP TABLE IF EXISTS `bencana`;

CREATE TABLE `bencana` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Nama_bencana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `FK_Id_kategori_bencana` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bencana_fk_id_kategori_bencana_foreign` (`FK_Id_kategori_bencana`),
  CONSTRAINT `bencana_fk_id_kategori_bencana_foreign` FOREIGN KEY (`FK_Id_kategori_bencana`) REFERENCES `kategori_bencana` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `bencana` */

insert  into `bencana`(`id`,`Nama_bencana`,`created_at`,`updated_at`,`FK_Id_kategori_bencana`) values 
(1,'Banjir','2022-01-06 03:19:57','2022-01-06 03:19:57',2),
(2,'Gunung Meletus','2022-01-06 03:19:57','2022-01-06 03:19:57',1),
(3,'Gempa Bumi','2022-01-06 03:19:57','2022-01-06 03:19:57',1),
(4,'Angin Muter','2022-01-06 03:19:57','2022-01-06 03:19:57',1),
(5,'Tsunami','2022-01-06 03:19:57','2022-01-06 03:19:57',1),
(6,'Badai','2022-01-06 03:19:57','2022-01-06 03:19:57',1),
(7,'Tanah Longsor','2022-01-06 03:19:57','2022-01-06 03:19:57',1),
(8,'Erosi','2022-01-06 03:19:57','2022-01-06 03:19:57',1),
(9,'Kebakaran','2022-01-06 03:19:57','2022-01-06 03:19:57',2),
(10,'Abrasi njai','2022-01-06 03:19:57','2022-01-06 03:19:57',2),
(11,'Angin Ribut',NULL,NULL,1),
(12,'Angin dan Petir',NULL,NULL,1);

/*Table structure for table `detail_korban` */

DROP TABLE IF EXISTS `detail_korban`;

CREATE TABLE `detail_korban` (
  `id_detail_korban` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `FK_Id_laporan` bigint(20) unsigned NOT NULL,
  `NIK` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Umur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Kondisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_detail_korban`),
  KEY `detail_korban_fk_id_laporan_foreign` (`FK_Id_laporan`),
  CONSTRAINT `detail_korban_fk_id_laporan_foreign` FOREIGN KEY (`FK_Id_laporan`) REFERENCES `pelaporan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `detail_korban` */

insert  into `detail_korban`(`id_detail_korban`,`FK_Id_laporan`,`NIK`,`Nama`,`Umur`,`Kondisi`,`created_at`,`updated_at`) values 
(1,33,'64','Intan Zahra Padmasari','69','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(2,19,'28','Kamaria Yulianti','98','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(3,9,'65','Julia Mayasari','76','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(4,18,'96','Prasetyo Kurniawan S.Pd','25','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(5,1,'57','Parman Ardianto','87','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(6,23,'58','Kuncara Nainggolan','16','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(7,50,'10','Laras Yuliana Fujiati','73','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(8,8,'48','Kuncara Laswi Adriansyah S.Sos','25','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(9,11,'48','Sarah Gilda Hasanah','1','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(10,44,'8','Purwadi Suryono','19','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(11,34,'10','Panca Suwarno','58','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(12,9,'46','Nova Wastuti','52','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(13,12,'41','Imam Widodo','11','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(14,34,'48','Gandewa Sitorus M.Pd','25','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(15,34,'94','Cinta Agustina','62','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(16,30,'83','Yulia Oktaviani','33','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(17,29,'88','Rahmi Padmasari','57','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(18,44,'44','Sakura Siska Fujiati S.I.Kom','84','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(19,9,'51','Sadina Mala Puspasari','20','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(20,6,'54','Parman Budiyanto S.H.','21','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(21,44,'56','Bakiadi Hutasoit S.Psi','30','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(22,40,'42','Janet Tira Yuliarti S.Pd','99','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(23,12,'73','Wirda Anita Riyanti','39','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(24,9,'92','Eka Handayani','21','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(25,25,'10','Puti Vivi Puspita S.Ked','73','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(26,13,'12','Farah Suryatmi S.Psi','98','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(27,23,'94','Rika Nasyidah','36','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(28,11,'80','Darmana Dabukke M.Pd','50','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(29,43,'24','Embuh Tamba','26','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(30,32,'76','Tari Syahrini Melani','85','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(31,27,'82','Karsana Sitorus','68','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(32,22,'46','Cinthia Riyanti','14','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(33,28,'45','Maya Wahyuni','35','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(34,18,'73','Vicky Winarsih','93','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(35,33,'33','Wisnu Karsana Saefullah','35','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(36,25,'2','Hana Nurdiyanti','50','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(37,40,'20','Umaya Darmaji Samosir S.IP','2','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(38,39,'97','Oliva Astuti','57','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(39,23,'69','Bella Ifa Agustina','78','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(40,23,'59','Irsad Mandala','34','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(41,39,'77','Nyana Mustika Prasetyo','46','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(42,37,'26','Jaya Caturangga Widodo','24','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(43,22,'6','Ani Eka Pratiwi','55','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(44,6,'28','Pranata Damanik M.Kom.','95','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(45,17,'95','Wawan Wijaya','33','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(46,13,'15','Raina Faizah Kusmawati S.E.I','36','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(47,17,'94','Carla Nadia Palastri','25','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(48,33,'28','Ayu Anggraini S.E.','10','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(49,50,'81','Nardi Hutagalung','76','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(50,26,'35','Jarwi Okto Hidayanto','76','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(51,1,'19','Hendri Jailani','51','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(52,34,'75','Dewi Devi Wulandari S.Farm','50','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(53,30,'92','Jamalia Rahayu','28','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(54,44,'42','Samiah Puspita','51','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(55,40,'8','Vanya Oktaviani S.H.','46','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(56,4,'86','Wawan Wibisono','11','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(57,36,'40','Almira Puput Haryanti','32','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(58,11,'95','Kasiyah Wulandari','53','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(59,49,'99','Najib Utama Napitupulu M.Kom.','84','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(60,42,'26','Hasna Febi Pudjiastuti S.I.Kom','59','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(61,31,'78','Yuni Pratiwi M.M.','95','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(62,9,'29','Ikin Salahudin','26','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(63,25,'96','Icha Karen Purnawati S.Farm','37','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(64,47,'34','Amalia Maryati','85','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(65,35,'65','Jati Ikin Nugroho','76','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(66,46,'75','Silvia Zulaika','34','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(67,17,'18','Danu Santoso','44','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(68,24,'87','Maryadi Omar Budiman','85','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(69,49,'64','Banawa Hutagalung S.Ked','76','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(70,48,'31','Makara Wibowo','84','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(71,36,'13','Elvina Andriani','11','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(72,48,'8','Raisa Yuliarti','40','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(73,38,'83','Hafshah Novitasari','41','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(74,26,'59','Vanesa Yulianti','2','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(75,26,'62','Ika Palastri','78','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(76,5,'7','Warsita Jailani','67','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(77,9,'57','Dadap Habibi S.Ked','29','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(78,17,'83','Prayoga Sakti Megantara M.TI.','49','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(79,32,'11','Putri Mala Rahimah','74','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(80,43,'71','Najwa Yuniar','53','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(81,44,'26','Prima Haryanto','48','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(82,36,'47','Laila Widiastuti','75','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(83,19,'22','Rizki Ardianto','26','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(84,17,'8','Halim Siregar','51','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(85,31,'43','Rahayu Hassanah','25','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(86,10,'84','Irma Padmasari','11','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(87,33,'85','Galar Maryadi Damanik','12','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(88,35,'79','Maya Andriani S.Ked','74','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(89,1,'72','Indra Rahmat Marbun','8','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(90,44,'83','Mitra Narpati','43','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(91,4,'80','Tantri Zulaika S.E.','84','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(92,24,'4','Cemani Dadi Tamba S.IP','25','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(93,41,'56','Tasnim Gunawan','86','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(94,3,'29','Gasti Laksita','11','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(95,47,'46','Maryadi Simanjuntak M.Pd','74','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(96,6,'86','Martani Nashiruddin','27','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(97,21,'19','Sidiq Suryono','55','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(98,25,'82','Yuni Zahra Purnawati','62','0','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(99,18,'77','Bahuraksa Adriansyah','26','1','2022-01-06 03:20:01','2022-01-06 03:20:01'),
(100,35,'63','Nova Padmasari','77','1','2022-01-06 03:20:01','2022-01-06 03:20:01');

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `kategori_bencana` */

DROP TABLE IF EXISTS `kategori_bencana`;

CREATE TABLE `kategori_bencana` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Kategori_Bencana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `kategori_bencana` */

insert  into `kategori_bencana`(`id`,`Kategori_Bencana`,`created_at`,`updated_at`) values 
(1,'Alam',NULL,NULL),
(2,'Non-Alam',NULL,NULL);

/*Table structure for table `kecamatan` */

DROP TABLE IF EXISTS `kecamatan`;

CREATE TABLE `kecamatan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Nama_Kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `FK_ID_KOTA` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kecamatan_fk_id_kota_foreign` (`FK_ID_KOTA`),
  CONSTRAINT `kecamatan_fk_id_kota_foreign` FOREIGN KEY (`FK_ID_KOTA`) REFERENCES `kota` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `kecamatan` */

insert  into `kecamatan`(`id`,`Nama_Kecamatan`,`created_at`,`updated_at`,`FK_ID_KOTA`) values 
(1,'Subulussalam','2022-01-06 03:19:57','2022-01-06 03:19:57',1),
(2,'Pekanbaru','2022-01-06 03:19:57','2022-01-06 03:19:57',1),
(3,'Administrasi Jakarta Selatan','2022-01-06 03:19:57','2022-01-06 03:19:57',1),
(4,'Balikpapan','2022-01-06 03:19:57','2022-01-06 03:19:57',5),
(5,'Batam','2022-01-06 03:19:57','2022-01-06 03:19:57',5),
(6,'Sorong','2022-01-06 03:19:57','2022-01-06 03:19:57',1),
(7,'Tasikmalaya','2022-01-06 03:19:57','2022-01-06 03:19:57',1),
(8,'Tanjung Pinang','2022-01-06 03:19:57','2022-01-06 03:19:57',5),
(9,'Surakarta','2022-01-06 03:19:57','2022-01-06 03:19:57',2),
(10,'Prabumulih','2022-01-06 03:19:57','2022-01-06 03:19:57',3),
(11,'Padangpanjang','2022-01-06 03:19:57','2022-01-06 03:19:57',5),
(12,'Solok','2022-01-06 03:19:57','2022-01-06 03:19:57',3),
(13,'Kediri','2022-01-06 03:19:57','2022-01-06 03:19:57',3),
(14,'Cirebon','2022-01-06 03:19:57','2022-01-06 03:19:57',1),
(15,'Tidore Kepulauan','2022-01-06 03:19:57','2022-01-06 03:19:57',4),
(16,'Palembang','2022-01-06 03:19:57','2022-01-06 03:19:57',5),
(17,'Pagar Alam','2022-01-06 03:19:57','2022-01-06 03:19:57',2),
(18,'Blitar','2022-01-06 03:19:57','2022-01-06 03:19:57',3),
(19,'Banjarmasin','2022-01-06 03:19:57','2022-01-06 03:19:57',5),
(20,'Pematangsiantar','2022-01-06 03:19:57','2022-01-06 03:19:57',5),
(21,'Administrasi Jakarta Barat','2022-01-06 03:19:57','2022-01-06 03:19:57',2),
(22,'Sukabumi','2022-01-06 03:19:57','2022-01-06 03:19:57',4),
(23,'Medan','2022-01-06 03:19:57','2022-01-06 03:19:57',4),
(24,'Administrasi Jakarta Utara','2022-01-06 03:19:57','2022-01-06 03:19:57',5),
(25,'Sawahlunto','2022-01-06 03:19:57','2022-01-06 03:19:57',5),
(26,'Magelang','2022-01-06 03:19:57','2022-01-06 03:19:57',2),
(27,'Sibolga','2022-01-06 03:19:57','2022-01-06 03:19:57',3),
(28,'Administrasi Jakarta Pusat','2022-01-06 03:19:57','2022-01-06 03:19:57',5),
(29,'Tanjungbalai','2022-01-06 03:19:57','2022-01-06 03:19:57',3),
(30,'Kupang','2022-01-06 03:19:57','2022-01-06 03:19:57',5),
(31,'Lhokseumawe','2022-01-06 03:19:57','2022-01-06 03:19:57',3),
(32,'Pangkal Pinang','2022-01-06 03:19:57','2022-01-06 03:19:57',4),
(33,'Administrasi Jakarta Timur','2022-01-06 03:19:57','2022-01-06 03:19:57',1),
(34,'Batu','2022-01-06 03:19:57','2022-01-06 03:19:57',2),
(35,'Cimahi','2022-01-06 03:19:57','2022-01-06 03:19:57',2),
(36,'Pariaman','2022-01-06 03:19:57','2022-01-06 03:19:57',1),
(37,'Palangka Raya','2022-01-06 03:19:57','2022-01-06 03:19:57',4),
(38,'Bekasi','2022-01-06 03:19:57','2022-01-06 03:19:57',1),
(39,'Sungai Penuh','2022-01-06 03:19:57','2022-01-06 03:19:57',4),
(40,'Banjarbaru','2022-01-06 03:19:57','2022-01-06 03:19:57',4),
(41,'Tegal','2022-01-06 03:19:57','2022-01-06 03:19:57',1),
(42,'Padangsidempuan','2022-01-06 03:19:57','2022-01-06 03:19:57',2),
(43,'Jayapura','2022-01-06 03:19:57','2022-01-06 03:19:57',5),
(44,'Palu','2022-01-06 03:19:57','2022-01-06 03:19:57',3),
(45,'Bitung','2022-01-06 03:19:57','2022-01-06 03:19:57',3),
(46,'Mataram','2022-01-06 03:19:57','2022-01-06 03:19:57',2),
(47,'Ambon','2022-01-06 03:19:57','2022-01-06 03:19:57',3),
(48,'Mojokerto','2022-01-06 03:19:57','2022-01-06 03:19:57',1),
(49,'Madiun','2022-01-06 03:19:57','2022-01-06 03:19:57',2),
(50,'Gorontalo','2022-01-06 03:19:57','2022-01-06 03:19:57',4);

/*Table structure for table `kota` */

DROP TABLE IF EXISTS `kota`;

CREATE TABLE `kota` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `FK_ID_PROVINSI` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kota_fk_id_provinsi_foreign` (`FK_ID_PROVINSI`),
  CONSTRAINT `kota_fk_id_provinsi_foreign` FOREIGN KEY (`FK_ID_PROVINSI`) REFERENCES `provinsi` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `kota` */

insert  into `kota`(`id`,`nama_kota`,`created_at`,`updated_at`,`FK_ID_PROVINSI`) values 
(1,'Tarakan','2022-01-06 03:19:57','2022-01-06 03:19:57',5),
(2,'Bontang','2022-01-06 03:19:57','2022-01-06 03:19:57',1),
(3,'Tangerang Selatan','2022-01-06 03:19:57','2022-01-06 03:19:57',4),
(4,'Sabang','2022-01-06 03:19:57','2022-01-06 03:19:57',3),
(5,'Padang','2022-01-06 03:19:57','2022-01-06 03:19:57',5),
(6,'Malang','2022-01-06 03:19:57','2022-01-06 03:19:57',2),
(7,'Pasuruan','2022-01-06 03:19:57','2022-01-06 03:19:57',4),
(8,'Bandung','2022-01-06 03:19:57','2022-01-06 03:19:57',2),
(9,'Bima','2022-01-06 03:19:57','2022-01-06 03:19:57',4),
(10,'Makassar','2022-01-06 03:19:57','2022-01-06 03:19:57',3),
(11,'Cilegon','2022-01-06 03:19:57','2022-01-06 03:19:57',2),
(12,'Samarinda','2022-01-06 03:19:57','2022-01-06 03:19:57',1),
(13,'Parepare','2022-01-06 03:19:57','2022-01-06 03:19:57',2),
(14,'Tomohon','2022-01-06 03:19:57','2022-01-06 03:19:57',1),
(15,'Yogyakarta','2022-01-06 03:19:57','2022-01-06 03:19:57',5),
(16,'Pontianak','2022-01-06 03:19:57','2022-01-06 03:19:57',3),
(17,'Jambi','2022-01-06 03:19:57','2022-01-06 03:19:57',2),
(18,'Tual','2022-01-06 03:19:57','2022-01-06 03:19:57',1),
(19,'Bau-Bau','2022-01-06 03:19:57','2022-01-06 03:19:57',1),
(20,'Banjar','2022-01-06 03:19:57','2022-01-06 03:19:57',5),
(21,'Salatiga','2022-01-06 03:19:57','2022-01-06 03:19:57',4),
(22,'Semarang','2022-01-06 03:19:57','2022-01-06 03:19:57',3),
(23,'Payakumbuh','2022-01-06 03:19:57','2022-01-06 03:19:57',4),
(24,'Bandar Lampung','2022-01-06 03:19:57','2022-01-06 03:19:57',4),
(25,'Bengkulu','2022-01-06 03:19:57','2022-01-06 03:19:57',4),
(26,'Dumai','2022-01-06 03:19:57','2022-01-06 03:19:57',4),
(27,'Serang','2022-01-06 03:19:57','2022-01-06 03:19:57',3),
(28,'Lubuklinggau','2022-01-06 03:19:57','2022-01-06 03:19:57',5),
(29,'Metro','2022-01-06 03:19:57','2022-01-06 03:19:57',5),
(30,'Kotamobagu','2022-01-06 03:19:57','2022-01-06 03:19:57',1);

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2019_12_14_000001_create_personal_access_tokens_table',1),
(5,'2021_09_29_042817_create_table_user',1),
(6,'2021_10_04_050809_create_provinsi',1),
(7,'2021_10_04_050920_create_kota',1),
(8,'2021_10_04_051141_create_kecamatan',1),
(9,'2021_10_04_053702_create_kategori_bencana',1),
(10,'2021_10_04_054301_create_bencana',1),
(11,'2021_10_04_060011_create_pelaporan',1),
(12,'2021_10_04_073323_create_detail_korban',1),
(13,'2021_10_04_075848_create_role',1);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `pelaporan` */

DROP TABLE IF EXISTS `pelaporan`;

CREATE TABLE `pelaporan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `FK_Id_user` bigint(20) unsigned NOT NULL,
  `FK_Id_bencana` bigint(20) unsigned NOT NULL,
  `FK_Id_kecamatan` bigint(20) unsigned NOT NULL,
  `judul_laporan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi_laporan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_bencana` date NOT NULL,
  `waktu_bencana` time NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pelaporan_fk_id_user_foreign` (`FK_Id_user`),
  KEY `pelaporan_fk_id_bencana_foreign` (`FK_Id_bencana`),
  KEY `pelaporan_fk_id_kecamatan_foreign` (`FK_Id_kecamatan`),
  CONSTRAINT `pelaporan_fk_id_bencana_foreign` FOREIGN KEY (`FK_Id_bencana`) REFERENCES `bencana` (`id`),
  CONSTRAINT `pelaporan_fk_id_kecamatan_foreign` FOREIGN KEY (`FK_Id_kecamatan`) REFERENCES `kecamatan` (`id`),
  CONSTRAINT `pelaporan_fk_id_user_foreign` FOREIGN KEY (`FK_Id_user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pelaporan` */

insert  into `pelaporan`(`id`,`FK_Id_user`,`FK_Id_bencana`,`FK_Id_kecamatan`,`judul_laporan`,`isi_laporan`,`tgl_bencana`,`waktu_bencana`,`status`,`created_at`,`updated_at`,`image`) values 
(1,1,8,5,'Repudiandae doloremque nam.','Molestiae et praesentium praesentium pariatur rerum. Unde tempore consectetur aut id. Repellat est dolores et possimus vel.','2003-04-01','13:09:54','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(2,26,5,3,'Nemo iusto magnam.','Incidunt facilis consequatur omnis reiciendis qui temporibus. Ex praesentium saepe sequi quod et.','2005-02-10','13:07:20','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(3,12,10,42,'Officiis molestiae ipsa odit voluptatem.','Hic aperiam non quas. Autem sapiente facilis esse nihil illum dolorem. Rerum non officiis et enim.','2010-01-05','20:47:59','0','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(4,42,5,30,'Et voluptas.','Rem fuga est sequi alias mollitia quam. Doloribus temporibus amet voluptatibus voluptatem laborum voluptate. Et neque qui tempore debitis dolores aperiam.','1975-05-22','12:28:18','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(5,2,5,37,'Dolores dolor nam deleniti.','Repellendus laudantium esse placeat autem illum maiores. Odit sit officia optio. Repellat minima quibusdam ut non. Enim ex aliquid quia et. Nisi assumenda omnis omnis.','1990-11-07','05:41:11','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(6,13,8,29,'Nobis dolor sunt rerum.','Recusandae odit nihil a repudiandae et quos occaecati minima. Cupiditate et repellendus eum excepturi provident ex. Veniam culpa sit distinctio ea. Ducimus qui vel reprehenderit ipsum quibusdam.','1973-09-05','12:18:05','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(7,29,9,1,'Eum sequi quaerat dolores.','Ipsam debitis molestiae quos at id. Dolor et voluptatem eveniet sit sapiente non. Omnis molestiae expedita qui sed. Veritatis voluptas asperiores magni aperiam sit.','1995-07-01','07:08:27','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(8,3,8,49,'Blanditiis provident hic laudantium consequatur.','Quaerat autem omnis reprehenderit hic omnis. Aut aut rem explicabo rerum. Odit qui ut dolor nemo est debitis praesentium.','2017-06-02','14:28:59','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(9,10,4,7,'Eius explicabo.','Perspiciatis quidem cupiditate provident. Adipisci sed delectus aut aspernatur ut quam sequi. Et aut rem vel veritatis. Quia et saepe et quia nisi inventore odio ut.','2001-07-07','22:12:32','0','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(10,31,7,34,'Est fuga et.','Nemo eos natus repellat qui. Deserunt ipsam error eius reiciendis.','1972-08-20','07:12:31','0','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(11,18,8,50,'In et necessitatibus ad.','Earum id et et quia commodi amet inventore. Molestias repellat quia et consequatur dolor. Aliquid quia est eaque. Omnis aut adipisci vitae necessitatibus labore quia maxime.','2005-12-02','16:41:10','0','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(12,44,3,28,'Et quos et sed at.','Et ad voluptatem vel voluptas. Quaerat aliquam hic ut est. Veniam sit nisi ex quia dolorem voluptatum.','1977-06-01','10:45:03','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(13,41,10,26,'Non qui tempora nihil.','Nihil qui pariatur earum. Aut perferendis quidem atque quis voluptatem sed maxime.','1982-06-06','23:08:34','0','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(14,34,7,3,'Deserunt sequi molestias voluptas.','Voluptatum quas et et itaque amet et. Et et autem pariatur illum voluptate. Officia voluptas quidem sit voluptas eveniet voluptate a.','2010-04-18','02:50:19','0','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(15,16,9,13,'Ad est necessitatibus quidem.','Quis sit quas rem dolores facere corrupti. Voluptates soluta qui eum. Ea id eos autem delectus itaque recusandae.','1974-11-14','21:10:30','0','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(16,26,4,30,'Nisi aspernatur veritatis.','Enim omnis sunt est sed dolorem a numquam. Distinctio qui quisquam maiores cumque vel. Quis repudiandae commodi odit consequatur.','2011-07-11','00:36:18','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(17,34,3,48,'Adipisci totam eius voluptatem.','Et dolorem quos eum consequuntur ex. Ut quasi natus sit et accusamus. Perferendis numquam incidunt ut quas aspernatur. Libero aut repudiandae nam temporibus.','1984-06-05','05:31:16','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(18,47,3,5,'Error quibusdam deleniti quas.','Tempora voluptas corrupti voluptatem a. Ut voluptatem eveniet exercitationem voluptatum.','1985-07-16','08:28:59','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(19,38,9,33,'Possimus sed ea dicta.','Vel explicabo omnis quia exercitationem fugit reprehenderit. Optio id sapiente est debitis laboriosam doloribus minus. Nobis qui quia fugit est culpa. Natus sint et quis.','2015-11-13','08:15:44','2','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(20,29,5,10,'Alias et.','Quae temporibus autem officiis tempore nisi quaerat. Vel aut soluta in asperiores qui. Velit distinctio quis libero nobis.','2000-05-15','14:16:12','0','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(21,36,8,33,'Et debitis autem.','Et et cumque sit dolore. Error expedita voluptatem laudantium quia. Dolores laudantium tenetur quos sunt tempora quos et.','1987-02-24','19:54:37','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(22,7,10,2,'Aut porro velit.','Molestiae facilis dolores ipsum porro nisi ut maiores. Deserunt quia id et laudantium qui optio qui. Modi velit non odit eius. Qui et placeat possimus omnis nesciunt.','1979-04-04','10:46:35','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(23,6,3,41,'Consequatur rerum rerum.','A fugit nesciunt quam est ut quia. Voluptatem aut veniam quis facere dicta dolorum veniam. Et illum odio dolor vel esse animi. Rerum animi non ex harum et quia.','1986-06-29','07:46:50','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(24,40,1,10,'Tempore est dolores necessitatibus.','Culpa minima voluptatem omnis sed necessitatibus et soluta cupiditate. Eum placeat est ea rerum est qui. Qui possimus quidem cupiditate nobis aut. Ut quo porro enim dolores.','2003-08-07','11:03:35','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(25,32,5,23,'Et eveniet et.','Quam ut sint voluptas aut. Pariatur maiores doloremque ipsam autem aut maxime odio. Esse harum optio inventore nam sunt eum animi vel.','2010-02-26','15:34:27','0','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(26,42,7,7,'Cupiditate voluptatem deserunt quidem repudiandae.','Eum laudantium qui aut quod ut quibusdam ut aut. Rem iusto ipsam nostrum facilis debitis in sit. Amet ratione nesciunt velit voluptas voluptatem ratione autem.','1982-01-22','06:04:59','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(27,20,8,47,'Illum sed optio.','Est unde quia est voluptas. Non quam et et fugit. Sed omnis est officiis velit rem est. Vitae et quis nesciunt iste labore.','2005-04-04','00:16:30','0','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(28,50,5,28,'Quos quia incidunt.','Id ipsum illo dolor aperiam sapiente officiis. Ut et aut totam maxime velit. Hic officia alias ut ea alias nostrum ut. Dolor aut quia distinctio ipsa nemo autem.','2013-09-03','14:32:36','0','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(29,39,2,24,'Temporibus rem et aut.','Incidunt ea ut quia est tenetur. Deserunt delectus dignissimos consequatur veritatis ducimus.','1972-06-05','17:35:28','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(30,2,4,3,'Eius est nesciunt.','Consequatur sed omnis saepe velit. Perferendis perferendis tempore magni necessitatibus voluptatem molestiae. Odio laborum laudantium et iure nihil maxime. A autem iusto in.','1984-06-04','07:21:44','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(31,39,5,38,'Ut accusantium officia.','Veniam temporibus at quos cumque. Consectetur est ut enim id.','1977-11-04','20:23:21','0','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(32,48,1,31,'Facere id distinctio fugiat.','Commodi debitis neque architecto. Qui dolorem totam possimus temporibus aut quia sit.','1998-09-20','19:28:21','0','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(33,34,3,34,'Nisi eaque voluptatum adipisci.','In dolores dolorem sequi. Et laborum odit dolor consequatur odit id nihil.','1982-11-22','03:03:21','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(34,28,10,38,'Sed sunt repellendus id.','Atque tenetur consequatur omnis porro et veniam pariatur. Quas quod repellat odio eveniet. Iste quis deleniti aut debitis ad modi.','2003-10-20','13:37:54','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(35,23,6,2,'Tempora in.','Qui voluptas rerum aperiam saepe. Atque molestiae sapiente sapiente omnis delectus.','2005-03-04','14:27:54','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(36,32,1,20,'Quos vel.','Magni culpa enim explicabo neque. Voluptate velit mollitia nulla adipisci eveniet. Voluptas et accusamus laudantium velit voluptatem libero et.','1980-11-14','06:50:08','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(37,36,8,21,'Molestias aliquam porro.','Expedita voluptas magni voluptas deleniti deleniti. Sint beatae corporis omnis non ut. Commodi minus dolores magnam laudantium aperiam minus.','2009-02-21','05:07:54','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(38,49,6,20,'Necessitatibus quia dolores.','Pariatur ad totam sed in placeat saepe. Deserunt occaecati animi consectetur reprehenderit nostrum. Nesciunt commodi quia perspiciatis perferendis sint.','2021-07-29','16:50:13','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(39,30,8,13,'Non nobis ipsa.','Culpa est distinctio aliquam quas voluptates magnam. Voluptatum qui deserunt et voluptates. Accusamus velit reprehenderit autem eligendi. Commodi dolorum dolores provident quibusdam.','2009-01-08','16:44:16','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(40,41,2,36,'Omnis temporibus mollitia quasi.','Expedita ex temporibus excepturi quaerat. Tenetur ut saepe optio est esse. Quod id ea et reprehenderit quo. Soluta consequuntur tenetur eius beatae totam rerum reiciendis et.','2007-07-12','15:05:18','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(41,10,2,47,'Quis tempora totam ipsa.','Et aspernatur asperiores in. Nostrum vitae vero molestias et ipsa. Aut necessitatibus dolor ut nihil tenetur. Eum saepe excepturi deserunt debitis.','1988-07-07','13:59:12','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(42,37,5,13,'Fuga illo aut minus.','Necessitatibus ipsa et non qui cumque incidunt. Libero enim adipisci ab saepe repellat dignissimos qui. Est soluta in quis enim nihil velit repudiandae minus.','2004-08-10','17:34:13','0','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(43,43,4,46,'In at voluptas fugiat.','In dolores quasi et laboriosam nemo exercitationem quaerat. Dolor est et quas doloremque nihil iste molestiae necessitatibus. Eius sit unde omnis unde.','2012-11-09','15:38:06','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(44,24,3,27,'Quasi officia delectus.','Molestias architecto assumenda et explicabo porro sit aperiam perferendis. Dolorem aut repellat expedita illum. Perferendis enim numquam quisquam nihil quaerat vero.','1996-01-28','23:09:36','0','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(45,22,6,49,'Saepe eum.','Quo id esse vero quae facere fuga. Aut at quia non. Ullam voluptatum id incidunt occaecati. Sunt sit labore et culpa eum perferendis quidem.','2013-06-30','11:54:36','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(46,1,5,48,'Natus tempore sit eum.','Dolor voluptatem quasi nemo laudantium optio aut voluptatem. Distinctio libero ut et voluptatem optio deleniti aliquid. Ea qui amet quia totam soluta.','2004-11-05','07:16:07','0','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(47,48,6,37,'Ducimus aut quis optio.','Et tenetur ut eos nihil. Alias praesentium dolore ipsum perferendis omnis sed. Placeat quis ea rerum quibusdam officia dicta sed. Dicta harum natus quo dolorem aut quia.','2001-09-03','13:24:29','0','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(48,44,9,26,'Molestiae facilis quis vel.','Cumque quae nihil assumenda. Rerum animi in ex unde labore. Provident facilis sed quos similique omnis aut. Occaecati reiciendis laboriosam velit dolor.','2008-02-23','01:32:34','0','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(49,25,8,41,'Neque fugit.','Aut exercitationem ipsum ad est. Cupiditate omnis sed dignissimos ut. Ab exercitationem cupiditate quae.','2008-12-22','01:57:55','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(50,1,1,11,'Ex quibusdam fugit eligendi molestiae.','Ipsam veniam quasi esse illum. Iusto hic enim rerum iure et et animi. Nulla facilis omnis et incidunt qui. Rem nam mollitia reprehenderit accusamus.','1977-10-06','22:56:30','1','2022-01-06 03:20:01','2022-01-06 03:20:01',NULL),
(52,51,1,20,'Laporan Bencana Banjir','Banjir Bandang','2022-01-06','10:23:00','0',NULL,NULL,'11.jpg'),
(54,54,3,2,'Laporan Bencana Gempa','Gempa 3mgnitudo','2022-01-06','10:47:00','1',NULL,NULL,'11.jpg');

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `provinsi` */

DROP TABLE IF EXISTS `provinsi`;

CREATE TABLE `provinsi` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_provinsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `provinsi` */

insert  into `provinsi`(`id`,`nama_provinsi`,`created_at`,`updated_at`) values 
(1,'Papua','2022-01-06 03:19:57','2022-01-06 03:19:57'),
(2,'Sulawesi Barat','2022-01-06 03:19:57','2022-01-06 03:19:57'),
(3,'Nusa Tenggara Timur','2022-01-06 03:19:57','2022-01-06 03:19:57'),
(4,'Lampung','2022-01-06 03:19:57','2022-01-06 03:19:57'),
(5,'Bengkulu','2022-01-06 03:19:57','2022-01-06 03:19:57'),
(6,'Maluku Utara','2022-01-06 03:19:57','2022-01-06 03:19:57'),
(7,'Kalimantan Selatan','2022-01-06 03:19:57','2022-01-06 03:19:57'),
(8,'Sumatera Utara','2022-01-06 03:19:57','2022-01-06 03:19:57'),
(9,'Jawa Tengah','2022-01-06 03:19:57','2022-01-06 03:19:57'),
(10,'Banten','2022-01-06 03:19:57','2022-01-06 03:19:57');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `role` */

insert  into `role`(`id`,`Role`,`created_at`,`updated_at`) values 
(1,'Admin',NULL,NULL),
(2,'Petugas',NULL,NULL),
(3,'User',NULL,NULL);

/*Table structure for table `table_user` */

DROP TABLE IF EXISTS `table_user`;

CREATE TABLE `table_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `table_user` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_role` bigint(20) unsigned NOT NULL DEFAULT '3',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`nama_user`,`email`,`tgl_lahir`,`password`,`id_role`,`remember_token`,`created_at`,`updated_at`) values 
(1,'Yulia Zulaika M.M.','fyulianti@example.org','2022-01-06','$2y$10$UGYwvRX25uVFDzK93iYmMus3OfOWACoIcHNmom1p47qINgRzfEPMa',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(2,'Zahra Yuni Nasyidah S.Farm','najib20@example.com','2022-01-06','$2y$10$2QfoygI2ogLeYIsAqBjkuuzyJC/.hqKs376kUKAL1lYXcPr3TxBCi',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(3,'Ani Rahmi Yuliarti','kurniawan.icha@example.com','2022-01-06','$2y$10$g3RI8MUxqb1xP0zNaGlPfeeMjVquE6ToDRxyz9blCtwqw1nXITU5K',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(4,'Ulva Zelaya Utami S.Kom','kmarpaung@example.com','2022-01-06','$2y$10$UrPXeVcQyM1s57tztU0/zOsnRoofP7ql4AwmtYI2y02iHTCF5fgxu',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(5,'Belinda Palastri','kamal34@example.net','2022-01-06','$2y$10$vEAhy6VawhqiHw2HPHSmwOdDkwyvyBgcsy3y39yUjIhW/wcgYwQSW',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(6,'Cahyono Bakiadi Zulkarnain S.IP','dodo.mahendra@example.com','2022-01-06','$2y$10$RqGP2TqeWLdhO../qr2bOeiTAAg.i1n4I8pynv8eMJTzaG2pPAfTC',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(7,'Garan Wibisono','clara32@example.net','2022-01-06','$2y$10$7V.WiVUx7w4PrXlyzS6OuejfBseBSfzLPOaGHgpBU80HsrPApMIzi',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(8,'Darsirah Utama S.Ked','rahimah.rini@example.com','2022-01-06','$2y$10$YlM4q44TLMIyCmDRe1U94u7THj9c2VSUXX1kobDpEDKzLQ.Hl2U42',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(9,'Ira Kani Palastri S.Gz','nfirmansyah@example.com','2022-01-06','$2y$10$mJCr3dFQ7F9eOb/7CDC5pu45GoK35xY9UAdR5Vk/yRitdDmuzyKj6',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(10,'Natalia Victoria Puspita','kasim.haryanti@example.com','2022-01-06','$2y$10$ULJwesGcrBa6iu863inAMuco2LdpfhiwwY5xl5pq6FTywry/fVNSm',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(11,'Wirda Amelia Hastuti','vicky68@example.com','2022-01-06','$2y$10$iD1G5dHin3PDbwL89SFkfOqBTeIjg1PY6nCRtOrFJ30VEZ0euydHq',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(12,'Danang Kuswoyo','xanana.novitasari@example.net','2022-01-06','$2y$10$rtpxw4zdAvE.vTNGiq7ibeu9km2RL2MaQhdgNJz1LAFbi7p91pJje',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(13,'Kasiran Edi Saefullah','xoktaviani@example.org','2022-01-06','$2y$10$Lbo57a80Y3yxAsuH4MjTGuhPT9dlLdOgMK7RfKbs5kJT8LEHaW8/2',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(14,'Atmaja Hardiansyah','margana.hardiansyah@example.net','2022-01-06','$2y$10$/Fl7GSb0ib1IEwTzZMiRyexgZ8iM08BPh81Rl.1hSu49uYkch6Iry',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(15,'Najib Budiyanto','ellis.utami@example.net','2022-01-06','$2y$10$4b1AWaFrVqt1MoNTaKPqqeOuBHQcNSK37NKcyrhA0R1T67lqQ9Gr2',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(16,'Faizah Yuniar S.Farm','danang.aryani@example.org','2022-01-06','$2y$10$v/MvxmTzWGhPj3l8mayli.IP2uapccRf/THfgZtafW7nyVH8r.tzO',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(17,'Diana Nasyidah S.Sos','cusada@example.net','2022-01-06','$2y$10$BDcQSQXlMs/EDKFP7DJqq.dBnl85YsAAR65C6lZeEPKdTEOsnqIo2',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(18,'Ratih Halimah','simbolon.bakijan@example.com','2022-01-06','$2y$10$Nwk0UbQdwltpVpIezk/Eie3gEMQM9C6D.6.J/NUBubhO6mpxJ9rIC',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(19,'Cengkal Prakosa Thamrin S.Psi','farhunnisa.yuniar@example.org','2022-01-06','$2y$10$ZRg83d5W8TDW0d2jBqW7keWfc0syPeIdLODTZhvWMQ7TvLonNoauu',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(20,'Eli Fujiati','utami.violet@example.com','2022-01-06','$2y$10$hV911w2oOGLsoH6xsGISSuqJYSjItISSUqQNuInm9brZS4aIddgU2',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(21,'Elisa Ika Puspita S.E.I','ilsa86@example.org','2022-01-06','$2y$10$Tmt9b.ScrUdevhzE7VC9IOUUjHuas2legF6Dtngxs2NyKOW5uXbXu',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(22,'Paris Rahayu','yusuf15@example.org','2022-01-06','$2y$10$grIoEsndcTQ3pnjpePUk5OtpZcNPOoi60nqvMgutTGpYNEhX3BES.',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(23,'Ismail Candra Waluyo','halima36@example.com','2022-01-06','$2y$10$UMlCsWTniU.1b4TkLBgUxePiSd57N2NBpQBZTpMBUJuMM46uTTSoC',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(24,'Talia Wahyuni S.Farm','gasti.widodo@example.com','2022-01-06','$2y$10$GS9MKGl8VZEFBtvzqJkyWOXsOk587bBOLKzji1bvBpGk3y1FBv8BK',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(25,'Septi Uyainah','kezia24@example.org','2022-01-06','$2y$10$M5wMez3MQIIGmlB5iylzDOVz293bCRd6wbhQ1y1LQA/3P/oH6JBHm',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(26,'Carla Halimah','elvina.thamrin@example.net','2022-01-06','$2y$10$zfecB5XruKrZDW6fy/0T7u.BaOCLelRQ06Y4EbSJh9okEqnIb4U1O',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(27,'Atma Wage Prayoga','prasetyo.mahendra@example.org','2022-01-06','$2y$10$5KGH8oK98K.YQueJAT5J9.QwSE9CuVscD4lBykIQzVmF1d5LX9U.K',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(28,'Balidin Irwan Napitupulu','gawati48@example.net','2022-01-06','$2y$10$BObVYH/N9ZmYOQI/VvZQq.Fo5a9pmzKkfA9jMd7xWDOI3mP78.nxO',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(29,'Leo Kasim Suwarno','mustofa07@example.org','2022-01-06','$2y$10$XQNM/MWIMA5r5yZJOYJOueT1KetqPWLB5AbKLQL3b8kL2VxVDtTIm',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(30,'Eka Elisa Prastuti','purnawati.michelle@example.net','2022-01-06','$2y$10$kpqgfeXIAido5e/Qc4.y9.O4KpW41hxPZWjX4aZCRVVKhscAEouC.',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(31,'Maryanto Situmorang','ratna.widodo@example.net','2022-01-06','$2y$10$D9QdTcA2apYskzM5B8E9IeP8Fi/U.zoY5kRITcwCIcRxp8IJ7X2.q',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(32,'Widya Kuswandari','oliva82@example.org','2022-01-06','$2y$10$85Ny4nIfEXJ.g4DnlrUCoOxURlUnnOn/Ugu56ZlnfHG5aRtioLpwi',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(33,'Ani Wulan Andriani','manullang.irfan@example.net','2022-01-06','$2y$10$z.5KMMz3k6oSvF1Uao.FQe00w7VC76L6ObstIdFDkSMBnGA4tu7Ge',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(34,'Cinthia Faizah Anggraini S.I.Kom','danu84@example.net','2022-01-06','$2y$10$oiZgil4opc7S9trmO2uQUOVSphmquvINpJe6kOpE.a8.XQ.Ovb6km',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(35,'Ani Kuswandari','gnapitupulu@example.net','2022-01-06','$2y$10$WJQhP703oY.h/rndHDodLufnytUh63/GrFhXsP17KZJ.zc6KPZyVi',2,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(36,'Samsul Uwais','heryanto.mangunsong@example.net','2022-01-06','$2y$10$TAgLdqybn3Ht.jl21./WZu0Z2myxabQ/gt6QaACILlcmtEsEITM32',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(37,'Kenzie Waluyo','lhandayani@example.net','2022-01-06','$2y$10$N/S6rZTgBlf2fH6J0F.DLO4u0w2JJuMLcJ2wcdLhlpOM.PwsvWKya',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(38,'Fitria Hartati','kamila.rahimah@example.net','2022-01-06','$2y$10$mQkyBFTjiRG3VY4PJD0itOanbqsB4jtTikjf22FGr2tn1w78mm/a6',3,NULL,'2022-01-06 03:20:00','2022-01-06 03:20:00'),
(39,'Eva Ida Mandasari','novi85@example.com','2022-01-06','$2y$10$Y69pdt3YpiPuzmE53myPuuLEonq8d9Z7kSWDkJZSHvDsiE2ISJnLy',3,NULL,'2022-01-06 03:20:01','2022-01-06 03:20:01'),
(40,'Hasna Winarsih','melani.queen@example.org','2022-01-06','$2y$10$vsnkzzi1W8uAKUAuvSsiDu1Cy3fLcO.3EYlSJHkAsncde7TOvTjNG',3,NULL,'2022-01-06 03:20:01','2022-01-06 03:20:01'),
(41,'Edi Wacana','cemplunk71@example.com','2022-01-06','$2y$10$LgV.MFGio6frwTyE3C3uUOaiAmYky76xL/8kkc8aKKWSaEHVKRUmG',3,NULL,'2022-01-06 03:20:01','2022-01-06 03:20:01'),
(42,'Kamaria Indah Yuliarti','indah57@example.org','2022-01-06','$2y$10$yzMBJk5GHElcpf2S.9qRUORQAUEmza1HB.CFpu9AnyhJaa8GuQVfK',3,NULL,'2022-01-06 03:20:01','2022-01-06 03:20:01'),
(43,'Wahyu Tamba','hastuti.fathonah@example.org','2022-01-06','$2y$10$9bwed0VgexXA12HOS8Hxq.t6.CYeSa6UbRQ4Nzy6HoHhVlAFK4PMq',3,NULL,'2022-01-06 03:20:01','2022-01-06 03:20:01'),
(44,'Mahdi Gunawan M.Ak','balapati85@example.org','2022-01-06','$2y$10$HwLA3qg9MbBRVmCCtAbrMefre4Toit9KYDTdOQOwLrMySUqZv5SF2',3,NULL,'2022-01-06 03:20:01','2022-01-06 03:20:01'),
(45,'Mulyono Nainggolan M.M.','wlestari@example.net','2022-01-06','$2y$10$zrgEZM/7Kg/iGcbdDcPm1O6aZg4sqfgwWwFUNonyEiMimS780gj9S',3,NULL,'2022-01-06 03:20:01','2022-01-06 03:20:01'),
(46,'Irfan Pratama','mayasari.kania@example.org','2022-01-06','$2y$10$AnLZwGfDLrbPHynuHiXxBuW4Hwj.PH0/9j816/szZS0x1xbGcV36W',3,NULL,'2022-01-06 03:20:01','2022-01-06 03:20:01'),
(47,'Ina Kusmawati','wulandari.marsito@example.org','2022-01-06','$2y$10$sWnolwT31krGh5k49zTc9uemg5lEszXyhOeW75Ubte1.YM.bmBium',3,NULL,'2022-01-06 03:20:01','2022-01-06 03:20:01'),
(48,'Ani Melani','balamantri20@example.net','2022-01-06','$2y$10$HrCtBP3LhoQ7Fp/pzBCw9O9u7T1oN4WYaCF3BK5kJY611ARcqwMci',2,NULL,'2022-01-06 03:20:01','2022-01-06 03:20:01'),
(49,'Natalia Haryanti','surya.mandala@example.com','2022-01-06','$2y$10$DO0dUIzLlVRcCqprtr0mZOTR/S6gGq3IEaRkl9In44r6q5EIGSv7i',3,NULL,'2022-01-06 03:20:01','2022-01-06 03:20:01'),
(50,'Hasim Capa Santoso','mandala.titin@example.com','2022-01-06','$2y$10$tnOG2A3yWzeujxYa65BPpuuijg25pNCPa6oUjQM7di7IHRZsb4Kwe',3,NULL,'2022-01-06 03:20:01','2022-01-06 03:20:01'),
(51,'Bintang Achmad','achmadbintang45@gmail.com','2002-05-31','$2y$10$CqUfFTkweSgVmkgbbR5tceSYauR10CopFYuRHDCCW1TU2SkQDU7RK',3,NULL,'2022-01-06 03:21:53','2022-01-06 03:21:53'),
(52,'admin','admin@gmail.com','2022-01-06','$2y$10$0h6tahu82I5ERV36Yi4yOuXilQhD9.38NHhWKTEZDn7V7FD5bjLzq',1,NULL,'2022-01-06 03:25:07','2022-01-06 03:25:07'),
(53,'Petugas','petugas@gmail.com','2022-01-07','$2y$10$ldqtRyv0tlPv4OnyAPtZieNEDUm55xpqjMuxFBRi99eDNuM.P907u',2,NULL,'2022-01-06 03:29:08','2022-01-06 03:29:08'),
(54,'Pandu','pandugaming@yahoo.com','2002-06-15','$2y$10$fs8ns.KPSFg3GEvwH2vfMeV9AXLF13eN/B8S5SjD0OOhYO9duHWMC',3,NULL,'2022-01-06 03:44:37','2022-01-06 03:44:37');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
