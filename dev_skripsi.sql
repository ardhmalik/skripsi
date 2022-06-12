-- MariaDB dump 10.19  Distrib 10.7.3-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: dev_skripsi
-- ------------------------------------------------------
-- Server version	10.7.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary table structure for view `data_admin`
--

DROP TABLE IF EXISTS `data_admin`;
/*!50001 DROP VIEW IF EXISTS `data_admin`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `data_admin` (
  `id_user` tinyint NOT NULL,
  `role` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `password` tinyint NOT NULL,
  `tgl_daftar` tinyint NOT NULL,
  `foto` tinyint NOT NULL,
  `no_telp` tinyint NOT NULL,
  `status` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `data_edukasi`
--

DROP TABLE IF EXISTS `data_edukasi`;
/*!50001 DROP VIEW IF EXISTS `data_edukasi`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `data_edukasi` (
  `id_edu` tinyint NOT NULL,
  `judul` tinyint NOT NULL,
  `tempat` tinyint NOT NULL,
  `mulai` tinyint NOT NULL,
  `selesai` tinyint NOT NULL,
  `ket` tinyint NOT NULL,
  `id_pem` tinyint NOT NULL,
  `pembicara` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `data_mitra`
--

DROP TABLE IF EXISTS `data_mitra`;
/*!50001 DROP VIEW IF EXISTS `data_mitra`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `data_mitra` (
  `id_mitra` tinyint NOT NULL,
  `tgl_daftar` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `password` tinyint NOT NULL,
  `tipe_mitra` tinyint NOT NULL,
  `alamat` tinyint NOT NULL,
  `no_telp` tinyint NOT NULL,
  `foto` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `jadwal_jemput` tinyint NOT NULL,
  `id_rek` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `data_pembayaran`
--

DROP TABLE IF EXISTS `data_pembayaran`;
/*!50001 DROP VIEW IF EXISTS `data_pembayaran`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `data_pembayaran` (
  `id_bayar` tinyint NOT NULL,
  `tanggal` tinyint NOT NULL,
  `total_bayar` tinyint NOT NULL,
  `bank` tinyint NOT NULL,
  `rek_tujuan` tinyint NOT NULL,
  `atas_nama` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `bukti` tinyint NOT NULL,
  `id_mitra` tinyint NOT NULL,
  `id_jemput` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `data_penjemputan`
--

DROP TABLE IF EXISTS `data_penjemputan`;
/*!50001 DROP VIEW IF EXISTS `data_penjemputan`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `data_penjemputan` (
  `id_jemput` tinyint NOT NULL,
  `jadwal_jemput` tinyint NOT NULL,
  `waktu_jemput` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `id_setor` tinyint NOT NULL,
  `jenis_sampah` tinyint NOT NULL,
  `nama_sampah` tinyint NOT NULL,
  `berat` tinyint NOT NULL,
  `id_mitra` tinyint NOT NULL,
  `nama_mitra` tinyint NOT NULL,
  `alamat` tinyint NOT NULL,
  `no_telp` tinyint NOT NULL,
  `tipe_mitra` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `data_penjualan`
--

DROP TABLE IF EXISTS `data_penjualan`;
/*!50001 DROP VIEW IF EXISTS `data_penjualan`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `data_penjualan` (
  `id_jual` tinyint NOT NULL,
  `tgl_jual` tinyint NOT NULL,
  `tgl_konfirmasi` tinyint NOT NULL,
  `jenis_sampah` tinyint NOT NULL,
  `nama_sampah` tinyint NOT NULL,
  `harga` tinyint NOT NULL,
  `berat` tinyint NOT NULL,
  `subtotal` tinyint NOT NULL,
  `nama_pembeli` tinyint NOT NULL,
  `no_telp` tinyint NOT NULL,
  `alamat` tinyint NOT NULL,
  `status` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `data_sampah`
--

DROP TABLE IF EXISTS `data_sampah`;
/*!50001 DROP VIEW IF EXISTS `data_sampah`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `data_sampah` (
  `id_sampah` tinyint NOT NULL,
  `jenis_sampah` tinyint NOT NULL,
  `nama` tinyint NOT NULL,
  `harga` tinyint NOT NULL,
  `gambar` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `data_setoran`
--

DROP TABLE IF EXISTS `data_setoran`;
/*!50001 DROP VIEW IF EXISTS `data_setoran`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `data_setoran` (
  `id_setor` tinyint NOT NULL,
  `tanggal` tinyint NOT NULL,
  `berat` tinyint NOT NULL,
  `subtotal` tinyint NOT NULL,
  `jadwal_jemput` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `id_sampah` tinyint NOT NULL,
  `jenis_sampah` tinyint NOT NULL,
  `nama_sampah` tinyint NOT NULL,
  `harga` tinyint NOT NULL,
  `id_mitra` tinyint NOT NULL,
  `nama_mitra` tinyint NOT NULL,
  `tipe_mitra` tinyint NOT NULL,
  `alamat` tinyint NOT NULL,
  `no_telp` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `data_user`
--

DROP TABLE IF EXISTS `data_user`;
/*!50001 DROP VIEW IF EXISTS `data_user`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `data_user` (
  `id_user` tinyint NOT NULL,
  `role` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `password` tinyint NOT NULL,
  `tgl_daftar` tinyint NOT NULL,
  `foto` tinyint NOT NULL,
  `no_telp` tinyint NOT NULL,
  `status` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `edukasi`
--

DROP TABLE IF EXISTS `edukasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edukasi` (
  `id_edu` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mulai` datetime NOT NULL,
  `selesai` datetime NOT NULL,
  `ket` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_edu`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `edukasi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edukasi`
--

LOCK TABLES `edukasi` WRITE;
/*!40000 ALTER TABLE `edukasi` DISABLE KEYS */;
INSERT INTO `edukasi` VALUES
(1,' Menengah','5709 Janick Mountain Bobbieland, KS 83568-9610','2021-11-12 13:09:16','2021-08-31 20:56:30','b',3),
(2,' Latihan Kepengurusan','98580 Stamm Alley Apt. 339 Haileytown, WA 14301-4326','2022-06-08 08:04:00','2022-06-09 08:04:00','',5),
(3,' Lanjutan','44165 Ethyl Mission West Tanyaberg, NJ 41992-2956','2021-05-26 02:15:07','2021-12-25 06:58:24','b',6),
(4,' Lanjutan','071 Gilbert Street Apt. 189 Port Jena, IA 62097-3321','2021-06-27 06:48:00','2021-09-29 19:15:37','',3),
(5,' Lanjutan','08721 Schmitt Junction Kuphalville, NV 93427-6928','2021-09-20 23:09:50','2021-11-26 04:47:46','',5),
(6,'Dasar','07947 Cronin Square Wisokyville, MA 27695','2021-10-03 17:11:15','2021-09-10 01:33:45','c',7),
(7,' Latihan Kepengurusan','836 Mayer Squares North Freeda, SD 37728-8148','2022-01-14 16:26:57','2021-08-08 18:36:14','c',2),
(8,' Latihan Kepengurusan','089 Mosciski Expressway East Catherineside, MO 84208','2022-04-12 00:52:03','2022-10-17 09:52:30','',3),
(9,' Latihan Kepengurusan','002 Keshawn Courts Suite 803 Gissellefurt, IL 17008','2022-06-11 19:00:00','2022-06-11 23:23:00','a',1),
(10,' Latihan Kepengurusan','8911 Yundt Cliffs VonRuedenview, KY 21748','2022-01-29 01:41:20','2021-09-10 06:44:59','',1),
(11,' Lanjutan','3151 Tessie Inlet Apt. 579 Wilberview, OK 63855-8984','2021-12-27 11:14:59','2021-06-16 02:25:50','c',3),
(12,' Lanjutan','10105 Coby Fork Apt. 394 North Dameon, VA 88579-6610','2022-06-28 21:00:00','2022-06-30 12:00:00','c',4),
(13,' Lanjutan','302 Aryanna Lock Suite 119 Chanelshire, NV 30234-0073','2021-06-24 18:32:05','2022-02-12 08:26:40','a',2),
(14,' Lanjutan','880 Kendra Burgs North Hermann, WV 03053-3576','2022-02-19 03:45:30','2022-01-15 14:56:32','',4),
(15,' Menengah','092 Roman Ranch Suite 680 Kohlerfurt, WV 93249-8137','2021-06-16 15:04:48','2021-10-17 21:19:00','',4),
(16,' Menengah','057 Douglas Dale Suite 319 North Demarcusport, PA 73492','2021-07-20 12:47:38','2021-09-14 16:38:40','b',1),
(17,' Lanjutan','49190 Heller Overpass West Burdette, AL 46649','2021-11-16 04:21:12','2021-09-22 05:51:34','',5),
(18,' Lanjutan','434 Koelpin Burgs Kovacekbury, CT 19011','2022-05-10 17:15:23','2021-09-24 14:53:15','b',1),
(19,' Menengah','52027 Schmidt Plaza New Aleen, AL 35190-2012','2021-10-15 00:31:42','2022-01-05 09:01:56','b',5),
(20,'Dasar','8326 Elinor Island Apt. 031 Emilbury, NC 44665-9260','2021-11-23 06:07:35','2021-12-31 09:13:52','b',2),
(21,' Lanjutan','79150 Anabel Meadow Apt. 795 South Carolinechester, CO 05938','2022-03-26 00:19:59','2022-03-14 09:52:52','',5),
(22,' Latihan Kepengurusan','14756 O\'Reilly Shoals Port Reannachester, GA 36688','2021-08-30 00:11:03','2021-10-05 00:38:12','b',2),
(23,' Lanjutan','888 Wolff Highway New Lilyanfort, WV 08269','2022-07-10 08:04:00','2022-07-16 08:04:00','a',4),
(24,' Latihan Kepengurusan','46299 Botsford Lodge Suite 798 Boscoberg, RI 10724','2021-06-01 05:07:17','2021-10-24 08:01:20','',7),
(25,'Mbuhlah','Jalan Kenangan','2022-08-01 07:59:00','2022-08-17 23:59:00','Jajal sik',1);
/*!40000 ALTER TABLE `edukasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jenis`
--

DROP TABLE IF EXISTS `jenis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jenis` (
  `id_jenis` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_sampah` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_jenis`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jenis`
--

LOCK TABLES `jenis` WRITE;
/*!40000 ALTER TABLE `jenis` DISABLE KEYS */;
INSERT INTO `jenis` VALUES
(1,' Kaca'),
(2,' Plastik'),
(3,'Kertas'),
(4,' Lainnya'),
(5,' Logam'),
(6,'ELEKTRONIK'),
(9,'KAYU');
/*!40000 ALTER TABLE `jenis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `jumlah_mitra`
--

DROP TABLE IF EXISTS `jumlah_mitra`;
/*!50001 DROP VIEW IF EXISTS `jumlah_mitra`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jumlah_mitra` (
  `tanggal` tinyint NOT NULL,
  `mitra_bsu` tinyint NOT NULL,
  `mitra_nsb` tinyint NOT NULL,
  `total_mitra` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `jumlah_pembayaran`
--

DROP TABLE IF EXISTS `jumlah_pembayaran`;
/*!50001 DROP VIEW IF EXISTS `jumlah_pembayaran`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jumlah_pembayaran` (
  `tanggal` tinyint NOT NULL,
  `tunggu_bayar` tinyint NOT NULL,
  `sukses_bayar` tinyint NOT NULL,
  `total_bayar` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `jumlah_penjemputan`
--

DROP TABLE IF EXISTS `jumlah_penjemputan`;
/*!50001 DROP VIEW IF EXISTS `jumlah_penjemputan`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jumlah_penjemputan` (
  `tanggal` tinyint NOT NULL,
  `tunggu_jemput` tinyint NOT NULL,
  `sukses_jemput` tinyint NOT NULL,
  `total_jemput` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `jumlah_penjualan`
--

DROP TABLE IF EXISTS `jumlah_penjualan`;
/*!50001 DROP VIEW IF EXISTS `jumlah_penjualan`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jumlah_penjualan` (
  `tanggal` tinyint NOT NULL,
  `tunggu_jual` tinyint NOT NULL,
  `sukses_jual` tinyint NOT NULL,
  `total_jual` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `jumlah_setoran`
--

DROP TABLE IF EXISTS `jumlah_setoran`;
/*!50001 DROP VIEW IF EXISTS `jumlah_setoran`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jumlah_setoran` (
  `tanggal` tinyint NOT NULL,
  `tunggu_jemput` tinyint NOT NULL,
  `tunggu_bayar` tinyint NOT NULL,
  `setor_sukses` tinyint NOT NULL,
  `total_setor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `mitra`
--

DROP TABLE IF EXISTS `mitra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mitra` (
  `id_mitra` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_daftar` datetime NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `jadwal_jemput` datetime NOT NULL,
  `id_edu` int(11) DEFAULT NULL,
  `id_tipe` int(11) NOT NULL,
  PRIMARY KEY (`id_mitra`),
  KEY `id_edu` (`id_edu`),
  KEY `id_tipe` (`id_tipe`),
  CONSTRAINT `mitra_ibfk_1` FOREIGN KEY (`id_edu`) REFERENCES `edukasi` (`id_edu`),
  CONSTRAINT `mitra_ibfk_2` FOREIGN KEY (`id_tipe`) REFERENCES `tipe` (`id_tipe`)
) ENGINE=InnoDB AUTO_INCREMENT=370 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mitra`
--

LOCK TABLES `mitra` WRITE;
/*!40000 ALTER TABLE `mitra` DISABLE KEYS */;
INSERT INTO `mitra` VALUES
(1,'nsanford@example.net','db31fd74f4cfd042de185b48afec39bfd3b14ef3','kfriesen','2022-04-16 06:37:24','8304 Jaylin Walk','84745445123',NULL,0,'2021-12-03 08:36:09',22,2),
(2,'bartoletti.sonny@example.com','4a97364ebcd40273903e05f8165ac465f2ddf65f','orippin','2021-12-04 03:54:38','8024 Aniyah Summit Apt. 233','88560099763',NULL,0,'2021-11-26 18:41:47',17,2),
(3,'sylvester75@example.net','7b7d9a125c332afab065535996f60a4aee3c2670','modesta.rippin','2022-04-06 00:04:35','71245 Sipes Prairie Apt. 350','87719834691',NULL,1,'2022-01-19 16:20:39',25,2),
(4,'huel.jamir@example.org','ed7a7b47e4080595a09bc42a703783ba40486ce5','theodora.oberbrunner','2021-12-27 16:39:03','402 Lang Mills Apt. 699','86290486521',NULL,1,'2021-07-05 18:10:28',19,1),
(5,'hturcotte@example.com','aea5435711ab7d2eac822dd4d4780a8eeea61f66','courtney39','2022-01-12 07:34:09','1071 Tia Via Apt. 697','89534078153',NULL,1,'2021-12-31 22:13:40',3,1),
(6,'lcassin@example.com','547514cf7602b145afc4478845f6664d004362d7','stoltenberg.lacy','2022-02-23 22:16:51','4465 Chadd Cape Apt. 554','85150091755',NULL,1,'2022-05-16 19:59:43',25,1),
(7,'chartmann@example.com','b7b99563a4ca5794734bf05837c8c4876373f1bd','trey.nolan','2021-12-09 03:08:59','8286 Eriberto Mall','88505691219',NULL,1,'2021-07-28 09:55:24',15,2),
(8,'kory.jaskolski@example.org','1c614db8731ac893cbd8cce64ba9d51632fa0305','russel.charley','2021-09-11 14:01:41','3536 Pfeffer Knolls','82435143238',NULL,1,'2021-07-01 10:01:48',24,1),
(9,'hassan.jaskolski@example.com','6917c22a2e10a2b464891aeda4c014d362e4702b','bdibbert','2021-11-13 13:57:42','1141 Alvina Cliff Apt. 155','82677596981',NULL,0,'2021-08-02 02:10:17',4,1),
(10,'ybednar@example.com','cebe1421f5ece0230abdab71adf32728d8bac7bb','wgoldner','2021-08-30 09:39:09','38868 Destini Bypass Suite 748','83731416848',NULL,1,'2022-01-09 04:40:30',20,1),
(11,'xzulauf@example.org','4c984ad339f280ac96833b7fb5233dc24974d545','schmidt.giovani','2021-10-06 15:53:13','199 Nathaniel Terrace Suite 827','81256750946',NULL,0,'2021-08-02 12:06:17',3,1),
(12,'rwolff@example.org','005c73323dadd9f2c4da5650e1adbc94824c2d9b','qbartell','2022-05-23 02:15:32','71190 Wiza Dale Apt. 068','83425539549',NULL,0,'2021-09-01 17:34:27',25,1),
(13,'marielle.bernhard@example.net','1bd2e8e6d3166b5303c81b93dc3c1c964fb07f93','mortimer.von','2021-11-23 12:24:56','03546 Lavern Pass Suite 200','87949224267',NULL,1,'2022-04-15 11:48:25',11,1),
(14,'blaze79@example.org','2b6baf6f9d8a810648bcefa472447f134029f2c7','constance.bruen','2021-09-26 14:22:33','08155 Parisian Crossing','81252046703',NULL,1,'2021-12-06 18:47:48',11,2),
(15,'krystal21@example.net','d32c8ef3b7cd33d31a83abe621d26a7a521894e4','ykuphal','2022-01-31 21:35:51','781 Erdman Curve','83353380482',NULL,0,'2021-09-25 19:23:08',3,2),
(16,'herman.randy@example.net','e0eac66662f6f3cb2fd08a9e252a8e0ebace3408','sandy.schinner','2022-03-20 04:37:17','713 Wiegand Squares Apt. 224','81340902919',NULL,0,'2021-08-08 00:39:16',25,2),
(17,'zborer@example.org','41ec7112eb2620b45597a66b4fb4ea47c063c680','dmertz','2021-08-20 01:37:50','703 Donnelly Shores Apt. 970','81444026542',NULL,0,'2022-02-05 05:30:51',24,2),
(18,'stephon99@example.net','2172aae2c21d3082776cbe6be6cd2ce561b465d5','hartmann.maybell','2021-06-18 04:41:15','46021 Hilpert Isle Suite 791','86483808759',NULL,1,'2021-08-06 15:24:32',25,1),
(19,'kihn.katelin@example.net','35e331cd5ddf3486d2382dc2e18a54d13b2b5ec9','faustino.gleason','2022-04-24 23:17:06','8826 Mayert Centers Suite 921','89139491874',NULL,1,'2021-09-07 03:38:25',25,2),
(20,'ashlee69@example.com','6aac4055fc0c1a75f18fbce9f2ba00e54868a4ea','amya.jerde','2021-12-13 03:19:11','54945 Mills Burg Suite 246','89662721335',NULL,1,'2021-07-27 08:46:34',14,1),
(21,'cummings.jerad@example.org','d8dc73ddf44617a25433fb548cd60ad37b736422','vincent46','2022-04-20 22:10:07','47973 Jerrell Burgs','83027292895',NULL,0,'2021-12-04 14:50:26',4,2),
(22,'predovic.augustus@example.org','fb22a53fbfcae5797d5b8b7c75b70afe3298650e','xritchie','2021-09-11 08:53:30','06989 Abshire Via','86911278288',NULL,1,'2022-05-09 03:43:22',20,2),
(23,'fannie53@example.net','fccc86cfb3a0c7ce8c1e959c3317697350d89f5d','stevie94','2022-04-09 17:39:58','8727 Altenwerth Mountains Suite 885','87927749488',NULL,1,'2021-08-28 07:16:39',13,2),
(24,'esther.wiza@example.org','4348c2945c699b8d5c528710122331b74cf43b5b','arely27','2021-12-21 07:00:17','5561 Narciso Centers Suite 370','84262016477',NULL,0,'2022-04-25 11:34:06',21,2),
(25,'lstracke@example.com','8bc9650082ebccb0f095d7ae1ec0ed525cae497d','evelyn.schowalter','2021-06-05 18:42:33','883 Aditya Mission','87633564778',NULL,1,'2021-06-12 21:52:01',25,2),
(26,'earlene.bergstrom@example.org','590bceefae4e721a22bfd652ee5b452712abaa36','cody.effertz','2022-02-23 12:19:17','317 Mante Green','85273573671',NULL,0,'2021-09-09 09:21:23',21,2),
(27,'araceli57@example.net','17db4c0f0149021266ffb4593b03f57b7f5e56a9','hauck.hannah','2022-03-31 20:36:55','80786 Glover Bridge Apt. 545','84401051526',NULL,1,'2022-04-02 19:43:12',25,2),
(28,'fryan@example.org','b80947bf8ff19d41cc0aff405d67c73789a8439a','eugene52','2021-10-23 08:28:37','0091 Marianne Meadows','84536495502',NULL,1,'2021-09-29 04:59:27',25,1),
(29,'alanis.harvey@example.net','1632cc4b4d638c7ed3f647b0fdf9dc1b45ec7e41','mann.erik','2021-10-20 18:33:42','6818 Marcia Island Apt. 753','81132704925',NULL,0,'2021-10-17 18:37:56',22,1),
(30,'ayana.nitzsche@example.net','1edf44f1a3d4d8dea13bd642e85ac366c260535b','marilou10','2021-11-08 03:47:02','881 Willa Unions Suite 904','89328156883',NULL,0,'2021-06-18 17:49:45',1,2),
(31,'gerry.luettgen@example.com','32cd36eb021431904b418c3dafb82014c6c3b924','kkilback','2021-06-06 01:46:24','064 Fahey Spring','85492043292',NULL,1,'2022-02-05 06:24:10',25,1),
(32,'sipes.hallie@example.org','609062a527916dd9318e4dfd3b96cfae78794ac8','madison.daniel','2021-11-16 21:38:51','991 Goldner Burgs Apt. 931','89236171245',NULL,0,'2021-10-26 17:56:44',25,1),
(33,'yundt.gina@example.org','6ed56d8aac6113b3a15b3da386885122cfefc496','judson12','2021-11-01 03:34:52','2109 Daugherty Way','82472703208',NULL,0,'2021-10-26 06:46:59',21,2),
(34,'wwill@example.net','945d5da0418ed95c2691aabebe20177b9d2962df','name.gislason','2022-02-17 10:04:37','173 Alexie Cliffs Suite 540','86674943115',NULL,0,'2022-05-19 16:41:38',17,1),
(35,'olin86@example.net','efa5237179f23ee37b62cf50f65833470a06d87c','hilda13','2021-06-06 21:02:04','806 Shane Mission','85102384090',NULL,0,'2021-11-29 03:03:29',13,1),
(36,'nicolas.wolff@example.org','a840528250022b734899ca1bf3c38c58d389c8e5','linnea.erdman','2021-10-15 17:38:11','6654 Robel Rapid Apt. 366','88691130673',NULL,1,'2022-04-22 23:22:27',14,2),
(37,'paolo.mclaughlin@example.net','c92922414ca990705ebd8d4ebb5f8b899731b73f','hlockman','2022-04-03 02:39:39','1064 Carleton Parkway','87346497674',NULL,0,'2021-08-23 01:35:55',1,1),
(38,'jrunolfsson@example.com','3ba1ffa4383f214210508d14f0c88e6ccfb5e029','wilbert.stoltenberg','2021-10-31 19:40:45','3107 Genoveva Hill Apt. 031','85797042796',NULL,1,'2021-07-08 23:10:40',25,2),
(39,'gaylord61@example.net','98c7ec55a53ca5615c22105bece5b319431bb78a','burley44','2021-12-30 07:57:10','9579 Lawrence Center Apt. 742','87687005437',NULL,1,'2022-01-18 18:16:16',3,1),
(40,'reginald.barrows@example.org','7992bbe89a7aa276c9df6d4268d201169f4eca4b','jennyfer.reilly','2021-11-04 14:47:10','3395 King Oval Apt. 881','82344798876',NULL,0,'2021-12-04 22:14:42',4,2),
(41,'laisha96@example.org','98f1ec92d5970042af2a61389522be3c4fe8c68c','mreilly','2022-01-04 08:39:13','410 Jasen Point Suite 118','81668835120',NULL,1,'2022-02-01 03:30:06',18,2),
(42,'ratke.laisha@example.org','275e85951eba497ed1d70c69e24373680903d38b','tbatz','2021-08-06 18:55:12','139 Steuber Square Apt. 629','87128567765',NULL,1,'2022-05-06 06:08:41',24,2),
(43,'jesus63@example.net','15293e649858eb7bc205bde6ee2894aac607c440','earl84','2022-05-08 10:49:14','9592 Emerald Village Suite 232','85832660574',NULL,0,'2021-08-11 17:32:18',20,1),
(44,'marques86@example.com','d6602654a6b93c6af50e1d93ffa96b2df8ff62c5','kilback.ruthie','2022-05-13 23:09:52','2576 Rutherford Point','83754060106',NULL,0,'2021-08-20 00:39:55',7,2),
(45,'jfriesen@example.org','25b8de419eae5d39b33bdc05d0a9212cd04e7ae2','klind','2021-08-13 03:17:29','972 Edward Groves Apt. 599','83128948240',NULL,0,'2021-09-19 11:34:42',13,1),
(46,'sydney25@example.net','1dbc65dec21527d4988c830595c5696f6cea64ce','o\'reilly.giuseppe','2021-12-02 23:31:30','2851 Adrain Trail','85140822720',NULL,1,'2022-02-28 14:52:53',16,2),
(47,'rosetta68@example.net','3e7dc301405e6e4e9ccf298b7364304048207d5d','carmela34','2021-07-11 13:36:09','02958 Horace Mount','87300841261',NULL,0,'2022-04-21 21:32:11',10,2),
(48,'torrance36@example.org','65d5fd7c6cd4af94d0f78c4c30eb55a81295a7e2','elmore.wiza','2021-07-30 09:10:41','6624 Madonna Shore','81421353945',NULL,0,'2021-08-14 01:56:08',25,1),
(49,'schimmel.giovanni@example.com','6b8cb6038c53114a867016ce746e767e4809d36c','michelle.schaden','2021-12-01 19:37:49','31044 Caterina Green Apt. 983','81555423140',NULL,0,'2022-05-06 13:20:01',25,2),
(50,'lwest@example.org','a9ca6da3e8fc2babecc693ea8345438073b4a98d','tfritsch','2021-07-20 17:27:52','296 Norma Views','89048571296',NULL,0,'2022-03-20 20:13:30',25,2),
(51,'conn.emilia@example.com','363b132540314dc008e7dbcc9b58e54d8db449b4','francesca.walter','2021-10-03 13:00:28','21598 Jeramy Heights','83451922233',NULL,0,'2021-05-31 21:12:21',5,2),
(52,'igislason@example.com','cd102f6f2510dd159d6cbfc5a1e659cac16bd9bb','mcglynn.sheridan','2021-10-21 02:53:04','09874 Nikolaus Point','81799048019',NULL,0,'2022-04-28 06:28:18',16,1),
(53,'weston34@example.net','0ff0babd1634c4eb7c6fb56b47dc60400523b6d0','willms.brennan','2021-11-29 13:23:09','449 Erdman Shoals Apt. 383','89638237059',NULL,0,'2022-02-20 08:13:12',6,2),
(54,'larson.joey@example.org','2e941fd79fdfd0e2b51807bb6b4cebcbfa583cc3','idella.ruecker','2021-08-08 19:54:51','382 Daniel Pines Suite 939','82931292545',NULL,1,'2021-06-19 23:56:14',19,1),
(55,'vstehr@example.com','143e6537d4ca789e735b72c38778d5b123d55c78','rwaelchi','2021-06-03 18:53:01','346 Boyle Hollow Apt. 017','85421149792',NULL,0,'2022-04-25 01:01:25',3,2),
(56,'winston.schuster@example.com','60605335307e490e40aa07c2225a9186e602778c','sbuckridge','2021-06-20 11:57:19','75765 Herzog Rue Suite 417','86948535169',NULL,1,'2022-01-17 22:17:09',7,2),
(57,'alyce83@example.com','91282caea176daf428b70cd034d6022eeb528829','blockman','2021-11-14 22:13:34','92329 Elaina Creek','85221034764',NULL,1,'2021-09-24 20:30:34',22,1),
(58,'stanton.hettie@example.net','3a498d68fa37bf54d7000e3722ae9b70342710f4','rswaniawski','2021-08-03 17:46:40','54577 Caitlyn Camp Suite 142','84702716068',NULL,1,'2021-08-10 20:50:14',15,2),
(59,'kemmer.ernie@example.net','5a11bd0045f879b54be95d44e7c22c72db122750','braun.lambert','2021-11-27 05:49:00','49639 Batz Crossing','86974209547',NULL,0,'2021-11-08 13:45:08',6,2),
(60,'gspinka@example.com','1918b9f3f8677d3ae0db06603eb6738911b1af0d','deron.prohaska','2021-06-15 20:40:22','6101 Langosh Lodge','88324169065',NULL,1,'2022-04-06 07:28:52',7,2),
(61,'jevon34@example.org','839fee1cfde800f40dd7f4c1736bacf11d2cd03d','kurtis65','2021-11-02 20:40:27','7742 Rippin Plaza','84322448757',NULL,0,'2022-03-15 06:05:02',3,2),
(62,'xschroeder@example.com','b03ae22ef850b600e6c5b4f0d4b95f9cd0079dd8','will.albert','2021-12-06 06:55:19','1506 Kailyn Mills Suite 809','89312283396',NULL,1,'2021-07-05 03:58:20',17,1),
(63,'jerod.hayes@example.net','cba5ebc2f272b2fd542ff535a3a10ee7b03ceca4','hstamm','2021-07-12 05:35:08','94059 Harris Port Apt. 273','83126069791',NULL,1,'2021-05-27 05:51:24',13,2),
(64,'damaris.zieme@example.org','c5a72ede3909381fd694f1eed250611c6bffef3a','bfeeney','2022-05-17 21:32:57','6424 Steve Mill Apt. 822','89018867479',NULL,1,'2022-04-15 12:27:28',18,2),
(65,'ro\'keefe@example.org','3bd805940cf2dbb04e9f28d375977b1cad924f84','amira.abernathy','2022-05-01 00:34:02','19793 Kutch Summit','83344020686',NULL,0,'2022-02-27 01:09:47',24,1),
(66,'pmorissette@example.org','37206991e7f20133d35eb480deee3f5855e9a9b6','misty.harber','2021-09-11 02:26:24','74010 Stone Garden','83521806092',NULL,1,'2022-01-01 13:10:41',24,1),
(67,'runolfsdottir.gia@example.net','e2282e3a921be7bdb85817adb113c27d3af5f163','kiana73','2022-02-15 13:59:05','08652 Maryam Vista','86716957820',NULL,1,'2022-05-09 00:41:11',25,2),
(68,'major71@example.org','9aab154322c148985396a92555e55da7f096efb0','gorczany.deven','2021-06-12 19:55:15','57230 Terry Trail Apt. 322','83815713172',NULL,1,'2022-05-03 17:34:07',25,1),
(69,'brigitte.terry@example.net','e693cb31b1ff0c501dd8c59b7d35aa356f8ee64a','cristian.terry','2021-12-19 21:25:07','919 Kaia Turnpike Apt. 827','89387960243',NULL,1,'2021-11-26 20:55:28',13,1),
(70,'gerson.kshlerin@example.net','1cd0a09d55bb6fd4e4ca6ca8b919fe876e183357','roberts.dortha','2021-05-30 13:32:06','16867 Schroeder Stravenue Suite 819','88446286324',NULL,1,'2021-12-17 06:29:30',10,2),
(71,'bechtelar.sharon@example.org','86b2f5c22b1cce7818e002e593b2e52c453a5828','orn.douglas','2021-12-06 01:37:15','91565 Ruth Curve Apt. 911','82840020958',NULL,0,'2022-02-24 08:18:49',24,2),
(72,'feest.marquis@example.net','07b4a0088d070e53836bf74b3cffef9ab5de1a63','salma.mohr','2021-09-10 12:08:40','711 Kovacek Shores','89113689362',NULL,0,'2021-10-19 15:16:30',11,2),
(73,'rita.white@example.com','84b82474cb45de2f0371791a6e1a4da305041a98','mcclure.julie','2021-06-02 13:34:13','910 Hauck Land','87095139982',NULL,0,'2021-12-07 12:23:55',22,2),
(74,'haylie98@example.com','618fe602ae9fbf64bf6caf7690fa4475b1f0b934','gerry00','2022-04-06 02:07:13','69458 Jimmy Skyway','83132156079',NULL,0,'2021-12-06 13:59:05',10,1),
(75,'pemmerich@example.com','ffdd8c73b413cf024283bd27dd099e451e176dac','manley.kuhlman','2021-06-03 09:52:52','74174 Marie Highway','84817746923',NULL,1,'2022-04-20 03:37:30',21,2),
(76,'brooks.krajcik@example.com','f11cb7851c32444a8c22f7d931bd2bf410aa6daf','dayton.mcglynn','2022-04-22 01:23:10','5547 Powlowski Union Suite 752','86052638586',NULL,1,'2022-01-29 16:37:05',20,2),
(77,'kwisozk@example.com','adf9525da5c8b0e1f3b4040ee24296e0eb8b6fdd','hiram.spinka','2021-10-15 04:41:55','4337 Padberg Freeway','86516792070',NULL,1,'2022-03-23 01:05:48',15,1),
(78,'devyn.welch@example.net','fc12fb0bb9b263bd348a9e1d3931fd21ef780341','myrl76','2021-05-31 21:08:03','684 Leffler Burgs','86893755830',NULL,0,'2022-05-23 01:40:47',11,1),
(79,'zarmstrong@example.com','6d5b900f926caf51aeeedc285e534031d9cb322e','ettie08','2021-06-10 19:34:32','6555 Wyatt Walks','86691934702',NULL,1,'2021-10-05 11:04:11',10,1),
(80,'rory.lowe@example.com','c05e33d6a6f82bd9d1ef1b0e2651e083e6b8c97e','erodriguez','2021-08-08 17:04:54','76914 Mya Corner Apt. 454','88911956217',NULL,0,'2021-08-24 03:46:46',25,1),
(81,'rico.mclaughlin@example.com','d1626354049594d828a19103da0f64c65793db1c','dickens.norma','2021-06-13 11:43:06','86250 Keeling Spring Suite 487','84399997898',NULL,0,'2021-10-01 08:37:22',4,1),
(82,'strosin.price@example.com','78c2bf919ea56c2aeeb4334926b39c2b00283d5e','dabbott','2021-07-17 00:07:36','7409 Davis Radial','82052339468',NULL,0,'2022-05-07 21:53:57',11,1),
(83,'bhaag@example.net','606b451af88b7d7386c62c6a51b268a3f09fa6c5','fadel.alaina','2021-09-06 02:18:44','1845 Krajcik Islands Suite 162','84343109759',NULL,1,'2022-01-16 22:53:49',16,2),
(84,'hdurgan@example.com','c8231ffe4711eea45c4920fa12d451f01af4ea30','herman.damion','2022-01-11 07:53:23','4600 Walton Mountains Apt. 131','89478798318',NULL,1,'2022-01-13 09:49:14',4,1),
(85,'kub.earlene@example.net','df1ced2987c241ed5c6b4085283df1e35615410e','gblock','2021-10-06 05:44:37','408 Camron Gateway','88658472030',NULL,1,'2021-07-25 02:18:36',20,2),
(86,'brant39@example.com','b6dc35a7d1b20a394d312378a1a9458f2624d1b8','rolfson.kristopher','2022-02-05 13:34:49','490 Christ Row','87717662445',NULL,0,'2021-06-21 04:37:46',19,2),
(87,'rryan@example.com','f64992a0edae05eb60bfead03d179a0163627464','wfisher','2022-03-16 01:54:28','7180 Monica Mews','89071715647',NULL,1,'2021-12-27 21:30:44',5,1),
(88,'annette89@example.org','53c6220f75f3387d1f3b37023cda107db4efc4d5','arely.zemlak','2021-10-11 11:18:32','8638 Mertz Crest Apt. 509','82871451394',NULL,1,'2021-11-07 05:43:42',13,1),
(89,'jensen.schaefer@example.net','465e443e05bf33da7014f864c49aec44de78ba97','qterry','2021-07-13 10:27:40','26343 Joany Crescent Suite 173','87895115473',NULL,0,'2021-06-26 10:54:58',4,2),
(90,'bosco.dagmar@example.com','172be5f45275e6a7386ced19e0b07779d5bf912d','ankunding.margret','2022-02-14 10:29:34','359 Dickinson Land Apt. 450','89638586474',NULL,0,'2022-05-11 00:40:11',3,2),
(91,'kaycee.ankunding@example.net','9d94afb3fab83a3a63b30af529614464a10ac2d6','maud35','2021-05-31 06:36:01','866 Lenny Well','87060487249',NULL,0,'2021-06-15 08:46:58',15,2),
(92,'jessica.gerhold@example.com','9e87c91b79c1ff03cf683d4472df7184f6535182','odessa.ankunding','2021-10-01 05:18:21','800 Monahan Meadow','85315123804',NULL,1,'2021-10-10 20:21:28',25,1),
(93,'hiram61@example.com','d82479d931f1b22717092fd04ede598fe5fc25da','howell.leda','2022-01-25 11:14:22','117 Hyatt Common Apt. 369','86569459272',NULL,1,'2021-12-25 20:30:42',7,1),
(94,'birdie.larkin@example.org','3d000c89659feca80f879cb7351d78dbb27f0ec6','cleve75','2021-10-18 15:03:43','2877 Kris Ramp Suite 314','81581771555',NULL,0,'2021-08-04 06:05:59',6,2),
(95,'guadalupe.tremblay@example.org','04279bba65f0bab6773d3130e7e6e6317c4d5e04','purdy.jay','2022-02-12 19:28:36','60107 Denesik Mount Apt. 143','87879256324',NULL,1,'2021-06-13 06:19:14',13,1),
(96,'sawayn.enos@example.org','41862ac9d3f045e7f4c48220b3a42441591841ac','lizeth.wolff','2021-12-15 23:50:36','1614 Nathanial Brooks','89821170059',NULL,0,'2021-11-06 22:50:29',24,2),
(97,'shanel.hansen@example.org','99e072a4739cb6581c4952f784b56c0a2fa76f9f','beulah.runolfsdottir','2022-01-25 08:20:14','4557 Micheal Rest','84425788194',NULL,1,'2022-04-13 01:21:56',25,1),
(98,'vweissnat@example.org','a724f8c7381d0bc6721644bc06620793345581c3','gprice','2022-03-07 10:34:02','7883 Lempi Harbors Apt. 488','89397054604',NULL,1,'2021-06-01 11:23:20',18,2),
(99,'mitchell00@example.com','ffeea62210e97a1f2b87468d28b08c54f1f7b5c5','zberge','2021-07-15 09:36:57','4825 Vickie Manors','85133934654',NULL,0,'2022-02-19 12:30:09',4,2),
(100,'richard.hirthe@example.net','90dd3051d2b3e0bcefed421664bd21d3345c51e3','christiansen.paul','2022-02-25 20:08:15','9316 Johnson Keys','89127489746',NULL,1,'2021-09-13 04:37:17',25,2),
(101,'josie.durgan@example.net','7ec713f82a0e8f8e5b700ee88252aaf77cb70f8c','cummings.arlene','2022-04-04 12:46:21','321 Powlowski Ville Suite 929','81602624886',NULL,1,'2022-05-09 12:34:11',10,2),
(102,'opouros@example.net','d5a9180c61f284f1a35e3701bafd1bc9f73cc5c9','logan31','2021-07-15 09:36:11','29943 Cecil Terrace','83415175535',NULL,0,'2022-03-26 18:05:48',17,2),
(103,'gaylord.linwood@example.com','fa88b2916c44d690282f43129f98d31f53958a24','marvin.zack','2022-04-10 02:20:29','4500 Skiles Locks','85363389853',NULL,1,'2022-05-17 09:17:19',24,1),
(104,'nbatz@example.com','427d1027043afb0a03d7563f4065a6419a558e14','sbergstrom','2021-07-01 21:40:39','351 Pat Brooks','81140740004',NULL,1,'2021-12-30 23:42:47',15,1),
(105,'rick67@example.com','2d088c9cbc979c61fb116045722ef4c2726e6b67','jones.jennifer','2021-07-06 06:58:01','0275 Schumm Fork Suite 352','81996809637',NULL,0,'2021-10-12 09:07:39',25,2),
(106,'mosciski.trever@example.org','86b98cb3b86f5bf2173377912b2de8c2fc006dfa','enitzsche','2022-04-10 16:23:59','6266 Melba Harbors','85431715456',NULL,0,'2021-11-14 21:40:12',1,2),
(107,'nicolas.ivah@example.org','c9a54216ac8bd7e467dab5a8ea41e6c053cfb078','lemke.antonio','2021-05-28 19:25:57','472 Sabryna Lake','85740588497',NULL,0,'2021-09-08 00:40:29',14,2),
(108,'rgorczany@example.org','2b7e9b140a918dfaf7f24ada1ae3f655cfd749ca','llewellyn72','2021-10-27 03:45:55','248 Milton Corners Apt. 411','89623707984',NULL,0,'2022-05-11 22:27:57',19,2),
(109,'bette.spinka@example.com','806777a1aaa0debc6c5f917aeee66195b4fa05e1','molly56','2021-12-21 00:25:42','232 Oran Overpass Suite 888','83305085392',NULL,0,'2022-02-05 04:53:12',25,2),
(110,'ashlee.dickens@example.com','686c02073e86039491d7864895beda698a78032c','etreutel','2022-01-17 07:17:22','2825 Orin Villages Suite 693','89990237135',NULL,1,'2021-09-28 16:26:44',25,2),
(111,'llarkin@example.net','33a95f4d59894caee4943b80f6b734e83fd5108a','mlabadie','2022-01-25 23:44:42','9010 Ivory Fort','81976801020',NULL,0,'2021-11-22 22:55:39',7,1),
(112,'kabshire@example.org','85598c4e689d2b0dcaf062130561cb384979618a','angela.aufderhar','2021-05-27 01:54:43','31845 Miller Lock','86507634690',NULL,1,'2022-05-17 06:08:32',11,2),
(113,'xbailey@example.com','58de5f84420a1136b07c82c2ed453a6dd353d42c','hmayer','2021-08-30 11:02:57','8375 Marks Orchard','83549957461',NULL,1,'2022-04-20 12:40:51',20,1),
(114,'balistreri.rhett@example.org','688bd400b9d9ee58912a519dfeea7f9a73ce19a5','jamir.kulas','2021-06-22 01:52:57','41389 Oberbrunner Drives','87402789038',NULL,1,'2021-11-04 05:43:12',14,2),
(115,'llockman@example.org','40acae4a8060655e3a4f953f2f6aaded7989e6a7','darryl.emmerich','2021-07-11 02:26:26','638 Newton Green Suite 771','89318185626',NULL,0,'2021-09-16 01:48:33',25,2),
(116,'veum.evert@example.net','22dd2ef5e3eb7a7fafc08001aa5f1742ba26a5b9','larkin.fleta','2022-02-02 09:17:51','321 Lemke Well','89131368936',NULL,1,'2021-12-29 16:20:08',22,1),
(117,'euna65@example.org','d4215c3d67e55f6660ea9537da0a220df377c77e','oberbrunner.edwina','2022-03-09 02:44:36','34518 Kirlin Islands Suite 176','85032432219',NULL,1,'2021-12-16 10:11:35',10,1),
(118,'lkuhic@example.com','52d29caf3d8cd4b0531bd15beb0521d9ea5d7e25','otha63','2021-12-19 18:51:08','729 Alford Knolls','81563482814',NULL,0,'2021-11-22 10:46:58',25,1),
(119,'vandervort.cassandra@example.net','a8b537a3686f88acf96d413fe78c0f09f4f279e1','price.jettie','2021-12-28 15:53:34','789 Kemmer Street Suite 742','82320324521',NULL,1,'2022-03-30 15:23:34',16,1),
(120,'lueilwitz.cielo@example.net','260af725c09711b499281d4b6573f6794df4faa1','okuneva.carter','2021-10-04 20:51:55','6408 Crist Flats','88323871729',NULL,0,'2021-11-09 00:02:46',25,2),
(121,'schiller.reggie@example.org','2c9ceef818de555319183f48c04aa1ab2704df3b','marquardt.malachi','2021-09-30 17:00:21','44998 Noemie Freeway Apt. 547','81846736230',NULL,1,'2021-08-01 06:48:28',5,1),
(122,'kihn.easter@example.net','37f820727432a1d02e8f33abecb3e7a395e12d45','schuppe.brisa','2021-11-19 00:06:31','91226 Hudson Radial Suite 915','81406721708',NULL,1,'2021-12-31 07:25:44',7,2),
(123,'rafael80@example.com','4694313f921fd0147189f5296ac3102ee9eeec31','xwaelchi','2021-08-01 22:09:25','5209 Schoen Turnpike Apt. 688','87522906213',NULL,1,'2022-05-24 06:56:01',25,1),
(124,'ryan66@example.com','c50055fb7ab620375976d0cb1f7b7d6d70ae1e9d','ullrich.renee','2021-11-27 17:20:22','4122 Boyle Harbors','87095273335',NULL,1,'2021-05-31 22:28:23',14,2),
(125,'dschaefer@example.com','b5826e8d33b610165143f000d2366712488bd57d','ari.wintheiser','2021-08-29 01:59:30','9761 Jacky Islands Suite 235','83940734151',NULL,0,'2021-10-19 15:49:43',25,2),
(126,'icummerata@example.com','537cd5b241926e18bf813c69d6941a8a68325d37','keeling.bianka','2021-08-06 02:44:16','9775 Tomasa Mountain','85769166093',NULL,1,'2021-12-21 13:56:19',11,1),
(127,'cpagac@example.net','e28eca257ca780a76d8bcd4cfa1c69233a5bfd6f','wilkinson.layla','2022-03-29 11:22:45','36821 Wisozk Divide','83277624671',NULL,0,'2022-04-10 12:38:19',11,2),
(128,'asia43@example.net','07ca984b5f76f5db654dd2203b754dc3385a4ea5','mbernier','2021-07-11 07:36:21','369 Borer Highway','89605774436',NULL,1,'2021-06-15 01:56:59',21,1),
(129,'hane.emmett@example.com','9ffd3cc9295175293efdb2f4bdd001e5337e9f5b','bwindler','2022-01-03 09:38:03','5107 Lula Cape Apt. 780','88681277098',NULL,0,'2022-03-09 23:50:01',25,1),
(130,'awaelchi@example.net','cfa1032250bef1e2fd5ddd205c51f22074f6533a','lucinda18','2021-11-12 15:57:16','6594 Herman Crescent','84059351086',NULL,0,'2021-12-19 21:01:49',4,2),
(131,'upton.reta@example.net','831cb2593b800d7a12daf00e8d9f929d6e29054e','fjenkins','2021-08-02 15:22:04','229 Langosh Village Suite 170','83283216477',NULL,0,'2021-10-13 22:46:54',24,2),
(132,'kunde.michel@example.org','408c0f2244e53db47986d9eca464d4bea30091a4','mjohnson','2021-11-27 10:48:35','46124 Hagenes Junctions','89713795735',NULL,1,'2021-09-28 15:58:45',7,1),
(133,'giovanna57@example.net','1f913d60dc070295bfa2a18a8e626b53f88cb8ce','gmcglynn','2021-10-15 10:49:10','49058 Myron Villages','86379511766',NULL,1,'2022-03-15 03:40:58',25,1),
(134,'betsy98@example.org','d8a04ead9c6f3f50ce291c5cd2fa6e3ae4c9e9a7','vdavis','2022-03-17 20:51:17','6899 Boyd Estate','82499162451',NULL,0,'2021-12-20 18:11:40',15,1),
(135,'dietrich.omer@example.net','c73a203b8df1abf8620a263cfe119d372cec4861','erling.gorczany','2021-06-09 14:43:31','43669 Dewayne Greens','82863123706',NULL,1,'2022-04-11 20:48:40',17,2),
(136,'providenci.kling@example.org','16204bbf558bb1c4c808a16327dff241cd6d7bfc','bonnie67','2021-09-10 19:46:57','56803 Saul Loaf Suite 910','89861881480',NULL,0,'2021-05-29 08:54:39',20,2),
(137,'annie66@example.com','ecae9b9eb91301702c8e2a87fd631a2321c407f3','gusikowski.erwin','2022-01-07 06:16:36','356 Claud Shoals Suite 425','89090873785',NULL,0,'2021-07-30 22:05:08',25,1),
(138,'chanel.klocko@example.net','8510b24981bc6e21bcdd1df8a81d38cdedb03277','sandy62','2022-02-15 15:25:31','6311 Dietrich Wall','81404580043',NULL,1,'2022-02-05 03:40:03',14,2),
(139,'ubode@example.com','1132d162b53ec94a30fbf4c878b8b0bcc2107f69','regan.lesch','2022-03-23 15:18:36','688 Patience Alley Apt. 168','88087844550',NULL,1,'2021-06-05 09:16:46',25,1),
(140,'retha68@example.net','a3dabbb687437ae25ff474da1bede6642490e782','vmedhurst','2021-11-15 03:35:57','3341 Casper Plain','84122637112',NULL,0,'2021-07-17 00:23:27',25,1),
(141,'vdoyle@example.org','e108d504768fb03eb9d46d913370e8f80c74b7cd','corwin.aliyah','2022-01-06 13:58:27','3708 Mayer Plains','88811072881',NULL,0,'2021-11-16 12:17:02',25,2),
(142,'hilll.leland@example.org','16bdb276ba6b2ca0420f960a023efc6a034a8521','sporer.adrianna','2021-07-12 23:19:26','119 Macey Squares','89511522977',NULL,0,'2022-03-31 01:24:31',7,1),
(143,'marian.funk@example.net','70065d35d19d28eab5cdad9f2a7067b4e5045f36','cleveland.hand','2021-10-03 08:29:46','182 Hartmann Garden','82331437493',NULL,1,'2021-09-13 02:45:31',15,1),
(144,'carroll.mertz@example.org','8ae09e353027bd3eb2e3f8cbcb188d18a70231a3','mills.jody','2022-03-23 15:51:08','57533 Hilll Forks Apt. 106','83949182145',NULL,0,'2021-12-29 07:37:10',17,2),
(145,'maye.satterfield@example.com','fbad2d73f8243ec23f48fec58dddc6112c66abe4','swalsh','2021-09-26 23:49:34','8826 Magali Station','85676169370',NULL,0,'2022-04-25 11:20:21',25,2),
(146,'ewalter@example.org','43f4dda124c3fbbef97405570c030777c8179d0a','frami.ward','2021-09-16 01:51:18','082 Von Island','82448610472',NULL,0,'2021-08-01 12:18:15',25,1),
(147,'berenice.murazik@example.org','48cc0e2dbce636a63d149fd659563cfba7de927c','toby37','2021-05-26 16:34:36','38979 Stracke Knoll','85271158739',NULL,0,'2022-05-24 22:13:12',20,2),
(148,'raphaelle83@example.net','009aebdadda4303ce1a2949c1b5877bd50c3b3c6','bdooley','2021-06-20 01:16:17','37389 Gleason Trail','88464385854',NULL,1,'2021-07-05 02:30:11',19,1),
(149,'adolf.stoltenberg@example.net','4a4d24fe69c9f8006156af71db33dc278c8131c7','cloyd.johns','2022-04-13 07:35:40','82591 Yundt Villages Suite 771','88151552581',NULL,0,'2021-10-27 15:01:16',25,1),
(150,'norris.schuster@example.com','d57e38c3dc9d11985bec62a6978d60b974e7d208','njenkins','2021-08-02 21:44:56','9751 Smith Drive','81353350194',NULL,0,'2021-10-08 17:49:32',25,2),
(151,'andre23@example.org','042d46f6f9b7c46f90b334d9a7a2736f63a42dae','nathan96','2022-03-01 12:22:01','63421 Cormier Unions','87136534311',NULL,1,'2022-05-14 00:15:49',7,1),
(152,'ivah79@example.net','384ad5e3ea718ddcc5f0aa003cd123d731ffbc35','brown.walker','2022-02-06 23:30:46','2772 Collins Branch','83328719648',NULL,1,'2021-08-11 18:43:46',11,2),
(153,'yundt.rico@example.org','c0eef119a9893a901a19c918c3fbf95108ce8329','krajcik.dasia','2021-07-05 22:14:26','195 Willy Estate Apt. 774','85573909915',NULL,1,'2022-01-03 03:15:20',4,2),
(154,'xhermiston@example.net','b399117d7977ca77fd14f2c89927f221ed577e4b','aiden28','2022-02-23 18:08:05','820 Schaefer Tunnel','82704431464',NULL,1,'2022-02-09 06:24:09',7,1),
(155,'carolyn.ullrich@example.net','a161419f7e63a14c3532707d20c6f58e42bb0ef5','elias.rippin','2021-08-19 16:29:41','4286 Wava Estates','86252960082',NULL,0,'2021-10-19 07:26:15',3,2),
(156,'gerlach.randal@example.net','dfa51172570e686746835a9268c88e5526286600','elittel','2022-04-15 19:52:18','64059 Janiya Locks Suite 766','87375288224',NULL,0,'2021-08-14 15:44:57',6,1),
(157,'carlee.o\'conner@example.com','65230c39730acd5f867d24a10093223978241592','lbruen','2021-12-04 21:36:34','5525 Roberts Plaza','83007888446',NULL,1,'2022-01-29 17:49:44',25,1),
(158,'maverick44@example.org','27da0d50f765611c9c8ebb513c822923f42cdf71','xrodriguez','2021-08-25 12:11:37','92312 Hirthe Row Suite 076','86483907149',NULL,1,'2021-09-06 12:17:00',16,2),
(159,'veda20@example.com','42286ee98dd068a54e5932aeac82fb1501d142ca','ukerluke','2021-08-30 07:20:14','75133 Deckow Street','84565674728',NULL,0,'2022-04-04 13:33:44',16,1),
(160,'arnold.corwin@example.net','5aa7ff7bf2f5fe7031199c77832b214e95fd8888','fbreitenberg','2022-01-07 11:41:40','91395 Laney Ranch Apt. 915','82081465567',NULL,1,'2022-03-14 04:48:42',11,1),
(161,'apowlowski@example.org','412f8cfb71b0956ef02c154a395a3f5c1b9756fd','favian.purdy','2021-11-06 08:10:15','0404 Swift Mills','87727284257',NULL,1,'2021-07-23 10:45:50',3,2),
(162,'brooklyn.schoen@example.org','4c6ed92924741fc002e8fb1d55d68decbdb81a31','strosin.name','2021-10-19 21:41:54','0320 Jazmyn Harbors','84440732834',NULL,0,'2021-12-25 06:19:32',13,2),
(163,'hallie.raynor@example.org','10dd0ea196d0666bd4a780e750869e86c308bfa2','vonrueden.edison','2021-08-09 21:54:14','40604 Aurelie Fords','86983326325',NULL,0,'2021-09-08 01:22:30',16,1),
(164,'jackson.wuckert@example.net','3f272d79143e80ce6a3ab35db601846bad501c1e','lolita.zulauf','2021-09-30 18:18:44','956 Julius Cove','86997230913',NULL,0,'2021-09-10 21:14:06',3,2),
(165,'howard.bernier@example.com','2e8a1322003d57c90c392da66aa518b271838068','walker.huel','2022-01-17 05:46:40','622 Anderson Squares','82030539702',NULL,0,'2021-08-01 14:28:51',14,1),
(166,'devin76@example.com','3473c4c1b9d089b94b284309f7b0607f0c5bf3e9','gust23','2022-02-27 20:07:53','423 Reinhold Springs Apt. 672','83598844967',NULL,1,'2021-08-19 03:28:53',4,2),
(167,'hubert96@example.net','f28bf86b64d586ddf53c145a28ab40a9e1785169','o\'reilly.ena','2021-12-03 07:23:29','1158 Williamson Village','83423660567',NULL,1,'2021-07-13 17:57:55',13,2),
(168,'erich60@example.org','eb337fe54cce330acb193918a544533f97823f57','clovis78','2022-03-19 22:31:46','311 Torphy Springs Apt. 452','84705013086',NULL,0,'2022-01-21 19:15:23',11,2),
(169,'robel.jessie@example.net','513288895f4f87946e5ab50e5b59f390c2012059','huel.davon','2022-03-31 10:38:22','77585 Blanca Knoll','83207939283',NULL,1,'2021-09-05 07:11:46',15,2),
(170,'tschimmel@example.net','5164a00c4296fd8e9e0388dded8412ace3e59814','earl39','2021-07-02 10:44:57','1870 Batz Terrace','89847353427',NULL,1,'2021-11-22 05:43:48',21,2),
(171,'jacey.dubuque@example.net','47f66172126b1c511466261abb4093c13326fa11','maribel42','2021-06-26 04:27:50','701 Willard Orchard','84007359573',NULL,0,'2022-04-13 13:52:23',7,1),
(172,'pskiles@example.org','f60e37f576f20a369227cfbd280d3889fb14abed','bwalter','2022-04-25 05:19:59','73056 Berta Skyway Suite 713','82406308071',NULL,1,'2022-05-16 00:00:55',21,2),
(173,'fkulas@example.com','d0e0eceebfa0802643b500a80ba2d644cbdcf1a8','born','2022-03-24 01:50:03','736 Schroeder Lake Apt. 304','89522307912',NULL,0,'2021-05-29 05:46:14',14,1),
(174,'daniel.mikayla@example.net','f28ae8e74ebf61138ddf9845a33976f6f5ee6bb3','carolyne35','2021-11-02 11:48:01','19464 Clark Mews','89364312560',NULL,0,'2022-05-23 22:14:53',25,1),
(175,'emely51@example.org','a80257481d0012e9ba8d30e292562ef1ea79ebff','yspinka','2021-06-25 18:34:21','8350 Soledad Extensions','89273937228',NULL,1,'2021-07-30 22:51:57',19,2),
(176,'marjolaine63@example.net','8f2007babb5f8c981e77f5b6fb27fe68b4a3af77','parisian.buddy','2022-04-09 10:00:22','33243 Mraz Valley Suite 511','87023132000',NULL,0,'2022-03-12 07:15:31',6,2),
(177,'fshields@example.org','aa9391e10890e9cf1386e924d0607cddb75d2333','yjaskolski','2022-03-04 20:02:55','19993 Ethyl Burg','82282536530',NULL,0,'2021-08-14 19:45:35',19,2),
(178,'jschroeder@example.com','fabf806da766f063d5aa5483e527caa8d5e99ce9','merlin.gislason','2021-11-30 20:43:11','1817 Schimmel Vista Suite 468','83847472063',NULL,1,'2021-10-06 04:48:28',19,1),
(179,'koch.orval@example.org','d5faf2720d7a5386dfcd7778b96b3a2d7d611467','rpollich','2021-05-29 04:53:32','827 Ettie Keys','83022994328',NULL,0,'2022-02-27 01:41:58',24,2),
(180,'ava.nikolaus@example.net','d2972efa5412288555f4050ea563299c52da1f29','heller.jalen','2022-02-05 10:31:07','59753 Predovic Center Apt. 436','86635363296',NULL,1,'2021-10-08 22:34:06',25,1),
(181,'alessandra09@example.org','d2b92f55782e91382fd91c36f0fe9914dcaae5d3','ernser.dolly','2021-12-01 23:03:12','56936 Manley Loop Apt. 013','84739573088',NULL,1,'2021-07-05 00:20:03',7,1),
(182,'kacie80@example.net','d0841d99cc9e2e4fbdf87a6a7ce53bd7cdce4a82','xfeil','2021-08-12 02:12:59','12112 Pfeffer Extensions Suite 561','85178495347',NULL,0,'2021-11-02 01:33:06',25,2),
(183,'kshlerin.cleo@example.org','bf5c7b4ded1e39e75c65e437c8fdf1ac5e16dc0b','lmorissette','2021-08-10 07:46:28','56367 Abdiel Dale Apt. 412','85564822831',NULL,0,'2022-03-05 07:46:08',16,2),
(184,'thora.cummings@example.com','29fec0279a8e8f09286934b4ea06e2b0d0a9e560','blanche.braun','2021-10-24 10:16:41','6706 Mariam Corner Suite 089','81683340271',NULL,0,'2022-01-25 12:03:42',10,1),
(185,'hbauch@example.com','60effb7fb8b63d7247e5a5d10041d1522e292add','annette.schowalter','2021-08-20 15:43:01','30568 Gabe Creek','85016900859',NULL,0,'2021-12-19 11:27:02',11,1),
(186,'hermann.krystal@example.org','cfd4d412fabc0433833350e3e3bc83b126c32304','braulio99','2022-02-12 22:35:54','5883 Gorczany Via','83041123466',NULL,0,'2022-01-17 05:07:52',22,2),
(187,'ledner.mina@example.org','b98e6cd610bd346db4062f0096a825d3b149f386','birdie67','2021-10-28 10:11:55','399 Rau Drive Apt. 133','85102070975',NULL,1,'2022-01-13 10:52:54',6,2),
(188,'hammes.loyal@example.org','07140ce1ca76a6be95310a12949f7963e2fdbbae','paula08','2022-05-17 02:04:31','2727 Oral Mews','85011573702',NULL,1,'2021-08-01 02:32:31',7,2),
(189,'tschneider@example.org','16f3fc35b436d6daf3a7697d9a097c350a2144c1','ansley69','2021-10-28 04:11:44','449 Ericka Station','83875882906',NULL,1,'2021-11-29 16:38:23',3,2),
(190,'bbatz@example.org','0cdeecafa34bed9f4e5bfb75de1b7516849f6106','wjacobs','2021-07-13 11:02:48','71337 Fisher Curve','89195596919',NULL,0,'2021-12-21 22:21:25',25,2),
(191,'uschmeler@example.net','b459f1ef97ffb5845deead9164532c14ac7f0965','cschuppe','2022-03-24 08:02:03','08964 Weissnat Crescent','84363745674',NULL,1,'2022-02-07 07:36:56',15,1),
(192,'zlockman@example.net','2c40795a395e080d24f2f0a2ee45acce7b26f38a','johnny86','2021-12-08 06:34:40','342 Javier Loaf','86852984403',NULL,1,'2022-01-07 15:47:55',18,1),
(193,'ziemann.valentine@example.org','d2f7a2bdfe532a6da33ca528f4525d4a10258b19','sporer.austyn','2022-02-27 19:05:34','4613 Bogisich Ranch','88097296290',NULL,1,'2021-12-05 01:26:50',21,1),
(194,'mjacobson@example.net','ebac430dae6ceec7e6efa223eac9b3ccee9b3e08','ronaldo77','2021-09-03 04:06:13','98027 Alisa Viaduct Suite 162','86517154905',NULL,1,'2022-02-03 21:13:11',17,2),
(195,'schumm.jerald@example.net','04dfbb9403d10182d62a53b355748ceaa1bcf29f','steve81','2022-04-19 09:18:58','46674 O\'Kon Field Apt. 665','83771314873',NULL,1,'2021-10-13 23:06:47',7,2),
(196,'elsie.witting@example.com','3205560eb5316c997010b1a7edb630c347093006','ikohler','2021-11-05 19:01:55','39840 Farrell Mall Apt. 158','82626520838',NULL,1,'2021-06-20 18:38:16',7,1),
(197,'jorge.hauck@example.net','9560d3523d6ecc88c82a37b77719d3eaf48c7108','olson.valentin','2022-04-05 13:19:27','27016 Jewel Lake','84581057106',NULL,0,'2021-06-30 01:04:33',16,2),
(198,'williamson.maximilian@example.org','ed8f84e0f118a39446ef7ebde3cf0a4cd4db4896','trobel','2022-02-08 22:14:54','744 Hegmann Club Apt. 075','86554292800',NULL,1,'2021-10-23 06:12:31',7,1),
(199,'leon01@example.com','fce9024959d2f992c238b8cc099639013204da5c','welch.austin','2022-02-19 03:31:22','2952 Sarah Prairie Apt. 126','87261415744',NULL,0,'2021-07-18 12:16:16',25,2),
(200,'macey80@example.net','cbe8f7d8855b403df1ea2e60a734b853ed5c669c','kautzer.niko','2022-04-04 22:33:44','9135 Nicolas Gateway Apt. 206','87814453765',NULL,0,'2022-03-07 04:25:39',11,2),
(201,'king.jana@example.com','b7fdb537617b6feae479435a77456d187f5d8394','stanley82','2021-10-17 11:39:14','62258 Frami Ville Apt. 513','83733969285',NULL,0,'2021-08-26 05:27:17',22,1),
(202,'ramona.nienow@example.net','ba9a84a3516fb6e506dd66c3b0f768963021ce5c','saul.boehm','2022-03-04 04:22:25','436 Sylvan Island','88081912385',NULL,0,'2022-02-19 01:32:03',10,1),
(203,'nina56@example.com','9f4679208f14e65c5f96f4ed0fc52ebff5de45b6','lily.hartmann','2021-06-08 23:02:09','1760 West Run','89928836607',NULL,0,'2021-08-27 23:09:27',24,2),
(204,'zullrich@example.net','281bd76c3f6e714d130d1ae211844763a84ed77e','lorena53','2021-08-31 23:07:21','7118 Kathleen Dam','88894785394',NULL,1,'2021-11-10 03:47:17',22,1),
(205,'ali18@example.org','771ce3077124972c6cf08b886d9829773d330e6c','maryse35','2021-12-18 12:39:54','59451 Spinka Harbor Suite 286','81344962239',NULL,1,'2021-09-18 07:16:48',25,2),
(206,'janelle51@example.net','06861616fc764002fae541c9b8943dd8394036e5','asatterfield','2022-03-09 13:06:04','51441 Cronin Ferry','87717045090',NULL,1,'2021-08-06 09:06:47',22,2),
(207,'alessia.rosenbaum@example.com','22b1bb84ca665af2434fbb078bc52bb29c0ad367','dstrosin','2021-06-25 14:17:28','77958 Nitzsche Gateway','85783281437',NULL,0,'2022-05-09 10:51:04',22,2),
(208,'kale.hessel@example.org','e378e45372a5a4b73b2b4072ba73cabc7b4e5d1c','felicity.denesik','2021-06-17 07:46:22','8490 Paucek Burg','88421177917',NULL,0,'2022-04-11 01:58:12',6,2),
(209,'torp.madie@example.net','17d8b597ae85e7bc18da10a6bd2dfa84bbfbfc90','lemke.giovanny','2021-12-07 10:34:28','7086 Jacobson Place','89660954967',NULL,1,'2021-08-10 20:51:31',25,2),
(210,'isaac74@example.com','baded0923663ecf58c803e9c38f1957ce0f7669c','elda25','2022-04-01 13:25:49','309 Mitchell Turnpike','86440730864',NULL,1,'2021-08-13 19:58:33',25,1),
(211,'oroberts@example.com','d6319daab4c5afa312de1e96894dade245923b5f','jaskolski.marilie','2021-07-09 12:49:38','1585 Dereck Manors','83162987902',NULL,0,'2021-08-15 14:28:55',13,2),
(212,'goodwin.macie@example.com','25901344d6b5eb51924e17931b8d4c8e2b366d4f','devonte.streich','2022-05-23 14:35:17','807 Schmidt Burg','81207403366',NULL,0,'2021-11-24 00:37:13',18,1),
(213,'jarrod.hettinger@example.com','f6d752d8e124e672e0f5d1ff04384e4b9434fb7e','eankunding','2021-10-09 06:38:44','19161 Herzog Run','84963092638',NULL,1,'2021-05-31 02:32:46',7,2),
(214,'qdavis@example.com','70d57c3bde63cd4e83b1d38c45c07c9069cb0c83','labadie.fernando','2022-01-16 16:01:44','14128 Williamson Club','86598731713',NULL,1,'2021-10-22 00:35:56',25,2),
(215,'noel.blick@example.org','eeb5c3d20c82a78da8745f049b909904742029c3','rutherford.emelia','2021-10-12 04:53:58','3851 Marilou Mountains','88578822443',NULL,1,'2022-01-27 20:19:47',16,2),
(216,'lloyd78@example.org','6608c2ccce4ffca760bd9b19a6cbaf9303c2a0fc','langosh.joanie','2021-11-17 17:15:16','36583 Kendall Loaf','89752731733',NULL,0,'2021-08-23 19:13:46',7,1),
(217,'vcole@example.net','17a0eda2c1b6da531a02e635a99e313996344641','skiles.nick','2021-12-22 11:40:44','012 Morissette Harbor Apt. 015','83559051520',NULL,1,'2022-01-21 15:07:07',25,2),
(218,'marlen09@example.com','a97b0e58f96e6b1be454121eb867c6f2c9020e1f','gabrielle50','2021-06-09 02:33:52','26417 Mustafa Spurs Apt. 616','87592359619',NULL,1,'2022-03-28 20:24:43',14,2),
(219,'garrett.pollich@example.com','dc1c7216c39ce0e3c4392ae42542f27c72c27897','dibbert.margarette','2021-06-22 23:02:07','452 Crawford Haven','82905570624',NULL,0,'2021-12-28 08:15:09',25,1),
(220,'shyanne.wilderman@example.com','12842eedcbe7d56fba373e734e8cef2fa771c0f0','sauer.trisha','2021-11-16 07:15:29','13009 Juanita Turnpike','83374926886',NULL,0,'2022-05-14 22:22:43',25,2),
(221,'abshire.brennon@example.net','a73e6dec22842850bfddc464a6804cdc67f4d9b4','rosalinda.runolfsson','2021-08-02 19:59:48','484 Torp Road','83667401253',NULL,1,'2021-10-15 07:35:50',4,2),
(222,'jryan@example.org','71d55ddcf9587a1fc6a2d118805687e57530d09b','danika13','2022-05-11 21:23:01','3918 Lynn Turnpike Apt. 056','86796165737',NULL,1,'2021-06-14 13:54:13',15,1),
(223,'wilderman.alaina@example.com','1b7ddc94346dea6bdf2922c7ce4912b18b6a2ac5','gtromp','2021-11-04 19:10:49','164 Blanda Shore','86419910925',NULL,0,'2022-05-10 18:39:08',11,2),
(224,'gvonrueden@example.net','4f27468c9d1f06a6b01e317546a1f5993eccc70d','wwillms','2021-08-28 20:41:51','53217 Colt Forest Apt. 546','83810557851',NULL,0,'2021-12-18 14:18:32',18,1),
(225,'bschinner@example.com','02d68cf5555e693f015df8126cdbf723d9fd8bba','sherwood.spencer','2021-10-09 23:13:04','6724 Charity Branch','86450002710',NULL,0,'2021-08-19 16:52:28',18,1),
(226,'verda.runte@example.org','a228f9c4397a29cef100b2e9908563ca0de2294b','lelia17','2021-05-29 11:56:33','44175 O\'Reilly Key Suite 338','82580215769',NULL,0,'2021-12-06 13:25:30',15,1),
(227,'tromp.flossie@example.com','91d5dac4c90fb929657f5e8a725bca68ba08486e','maximo37','2021-08-11 16:03:07','700 Freeman Oval Suite 122','88733539879',NULL,1,'2021-11-20 20:59:16',22,1),
(228,'alexandro57@example.com','0501a6bdb795e863ca277cc1268c618f964a382a','lavinia35','2022-04-08 19:08:42','11233 Chet Creek','87969679799',NULL,1,'2022-02-04 13:56:36',25,1),
(229,'maximus.kutch@example.org','b8ead5115080a3d821976a43002bc58bb6910c85','eullrich','2022-05-04 20:04:51','03550 Simonis Prairie Apt. 487','88922893024',NULL,0,'2021-09-07 14:25:47',6,2),
(230,'ivah51@example.com','2aca8e0fe66d12b8d1a8eadff1e7a2118593e191','brannon.dickinson','2021-09-14 01:39:20','829 Jones Freeway Apt. 917','81220548483',NULL,0,'2022-05-24 15:15:15',17,2),
(231,'kohler.hilario@example.org','986494166e0767936030c35eb263a709eb9e0e05','ricky25','2022-04-15 21:26:56','3583 Victor Forest Suite 455','87314864575',NULL,0,'2021-10-14 03:58:14',11,2),
(232,'aurore11@example.org','f7446a30054666f7c5e112e89a78fe531b6f08e1','deangelo11','2022-02-27 20:09:17','3911 Huels Orchard Suite 069','86725698974',NULL,1,'2022-05-08 20:45:58',25,1),
(233,'owilkinson@example.net','bd3646a39ab7c934b8478a0b428ef1d5eeead7eb','rlindgren','2021-07-18 16:58:27','788 Kieran Extensions','85252588167',NULL,0,'2021-08-10 23:56:50',14,2),
(234,'swift.travon@example.net','1080fbc8928c5a9ceaced95d8dec78437b55967c','spencer.emmy','2021-08-28 02:51:19','0261 Kuhn Rest','83027340281',NULL,0,'2021-06-29 11:40:51',25,2),
(235,'njaskolski@example.net','c0ecd8b8bf1a162195fa8ba1b757fbe2f4798cd5','devin.doyle','2022-05-14 02:53:51','86352 Quinten Plains','89605419610',NULL,1,'2021-08-19 19:41:12',7,1),
(236,'walter.madisyn@example.org','a8ae0b75de9f256da08b40006b91e85d5e85cc2f','sanford.terrill','2021-12-08 10:23:26','152 Gislason Island Apt. 103','84820487937',NULL,0,'2022-02-01 12:27:41',25,1),
(237,'gaylord.jessyca@example.com','eea9467ff0880e380b8087541e64adffb003a02b','lboehm','2021-08-15 11:52:04','510 Domenica Plains Apt. 286','84753441831',NULL,1,'2022-05-11 07:34:35',25,1),
(238,'helen.halvorson@example.net','79e737a6eb3ceaf9ead28c0fa3716e3f0fb25acf','dolly.tremblay','2021-10-22 17:33:40','66249 Boehm View','85485510598',NULL,1,'2021-07-02 06:50:06',25,2),
(239,'hahn.holly@example.net','a287cb2ce361411e2d113d9d20ed69a8f60543a8','sallie75','2022-01-12 15:30:11','053 Von Summit Suite 730','86941043597',NULL,0,'2022-02-19 13:40:31',21,1),
(240,'reynolds.elvie@example.net','6fcf4d97be43980bfc4d0c4f86addb2f81b824f1','volkman.trudie','2021-07-18 18:00:16','7222 Brielle Expressway Suite 305','87656210698',NULL,1,'2021-12-23 10:28:59',3,2),
(241,'caitlyn.hermiston@example.net','291fa50602557c7aa5e8c43e40c6be1dceeb9f7f','van.raynor','2022-04-06 10:14:39','6256 Skiles Loaf','86524273318',NULL,0,'2021-06-23 15:44:49',25,2),
(242,'vcruickshank@example.org','ca692a14bf653b433da2f62232bd427b074a7e55','jose46','2021-06-03 20:06:30','9629 Schimmel Garden','82886842124',NULL,0,'2022-02-13 19:25:35',18,1),
(243,'donna71@example.org','295ae3f4660744da6b9c12400aa0d6fa30fb0e91','edna11','2021-11-01 22:38:57','6033 Anabelle Fall','88945530475',NULL,0,'2021-08-13 17:22:43',24,2),
(244,'gutkowski.cecelia@example.net','0755db7b59858ba46bfd6ee1ccc9b70fa40f808d','benton.bogan','2021-10-30 06:25:10','8497 Caterina Mountains Suite 221','83106471059',NULL,0,'2021-12-18 01:36:15',7,1),
(245,'dhagenes@example.org','451e513c28ae755a555ca932269182eadadab533','wnader','2021-08-03 18:55:26','1331 Senger Overpass Apt. 592','85551342459',NULL,0,'2022-05-02 06:33:55',17,2),
(246,'brown.fae@example.com','87522411a00a6be0c42286a5f7a3d1c5b935194c','emmalee31','2022-01-17 03:42:08','8888 Wehner Shore','89731359088',NULL,1,'2021-06-16 00:34:06',1,1),
(247,'mona09@example.com','28a3b013a3d1fcdc4a3a121432d202052d63bb2f','zortiz','2021-08-05 09:20:03','70046 Jones Gateway Apt. 268','83088846127',NULL,1,'2021-09-27 14:21:06',20,1),
(248,'ifritsch@example.com','420a50217e3fb6645427e79d6001a39f75cd2ff6','gcrona','2022-02-02 01:04:22','3355 Windler Valleys Apt. 056','87780422324',NULL,1,'2021-07-21 05:13:01',14,1),
(249,'wnienow@example.com','d53761618eea3112573d551eec895b804731ceb7','igrady','2021-12-11 06:45:16','1044 Kamryn Prairie Suite 394','83287431113',NULL,1,'2021-09-08 20:02:11',4,2),
(250,'reanna63@example.org','b4276b78859f38d9389f5c25761f01c702e8cefd','fidel76','2022-01-09 00:50:17','4549 Pamela Road Apt. 992','86667246454',NULL,1,'2021-11-19 02:32:07',5,1),
(251,'herman.gay@example.com','0b0f713fb375a8a72a8f6fb33822933b362c66fd','raheem.upton','2021-12-11 14:04:37','785 Sebastian Fall Suite 375','87043340582',NULL,0,'2021-12-24 12:13:30',25,2),
(252,'jewel44@example.org','03625f580093cf80ee3943d7f8c25c085163f405','freilly','2021-12-26 10:21:19','4780 Sadye Tunnel','85931814002',NULL,0,'2022-04-05 20:31:19',21,2),
(253,'adams.della@example.net','f8004c13cbf1d25cae98a50b9217e9e31c6512fc','rjohnson','2021-11-19 07:21:05','6579 Yundt Ways','89406630359',NULL,1,'2021-11-10 04:41:07',17,1),
(254,'rath.napoleon@example.net','1614f95a7cd78fb1600e1c60f4ac06c59577d57a','barbara.bergstrom','2022-03-29 04:55:09','30830 Yundt Fall','81273352226',NULL,0,'2022-02-03 02:56:54',25,2),
(255,'yundt.osvaldo@example.net','08c75ba2bcfd85d7b6b1d8532f73f24c00bd5ae9','schulist.cullen','2021-10-24 00:29:20','12989 Lesch Haven','82207473979',NULL,0,'2021-12-01 13:26:59',11,2),
(256,'quinten.sanford@example.org','daafcdd1917bbdfa1f3b7084f88a875cb472693d','o\'conner.elda','2022-05-15 20:37:31','9600 Walsh Trail','84007881494',NULL,0,'2022-04-14 02:54:15',25,2),
(257,'stephanie08@example.org','51ad2712bd9b43d908e192ebed72bcdd5cf86c2a','kiara42','2022-02-24 15:10:23','2173 Glenna Viaduct Apt. 212','84635673061',NULL,0,'2021-12-23 15:27:47',6,2),
(258,'derrick.gorczany@example.org','82daa6d0ca1c2b9c1ab3e78b30d7efce9df12e91','kauer','2021-11-04 06:08:19','05170 Luettgen Underpass Suite 293','83289924359',NULL,1,'2021-09-02 18:55:32',25,1),
(259,'kattie.deckow@example.net','58475566e8054cf4cb3eab4df94dd5d13c3bda74','josiane24','2021-10-01 10:51:48','49669 Maggio Hills Apt. 846','87900346024',NULL,0,'2022-04-22 05:33:42',19,1),
(260,'annamae06@example.net','bf380bbb4215290de412c3e3c1e59fb0e55b380a','hstamm','2021-10-30 23:55:08','0575 Dario Parkways Suite 208','86920835644',NULL,1,'2021-06-19 16:09:45',25,1),
(261,'antwon.wolf@example.com','cd8f6aff63e748f0c226ed7397eecc653cabf8e0','maximillian.trantow','2021-07-28 23:02:50','1137 Cheyenne Alley Suite 798','86332260502',NULL,1,'2021-11-08 19:22:13',1,1),
(262,'qhessel@example.com','0c3a3aeac726b1acd867a2574ca62f78ed0a0686','milo.dickinson','2022-03-12 02:13:30','710 Wolff Common','84315747705',NULL,1,'2022-04-15 13:46:31',25,2),
(263,'beryl42@example.org','18577b28131248cbdbd369fd6c681f81e88d8b4c','brooks64','2021-06-19 10:49:29','32209 Cydney Rapids','83954013871',NULL,0,'2022-04-09 03:31:50',16,2),
(264,'albin.kertzmann@example.net','c967c802cfc8afafaad2eb32a9ce7fcc30b11819','stehr.vidal','2021-08-26 11:45:39','9165 Langosh Junction','84196639383',NULL,1,'2021-11-07 22:01:22',5,2),
(265,'chadrick.monahan@example.com','4cc609b20c7a655fa0bbe87846507b27f2a730b7','ewunsch','2021-08-08 23:18:58','786 Langosh Burg Suite 402','81734797412',NULL,0,'2021-10-14 00:24:55',25,1),
(266,'o\'connell.hollie@example.net','045da4f573397303ec2ebcf845f93ca0c2bbda19','johns.katelin','2021-07-22 17:29:16','775 Smith Meadows','85665425041',NULL,1,'2021-08-18 21:36:18',5,1),
(267,'cicero91@example.org','8ebf665a42cc17a1b0480ce2818423d89f765760','angelina.trantow','2022-05-13 16:06:08','836 Delmer Bridge','88871168386',NULL,1,'2021-08-14 19:37:18',25,1),
(268,'bonnie01@example.net','4e17e7732b8bebcfc147909d0dff18eba7a7d4c7','gaylord.emile','2021-08-08 06:13:46','7188 Aufderhar Haven','88712424553',NULL,1,'2021-06-09 21:12:09',5,2),
(269,'elvie48@example.com','8b6f776bc94d4980e51bc4b472b03f2c6249aa2b','hlehner','2021-12-23 07:34:45','108 Waters Valleys','86933316373',NULL,0,'2021-11-26 21:48:25',25,2),
(270,'bpollich@example.com','beb5e41ad0e50bc8538a6334a75ae33e31993ce6','stokes.lauriane','2021-08-22 21:56:45','71230 Garret Plaza','86713761360',NULL,0,'2021-11-13 21:15:36',4,2),
(271,'dietrich.price@example.org','67cf22be3d052efc6960b940a33534ec04e39d7d','nwitting','2021-07-08 02:53:43','0677 Feeney Isle','83227643573',NULL,1,'2021-06-23 14:07:39',5,1),
(272,'vspinka@example.com','b3df84511fa1b848d1696234c813af856a1fefc9','adell.lockman','2021-07-27 22:56:23','250 Annamae Wall','81507422795',NULL,1,'2021-09-07 17:34:48',25,1),
(273,'mklocko@example.net','d9acbb1da867edcd12fb264fbeba3ca6a5084e9e','bednar.delfina','2021-10-09 18:11:27','465 Jaylen Street','87294355101',NULL,1,'2022-02-12 10:27:38',24,1),
(274,'altenwerth.giovani@example.com','7eae9fbc3aa3c9b22499c32717317adbf646f19f','eunice64','2022-01-05 01:41:30','8432 Julianne Pike Apt. 263','88027560168',NULL,0,'2022-04-11 19:20:16',14,2),
(275,'ivy.raynor@example.org','afc482849a28352c8a85d6e4854c0a7aae309933','chelsea12','2021-12-27 03:14:07','49383 Amy Terrace','83502757118',NULL,1,'2021-12-30 07:26:00',13,2),
(276,'jbecker@example.net','05aa307dae4b931b9cc763624cbb8017c2a18a5e','emarquardt','2021-06-18 11:38:58','54269 Ellen Mountain Apt. 989','82045475708',NULL,0,'2021-08-02 00:04:04',25,2),
(277,'lucas.batz@example.org','18e9e91a332792b6dace879dd287cbff3a847bb1','brock.beahan','2021-07-30 13:55:50','2308 Abernathy Ramp Suite 707','87872639853',NULL,1,'2022-01-27 22:28:43',4,2),
(278,'dickinson.maudie@example.com','8d00bea83f7b009945f74591655fb867e75828b3','hermiston.myrtis','2021-05-29 10:50:12','3881 Otis Alley Suite 154','85992344087',NULL,0,'2022-02-07 13:12:33',10,2),
(279,'hermiston.shaniya@example.com','20b5f4ce610b191eb9a7b3800d9fff9cbc03578d','stokes.ramiro','2021-06-06 09:10:29','07545 Turner Orchard','89236791030',NULL,1,'2021-08-18 20:04:11',14,2),
(280,'reichert.clemens@example.com','c04a460233882f12129896182482ac99b64dbc4a','dweber','2022-01-01 02:34:26','487 Adah Falls','83104904285',NULL,0,'2021-12-25 10:58:08',14,2),
(281,'adrianna.ernser@example.com','75ff57fe76730a08e341f133aa0ca87a4fd5cb36','emory14','2022-03-10 17:57:10','204 Lubowitz Rapid Suite 618','87330150388',NULL,0,'2021-08-13 20:03:17',22,2),
(282,'morar.toby@example.com','0326f82d4426a1ec794654da9d257f9fc6193708','kenton.monahan','2022-03-14 10:21:31','545 Hirthe Courts Apt. 832','83568842104',NULL,1,'2021-12-29 17:39:48',25,2),
(283,'junius.monahan@example.org','31928ad414b96d7b2aeb2f4f833912b4982e7736','umetz','2021-08-17 17:23:27','984 Kovacek Grove','87411284252',NULL,1,'2021-09-07 04:30:57',20,1),
(284,'pouros.jazmyn@example.org','68664c7da0792d217ee0f43d6626e249ad55330c','clotilde.durgan','2021-09-24 16:17:38','3079 Noelia Prairie','83015075272',NULL,1,'2021-08-06 13:49:11',25,1),
(285,'gschoen@example.net','213d6bb87519038b0d1f5bf1b400809346ddf990','maximillian.graham','2022-04-22 22:38:10','345 Fay Camp Suite 897','81525177193',NULL,1,'2022-05-11 15:51:29',20,2),
(286,'trevion05@example.net','f860a8b11ec345c77efb0235a1cc20ad0a4bb89f','vbergnaum','2021-12-14 18:19:48','0288 Johnson Glens','84665253216',NULL,0,'2021-07-25 06:06:11',21,2),
(287,'keith87@example.org','7b70c87a5fbc995950020f04df15d8d72ac6659c','ambrose.jacobi','2021-09-09 23:55:13','15222 Windler Course Suite 635','86118782141',NULL,1,'2022-02-28 08:04:33',21,1),
(288,'jrenner@example.org','914987a3a2321b9c4a8a43f229d1feb72d08fd31','lolita45','2021-12-04 23:44:28','486 Weissnat Ports','89863000176',NULL,1,'2021-06-21 11:31:42',10,2),
(289,'marks.miller@example.net','1abf11f657e1c380adb714402e5618b87047af50','carlo.jakubowski','2022-02-22 11:45:25','8321 Rowe Shoal','82696133040',NULL,0,'2021-10-23 23:24:22',17,2),
(290,'uemard@example.org','fa25134f90e8d5b480cc3e48c41068b49cd24d25','hherzog','2022-03-16 23:13:15','1222 Kautzer Plains Apt. 914','89397336074',NULL,0,'2021-08-24 05:59:24',11,1),
(291,'jeromy.stiedemann@example.net','5369ae86a00b998521f154e14596076d96b0463a','osenger','2021-09-02 06:49:02','501 Joanne Crossroad','89271887478',NULL,0,'2022-01-16 04:12:19',20,2),
(292,'maudie17@example.net','53bff958cf2bf323a35fdd3be08f29d2d1af5eb7','alta.becker','2021-05-31 19:09:56','8280 Maggio Estates','84224799722',NULL,0,'2022-03-16 07:46:20',17,2),
(293,'nolan66@example.com','e8c36cf4b56f5bcbabfb8f0f5fcac62ecf78405f','alexanne25','2022-01-04 21:47:23','3180 Leda Squares Suite 604','89373628786',NULL,1,'2022-02-24 23:43:15',1,1),
(294,'ignacio22@example.net','99ebfa1ddc6731ab0917a6561d7e799b03b71520','lucie93','2021-08-01 13:23:56','53435 Jon Gardens Suite 675','87588118592',NULL,0,'2022-05-05 04:59:43',18,2),
(295,'tmccullough@example.org','804b8c7c9b01dfcb70b987b94050503a2c62d4e7','reynold.cummerata','2021-08-22 12:36:11','726 Arch Fields','83941869777',NULL,1,'2021-10-30 14:05:33',14,1),
(296,'mcdermott.vivienne@example.com','c5729eb5b0d02d6161bc8884b983c78a3307f87a','paucek.obie','2022-02-25 07:52:21','03887 River Valleys Apt. 214','87945287641',NULL,1,'2021-12-16 12:43:38',3,1),
(297,'hilpert.werner@example.org','34189371a090da31b5a0054747862216478bd5c3','pacocha.chelsey','2021-06-16 01:35:13','3035 Eleazar Summit','84609976241',NULL,0,'2021-08-13 10:44:40',1,1),
(298,'hershel83@example.org','cfd38110dc856d32ea3cba6831f905cb1ad8a5cb','mollie24','2021-06-26 18:37:23','0446 Gutmann Square Apt. 177','83404364921',NULL,1,'2022-04-28 04:31:29',6,2),
(299,'glover.ibrahim@example.net','57fea16dac69ff7dce6f3de266b59cb6a9b98882','delfina10','2021-06-09 00:59:26','243 Sporer Park','83666337575',NULL,0,'2021-08-23 09:19:55',6,2),
(300,'bryana35@example.net','e60a1715fd731bed6e2e4bce7e3222a6cb8bbb6d','hhirthe','2021-10-19 10:55:16','389 Steuber Pass Apt. 470','82878093388',NULL,1,'2022-03-05 11:03:42',22,1),
(301,'ntowne@example.net','3c217689c905f9f601bcad3391eea92c721acb9a','whoppe','2021-09-20 00:07:43','3436 Pfannerstill Cape','82848952979',NULL,1,'2021-10-25 02:41:00',25,2),
(302,'goyette.reagan@example.com','85bd6f8966758811a926b5d66fb9d3b843ed58c3','sheridan.mcdermott','2022-04-20 23:37:33','4761 Melyna Underpass Apt. 702','85024520978',NULL,0,'2021-06-10 13:29:41',25,1),
(303,'mandy10@example.net','bce04b762e2316e84eaa613bb4935d446e949e04','o\'hara.irma','2021-11-27 15:38:15','62398 Gregory Forest','89148952820',NULL,1,'2021-11-25 20:55:17',25,1),
(304,'nitzsche.gayle@example.com','2b7b96698f48ab415eebe9dba2c44352554c9aaa','greenfelder.martin','2021-07-10 23:43:32','25669 Kellie Burg','81554885618',NULL,0,'2021-12-03 01:19:08',22,2),
(305,'tremblay.jo@example.org','b3bbd9dc914c633fe982c41dd04147ec061a9572','dach.oswald','2022-04-04 07:26:59','4632 Hermiston Station','84445032502',NULL,1,'2021-09-16 06:02:52',25,1),
(306,'jennie41@example.com','f0f344f490f09cccb1994d8ea77b6d0564721818','owen71','2021-05-25 20:20:46','930 Camila Village','81569991215',NULL,0,'2021-06-09 08:23:16',19,1),
(307,'abigale.harris@example.org','d7f31fc3245fc0b41f54db2b1667661c90c4507b','walsh.judson','2021-12-14 20:32:39','1798 Liam Hollow','85223154322',NULL,0,'2021-07-06 18:02:34',20,1),
(308,'jakayla.kreiger@example.com','b1f290aac61dd970b259833dbeaec50b2d52a1f3','destinee49','2021-11-19 15:42:50','79266 Eulalia Stream Apt. 406','87573622651',NULL,1,'2021-08-29 22:34:14',25,2),
(309,'zwunsch@example.com','ead8c3c8b939142e1a966c3b51c19560d87534d6','fupton','2021-05-31 23:55:15','678 Kling Brook Apt. 678','84977720628',NULL,0,'2021-07-02 05:30:31',11,2),
(310,'kirsten15@example.net','2d0e33b7478075b71c4d9ad8a01e132c5cc2df89','kreiger.fatima','2021-08-25 01:07:43','056 Kub Street Suite 738','84759549196',NULL,1,'2021-12-17 03:32:28',10,2),
(311,'devon.glover@example.net','22b0a4d1e8f114df548477082de159c7f940e3be','efeest','2021-08-28 07:10:35','1252 Sim Oval','88258472362',NULL,0,'2021-06-30 05:46:09',1,1),
(312,'phaley@example.net','b56df9e1f2d8b3db7a160781309bb72e9f95b585','fsmitham','2021-07-31 00:54:52','8869 Evelyn Roads Apt. 183','82175490566',NULL,0,'2021-10-14 14:48:59',10,1),
(313,'schulist.germaine@example.org','aa7d7fd8f6faa0921130c87eadb8df2e1dc1d5ba','imayert','2022-04-22 00:15:49','22102 Kristoffer Circle Suite 598','83011226993',NULL,0,'2021-06-23 09:11:55',14,2),
(314,'jzulauf@example.net','016454f72f68be254e0ee6dd1b654ae0a5236d6e','rupert34','2021-08-23 22:57:42','480 Eliane Falls Apt. 566','81179811751',NULL,0,'2021-10-19 20:34:18',20,2),
(315,'lauriane.kovacek@example.net','c6b47bb1d8c1bdb501dec66d62deab6407f61164','bergnaum.richmond','2022-02-10 08:47:10','59337 Raquel Circles Apt. 292','82332121208',NULL,1,'2022-05-16 13:16:57',25,2),
(316,'bkub@example.com','97a917efcca7280bf16f79136da7e501e3e19ffa','njenkins','2021-09-04 10:04:07','685 Imani Station Apt. 470','82556042195',NULL,1,'2021-06-22 22:46:31',19,2),
(317,'shawn76@example.com','2d3060e8b662530f148d0b440d38444074e3d11d','laurence00','2022-05-16 06:38:42','833 Seamus Road Apt. 084','89679564295',NULL,0,'2021-11-16 09:44:09',25,2),
(318,'wyman.pansy@example.org','de7ae53c279b75bba8f26ad659a127554f7aa157','freda24','2021-06-01 09:45:50','850 Brock Drive','88934852625',NULL,0,'2021-08-27 04:11:16',19,1),
(319,'hipolito.sanford@example.net','7bd4b871894bda19aafba16240015526358ca40a','elfrieda61','2021-08-19 09:07:24','8071 Mosciski Ranch Suite 465','84312737455',NULL,1,'2021-06-04 11:29:54',4,2),
(320,'maryse.kihn@example.com','e7d0eab7ecdec0a473a2d0bd80d84068f47f8586','walsh.lily','2021-06-11 11:13:59','144 Jolie Summit Suite 597','82745836608',NULL,0,'2022-01-28 19:09:15',25,1),
(321,'eliezer.mills@example.org','7bcd423e82f14929a817be0caa19ee8f518598ed','pollich.rozella','2022-04-29 22:58:22','39321 Casper Shoal','89725654443',NULL,0,'2022-04-18 16:59:12',22,2),
(322,'rreinger@example.com','68d6b8760ba1396339ca2b97cd0e37829a80b15f','newell84','2021-07-14 02:27:08','37305 Name Shoals Suite 226','83096242385',NULL,0,'2021-07-12 08:59:39',15,2),
(323,'ldaniel@example.org','6b7f3897031d0c28f90d47f072251c6c5cc943c2','hubert.quitzon','2021-12-21 02:12:24','423 Vincenzo Vista Apt. 602','85460688790',NULL,1,'2021-06-22 00:51:06',25,2),
(324,'kiehn.felton@example.net','d5e7106446eb325b785f1a26211bb45e73c757c9','no\'reilly','2022-04-09 23:22:26','2093 Efrain Ridge','89134402270',NULL,1,'2021-12-05 02:26:50',13,2),
(325,'qkemmer@example.com','e4da7ae6cdc6f61dc0dc66e60168092e8ac7090b','maximillia62','2021-09-11 20:19:34','77024 Nannie Path','82120763133',NULL,1,'2022-04-15 22:29:59',10,2),
(326,'clifford.brakus@example.org','3afed8cf575db796242dbcf39f8fa57647edf51e','uluettgen','2021-11-13 19:45:57','366 Littel Mill','81865357421',NULL,1,'2021-12-27 19:24:00',13,1),
(327,'devin.mraz@example.net','8f706532a70e79e754e2900fa5cb99b879a20b3e','larson.lennie','2021-11-18 08:16:55','18408 Daniella Street','82650242489',NULL,0,'2022-05-16 01:14:47',10,2),
(328,'juston.o\'keefe@example.org','adbe8175293baa2f0b0b5d27e96c00007df8b898','alessandra62','2021-08-05 09:35:25','4019 Gutmann Stravenue','83024462258',NULL,0,'2022-01-29 07:24:11',11,2),
(329,'goodwin.kaya@example.org','be0f715ec7de306aeee42b9cab2c40dbf77278b2','xfadel','2021-06-27 05:59:03','2363 Kuphal Village Apt. 636','83073085103',NULL,1,'2022-01-01 00:26:38',13,1),
(330,'norwood.hagenes@example.com','d5efb5caa40d6b495f7ea94f79b22d8b631de04c','alexandria.hirthe','2021-07-04 20:47:45','1905 Weimann Springs','88185085997',NULL,0,'2021-07-14 04:15:56',17,2),
(331,'kbeier@example.org','0d8f522bf6c120dd83148010ae5ee7cb7c5e8bea','reichel.timmy','2021-11-27 14:19:55','572 Labadie Port','84114997937',NULL,0,'2022-02-11 05:09:09',22,1),
(332,'javonte.borer@example.com','0a69131e04cf25f11b215b99e426848606bfd68e','ygrady','2022-02-09 15:12:59','48324 Hettinger Rapid Suite 945','82052296561',NULL,0,'2022-02-24 17:31:10',25,1),
(333,'johns.jennifer@example.org','83380381c20df4490b097da416b54f5c4c5f0e8d','julien.hintz','2021-08-31 11:58:16','542 Reinhold Keys Suite 039','86926427934',NULL,0,'2022-02-25 12:48:52',5,1),
(334,'vpollich@example.net','2d3ce5177219b60d5e49a148ef611030eb622354','schiller.chester','2022-01-11 11:48:58','737 Genesis Throughway','82101660172',NULL,0,'2021-06-07 07:22:08',13,1),
(335,'ipollich@example.net','2649f67ea2e83af6400107862e7efa50b1df6dc0','fschoen','2022-03-28 17:21:40','164 Victor Causeway Suite 390','85065747433',NULL,0,'2022-02-01 21:00:19',20,1),
(336,'marcellus.jerde@example.com','12c04246298a2600b0b2777b7570837ad09e901f','santiago22','2021-08-23 07:28:43','39746 Edwardo Mills Apt. 706','87842350626',NULL,0,'2021-11-15 15:31:11',20,2),
(337,'sanford.isadore@example.com','2606210e62b8068c26288dd043142e00933c361e','edwin.frami','2022-01-16 02:55:14','31781 Macejkovic Station','86565283127',NULL,0,'2021-08-02 23:22:40',25,1),
(338,'fjast@example.net','3707a5da21739328c8d5c0bb4edf58ba80f2906c','toberbrunner','2022-02-07 06:34:44','7132 Muhammad Ridge','88873654363',NULL,1,'2021-10-09 09:18:47',25,1),
(339,'kristin.hilpert@example.net','9a9870eaf55a6ff230bed9d167badaf29ad14787','clark.franecki','2021-08-12 10:42:44','3463 Jackson Turnpike','82138451644',NULL,0,'2022-05-04 09:51:56',24,2),
(340,'purdy.ola@example.com','799d97b3cb54dde3947e606082bd2f0671fca306','bednar.ashtyn','2021-10-23 06:46:12','11751 Pasquale Plaza','89949673617',NULL,1,'2022-04-16 16:46:04',17,1),
(341,'wendell.hagenes@example.org','7e8f8c0be559d32fa193b807521156aa7ea2d918','laurine.kiehn','2022-05-21 11:51:06','07509 O\'Hara Streets Suite 215','86792028600',NULL,1,'2021-12-26 22:31:17',18,1),
(342,'enrico.pagac@example.org','14dc8de2618cfc01d910ccd9275918964581c04d','unienow','2021-06-02 20:53:55','555 Ona Trace','82197322795',NULL,0,'2022-04-08 13:16:07',19,1),
(343,'edwardo25@example.org','d9c17bfed94a7f0050db77160259745efedc119c','agustina56','2022-06-09 15:43:35','11837 Hamill Corner','84171586847',NULL,1,'2021-07-10 20:49:14',1,1),
(344,'mike05@example.net','3919f166e717de608ef94f318008f4789b959b0f','xander19','2022-06-09 11:42:21','370 Wilkinson Burgs','89409538341',NULL,1,'2021-07-05 05:47:04',1,2),
(345,'bechtelar.jarrell@example.org','4e575da65ea3b534ece38d6e030e827d4d0cb370','virginie55','2022-01-14 10:23:22','01980 Ernser Spur Apt. 056','82282676866',NULL,0,'2022-03-28 09:01:18',25,2),
(346,'garrett.price@example.net','88d62d2ff4a78479b4dcb8cd818229a61412f79e','jgrimes','2022-06-09 04:14:27','92528 Lilly Mill Apt. 485','89092424213',NULL,1,'2021-09-21 21:38:26',10,1),
(347,'frami.jay@example.net','b21ff80329706ccf23623e62dfe2ecff40cef55a','rzieme','2021-06-16 03:07:03','131 Rogahn Ridge Suite 258','89713375162',NULL,0,'2021-09-18 17:40:18',4,2),
(348,'ransom57@example.com','9bd9c2678e4effd458eee1af43d71fbc36bb38bf','arnulfo.krajcik','2022-02-06 07:44:27','327 Anthony Harbor','87618966015',NULL,0,'2021-07-23 15:33:02',10,1),
(349,'ethelyn62@example.org','e14e2493ce4df4f6fc9fbf0feb09bd825a33cac8','brandon27','2022-06-09 13:11:31','6547 Smitham Walk Suite 195','88420938112',NULL,0,'2021-08-26 22:40:41',25,2),
(350,'twolf@example.net','d466b17838b76bdda3ab880af6f35625a8e22d06','jessyca51','2021-11-15 15:43:07','34768 Sanford Dam','85116779253',NULL,1,'2021-12-02 14:29:09',16,2),
(356,'mitra@gmail.com','$2y$10$hP6zoHitXr63pnzDGZAeTeSW7eHc17yBTFGtar4bjq54lT1tAAJ42','jajal meneh','2022-05-30 19:44:01','Jl.Mitra mbuh','08123456111',NULL,1,'2022-06-22 09:31:00',NULL,2),
(357,'mitrabsu@gmail.com','$2y$10$UlE7UiXqgnOIZAIeRmit/.YNuqsBIaA8YK9gOcmuxLQBwbVcV1qGy','mitra-bsu','2022-05-30 22:48:39','Jl.Mitra-bsu','08123456788',NULL,1,'2022-05-30 22:48:39',NULL,1),
(360,'test-nsb@gmail.com','$2y$10$wdFZki7vMsyc5a1ZNyUuDOAmkGf5dOeznDmbfAv6bpTwQ8IxwMuT2','tes-nsb','2022-06-05 21:15:25','asfa','87456378679',NULL,1,'2022-07-04 07:06:00',NULL,2),
(368,'bsu@gmail.com','$2y$10$KmwkYI0UU3YYso9UeoLZb.DBgd4Lwna3oR4Vfmve/aQ9UOTqQJYEa','bsu','2022-06-05 22:20:44','Jl.Bersih no.99 RT02/RW07 Kel.X, Kec.Y, Kota Z','8934759389','bsu_gmail.png',1,'2022-09-08 09:08:00',23,1),
(369,'malik@gmail.com','$2y$10$AKc8uqQUKHAqjeH1jKGPb.P5oVbbHvthhZNRzwi0/tlCIefMXRlxS','malika','2022-06-10 08:11:05','Jl.Malika','084736572847',NULL,1,'2022-08-17 10:20:00',NULL,2);
/*!40000 ALTER TABLE `mitra` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`ardhmalik`@`localhost`*/ /*!50003 TRIGGER tambah_rekening AFTER INSERT ON mitra FOR EACH ROW
BEGIN
INSERT INTO rekening(atas_nama, id_mitra) VALUES (NEW.username, NEW.id_mitra);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`ardhmalik`@`localhost`*/ /*!50003 TRIGGER tambah_struktur AFTER INSERT ON mitra FOR EACH ROW BEGIN IF NEW.id_tipe=1 THEN BEGIN INSERT INTO struktur(ketua, id_mitra) VALUES (NEW.username, NEW.id_mitra); END; END IF; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `month`
--

DROP TABLE IF EXISTS `month`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `month` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month_number` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `month`
--

LOCK TABLES `month` WRITE;
/*!40000 ALTER TABLE `month` DISABLE KEYS */;
INSERT INTO `month` VALUES
(1,'01','Januari'),
(2,'02','Februari'),
(3,'03','Maret'),
(4,'04','April'),
(5,'05','Mei'),
(6,'06','Juni'),
(7,'07','Juli'),
(8,'08','Agustus'),
(9,'09','September'),
(10,'10','Oktober'),
(11,'11','November'),
(12,'12','Desember');
/*!40000 ALTER TABLE `month` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pembayaran`
--

DROP TABLE IF EXISTS `pembayaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pembayaran` (
  `id_bayar` int(11) NOT NULL AUTO_INCREMENT,
  `total_bayar` float NOT NULL,
  `bank` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` datetime DEFAULT NULL,
  `rek_tujuan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `bukti` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_jemput` int(11) NOT NULL,
  PRIMARY KEY (`id_bayar`),
  KEY `id_user` (`id_user`),
  KEY `id_jemput` (`id_jemput`),
  CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  CONSTRAINT `pembayaran_ibfk_2` FOREIGN KEY (`id_jemput`) REFERENCES `penjemputan` (`id_jemput`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pembayaran`
--

LOCK TABLES `pembayaran` WRITE;
/*!40000 ALTER TABLE `pembayaran` DISABLE KEYS */;
INSERT INTO `pembayaran` VALUES
(1,21153,'BNI','2022-01-07 10:45:00','11353946766919',1,'tf-Jan.png',2,1),
(2,143761,'BRI','2022-06-10 21:43:49','46342123962110',1,'bukti_bayar_2022-06-10_14:43:49_2.png',12,5),
(3,209023,'BCA','2021-08-21 09:10:21','20289980040656',1,'tf-Aug.png',7,6),
(4,25000,'BRI',NULL,'1234567890',0,NULL,NULL,499),
(5,3003070,'BNI','2022-06-10 21:44:21','46659604253040',1,'bukti_bayar_2022-06-10_14:44:21_5.png',12,4),
(7,2651960,'BNI',NULL,'78105102438065',0,NULL,NULL,23),
(8,4500000,'JAGO','2022-06-09 11:36:09','77449900',1,'bukti_bayar_2022-06-09_04:36:09_8.png',12,505),
(9,1399620,'BCA',NULL,'69477648081050',0,NULL,NULL,96),
(10,9135780,' BRI','2022-06-12 09:44:50','44370923398269',1,'bukti_bayar_2022-06-12_02:44:50_10.png',12,7),
(11,282411,'BCA',NULL,'21222691403494',0,NULL,NULL,38),
(12,5025200,' BRI',NULL,'77160830588804',0,NULL,NULL,14),
(13,2143260,' MANDIRI',NULL,'53376486483547',0,NULL,NULL,18),
(14,4842270,' BSI',NULL,'62847411549753',0,NULL,NULL,80),
(15,21262.8,'JAGO',NULL,'8729436273812',0,'',NULL,507),
(17,120000,'JAGO',NULL,'8729436273812',0,NULL,NULL,509),
(18,1150000,'JAGO','2022-06-12 21:42:38','8729436273812',1,'bukti_bayar_2022-06-12_14:42:38_18.png',12,508),
(19,120000,'JAGO',NULL,'8729436273812',0,NULL,NULL,509);
/*!40000 ALTER TABLE `pembayaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pembeli`
--

DROP TABLE IF EXISTS `pembeli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pembeli` (
  `id_pembeli` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_pembeli`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pembeli`
--

LOCK TABLES `pembeli` WRITE;
/*!40000 ALTER TABLE `pembeli` DISABLE KEYS */;
INSERT INTO `pembeli` VALUES
(1,'mbuh','56464563214','lasdla'),
(2,'pearline19','89562261336','Jalan-jalan'),
(3,'kling.wallace','85296650499','Jalan-jalan'),
(4,'maria.mertz','89115839509','Jalan-jalan'),
(5,'marilyne48','86540712105','Jalan-jalan'),
(6,'turcotte.ernestina','89800950802','Jalan-jalan'),
(7,'ylynch','87682097554','Jalan-jalan'),
(8,'cielo.haag','86480249025','Jalan-jalan'),
(9,'critchie','84350715552','Jalan-jalan'),
(10,'konopelski.jamison','86698773445','Jalan-jalan'),
(11,'travis.will','89074479486','Jalan-jalan'),
(12,'wolf.remington','87125188882','Jalan-jalan'),
(13,'wilkinson.darlene','84197974709','Jalan-jalan'),
(14,'cristal40','87594386504','Jalan-jalan'),
(15,'cruz04','86090692455','Jalan-jalan'),
(16,'shaniya.hermann','82236169146','Jalan-jalan'),
(17,'tferry','84661856177','Jalan-jalan'),
(18,'theodore62','81627261671','Jalan-jalan'),
(19,'rico62','81896338591','Jalan-jalan'),
(20,'bernier.norene','85385403177','Jalan-jalan'),
(21,'drempel','86289956714','Jalan-jalan'),
(22,'lind.berry','85021491038','Jalan-jalan'),
(23,'herminia.tillman','89109135808','Jalan-jalan'),
(24,'dschumm','87683671543','Jalan-jalan'),
(25,'moriah83','86485109697','Jalan-jalan'),
(26,'lynch.river','84476059517','Jalan-jalan'),
(27,'beier.ashly','81768749852','Jalan-jalan'),
(28,'cremin.loma','89682590833','Jalan-jalan'),
(29,'williamson.jewell','89734193057','Jalan-jalan'),
(30,'lebsack.donato','86843625596','Jalan-jalan'),
(31,'deron.mayer','82565515695','Jalan-jalan'),
(32,'mozelle59','88093662775','Jalan-jalan'),
(33,'frankie15','83140537473','Jalan-jalan'),
(34,'lenora.roberts','83361120555','Jalan-jalan'),
(35,'bette.davis','85078636014','Jalan-jalan'),
(36,'metz.oma','85462015627','Jalan-jalan'),
(37,'lora96','87760507004','Jalan-jalan'),
(38,'judson.kub','89996148376','Jalan-jalan'),
(39,'brody51','81224198767','Jalan-jalan'),
(40,'nora.walker','85967678675','Jalan-jalan'),
(41,'daniel.gerry','81643866201','Jalan-jalan'),
(42,'anderson.stanford','82600029073','Jalan-jalan'),
(43,'wiza.kirsten','87187512359','Jalan-jalan'),
(44,'gretchen69','88908853526','Jalan-jalan'),
(45,'pat63','88731194428','Jalan-jalan'),
(46,'zackary04','85681602147','Jalan-jalan'),
(47,'carley36','84873610859','Jalan-jalan'),
(48,'herminia.flatley','85252258541','Jalan-jalan'),
(49,'roberts.laisha','84494979447','Jalan-jalan'),
(50,'desmond72','83212562439','Jalan-jalan'),
(52,'Pembeli Kertas','0932842098','Jl.askdnl'),
(54,'mbahmu','987093472786','dfkjh');
/*!40000 ALTER TABLE `pembeli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penjemputan`
--

DROP TABLE IF EXISTS `penjemputan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penjemputan` (
  `id_jemput` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `jadwal_jemput` datetime NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_setor` int(11) NOT NULL,
  PRIMARY KEY (`id_jemput`),
  KEY `id_user` (`id_user`),
  KEY `id_setor` (`id_setor`),
  CONSTRAINT `penjemputan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  CONSTRAINT `penjemputan_ibfk_2` FOREIGN KEY (`id_setor`) REFERENCES `setoran` (`id_setor`)
) ENGINE=InnoDB AUTO_INCREMENT=513 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penjemputan`
--

LOCK TABLES `penjemputan` WRITE;
/*!40000 ALTER TABLE `penjemputan` DISABLE KEYS */;
INSERT INTO `penjemputan` VALUES
(1,'2021-06-13 06:59:31',1,'2022-06-30 09:00:00',3,257),
(2,NULL,1,'2022-06-30 09:00:00',NULL,112),
(3,NULL,1,'2022-06-30 09:00:00',NULL,335),
(4,NULL,1,'2022-06-30 09:00:00',NULL,243),
(5,'2021-07-17 14:16:24',1,'2022-06-30 09:00:00',4,275),
(6,'2021-06-18 05:06:53',1,'2022-06-30 09:00:00',1,277),
(7,NULL,1,'2022-06-30 09:00:00',NULL,465),
(8,NULL,1,'2022-06-30 09:00:00',NULL,287),
(9,'2021-06-25 07:12:24',1,'2022-06-30 09:00:00',3,283),
(10,NULL,0,'2022-06-30 09:00:00',NULL,92),
(11,NULL,1,'2022-06-30 09:00:00',NULL,441),
(12,NULL,0,'2022-06-30 09:00:00',NULL,75),
(13,NULL,0,'2022-06-30 09:00:00',NULL,29),
(14,NULL,1,'2022-06-30 09:00:00',NULL,74),
(15,NULL,0,'2022-06-30 09:00:00',NULL,13),
(16,'2021-10-11 13:06:49',1,'2022-06-30 09:00:00',5,256),
(17,NULL,0,'2022-06-30 09:00:00',NULL,29),
(18,NULL,1,'2022-06-30 09:00:00',NULL,494),
(19,NULL,0,'2022-06-30 09:00:00',NULL,84),
(20,NULL,0,'2022-06-30 09:00:00',NULL,124),
(21,'2022-02-01 05:06:56',1,'2022-06-30 09:00:00',6,258),
(22,NULL,0,'2022-06-30 09:00:00',NULL,115),
(23,NULL,1,'2022-06-30 09:00:00',NULL,431),
(24,NULL,0,'2022-06-30 09:00:00',NULL,434),
(25,'2021-09-03 13:56:26',1,'2022-06-30 09:00:00',3,216),
(26,'2021-11-29 16:29:04',1,'2022-06-30 09:00:00',1,459),
(27,'2021-11-16 10:25:38',1,'2022-06-30 09:00:00',3,365),
(28,'2021-06-27 10:24:03',1,'2022-06-30 09:00:00',1,189),
(29,'2021-11-11 08:08:50',1,'2022-06-30 09:00:00',6,247),
(30,'2021-06-29 18:57:20',1,'2022-06-30 09:00:00',4,477),
(31,'2022-01-08 13:22:59',1,'2022-06-30 09:00:00',4,53),
(32,'2021-10-27 22:17:10',1,'2022-06-30 09:00:00',4,28),
(33,NULL,0,'2022-06-30 09:00:00',NULL,100),
(34,'2022-04-16 00:12:43',1,'2022-06-30 09:00:00',1,444),
(35,'2022-03-12 17:19:49',1,'2022-06-30 09:00:00',3,258),
(36,'2021-10-29 08:41:02',1,'2022-06-30 09:00:00',1,42),
(37,NULL,0,'2022-06-30 09:00:00',NULL,468),
(38,NULL,1,'2022-06-30 09:00:00',NULL,237),
(39,'2022-04-08 06:22:08',1,'2022-06-30 09:00:00',6,58),
(40,'2022-04-05 05:53:19',1,'2022-06-30 09:00:00',3,111),
(41,'2021-06-16 06:28:16',1,'2022-06-30 09:00:00',4,196),
(42,NULL,0,'2022-06-30 09:00:00',NULL,430),
(43,'2022-01-14 14:08:08',1,'2022-06-30 09:00:00',1,103),
(44,'2022-05-06 14:26:39',1,'2022-06-30 09:00:00',2,453),
(45,NULL,0,'2022-06-30 09:00:00',NULL,382),
(46,NULL,0,'2022-06-30 09:00:00',NULL,107),
(47,'2021-09-02 17:50:42',1,'2022-06-30 09:00:00',7,162),
(48,'2022-03-12 00:48:23',1,'2022-06-30 09:00:00',2,15),
(49,NULL,0,'2022-06-30 09:00:00',NULL,155),
(50,'2021-06-13 16:49:28',1,'2022-06-30 09:00:00',7,445),
(51,NULL,0,'2022-06-30 09:00:00',NULL,26),
(52,'2021-05-30 20:13:42',1,'2022-06-30 09:00:00',7,427),
(53,'2021-11-09 19:39:51',1,'2022-06-30 09:00:00',7,143),
(54,'2021-11-09 07:52:46',1,'2022-06-30 09:00:00',3,391),
(55,NULL,0,'2022-06-30 09:00:00',NULL,335),
(56,'2021-09-01 13:02:50',1,'2022-06-30 09:00:00',1,474),
(57,NULL,0,'2022-06-30 09:00:00',NULL,72),
(58,'2021-09-05 02:17:03',1,'2022-06-30 09:00:00',6,90),
(59,'2021-12-23 00:24:32',1,'2022-06-30 09:00:00',3,22),
(60,'2021-08-18 23:58:59',1,'2022-06-30 09:00:00',1,23),
(61,NULL,0,'2022-06-30 09:00:00',NULL,472),
(62,'2021-10-22 19:18:39',1,'2022-06-30 09:00:00',2,337),
(63,'2021-05-28 22:27:50',1,'2022-06-30 09:00:00',2,263),
(64,NULL,0,'2022-06-30 09:00:00',NULL,395),
(65,'2021-06-28 11:07:04',1,'2022-06-30 09:00:00',6,309),
(66,NULL,0,'2022-06-30 09:00:00',NULL,329),
(67,'2021-06-08 09:26:45',1,'2022-06-30 09:00:00',5,326),
(68,NULL,0,'2022-06-30 09:00:00',NULL,327),
(69,'2022-04-02 12:28:08',1,'2022-06-30 09:00:00',7,420),
(70,'2022-02-07 13:06:46',1,'2022-06-30 09:00:00',4,169),
(71,'2021-06-10 15:27:37',1,'2022-06-30 09:00:00',4,220),
(72,'2021-06-05 17:00:58',1,'2022-06-30 09:00:00',2,284),
(73,'2022-03-04 09:44:12',1,'2022-06-30 09:00:00',5,46),
(74,'2021-08-17 18:28:48',1,'2022-06-30 09:00:00',6,465),
(75,NULL,0,'2022-06-30 09:00:00',NULL,416),
(76,NULL,0,'2022-06-30 09:00:00',NULL,471),
(77,'2022-01-17 01:07:41',1,'2022-06-30 09:00:00',6,116),
(78,'2021-08-16 10:23:51',1,'2022-06-30 09:00:00',5,21),
(79,'2022-02-08 15:02:54',1,'2022-06-30 09:00:00',6,159),
(80,NULL,1,'2022-06-30 09:00:00',NULL,295),
(81,NULL,0,'2022-06-30 09:00:00',NULL,254),
(82,'2021-06-27 00:53:57',1,'2022-06-30 09:00:00',2,302),
(83,NULL,0,'2022-06-30 09:00:00',NULL,380),
(84,NULL,0,'2022-06-30 09:00:00',NULL,47),
(85,'2021-12-08 13:31:18',1,'2022-06-30 09:00:00',5,347),
(86,'2022-05-14 09:24:13',1,'2022-06-30 09:00:00',4,52),
(87,'2021-09-28 04:16:00',1,'2022-06-30 09:00:00',1,357),
(88,NULL,0,'2022-06-30 09:00:00',NULL,357),
(89,'2022-03-21 06:44:07',1,'2022-06-30 09:00:00',6,208),
(90,NULL,0,'2022-06-30 09:00:00',NULL,470),
(91,'2022-03-16 14:17:49',1,'2022-06-30 09:00:00',2,307),
(92,NULL,0,'2022-06-30 09:00:00',NULL,11),
(93,'2022-01-28 09:40:06',1,'2022-06-30 09:00:00',6,248),
(94,'2021-07-10 12:26:48',1,'2022-06-30 09:00:00',1,300),
(95,NULL,0,'2022-06-30 09:00:00',NULL,445),
(96,NULL,1,'2022-06-30 09:00:00',NULL,374),
(97,'2022-03-05 09:51:48',1,'2022-06-30 09:00:00',3,219),
(98,'2021-08-23 18:59:14',1,'2022-06-30 09:00:00',3,276),
(99,'2021-12-15 05:39:49',1,'2022-06-30 09:00:00',2,303),
(100,NULL,0,'2022-06-30 09:00:00',NULL,397),
(101,'2021-12-08 21:19:10',1,'2022-06-30 09:00:00',3,37),
(102,'2021-12-11 20:21:47',1,'2022-06-30 09:00:00',7,215),
(103,NULL,0,'2022-06-30 09:00:00',NULL,284),
(104,NULL,0,'2022-06-30 09:00:00',NULL,296),
(105,'2022-02-10 01:51:30',1,'2022-06-30 09:00:00',7,392),
(106,'2021-11-22 10:51:21',1,'2022-06-30 09:00:00',4,115),
(107,NULL,0,'2022-06-30 09:00:00',NULL,206),
(108,'2022-02-01 23:26:46',1,'2022-06-30 09:00:00',2,120),
(109,NULL,0,'2022-06-30 09:00:00',NULL,155),
(110,NULL,0,'2022-06-30 09:00:00',NULL,360),
(111,'2021-08-16 06:57:32',1,'2022-06-30 09:00:00',2,14),
(112,'2021-05-29 00:58:29',1,'2022-06-30 09:00:00',4,297),
(113,'2022-02-12 21:17:39',1,'2022-06-30 09:00:00',4,407),
(114,NULL,0,'2022-06-30 09:00:00',NULL,330),
(115,NULL,0,'2022-06-30 09:00:00',NULL,395),
(116,'2022-05-24 11:08:14',1,'2022-06-30 09:00:00',4,359),
(117,'2022-02-22 01:46:48',1,'2022-06-30 09:00:00',7,175),
(118,NULL,0,'2022-06-30 09:00:00',NULL,324),
(119,NULL,0,'2022-06-30 09:00:00',NULL,144),
(120,NULL,0,'2022-06-30 09:00:00',NULL,449),
(121,'2021-07-29 15:00:39',1,'2022-06-30 09:00:00',1,385),
(122,'2021-08-04 05:54:42',1,'2022-06-30 09:00:00',1,232),
(123,'2021-10-26 23:06:26',1,'2022-06-30 09:00:00',2,189),
(124,NULL,0,'2022-06-30 09:00:00',NULL,45),
(125,NULL,0,'2022-06-30 09:00:00',NULL,271),
(126,NULL,0,'2022-06-30 09:00:00',NULL,442),
(127,NULL,0,'2022-06-30 09:00:00',NULL,136),
(128,'2021-09-16 17:05:07',1,'2022-06-30 09:00:00',4,15),
(129,'2021-12-31 10:29:58',1,'2022-06-30 09:00:00',1,311),
(130,'2021-10-29 05:07:45',1,'2022-06-30 09:00:00',5,253),
(131,'2021-07-20 11:49:29',1,'2022-06-30 09:00:00',3,71),
(132,NULL,0,'2022-06-30 09:00:00',NULL,136),
(133,NULL,0,'2022-06-30 09:00:00',NULL,183),
(134,'2021-10-16 08:29:22',1,'2022-06-30 09:00:00',7,202),
(135,'2022-01-16 22:37:00',1,'2022-06-30 09:00:00',5,79),
(136,'2022-01-18 17:24:05',1,'2022-06-30 09:00:00',3,361),
(137,'2021-09-04 13:38:18',1,'2022-06-30 09:00:00',7,215),
(138,'2021-10-18 13:49:17',1,'2022-06-30 09:00:00',2,54),
(139,'2021-09-10 23:04:00',1,'2022-06-30 09:00:00',6,444),
(140,'2022-02-03 18:16:04',1,'2022-06-30 09:00:00',2,246),
(141,'2022-05-03 12:23:58',1,'2022-06-30 09:00:00',3,2),
(142,NULL,0,'2022-06-30 09:00:00',NULL,497),
(143,'2021-12-17 20:14:57',1,'2022-06-30 09:00:00',2,426),
(144,'2022-04-09 08:26:54',1,'2022-06-30 09:00:00',1,180),
(145,NULL,0,'2022-06-30 09:00:00',NULL,356),
(146,NULL,0,'2022-06-30 09:00:00',NULL,442),
(147,'2021-11-15 14:07:35',1,'2022-06-30 09:00:00',6,42),
(148,NULL,0,'2022-06-30 09:00:00',NULL,171),
(149,'2021-11-18 20:42:31',1,'2022-06-30 09:00:00',4,38),
(150,NULL,0,'2022-06-30 09:00:00',NULL,51),
(151,'2021-08-16 20:26:31',1,'2022-07-01 09:00:00',2,24),
(152,'2021-11-20 04:19:58',1,'2022-07-01 09:00:00',6,80),
(153,NULL,0,'2022-07-01 09:00:00',NULL,4),
(154,'2022-05-02 12:42:52',1,'2022-07-01 09:00:00',2,141),
(155,'2021-12-18 19:55:02',1,'2022-07-01 09:00:00',7,232),
(156,'2022-03-31 08:06:07',1,'2022-07-01 09:00:00',6,161),
(157,'2021-09-05 15:17:47',1,'2022-07-01 09:00:00',4,73),
(158,'2021-09-24 13:06:23',1,'2022-07-01 09:00:00',3,370),
(159,'2021-10-15 06:21:48',1,'2022-07-01 09:00:00',7,169),
(160,NULL,0,'2022-07-01 09:00:00',NULL,235),
(161,'2022-01-31 15:54:27',1,'2022-07-01 09:00:00',1,482),
(162,NULL,0,'2022-07-01 09:00:00',NULL,451),
(163,'2021-11-30 21:42:53',1,'2022-07-01 09:00:00',1,254),
(164,NULL,0,'2022-07-01 09:00:00',NULL,248),
(165,'2022-05-21 09:14:30',1,'2022-07-01 09:00:00',5,493),
(166,NULL,0,'2022-07-01 09:00:00',NULL,407),
(167,'2021-09-10 23:19:21',1,'2022-07-01 09:00:00',1,210),
(168,NULL,0,'2022-07-01 09:00:00',NULL,254),
(169,NULL,0,'2022-07-01 09:00:00',NULL,120),
(170,NULL,0,'2022-07-01 09:00:00',NULL,161),
(171,NULL,0,'2022-07-01 09:00:00',NULL,280),
(172,'2022-03-25 06:25:23',1,'2022-07-01 09:00:00',5,83),
(173,'2022-01-17 09:47:39',1,'2022-07-01 09:00:00',5,478),
(174,'2022-01-31 06:11:44',1,'2022-07-01 09:00:00',7,350),
(175,NULL,0,'2022-07-01 09:00:00',NULL,2),
(176,'2021-10-29 09:41:37',1,'2022-07-01 09:00:00',2,172),
(177,'2021-11-23 02:44:47',1,'2022-07-01 09:00:00',7,260),
(178,NULL,0,'2022-07-01 09:00:00',NULL,6),
(179,'2022-02-28 23:39:26',1,'2022-07-01 09:00:00',1,243),
(180,'2021-11-11 18:26:13',1,'2022-07-01 09:00:00',4,305),
(181,'2021-07-28 02:15:11',1,'2022-07-01 09:00:00',4,53),
(182,NULL,0,'2022-07-01 09:00:00',NULL,252),
(183,NULL,0,'2022-07-01 09:00:00',NULL,197),
(184,'2022-02-18 02:40:53',1,'2022-07-01 09:00:00',1,476),
(185,'2022-04-18 18:57:32',1,'2022-07-01 09:00:00',5,399),
(186,'2022-01-15 03:52:03',1,'2022-07-01 09:00:00',2,166),
(187,'2021-08-04 18:02:26',1,'2022-07-01 09:00:00',3,456),
(188,NULL,0,'2022-07-01 09:00:00',NULL,30),
(189,'2021-10-30 23:11:54',1,'2022-07-01 09:00:00',7,201),
(190,NULL,0,'2022-07-01 09:00:00',NULL,81),
(191,NULL,0,'2022-07-01 09:00:00',NULL,463),
(192,'2022-05-12 21:16:36',1,'2022-07-01 09:00:00',4,186),
(193,NULL,0,'2022-07-01 09:00:00',NULL,374),
(194,'2022-02-23 15:23:44',1,'2022-07-01 09:00:00',3,236),
(195,NULL,0,'2022-07-01 09:00:00',NULL,445),
(196,NULL,0,'2022-07-01 09:00:00',NULL,351),
(197,'2021-12-17 18:46:57',1,'2022-07-01 09:00:00',7,251),
(198,'2022-01-11 04:45:24',1,'2022-07-01 09:00:00',2,259),
(199,NULL,0,'2022-07-01 09:00:00',NULL,108),
(200,'2021-12-17 05:40:00',1,'2022-07-01 09:00:00',4,263),
(201,'2022-05-06 10:40:22',1,'2022-07-01 09:00:00',1,370),
(202,'2021-11-29 03:17:08',1,'2022-07-01 09:00:00',7,185),
(203,'2022-04-27 02:39:46',1,'2022-07-01 09:00:00',5,178),
(204,NULL,0,'2022-07-01 09:00:00',NULL,259),
(205,'2022-03-28 13:07:10',1,'2022-07-01 09:00:00',6,93),
(206,NULL,0,'2022-07-01 09:00:00',NULL,81),
(207,'2021-06-30 21:13:52',1,'2022-07-01 09:00:00',1,91),
(208,'2021-12-09 23:39:53',1,'2022-07-01 09:00:00',4,278),
(209,'2021-09-03 08:37:48',1,'2022-07-01 09:00:00',7,457),
(210,NULL,0,'2022-07-01 09:00:00',NULL,79),
(211,'2021-10-26 23:15:10',1,'2022-07-01 09:00:00',6,53),
(212,'2021-10-20 06:41:59',1,'2022-07-01 09:00:00',7,397),
(213,NULL,0,'2022-07-01 09:00:00',NULL,33),
(214,'2021-06-06 00:39:37',1,'2022-07-01 09:00:00',3,250),
(215,NULL,0,'2022-07-01 09:00:00',NULL,389),
(216,'2021-06-20 19:38:59',1,'2022-07-01 09:00:00',1,147),
(217,NULL,0,'2022-07-01 09:00:00',NULL,442),
(218,NULL,0,'2022-07-01 09:00:00',NULL,83),
(219,NULL,0,'2022-07-01 09:00:00',NULL,46),
(220,'2022-04-27 05:33:31',1,'2022-07-01 09:00:00',5,497),
(221,'2021-06-10 06:06:07',1,'2022-07-01 09:00:00',2,181),
(222,NULL,0,'2022-07-01 09:00:00',NULL,194),
(223,NULL,0,'2022-07-01 09:00:00',NULL,343),
(224,NULL,0,'2022-07-01 09:00:00',NULL,234),
(225,'2021-12-05 23:46:30',1,'2022-07-01 09:00:00',5,483),
(226,NULL,0,'2022-07-01 09:00:00',NULL,199),
(227,'2022-05-07 05:12:47',1,'2022-07-01 09:00:00',1,243),
(228,'2022-05-13 06:43:03',1,'2022-07-01 09:00:00',2,338),
(229,'2022-04-23 16:30:11',1,'2022-07-01 09:00:00',4,251),
(230,NULL,0,'2022-07-01 09:00:00',NULL,415),
(231,NULL,0,'2022-07-01 09:00:00',NULL,100),
(232,NULL,0,'2022-07-01 09:00:00',NULL,397),
(233,'2021-11-11 19:31:20',1,'2022-07-01 09:00:00',1,392),
(234,NULL,0,'2022-07-01 09:00:00',NULL,160),
(235,'2021-08-01 03:47:46',1,'2022-07-01 09:00:00',7,321),
(236,NULL,0,'2022-07-01 09:00:00',NULL,76),
(237,NULL,0,'2022-07-01 09:00:00',NULL,234),
(238,'2021-12-16 03:02:12',1,'2022-07-01 09:00:00',4,272),
(239,'2022-01-26 21:31:59',1,'2022-07-01 09:00:00',2,239),
(240,'2022-03-07 17:49:40',1,'2022-07-01 09:00:00',1,374),
(241,NULL,0,'2022-07-01 09:00:00',NULL,318),
(242,NULL,0,'2022-07-01 09:00:00',NULL,257),
(243,NULL,0,'2022-07-01 09:00:00',NULL,168),
(244,'2022-01-15 08:37:08',1,'2022-07-01 09:00:00',2,336),
(245,NULL,0,'2022-07-01 09:00:00',NULL,182),
(246,'2021-08-09 01:44:51',1,'2022-07-01 09:00:00',4,57),
(247,NULL,0,'2022-07-01 09:00:00',NULL,311),
(248,'2021-07-09 17:54:59',1,'2022-07-01 09:00:00',7,323),
(249,NULL,0,'2022-07-01 09:00:00',NULL,432),
(250,'2022-03-04 06:17:00',1,'2022-07-01 09:00:00',7,140),
(251,NULL,0,'2022-07-01 09:00:00',NULL,139),
(252,NULL,0,'2022-07-01 09:00:00',NULL,253),
(253,'2022-04-26 03:33:01',1,'2022-07-01 09:00:00',6,484),
(254,'2021-10-26 09:40:56',1,'2022-07-01 09:00:00',1,448),
(255,NULL,0,'2022-07-01 09:00:00',NULL,29),
(256,NULL,0,'2022-07-01 09:00:00',NULL,443),
(257,NULL,0,'2022-07-01 09:00:00',NULL,395),
(258,NULL,0,'2022-07-01 09:00:00',NULL,407),
(259,NULL,0,'2022-07-01 09:00:00',NULL,294),
(260,NULL,0,'2022-07-01 09:00:00',NULL,481),
(261,NULL,0,'2022-07-01 09:00:00',NULL,492),
(262,NULL,0,'2022-07-01 09:00:00',NULL,256),
(263,NULL,0,'2022-07-01 09:00:00',NULL,490),
(264,'2021-09-12 12:26:37',1,'2022-07-01 09:00:00',2,6),
(265,'2021-05-31 23:22:46',1,'2022-07-01 09:00:00',6,61),
(266,'2021-11-29 14:12:44',1,'2022-07-01 09:00:00',3,174),
(267,'2021-09-19 17:49:33',1,'2022-07-01 09:00:00',3,360),
(268,'2021-06-16 21:40:28',1,'2022-07-01 09:00:00',6,72),
(269,'2021-10-04 14:13:44',1,'2022-07-01 09:00:00',5,450),
(270,NULL,0,'2022-07-01 09:00:00',NULL,65),
(271,NULL,0,'2022-07-01 09:00:00',NULL,342),
(272,NULL,0,'2022-07-01 09:00:00',NULL,325),
(273,NULL,0,'2022-07-01 09:00:00',NULL,207),
(274,NULL,0,'2022-07-01 09:00:00',NULL,299),
(275,'2021-07-28 23:24:47',1,'2022-07-01 09:00:00',7,474),
(276,NULL,0,'2022-07-01 09:00:00',NULL,475),
(277,NULL,0,'2022-07-01 09:00:00',NULL,316),
(278,NULL,0,'2022-07-01 09:00:00',NULL,268),
(279,NULL,0,'2022-07-01 09:00:00',NULL,308),
(280,NULL,0,'2022-07-01 09:00:00',NULL,227),
(281,'2021-07-26 02:43:29',1,'2022-07-01 09:00:00',6,418),
(282,'2021-08-31 09:29:02',1,'2022-07-01 09:00:00',6,69),
(283,'2022-02-22 21:24:17',1,'2022-07-01 09:00:00',4,326),
(284,NULL,0,'2022-07-01 09:00:00',NULL,121),
(285,'2021-10-08 04:58:19',1,'2022-07-01 09:00:00',4,161),
(286,'2021-07-11 15:59:38',1,'2022-07-01 09:00:00',3,253),
(287,'2021-06-02 15:19:24',1,'2022-07-01 09:00:00',1,193),
(288,'2022-01-08 11:01:15',1,'2022-07-01 09:00:00',2,239),
(289,'2022-03-25 00:31:42',1,'2022-07-01 09:00:00',6,308),
(290,NULL,0,'2022-07-01 09:00:00',NULL,399),
(291,NULL,0,'2022-07-01 09:00:00',NULL,316),
(292,NULL,0,'2022-07-01 09:00:00',NULL,246),
(293,'2021-10-17 06:08:34',1,'2022-07-01 09:00:00',2,103),
(294,'2021-12-10 17:41:22',1,'2022-07-01 09:00:00',1,437),
(295,NULL,0,'2022-07-01 09:00:00',NULL,286),
(296,NULL,0,'2022-07-01 09:00:00',NULL,280),
(297,NULL,0,'2022-07-01 09:00:00',NULL,64),
(298,NULL,0,'2022-07-01 09:00:00',NULL,481),
(299,NULL,0,'2022-07-01 09:00:00',NULL,488),
(300,'2021-08-27 16:14:49',1,'2022-07-01 09:00:00',2,164),
(301,'2022-01-18 21:57:13',1,'2022-08-01 09:00:00',3,286),
(302,NULL,0,'2022-08-01 09:00:00',NULL,150),
(303,'2021-12-20 16:32:52',1,'2022-08-01 09:00:00',7,493),
(304,'2021-10-05 17:05:16',1,'2022-08-01 09:00:00',6,377),
(305,'2021-07-21 09:43:01',1,'2022-08-01 09:00:00',5,425),
(306,'2021-05-30 14:59:05',1,'2022-08-01 09:00:00',4,80),
(307,'2021-06-20 16:06:50',1,'2022-08-01 09:00:00',4,148),
(308,NULL,0,'2022-08-01 09:00:00',NULL,372),
(309,NULL,0,'2022-08-01 09:00:00',NULL,339),
(310,'2021-09-29 23:41:02',1,'2022-08-01 09:00:00',5,161),
(311,'2021-10-24 05:35:39',1,'2022-08-01 09:00:00',2,471),
(312,'2021-07-06 17:42:21',1,'2022-08-01 09:00:00',7,328),
(313,NULL,0,'2022-08-01 09:00:00',NULL,287),
(314,NULL,0,'2022-08-01 09:00:00',NULL,424),
(315,'2022-01-21 03:18:47',1,'2022-08-01 09:00:00',4,409),
(316,'2022-05-11 00:27:50',1,'2022-08-01 09:00:00',2,423),
(317,NULL,0,'2022-08-01 09:00:00',NULL,3),
(318,'2021-11-09 02:30:05',1,'2022-08-01 09:00:00',2,172),
(319,NULL,0,'2022-08-01 09:00:00',NULL,461),
(320,'2021-09-19 07:30:04',1,'2022-08-01 09:00:00',1,294),
(321,NULL,0,'2022-08-01 09:00:00',NULL,323),
(322,NULL,0,'2022-08-01 09:00:00',NULL,125),
(323,NULL,0,'2022-08-01 09:00:00',NULL,199),
(324,'2021-12-27 01:37:00',1,'2022-08-01 09:00:00',7,220),
(325,'2021-11-16 03:58:03',1,'2022-08-01 09:00:00',1,304),
(326,'2022-01-28 22:02:58',1,'2022-08-01 09:00:00',6,162),
(327,NULL,0,'2022-08-01 09:00:00',NULL,320),
(328,'2021-12-13 10:41:26',1,'2022-08-01 09:00:00',7,309),
(329,'2021-06-06 17:52:44',1,'2022-08-01 09:00:00',2,297),
(330,'2021-11-17 02:30:46',1,'2022-08-01 09:00:00',4,381),
(331,'2022-02-13 05:27:41',1,'2022-08-01 09:00:00',3,319),
(332,NULL,0,'2022-08-01 09:00:00',NULL,400),
(333,'2021-10-08 04:12:41',1,'2022-08-01 09:00:00',5,375),
(334,NULL,0,'2022-08-01 09:00:00',NULL,316),
(335,'2021-08-31 11:47:08',1,'2022-08-01 09:00:00',5,119),
(336,'2022-01-09 17:02:07',1,'2022-08-01 09:00:00',2,220),
(337,'2022-01-01 19:26:36',1,'2022-08-01 09:00:00',7,484),
(338,'2022-04-21 07:37:19',1,'2022-08-01 09:00:00',5,411),
(339,'2022-04-20 15:39:56',1,'2022-08-01 09:00:00',3,340),
(340,'2022-03-26 15:22:01',1,'2022-08-01 09:00:00',2,220),
(341,NULL,0,'2022-08-01 09:00:00',NULL,11),
(342,'2022-04-04 08:44:01',1,'2022-08-01 09:00:00',6,419),
(343,NULL,0,'2022-08-01 09:00:00',NULL,370),
(344,NULL,0,'2022-08-01 09:00:00',NULL,436),
(345,'2022-02-27 15:01:28',1,'2022-08-01 09:00:00',3,460),
(346,NULL,0,'2022-08-01 09:00:00',NULL,371),
(347,'2022-04-21 05:08:11',1,'2022-08-01 09:00:00',4,119),
(348,'2021-05-27 11:23:53',1,'2022-08-01 09:00:00',4,100),
(349,'2022-01-14 22:44:16',1,'2022-08-01 09:00:00',7,341),
(350,'2021-08-18 05:26:04',1,'2022-08-01 09:00:00',6,328),
(351,NULL,0,'2022-08-01 09:00:00',NULL,24),
(352,'2022-02-22 21:46:58',1,'2022-08-01 09:00:00',1,400),
(353,NULL,0,'2022-08-01 09:00:00',NULL,391),
(354,'2022-01-30 03:16:35',1,'2022-08-01 09:00:00',5,189),
(355,'2021-06-29 13:30:15',1,'2022-08-01 09:00:00',4,441),
(356,'2022-02-26 10:16:23',1,'2022-08-01 09:00:00',6,374),
(357,'2022-01-17 08:56:55',1,'2022-08-01 09:00:00',7,289),
(358,'2022-04-22 23:22:01',1,'2022-08-01 09:00:00',5,282),
(359,'2021-08-24 18:12:32',1,'2022-08-01 09:00:00',3,20),
(360,'2022-04-27 08:16:01',1,'2022-08-01 09:00:00',4,325),
(361,'2021-11-18 09:42:16',1,'2022-08-01 09:00:00',7,33),
(362,'2021-12-01 02:49:03',1,'2022-08-01 09:00:00',3,257),
(363,NULL,0,'2022-08-01 09:00:00',NULL,466),
(364,'2021-05-27 01:15:46',1,'2022-08-01 09:00:00',5,145),
(365,'2021-09-15 16:46:09',1,'2022-08-01 09:00:00',5,270),
(366,'2022-02-12 15:33:46',1,'2022-08-01 09:00:00',7,265),
(367,'2021-11-14 08:56:01',1,'2022-08-01 09:00:00',5,19),
(368,'2022-03-01 10:59:45',1,'2022-08-01 09:00:00',3,301),
(369,NULL,0,'2022-08-01 09:00:00',NULL,474),
(370,'2021-07-24 08:24:51',1,'2022-08-01 09:00:00',7,139),
(371,NULL,0,'2022-08-01 09:00:00',NULL,398),
(372,'2022-02-19 14:58:10',1,'2022-08-01 09:00:00',1,366),
(373,NULL,0,'2022-08-01 09:00:00',NULL,305),
(374,'2021-10-28 10:59:16',1,'2022-08-01 09:00:00',3,345),
(375,NULL,0,'2022-08-01 09:00:00',NULL,364),
(376,NULL,0,'2022-08-01 09:00:00',NULL,302),
(377,'2021-09-17 21:24:03',1,'2022-08-01 09:00:00',6,364),
(378,'2021-10-31 06:30:19',1,'2022-08-01 09:00:00',1,48),
(379,NULL,0,'2022-08-01 09:00:00',NULL,414),
(380,'2021-08-27 04:03:03',1,'2022-08-01 09:00:00',3,135),
(381,'2021-10-18 22:15:20',1,'2022-08-01 09:00:00',3,164),
(382,NULL,0,'2022-08-01 09:00:00',NULL,478),
(383,'2021-09-22 01:56:10',1,'2022-08-01 09:00:00',3,63),
(384,NULL,0,'2022-08-01 09:00:00',NULL,90),
(385,NULL,0,'2022-08-01 09:00:00',NULL,268),
(386,NULL,0,'2022-08-01 09:00:00',NULL,452),
(387,'2021-08-18 16:40:54',1,'2022-08-01 09:00:00',3,242),
(388,NULL,0,'2022-08-01 09:00:00',NULL,352),
(389,'2022-01-26 14:51:55',1,'2022-08-01 09:00:00',1,464),
(390,NULL,0,'2022-08-01 09:00:00',NULL,370),
(391,NULL,0,'2022-08-01 09:00:00',NULL,366),
(392,'2021-09-18 01:50:09',1,'2022-08-01 09:00:00',3,224),
(393,'2021-09-10 19:22:29',1,'2022-08-01 09:00:00',4,230),
(394,'2021-11-04 22:16:57',1,'2022-08-01 09:00:00',4,59),
(395,NULL,0,'2022-08-01 09:00:00',NULL,464),
(396,NULL,0,'2022-08-01 09:00:00',NULL,326),
(397,'2021-06-18 06:10:14',1,'2022-08-01 09:00:00',2,92),
(398,'2021-08-01 21:15:00',1,'2022-08-01 09:00:00',5,309),
(399,NULL,0,'2022-08-01 09:00:00',NULL,81),
(400,NULL,0,'2022-08-01 09:00:00',NULL,191),
(401,'2021-06-01 21:06:26',1,'2022-08-01 09:00:00',5,127),
(402,NULL,0,'2022-08-01 09:00:00',NULL,14),
(403,NULL,0,'2022-08-01 09:00:00',NULL,459),
(404,NULL,0,'2022-08-01 09:00:00',NULL,414),
(405,'2021-12-11 19:48:21',1,'2022-08-01 09:00:00',6,63),
(406,'2021-11-08 12:54:32',1,'2022-08-01 09:00:00',4,250),
(407,'2022-04-22 23:49:36',1,'2022-08-01 09:00:00',6,454),
(408,NULL,0,'2022-08-01 09:00:00',NULL,158),
(409,'2021-07-24 05:58:16',1,'2022-08-01 09:00:00',3,246),
(410,'2021-05-26 08:42:57',1,'2022-08-01 09:00:00',4,326),
(411,NULL,0,'2022-08-01 09:00:00',NULL,409),
(412,'2021-08-25 23:01:43',1,'2022-08-01 09:00:00',3,336),
(413,'2022-05-09 20:41:09',1,'2022-08-01 09:00:00',1,455),
(414,NULL,0,'2022-08-01 09:00:00',NULL,155),
(415,'2021-05-29 23:18:00',1,'2022-08-01 09:00:00',1,43),
(416,NULL,0,'2022-08-01 09:00:00',NULL,384),
(417,'2022-01-26 12:48:31',1,'2022-08-01 09:00:00',3,487),
(418,NULL,0,'2022-08-01 09:00:00',NULL,38),
(419,'2021-06-24 00:03:02',1,'2022-08-01 09:00:00',7,263),
(420,'2021-12-30 15:49:48',1,'2022-08-01 09:00:00',7,368),
(421,NULL,0,'2022-08-01 09:00:00',NULL,234),
(422,'2022-04-17 05:27:59',1,'2022-08-01 09:00:00',2,253),
(423,'2022-01-10 20:22:00',1,'2022-08-01 09:00:00',3,91),
(424,'2022-03-30 04:23:35',1,'2022-08-01 09:00:00',6,371),
(425,'2021-06-14 09:52:04',1,'2022-08-01 09:00:00',5,126),
(426,NULL,0,'2022-08-01 09:00:00',NULL,45),
(427,NULL,0,'2022-08-01 09:00:00',NULL,348),
(428,NULL,0,'2022-08-01 09:00:00',NULL,35),
(429,'2022-03-27 19:20:27',1,'2022-08-01 09:00:00',5,24),
(430,NULL,0,'2022-08-01 09:00:00',NULL,338),
(431,NULL,0,'2022-08-01 09:00:00',NULL,34),
(432,'2022-05-11 22:05:38',1,'2022-08-01 09:00:00',4,236),
(433,'2022-02-20 20:22:17',1,'2022-08-01 09:00:00',1,118),
(434,NULL,0,'2022-08-01 09:00:00',NULL,465),
(435,NULL,0,'2022-08-01 09:00:00',NULL,224),
(436,'2021-07-02 09:38:04',1,'2022-08-01 09:00:00',5,205),
(437,NULL,0,'2022-08-01 09:00:00',NULL,449),
(438,NULL,0,'2022-08-01 09:00:00',NULL,144),
(439,'2021-09-16 02:34:06',1,'2022-08-01 09:00:00',1,368),
(440,'2022-05-19 10:22:49',1,'2022-08-01 09:00:00',1,376),
(441,NULL,0,'2022-08-01 09:00:00',NULL,210),
(442,'2021-09-10 03:30:01',1,'2022-08-01 09:00:00',6,28),
(443,'2021-10-11 20:42:17',1,'2022-08-01 09:00:00',1,300),
(444,NULL,0,'2022-08-01 09:00:00',NULL,360),
(445,'2021-11-11 01:23:30',1,'2022-08-01 09:00:00',5,251),
(446,NULL,0,'2022-08-01 09:00:00',NULL,390),
(447,'2021-09-26 08:52:40',1,'2022-08-01 09:00:00',4,418),
(448,'2021-11-29 14:02:07',1,'2022-08-01 09:00:00',2,304),
(449,NULL,0,'2022-08-01 09:00:00',NULL,398),
(450,'2022-03-12 12:17:25',1,'2022-08-01 09:00:00',4,415),
(451,'2022-02-28 11:15:14',1,'2022-08-01 09:00:00',2,100),
(452,'2021-12-28 23:01:34',1,'2022-08-01 09:00:00',2,77),
(453,'2022-02-03 18:08:56',1,'2022-08-01 09:00:00',1,78),
(454,'2021-10-15 12:37:56',1,'2022-08-01 09:00:00',4,88),
(455,'2021-08-11 15:01:10',1,'2022-08-01 09:00:00',7,235),
(456,NULL,0,'2022-08-01 09:00:00',NULL,438),
(457,NULL,0,'2022-08-01 09:00:00',NULL,383),
(458,'2021-06-22 00:57:21',1,'2022-08-01 09:00:00',7,1),
(459,NULL,0,'2022-08-01 09:00:00',NULL,27),
(460,'2021-06-13 23:54:43',1,'2022-08-01 09:00:00',6,6),
(461,NULL,0,'2022-08-01 09:00:00',NULL,57),
(462,NULL,0,'2022-08-01 09:00:00',NULL,61),
(463,NULL,0,'2022-08-01 09:00:00',NULL,20),
(464,NULL,0,'2022-08-01 09:00:00',NULL,9),
(465,'2021-05-27 23:32:25',1,'2022-08-01 09:00:00',6,131),
(466,'2021-11-04 09:13:18',1,'2022-08-01 09:00:00',6,38),
(467,'2021-12-05 04:16:59',1,'2022-08-01 09:00:00',4,43),
(468,NULL,0,'2022-08-01 09:00:00',NULL,280),
(469,NULL,0,'2022-08-01 09:00:00',NULL,335),
(470,'2022-05-07 01:48:59',1,'2022-08-01 09:00:00',6,65),
(471,'2021-10-07 02:17:20',1,'2022-08-01 09:00:00',1,330),
(472,'2021-06-24 13:45:16',1,'2022-08-01 09:00:00',1,12),
(473,NULL,0,'2022-08-01 09:00:00',NULL,467),
(474,'2021-07-10 11:09:03',1,'2022-08-01 09:00:00',1,395),
(475,'2022-05-08 14:02:24',1,'2022-08-01 09:00:00',7,373),
(476,'2021-09-24 12:25:27',1,'2022-08-01 09:00:00',6,270),
(477,NULL,0,'2022-08-01 09:00:00',NULL,295),
(478,NULL,0,'2022-08-01 09:00:00',NULL,403),
(479,NULL,0,'2022-08-01 09:00:00',NULL,194),
(480,'2021-12-02 10:57:53',1,'2022-08-01 09:00:00',6,232),
(481,'2021-09-21 15:41:12',1,'2022-08-01 09:00:00',5,335),
(482,NULL,0,'2022-08-01 09:00:00',NULL,55),
(483,NULL,0,'2022-08-01 09:00:00',NULL,384),
(484,NULL,0,'2022-08-01 09:00:00',NULL,498),
(485,NULL,0,'2022-08-01 09:00:00',NULL,201),
(486,NULL,0,'2022-08-01 09:00:00',NULL,286),
(487,NULL,0,'2022-08-01 09:00:00',NULL,64),
(488,NULL,0,'2022-08-01 09:00:00',NULL,243),
(489,NULL,0,'2022-08-01 09:00:00',NULL,311),
(490,NULL,0,'2022-08-01 09:00:00',NULL,24),
(491,'2022-04-07 06:48:44',1,'2022-08-01 09:00:00',3,38),
(492,NULL,0,'2022-08-01 09:00:00',NULL,113),
(493,'2021-08-17 20:37:52',1,'2022-08-01 09:00:00',5,124),
(494,NULL,0,'2022-08-01 09:00:00',NULL,147),
(495,NULL,0,'2022-08-01 09:00:00',NULL,426),
(496,'2021-12-29 01:32:15',1,'2022-08-01 09:00:00',6,141),
(497,NULL,0,'2022-08-01 09:00:00',NULL,149),
(498,'2022-01-29 12:21:51',1,'2022-08-01 09:00:00',3,137),
(499,'2022-01-26 21:55:01',1,'2022-08-01 09:00:00',1,30),
(500,NULL,0,'2022-08-01 09:00:00',NULL,249),
(501,NULL,0,'2022-09-01 09:00:00',NULL,501),
(502,NULL,0,'2022-07-12 15:00:00',NULL,502),
(503,NULL,0,'2022-09-08 09:08:00',NULL,503),
(505,NULL,1,'2022-07-08 08:06:00',NULL,505),
(506,NULL,0,'2022-09-07 08:09:00',NULL,506),
(507,NULL,0,'2022-07-08 08:06:00',NULL,507),
(508,'2022-06-12 20:55:18',1,'2022-09-07 08:07:00',9,508),
(509,'2022-06-12 21:44:16',1,'2022-07-08 08:07:00',9,509),
(512,NULL,0,'2022-09-08 09:08:00',NULL,512);
/*!40000 ALTER TABLE `penjemputan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penjualan`
--

DROP TABLE IF EXISTS `penjualan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penjualan` (
  `id_jual` int(11) NOT NULL AUTO_INCREMENT,
  `harga` int(6) NOT NULL,
  `berat` float NOT NULL,
  `subtotal` float NOT NULL,
  `tgl_jual` datetime NOT NULL,
  `tgl_konfirmasi` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `id_sampah` int(11) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_jual`),
  KEY `id_sampah` (`id_sampah`),
  KEY `id_pembeli` (`id_pembeli`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`id_sampah`) REFERENCES `sampah` (`id_sampah`),
  CONSTRAINT `penjualan_ibfk_2` FOREIGN KEY (`id_pembeli`) REFERENCES `pembeli` (`id_pembeli`),
  CONSTRAINT `penjualan_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=361 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penjualan`
--

LOCK TABLES `penjualan` WRITE;
/*!40000 ALTER TABLE `penjualan` DISABLE KEYS */;
INSERT INTO `penjualan` VALUES
(1,3500,22.34,78190,'2022-06-07 21:31:00','2022-07-01 09:00:00',1,15,13,10),
(4,2711,47.29,4839210,'2022-01-01 09:00:00','2022-07-01 09:00:00',1,6,27,5),
(5,9377,28.1,1834000,'2022-01-01 09:00:00','2022-07-01 09:00:00',1,2,23,3),
(7,1220,45.23,8075830,'2022-01-01 09:00:00','2022-07-01 09:00:00',1,8,23,6),
(8,7181,30.33,6874570,'2022-04-24 17:19:25','2022-07-01 09:00:00',1,6,29,2),
(9,7934,1.06,340982,'2022-01-01 09:00:00','2022-07-01 09:00:00',1,5,45,5),
(10,9546,25.2,9429010,'2022-01-01 09:00:00','2022-07-01 09:00:00',1,1,50,6),
(11,8904,3.03,9744500,'2022-01-01 09:00:00','2022-07-01 09:00:00',1,1,24,1),
(12,5211,46.64,6751690,'2022-04-30 07:42:25','2022-07-01 09:00:00',1,9,29,2),
(13,3061,14.35,3390040,'2022-01-01 09:00:00','2022-09-01 09:00:00',1,9,41,6),
(14,6071,44.97,3450670,'2022-01-01 09:00:00',NULL,0,9,16,3),
(15,2676,41.2,7601060,'2022-01-01 09:00:00','2022-07-01 09:00:00',1,5,23,6),
(16,4025,27.82,8032320,'2022-03-28 20:36:32',NULL,0,9,42,7),
(17,4362,20.11,2975960,'2022-01-01 09:00:00',NULL,0,2,29,3),
(18,1724,49.61,4290440,'2022-03-19 02:20:55',NULL,0,10,7,7),
(19,4681,20.78,8343550,'2022-06-09 13:14:09','2022-07-01 09:00:00',1,2,32,6),
(20,7320,26.35,7657790,'2022-06-09 04:40:01','2022-07-01 09:00:00',1,8,33,6),
(21,7656,17.77,2418860,'2022-02-01 09:00:00',NULL,0,6,37,2),
(22,6738,47.86,5942930,'2022-02-26 18:10:54','2022-07-01 09:00:00',1,6,31,6),
(23,1931,25.92,8831290,'2022-02-01 09:00:00',NULL,0,8,25,5),
(24,9493,39.33,4199600,'2022-03-29 19:41:46','2022-07-01 09:00:00',1,6,18,7),
(25,6861,2.69,406398,'2022-02-01 09:00:00','2022-07-01 09:00:00',1,10,42,3),
(26,6973,2.42,5021550,'2022-02-01 09:00:00','2022-07-01 09:00:00',1,8,34,2),
(27,7242,19.5,7295000,'2022-02-01 09:00:00','2022-06-12 10:41:53',1,8,40,6),
(28,7663,1.96,1904840,'2022-09-16 17:26:07','2022-07-01 09:00:00',1,1,39,7),
(29,1287,12.38,9125040,'2022-02-01 09:00:00','2022-07-01 09:00:00',1,1,48,4),
(30,7917,27.62,5916680,'2022-02-01 09:00:00','2022-07-01 09:00:00',1,9,38,2),
(31,7583,34.23,715763,'2022-01-25 13:04:19','2022-07-01 09:00:00',1,7,15,7),
(32,5555,11.57,4059040,'2022-06-09 09:31:52','2022-09-01 09:00:00',1,10,42,4),
(33,4599,18.11,1204700,'2022-02-01 09:00:00',NULL,0,8,29,1),
(34,8600,43.56,7591730,'2022-02-01 09:00:00',NULL,0,5,8,3),
(35,9691,18.48,1382110,'2022-02-01 09:00:00',NULL,0,4,6,2),
(36,8071,37.85,6501440,'2022-05-04 23:58:20','2022-09-01 09:00:00',1,8,46,7),
(37,9062,30.05,5150400,'2022-03-01 09:00:00','2022-09-01 09:00:00',1,1,31,5),
(38,4529,18.22,8434320,'2022-05-20 15:40:47',NULL,0,9,35,4),
(39,3763,19.88,5123600,'2022-04-06 15:20:47',NULL,0,8,35,4),
(40,2005,28.29,2646480,'2022-03-01 09:00:00',NULL,0,4,27,2),
(41,8770,36.45,6888750,'2022-01-22 03:51:25',NULL,0,6,8,4),
(42,1981,25.01,2725100,'2022-03-01 09:00:00','2022-09-01 09:00:00',1,5,4,3),
(43,1965,30.81,6480920,'2022-03-01 09:00:00',NULL,0,1,42,7),
(44,2623,41.06,6181900,'2022-04-09 02:25:53','2022-09-01 09:00:00',1,1,12,1),
(45,8645,37.94,9993210,'2022-03-01 09:00:00',NULL,0,6,31,1),
(46,4839,16.27,3393400,'2022-04-04 15:13:37','2022-09-01 09:00:00',1,8,20,1),
(47,8524,37.36,7420460,'2022-05-03 09:11:20','2022-09-01 09:00:00',1,7,22,5),
(48,4126,22.77,3911110,'2022-02-22 12:32:54',NULL,0,4,14,3),
(49,1935,41.51,4279780,'2022-02-02 12:22:21',NULL,0,9,2,1),
(50,7159,17.18,5778340,'2022-03-01 09:00:00','2022-09-01 09:00:00',1,3,18,4),
(51,1327,10.44,2806810,'2022-03-01 09:00:00','2022-09-01 09:00:00',1,5,45,5),
(52,4057,34.72,9395360,'2022-05-23 06:19:09',NULL,0,10,19,6),
(53,1780,35.3,2095440,'2022-03-01 09:00:00','2022-08-01 09:00:00',1,3,21,5),
(54,9371,46.19,7856350,'2022-03-01 09:00:00',NULL,0,1,26,6),
(55,2886,45.45,2126940,'2022-03-01 09:00:00','2022-08-01 09:00:00',1,1,1,3),
(56,6733,12.2,7196910,'2022-04-01 09:00:00',NULL,0,2,38,6),
(57,7086,21.86,9168990,'2022-01-24 13:10:31',NULL,0,3,21,2),
(58,1047,5.89,8099880,'2022-04-01 09:00:00',NULL,0,9,39,4),
(59,6177,18.82,6992930,'2022-04-01 09:00:00','2022-08-01 09:00:00',1,2,31,4),
(60,4236,6.77,933507,'2022-04-01 09:00:00','2022-08-01 09:00:00',1,3,45,7),
(61,4093,31.78,4497590,'2022-04-10 22:32:57','2022-08-01 09:00:00',1,8,18,6),
(62,6188,22.69,7414550,'2022-03-11 07:25:16',NULL,0,5,14,2),
(63,8460,38.24,8740060,'2022-03-01 21:48:19',NULL,0,3,25,4),
(64,2635,8.55,3423850,'2022-04-27 19:41:16','2022-08-01 09:00:00',1,8,29,1),
(65,4291,35.61,4636640,'2022-04-01 09:00:00','2022-06-12 11:03:29',1,6,34,1),
(66,5068,49.2,4008230,'2022-05-04 05:13:57','2022-08-01 09:00:00',1,1,44,6),
(67,7916,29.89,5697250,'2022-04-20 01:13:31','2022-08-01 09:00:00',1,9,4,2),
(68,4410,9.3,1510650,'2022-04-01 09:00:00','2022-08-01 09:00:00',1,1,47,7),
(69,6305,46.38,2126230,'2022-01-17 16:29:24','2022-08-01 09:00:00',1,6,5,5),
(70,5936,14.3,2096450,'2022-04-01 09:00:00',NULL,0,2,16,4),
(71,3028,9.86,3937100,'2022-05-09 02:06:34','2022-08-01 09:00:00',1,1,3,6),
(72,7791,2.94,8030170,'2022-04-01 09:00:00','2022-08-01 09:00:00',1,9,25,1),
(73,8827,17.05,7459900,'2022-04-01 09:00:00','2022-06-01 09:00:00',1,10,35,5),
(74,9251,15.79,9612280,'2022-03-10 12:00:30','2022-06-01 09:00:00',1,6,24,2),
(75,1600,7.87,3275390,'2022-04-01 09:00:00',NULL,0,6,4,7),
(76,9634,11.95,2618320,'2022-04-01 09:00:00',NULL,0,7,5,6),
(77,1589,11.83,1046540,'2022-04-06 03:33:36',NULL,0,5,46,6),
(78,9408,35.36,5258960,'2022-04-01 09:00:00','2022-06-01 09:00:00',1,7,50,6),
(79,5833,42.98,6616220,'2022-05-21 08:59:53','2022-06-01 09:00:00',1,7,29,6),
(80,2383,43.47,171022,'2022-04-01 09:00:00',NULL,0,3,35,1),
(81,9658,5.81,2406920,'2022-04-01 09:00:00',NULL,0,8,36,2),
(82,4053,21.91,1672290,'2022-04-01 09:00:00','2022-06-01 09:00:00',1,6,26,5),
(83,9431,41.43,6808880,'2022-04-01 09:00:00','2022-06-01 09:00:00',1,8,24,3),
(84,1138,35.78,6649350,'2022-04-01 09:00:00',NULL,0,4,49,6),
(85,6696,39.81,128558,'2022-04-01 09:00:00',NULL,0,6,28,7),
(86,2418,41.68,3196800,'2022-04-01 09:00:00','2022-06-01 09:00:00',1,4,11,7),
(87,3297,5.85,4280780,'2022-04-28 19:01:25','2022-06-01 09:00:00',1,2,34,7),
(88,9293,18.26,3854910,'2022-02-08 04:07:32',NULL,0,10,18,7),
(89,1109,19.58,7923650,'2022-04-01 09:00:00','2022-06-01 09:00:00',1,7,2,4),
(90,8351,16.95,3138800,'2022-04-01 09:00:00','2022-12-01 09:00:00',1,5,16,1),
(91,5206,28.01,5329820,'2022-04-01 09:00:00','2022-12-01 09:00:00',1,6,4,6),
(92,3996,44.71,9112500,'2022-02-09 19:03:00',NULL,0,8,34,3),
(93,4007,48.58,7095740,'2022-04-01 09:00:00','2022-12-01 09:00:00',1,4,19,6),
(94,8156,26,3863420,'2022-05-19 18:36:14',NULL,0,8,36,6),
(95,1452,8.47,518862,'2022-01-24 19:51:46',NULL,0,6,13,3),
(96,4229,10.49,36771,'2022-04-01 09:00:00',NULL,0,5,32,4),
(97,2809,32.97,7700340,'2022-03-28 20:14:59','2022-12-01 09:00:00',1,5,38,2),
(98,5769,26.14,7515460,'2022-04-01 09:00:00',NULL,0,4,34,4),
(99,5345,48.65,4857100,'2022-04-01 09:00:00',NULL,0,2,15,5),
(100,9293,10.16,9844990,'2022-04-01 09:00:00','2022-12-01 09:00:00',1,7,38,7),
(101,6270,7.11,1508540,'2022-04-01 09:00:00','2022-12-01 09:00:00',1,8,17,7),
(102,9906,46.46,757410,'2022-04-01 09:00:00',NULL,0,6,4,5),
(103,6782,26.92,8679930,'2022-04-01 09:00:00','2022-12-01 09:00:00',1,9,24,7),
(104,4688,10.6,4771780,'2022-04-01 09:00:00','2022-12-01 09:00:00',1,7,11,5),
(105,6397,18.14,8456920,'2022-04-01 09:00:00',NULL,0,5,39,7),
(106,9217,27.7,2102240,'2022-04-01 09:00:00','2022-12-01 09:00:00',1,8,12,5),
(107,3751,21.6,6449680,'2022-02-11 00:02:13','2022-12-01 09:00:00',1,3,34,3),
(108,5346,34.22,8448820,'2022-04-01 09:00:00','2022-10-01 09:00:00',1,5,49,1),
(109,2696,26.51,402898,'2022-04-22 23:22:57',NULL,0,10,8,3),
(110,6907,27.58,8599880,'2022-04-22 16:00:31','2022-10-01 09:00:00',1,6,39,1),
(111,1620,11.95,6863720,'2022-04-01 09:00:00','2022-10-01 09:00:00',1,5,25,3),
(112,6576,45.64,4865610,'2022-04-01 09:00:00','2022-10-01 09:00:00',1,4,2,4),
(113,5892,27.05,1733860,'2022-04-01 09:00:00','2022-10-01 09:00:00',1,1,45,7),
(114,7360,13.23,1492460,'2022-04-01 09:00:00',NULL,0,10,27,1),
(115,2751,25.55,2502380,'2022-04-01 09:00:00','2022-10-01 09:00:00',1,7,47,7),
(116,4212,23.84,4379530,'2022-04-01 09:00:00','2022-10-01 09:00:00',1,7,34,1),
(117,8324,42.57,5041620,'2022-04-01 09:00:00',NULL,0,3,46,6),
(118,4840,26.87,4623840,'2022-04-01 09:00:00','2022-10-01 09:00:00',1,6,17,6),
(119,1614,44.92,4205990,'2022-04-01 09:00:00','2022-10-01 09:00:00',1,6,16,7),
(120,9450,48.4,3727410,'2022-04-01 09:00:00','2022-10-01 09:00:00',1,9,45,5),
(121,3262,37.02,1075760,'2022-04-01 09:00:00','2022-11-01 09:00:00',1,10,17,2),
(122,2482,10.1,7954260,'2022-01-07 23:16:10',NULL,0,3,37,2),
(123,2106,6.06,8670490,'2022-04-29 23:09:43',NULL,0,8,37,1),
(124,8935,49.01,6155960,'2022-05-05 18:30:46','2022-11-01 09:00:00',1,7,37,5),
(125,7206,16.13,9848710,'2022-04-01 09:00:00','2022-11-01 09:00:00',1,8,22,5),
(126,4218,35.09,2129050,'2022-04-23 06:50:58','2022-11-01 09:00:00',1,7,4,2),
(127,3986,17.78,1678160,'2022-05-07 02:06:27',NULL,0,9,15,2),
(128,6442,10.32,2022070,'2022-04-01 09:00:00',NULL,0,7,43,4),
(129,6534,6.95,217078,'2022-04-01 09:00:00','2022-11-01 09:00:00',1,4,21,6),
(130,2562,22.7,3196650,'2022-04-01 09:00:00','2022-11-01 09:00:00',1,3,14,5),
(131,2499,47.28,9192760,'2022-02-09 17:34:57','2022-11-01 09:00:00',1,10,10,1),
(132,5806,23.81,7909070,'2022-03-12 06:24:14','2022-11-01 09:00:00',1,2,25,6),
(133,2607,33.24,2730710,'2022-04-01 09:00:00','2022-11-01 09:00:00',1,5,12,4),
(134,8865,15.64,3368540,'2022-02-16 13:12:13',NULL,0,6,45,2),
(135,9707,20.01,6600850,'2022-04-01 09:00:00','2022-11-01 09:00:00',1,2,33,5),
(136,4072,38.81,7146160,'2022-04-01 09:00:00',NULL,0,8,17,5),
(137,1859,48.19,4203000,'2022-04-01 09:00:00',NULL,0,10,8,7),
(138,1987,4.97,9075780,'2022-04-01 09:00:00',NULL,0,2,38,6),
(139,1971,20.81,5735140,'2022-04-01 09:00:00',NULL,0,7,7,2),
(140,4730,19.71,659736,'2022-01-02 10:40:16',NULL,0,5,21,4),
(141,9563,31.37,9251250,'2022-04-01 09:00:00',NULL,0,2,21,5),
(142,6235,24.19,1188720,'2022-04-01 09:00:00',NULL,0,2,30,2),
(143,4438,8.16,8960950,'2022-04-01 09:00:00',NULL,0,10,1,3),
(144,2944,45.65,4217520,'2022-04-01 09:00:00',NULL,0,4,26,3),
(145,5294,19.7,7325000,'2022-03-19 13:08:45',NULL,0,7,35,7),
(146,2743,23.74,9691910,'2022-04-01 09:00:00','2022-11-01 09:00:00',1,3,22,3),
(147,6025,26.84,301248,'2022-04-01 09:00:00','2022-11-01 09:00:00',1,10,21,4),
(148,8033,4.05,48398,'2022-04-01 09:00:00','2022-11-01 09:00:00',1,10,29,2),
(149,2359,22.85,8275530,'2022-04-01 09:00:00',NULL,0,9,10,3),
(150,1783,49.68,6576730,'2022-04-01 09:00:00',NULL,0,1,32,6),
(151,8678,9.37,893728,'2022-04-01 09:00:00','2022-11-01 09:00:00',1,6,39,1),
(152,7315,39.83,9806960,'2022-04-01 09:00:00',NULL,0,3,47,6),
(153,7275,36.9,6901000,'2022-04-01 09:00:00','2022-11-01 09:00:00',1,5,42,6),
(154,7633,28.83,5669190,'2022-02-19 16:42:46','2022-11-01 09:00:00',1,9,12,2),
(155,4915,5.15,2434180,'2022-04-01 09:00:00',NULL,0,2,43,7),
(156,6192,34.01,9880360,'2022-04-01 09:00:00',NULL,0,2,7,3),
(157,9908,42.91,5432700,'2022-05-01 06:32:27','2022-11-01 09:00:00',1,5,6,6),
(158,2778,18.39,3763110,'2022-04-01 09:00:00',NULL,0,9,4,3),
(159,1479,33.89,9485260,'2022-04-01 09:00:00','2022-11-01 09:00:00',1,1,45,4),
(160,6435,1.12,5861070,'2022-01-25 14:58:41','2022-11-01 09:00:00',1,4,48,2),
(161,8103,40.65,1518660,'2022-04-01 09:00:00','2022-11-01 09:00:00',1,2,27,7),
(162,2516,21.21,1334230,'2022-04-01 09:00:00','2022-03-01 09:00:00',1,3,42,7),
(163,9581,24.97,4352670,'2022-04-01 09:00:00',NULL,0,10,16,6),
(164,7048,28.51,8409640,'2022-04-01 09:00:00',NULL,0,8,11,7),
(165,7358,49.67,2601010,'2022-04-10 04:32:21',NULL,0,10,21,6),
(166,7658,26.77,816858,'2022-04-24 00:13:24',NULL,0,10,28,7),
(167,9135,29.76,1239320,'2022-04-01 09:00:00','2022-03-01 09:00:00',1,3,50,1),
(168,6884,28.03,6685850,'2022-03-30 14:11:15','2022-03-01 09:00:00',1,1,45,1),
(169,4474,18.59,1733400,'2022-05-22 00:52:25','2022-03-01 09:00:00',1,4,48,1),
(170,6727,2.83,1573470,'2022-04-01 09:00:00',NULL,0,10,18,7),
(171,9837,6.09,2847730,'2022-04-22 22:00:45',NULL,0,2,24,4),
(172,4205,29.11,3450180,'2022-02-19 21:02:09','2022-03-01 09:00:00',1,1,36,3),
(173,4482,18.32,2245610,'2022-04-01 09:00:00','2022-03-01 09:00:00',1,10,36,5),
(174,9175,42.18,9572420,'2022-04-01 09:00:00',NULL,0,7,22,6),
(175,9959,21.44,2227260,'2022-04-01 09:00:00','2022-03-01 09:00:00',1,7,21,2),
(176,7116,43.65,938766,'2022-04-01 09:00:00',NULL,0,5,16,6),
(177,5645,24.83,9751500,'2022-02-20 11:03:36',NULL,0,4,30,6),
(178,5080,29.18,4937320,'2022-04-01 09:00:00',NULL,0,5,32,5),
(179,7447,14.76,1217900,'2022-04-22 23:35:34',NULL,0,6,2,5),
(180,1546,2.79,506018,'2022-04-01 09:00:00','2022-03-01 09:00:00',1,6,48,7),
(181,3942,47.54,7280330,'2022-04-01 09:00:00','2022-04-01 09:00:00',1,5,3,4),
(182,4939,3.27,5180470,'2022-04-28 19:27:47',NULL,0,10,6,2),
(183,6744,10.49,3877400,'2022-04-06 01:00:43','2022-04-01 09:00:00',1,3,3,7),
(184,7631,37.75,2733590,'2022-04-01 09:00:00','2022-04-01 09:00:00',1,10,35,3),
(185,9891,49.98,5667860,'2022-04-22 15:47:07',NULL,0,8,16,6),
(186,4240,7.63,1464210,'2022-04-01 09:00:00',NULL,0,1,37,1),
(187,8342,3.32,1412920,'2022-01-21 21:06:49','2022-04-01 09:00:00',1,9,5,5),
(188,4895,22.35,1325240,'2022-04-01 09:00:00',NULL,0,7,26,2),
(189,1503,14.55,6830770,'2022-04-01 09:00:00','2022-04-01 09:00:00',1,4,2,2),
(190,3597,45.03,816657,'2022-04-01 09:00:00','2022-04-01 09:00:00',1,10,28,2),
(191,1445,30.75,4369620,'2022-03-19 23:15:56',NULL,0,10,2,2),
(192,8807,16.9,814393,'2022-04-01 09:00:00',NULL,0,5,50,3),
(193,1851,27.12,4896920,'2022-04-01 09:00:00',NULL,0,7,15,4),
(194,5900,31.06,1185040,'2022-04-01 09:00:00',NULL,0,6,11,1),
(195,3119,43.28,1686970,'2022-04-28 11:41:52',NULL,0,9,50,4),
(196,2092,46.94,5457140,'2022-01-09 08:50:05',NULL,0,6,2,2),
(197,5353,19.96,7287640,'2022-04-01 09:00:00','2022-04-01 09:00:00',1,6,44,2),
(198,7468,3.83,9609750,'2022-04-01 09:00:00',NULL,0,3,27,6),
(199,9428,49.63,8701300,'2022-04-05 06:21:56',NULL,0,5,44,6),
(200,8487,4.65,3752760,'2022-04-01 09:00:00',NULL,0,8,44,3),
(201,3343,15.1,2714500,'2022-03-21 10:29:42',NULL,0,10,44,3),
(202,1170,41.64,2495450,'2022-04-01 09:00:00','2022-04-01 09:00:00',1,3,17,3),
(203,7196,1.91,2520730,'2022-05-13 10:39:44','2022-04-01 09:00:00',1,7,48,5),
(204,2364,5.06,7986560,'2022-05-14 14:57:57',NULL,0,1,24,7),
(205,6717,5.56,378293,'2022-04-01 09:00:00',NULL,0,3,16,7),
(206,6632,10.81,2450270,'2022-04-01 09:00:00',NULL,0,7,43,7),
(207,9100,40.15,8669700,'2022-01-23 06:45:24',NULL,0,9,23,6),
(208,2734,32.12,5674290,'2022-04-01 09:00:00','2022-04-01 09:00:00',1,1,33,3),
(209,4204,10.37,7232630,'2022-04-01 09:00:00',NULL,0,9,7,2),
(210,5395,30.58,5253370,'2022-05-01 09:00:00',NULL,0,7,44,1),
(211,8242,2.03,9971960,'2022-05-08 19:36:05',NULL,0,10,43,7),
(212,4963,12.07,3712960,'2022-02-07 08:23:07','2022-04-01 09:00:00',1,4,7,2),
(213,8970,24.65,8767800,'2022-05-01 09:00:00',NULL,0,8,40,2),
(214,1061,9.36,7427900,'2022-05-01 09:00:00','2022-04-01 09:00:00',1,4,44,5),
(215,5847,48,6992570,'2022-05-01 09:00:00','2022-03-01 09:00:00',1,3,5,7),
(216,6896,31.91,6526880,'2022-05-01 09:00:00','2022-03-01 09:00:00',1,2,38,6),
(217,5233,1.34,2433800,'2022-05-01 09:00:00','2022-03-01 09:00:00',1,1,29,2),
(218,2750,49.92,7977840,'2022-05-21 23:55:27',NULL,0,8,33,7),
(219,9981,40.31,4051420,'2022-05-01 09:00:00',NULL,0,1,26,1),
(220,4039,25.52,1010220,'2022-03-30 21:16:56','2022-03-01 09:00:00',1,3,9,7),
(221,7217,4.42,498084,'2022-05-01 09:00:00',NULL,0,4,9,6),
(222,4305,44.44,631142,'2022-02-09 12:21:39',NULL,0,3,27,7),
(223,2644,27.12,292544,'2022-05-01 09:00:00',NULL,0,5,14,5),
(224,2082,16.57,6928980,'2022-04-09 19:46:04','2022-03-01 09:00:00',1,7,34,5),
(225,9706,20.51,8792130,'2022-05-01 09:00:00',NULL,0,4,47,5),
(226,4948,42.76,3806970,'2022-04-13 03:52:04',NULL,0,4,3,3),
(227,7284,11.99,22861,'2022-05-01 09:00:00',NULL,0,2,4,7),
(228,4489,17.56,1208180,'2022-03-12 08:21:00',NULL,0,5,43,5),
(229,8791,5.32,6705590,'2022-05-22 11:09:16',NULL,0,4,47,2),
(230,2933,8.88,8982520,'2022-05-01 09:00:00','2022-03-01 09:00:00',1,5,10,3),
(231,3533,20.94,3109380,'2022-05-01 09:00:00',NULL,0,4,25,4),
(232,7114,27.71,6933250,'2022-05-01 09:00:00',NULL,0,2,36,1),
(233,9315,16.65,1161050,'2022-05-01 09:00:00',NULL,0,1,8,3),
(234,7772,41.94,2210370,'2022-05-01 09:00:00','2022-02-01 09:00:00',1,8,41,7),
(235,1340,42.56,247735,'2022-05-01 09:00:00',NULL,0,4,8,7),
(236,7143,27.63,9690490,'2022-05-01 09:00:00',NULL,0,1,23,7),
(237,5863,12.84,8846590,'2022-05-11 18:01:48','2022-02-01 09:00:00',1,5,30,7),
(238,9153,29.97,9885160,'2022-02-13 12:31:44',NULL,0,5,1,6),
(239,3876,9.1,9012180,'2022-05-01 09:00:00',NULL,0,1,19,6),
(240,4784,44.77,2617260,'2022-05-01 09:00:00','2022-02-01 09:00:00',1,3,40,7),
(241,2615,7.45,1752390,'2022-05-01 09:00:00','2022-02-01 09:00:00',1,6,8,4),
(242,8006,40.91,7473880,'2022-05-01 09:00:00',NULL,0,1,16,1),
(243,2845,47.64,9672150,'2022-01-30 01:19:00',NULL,0,1,20,3),
(244,5193,28.23,5525260,'2022-05-01 09:00:00',NULL,0,4,9,1),
(245,3907,45.73,9687880,'2022-03-05 21:11:00','2022-02-01 09:00:00',1,3,27,2),
(246,8965,19.65,8525100,'2022-05-01 09:00:00','2022-02-01 09:00:00',1,2,29,5),
(247,7506,28.72,6472270,'2022-05-01 09:00:00',NULL,0,1,1,3),
(248,5041,42.86,7976000,'2022-05-01 09:00:00','2022-02-01 09:00:00',1,1,23,3),
(249,6985,18.86,5559240,'2022-04-11 12:56:50','2022-02-01 09:00:00',1,10,28,5),
(250,2094,8.33,3633800,'2022-03-01 01:28:21','2022-02-01 09:00:00',1,7,40,4),
(251,7987,21.19,4237940,'2022-01-14 17:18:25','2022-02-01 09:00:00',1,7,18,5),
(252,4665,21.06,3880680,'2022-05-01 09:00:00','2022-02-01 09:00:00',1,1,20,7),
(253,4511,34.91,3937980,'2022-05-01 09:00:00',NULL,0,3,22,3),
(254,9816,11.62,6710820,'2022-01-09 05:59:58','2022-02-01 09:00:00',1,6,39,4),
(255,5050,21.45,6262570,'2022-05-01 09:00:00','2022-02-01 09:00:00',1,7,4,1),
(256,1065,43.16,3507090,'2022-05-01 09:00:00',NULL,0,9,12,5),
(257,8478,31.41,3179950,'2022-05-01 09:00:00','2022-02-01 09:00:00',1,6,17,5),
(258,2089,25.85,4701110,'2022-04-28 06:31:47',NULL,0,9,21,1),
(259,4544,21.2,2948100,'2022-05-01 09:00:00',NULL,0,2,17,5),
(260,3868,37.9,425432,'2022-05-01 09:00:00','2022-02-01 09:00:00',1,9,2,3),
(261,2259,49.59,1855720,'2022-05-01 09:00:00','2022-02-01 09:00:00',1,4,34,6),
(262,4016,4.86,6253560,'2022-02-24 00:29:18','2022-02-01 09:00:00',1,10,38,2),
(263,1735,9.74,2200470,'2022-05-01 09:00:00','2022-02-01 09:00:00',1,10,49,5),
(264,8301,21.65,2550000,'2022-05-01 09:00:00',NULL,0,3,25,3),
(265,5138,19.73,7647980,'2022-05-01 09:00:00','2022-02-01 09:00:00',1,9,6,4),
(266,9509,15.13,9542440,'2022-05-01 09:00:00',NULL,0,9,49,5),
(267,6979,40.2,2655070,'2022-05-01 09:00:00','2022-02-01 09:00:00',1,5,28,1),
(268,3703,33.26,4077820,'2022-05-01 09:00:00',NULL,0,2,22,3),
(269,9037,44.98,7238830,'2022-01-29 21:22:00',NULL,0,3,31,6),
(270,8757,1.57,8794440,'2022-05-17 14:01:05','2022-02-01 09:00:00',1,9,25,6),
(271,4551,9.52,5759990,'2022-05-01 09:00:00',NULL,0,3,43,4),
(272,6293,12.84,3636930,'2022-05-01 09:00:00',NULL,0,1,42,2),
(273,5123,30.43,4047840,'2022-01-24 02:48:29',NULL,0,3,40,2),
(274,3051,3.74,4560890,'2022-05-01 09:00:00','2022-02-01 09:00:00',1,9,5,5),
(275,8722,11.22,9303230,'2022-05-01 09:00:00',NULL,0,2,46,6),
(276,6765,33.88,5347020,'2022-05-01 09:00:00',NULL,0,7,40,6),
(277,5452,29.19,6428440,'2022-05-01 09:00:00','2022-02-01 09:00:00',1,4,14,3),
(278,8573,43.2,8855180,'2022-05-01 09:00:00','2022-02-01 09:00:00',1,4,21,6),
(279,8560,1.99,6020530,'2022-05-01 09:00:00','2022-05-01 09:00:00',1,8,31,3),
(280,8948,13.41,7304130,'2022-05-24 19:48:50',NULL,0,6,24,6),
(281,8900,11.93,9155240,'2022-05-01 09:00:00','2022-05-01 09:00:00',1,3,38,5),
(282,8513,39.58,3187990,'2022-05-15 15:18:36',NULL,0,8,40,4),
(283,7220,15.82,6650230,'2022-05-01 09:00:00',NULL,0,10,50,3),
(284,4538,12.11,1173910,'2022-05-05 00:08:25','2022-05-01 09:00:00',1,2,41,3),
(285,3829,19.44,5721860,'2022-05-01 09:00:00',NULL,0,8,50,2),
(286,5896,40.88,4497580,'2022-05-01 09:00:00','2022-05-01 09:00:00',1,6,31,1),
(287,9315,37.86,6384980,'2022-05-01 09:00:00',NULL,0,3,47,3),
(288,8338,37.2,4344480,'2022-01-16 19:22:15',NULL,0,6,13,6),
(289,1505,16.23,3460560,'2022-04-25 22:15:04','2022-05-01 09:00:00',1,4,50,3),
(290,2937,38.61,2797760,'2022-03-04 00:25:29',NULL,0,7,25,6),
(291,8856,48.05,797878,'2022-03-17 16:16:40','2022-05-01 09:00:00',1,5,40,5),
(292,1330,44.93,2293190,'2022-04-08 05:11:29','2022-05-01 09:00:00',1,2,28,3),
(293,2036,6.15,5249460,'2022-05-01 09:00:00',NULL,0,7,26,3),
(294,6336,24.01,6558590,'2022-05-01 09:00:00','2022-05-01 09:00:00',1,10,33,2),
(295,5774,36.88,7921910,'2022-05-01 09:00:00',NULL,0,4,23,2),
(296,6331,1.97,732639,'2022-05-01 09:00:00',NULL,0,7,50,6),
(297,3952,40.59,215716,'2022-05-01 09:00:00','2022-05-01 09:00:00',1,8,15,5),
(298,6783,8.29,6634640,'2022-03-27 00:56:01','2022-05-01 09:00:00',1,1,44,7),
(299,9822,40.53,6018300,'2022-05-01 09:00:00',NULL,0,8,9,7),
(300,3706,34.75,3639510,'2022-05-25 02:44:15',NULL,0,2,42,3),
(301,4611,16.77,8988710,'2022-05-01 09:00:00','2022-06-01 09:00:00',1,10,17,2),
(302,2273,6.71,891028,'2022-05-01 09:00:00',NULL,0,6,25,6),
(303,2274,25.24,8353320,'2022-05-01 09:00:00',NULL,0,10,9,2),
(304,5197,40.84,9266200,'2022-05-01 09:00:00',NULL,0,4,7,7),
(305,6938,2.84,1756290,'2022-05-01 09:00:00',NULL,0,6,25,3),
(306,9103,32.2,7789520,'2022-05-01 09:00:00',NULL,0,7,6,3),
(307,3275,0.46,4157650,'2022-05-01 09:00:00',NULL,0,5,41,5),
(308,8307,0.34,3242170,'2022-05-01 09:00:00','2022-10-01 09:00:00',1,2,44,4),
(309,1029,4.12,44159,'2022-05-01 09:00:00',NULL,0,1,33,5),
(310,4498,0.72,119722,'2022-05-01 09:00:00',NULL,0,10,41,4),
(311,4551,47.9,6674760,'2022-05-01 09:00:00','2022-10-01 09:00:00',1,5,41,6),
(312,9220,0.72,4632150,'2022-01-20 18:49:37','2022-10-01 09:00:00',1,7,20,3),
(313,4174,2.64,5840960,'2022-05-01 09:00:00','2022-10-01 09:00:00',1,5,18,4),
(314,7972,40.8,3462360,'2022-05-01 09:00:00',NULL,0,7,35,5),
(315,8128,41.6,4784530,'2022-05-01 09:00:00','2022-10-01 09:00:00',1,7,11,1),
(316,5757,16.48,2899100,'2022-04-22 19:59:21',NULL,0,10,44,2),
(317,4096,11.28,8493220,'2022-05-01 09:00:00','2022-06-01 09:00:00',1,4,17,1),
(318,4954,45.8,8372200,'2022-05-01 09:00:00',NULL,0,10,23,7),
(319,5972,8.05,894133,'2022-01-29 07:51:55',NULL,0,5,27,4),
(320,4513,3.42,6291550,'2022-05-01 09:00:00',NULL,0,2,26,3),
(321,7404,34.48,9029670,'2022-05-05 12:28:40','2022-06-01 09:00:00',1,7,47,2),
(322,5442,20.95,5379980,'2022-05-01 09:00:00',NULL,0,6,29,5),
(323,6793,17.03,655185,'2022-05-01 09:00:00','2022-06-01 09:00:00',1,9,49,7),
(324,3510,28.82,78373,'2022-05-01 09:00:00',NULL,0,4,33,5),
(325,9641,24.77,1196760,'2022-05-01 09:00:00',NULL,0,10,14,6),
(326,5590,44.52,1252350,'2022-04-14 04:03:11','2022-06-01 09:00:00',1,2,13,6),
(327,4749,24.67,7896440,'2022-05-01 09:00:00',NULL,0,4,30,1),
(328,9480,49.66,5071520,'2022-05-01 09:00:00',NULL,0,4,29,4),
(329,3451,44.2,6550280,'2022-05-01 09:00:00','2022-10-01 09:00:00',1,4,3,1),
(330,3807,41.79,3146950,'2022-05-01 09:00:00',NULL,0,9,12,4),
(331,5314,12.96,6625960,'2022-03-10 12:24:38',NULL,0,3,46,4),
(332,7349,16.65,8876120,'2022-05-01 09:00:00','2022-06-01 09:00:00',1,5,23,1),
(333,7782,5.52,4805250,'2022-04-05 07:49:15',NULL,0,1,16,1),
(334,7749,34.08,8650600,'2022-05-01 09:00:00',NULL,0,10,34,5),
(335,9366,48.29,3251910,'2022-05-01 09:00:00','2022-06-01 09:00:00',1,7,34,7),
(336,5017,24.74,2694330,'2022-05-12 00:37:40','2022-06-01 09:00:00',1,6,40,2),
(337,7154,4.6,5769470,'2022-05-01 09:00:00','2022-06-01 09:00:00',1,3,7,6),
(338,4395,12.61,1349330,'2022-01-04 12:29:39','2022-06-01 09:00:00',1,3,27,3),
(339,8592,28.36,1840810,'2022-05-01 09:00:00','2022-10-01 09:00:00',1,8,42,3),
(340,6736,4.74,5815730,'2022-05-01 09:00:00','2022-10-01 09:00:00',1,9,36,5),
(341,7452,39.13,9476020,'2022-05-14 02:44:55','2022-10-01 09:00:00',1,4,48,4),
(342,2862,11.86,5080800,'2022-02-24 07:36:57','2022-05-01 09:00:00',1,9,21,7),
(343,3485,39.27,8299750,'2022-05-01 09:00:00','2022-05-01 09:00:00',1,9,23,3),
(344,1227,10.34,2324580,'2022-03-31 13:45:05','2022-05-01 09:00:00',1,9,23,7),
(345,2784,24.71,818088,'2022-02-08 18:14:03','2022-05-01 09:00:00',1,6,5,5),
(346,6820,23.72,4535910,'2022-05-01 09:00:00','2022-05-01 09:00:00',1,5,30,4),
(347,1924,42.94,9867140,'2022-05-24 09:04:56',NULL,0,7,42,4),
(348,7805,26.82,7637170,'2022-05-01 09:00:00','2022-10-01 09:00:00',1,5,6,1),
(349,7971,15.84,1687570,'2022-02-24 09:08:14','2022-10-01 09:00:00',1,8,46,7),
(350,3085,6.16,9491090,'2022-05-01 09:00:00','2022-10-01 09:00:00',1,2,37,5),
(351,2000,25,130000,'2022-01-12 09:12:00','2022-10-01 09:00:00',1,3,5,2),
(352,20000,25,1300000,'2022-11-12 09:12:00','2022-10-01 09:00:00',1,4,6,1),
(353,20000,25.05,1300500,'2022-05-12 09:12:00','2022-10-01 09:00:00',1,4,6,1),
(354,82000,8.9,729800,'2022-06-07 11:24:54',NULL,0,2,1,10),
(355,501000,30.7,15380700,'2022-06-07 11:26:23',NULL,0,19,1,10),
(356,2000,9.8,19600,'2022-06-07 21:07:39',NULL,0,3,15,10),
(358,85000,90,7650000,'2022-06-10 09:00:06','2022-10-01 09:00:00',1,2,15,10),
(359,2500,100.8,252000,'2022-06-10 09:07:06','2022-10-01 09:00:00',1,15,1,10),
(360,85000,500,42500000,'2022-06-10 21:39:34','2022-06-10 08:00:00',1,2,2,10);
/*!40000 ALTER TABLE `penjualan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `proses_edukasi`
--

DROP TABLE IF EXISTS `proses_edukasi`;
/*!50001 DROP VIEW IF EXISTS `proses_edukasi`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `proses_edukasi` (
  `id_edu` tinyint NOT NULL,
  `tempat` tinyint NOT NULL,
  `mulai` tinyint NOT NULL,
  `selesai` tinyint NOT NULL,
  `ket` tinyint NOT NULL,
  `pembicara` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `rekening`
--

DROP TABLE IF EXISTS `rekening`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rekening` (
  `id_rek` int(11) NOT NULL AUTO_INCREMENT,
  `bank` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `atas_nama` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_rek` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_mitra` int(11) NOT NULL,
  PRIMARY KEY (`id_rek`),
  KEY `id_mitra` (`id_mitra`),
  CONSTRAINT `rekening_ibfk_1` FOREIGN KEY (`id_mitra`) REFERENCES `mitra` (`id_mitra`)
) ENGINE=InnoDB AUTO_INCREMENT=365 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rekening`
--

LOCK TABLES `rekening` WRITE;
/*!40000 ALTER TABLE `rekening` DISABLE KEYS */;
INSERT INTO `rekening` VALUES
(1,' MANDIRI','jordyn08','57790447316235',1),
(2,' BSI','hagenes.ephraim','25233219646745',2),
(3,' MANDIRI','iemmerich','95824224957161',3),
(4,'BCA','gvolkman','75675837364461',4),
(5,'BCA','jacobi.reina','48203797100318',5),
(6,' BRI','jeanne.schuppe','55666631460189',6),
(7,'BCA','irosenbaum','65471503883600',7),
(8,' BRI','gilda.o\'hara','83615828429659',8),
(9,' BSI','tiffany78','60860895572437',9),
(10,' MANDIRI','aryanna33','13264253983894',10),
(11,' MANDIRI','mckenzie.turcotte','47657465106911',11),
(12,'BCA','dcasper','11715045488542',12),
(13,' BRI','o\'keefe.allen','96474848894609',13),
(14,' MANDIRI','chandler03','43089872764216',14),
(15,'BCA','maryse.jast','94797804496354',15),
(16,'BCA','triston.macejkovic','17137359620796',16),
(17,' BNI','vmcglynn','46659604253040',17),
(18,' BSI','gchristiansen','32389959775739',18),
(19,'BCA','blaze34','51627749411596',19),
(20,' MANDIRI','frankie.daugherty','75653593863050',20),
(21,' BRI','reagan23','97689999598595',21),
(22,' MANDIRI','o\'conner.haleigh','28261679990423',22),
(23,' BRI','shania.schuppe','56212793000870',23),
(24,'BCA','hoeger.cathrine','88432736156715',24),
(25,' BSI','chauncey.rempel','96381564314166',25),
(26,' BNI','nitzsche.morris','23403862946563',26),
(27,' BSI','runolfsdottir.trent','11393601778480',27),
(28,' BSI','fay.xzavier','46369202724761',28),
(29,' BRI','maribel26','90842475659317',29),
(30,' MANDIRI','lind.shaina','80963066551420',30),
(31,'BCA','senger.vincenza','50962532642814',31),
(32,' BSI','jakubowski.chauncey','25561862770053',32),
(33,' BNI','wleannon','48677195650007',33),
(34,' BSI','carter.sandrine','58350494545366',34),
(35,' MANDIRI','eldon40','27020685250560',35),
(36,'BCA','drew26','29753416238559',36),
(37,' MANDIRI','johnson65','46808810366524',37),
(38,' BSI','bstoltenberg','81086932081315',38),
(39,' BNI','jan.tremblay','66451401470435',39),
(40,' BSI','ostiedemann','97045541223552',40),
(41,' BSI','erick23','43364437793691',41),
(42,'BCA','littel.loraine','95085610863235',42),
(43,'BCA','hoppe.kevin','66135354753997',43),
(44,' BNI','jamie.parisian','63623497303989',44),
(45,' BRI','hroob','56189391306704',45),
(46,' BNI','bkeeling','76726185737384',46),
(47,' MANDIRI','marcelina60','34283485760291',47),
(48,' BNI','lurline77','64188356904519',48),
(49,' BRI','ullrich.macy','62071802922420',49),
(50,' BNI','hmayer','41385592354668',50),
(51,' MANDIRI','leta35','74447702285316',51),
(52,'BCA','keagan38','45768251849545',52),
(53,'BCA','nelson77','83215282733241',53),
(54,'BCA','aileen.turcotte','97219033497903',54),
(55,'BCA','wrath','58716646540496',55),
(56,' MANDIRI','abe.conn','18460379789272',56),
(57,'BCA','bahringer.susana','19589163031842',57),
(58,' MANDIRI','ebert.emmie','38730505481362',58),
(59,' BNI','ovandervort','90432159975171',59),
(60,' BSI','bode.dillon','56419856763548',60),
(61,' MANDIRI','ana.schroeder','46496052460537',61),
(62,' BSI','lowell63','65210565262370',62),
(63,' BSI','kacie42','45899116206500',63),
(64,' BNI','qbahringer','84805322852399',64),
(65,' BRI','gschimmel','76969767030742',65),
(66,' BRI','muller.elvie','90297320071193',66),
(67,' BNI','wernser','51824602029389',67),
(68,' BSI','colt.gleason','61922245803806',68),
(69,' BSI','zack33','73246331099006',69),
(70,' BRI','jcruickshank','93882984088526',70),
(71,'BCA','o\'kon.naomie','36613978569706',71),
(72,' MANDIRI','cmcdermott','38949015032913',72),
(73,' BNI','thiel.herbert','11353946766919',73),
(74,'BCA','nikko.zulauf','72807277987400',74),
(75,' BSI','vonrueden.lane','82998196242584',75),
(76,' MANDIRI','blick.ariane','26371279317471',76),
(77,' BNI','west.ollie','76120307710435',77),
(78,' BRI','ogleichner','75125733390450',78),
(79,' BNI','louvenia46','86889264691207',79),
(80,' BNI','patience.waters','98530846792790',80),
(81,' BRI','halie82','38277749800019',81),
(82,' MANDIRI','jacobson.jedidiah','63529406239589',82),
(83,' BRI','iheller','50791421284278',83),
(84,' MANDIRI','schroeder.jamison','61320627149608',84),
(85,' BNI','schroeder.hattie','85268312278721',85),
(86,' BNI','davion.champlin','31472911892665',86),
(87,' BNI','shea.weber','11956709623336',87),
(88,'BCA','cmarks','94434671269522',88),
(89,' BNI','ukovacek','97834745628966',89),
(90,' BRI','gerda08','52381278698642',90),
(91,' MANDIRI','shudson','98620319076710',91),
(92,' BSI','noel.gottlieb','93224881879157',92),
(93,' BRI','leola.ortiz','75626210288868',93),
(94,' MANDIRI','hansen.junius','30282980824510',94),
(95,' BSI','collins.conner','52939021835724',95),
(96,'BCA','fsteuber','29386656772759',96),
(97,' BRI','ullrich.wallace','40925221393505',97),
(98,'BCA','justina88','59487598679131',98),
(99,'BCA','lauryn.haag','18652584983242',99),
(100,' BRI','rowland.pacocha','88186924821800',100),
(101,' MANDIRI','sister60','61037953032387',101),
(102,'BCA','rosamond38','91946884989738',102),
(103,' MANDIRI','dnolan','39062097378902',103),
(104,' BRI','faustino.kautzer','52938736809624',104),
(105,' BNI','nhand','61524017113778',105),
(106,' MANDIRI','brisa92','93124102428555',106),
(107,' MANDIRI','kohler.avis','16817031428217',107),
(108,' MANDIRI','tianna26','18142677760786',108),
(109,'BCA','walsh.ephraim','55969890579581',109),
(110,' BRI','mona71','58697511048780',110),
(111,'BCA','rowan.mills','75763300516539',111),
(112,' MANDIRI','willy.mann','28599851371513',112),
(113,' BRI','crooks.clare','73137870099809',113),
(114,' BNI','bahringer.davonte','49166864115330',114),
(115,' BNI','jlockman','91976229101419',115),
(116,' BRI','octavia.ward','75492335110902',116),
(117,' MANDIRI','waino61','46342123962110',117),
(118,'BCA','nader.kiley','14507891072167',118),
(119,' BRI','nkovacek','77987718251016',119),
(120,' MANDIRI','ankunding.autumn','63831306538648',120),
(121,' BRI','qschuster','36752267926931',121),
(122,' BSI','pouros.gerry','33648981278141',122),
(123,' MANDIRI','rosenbaum.brooks','77812680602073',123),
(124,' BNI','bhuels','12598778886927',124),
(125,' BRI','kutch.idella','23377370420429',125),
(126,'BCA','nicolas.kailyn','29557803438769',126),
(127,' BNI','gottlieb.clifford','46364883581797',127),
(128,' BNI','francisco.keebler','84536400644315',128),
(129,'BCA','claude.bartell','88631286430690',129),
(130,' BRI','ophelia.willms','55233430324329',130),
(131,' BSI','emmanuelle.waelchi','91235095096959',131),
(132,'BCA','jgreen','48487240407201',132),
(133,' BSI','tanner14','49146899167034',133),
(134,' BNI','imogene81','86043373867869',134),
(135,'BCA','claudia.rodriguez','99468187905020',135),
(136,' BSI','barrows.jerome','62847411549753',136),
(137,' BNI','heaney.jazlyn','52078154269191',137),
(138,'BCA','egislason','32615383010771',138),
(139,'BCA','benedict94','54123063054349',139),
(140,'BCA','douglas.fannie','85997049469086',140),
(141,' BNI','jnikolaus','40886567284663',141),
(142,' BRI','clair.labadie','88782307919528',142),
(143,' MANDIRI','hilario.schamberger','66721539033783',143),
(144,' MANDIRI','gordon.lehner','15038928472333',144),
(145,' BRI','humberto.zulauf','94916736334562',145),
(146,' MANDIRI','nels52','89653321107228',146),
(147,'BCA','verdie15','21222691403494',147),
(148,' BNI','justus10','56525240590174',148),
(149,'BCA','russ59','30225906189944',149),
(150,' BSI','osinski.loyce','89934289827942',150),
(151,' BRI','rbartoletti','77160830588804',151),
(152,' BNI','jacobi.phoebe','20745945804648',152),
(153,' BNI','mcglynn.bessie','23757345353563',153),
(154,' BRI','luciano83','17115722886390',154),
(155,'BCA','hartmann.boris','51304357623060',155),
(156,' BSI','cordie59','95175438208712',156),
(157,'BCA','jaida99','26316657579607',157),
(158,' MANDIRI','po\'keefe','60384421216116',158),
(159,' BSI','cristina46','54377977343069',159),
(160,' BNI','bennie74','85448536980483',160),
(161,' BRI','prosacco.callie','73493989184498',161),
(162,' MANDIRI','bkrajcik','53376486483547',162),
(163,' BRI','modesta74','31596153312259',163),
(164,' MANDIRI','dkonopelski','63535928891764',164),
(165,' BSI','zwalker','87465184471673',165),
(166,'BCA','eda.kemmer','31367106032040',166),
(167,'BCA','wtremblay','76794916929470',167),
(168,'BCA','ezekiel54','31925036302871',168),
(169,' MANDIRI','buckridge.katarina','71280587092041',169),
(170,' MANDIRI','o\'connell.phoebe','37746312676204',170),
(171,'BCA','imcglynn','55862462479207',171),
(172,' BSI','bartell.sibyl','12531971765888',172),
(173,'BCA','hand.eric','17582750899924',173),
(174,'BCA','mcclure.lucius','51606554413835',174),
(175,'BCA','virgil91','37390140071511',175),
(176,'BCA','xsporer','44613404240873',176),
(177,' BSI','icassin','38824975531962',177),
(178,' BNI','tlehner','33620020043518',178),
(179,' MANDIRI','hipolito.kovacek','25739553736315',179),
(180,' BNI','xstoltenberg','75557509064674',180),
(181,' BSI','orion34','40929093708594',181),
(182,' BSI','bsenger','12552432053618',182),
(183,' BNI','monserrate43','85344260517093',183),
(184,' MANDIRI','armstrong.zelda','36346562662058',184),
(185,' BNI','rolfson.georgianna','19138488090700',185),
(186,'BCA','ernser.leland','79206849137941',186),
(187,' BRI','toby38','30341253388259',187),
(188,' BNI','harold62','49909503799345',188),
(189,'BCA','nikko36','32522181462910',189),
(190,' BRI','keira34','40990903394089',190),
(191,' BNI','alice.heaney','81936375010344',191),
(192,'BCA','triston.brown','46465725244747',192),
(193,' BSI','raynor.augustine','77305122050974',193),
(194,'BCA','dach.sheldon','89942308929231',194),
(195,' MANDIRI','tracy.jacobi','55895854698287',195),
(196,' BSI','nnader','36283699630035',196),
(197,'BCA','weissnat.deron','98248062779506',197),
(198,' BNI','scottie28','39058944914075',198),
(199,' BRI','laila.hegmann','15967387250727',199),
(200,' BSI','lweimann','68949090068538',200),
(201,' BRI','wunsch.jacques','32874041423201',201),
(202,' BSI','leannon.dave','97172068100836',202),
(203,'BCA','lynch.justus','12273506075143',203),
(204,' MANDIRI','alivia10','16719904707537',204),
(205,' BRI','katheryn54','25145799459682',205),
(206,'BCA','annie.gottlieb','98616433267792',206),
(207,' BNI','blanca.russel','99074770758549',207),
(208,' BSI','qo\'kon','57367029082443',208),
(209,'BCA','williamson.ava','47525167051288',209),
(210,' BRI','otha.flatley','69481446345647',210),
(211,'BCA','ejakubowski','31613985987173',211),
(212,' BNI','arthur70','31308611523773',212),
(213,' BSI','quinten47','30866577393478',213),
(214,'BCA','kprice','79303971760802',214),
(215,' BSI','kkling','43860644764370',215),
(216,' MANDIRI','donna70','82506503081983',216),
(217,'BCA','elton99','42014446606238',217),
(218,' BRI','ronny.dach','30279625083009',218),
(219,' BRI','princess49','65761570922202',219),
(220,' MANDIRI','mohr.tiara','89211319469743',220),
(221,'BCA','mitchell86','92510511519180',221),
(222,' BNI','ransom24','53759758753908',222),
(223,' BNI','vhilpert','50359926786687',223),
(224,'BCA','vida63','71283558176623',224),
(225,' BNI','ilang','60714655907617',225),
(226,'BCA','rubie.ryan','53433447662326',226),
(227,'BCA','osvaldo88','51202521804306',227),
(228,'BCA','robel.morris','25729628321197',228),
(229,' MANDIRI','germaine47','55908565181824',229),
(230,' BSI','yost.kaci','64339689579274',230),
(231,' BRI','lisa.hand','97160448672042',231),
(232,' MANDIRI','kub.virgil','42537374587522',232),
(233,' BNI','loraine22','19390936899516',233),
(234,'BCA','kristian94','67500139897068',234),
(235,' BSI','abshire.kaylah','83933989620871',235),
(236,' BSI','dubuque.jerrod','33211725950241',236),
(237,'BCA','fisher.vicenta','60182184394862',237),
(238,' MANDIRI','damion77','44393091110719',238),
(239,'BCA','schimmel.donato','17618920240137',239),
(240,' BSI','jacobs.verna','51926827596293',240),
(241,' MANDIRI','hbosco','94328122792972',241),
(242,' MANDIRI','cgislason','64588282464279',242),
(243,'BCA','lbeer','88105024604333',243),
(244,' MANDIRI','celestino53','99860387212700',244),
(245,' BSI','brandon60','61325343408518',245),
(246,' BNI','oschneider','57706953254010',246),
(247,' BRI','baumbach.quinton','18298640681637',247),
(248,'BCA','hrath','20289980040656',248),
(249,' BNI','torp.leo','35204587007562',249),
(250,' MANDIRI','mhyatt','28284727450874',250),
(251,' MANDIRI','erich42','35904564335942',251),
(252,' BRI','woodrow.labadie','92580598799718',252),
(253,'BCA','macie.heathcote','43337508084045',253),
(254,'BCA','rhiannon71','22333799964851',254),
(255,' BSI','beverly.leffler','40743682326541',255),
(256,' BNI','brandt.gerlach','81905216682288',256),
(257,' BSI','funk.lucio','67328011078966',257),
(258,' BRI','ystroman','57644307944509',258),
(259,'BCA','justen21','73035195511248',259),
(260,' MANDIRI','valentine64','77635315640105',260),
(261,' BRI','hickle.clay','44370923398269',261),
(262,' BRI','dorothy86','77712039608094',262),
(263,' BRI','gmonahan','14706762714518',263),
(264,' BNI','janae57','36223812318510',264),
(265,' BRI','jamil67','50251789266864',265),
(266,' BSI','burnice26','92081344789928',266),
(267,' BRI','jacky.hermiston','36073996995886',267),
(268,'BCA','oral.lemke','88204059956802',268),
(269,' BSI','kayley.rippin','56227360748582',269),
(270,' BNI','murray.lura','31142554142408',270),
(271,' BRI','dedrick.kuhic','81916691031720',271),
(272,' MANDIRI','fiona63','33871380943390',272),
(273,' BNI','marcelo.bruen','34201616545518',273),
(274,' MANDIRI','marion40','99409779947665',274),
(275,' MANDIRI','xcarter','12605871053205',275),
(276,'BCA','mikel.braun','58758858260181',276),
(277,' BRI','aurelie.bauch','90989700125323',277),
(278,' MANDIRI','ubashirian','41422196436259',278),
(279,' BNI','smccullough','13728405204084',279),
(280,' MANDIRI','sylvia59','21804550290107',280),
(281,' BNI','clotilde43','87322282211648',281),
(282,' MANDIRI','tania.mclaughlin','41482118889689',282),
(283,' MANDIRI','foster.glover','32909749282730',283),
(284,'BCA','marks.edwin','63378756120800',284),
(285,' BRI','prohaska.kali','52442712709307',285),
(286,' BSI','collins.ava','87460305914282',286),
(287,' BRI','anderson.trudie','77742744319968',287),
(288,' BNI','emuller','85379286193185',288),
(289,' MANDIRI','cielo17','27254166909389',289),
(290,' MANDIRI','iwintheiser','31992928104268',290),
(291,' BRI','julian.hickle','74625502278407',291),
(292,'BCA','dicki.gordon','93700883206393',292),
(293,' BSI','ualtenwerth','83830563020375',293),
(294,' BSI','savanna11','34326156187388',294),
(295,' MANDIRI','walton09','91694043080012',295),
(296,'BCA','vmayert','69477648081050',296),
(297,' BNI','lemke.nina','61652520050605',297),
(298,'BCA','albina.block','31239569021595',298),
(299,' MANDIRI','oberbrunner.lee','13322940717140',299),
(300,' MANDIRI','wilkinson.trevor','36809251747197',300),
(301,' MANDIRI','rosemary.boehm','38987522489494',301),
(302,' BNI','hauck.elinor','76098053488466',302),
(303,' MANDIRI','hbailey','11786062518755',303),
(304,' BNI','aurelia.heller','35506338336401',304),
(305,' MANDIRI','hans04','53770169822706',305),
(306,' BSI','gulgowski.penelope','96382013335824',306),
(307,' BNI','iframi','80292046608196',307),
(308,' MANDIRI','paucek.hailie','38184235824478',308),
(309,' BRI','conn.arnoldo','88885735430651',309),
(310,' BSI','jacques08','55756616633799',310),
(311,' MANDIRI','ewell88','66720292137728',311),
(312,' BRI','gaylord.spencer','74009869206282',312),
(313,' BSI','gnader','72025266455279',313),
(314,' BSI','bradtke.anjali','41756612434983',314),
(315,' MANDIRI','alessandra.hoeger','62982554319832',315),
(316,' MANDIRI','billie.paucek','80187737983134',316),
(317,' BRI','lance.streich','26747762577401',317),
(318,' BNI','mitchell.reilly','44608878841002',318),
(319,'BCA','marjorie58','45040530587236',319),
(320,' MANDIRI','hilll.kiara','49995783964792',320),
(321,' BNI','mcasper','78105102438065',321),
(322,' BRI','alysson29','86910339527659',322),
(323,'BCA','jveum','32047772904237',323),
(324,'BCA','runolfsdottir.susana','51427538734343',324),
(325,' BRI','wschiller','78130051824781',325),
(326,' BNI','trantow.ollie','17982300950421',326),
(327,' MANDIRI','io\'reilly','39395428821444',327),
(328,' BSI','annabel.jakubowski','75839377360211',328),
(329,' MANDIRI','vernie88','54273157111472',329),
(330,' BNI','lennie89','35560691563619',330),
(331,'BCA','destinee39','55335916247632',331),
(332,' BRI','jeramie29','43485157688458',332),
(333,' BSI','qschulist','47881657174891',333),
(334,' BNI','ignatius79','23629069038563',334),
(335,' BSI','mccullough.lenora','80722546784414',335),
(336,' BRI','sheridan.zboncak','79568674291173',336),
(337,' BSI','odie32','28140594520502',337),
(338,' BNI','cpagac','48138826547397',338),
(339,'BCA','corbin90','42236333133445',339),
(340,' MANDIRI','pleannon','62387564571367',340),
(341,'BCA','alisha.bartell','45047839937938',341),
(342,' BSI','adolph.moore','41657397647698',342),
(343,' BSI','hroberts','48572645253605',343),
(344,' MANDIRI','chadd46','70149806597166',344),
(345,' MANDIRI','bertrand44','77125360526972',345),
(346,' BNI','price36','66530487851964',346),
(347,' MANDIRI','rosenbaum.noel','29252363948358',347),
(348,' MANDIRI','kailyn.beer','77251273890336',348),
(349,' BSI','glehner','48457981439100',349),
(350,'BCA','lschuster','34102982737951',350),
(351,'JAGO','Jajal Meneh','8729436273812',356),
(352,'BCA','mitra-bsu','1234567',357),
(355,NULL,'tes-nsb',NULL,360),
(363,'JAGO','tes_bsu','77449900',368),
(364,NULL,'malika',NULL,369);
/*!40000 ALTER TABLE `rekening` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES
(1,'Sekretaris'),
(2,'Ketua'),
(3,'Driver'),
(4,'Bendahara');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sampah`
--

DROP TABLE IF EXISTS `sampah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sampah` (
  `id_sampah` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(5) NOT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_jenis` int(11) NOT NULL,
  PRIMARY KEY (`id_sampah`),
  KEY `id_jenis` (`id_jenis`),
  CONSTRAINT `sampah_ibfk_1` FOREIGN KEY (`id_jenis`) REFERENCES `jenis` (`id_jenis`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sampah`
--

LOCK TABLES `sampah` WRITE;
/*!40000 ALTER TABLE `sampah` DISABLE KEYS */;
INSERT INTO `sampah` VALUES
(1,'Sampah-A',3833,'1.png',1),
(2,'Botol bekas air mineral',80000,'2.png',2),
(3,'Kertas potongan',1200,'3.png',3),
(4,' Sampah-B',5593,'4.jpeg',4),
(5,'Sampah-A',1565,'5.png',5),
(6,' Sampah-D',4767,NULL,1),
(7,' Sampah-D',5568,NULL,2),
(8,' Sampah-D',3666,NULL,3),
(9,' Sampah-D',4687,NULL,4),
(10,' Sampah-D',5767,NULL,5),
(14,'Botol Sirup',12,'',1),
(15,'Koran bekas',1500,'',3),
(16,'Buku bekas',2000,'',3),
(17,'Masyarakat',230,'',4),
(18,'Cermin Ajaib',123,NULL,1),
(19,'Motor Bekas',1000,NULL,4),
(20,'akat suki',130,'20.jpeg',4),
(21,'Suket teki',978,'21.png',1),
(22,'pesawat bekas',9000,NULL,4),
(23,'Sampah-A',3833,NULL,5);
/*!40000 ALTER TABLE `sampah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setoran`
--

DROP TABLE IF EXISTS `setoran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setoran` (
  `id_setor` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` datetime NOT NULL,
  `berat` float NOT NULL,
  `subtotal` float NOT NULL,
  `status` enum('Penjemputan','Pembayaran','Selesai') COLLATE utf8mb4_unicode_ci NOT NULL,
  `jadwal_jemput` datetime NOT NULL,
  `id_sampah` int(11) NOT NULL,
  `id_mitra` int(11) NOT NULL,
  PRIMARY KEY (`id_setor`),
  KEY `id_sampah` (`id_sampah`),
  KEY `id_mitra` (`id_mitra`),
  CONSTRAINT `setoran_ibfk_1` FOREIGN KEY (`id_sampah`) REFERENCES `sampah` (`id_sampah`),
  CONSTRAINT `setoran_ibfk_2` FOREIGN KEY (`id_mitra`) REFERENCES `mitra` (`id_mitra`)
) ENGINE=InnoDB AUTO_INCREMENT=513 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setoran`
--

LOCK TABLES `setoran` WRITE;
/*!40000 ALTER TABLE `setoran` DISABLE KEYS */;
INSERT INTO `setoran` VALUES
(1,'2022-01-11 20:21:02',17.46,789318,'Penjemputan','2022-06-15 07:25:10',8,112),
(2,'2021-12-13 02:10:12',41.94,4356130,'Penjemputan','2022-06-15 07:25:10',2,6),
(3,'2021-11-29 03:29:13',47.29,4431720,'Selesai','2022-06-15 07:25:10',9,327),
(4,'2022-01-12 11:26:23',20.77,4687120,'Penjemputan','2022-06-15 07:25:10',8,161),
(5,'2021-05-31 13:51:43',33.87,3183160,'Pembayaran','2022-06-15 07:25:10',7,110),
(6,'2022-01-29 10:45:19',37.13,5316840,'Pembayaran','2022-06-15 07:25:10',6,69),
(7,'2022-01-16 22:36:58',14.29,9319750,'Penjemputan','2022-06-15 07:25:10',1,267),
(8,'2022-01-26 09:15:55',37.08,6094900,'Selesai','2022-06-15 07:25:10',5,6),
(9,'2022-03-16 02:35:17',36.8,9960130,'Penjemputan','2022-06-15 07:25:10',10,98),
(10,'2022-03-25 07:28:59',42.95,4326090,'Penjemputan','0000-00-00 00:00:00',3,226),
(11,'2022-03-23 03:12:54',33.68,3972020,'Pembayaran','0000-00-00 00:00:00',1,266),
(12,'2022-01-01 03:05:21',46.31,9822580,'Pembayaran','0000-00-00 00:00:00',7,63),
(13,'2021-09-04 17:17:49',10.48,8144020,'Penjemputan','0000-00-00 00:00:00',3,14),
(14,'2021-09-01 07:15:27',31.5,2901780,'Penjemputan','0000-00-00 00:00:00',4,284),
(15,'2022-04-11 21:26:26',9.45,5363050,'Selesai','2022-06-14 08:35:25',2,172),
(16,'2022-01-17 00:10:33',46.01,8548210,'Penjemputan','0000-00-00 00:00:00',5,335),
(17,'2021-07-14 18:34:27',37.98,8045680,'Penjemputan','0000-00-00 00:00:00',9,238),
(18,'2021-09-16 19:55:46',7.16,3827930,'Penjemputan','0000-00-00 00:00:00',10,235),
(19,'2021-06-12 14:23:43',19.26,7283460,'Penjemputan','0000-00-00 00:00:00',7,268),
(20,'2022-01-06 03:56:19',37.54,2346710,'Selesai','2022-05-17 08:35:49',2,104),
(21,'2021-10-25 20:49:10',15.81,9936820,'Penjemputan','0000-00-00 00:00:00',1,244),
(22,'2021-10-14 00:07:37',45.69,2331900,'Penjemputan','0000-00-00 00:00:00',5,59),
(23,'2022-05-19 02:50:05',4.93,5306890,'Selesai','2022-07-19 08:35:45',5,325),
(24,'2021-06-20 06:28:09',1.02,9592170,'Pembayaran','0000-00-00 00:00:00',2,135),
(25,'2022-04-14 07:20:08',23.33,5597890,'Penjemputan','0000-00-00 00:00:00',3,170),
(26,'2022-01-05 18:02:19',20.3,2559790,'Penjemputan','0000-00-00 00:00:00',1,91),
(27,'2021-09-09 09:11:31',48.73,7311100,'Penjemputan','0000-00-00 00:00:00',3,242),
(28,'2021-12-27 14:42:22',15.38,3123890,'Pembayaran','2022-09-14 09:58:58',5,177),
(29,'2021-12-05 03:30:43',19.4,979616,'Penjemputan','0000-00-00 00:00:00',8,282),
(30,'2022-02-20 12:55:14',8.73,1694880,'Selesai','2022-03-13 09:45:49',4,312),
(31,'2021-10-08 14:42:43',39.59,6338640,'Selesai','2022-09-08 09:45:54',3,280),
(32,'2021-09-01 13:49:20',47.74,974468,'Selesai','2022-05-24 08:35:59',9,38),
(33,'2021-10-03 00:10:49',0.98,1372120,'Penjemputan','0000-00-00 00:00:00',5,286),
(34,'2021-07-03 23:31:25',31.07,5352100,'Pembayaran','0000-00-00 00:00:00',8,32),
(35,'2021-07-04 16:06:05',2.34,4067930,'Penjemputan','0000-00-00 00:00:00',6,317),
(36,'2021-12-19 21:02:54',12.31,6568560,'Pembayaran','0000-00-00 00:00:00',4,231),
(37,'2021-08-07 02:33:31',39.94,7174820,'Penjemputan','0000-00-00 00:00:00',7,308),
(38,'2021-09-08 14:56:35',25.85,987641,'Pembayaran','0000-00-00 00:00:00',9,21),
(39,'2022-03-14 20:01:57',48.2,3733380,'Penjemputan','0000-00-00 00:00:00',9,5),
(40,'2021-12-07 09:37:11',19.71,5762710,'Penjemputan','0000-00-00 00:00:00',5,6),
(41,'2021-08-27 08:47:50',46.61,5097260,'Pembayaran','0000-00-00 00:00:00',5,164),
(42,'2022-01-13 20:10:06',35.33,2787160,'Pembayaran','0000-00-00 00:00:00',3,259),
(43,'2021-12-08 12:22:07',30.29,5488650,'Penjemputan','0000-00-00 00:00:00',2,248),
(44,'2022-03-28 11:55:06',33.21,1844240,'Penjemputan','0000-00-00 00:00:00',3,311),
(45,'2021-10-11 19:52:08',13.51,4894940,'Selesai','2022-05-23 08:35:54',6,195),
(46,'2022-05-19 12:16:40',48.58,5292320,'Selesai','2022-06-14 08:35:39',8,284),
(47,'2021-08-15 09:38:22',1.76,2012470,'Selesai','2022-08-18 09:46:06',4,218),
(48,'2021-09-13 15:26:25',0.82,3034310,'Pembayaran','0000-00-00 00:00:00',10,292),
(49,'2022-02-15 09:09:16',37.67,404908,'Penjemputan','0000-00-00 00:00:00',5,242),
(50,'2021-08-23 23:56:23',18.27,7547310,'Pembayaran','0000-00-00 00:00:00',10,8),
(51,'2022-02-16 12:24:11',17.58,1976720,'Penjemputan','0000-00-00 00:00:00',6,109),
(52,'2021-12-14 09:12:45',5.72,9930870,'Selesai','2022-09-19 09:46:30',7,69),
(53,'2021-10-09 06:59:21',17.75,7560160,'Pembayaran','0000-00-00 00:00:00',2,178),
(54,'2021-07-20 19:18:11',39.35,5379540,'Penjemputan','0000-00-00 00:00:00',3,349),
(55,'2021-06-05 15:16:08',47.11,5756610,'Penjemputan','0000-00-00 00:00:00',6,243),
(56,'2021-10-30 04:41:05',42.07,1891040,'Penjemputan','0000-00-00 00:00:00',1,5),
(57,'2021-10-14 19:37:39',4.69,5993940,'Penjemputan','0000-00-00 00:00:00',2,99),
(58,'2021-10-16 21:00:27',9.1,9187040,'Selesai','2022-06-13 09:45:42',8,112),
(59,'2021-06-16 11:35:34',13.94,8550940,'Penjemputan','0000-00-00 00:00:00',10,348),
(60,'2021-12-09 05:11:18',17.05,297739,'Pembayaran','0000-00-00 00:00:00',3,176),
(61,'2021-07-08 06:49:56',22.21,1174280,'Pembayaran','0000-00-00 00:00:00',6,344),
(62,'2021-06-26 09:58:36',46.09,7010760,'Pembayaran','0000-00-00 00:00:00',4,316),
(63,'2022-02-10 06:47:46',23.13,9747020,'Penjemputan','0000-00-00 00:00:00',7,79),
(64,'2021-08-27 08:05:12',7.01,2832620,'Selesai','2022-09-20 09:46:11',8,15),
(65,'2021-11-17 04:52:54',40.56,8944640,'Selesai','2022-06-10 08:35:18',10,230),
(66,'2022-04-13 13:58:51',35.93,5926250,'Penjemputan','0000-00-00 00:00:00',1,179),
(67,'2021-08-09 15:10:44',46.4,7873800,'Selesai','2022-06-15 08:35:32',10,260),
(68,'2022-01-23 11:20:38',46.93,8808720,'Selesai','2022-09-19 09:46:16',8,54),
(69,'2021-11-17 04:00:53',47.03,4437780,'Pembayaran','0000-00-00 00:00:00',3,336),
(70,'2022-01-14 19:14:55',15.47,3740510,'Pembayaran','0000-00-00 00:00:00',2,269),
(71,'2022-04-26 03:11:12',3.28,6482240,'Pembayaran','0000-00-00 00:00:00',7,56),
(72,'2021-09-23 09:06:15',31.3,5405850,'Selesai','2022-05-17 08:35:28',8,285),
(73,'2021-11-11 00:41:33',19.6,6966810,'Pembayaran','0000-00-00 00:00:00',5,186),
(74,'2022-01-24 01:39:35',46.13,5025200,'Pembayaran','0000-00-00 00:00:00',2,151),
(75,'2022-01-14 14:24:56',49.88,665182,'Pembayaran','0000-00-00 00:00:00',6,118),
(76,'2021-11-28 15:58:51',46.14,5221320,'Penjemputan','0000-00-00 00:00:00',10,25),
(77,'2021-12-09 21:36:30',5.16,2114250,'Selesai','2022-08-10 09:46:00',4,86),
(78,'2022-04-23 01:11:34',44.58,1426480,'Selesai','2022-06-14 08:35:36',10,322),
(79,'2021-09-14 08:56:43',49.68,7909740,'Penjemputan','0000-00-00 00:00:00',5,247),
(80,'2021-06-18 09:29:47',18.08,4482120,'Selesai','2022-09-13 09:46:22',10,136),
(81,'2021-12-27 23:31:55',42.68,7512340,'Selesai','2022-04-04 09:45:45',4,9),
(82,'2021-11-14 22:15:46',19.23,3497000,'Pembayaran','0000-00-00 00:00:00',9,115),
(83,'2021-12-29 18:22:28',19.91,4969820,'Penjemputan','0000-00-00 00:00:00',8,212),
(84,'2021-08-01 10:16:25',10.46,4546830,'Selesai','2022-06-08 08:35:42',5,5),
(85,'2021-07-10 23:03:00',30.59,181631,'Pembayaran','0000-00-00 00:00:00',6,221),
(86,'2021-08-23 12:02:27',32.89,2990300,'Selesai','2022-09-06 09:46:26',8,76),
(87,'2022-04-03 08:26:05',29.67,3940460,'Selesai','2022-08-02 09:45:36',8,196),
(88,'2021-08-31 11:17:26',9.34,4455500,'Pembayaran','0000-00-00 00:00:00',1,81),
(89,'2021-08-01 06:55:35',0.57,4324980,'Penjemputan','0000-00-00 00:00:00',1,56),
(90,'2021-08-08 08:04:34',38.21,183995,'Selesai','0000-00-00 00:00:00',7,215),
(91,'2022-01-29 02:01:47',11.41,9481110,'Pembayaran','0000-00-00 00:00:00',5,209),
(92,'2021-12-11 07:28:09',34.45,1050280,'Selesai','0000-00-00 00:00:00',7,284),
(93,'2022-04-03 01:57:39',46.98,2487510,'Penjemputan','0000-00-00 00:00:00',9,229),
(94,'2021-08-07 22:49:18',13.94,4595700,'Penjemputan','0000-00-00 00:00:00',8,109),
(95,'2022-04-03 04:57:41',22.87,4272280,'Selesai','0000-00-00 00:00:00',4,242),
(96,'2022-03-17 02:34:39',12.47,840079,'Penjemputan','0000-00-00 00:00:00',7,253),
(97,'2021-08-05 05:56:32',27.45,5469690,'Pembayaran','0000-00-00 00:00:00',8,208),
(98,'2021-06-13 15:20:51',46.93,9045640,'Pembayaran','0000-00-00 00:00:00',1,169),
(99,'2021-06-15 04:34:34',5.22,4428830,'Selesai','0000-00-00 00:00:00',2,185),
(100,'2021-10-17 20:44:28',14.64,7827600,'Selesai','0000-00-00 00:00:00',5,266),
(101,'2021-05-28 11:10:07',17.97,6833370,'Penjemputan','0000-00-00 00:00:00',2,97),
(102,'2021-08-08 02:47:26',5.82,5941100,'Selesai','0000-00-00 00:00:00',10,332),
(103,'2021-09-11 06:15:40',37.3,9303150,'Pembayaran','0000-00-00 00:00:00',9,1),
(104,'2022-04-08 17:27:33',28.5,592378,'Penjemputan','0000-00-00 00:00:00',2,325),
(105,'2021-12-07 18:13:14',47.4,2130560,'Penjemputan','0000-00-00 00:00:00',2,295),
(106,'2021-12-24 14:07:41',43.79,6805240,'Penjemputan','0000-00-00 00:00:00',6,231),
(107,'2021-06-24 09:53:02',13.51,1477740,'Penjemputan','0000-00-00 00:00:00',5,79),
(108,'2021-08-13 05:02:41',41.74,5971720,'Penjemputan','0000-00-00 00:00:00',5,97),
(109,'2021-10-05 08:26:09',25.81,1757410,'Penjemputan','0000-00-00 00:00:00',9,70),
(110,'2022-02-04 22:52:27',49.17,6177720,'Penjemputan','0000-00-00 00:00:00',6,83),
(111,'2022-01-18 17:37:03',36.01,5600100,'Selesai','0000-00-00 00:00:00',9,98),
(112,'2021-11-09 17:36:08',38.06,7303490,'Pembayaran','0000-00-00 00:00:00',10,212),
(113,'2021-08-31 19:31:04',2.49,3930800,'Penjemputan','0000-00-00 00:00:00',9,2),
(114,'2022-02-05 01:16:12',44.39,5097860,'Selesai','0000-00-00 00:00:00',1,23),
(115,'2021-06-12 20:13:56',24.21,1829460,'Penjemputan','0000-00-00 00:00:00',6,204),
(116,'2021-10-23 22:41:16',18.66,8788420,'Penjemputan','0000-00-00 00:00:00',9,242),
(117,'2022-01-10 10:20:46',7.65,1430950,'Selesai','0000-00-00 00:00:00',9,280),
(118,'2022-01-21 08:50:55',44.64,9872500,'Selesai','0000-00-00 00:00:00',7,242),
(119,'2022-01-16 07:18:51',16.8,1375740,'Selesai','0000-00-00 00:00:00',9,285),
(120,'2022-05-04 09:47:17',18.79,4499730,'Pembayaran','0000-00-00 00:00:00',7,338),
(121,'2022-02-25 03:24:10',33.4,2774350,'Pembayaran','0000-00-00 00:00:00',7,55),
(122,'2021-09-04 19:37:04',23.37,5440930,'Penjemputan','0000-00-00 00:00:00',7,32),
(123,'2021-06-03 02:32:29',6.53,3714500,'Penjemputan','0000-00-00 00:00:00',4,32),
(124,'2021-05-27 09:23:37',41.62,2233050,'Selesai','0000-00-00 00:00:00',4,91),
(125,'2021-07-04 20:59:22',33.52,3147190,'Selesai','0000-00-00 00:00:00',3,333),
(126,'2021-10-27 21:14:04',16.25,9335090,'Pembayaran','0000-00-00 00:00:00',5,62),
(127,'2021-10-24 05:22:04',44.13,3589090,'Pembayaran','0000-00-00 00:00:00',3,158),
(128,'2021-11-02 04:37:14',18.52,6190060,'Selesai','0000-00-00 00:00:00',8,35),
(129,'2022-05-20 13:38:47',27.03,9436890,'Selesai','0000-00-00 00:00:00',5,304),
(130,'2021-06-07 14:02:38',48.78,4069380,'Penjemputan','0000-00-00 00:00:00',2,345),
(131,'2022-03-03 00:21:59',27.35,4872830,'Selesai','0000-00-00 00:00:00',5,346),
(132,'2021-06-03 19:10:34',31.35,8695130,'Selesai','0000-00-00 00:00:00',7,106),
(133,'2022-03-17 18:30:46',35.3,2222330,'Penjemputan','0000-00-00 00:00:00',8,109),
(134,'2022-05-08 07:55:26',40.31,6937610,'Pembayaran','0000-00-00 00:00:00',10,206),
(135,'2021-08-04 17:36:28',0.03,87190,'Pembayaran','0000-00-00 00:00:00',2,214),
(136,'2021-09-15 11:47:24',36.95,9184970,'Pembayaran','0000-00-00 00:00:00',6,273),
(137,'2022-02-22 05:12:52',19.24,7523130,'Penjemputan','0000-00-00 00:00:00',8,60),
(138,'2021-06-04 12:07:23',26.28,6673690,'Selesai','0000-00-00 00:00:00',9,52),
(139,'2021-12-01 20:39:36',7.91,8840010,'Penjemputan','0000-00-00 00:00:00',3,82),
(140,'2021-07-06 01:23:42',5.91,8157280,'Pembayaran','0000-00-00 00:00:00',5,191),
(141,'2021-06-25 00:02:32',4.47,4349250,'Pembayaran','0000-00-00 00:00:00',2,315),
(142,'2022-02-18 12:03:48',49.49,4004140,'Penjemputan','0000-00-00 00:00:00',8,144),
(143,'2022-02-14 17:59:12',22.97,7081970,'Pembayaran','0000-00-00 00:00:00',4,176),
(144,'2022-01-06 03:25:04',36.05,8296450,'Penjemputan','0000-00-00 00:00:00',6,281),
(145,'2022-02-28 14:06:49',13.36,4446910,'Penjemputan','0000-00-00 00:00:00',4,236),
(146,'2021-09-22 09:14:23',19.7,8595660,'Selesai','0000-00-00 00:00:00',8,286),
(147,'2021-12-05 15:10:27',24.69,391605,'Selesai','0000-00-00 00:00:00',7,162),
(148,'2021-12-06 06:28:42',31.81,4472880,'Selesai','0000-00-00 00:00:00',2,157),
(149,'2022-02-08 18:29:40',32.28,1334770,'Selesai','0000-00-00 00:00:00',8,39),
(150,'2021-07-06 03:16:32',40.58,916959,'Penjemputan','0000-00-00 00:00:00',1,314),
(151,'2022-04-24 19:11:16',32.56,1425540,'Penjemputan','0000-00-00 00:00:00',8,205),
(152,'2022-01-20 04:41:28',19.42,6888480,'Penjemputan','0000-00-00 00:00:00',7,172),
(153,'2021-10-08 06:53:21',45.11,6646320,'Pembayaran','0000-00-00 00:00:00',8,190),
(154,'2021-07-11 09:23:20',12.02,4281030,'Penjemputan','0000-00-00 00:00:00',7,5),
(155,'2021-11-02 05:01:16',33.06,7359020,'Penjemputan','0000-00-00 00:00:00',8,15),
(156,'2021-12-04 21:24:42',43.35,2925300,'Pembayaran','0000-00-00 00:00:00',6,336),
(157,'2021-07-17 22:09:53',8.18,5394000,'Pembayaran','0000-00-00 00:00:00',10,98),
(158,'2022-02-20 12:44:38',47.39,1631600,'Selesai','0000-00-00 00:00:00',4,101),
(159,'2021-09-11 02:20:01',44.2,8605040,'Penjemputan','0000-00-00 00:00:00',8,308),
(160,'2022-04-14 06:59:32',7.92,9009710,'Pembayaran','0000-00-00 00:00:00',1,53),
(161,'2021-08-07 21:17:39',14.9,2551300,'Pembayaran','0000-00-00 00:00:00',6,308),
(162,'2021-06-13 07:49:15',46.12,4166100,'Pembayaran','0000-00-00 00:00:00',10,76),
(163,'2021-08-20 15:21:11',8.35,9440020,'Selesai','0000-00-00 00:00:00',4,29),
(164,'2021-12-27 00:00:28',11.99,2704640,'Pembayaran','0000-00-00 00:00:00',7,40),
(165,'2022-01-30 20:56:50',42.18,6001850,'Penjemputan','0000-00-00 00:00:00',2,245),
(166,'2021-11-30 09:45:25',44.94,1910050,'Penjemputan','0000-00-00 00:00:00',1,320),
(167,'2021-07-06 16:19:53',18.17,9541130,'Selesai','0000-00-00 00:00:00',3,239),
(168,'2022-03-17 04:20:25',22.14,6228210,'Pembayaran','0000-00-00 00:00:00',5,13),
(169,'2022-04-03 00:59:22',21.68,503856,'Pembayaran','0000-00-00 00:00:00',3,14),
(170,'2021-10-25 03:14:51',5.07,1447400,'Penjemputan','0000-00-00 00:00:00',1,350),
(171,'2021-07-02 02:58:00',9.66,8290420,'Selesai','0000-00-00 00:00:00',1,211),
(172,'2021-09-07 13:26:25',38,2225000,'Pembayaran','0000-00-00 00:00:00',10,7),
(173,'2021-12-26 06:16:06',47.92,1551360,'Selesai','0000-00-00 00:00:00',9,115),
(174,'2022-01-03 18:43:25',32.32,2580300,'Pembayaran','0000-00-00 00:00:00',4,232),
(175,'2021-12-20 18:26:59',41.54,5801150,'Penjemputan','0000-00-00 00:00:00',3,139),
(176,'2022-03-13 01:31:57',31.9,8877040,'Selesai','0000-00-00 00:00:00',9,266),
(177,'2022-03-04 07:45:53',15.99,6019820,'Selesai','0000-00-00 00:00:00',3,271),
(178,'2021-10-31 00:27:19',8.37,9646740,'Selesai','0000-00-00 00:00:00',10,215),
(179,'2021-09-21 22:52:39',40.68,7933680,'Penjemputan','0000-00-00 00:00:00',9,223),
(180,'2021-12-15 19:01:36',20.84,625417,'Penjemputan','0000-00-00 00:00:00',8,17),
(181,'2022-01-25 05:07:56',25.49,337062,'Selesai','0000-00-00 00:00:00',4,258),
(182,'2021-10-10 14:36:06',31.39,6723340,'Pembayaran','0000-00-00 00:00:00',10,216),
(183,'2022-05-03 00:12:47',46.85,1448690,'Selesai','0000-00-00 00:00:00',5,128),
(184,'2022-04-27 18:34:09',6.39,6109420,'Pembayaran','0000-00-00 00:00:00',7,225),
(185,'2021-06-14 23:02:32',3.59,71318,'Pembayaran','0000-00-00 00:00:00',5,244),
(186,'2022-04-29 10:10:22',6.03,4363420,'Selesai','0000-00-00 00:00:00',7,169),
(187,'2022-01-15 21:50:50',26.21,9174460,'Selesai','0000-00-00 00:00:00',3,209),
(188,'2021-08-23 18:10:18',47.41,5083650,'Pembayaran','0000-00-00 00:00:00',6,63),
(189,'2021-06-01 22:55:44',23.1,5375460,'Penjemputan','0000-00-00 00:00:00',10,283),
(190,'2022-03-27 03:03:05',17.95,2897880,'Penjemputan','0000-00-00 00:00:00',9,45),
(191,'2021-12-14 18:13:11',3.18,4719810,'Selesai','0000-00-00 00:00:00',3,227),
(192,'2021-11-18 21:40:14',31.92,6164250,'Selesai','0000-00-00 00:00:00',9,167),
(193,'2021-10-02 20:32:35',26.63,1373020,'Penjemputan','0000-00-00 00:00:00',5,301),
(194,'2021-12-20 22:45:21',43.36,8517430,'Pembayaran','0000-00-00 00:00:00',1,97),
(195,'2021-12-07 23:19:42',41.05,3081920,'Penjemputan','0000-00-00 00:00:00',5,287),
(196,'2021-09-19 14:52:52',32.2,5311410,'Selesai','0000-00-00 00:00:00',4,291),
(197,'2022-04-20 20:40:27',4.99,7522750,'Penjemputan','0000-00-00 00:00:00',6,100),
(198,'2021-06-26 04:23:48',44.52,3000530,'Pembayaran','0000-00-00 00:00:00',5,339),
(199,'2021-10-01 01:42:25',49.91,8340750,'Pembayaran','0000-00-00 00:00:00',7,33),
(200,'2021-10-04 15:42:17',19.07,6506630,'Pembayaran','0000-00-00 00:00:00',7,19),
(201,'2022-04-11 12:18:08',37.81,2059110,'Pembayaran','0000-00-00 00:00:00',8,87),
(202,'2022-04-07 13:48:28',47.88,9994170,'Selesai','0000-00-00 00:00:00',6,30),
(203,'2021-08-06 13:24:51',31.27,7369790,'Penjemputan','0000-00-00 00:00:00',9,13),
(204,'2021-06-14 08:45:23',12.12,6199290,'Selesai','0000-00-00 00:00:00',3,269),
(205,'2021-08-28 17:42:53',22.67,317061,'Pembayaran','0000-00-00 00:00:00',9,36),
(206,'2021-07-06 23:48:22',41.07,2209920,'Pembayaran','0000-00-00 00:00:00',9,16),
(207,'2022-05-18 07:37:58',1.47,9231860,'Pembayaran','0000-00-00 00:00:00',8,273),
(208,'2022-03-25 06:11:00',19.96,2347470,'Penjemputan','0000-00-00 00:00:00',6,61),
(209,'2021-09-29 03:54:57',26.83,610117,'Selesai','0000-00-00 00:00:00',7,215),
(210,'2022-04-26 01:14:34',49.8,9838620,'Penjemputan','0000-00-00 00:00:00',5,47),
(211,'2022-01-27 16:41:40',29.4,9536570,'Penjemputan','0000-00-00 00:00:00',5,271),
(212,'2021-09-01 02:43:42',35.17,34587,'Penjemputan','0000-00-00 00:00:00',10,344),
(213,'2022-04-23 08:31:23',19.26,9505980,'Selesai','0000-00-00 00:00:00',1,143),
(214,'2021-11-26 01:08:47',12.25,5610760,'Penjemputan','0000-00-00 00:00:00',10,248),
(215,'2021-12-14 23:40:42',7.45,698760,'Selesai','0000-00-00 00:00:00',5,196),
(216,'2021-10-28 22:54:50',12.39,6872860,'Selesai','0000-00-00 00:00:00',8,101),
(217,'2021-07-04 21:08:41',27.74,9950540,'Penjemputan','0000-00-00 00:00:00',9,103),
(218,'2022-01-15 06:43:37',7.89,4412240,'Pembayaran','0000-00-00 00:00:00',4,227),
(219,'2021-10-31 07:45:14',14.13,2637520,'Selesai','0000-00-00 00:00:00',4,223),
(220,'2021-07-28 04:32:21',48.5,9887660,'Selesai','0000-00-00 00:00:00',5,61),
(221,'2021-08-02 01:42:53',49.68,7525830,'Selesai','0000-00-00 00:00:00',8,108),
(222,'2021-09-23 18:25:50',40.35,5458170,'Penjemputan','0000-00-00 00:00:00',3,172),
(223,'2022-03-17 16:40:19',24.98,9692570,'Selesai','0000-00-00 00:00:00',1,259),
(224,'2021-07-22 22:03:08',36.81,51264,'Pembayaran','0000-00-00 00:00:00',7,254),
(225,'2021-12-02 16:24:22',44.98,7698730,'Penjemputan','0000-00-00 00:00:00',4,40),
(226,'2021-11-27 18:17:47',25.79,151220,'Selesai','0000-00-00 00:00:00',9,273),
(227,'2021-09-11 06:02:28',26.56,2270070,'Selesai','0000-00-00 00:00:00',9,288),
(228,'2021-10-19 05:01:45',42.63,3257250,'Penjemputan','0000-00-00 00:00:00',8,330),
(229,'2021-11-24 23:27:01',39.57,5170980,'Penjemputan','0000-00-00 00:00:00',3,249),
(230,'2022-04-24 11:01:43',28.83,9121460,'Selesai','0000-00-00 00:00:00',7,256),
(231,'2021-07-23 04:28:23',24.5,8699300,'Penjemputan','0000-00-00 00:00:00',3,143),
(232,'2021-09-25 07:45:06',31.27,9853000,'Selesai','0000-00-00 00:00:00',1,26),
(233,'2022-01-20 21:42:15',27.58,9919520,'Selesai','0000-00-00 00:00:00',8,137),
(234,'2021-05-27 02:49:22',17.98,7123540,'Pembayaran','0000-00-00 00:00:00',8,11),
(235,'2022-01-28 14:47:22',46.33,2461210,'Selesai','0000-00-00 00:00:00',1,48),
(236,'2022-03-18 08:46:35',36.14,3073450,'Selesai','0000-00-00 00:00:00',3,269),
(237,'2021-09-11 06:25:57',10.44,282411,'Pembayaran','0000-00-00 00:00:00',5,147),
(238,'2021-07-21 22:43:08',37.26,1551400,'Penjemputan','0000-00-00 00:00:00',3,186),
(239,'2022-04-26 16:19:25',46.29,1605550,'Penjemputan','0000-00-00 00:00:00',2,323),
(240,'2021-11-05 06:59:11',31.16,6772000,'Penjemputan','0000-00-00 00:00:00',3,177),
(241,'2022-02-25 13:56:30',35.41,9053690,'Penjemputan','0000-00-00 00:00:00',1,41),
(242,'2022-03-06 06:51:04',42.78,3653980,'Penjemputan','0000-00-00 00:00:00',3,322),
(243,'2021-06-16 00:22:55',47.45,3003070,'Pembayaran','0000-00-00 00:00:00',10,17),
(244,'2022-03-11 08:31:58',2.09,1475400,'Selesai','0000-00-00 00:00:00',9,59),
(245,'2021-07-19 18:12:14',18.94,330517,'Pembayaran','0000-00-00 00:00:00',8,178),
(246,'2021-09-25 23:59:09',0.14,5520800,'Penjemputan','0000-00-00 00:00:00',9,9),
(247,'2021-10-12 02:21:04',11.9,2231790,'Selesai','0000-00-00 00:00:00',10,320),
(248,'2021-10-02 09:40:36',1.81,5511860,'Pembayaran','0000-00-00 00:00:00',1,215),
(249,'2021-09-11 13:42:37',22.33,4630460,'Pembayaran','0000-00-00 00:00:00',4,287),
(250,'2022-01-17 03:45:24',46.26,5782370,'Penjemputan','0000-00-00 00:00:00',7,116),
(251,'2021-11-03 08:32:27',16,5116990,'Selesai','0000-00-00 00:00:00',10,296),
(252,'2021-12-26 16:40:14',22.36,7913590,'Pembayaran','0000-00-00 00:00:00',1,139),
(253,'2021-10-23 10:44:45',5.06,5544210,'Penjemputan','0000-00-00 00:00:00',3,125),
(254,'2022-05-03 17:25:52',29.32,2195080,'Selesai','0000-00-00 00:00:00',10,146),
(255,'2022-02-18 15:10:25',13.35,1491020,'Pembayaran','0000-00-00 00:00:00',3,64),
(256,'2021-05-31 05:15:41',20.02,6061390,'Selesai','0000-00-00 00:00:00',10,109),
(257,'2021-07-09 20:13:49',5.77,5309510,'Pembayaran','0000-00-00 00:00:00',3,73),
(258,'2021-06-28 22:06:12',27.3,7094120,'Pembayaran','0000-00-00 00:00:00',3,82),
(259,'2021-08-30 05:55:02',11.61,3065660,'Penjemputan','0000-00-00 00:00:00',3,30),
(260,'2021-08-22 10:29:37',42.44,6481880,'Penjemputan','0000-00-00 00:00:00',4,3),
(261,'2021-07-01 09:14:28',4.25,863940,'Penjemputan','0000-00-00 00:00:00',6,103),
(262,'2021-05-29 15:49:08',45.52,914200,'Penjemputan','0000-00-00 00:00:00',1,178),
(263,'2021-06-30 05:07:21',33.97,4837910,'Penjemputan','0000-00-00 00:00:00',3,46),
(264,'2022-03-15 17:17:35',13.88,1353600,'Penjemputan','0000-00-00 00:00:00',2,178),
(265,'2022-03-04 12:57:46',32.6,7025210,'Pembayaran','0000-00-00 00:00:00',10,268),
(266,'2021-06-24 23:16:01',31.49,854587,'Pembayaran','0000-00-00 00:00:00',9,316),
(267,'2021-11-08 23:00:18',7.55,6130310,'Selesai','0000-00-00 00:00:00',7,327),
(268,'2022-02-25 18:04:01',18.06,4292930,'Penjemputan','0000-00-00 00:00:00',3,305),
(269,'2021-07-13 07:10:44',15.34,2514640,'Penjemputan','0000-00-00 00:00:00',3,79),
(270,'2022-01-29 10:58:24',14.14,6109510,'Penjemputan','0000-00-00 00:00:00',3,198),
(271,'2021-11-18 06:47:37',22.46,3416120,'Penjemputan','0000-00-00 00:00:00',5,73),
(272,'2021-06-24 01:13:16',10.94,6753170,'Pembayaran','0000-00-00 00:00:00',9,246),
(273,'2021-10-19 17:13:38',46.94,9492970,'Pembayaran','0000-00-00 00:00:00',5,35),
(274,'2022-02-08 04:40:08',25.33,663221,'Selesai','0000-00-00 00:00:00',10,234),
(275,'2021-11-30 14:58:35',39.14,3127030,'Penjemputan','0000-00-00 00:00:00',2,117),
(276,'2022-02-18 22:00:44',10.68,9069410,'Pembayaran','0000-00-00 00:00:00',7,273),
(277,'2022-01-02 12:24:53',37.54,1484060,'Pembayaran','0000-00-00 00:00:00',7,248),
(278,'2021-09-24 00:14:19',38.13,2915900,'Penjemputan','0000-00-00 00:00:00',3,292),
(279,'2021-07-06 12:13:04',18.93,379200,'Selesai','0000-00-00 00:00:00',9,142),
(280,'2021-11-18 22:38:34',23.59,886701,'Penjemputan','0000-00-00 00:00:00',4,276),
(281,'2021-11-19 20:27:28',27.12,6643300,'Penjemputan','0000-00-00 00:00:00',2,63),
(282,'2021-10-28 04:47:59',13.02,3917970,'Selesai','0000-00-00 00:00:00',7,272),
(283,'2021-09-08 02:19:50',1.94,8428080,'Selesai','0000-00-00 00:00:00',2,346),
(284,'2021-10-28 07:32:53',17.92,1157680,'Pembayaran','0000-00-00 00:00:00',7,141),
(285,'2021-07-22 04:13:27',48.56,5713630,'Pembayaran','0000-00-00 00:00:00',3,327),
(286,'2021-06-12 09:41:40',23.36,3720330,'Penjemputan','0000-00-00 00:00:00',10,217),
(287,'2021-08-12 03:34:53',38.08,2305720,'Pembayaran','0000-00-00 00:00:00',2,294),
(288,'2021-06-07 05:24:07',16.3,7622850,'Penjemputan','0000-00-00 00:00:00',4,195),
(289,'2021-12-28 11:01:36',19.24,2093400,'Penjemputan','0000-00-00 00:00:00',10,89),
(290,'2022-02-12 03:01:06',49.82,3208710,'Selesai','0000-00-00 00:00:00',3,43),
(291,'2022-05-03 02:48:49',49.85,425105,'Pembayaran','0000-00-00 00:00:00',6,315),
(292,'2021-11-24 11:57:01',32.85,1022570,'Selesai','0000-00-00 00:00:00',10,75),
(293,'2022-03-26 21:41:22',15.69,6304280,'Selesai','0000-00-00 00:00:00',7,65),
(294,'2022-01-12 10:23:06',28.55,4967320,'Selesai','0000-00-00 00:00:00',1,155),
(295,'2021-05-27 04:29:34',36.41,4842270,'Pembayaran','0000-00-00 00:00:00',6,136),
(296,'2022-04-11 21:17:09',1.05,8915190,'Selesai','0000-00-00 00:00:00',3,265),
(297,'2021-07-14 09:37:37',35.14,2738600,'Penjemputan','0000-00-00 00:00:00',6,322),
(298,'2021-11-13 01:56:55',8.91,5269920,'Pembayaran','0000-00-00 00:00:00',6,237),
(299,'2022-02-20 09:42:05',32.13,4443490,'Pembayaran','0000-00-00 00:00:00',10,63),
(300,'2021-11-03 09:42:36',26.33,6289830,'Pembayaran','0000-00-00 00:00:00',1,42),
(301,'2022-01-16 06:03:40',40.36,7184100,'Pembayaran','0000-00-00 00:00:00',2,15),
(302,'2021-12-14 10:13:36',22.67,8273720,'Selesai','0000-00-00 00:00:00',8,90),
(303,'2021-06-19 15:00:41',35.65,9899750,'Selesai','0000-00-00 00:00:00',9,20),
(304,'2022-03-22 10:06:24',17.23,9875500,'Selesai','0000-00-00 00:00:00',9,287),
(305,'2021-12-29 21:32:47',33.26,2919270,'Selesai','0000-00-00 00:00:00',4,13),
(306,'2021-08-13 22:47:24',33.7,5305680,'Penjemputan','0000-00-00 00:00:00',10,314),
(307,'2021-11-05 17:03:39',11.58,1880740,'Penjemputan','0000-00-00 00:00:00',10,295),
(308,'2021-07-29 05:08:46',23.77,1858210,'Penjemputan','0000-00-00 00:00:00',2,189),
(309,'2021-06-10 16:31:59',17.69,152350,'Pembayaran','0000-00-00 00:00:00',1,55),
(310,'2021-12-14 17:50:01',20.62,4560100,'Pembayaran','0000-00-00 00:00:00',10,215),
(311,'2021-07-21 10:07:20',8.94,3918160,'Selesai','0000-00-00 00:00:00',6,73),
(312,'2021-07-14 05:10:20',17.61,8849420,'Pembayaran','0000-00-00 00:00:00',4,37),
(313,'2021-06-01 23:43:42',9.96,1870880,'Pembayaran','0000-00-00 00:00:00',2,316),
(314,'2022-01-18 12:39:41',45.28,5790350,'Pembayaran','0000-00-00 00:00:00',8,12),
(315,'2022-03-15 19:41:04',30.24,605769,'Penjemputan','0000-00-00 00:00:00',1,300),
(316,'2021-11-17 16:32:19',34.38,3197750,'Penjemputan','0000-00-00 00:00:00',2,69),
(317,'2022-03-23 06:32:38',13.74,2433690,'Selesai','0000-00-00 00:00:00',9,311),
(318,'2021-12-26 21:20:31',0.31,9466410,'Selesai','0000-00-00 00:00:00',5,273),
(319,'2022-02-12 13:15:47',3.28,9749060,'Pembayaran','0000-00-00 00:00:00',10,93),
(320,'2022-04-02 13:29:18',38.89,4321450,'Penjemputan','0000-00-00 00:00:00',6,89),
(321,'2021-12-12 13:37:24',3.21,895000,'Pembayaran','0000-00-00 00:00:00',3,188),
(322,'2022-02-14 07:43:15',16.88,690064,'Pembayaran','0000-00-00 00:00:00',2,82),
(323,'2022-01-26 13:47:14',12.77,1086260,'Selesai','0000-00-00 00:00:00',4,91),
(324,'2021-10-02 15:26:12',4.92,1997730,'Pembayaran','0000-00-00 00:00:00',8,141),
(325,'2021-06-21 22:07:22',33.28,3491080,'Selesai','0000-00-00 00:00:00',5,263),
(326,'2022-01-26 19:32:20',20.27,8117830,'Penjemputan','0000-00-00 00:00:00',1,334),
(327,'2021-07-27 11:47:01',0.15,3208630,'Penjemputan','0000-00-00 00:00:00',10,134),
(328,'2021-07-28 12:13:12',8.25,9936780,'Penjemputan','0000-00-00 00:00:00',1,30),
(329,'2022-02-16 14:45:25',25.63,7414240,'Pembayaran','0000-00-00 00:00:00',3,294),
(330,'2021-08-02 01:17:50',46.18,2976540,'Pembayaran','0000-00-00 00:00:00',2,128),
(331,'2021-06-09 07:37:49',33.54,7418520,'Selesai','0000-00-00 00:00:00',7,94),
(332,'2021-10-14 03:51:19',47.02,5055850,'Penjemputan','0000-00-00 00:00:00',6,208),
(333,'2022-02-13 05:58:51',38.73,3750690,'Pembayaran','0000-00-00 00:00:00',2,4),
(334,'2021-09-29 10:40:53',1.78,1218880,'Pembayaran','0000-00-00 00:00:00',4,34),
(335,'2021-09-08 05:02:01',12.37,3220510,'Pembayaran','0000-00-00 00:00:00',3,340),
(336,'2021-11-02 13:46:17',21.43,8031280,'Pembayaran','0000-00-00 00:00:00',4,201),
(337,'2021-09-13 11:46:42',10.96,8526230,'Penjemputan','0000-00-00 00:00:00',6,175),
(338,'2022-01-03 14:49:54',34.25,2962120,'Pembayaran','0000-00-00 00:00:00',9,310),
(339,'2022-01-31 15:05:59',46.32,9472060,'Penjemputan','0000-00-00 00:00:00',8,202),
(340,'2022-01-11 14:53:19',7.32,3149560,'Penjemputan','0000-00-00 00:00:00',3,59),
(341,'2021-07-24 02:25:34',26.59,9657100,'Penjemputan','0000-00-00 00:00:00',4,105),
(342,'2022-04-13 16:11:46',21.57,9016200,'Penjemputan','0000-00-00 00:00:00',2,101),
(343,'2022-03-07 14:43:06',31.69,8834370,'Penjemputan','0000-00-00 00:00:00',7,63),
(344,'2021-10-08 23:57:42',16.73,4980740,'Pembayaran','0000-00-00 00:00:00',4,338),
(345,'2022-05-01 10:55:24',40.35,6599030,'Penjemputan','0000-00-00 00:00:00',1,172),
(346,'2021-07-10 22:43:56',19.97,2322020,'Selesai','0000-00-00 00:00:00',4,249),
(347,'2021-06-16 06:41:48',47.94,1310630,'Selesai','0000-00-00 00:00:00',8,312),
(348,'2021-10-03 00:26:52',31.18,289995,'Penjemputan','0000-00-00 00:00:00',4,319),
(349,'2021-12-09 00:50:34',37.78,966414,'Selesai','0000-00-00 00:00:00',9,238),
(350,'2021-08-09 17:10:19',29.62,6211330,'Pembayaran','0000-00-00 00:00:00',1,61),
(351,'2021-11-26 07:09:29',36.62,130685,'Pembayaran','0000-00-00 00:00:00',7,125),
(352,'2022-05-01 21:31:06',15.06,8005870,'Selesai','0000-00-00 00:00:00',8,54),
(353,'2021-12-24 09:53:43',29.83,5958990,'Selesai','0000-00-00 00:00:00',9,193),
(354,'2021-10-09 08:09:03',21.97,4772630,'Pembayaran','0000-00-00 00:00:00',1,214),
(355,'2021-08-05 04:13:05',16.2,532917,'Selesai','0000-00-00 00:00:00',2,113),
(356,'2021-09-17 21:19:16',8.98,615714,'Pembayaran','0000-00-00 00:00:00',8,159),
(357,'2021-11-26 11:52:42',28.66,1595140,'Penjemputan','0000-00-00 00:00:00',7,315),
(358,'2022-04-01 11:11:07',29.19,8133380,'Pembayaran','0000-00-00 00:00:00',8,106),
(359,'2021-10-07 15:02:57',41.18,8732550,'Pembayaran','0000-00-00 00:00:00',1,40),
(360,'2022-03-23 19:27:18',14.96,5164970,'Selesai','0000-00-00 00:00:00',3,33),
(361,'2022-03-25 04:18:55',0.81,4850390,'Pembayaran','0000-00-00 00:00:00',7,210),
(362,'2022-03-13 22:25:56',7.52,6650900,'Pembayaran','0000-00-00 00:00:00',9,126),
(363,'2021-05-30 23:12:39',30.34,5900540,'Penjemputan','0000-00-00 00:00:00',5,38),
(364,'2021-06-28 09:19:08',43.29,4181210,'Penjemputan','0000-00-00 00:00:00',3,135),
(365,'2021-12-18 10:26:46',41.82,8566450,'Selesai','0000-00-00 00:00:00',8,97),
(366,'2021-11-12 00:59:37',4.08,3476560,'Selesai','0000-00-00 00:00:00',6,151),
(367,'2021-11-19 17:37:56',31.51,2354390,'Penjemputan','0000-00-00 00:00:00',7,106),
(368,'2021-09-24 02:09:59',23.28,8064880,'Selesai','0000-00-00 00:00:00',6,170),
(369,'2021-09-01 05:00:05',42.42,8663070,'Selesai','0000-00-00 00:00:00',9,217),
(370,'2021-07-18 19:30:56',20.01,4706200,'Selesai','0000-00-00 00:00:00',1,342),
(371,'2021-08-05 01:45:42',28.84,5905130,'Pembayaran','0000-00-00 00:00:00',10,305),
(372,'2022-05-10 23:26:53',21.41,3317050,'Pembayaran','0000-00-00 00:00:00',5,197),
(373,'2021-12-20 07:56:06',30.25,4217450,'Selesai','0000-00-00 00:00:00',8,60),
(374,'2022-01-28 13:59:25',5.76,1399620,'Pembayaran','0000-00-00 00:00:00',9,296),
(375,'2022-01-15 03:45:02',44.46,491043,'Pembayaran','0000-00-00 00:00:00',3,46),
(376,'2022-03-28 03:38:30',5.72,8293420,'Pembayaran','0000-00-00 00:00:00',10,310),
(377,'2021-11-16 13:37:33',40.51,5705100,'Penjemputan','0000-00-00 00:00:00',8,259),
(378,'2022-01-20 00:31:37',38.14,7718140,'Pembayaran','0000-00-00 00:00:00',3,75),
(379,'2022-04-14 00:30:27',22.16,9669660,'Penjemputan','0000-00-00 00:00:00',9,179),
(380,'2021-12-14 12:37:18',30.86,8074180,'Selesai','0000-00-00 00:00:00',6,221),
(381,'2022-04-01 00:39:56',35.86,1279330,'Pembayaran','0000-00-00 00:00:00',8,54),
(382,'2022-03-08 04:35:10',42.9,8018150,'Penjemputan','0000-00-00 00:00:00',1,147),
(383,'2022-02-22 01:05:27',7.98,4344960,'Pembayaran','0000-00-00 00:00:00',5,226),
(384,'2021-12-14 22:59:03',46.16,1103850,'Pembayaran','0000-00-00 00:00:00',10,107),
(385,'2022-05-06 01:10:04',1.71,6489120,'Penjemputan','0000-00-00 00:00:00',3,350),
(386,'2022-04-29 03:39:24',13.67,9740590,'Penjemputan','0000-00-00 00:00:00',3,72),
(387,'2021-08-24 04:18:29',6.2,6338640,'Pembayaran','0000-00-00 00:00:00',9,249),
(388,'2021-07-04 12:44:27',37.31,2665540,'Selesai','0000-00-00 00:00:00',8,224),
(389,'2022-03-12 07:22:59',42.22,676760,'Selesai','0000-00-00 00:00:00',9,220),
(390,'2022-04-02 00:54:00',42.99,3726660,'Pembayaran','0000-00-00 00:00:00',5,57),
(391,'2021-07-11 14:17:36',29.5,3330810,'Penjemputan','0000-00-00 00:00:00',8,147),
(392,'2021-08-15 17:30:40',46.74,3337390,'Penjemputan','0000-00-00 00:00:00',1,170),
(393,'2021-10-12 10:37:58',8.86,3196210,'Pembayaran','0000-00-00 00:00:00',2,101),
(394,'2022-02-22 15:08:02',20.43,351358,'Pembayaran','0000-00-00 00:00:00',7,2),
(395,'2022-03-17 06:47:13',19.35,5220140,'Pembayaran','0000-00-00 00:00:00',8,103),
(396,'2021-12-11 17:11:27',3.19,8190510,'Penjemputan','0000-00-00 00:00:00',7,205),
(397,'2021-07-03 05:49:57',20.72,9736390,'Pembayaran','0000-00-00 00:00:00',5,244),
(398,'2021-11-28 07:11:23',18.55,2122040,'Pembayaran','0000-00-00 00:00:00',1,316),
(399,'2022-04-08 16:45:51',25.27,7111210,'Penjemputan','0000-00-00 00:00:00',4,318),
(400,'2021-07-08 09:58:45',18.2,7012460,'Selesai','0000-00-00 00:00:00',3,212),
(401,'2022-05-15 01:03:51',27.08,4465920,'Pembayaran','0000-00-00 00:00:00',10,171),
(402,'2022-02-07 04:58:09',35.35,392986,'Pembayaran','0000-00-00 00:00:00',9,271),
(403,'2021-09-28 01:46:14',17.59,1985290,'Penjemputan','0000-00-00 00:00:00',2,201),
(404,'2021-12-14 05:39:31',36.61,4735760,'Selesai','0000-00-00 00:00:00',5,27),
(405,'2021-07-05 23:08:03',28.91,1081890,'Pembayaran','0000-00-00 00:00:00',3,313),
(406,'2021-06-16 20:00:58',22.8,6254840,'Selesai','0000-00-00 00:00:00',3,335),
(407,'2021-07-12 10:58:01',45.6,9701470,'Pembayaran','0000-00-00 00:00:00',4,99),
(408,'2021-07-25 03:11:40',7.69,6911800,'Penjemputan','0000-00-00 00:00:00',5,165),
(409,'2021-06-09 01:53:08',14.33,7428240,'Penjemputan','0000-00-00 00:00:00',6,48),
(410,'2022-05-23 13:03:49',34.31,7489040,'Selesai','0000-00-00 00:00:00',5,129),
(411,'2022-02-19 18:32:00',10.09,1262550,'Selesai','0000-00-00 00:00:00',5,39),
(412,'2021-11-11 15:11:37',28.32,6160260,'Selesai','0000-00-00 00:00:00',10,307),
(413,'2021-09-17 17:20:53',40.6,5518180,'Penjemputan','0000-00-00 00:00:00',9,335),
(414,'2021-12-23 20:44:26',9.23,1912220,'Pembayaran','0000-00-00 00:00:00',8,52),
(415,'2021-10-06 03:05:38',28.02,459557,'Selesai','0000-00-00 00:00:00',9,344),
(416,'2022-01-01 16:42:26',15.21,6820510,'Pembayaran','0000-00-00 00:00:00',8,269),
(417,'2022-04-13 20:09:40',47.79,3696080,'Selesai','0000-00-00 00:00:00',5,197),
(418,'2021-09-23 18:50:14',20.9,5037540,'Selesai','0000-00-00 00:00:00',6,233),
(419,'2021-08-25 17:51:49',26.23,5584790,'Selesai','0000-00-00 00:00:00',2,334),
(420,'2022-03-31 08:42:13',45.8,9620460,'Pembayaran','0000-00-00 00:00:00',8,118),
(421,'2022-05-23 06:12:29',25.02,3631420,'Penjemputan','0000-00-00 00:00:00',9,343),
(422,'2022-04-04 07:34:36',49.16,1291640,'Penjemputan','0000-00-00 00:00:00',3,56),
(423,'2022-03-26 15:52:30',3.85,2527920,'Pembayaran','0000-00-00 00:00:00',3,257),
(424,'2021-12-04 09:53:47',1.24,537919,'Penjemputan','0000-00-00 00:00:00',7,291),
(425,'2022-01-18 23:26:54',5.69,4664590,'Pembayaran','0000-00-00 00:00:00',9,37),
(426,'2021-08-26 14:09:38',25.57,3261500,'Selesai','0000-00-00 00:00:00',2,105),
(427,'2021-10-10 20:14:58',36.91,9151860,'Penjemputan','0000-00-00 00:00:00',3,53),
(428,'2022-01-31 09:47:52',7.13,4832120,'Penjemputan','0000-00-00 00:00:00',2,7),
(429,'2021-06-23 15:47:37',41.09,2538920,'Selesai','0000-00-00 00:00:00',2,333),
(430,'2021-12-15 09:17:45',13.38,4558680,'Selesai','0000-00-00 00:00:00',2,339),
(431,'2021-09-04 09:45:29',39.32,2651960,'Pembayaran','0000-00-00 00:00:00',10,321),
(432,'2021-08-28 14:26:32',28.16,1180320,'Pembayaran','0000-00-00 00:00:00',8,141),
(433,'2022-04-17 05:08:22',0.37,217006,'Penjemputan','0000-00-00 00:00:00',5,96),
(434,'2021-12-21 04:15:28',6.97,2690760,'Penjemputan','0000-00-00 00:00:00',1,215),
(435,'2021-11-10 13:35:47',38.59,9296670,'Penjemputan','0000-00-00 00:00:00',3,283),
(436,'2021-07-30 08:20:55',49.46,4272370,'Selesai','0000-00-00 00:00:00',10,25),
(437,'2022-03-24 09:02:33',12.84,1613040,'Pembayaran','0000-00-00 00:00:00',8,86),
(438,'2022-03-31 19:26:17',20.17,4993160,'Selesai','0000-00-00 00:00:00',3,16),
(439,'2021-08-24 20:02:30',14.1,8576610,'Pembayaran','0000-00-00 00:00:00',10,301),
(440,'2021-08-28 14:35:38',12.8,2611220,'Pembayaran','0000-00-00 00:00:00',9,296),
(441,'2021-06-10 04:00:29',33.38,9195560,'Pembayaran','0000-00-00 00:00:00',10,26),
(442,'2021-08-31 18:47:12',14.13,7861410,'Pembayaran','0000-00-00 00:00:00',2,61),
(443,'2021-12-29 16:35:47',49.48,8798670,'Penjemputan','0000-00-00 00:00:00',3,111),
(444,'2021-06-04 18:46:35',21.94,6737450,'Pembayaran','0000-00-00 00:00:00',2,115),
(445,'2021-10-14 11:40:44',45.89,781342,'Penjemputan','0000-00-00 00:00:00',3,125),
(446,'2021-11-30 17:47:40',26.12,5073120,'Pembayaran','0000-00-00 00:00:00',3,70),
(447,'2021-07-09 09:01:04',13.91,8079920,'Penjemputan','0000-00-00 00:00:00',3,9),
(448,'2022-01-01 09:23:37',40.26,4082860,'Pembayaran','0000-00-00 00:00:00',7,263),
(449,'2021-08-27 12:48:03',21.94,460566,'Pembayaran','0000-00-00 00:00:00',3,234),
(450,'2021-08-09 23:51:59',32.26,7438930,'Selesai','0000-00-00 00:00:00',4,183),
(451,'2022-01-11 06:28:34',0.49,6740960,'Pembayaran','0000-00-00 00:00:00',5,111),
(452,'2021-07-14 09:34:49',15.9,6834580,'Selesai','0000-00-00 00:00:00',6,90),
(453,'2021-07-14 20:28:04',9.16,9553240,'Pembayaran','0000-00-00 00:00:00',6,288),
(454,'2021-11-07 17:08:40',47.57,3406510,'Pembayaran','0000-00-00 00:00:00',4,188),
(455,'2022-04-15 20:31:23',36.37,7373260,'Pembayaran','0000-00-00 00:00:00',7,62),
(456,'2021-08-10 17:58:01',43.86,3915890,'Selesai','0000-00-00 00:00:00',4,224),
(457,'2021-11-14 10:27:12',37.63,8177090,'Selesai','0000-00-00 00:00:00',3,184),
(458,'2021-07-24 10:17:31',29.51,2309980,'Selesai','0000-00-00 00:00:00',9,165),
(459,'2021-06-20 09:49:52',25.12,6265000,'Pembayaran','0000-00-00 00:00:00',9,1),
(460,'2021-12-10 02:07:27',49.37,2267690,'Selesai','0000-00-00 00:00:00',8,38),
(461,'2021-09-18 10:00:56',44.33,6988260,'Penjemputan','0000-00-00 00:00:00',4,32),
(462,'2021-08-08 18:48:56',37.94,1691460,'Selesai','0000-00-00 00:00:00',4,221),
(463,'2022-04-27 07:14:01',45.09,3245360,'Pembayaran','0000-00-00 00:00:00',2,317),
(464,'2022-04-20 19:28:45',18.08,5329260,'Selesai','0000-00-00 00:00:00',4,145),
(465,'2021-07-20 00:27:53',4.55,9135780,'Pembayaran','0000-00-00 00:00:00',6,261),
(466,'2021-06-12 23:51:06',21.12,1317520,'Penjemputan','0000-00-00 00:00:00',10,16),
(467,'2021-06-09 17:48:05',19.24,6123690,'Penjemputan','0000-00-00 00:00:00',1,185),
(468,'2021-11-10 18:59:08',3.95,916881,'Penjemputan','0000-00-00 00:00:00',3,217),
(469,'2022-04-25 06:44:04',17.55,2092010,'Pembayaran','0000-00-00 00:00:00',4,210),
(470,'2021-12-05 16:49:31',31.98,2826670,'Selesai','0000-00-00 00:00:00',2,10),
(471,'2022-05-19 14:52:52',27.43,3334780,'Selesai','0000-00-00 00:00:00',8,188),
(472,'2021-12-27 20:29:20',28.27,609803,'Pembayaran','0000-00-00 00:00:00',7,8),
(473,'2021-10-19 16:41:04',38.79,5044330,'Pembayaran','0000-00-00 00:00:00',1,167),
(474,'2022-05-09 13:08:16',47.85,649127,'Penjemputan','0000-00-00 00:00:00',5,316),
(475,'2021-12-03 07:31:11',48.89,1881220,'Penjemputan','0000-00-00 00:00:00',5,102),
(476,'2021-07-17 01:49:57',32.9,1381540,'Selesai','0000-00-00 00:00:00',1,292),
(477,'2022-01-31 05:16:12',28.87,8587610,'Selesai','0000-00-00 00:00:00',4,110),
(478,'2022-02-25 15:42:14',25.76,3460310,'Selesai','0000-00-00 00:00:00',5,173),
(479,'2021-06-30 23:55:56',14.5,5057430,'Penjemputan','0000-00-00 00:00:00',3,296),
(480,'2021-11-08 00:02:50',37.48,9237260,'Pembayaran','0000-00-00 00:00:00',10,277),
(481,'2022-05-05 05:16:50',44.42,3833460,'Selesai','0000-00-00 00:00:00',6,294),
(482,'2021-09-30 15:11:56',21.05,168622,'Penjemputan','0000-00-00 00:00:00',9,227),
(483,'2021-12-11 14:35:36',21.85,6978300,'Penjemputan','0000-00-00 00:00:00',4,47),
(484,'2022-01-21 12:05:47',2.24,6937430,'Selesai','0000-00-00 00:00:00',3,249),
(485,'2021-06-19 21:23:45',6.84,7916080,'Selesai','0000-00-00 00:00:00',8,149),
(486,'2021-10-04 10:46:28',27.65,5981010,'Selesai','0000-00-00 00:00:00',8,178),
(487,'2022-03-12 08:59:04',27.55,2187040,'Pembayaran','0000-00-00 00:00:00',10,141),
(488,'2022-05-23 16:14:57',47.93,1312280,'Selesai','0000-00-00 00:00:00',6,8),
(489,'2021-09-19 01:59:59',34.41,948582,'Selesai','0000-00-00 00:00:00',9,9),
(490,'2021-10-19 17:04:30',26.62,131339,'Pembayaran','0000-00-00 00:00:00',10,125),
(491,'2021-08-29 00:22:22',11.47,4527020,'Selesai','0000-00-00 00:00:00',4,326),
(492,'2021-08-29 22:49:21',13.58,4156920,'Pembayaran','0000-00-00 00:00:00',2,242),
(493,'2021-11-03 09:44:34',32.56,7329340,'Selesai','0000-00-00 00:00:00',3,229),
(494,'2021-08-26 18:32:22',40.55,2143260,'Pembayaran','0000-00-00 00:00:00',2,162),
(495,'2021-11-07 13:16:42',49.41,335903,'Penjemputan','0000-00-00 00:00:00',5,31),
(496,'2021-12-19 04:48:26',48.35,4676060,'Penjemputan','0000-00-00 00:00:00',3,30),
(497,'2021-10-13 11:56:12',18.28,5453540,'Penjemputan','0000-00-00 00:00:00',10,30),
(498,'2021-10-27 17:31:33',46.25,9363640,'Penjemputan','0000-00-00 00:00:00',8,101),
(499,'2021-07-12 22:58:44',18.36,9035660,'Pembayaran','0000-00-00 00:00:00',3,1),
(500,'2021-07-23 11:32:06',27.26,4750880,'Pembayaran','0000-00-00 00:00:00',10,334),
(501,'2022-01-20 08:32:12',1.2,12000,'Penjemputan','0000-00-00 00:00:00',3,2),
(502,'2022-06-08 10:10:27',20,40000,'Penjemputan','2022-09-09 08:05:00',16,368),
(503,'2022-06-08 10:32:18',4.5,5400,'Penjemputan','2022-09-08 09:08:00',3,368),
(505,'2022-06-09 07:04:22',500,4500000,'Pembayaran','2022-07-08 08:06:00',22,368),
(506,'2022-06-09 08:28:10',1200,156000,'Penjemputan','2022-09-07 08:09:00',20,368),
(507,'2022-06-10 07:58:46',5.8,21262.8,'Penjemputan','2022-07-08 08:06:00',8,356),
(508,'2022-06-10 07:59:15',5000,1150000,'Selesai','2022-09-07 08:07:00',17,356),
(509,'2022-06-10 20:22:14',120,120000,'Pembayaran','2022-07-08 08:07:00',19,356),
(512,'2022-06-12 20:11:14',23,132641,'Penjemputan','2022-09-08 09:08:00',10,368);
/*!40000 ALTER TABLE `setoran` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`ardhmalik`@`localhost`*/ /*!50003 TRIGGER tambah_penjemputan AFTER INSERT ON setoran FOR EACH ROW
BEGIN
INSERT INTO penjemputan(status, jadwal_jemput, id_setor) VALUES (0, NEW.jadwal_jemput, NEW.id_setor);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`ardhmalik`@`localhost`*/ /*!50003 TRIGGER hapus_penjemputan BEFORE DELETE ON setoran FOR EACH ROW
BEGIN
DELETE FROM penjemputan WHERE id_setor=OLD.id_setor;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `struktur`
--

DROP TABLE IF EXISTS `struktur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `struktur` (
  `id_struktur` int(11) NOT NULL AUTO_INCREMENT,
  `ketua` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sekretaris` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bendahara` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anggota` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_nsb` int(5) DEFAULT NULL,
  `id_mitra` int(11) NOT NULL,
  PRIMARY KEY (`id_struktur`),
  KEY `id_mitra` (`id_mitra`),
  CONSTRAINT `struktur_ibfk_1` FOREIGN KEY (`id_mitra`) REFERENCES `mitra` (`id_mitra`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `struktur`
--

LOCK TABLES `struktur` WRITE;
/*!40000 ALTER TABLE `struktur` DISABLE KEYS */;
INSERT INTO `struktur` VALUES
(1,'gleason.cruz','hobart84','mariam18','',193,52),
(2,'koch.christian','devyn.sauer','calista19','',313,323),
(3,'kali21','mbosco','jayda33','',128,310),
(4,'purdy.amos','willow.cummings','manuel58','',389,140),
(5,'glover.genoveva','henriette47','hollis51','',245,27),
(6,'rdeckow','olson.carmella','connelly.bobbie','',176,122),
(7,'elody.kshlerin','apfeffer','batz.edmund','b',259,210),
(8,'sadie23','thalia85','lpadberg','',494,169),
(9,'joey.dubuque','sandrine23','ggislason','',379,255),
(10,'clangosh','cnienow','medhurst.marion','c',446,316),
(11,'garry.nitzsche','santa.langworth','mfay','a',127,252),
(12,'willow75','shaun.dickens','leon.lesch','',144,276),
(13,'lheaney','antwan.olson','deckow.marjolaine','a',248,36),
(14,'christiansen.lexie','kconroy','nader.althea','',165,43),
(15,'writchie','prohaska.damien','nkassulke','',449,282),
(16,'hickle.cara','junius.glover','mable.strosin','',202,254),
(17,'ypagac','ophelia01','maritza.carroll','',174,128),
(18,'kutch.kirstin','lucas75','connie38','',282,22),
(19,'gratke','osbaldo62','bstrosin','b',204,96),
(20,'fritz.yundt','alvena88','cloyd.parker','',145,286),
(21,'katelin.wisozk','caesar.gutmann','goldner.clemmie','b',447,43),
(22,'danyka.trantow','lelia.friesen','onie50','b',150,283),
(23,'stan44','dboehm','greynolds','',140,224),
(24,'wyatt.olson','stacy26','aida.zboncak','',435,1),
(25,'porter.balistreri','renee98','boyd.heathcote','',340,14),
(26,'botsford.eveline','xstanton','jeramie.hermiston','a',294,268),
(27,'eunice79','silas.cronin','scollier','',57,256),
(28,'andy38','bauch.tremayne','araceli.wisozk','',1,34),
(29,'cristopher.crona','wyman.dana','geraldine19','c',75,199),
(30,'filiberto.kunze','wbernhard','vstiedemann','',97,198),
(31,'itowne','critchie','rafael69','',464,286),
(32,'betsy04','mcglynn.herta','conroy.chauncey','',57,251),
(33,'mcdermott.jerrell','simone81','kayleigh.windler','b',188,170),
(34,'dolores77','marks.donald','baumbach.ophelia','',151,246),
(35,'justice40','carissa28','javonte.rath','c',357,40),
(36,'vhermiston','taya61','joyce44','',347,197),
(37,'pwintheiser','rose.hansen','dustin.durgan','',160,17),
(38,'myrna67','caitlyn19','barrows.joanny','',126,249),
(39,'mayra.hermann','maxie.mann','qgorczany','b',320,15),
(40,'ashleigh.crist','filiberto.walsh','terrell44','',481,271),
(41,'ed.beahan','kevin54','daniel.emely','',150,215),
(42,'denis.white','tbode','colin08','',258,266),
(43,'ugutmann','olson.weston','brittany.schuppe','',493,196),
(44,'savanah91','enrico73','zturner','',179,251),
(45,'dbahringer','rick17','feil.chaz','',324,309),
(46,'harber.colby','rudy.kohler','brooklyn61','c',124,128),
(47,'pagac.jimmy','florian.o\'reilly','kling.aida','a',53,154),
(48,'bkerluke','nya.berge','nicolette78','c',431,87),
(49,'lindsay00','trantow.melisa','fadel.kylee','c',457,150),
(50,'gleason.hildegard','aric.borer','hilton12','a',272,250),
(51,'stan.dicki','tillman.nola','shanahan.nicola','c',307,23),
(52,'jdouglas','frederic15','graciela.bartoletti','',333,193),
(53,'arobel','nadia.pollich','flarson','',254,182),
(54,'kautzer.amari','jenifer.pfeffer','parisian.courtney','',472,246),
(55,'guillermo.kuhlman','nstoltenberg','rkerluke','a',251,194),
(56,'aileen08','bartell.eladio','gzemlak','',490,195),
(57,'brandy29','peyton62','jacobson.claudine','',309,164),
(58,'zoie.prosacco','deangelo18','effie58','c',103,100),
(59,'lesly55','barrows.madaline','runolfsdottir.sister','',149,228),
(60,'abelardo08','asha.lemke','hoppe.alexis','a',254,12),
(61,'leopoldo.bernhard','lang.ole','logan99','',182,297),
(62,'zjast','tgaylord','thaddeus64','a',47,164),
(63,'lucienne.walker','brielle56','nyasia.o\'hara','c',109,263),
(64,'deborah.stehr','lexi41','tomas.huel','a',18,117),
(65,'terence72','tkunze','swisoky','',322,59),
(66,'griffin26','msmith','anissa.ferry','',474,302),
(67,'sydni45','ykuvalis','wuckert.chadd','a',375,313),
(68,'gislason.mohamed','gerhold.richard','maximus54','',401,75),
(69,'sienna10','sabrina.bernhard','darien42','',2,201),
(70,'maddison.weber','boyer.serenity','denesik.nina','a',33,327),
(71,'lenna.barrows','hamill.presley','uturcotte','b',52,346),
(72,'geovanny95','ward.emelia','windler.simeon','',18,66),
(73,'schmeler.stephon','dawn.nitzsche','amedhurst','',463,243),
(74,'juanita50','lamar.williamson','neha69','',284,192),
(75,'leta34','lhayes','fmertz','a',351,316),
(76,'tromp.lela','wturner','hcorkery','c',352,202),
(77,'tconroy','howe.kaleigh','helene92','a',252,320),
(78,'rosario.weber','fthiel','kaycee.schroeder','',200,120),
(79,'lmoore','joanie.huels','gaston.roberts','',284,288),
(80,'jwitting','marjolaine62','rice.therese','',184,120),
(81,'cjohnson','wilhelmine.toy','renner.blanche','',372,19),
(82,'charlie68','pwalter','taya19','b',24,310),
(83,'orrin90','nlegros','tavares.king','',197,312),
(84,'pacocha.marlee','arlo.langworth','dwaelchi','a',304,200),
(85,'maria.rutherford','rigoberto93','schmitt.dangelo','',460,206),
(86,'kuhic.renee','tkeeling','tstracke','a',36,156),
(87,'darby57','johnpaul.wintheiser','rosalyn38','',489,45),
(88,'fahey.emie','predovic.claudine','willard.klein','',36,20),
(89,'percival.larkin','dfarrell','cruz.larkin','c',266,255),
(90,'naltenwerth','awiza','lupe.o\'hara','',288,273),
(91,'hreinger','yasmeen60','avis.thompson','b',24,32),
(92,'nolson','haley.jalyn','vlemke','',358,202),
(93,'helene.corkery','pnitzsche','mona02','b',499,86),
(94,'jonas72','econroy','vern.batz','a',328,294),
(95,'emmet57','hamill.gordon','mac.zulauf','',162,318),
(96,'cartwright.mallory','gkiehn','freda.gorczany','c',311,145),
(97,'schmeler.krystel','gchamplin','ena.olson','a',286,246),
(98,'devonte66','mikel.frami','reina.hoppe','',109,280),
(99,'kyleigh.homenick','zwisoky','jordane98','',97,219),
(100,'dimitri90','andreane.rohan','emilio.wisozk','',142,96),
(101,'hoeger.brycen','prosacco.lexi','brenda53','a',279,257),
(102,'cortney25','michaela45','maria53','',248,215),
(103,'angelina.cruickshank','wilber07','samara.nienow','b',372,161),
(104,'ramon.sawayn','rebeka54','russel32','c',327,149),
(105,'strosin.ellis','paxton14','ohayes','c',229,56),
(106,'keven15','eldora42','cnolan','',124,127),
(107,'dereck80','weber.alfonzo','claudie.treutel','a',223,350),
(108,'mupton','hhirthe','diana86','b',88,26),
(109,'steuber.nelson','shaylee.will','antonette.turcotte','',458,246),
(110,'etrantow','penelope94','yasmeen63','c',390,288),
(111,'wisoky.chester','cole.gudrun','jenkins.liam','b',257,145),
(112,'marvin31','bkutch','hgoodwin','a',398,264),
(113,'lebsack.felipa','johnpaul.christiansen','matt03','b',74,247),
(114,'eduardo.buckridge','mcglynn.dana','berge.marley','',2,107),
(115,'kuhn.unique','bridie59','wilderman.lilliana','',152,114),
(116,'patience.huel','nicolas.lelah','dianna20','',158,103),
(117,'kohler.whitney','mgleichner','parker03','c',469,262),
(118,'nmcglynn','eschaden','kiehn.tania','b',472,158),
(119,'rosanna50','luna90','karianne.wunsch','b',70,122),
(120,'gregg.jacobi','justen.grady','noble.bogisich','',438,167),
(121,'rheidenreich','lmclaughlin','valentina.dicki','b',62,80),
(122,'cole63','heber98','owilkinson','',415,153),
(123,'volkman.dale','robert.kshlerin','douglas.milo','a',488,19),
(124,'susana84','colten79','rafaela.littel','a',98,166),
(125,'krosenbaum','lura11','darren69','c',459,96),
(126,'corrine65','dasia.cronin','iorn','',387,336),
(127,'karli.gutmann','feest.jacynthe','po\'conner','a',474,310),
(128,'ijohns','dorothy.prohaska','bdonnelly','b',336,341),
(129,'noah.legros','paul96','glover.marina','',103,266),
(130,'sbartoletti','vkoepp','darwin84','b',293,179),
(131,'reuben38','psmitham','hcummings','',217,87),
(132,'terry.anika','idibbert','carli77','b',287,172),
(133,'alaina.armstrong','rprohaska','rohan.elenora','',361,43),
(134,'wkoss','ivory13','lupe79','',29,248),
(135,'nondricka','chaya68','corkery.raheem','c',171,320),
(136,'wilhelm.murazik','nicolas.mckenzie','elna95','c',142,99),
(137,'jorge.kuhic','herman.andy','morton.klein','',68,24),
(138,'gussie49','darren.heathcote','isaac08','',209,320),
(139,'joseph.west','stark.gideon','schaefer.marlene','c',330,125),
(140,'haley.west','turner.gage','marta73','c',32,269),
(141,'kirk17','issac.watsica','reichel.luis','b',496,257),
(142,'margarette49','mohammed.stamm','filomena.ratke','',9,269),
(143,'halie93','jbraun','jarred01','',441,183),
(144,'breanne.gislason','tkessler','merritt09','c',275,154),
(145,'cleora.murphy','metz.margret','luciano.cassin','',484,25),
(146,'jane.rogahn','littel.angie','gussie.christiansen','',231,296),
(147,'champlin.filomena','shanelle.blick','cathrine.kozey','b',195,257),
(148,'ldaniel','abbott.cheyenne','brycen.kub','',349,287),
(149,'fahey.laurel','carolyn89','frank.king','b',6,103),
(150,'carlo.hayes','phegmann','evan21','',466,28),
(151,'murphy.edmond','ben10','cdaugherty','a',19,104),
(152,'willms.mason','onie45','vkautzer','c',289,183),
(153,'nicolas.reilly','kwelch','raoul39','',79,181),
(154,'xwhite','ischaden','regan.sipes','c',353,122),
(155,'ozella65','cecelia76','michael30','c',168,349),
(156,'gregoria.vonrueden','alvera.ziemann','goldner.kiel','',424,276),
(157,'king.lowell','maria.jast','leif.casper','',250,108),
(158,'armand.wuckert','frank47','julie.barrows','',67,308),
(159,'koss.destiney','rleuschke','zboncak.bert','',203,267),
(160,'terry.arnoldo','oreynolds','cbins','',487,23),
(161,'lubowitz.shawna','monserrat.fritsch','madonna14','',242,137),
(162,'lueilwitz.chaim','martina.graham','cyril.kuhlman','',399,4),
(163,'qcrooks','bashirian.olga','cameron.carter','c',34,194),
(164,'reynolds.vella','trau','jamison06','',19,179),
(165,'madilyn94','stamm.ciara','ollie24','a',410,251),
(166,'trantow.abbie','runolfsdottir.marisol','hertha.king','a',403,164),
(167,'delta.bartoletti','dgottlieb','rlubowitz','',332,278),
(168,'everett29','hyatt.sofia','bschimmel','',54,274),
(169,'yessenia.smith','domenick.okuneva','pouros.judy','',320,134),
(170,'mohammad60','dayne.moen','waelchi.freeda','c',359,52),
(171,'merl64','francisca.bradtke','jkshlerin','',68,192),
(172,'stefanie27','larkin.olga','emerald.kuhlman','',411,41),
(173,'gbergnaum','pgrady','ken92','',429,321),
(174,'jeanne.abernathy','sharon.rutherford','johnson.breanne','c',421,24),
(175,'tillman.arthur','tomas.littel','bernard50','',188,194),
(176,'reginald.schoen','madison85','kessler.emile','',41,346),
(177,'javier30','cooper66','leann09','',260,320),
(178,'koepp.coty','leone.stiedemann','jerome.morissette','',331,100),
(179,'umiller','lebsack.camren','gideon84','',148,283),
(180,'george.veum','hanna93','kenny.hane','',131,73),
(181,'pebert','caroline37','desmond77','b',149,128),
(182,'brisa.cummings','tbrekke','kulas.waldo','',245,37),
(183,'sister03','edmund11','christiansen.anya','a',281,255),
(184,'wvolkman','kaley93','lue.stroman','',498,308),
(185,'gus80','jdonnelly','nia.wunsch','b',132,158),
(186,'torphy.ava','lourdes80','pouros.dennis','',199,253),
(187,'tracey.champlin','jaskolski.ellie','d\'amore.berniece','',450,234),
(188,'aliza61','jessie.moen','luisa.bogisich','a',345,266),
(189,'patricia44','veda21','pacocha.abdullah','c',398,211),
(190,'pearline.weissnat','mcdermott.zechariah','schmitt.sebastian','',290,151),
(191,'shannon98','klocko.destinee','montana.mraz','',53,289),
(192,'amaya45','wilber.franecki','hrussel','b',500,347),
(193,'zshanahan','luisa32','bruen.annabell','',14,154),
(194,'rosenbaum.sherwood','deckow.rolando','choeger','b',414,132),
(195,'graciela71','colten91','marion54','',345,176),
(196,'aiden.rempel','uschaefer','ebarton','c',381,54),
(197,'osborne49','bruce91','gennaro37','',256,296),
(198,'stamm.haylee','yost.greg','kennedi.herzog','b',224,104),
(199,'krajcik.elyse','moises31','vada71','c',240,327),
(200,'tbartell','allene99','katheryn.blanda','',265,80),
(201,'watsica.delta','kchamplin','camylle.terry','a',467,156),
(202,'emiliano.cassin','kreiger.waino','so\'keefe','',222,169),
(203,'vanessa68','yadira43','madelynn.morar','',114,120),
(204,'lillie33','brendon.weber','nathaniel40','',427,126),
(205,'gottlieb.rae','alexys.bosco','qmacejkovic','',92,193),
(206,'bernadine.bogan','marvin.helen','dino34','b',442,314),
(207,'xledner','katlyn14','jake.funk','',282,122),
(208,'lparisian','darron46','ledner.victor','',22,162),
(209,'roob.hettie','mariana25','jkris','',471,64),
(210,'cristal77','hmurphy','kailee.wintheiser','',364,54),
(211,'sedrick62','jconnelly','uflatley','',175,234),
(212,'nathanael.tillman','giovanna75','lowe.norris','',160,192),
(213,'ohudson','legros.kari','graham.susana','',462,90),
(214,'leanna33','josiane79','nmurazik','',202,139),
(215,'dell77','hoppe.griffin','ddavis','a',416,149),
(216,'mante.juliet','gaston54','sreichert','',464,248),
(217,'rachel.mohr','cielo.blick','buckridge.guiseppe','',349,42),
(218,'wilderman.emery','augustus.borer','jedidiah.rowe','c',496,32),
(219,'xkozey','kbechtelar','howard.skiles','a',319,164),
(220,'wmclaughlin','wnienow','isai.nitzsche','a',190,253),
(221,'Ketua Gandul','Sekretaris Gandul','Bendahara Gandul','Anggota 1, Anggota 2',310,357),
(222,'kfriesen',NULL,NULL,NULL,NULL,1),
(223,'Tes Ketua BSU ','Tes Sekretaris BSU','Tes Bendahara BSU','Tes daftar anggota BSU',25,368);
/*!40000 ALTER TABLE `struktur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `sukses_edukasi`
--

DROP TABLE IF EXISTS `sukses_edukasi`;
/*!50001 DROP VIEW IF EXISTS `sukses_edukasi`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sukses_edukasi` (
  `id_edu` tinyint NOT NULL,
  `tempat` tinyint NOT NULL,
  `mulai` tinyint NOT NULL,
  `selesai` tinyint NOT NULL,
  `ket` tinyint NOT NULL,
  `pembicara` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tipe`
--

DROP TABLE IF EXISTS `tipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipe` (
  `id_tipe` int(11) NOT NULL AUTO_INCREMENT,
  `tipe_mitra` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tipe`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipe`
--

LOCK TABLES `tipe` WRITE;
/*!40000 ALTER TABLE `tipe` DISABLE KEYS */;
INSERT INTO `tipe` VALUES
(1,'Bank Sampah Unit'),
(2,' Nasabah');
/*!40000 ALTER TABLE `tipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `top_penjualan`
--

DROP TABLE IF EXISTS `top_penjualan`;
/*!50001 DROP VIEW IF EXISTS `top_penjualan`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `top_penjualan` (
  `tgl_jual` tinyint NOT NULL,
  `nama_sampah` tinyint NOT NULL,
  `jenis_sampah` tinyint NOT NULL,
  `berat` tinyint NOT NULL,
  `subtotal` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `top_setoran`
--

DROP TABLE IF EXISTS `top_setoran`;
/*!50001 DROP VIEW IF EXISTS `top_setoran`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `top_setoran` (
  `tanggal` tinyint NOT NULL,
  `nama_sampah` tinyint NOT NULL,
  `jenis_sampah` tinyint NOT NULL,
  `berat` tinyint NOT NULL,
  `subtotal` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `used_edu`
--

DROP TABLE IF EXISTS `used_edu`;
/*!50001 DROP VIEW IF EXISTS `used_edu`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `used_edu` (
  `id_edu` tinyint NOT NULL,
  `used_mitra` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `used_jenis`
--

DROP TABLE IF EXISTS `used_jenis`;
/*!50001 DROP VIEW IF EXISTS `used_jenis`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `used_jenis` (
  `id_jenis` tinyint NOT NULL,
  `used_sampah` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `used_pembeli`
--

DROP TABLE IF EXISTS `used_pembeli`;
/*!50001 DROP VIEW IF EXISTS `used_pembeli`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `used_pembeli` (
  `id_pembeli` tinyint NOT NULL,
  `used_jual` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `used_sampah_jual`
--

DROP TABLE IF EXISTS `used_sampah_jual`;
/*!50001 DROP VIEW IF EXISTS `used_sampah_jual`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `used_sampah_jual` (
  `id_sampah` tinyint NOT NULL,
  `used_jual` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `used_sampah_setor`
--

DROP TABLE IF EXISTS `used_sampah_setor`;
/*!50001 DROP VIEW IF EXISTS `used_sampah_setor`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `used_sampah_setor` (
  `id_sampah` tinyint NOT NULL,
  `used_setor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_daftar` datetime NOT NULL,
  `no_telp` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `id_role` int(11) NOT NULL,
  PRIMARY KEY (`id_user`),
  KEY `id_role` (`id_role`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES
(1,'quinton81@example.org','528806d1aaf783571ce1c01e7f3dd4d525c345aa','patrick.boyle','2021-09-03 20:49:34','89599110513',NULL,0,1),
(2,'osinski.valentina@example.org','7b3242aed3db412ec6e421830f2fd4ea9f1b95db','margot.watsica','2021-12-02 04:08:30','84062873646',NULL,1,4),
(3,'francesco.walter@example.com','b3046efa867ae6456b10a3bac57d68e2b2df7367','diamond08','2022-05-10 02:18:20','81306857731',NULL,1,3),
(4,'lkuvalis@example.org','251ddbf831710e095d766fa8ade84d2c48c4e3a8','koepp.jodie','2021-07-02 10:35:16','83322008421',NULL,1,3),
(5,'frederique51@example.com','8f6a814f008169c55fe514105851bcf9fc07df9c','cerdman','2021-08-03 14:04:27','85642291294','',0,1),
(6,'brycen.witting@example.com','f23a0adc43b90064b209f3215c1fb39220d9d4cd','bdare','2021-10-15 07:40:11','85971770609',NULL,0,1),
(7,'jerrold66@example.com','fd5c19f73f6f27f666b64ea43598058dd416952b','casper doang','2022-03-04 03:12:38','0874635283',NULL,0,4),
(9,'driver@gmail.com','$2y$10$8f/RUtLMOPS8isqDaSHlW.Far3LX.LTGuAfmtVEGQDVnY25mdhNJe','drivers','2022-05-31 07:48:24','087463528312','driver_gmail.png',1,3),
(10,'ketua@gmail.com','$2y$10$pARIF7MC8IF6mv4QoUoydeJp460MfEkmawuUHA24G1wA0S5xrpOYq','HALAH MBUH','2022-05-31 09:04:41','089876543333','ketua_gmail.png',1,2),
(11,'market@gmail.com','$2y$10$.LIJEiqYK11C6ba0CNdhXOjohv8o3iRNFIOruG.jjOQ19qKzrfjSC','market','2022-05-31 20:42:45','089765435432',NULL,1,1),
(12,'bendahara@gmail.com','$2y$10$BZ962.bhmPsAjkvNToRM5ON6r1Z0Wgzi3pnqX2jwp6Q9mxfQBApAm','Bendahara BSIRH','2022-06-09 09:59:30','89087968787',NULL,1,4);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `data_admin`
--

/*!50001 DROP TABLE IF EXISTS `data_admin`*/;
/*!50001 DROP VIEW IF EXISTS `data_admin`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ardhmalik`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `data_admin` AS select `data_user`.`id_user` AS `id_user`,`data_user`.`role` AS `role`,`data_user`.`email` AS `email`,`data_user`.`username` AS `username`,`data_user`.`password` AS `password`,`data_user`.`tgl_daftar` AS `tgl_daftar`,`data_user`.`foto` AS `foto`,`data_user`.`no_telp` AS `no_telp`,`data_user`.`status` AS `status` from `data_user` where `data_user`.`role` <> 'Ketua' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `data_edukasi`
--

/*!50001 DROP TABLE IF EXISTS `data_edukasi`*/;
/*!50001 DROP VIEW IF EXISTS `data_edukasi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ardhmalik`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `data_edukasi` AS select `edukasi`.`id_edu` AS `id_edu`,`edukasi`.`judul` AS `judul`,`edukasi`.`tempat` AS `tempat`,`edukasi`.`mulai` AS `mulai`,`edukasi`.`selesai` AS `selesai`,`edukasi`.`ket` AS `ket`,`user`.`id_user` AS `id_pem`,`user`.`username` AS `pembicara` from (`edukasi` join `user` on(`edukasi`.`id_user` = `user`.`id_user`)) order by `edukasi`.`selesai` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `data_mitra`
--

/*!50001 DROP TABLE IF EXISTS `data_mitra`*/;
/*!50001 DROP VIEW IF EXISTS `data_mitra`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ardhmalik`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `data_mitra` AS select `mitra`.`id_mitra` AS `id_mitra`,`mitra`.`tgl_daftar` AS `tgl_daftar`,`mitra`.`email` AS `email`,`mitra`.`username` AS `username`,`mitra`.`password` AS `password`,`tipe`.`tipe_mitra` AS `tipe_mitra`,`mitra`.`alamat` AS `alamat`,`mitra`.`no_telp` AS `no_telp`,`mitra`.`foto` AS `foto`,`mitra`.`status` AS `status`,`mitra`.`jadwal_jemput` AS `jadwal_jemput`,`rekening`.`id_rek` AS `id_rek` from ((`mitra` join `tipe` on(`mitra`.`id_tipe` = `tipe`.`id_tipe`)) join `rekening` on(`mitra`.`id_mitra` = `rekening`.`id_mitra`)) group by `mitra`.`id_mitra` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `data_pembayaran`
--

/*!50001 DROP TABLE IF EXISTS `data_pembayaran`*/;
/*!50001 DROP VIEW IF EXISTS `data_pembayaran`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ardhmalik`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `data_pembayaran` AS select `pembayaran`.`id_bayar` AS `id_bayar`,`pembayaran`.`tanggal` AS `tanggal`,`pembayaran`.`total_bayar` AS `total_bayar`,`pembayaran`.`bank` AS `bank`,`pembayaran`.`rek_tujuan` AS `rek_tujuan`,`rekening`.`atas_nama` AS `atas_nama`,`pembayaran`.`status` AS `status`,`pembayaran`.`bukti` AS `bukti`,`data_penjemputan`.`id_mitra` AS `id_mitra`,`pembayaran`.`id_jemput` AS `id_jemput` from ((`pembayaran` join `data_penjemputan` on(`pembayaran`.`id_jemput` = `data_penjemputan`.`id_jemput`)) join `rekening` on(`data_penjemputan`.`id_mitra` = `rekening`.`id_mitra`)) group by `pembayaran`.`id_bayar` order by `pembayaran`.`status` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `data_penjemputan`
--

/*!50001 DROP TABLE IF EXISTS `data_penjemputan`*/;
/*!50001 DROP VIEW IF EXISTS `data_penjemputan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ardhmalik`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `data_penjemputan` AS select `penjemputan`.`id_jemput` AS `id_jemput`,`penjemputan`.`jadwal_jemput` AS `jadwal_jemput`,`penjemputan`.`tanggal` AS `waktu_jemput`,`penjemputan`.`status` AS `status`,`data_setoran`.`id_setor` AS `id_setor`,`data_setoran`.`jenis_sampah` AS `jenis_sampah`,`data_setoran`.`nama_sampah` AS `nama_sampah`,`data_setoran`.`berat` AS `berat`,`data_setoran`.`id_mitra` AS `id_mitra`,`data_setoran`.`nama_mitra` AS `nama_mitra`,`data_setoran`.`alamat` AS `alamat`,`data_setoran`.`no_telp` AS `no_telp`,`data_setoran`.`tipe_mitra` AS `tipe_mitra` from (`penjemputan` join `data_setoran` on(`penjemputan`.`id_setor` = `data_setoran`.`id_setor`)) group by `penjemputan`.`id_jemput` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `data_penjualan`
--

/*!50001 DROP TABLE IF EXISTS `data_penjualan`*/;
/*!50001 DROP VIEW IF EXISTS `data_penjualan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ardhmalik`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `data_penjualan` AS select `penjualan`.`id_jual` AS `id_jual`,`penjualan`.`tgl_jual` AS `tgl_jual`,`penjualan`.`tgl_konfirmasi` AS `tgl_konfirmasi`,`data_sampah`.`jenis_sampah` AS `jenis_sampah`,`data_sampah`.`nama` AS `nama_sampah`,`penjualan`.`harga` AS `harga`,`penjualan`.`berat` AS `berat`,`penjualan`.`subtotal` AS `subtotal`,`pembeli`.`nama` AS `nama_pembeli`,`pembeli`.`no_telp` AS `no_telp`,`pembeli`.`alamat` AS `alamat`,`penjualan`.`status` AS `status` from ((`penjualan` join `data_sampah` on(`penjualan`.`id_sampah` = `data_sampah`.`id_sampah`)) join `pembeli` on(`penjualan`.`id_pembeli` = `pembeli`.`id_pembeli`)) group by `penjualan`.`id_jual` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `data_sampah`
--

/*!50001 DROP TABLE IF EXISTS `data_sampah`*/;
/*!50001 DROP VIEW IF EXISTS `data_sampah`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ardhmalik`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `data_sampah` AS select `sampah`.`id_sampah` AS `id_sampah`,`jenis`.`jenis_sampah` AS `jenis_sampah`,`sampah`.`nama` AS `nama`,`sampah`.`harga` AS `harga`,`sampah`.`gambar` AS `gambar` from (`sampah` join `jenis` on(`sampah`.`id_jenis` = `jenis`.`id_jenis`)) group by `sampah`.`id_sampah` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `data_setoran`
--

/*!50001 DROP TABLE IF EXISTS `data_setoran`*/;
/*!50001 DROP VIEW IF EXISTS `data_setoran`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ardhmalik`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `data_setoran` AS select `setoran`.`id_setor` AS `id_setor`,`setoran`.`tanggal` AS `tanggal`,`setoran`.`berat` AS `berat`,`setoran`.`subtotal` AS `subtotal`,`setoran`.`jadwal_jemput` AS `jadwal_jemput`,`setoran`.`status` AS `status`,`setoran`.`id_sampah` AS `id_sampah`,`data_sampah`.`jenis_sampah` AS `jenis_sampah`,`data_sampah`.`nama` AS `nama_sampah`,`data_sampah`.`harga` AS `harga`,`setoran`.`id_mitra` AS `id_mitra`,`data_mitra`.`username` AS `nama_mitra`,`data_mitra`.`tipe_mitra` AS `tipe_mitra`,`data_mitra`.`alamat` AS `alamat`,`data_mitra`.`no_telp` AS `no_telp` from ((`setoran` join `data_mitra` on(`setoran`.`id_mitra` = `data_mitra`.`id_mitra`)) join `data_sampah` on(`setoran`.`id_sampah` = `data_sampah`.`id_sampah`)) group by `setoran`.`id_setor` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `data_user`
--

/*!50001 DROP TABLE IF EXISTS `data_user`*/;
/*!50001 DROP VIEW IF EXISTS `data_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ardhmalik`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `data_user` AS select `user`.`id_user` AS `id_user`,`role`.`role` AS `role`,`user`.`email` AS `email`,`user`.`username` AS `username`,`user`.`password` AS `password`,`user`.`tgl_daftar` AS `tgl_daftar`,`user`.`foto` AS `foto`,`user`.`no_telp` AS `no_telp`,`user`.`status` AS `status` from (`user` join `role` on(`user`.`id_role` = `role`.`id_role`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jumlah_mitra`
--

/*!50001 DROP TABLE IF EXISTS `jumlah_mitra`*/;
/*!50001 DROP VIEW IF EXISTS `jumlah_mitra`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ardhmalik`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `jumlah_mitra` AS select current_timestamp() AS `tanggal`,(select count(0) from `mitra` where `mitra`.`id_tipe` = 1) AS `mitra_bsu`,(select count(0) from `mitra` where `mitra`.`id_tipe` = 2) AS `mitra_nsb`,(select count(0) from `mitra`) AS `total_mitra` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jumlah_pembayaran`
--

/*!50001 DROP TABLE IF EXISTS `jumlah_pembayaran`*/;
/*!50001 DROP VIEW IF EXISTS `jumlah_pembayaran`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ardhmalik`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `jumlah_pembayaran` AS select current_timestamp() AS `tanggal`,(select count(0) from `data_pembayaran` where `data_pembayaran`.`status` = 0) AS `tunggu_bayar`,(select count(0) from `data_pembayaran` where `data_pembayaran`.`status` = 1) AS `sukses_bayar`,(select count(0) from `data_pembayaran`) AS `total_bayar` group by current_timestamp() */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jumlah_penjemputan`
--

/*!50001 DROP TABLE IF EXISTS `jumlah_penjemputan`*/;
/*!50001 DROP VIEW IF EXISTS `jumlah_penjemputan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ardhmalik`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `jumlah_penjemputan` AS select current_timestamp() AS `tanggal`,(select count(0) from `data_penjemputan` where `data_penjemputan`.`status` = 0) AS `tunggu_jemput`,(select count(0) from `data_penjemputan` where `data_penjemputan`.`status` = 1) AS `sukses_jemput`,(select count(0) from `data_penjemputan`) AS `total_jemput` group by current_timestamp() */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jumlah_penjualan`
--

/*!50001 DROP TABLE IF EXISTS `jumlah_penjualan`*/;
/*!50001 DROP VIEW IF EXISTS `jumlah_penjualan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ardhmalik`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `jumlah_penjualan` AS select current_timestamp() AS `tanggal`,(select count(0) from `data_penjualan` where `data_penjualan`.`status` = 0) AS `tunggu_jual`,(select count(0) from `data_penjualan` where `data_penjualan`.`status` = 1) AS `sukses_jual`,(select count(0) from `data_penjualan`) AS `total_jual` group by current_timestamp() */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jumlah_setoran`
--

/*!50001 DROP TABLE IF EXISTS `jumlah_setoran`*/;
/*!50001 DROP VIEW IF EXISTS `jumlah_setoran`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ardhmalik`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `jumlah_setoran` AS select current_timestamp() AS `tanggal`,(select count(0) from `data_setoran` where `data_setoran`.`status` = 'Penjemputan') AS `tunggu_jemput`,(select count(0) from `data_setoran` where `data_setoran`.`status` = 'Pembayaran') AS `tunggu_bayar`,(select count(0) from `data_setoran` where `data_setoran`.`status` = 'Selesai') AS `setor_sukses`,(select count(0) from `data_setoran`) AS `total_setor` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `proses_edukasi`
--

/*!50001 DROP TABLE IF EXISTS `proses_edukasi`*/;
/*!50001 DROP VIEW IF EXISTS `proses_edukasi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ardhmalik`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `proses_edukasi` AS select `data_edukasi`.`id_edu` AS `id_edu`,`data_edukasi`.`tempat` AS `tempat`,`data_edukasi`.`mulai` AS `mulai`,`data_edukasi`.`selesai` AS `selesai`,`data_edukasi`.`ket` AS `ket`,`data_edukasi`.`pembicara` AS `pembicara` from `data_edukasi` where `data_edukasi`.`selesai` <= current_timestamp() */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sukses_edukasi`
--

/*!50001 DROP TABLE IF EXISTS `sukses_edukasi`*/;
/*!50001 DROP VIEW IF EXISTS `sukses_edukasi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ardhmalik`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sukses_edukasi` AS select `data_edukasi`.`id_edu` AS `id_edu`,`data_edukasi`.`tempat` AS `tempat`,`data_edukasi`.`mulai` AS `mulai`,`data_edukasi`.`selesai` AS `selesai`,`data_edukasi`.`ket` AS `ket`,`data_edukasi`.`pembicara` AS `pembicara` from `data_edukasi` where `data_edukasi`.`selesai` > current_timestamp() */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `top_penjualan`
--

/*!50001 DROP TABLE IF EXISTS `top_penjualan`*/;
/*!50001 DROP VIEW IF EXISTS `top_penjualan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ardhmalik`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_penjualan` AS select `data_penjualan`.`tgl_jual` AS `tgl_jual`,`data_penjualan`.`nama_sampah` AS `nama_sampah`,`data_penjualan`.`jenis_sampah` AS `jenis_sampah`,`data_penjualan`.`berat` AS `berat`,`data_penjualan`.`subtotal` AS `subtotal` from `data_penjualan` where `data_penjualan`.`status` = 1 order by `data_penjualan`.`subtotal` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `top_setoran`
--

/*!50001 DROP TABLE IF EXISTS `top_setoran`*/;
/*!50001 DROP VIEW IF EXISTS `top_setoran`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ardhmalik`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_setoran` AS select `data_setoran`.`tanggal` AS `tanggal`,`data_setoran`.`nama_sampah` AS `nama_sampah`,`data_setoran`.`jenis_sampah` AS `jenis_sampah`,`data_setoran`.`berat` AS `berat`,`data_setoran`.`subtotal` AS `subtotal` from `data_setoran` where `data_setoran`.`status` = 1 order by `data_setoran`.`subtotal` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `used_edu`
--

/*!50001 DROP TABLE IF EXISTS `used_edu`*/;
/*!50001 DROP VIEW IF EXISTS `used_edu`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ardhmalik`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `used_edu` AS select `mitra`.`id_edu` AS `id_edu`,count(`mitra`.`id_mitra`) AS `used_mitra` from `mitra` group by `mitra`.`id_edu` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `used_jenis`
--

/*!50001 DROP TABLE IF EXISTS `used_jenis`*/;
/*!50001 DROP VIEW IF EXISTS `used_jenis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ardhmalik`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `used_jenis` AS select `sampah`.`id_jenis` AS `id_jenis`,count(`sampah`.`id_sampah`) AS `used_sampah` from `sampah` group by `sampah`.`id_jenis` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `used_pembeli`
--

/*!50001 DROP TABLE IF EXISTS `used_pembeli`*/;
/*!50001 DROP VIEW IF EXISTS `used_pembeli`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ardhmalik`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `used_pembeli` AS select `penjualan`.`id_pembeli` AS `id_pembeli`,count(`penjualan`.`id_jual`) AS `used_jual` from `penjualan` group by `penjualan`.`id_pembeli` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `used_sampah_jual`
--

/*!50001 DROP TABLE IF EXISTS `used_sampah_jual`*/;
/*!50001 DROP VIEW IF EXISTS `used_sampah_jual`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ardhmalik`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `used_sampah_jual` AS select `penjualan`.`id_sampah` AS `id_sampah`,count(`penjualan`.`id_jual`) AS `used_jual` from `penjualan` group by `penjualan`.`id_sampah` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `used_sampah_setor`
--

/*!50001 DROP TABLE IF EXISTS `used_sampah_setor`*/;
/*!50001 DROP VIEW IF EXISTS `used_sampah_setor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ardhmalik`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `used_sampah_setor` AS select `setoran`.`id_sampah` AS `id_sampah`,count(`setoran`.`id_setor`) AS `used_setor` from `setoran` group by `setoran`.`id_sampah` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-12 22:30:50
