-- MySQL dump 10.16  Distrib 10.1.32-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: man2_chatbot
-- ------------------------------------------------------
-- Server version	10.1.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `data_pegawai`
--

DROP TABLE IF EXISTS `data_pegawai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_pegawai` (
  `id_pegawai` int(11) NOT NULL AUTO_INCREMENT,
  `nip_pegawai` varchar(20) DEFAULT NULL,
  `nama_pegawai` varchar(65) DEFAULT NULL,
  `jabatan_pegawai` varchar(15) DEFAULT NULL,
  `kd_mata_pelajaran_pegawai` varchar(20) DEFAULT NULL,
  `jenis_kelamin_pegawai` enum('L','P') NOT NULL,
  `username_pegawai` varchar(20) DEFAULT NULL,
  `password_pegawai` varchar(255) DEFAULT NULL,
  `alamat_pegawai` varchar(255) DEFAULT NULL,
  `tempat_lahir_pegawai` varchar(30) DEFAULT NULL,
  `tanggal_lahir_pegawai` date DEFAULT NULL,
  `no_handphone_pegawai` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_pegawai`),
  KEY `jabatan_pegawai` (`jabatan_pegawai`),
  KEY `nama_mata_pelajaran_pegawai` (`kd_mata_pelajaran_pegawai`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_pegawai`
--

LOCK TABLES `data_pegawai` WRITE;
/*!40000 ALTER TABLE `data_pegawai` DISABLE KEYS */;
INSERT INTO `data_pegawai` VALUES (1,'1111','admin','admin',NULL,'','admin','$2y$10$MgSFgKlI3s1KdLcbp6TLAuIMYmjXfIIQ190VRKNi9yUPVkrdqeAMq',NULL,NULL,NULL,NULL),(94,'3237762664300033','RUKMI','guru','aa','P','3237762664300033','$2a$10$5zyP.5OctDLSmv8N965lm.EBfKNRklJWLy2qSDbq2dr8sf5zQIwKi',NULL,'BLORA','1984-09-05','085878420005'),(95,'197101192006042008','RATRIANI SARJONO','guru','antro','L','197101192006042008','$2a$10$qINVkEUvKmI3QMAqhEYuX.UjjrGu8wO5kJZdH0DkU/I1mPkuZD1zW',NULL,'SEMARANG','1971-01-19','085878420006'),(96,'6451749650300022','Ulfia Khoirotunnisa','guru','aqh','P','6451749650300022','$2a$10$qbszllacImWzJCaNgi1RIuxR42c0TmRQXJSRb0pMUQL4LzAqevZn2',NULL,'Semarang','1992-11-24','085878420007'),(97,'296611082007011021','Aan Rahmaani Mangeshkar','guru','bindo','P','296611082007011021','$2a$10$h5a6yUVucNwOi7nGJ0Xl1entd.riEBW5nx0HP4exjPgvLLOpYWQ.i',NULL,'Semarang','1989-09-18','085878420008'),(98,'196611082007011021','Ulfia Isnaeni','guru','bing','P','196611082007011021','$2a$10$5krrelONhQtgeVrcXUy0J.q7eNqYEHoTw/4gXjnR.4zVMFYv1pdXy',NULL,'Demak','1990-11-17','085878420009'),(99,'7447749650200012','Beni Anggoro Setyawan','guru','bio','L','7447749650200012','$2a$10$58sKdNiVf.R7g/xf1aGNreZ391Vw5lSZ0vJGC.1b4MMckZtQc0xXe',NULL,'Salatiga','1988-10-04','085878420010'),(100,'1833735637200032','ANDREAS SAYAT','guru','bjawa','L','1833735637200032','$2a$10$wNwLoZphpvEa2UZ21UaVZ.ZKkz7hjFARpvUN4N64T4h0MoJCqp1ca',NULL,'BOYOLALI','1957-10-08','085878420011'),(101,'197101152002121008','WIBOWO TENGARAN','guru','bjep','L','197101152002121008','$2a$10$d7ZovnbrGjLsO2G72Z0M3u0jI.m6iJEuYHAxPPfjKL4e0RLx5UWRa',NULL,'SEMARANG','1971-01-15','085878420012'),(102,'9440744648200013','BAMBANG MURTIOSO','guru','bjer','L','9440744648200013','$2a$10$UwMc6VnPufzSwrzbVHGA0OZq195o5oDL/.ZBeiL6qyVTfux9qZi.u',NULL,'BEKASI','1966-11-08','085878420013'),(103,'198411202010011010','AMBA','guru','eko','L','198411202010011010','$2a$10$DHu8UCF1zxYjHYT2pyM/Ze1Kg1Qgvh/GVLxlkPeIB1NDB6D0dmGqe',NULL,'AMBON','1984-11-20','085878420014'),(104,'195811131987012001','KADARWATI','guru','fis','P','195811131987012001','$2a$10$pCfNSFfB7TQKC72vAUgvGevUlgdcfrvQbOqEIO4dvjBPI4t3iT/ba',NULL,'SEMARANG','1959-11-13','085878420015'),(105,'197705302002122005','FIRDA MURTIASTUTI','guru','fkh','P','197705302002122005','$2a$10$DVIw/T7KGC/MPqzR.Y4BFuofx4GWNp/SIkw4ycfolZSHEULo9BiT6',NULL,'BOYOLALI','1977-05-30','085878420016'),(106,'196610121989012002','MAHAN ASSAGAFF','guru','ilhad','L','196610121989012002','$2a$10$Kr1V/FumOXiuyGbxG//2auX5EmtyPoKKlLRbQlJx0DO4SC4qHpclu',NULL,'SAPARUA','1966-10-12','085878420018'),(107,'196905191994032006','MARIA SUHARSINI','guru','ilkal','P','196905191994032006','$2a$10$CJ61uA66RLcOPNJAiM9BouvCjNI5iYkpyDH9Tvo7h6pljXmLx0NNy',NULL,'SALATIGA','1969-05-19','085878420019'),(108,'197311181999031002','NGAIDIN','guru','iltaf','L','197311181999031002','$2a$10$NNLuniFnqdXnT3VYHhZ2IeXC2Ou.CuxTBalVWcHpWv8xHD7qw/yt.',NULL,'SEMARANG','1973-11-18','085878420020'),(109,'197408282002122003','NUR ENDAH SETYORINI','guru','kim','P','197408282002122003','$2a$10$WVrySeYZfw9Teb0dt8/Ey.9IQ0Q1cgHedJcUhlUDbfO8XwaPHKuD6',NULL,'BOYOLALI','1974-08-28','085878420021'),(110,'196502211990032006','NUR ROCHMAH','guru','mtk','P','196502211990032006','$2a$10$7SIWSAmO.RvnskIRo3f2yO6Ekld0joJESWSosF5lyfsqRqDnR4d/2',NULL,'KLATEN','1965-02-21','085878420022'),(111,'197007152002121009','PARYADI','guru','mtkIPA','P','197007152002121009','$2a$10$F0KNGahRPtOcUrdLDRiHeOGtK4KRAlsQky3wy5X6invcWh6tN0QSW',NULL,'SLEMAN','1970-07-15','085878420023'),(112,'198001252006042006','PAULINA LINDA PERWITANINGRUM','guru','penjas','P','198001252006042006','$2a$10$cN5rFH6Q7.usDK/2N2dZoOztuRz4EDsoP8J2S43KBO.AJtSSlDRpe',NULL,'SALATIGA','1980-01-25','085878420024'),(113,'196006261986032007','PENI SETIYANINGSIH','guru','pkk','P','196006261986032007','$2a$10$1Bxq0mQgFJX2aRWrsjD6deJo6EDxAItT9CA9p20L.3U.l0FKK3712',NULL,'PATI','1960-06-26','085878420025'),(114,'196508211994122002','PRAMASTUTI SWASTI MURDANI','guru','pkn','P','196508211994122002','$2a$10$ibwo3Sokudkeor5EM0tr6eoo3xQoP4lItR1JY8EzZVc2aPm7hBvte',NULL,'PURWOREJO','1965-08-20','085878420026'),(115,'196801251995122001','PUNIYEM','guru','ppmb','P','196801251995122001','$2a$10$JuB1WOR6Q/9sLMwf3aOUPOcz.Ahvv3eHqlnYwz5HgVKnu3GaBIACy',NULL,'SALATIGA','1968-01-25','085878420027'),(116,'196908162002121004','ROHMAT','guru','sasind','L','196908162002121004','$2a$10$65UWPR4QgfO0zilpAnIeAeljIpqu2gCpHt56d0LGpeIGuRCOdKpWO',NULL,'SEMARANG','1969-08-16','085878420028');
/*!40000 ALTER TABLE `data_pegawai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_sekolah`
--

DROP TABLE IF EXISTS `data_sekolah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_sekolah` (
  `id_data_sekolah` varchar(11) NOT NULL,
  `nama_sekolah_data_sekolah` varchar(25) DEFAULT NULL,
  `nip_kepala_sekolah_data_sekolah` varchar(20) DEFAULT NULL,
  `nama_kepala_sekolah_data_sekolah` varchar(255) DEFAULT NULL,
  `tanggal_jadi_kepala_sekolah_data_sekolah` date DEFAULT NULL,
  `tahun_pelajaran_sekolah_data_sekolah` varchar(15) DEFAULT NULL,
  `foto_kepala_sekolah_data_sekolah` varchar(15) DEFAULT NULL,
  `alamat_sekolah_data_sekolah` varchar(255) DEFAULT NULL,
  `asal_kota_sekolah_data_sekolah` varchar(255) DEFAULT NULL,
  `email_sekolah_data_sekolah` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_data_sekolah`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_sekolah`
--

LOCK TABLES `data_sekolah` WRITE;
/*!40000 ALTER TABLE `data_sekolah` DISABLE KEYS */;
INSERT INTO `data_sekolah` VALUES ('man2jogja','MAN 2 Yogyakarta','7826314225','Drs. H. In Amullah M.A.','2018-02-14','2018',NULL,'Jl. K.H Ahmad Dahlan No. 130 Yogyakarta','Yogyakarta','Jl. K.H Ahmad Dahlan No. 130 Yogyakarta');
/*!40000 ALTER TABLE `data_sekolah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_siswa`
--

DROP TABLE IF EXISTS `data_siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_siswa` (
  `id_siswa` int(7) NOT NULL AUTO_INCREMENT,
  `nisn_siswa` varchar(25) DEFAULT NULL,
  `nis_siswa` varchar(20) DEFAULT NULL,
  `nama_siswa` varchar(65) DEFAULT NULL,
  `jenis_kelamin_siswa` enum('L','P') DEFAULT NULL,
  `kd_kelas_daftar_siswa` varchar(15) DEFAULT NULL,
  `jabatan_siswa` varchar(25) NOT NULL,
  `alamat_siswa` varchar(20) DEFAULT NULL,
  `tempat_lahir_siswa` varchar(25) DEFAULT NULL,
  `tanggal_lahir_siswa` date DEFAULT NULL,
  `no_handphone_siswa` varchar(15) DEFAULT NULL,
  `anak_ke_siswa` varchar(3) DEFAULT NULL,
  `username_siswa` varchar(20) DEFAULT NULL,
  `password_siswa` varchar(255) DEFAULT NULL,
  `agama_siswa` varchar(20) DEFAULT NULL,
  `status_dalam_keluarga_siswa` varchar(15) DEFAULT NULL,
  `diterima_tanggal_siswa` date DEFAULT NULL,
  `diterima_semester_siswa` varchar(1) DEFAULT NULL,
  `sekolah_asal_nama_siswa` varchar(25) DEFAULT NULL,
  `sekolah_asal_alamat_siswa` varchar(255) DEFAULT NULL,
  `stl_tahun_siswa` varchar(5) DEFAULT NULL,
  `stl_nomor_siswa` varchar(50) DEFAULT NULL,
  `orangtua_nama_ayah_siswa` varchar(65) DEFAULT NULL,
  `orangtua_nama_ibu_siswa` varchar(65) DEFAULT NULL,
  `orangtua_alamat_siswa` varchar(255) DEFAULT NULL,
  `orangtua_telepon_siswa` varchar(15) DEFAULT NULL,
  `orangtua_pekerjaan_ayah_siswa` varchar(25) DEFAULT NULL,
  `orangtua_pekerjaan_ibu_siswa` varchar(25) DEFAULT NULL,
  `username_wali` varchar(20) DEFAULT NULL,
  `password_wali` varchar(255) DEFAULT NULL,
  `nama_wali` varchar(65) DEFAULT NULL,
  `pekerjaan_wali` varchar(25) DEFAULT NULL,
  `jenis_kelamin_wali` enum('L','P') DEFAULT NULL,
  `alamat_wali` varchar(255) DEFAULT NULL,
  `tempat_lahir_wali` varchar(25) DEFAULT NULL,
  `tanggal_lahir_wali` date DEFAULT NULL,
  `no_handphone_wali` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_siswa`),
  KEY `jabatan_siswa` (`jabatan_siswa`),
  KEY `nis_siswa` (`nis_siswa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_siswa`
--

LOCK TABLES `data_siswa` WRITE;
/*!40000 ALTER TABLE `data_siswa` DISABLE KEYS */;
INSERT INTO `data_siswa` VALUES (4,'1045310829','10888','Addisty','P','10ipa1','siswa','Gamping','Karanganyar','1999-07-18','0847283712832','4','10888','$2y$10$r4hTh/2Gpanz1MUY4J46COngTaWfWoI7p03ItED/W1onMN.MBvmi.','Islam','Anak','0000-00-00',NULL,'','','','','','','','','','','10888','$2y$10$r4hTh/2Gpanz1MUY4J46COngTaWfWoI7p03ItED/W1onMN.MBvmi.','','','','','','0000-00-00',''),(5,'4045310829','10900','Addisty Ria Puji','P','10ips1','siswa','Jakarta','Bandung','1999-05-11','0847283712832','2','10900','$2y$10$IxxSsj8y7fHt/4MH.yjPKu0c8pSbnw9WpwK6bT8Z9IArkhIGhs7L.','Islam','Anak','0000-00-00',NULL,'','','','','','','','','','','10900','$2y$10$IxxSsj8y7fHt/4MH.yjPKu0c8pSbnw9WpwK6bT8Z9IArkhIGhs7L.','','','','','','0000-00-00','');
/*!40000 ALTER TABLE `data_siswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_wali`
--

DROP TABLE IF EXISTS `data_wali`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_wali` (
  `id_wali` int(11) NOT NULL AUTO_INCREMENT,
  `nis_siswa_wali` varchar(25) DEFAULT NULL,
  `username_wali` varchar(25) DEFAULT NULL,
  `password_wali` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_wali`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_wali`
--

LOCK TABLES `data_wali` WRITE;
/*!40000 ALTER TABLE `data_wali` DISABLE KEYS */;
INSERT INTO `data_wali` VALUES (3,'10888','10888wali','$2y$10$r4hTh/2Gpanz1MUY4J46COngTaWfWoI7p03ItED/W1onMN.MBvmi.'),(4,'10900','10900wali','$2y$10$IxxSsj8y7fHt/4MH.yjPKu0c8pSbnw9WpwK6bT8Z9IArkhIGhs7L.');
/*!40000 ALTER TABLE `data_wali` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_website`
--

DROP TABLE IF EXISTS `data_website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_website` (
  `id_data_website` int(11) NOT NULL AUTO_INCREMENT,
  `hubungi_kami_data_website` varchar(15) DEFAULT NULL,
  `email_data_website` varchar(100) DEFAULT NULL,
  `marquee_data_website` tinytext,
  `judul_konten_slide_data_website` tinytext,
  `isi_konten_slide_data_website` text,
  `gambar_slide_data_website` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_data_website`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_website`
--

LOCK TABLES `data_website` WRITE;
/*!40000 ALTER TABLE `data_website` DISABLE KEYS */;
INSERT INTO `data_website` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `data_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guru_kompetensi_dasar_smt1`
--

DROP TABLE IF EXISTS `guru_kompetensi_dasar_smt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guru_kompetensi_dasar_smt1` (
  `id_guru_kompetensi_dasar_smt1` int(11) NOT NULL AUTO_INCREMENT,
  `guru_kompetensi_dasar_pengetahuan_noKI_smt1` varchar(25) DEFAULT NULL,
  `guru_kompetensi_dasar_pengetahuan_noKD_smt1` varchar(25) DEFAULT NULL,
  `guru_kompetensi_dasar_pengetahuan_noDKD_smt1` text,
  `guru_kompetensi_dasar_nip_pegawai_smt1` varchar(20) DEFAULT NULL,
  `guru_kompetensi_dasar_kd_mata_pelajaran_smt1` varchar(20) DEFAULT NULL,
  `guru_kompetensi_dasar_kd_kelas_daftar_smt1` varchar(15) DEFAULT NULL,
  `guru_kompetensi_dasar_semester_smt1` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_guru_kompetensi_dasar_smt1`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guru_kompetensi_dasar_smt1`
--

LOCK TABLES `guru_kompetensi_dasar_smt1` WRITE;
/*!40000 ALTER TABLE `guru_kompetensi_dasar_smt1` DISABLE KEYS */;
INSERT INTO `guru_kompetensi_dasar_smt1` VALUES (1,'3','3.1','Menghitung Bintang','3237762664300033','aa','10ipa1',1),(2,'3','3.2','','3237762664300033','aa','10ipa1',1),(3,'3','3.3','','3237762664300033','aa','10ipa1',1),(4,'3','3.4','','3237762664300033','aa','10ipa1',1),(5,'3','3.5','','3237762664300033','aa','10ipa1',1),(6,'3','3.6','','3237762664300033','aa','10ipa1',1),(7,'3','3.7','','3237762664300033','aa','10ipa1',1),(8,'3','3.8','','3237762664300033','aa','10ipa1',1),(9,'3','3.9','','3237762664300033','aa','10ipa1',1),(10,'3','3.10','','3237762664300033','aa','10ipa1',1),(11,'3','3.1','','296611082007011021','bindo','10ipa1',1),(12,'3','3.2','','296611082007011021','bindo','10ipa1',1),(13,'3','3.3','','296611082007011021','bindo','10ipa1',1),(14,'3','3.4','','296611082007011021','bindo','10ipa1',1),(15,'3','3.5','','296611082007011021','bindo','10ipa1',1),(16,'3','3.6','','296611082007011021','bindo','10ipa1',1),(17,'3','3.7','','296611082007011021','bindo','10ipa1',1),(18,'3','3.8','','296611082007011021','bindo','10ipa1',1),(19,'3','3.9','','296611082007011021','bindo','10ipa1',1),(20,'3','3.10','','296611082007011021','bindo','10ipa1',1),(21,'3','3.1','','296611082007011021','bindo','10ips1',1),(22,'3','3.2','','296611082007011021','bindo','10ips1',1),(23,'3','3.3','','296611082007011021','bindo','10ips1',1),(24,'3','3.4','','296611082007011021','bindo','10ips1',1),(25,'3','3.5','','296611082007011021','bindo','10ips1',1),(26,'3','3.6','','296611082007011021','bindo','10ips1',1),(27,'3','3.7','','296611082007011021','bindo','10ips1',1),(28,'3','3.8','','296611082007011021','bindo','10ips1',1),(29,'3','3.9','','296611082007011021','bindo','10ips1',1),(30,'3','3.10','','296611082007011021','bindo','10ips1',1);
/*!40000 ALTER TABLE `guru_kompetensi_dasar_smt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guru_kompetensi_dasar_smt2`
--

DROP TABLE IF EXISTS `guru_kompetensi_dasar_smt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guru_kompetensi_dasar_smt2` (
  `id_guru_kompetensi_dasar_smt2` int(11) NOT NULL AUTO_INCREMENT,
  `guru_kompetensi_dasar_pengetahuan_noKI_smt2` varchar(25) DEFAULT NULL,
  `guru_kompetensi_dasar_pengetahuan_noKD_smt2` varchar(25) DEFAULT NULL,
  `guru_kompetensi_dasar_pengetahuan_noDKD_smt2` text,
  `guru_kompetensi_dasar_nip_pegawai_smt2` varchar(20) DEFAULT NULL,
  `guru_kompetensi_dasar_kd_mata_pelajaran_smt2` varchar(20) DEFAULT NULL,
  `guru_kompetensi_dasar_kd_kelas_daftar_smt2` varchar(15) DEFAULT NULL,
  `guru_kompetensi_dasar_semester_smt2` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_guru_kompetensi_dasar_smt2`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guru_kompetensi_dasar_smt2`
--

LOCK TABLES `guru_kompetensi_dasar_smt2` WRITE;
/*!40000 ALTER TABLE `guru_kompetensi_dasar_smt2` DISABLE KEYS */;
INSERT INTO `guru_kompetensi_dasar_smt2` VALUES (1,'3','3.11','','3237762664300033','aa','10ipa1',2),(2,'3','3.12','','3237762664300033','aa','10ipa1',2),(3,'3','3.13','','3237762664300033','aa','10ipa1',2),(4,'3','3.14','','3237762664300033','aa','10ipa1',2),(5,'3','3.15','','3237762664300033','aa','10ipa1',2),(6,'3','3.16','','3237762664300033','aa','10ipa1',2),(7,'3','3.17','','3237762664300033','aa','10ipa1',2),(8,'3','3.18','','3237762664300033','aa','10ipa1',2),(9,'3','3.19','','3237762664300033','aa','10ipa1',2),(10,'3','3.20','','3237762664300033','aa','10ipa1',2),(11,'3','3.11','','296611082007011021','bindo','10ipa1',2),(12,'3','3.12','','296611082007011021','bindo','10ipa1',2),(13,'3','3.13','','296611082007011021','bindo','10ipa1',2),(14,'3','3.14','','296611082007011021','bindo','10ipa1',2),(15,'3','3.15','','296611082007011021','bindo','10ipa1',2),(16,'3','3.16','','296611082007011021','bindo','10ipa1',2),(17,'3','3.17','','296611082007011021','bindo','10ipa1',2),(18,'3','3.18','','296611082007011021','bindo','10ipa1',2),(19,'3','3.19','','296611082007011021','bindo','10ipa1',2),(20,'3','3.20','','296611082007011021','bindo','10ipa1',2),(21,'3','3.11','','296611082007011021','bindo','10ips1',2),(22,'3','3.12','','296611082007011021','bindo','10ips1',2),(23,'3','3.13','','296611082007011021','bindo','10ips1',2),(24,'3','3.14','','296611082007011021','bindo','10ips1',2),(25,'3','3.15','','296611082007011021','bindo','10ips1',2),(26,'3','3.16','','296611082007011021','bindo','10ips1',2),(27,'3','3.17','','296611082007011021','bindo','10ips1',2),(28,'3','3.18','','296611082007011021','bindo','10ips1',2),(29,'3','3.19','','296611082007011021','bindo','10ips1',2),(30,'3','3.20','','296611082007011021','bindo','10ips1',2);
/*!40000 ALTER TABLE `guru_kompetensi_dasar_smt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jabatan`
--

DROP TABLE IF EXISTS `jabatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jabatan` (
  `kd_jabatan` varchar(25) NOT NULL,
  `nama_jabatan` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`kd_jabatan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jabatan`
--

LOCK TABLES `jabatan` WRITE;
/*!40000 ALTER TABLE `jabatan` DISABLE KEYS */;
INSERT INTO `jabatan` VALUES ('admin','Administrator'),('bk','BK'),('bot','BOT'),('guru','Guru'),('siswa','Siswa');
/*!40000 ALTER TABLE `jabatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kelas_daftar`
--

DROP TABLE IF EXISTS `kelas_daftar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kelas_daftar` (
  `id_kelas_daftar` int(11) NOT NULL AUTO_INCREMENT,
  `kd_kelas_daftar` varchar(15) DEFAULT NULL,
  `nama_kelas_daftar` varchar(15) NOT NULL,
  `kelompok_kelas_daftar` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_kelas_daftar`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kelas_daftar`
--

LOCK TABLES `kelas_daftar` WRITE;
/*!40000 ALTER TABLE `kelas_daftar` DISABLE KEYS */;
INSERT INTO `kelas_daftar` VALUES (1,'10ipa1','10 IPA 1','IPA'),(2,'10ipa2','10 IPA 2','IPA'),(5,'10ips1','10 IPS 1','IPS'),(6,'10ips2','10 IPS 2','IPS'),(9,'10agama1','10 AGAMA 1','AGAMA'),(10,'10agama2','10 AGAMA 2','AGAMA'),(13,'10bahasa1','10 BAHASA 1','BAHASA'),(14,'10bahasa2','10 BAHASA 2','BAHASA'),(17,'11ipa1','11 IPA 1','IPA'),(18,'11ipa2','11 IPA 2','IPA'),(21,'11ips1','11 IPS 1','IPS'),(22,'11ips2','11 IPS 2','IPS'),(25,'11agama1','11 AGAMA 1','AGAMA'),(26,'11agama2','11 AGAMA 2','AGAMA'),(29,'11bahasa1','11 BAHASA 1','BAHASA'),(30,'11bahasa2','11 BAHASA 2','BAHASA'),(33,'12ipa1','12 IPA 1','IPA'),(34,'12ipa2','12 IPA 2','IPA'),(37,'12ips1','12 IPS 1','IPS'),(38,'12ips2','12 IPS 2','IPS'),(41,'12agama1','12 AGAMA 1','AGAMA'),(42,'12agama2','12 AGAMA 2','AGAMA'),(45,'12bahasa1','12 BAHASA 1','BAHASA'),(46,'12bahasa2','12 BAHASA 2','BAHASA');
/*!40000 ALTER TABLE `kelas_daftar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kelas_transaksi`
--

DROP TABLE IF EXISTS `kelas_transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kelas_transaksi` (
  `id_kelas_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `kd_kelas_daftar_kelas_transaksi` varchar(20) DEFAULT NULL,
  `nip_pegawai_wali_kelas_transaksi` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_kelas_transaksi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kelas_transaksi`
--

LOCK TABLES `kelas_transaksi` WRITE;
/*!40000 ALTER TABLE `kelas_transaksi` DISABLE KEYS */;
INSERT INTO `kelas_transaksi` VALUES (1,'10ipa1','3237762664300033'),(2,'10ips1','296611082007011021');
/*!40000 ALTER TABLE `kelas_transaksi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mata_pelajaran`
--

DROP TABLE IF EXISTS `mata_pelajaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mata_pelajaran` (
  `id_mata_pelajaran` int(11) NOT NULL AUTO_INCREMENT,
  `kd_mata_pelajaran` varchar(15) DEFAULT NULL,
  `nama_mata_pelajaran` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_mata_pelajaran`),
  KEY `kd_mata_pelajaran` (`kd_mata_pelajaran`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mata_pelajaran`
--

LOCK TABLES `mata_pelajaran` WRITE;
/*!40000 ALTER TABLE `mata_pelajaran` DISABLE KEYS */;
INSERT INTO `mata_pelajaran` VALUES (1,'aqh','Al Quran Hadis'),(2,'aa','Akidah Akhlak'),(3,'fkh','Fikih'),(4,'ski','Sejarah Kebudayaan Islam'),(5,'pkn','Pendidikan Pancasila dan Kewarganegaraan'),(6,'mtk','Matematika'),(7,'bindo','Bahasa Indonesia'),(8,'bing','Bahasa Inggris'),(9,'senbud','Seni Budaya'),(10,'penjas','Pendidikan Jasmani, Olahraga dan Kesehat'),(11,'pkk','Prakarya dan Kewirausahaan'),(12,'mtkIPA','Matematika 2'),(13,'bio','Biologi'),(14,'fis','Fisika'),(15,'kim','Kimia'),(16,'geo','Geografi'),(17,'sej','Sejarah'),(18,'sos','Sosiologi'),(19,'eko','Ekonomi'),(20,'iltaf','Ilmu Tafsir'),(21,'ilhad','Ilmu Hadis'),(22,'usfik','Ushul Fikih'),(23,'ilkal','Ilmu Kalam'),(24,'akhAGAMA','Akhlak'),(25,'barabAGAMA','Bahasa Arab 2'),(26,'sasind','Bahasa dan Sastra Indonesia'),(27,'sasing','Bahasa dan Sastra Inggris'),(28,'bjer','Bahasa Jerman'),(29,'bjep','Bahasa Jepang'),(30,'antro','Antropologi'),(31,'bjawa','Bahasa Jawa'),(32,'ppmb','PPMB'),(33,'tik','Teknologi Informasi dan Komunikasi'),(34,'barab','Bahasa Arab');
/*!40000 ALTER TABLE `mata_pelajaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mata_pelajaran_transaksi`
--

DROP TABLE IF EXISTS `mata_pelajaran_transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mata_pelajaran_transaksi` (
  `id_mata_pelajaran_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `kkm_rendah_mata_pelajaran_transaksi` varchar(7) DEFAULT NULL,
  `kkm_tengah_mata_pelajaran_transaksi` varchar(7) DEFAULT NULL,
  `kkm_tinggi_mata_pelajaran_transaksi` varchar(7) DEFAULT NULL,
  `kd_kelas_daftar_mata_pelajaran_transaksi` varchar(15) DEFAULT NULL,
  `kd_mata_pelajaran_transaksi` varchar(65) DEFAULT NULL,
  `nip_pegawai_mata_pelajaran_transaksi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_mata_pelajaran_transaksi`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mata_pelajaran_transaksi`
--

LOCK TABLES `mata_pelajaran_transaksi` WRITE;
/*!40000 ALTER TABLE `mata_pelajaran_transaksi` DISABLE KEYS */;
INSERT INTO `mata_pelajaran_transaksi` VALUES (1,'88',NULL,NULL,'10ipa1','bindo','296611082007011021'),(2,'22',NULL,NULL,'10ips1','bindo','296611082007011021'),(3,NULL,NULL,NULL,'10bahasa1','mtkIPA','197007152002121009'),(4,NULL,NULL,NULL,'10bahasa1','ski','196502211990032006');
/*!40000 ALTER TABLE `mata_pelajaran_transaksi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nilai_siswa_transaksi_smt1_pengetahuan`
--

DROP TABLE IF EXISTS `nilai_siswa_transaksi_smt1_pengetahuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nilai_siswa_transaksi_smt1_pengetahuan` (
  `id_nilai_siswa_transaksi_smt1_pengetahuan` int(11) NOT NULL AUTO_INCREMENT,
  `nis_siswa_nilai_siswa_transaksi_smt1_pengetahuan` varchar(20) DEFAULT NULL,
  `kd_kelas_daftar_nilai_siswa_transaksi_smt1_pengetahuan` varchar(15) DEFAULT NULL,
  `kd_mata_pelajaran_nilai_siswa_transaksi_smt1_pengetahuan` varchar(10) DEFAULT NULL,
  `nip_pegawai_nilai_siswa_transaksi_smt1_pengetahuan` varchar(20) NOT NULL,
  `tes_tulis_nilai_siswa_transaksi1_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi1_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi1_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi1_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi1_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi1_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi1_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi1_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi1_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi1_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi2_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi2_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi2_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi2_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi2_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi2_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi2_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi2_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi2_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi2_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi3_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi3_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi3_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi3_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi3_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi3_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi3_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi3_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi3_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi3_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi4_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi4_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi4_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi4_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi4_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi4_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi4_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi4_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi4_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi4_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi5_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi5_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi5_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi5_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi5_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi5_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi5_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi5_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi5_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi5_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi6_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi6_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi6_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi6_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi6_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi6_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi6_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi6_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi6_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi6_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi7_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi7_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi7_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi7_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi7_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi7_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi7_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi7_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi7_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi7_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi8_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi8_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi8_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi8_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi8_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi8_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi8_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi8_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi8_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi8_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi9_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi9_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi9_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi9_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi9_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi9_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi9_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi9_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi9_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi9_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi10_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi10_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi10_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi10_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi10_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi10_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi10_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi10_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi10_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi10_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uts_nilai_siswa_transaksi11_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uts_remidi_nilai_siswa_transaksi11_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uts_nilai_siswa_transaksi11_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi11_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi11_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi11_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nilai_akhir_nilai_siswa_transaksi_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `predikat_nilai_siswa_transaksi_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `deskripsi_nilai_siswa_transaksi_smt1_pengetahuan` text,
  `keterangan_t_tt_nilai_siswa_transaksi_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id_nilai_siswa_transaksi_smt1_pengetahuan`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nilai_siswa_transaksi_smt1_pengetahuan`
--

LOCK TABLES `nilai_siswa_transaksi_smt1_pengetahuan` WRITE;
/*!40000 ALTER TABLE `nilai_siswa_transaksi_smt1_pengetahuan` DISABLE KEYS */;
INSERT INTO `nilai_siswa_transaksi_smt1_pengetahuan` VALUES (45,'10888','10ipa1','aqh','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,'10888','10ipa1','aa','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,'10888','10ipa1','fkh','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,'10888','10ipa1','ski','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,'10888','10ipa1','pkn','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,'10888','10ipa1','bindo','296611082007011021',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,'10888','10ipa1','barab','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,'10888','10ipa1','bing','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,'10888','10ipa1','mtk','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,'10888','10ipa1','mtkIPA','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,'10888','10ipa1','ksn','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,'10888','10ipa1','penjas','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,'10888','10ipa1','fis','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,'10888','10ipa1','kim','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,'10888','10ipa1','bio','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,'10888','10ipa1','tik','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,'10888','10ipa1','bk','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,'10888','10ipa1','sej','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,'10888','10ipa1','senbud','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(64,'10888','10ipa1','pkk','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(65,'10888','10ipa1','bjawa','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(66,'10888','10ipa1','ppmb','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(67,'10900','10ips1','aqh','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(68,'10900','10ips1','aa','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(69,'10900','10ips1','fkh','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(70,'10900','10ips1','ski','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(71,'10900','10ips1','pkn','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(72,'10900','10ips1','bindo','296611082007011021',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(73,'10900','10ips1','barab','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(74,'10900','10ips1','bing','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(75,'10900','10ips1','mtk','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(76,'10900','10ips1','ksn','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(77,'10900','10ips1','penjas','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(78,'10900','10ips1','geo','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(79,'10900','10ips1','eko','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(80,'10900','10ips1','sos','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(81,'10900','10ips1','tik','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(82,'10900','10ips1','bk','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(83,'10900','10ips1','sej','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(84,'10900','10ips1','senbud','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(85,'10900','10ips1','pkk','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(86,'10900','10ips1','bjawa','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(87,'10900','10ips1','ppmb','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `nilai_siswa_transaksi_smt1_pengetahuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nilai_siswa_transaksi_smt2_pengetahuan`
--

DROP TABLE IF EXISTS `nilai_siswa_transaksi_smt2_pengetahuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nilai_siswa_transaksi_smt2_pengetahuan` (
  `id_nilai_siswa_transaksi_smt2_pengetahuan` int(11) NOT NULL AUTO_INCREMENT,
  `nis_siswa_nilai_siswa_transaksi_smt2_pengetahuan` varchar(20) DEFAULT NULL,
  `kd_kelas_daftar_nilai_siswa_transaksi_smt2_pengetahuan` varchar(15) DEFAULT NULL,
  `kd_mata_pelajaran_nilai_siswa_transaksi_smt2_pengetahuan` varchar(10) DEFAULT NULL,
  `nip_pegawai_nilai_siswa_transaksi_smt2_pengetahuan` varchar(20) NOT NULL,
  `tes_tulis_nilai_siswa_transaksi1_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi1_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi1_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi1_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi1_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi1_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi1_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi1_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi1_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi1_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi2_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi2_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi2_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi2_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi2_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi2_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi2_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi2_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi2_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi2_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi3_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi3_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi3_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi3_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi3_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi3_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi3_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi3_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi3_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi3_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi4_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi4_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi4_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi4_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi4_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi4_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi4_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi4_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi4_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi4_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi5_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi5_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi5_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi5_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi5_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi5_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi5_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi5_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi5_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi5_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi6_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi6_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi6_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi6_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi6_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi6_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi6_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi6_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi6_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi6_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi7_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi7_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi7_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi7_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi7_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi7_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi7_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi7_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi7_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi7_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi8_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi8_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi8_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi8_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi8_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi8_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi8_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi8_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi8_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi8_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi9_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi9_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi9_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi9_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi9_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi9_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi9_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi9_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi9_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi9_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi10_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi10_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi10_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi10_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi10_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi10_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi10_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi10_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi10_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi10_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uts_nilai_siswa_transaksi11_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uts_remidi_nilai_siswa_transaksi11_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uts_nilai_siswa_transaksi11_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi11_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi11_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi11_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nilai_akhir_nilai_siswa_transaksi_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `predikat_nilai_siswa_transaksi_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `deskripsi_nilai_siswa_transaksi_smt2_pengetahuan` text,
  `keterangan_t_tt_nilai_siswa_transaksi_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id_nilai_siswa_transaksi_smt2_pengetahuan`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nilai_siswa_transaksi_smt2_pengetahuan`
--

LOCK TABLES `nilai_siswa_transaksi_smt2_pengetahuan` WRITE;
/*!40000 ALTER TABLE `nilai_siswa_transaksi_smt2_pengetahuan` DISABLE KEYS */;
INSERT INTO `nilai_siswa_transaksi_smt2_pengetahuan` VALUES (45,'10888','10ipa1','aqh','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,'10888','10ipa1','aa','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,'10888','10ipa1','fkh','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,'10888','10ipa1','ski','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,'10888','10ipa1','pkn','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,'10888','10ipa1','bindo','296611082007011021',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,'10888','10ipa1','barab','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,'10888','10ipa1','bing','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,'10888','10ipa1','mtk','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,'10888','10ipa1','mtkIPA','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,'10888','10ipa1','ksn','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,'10888','10ipa1','penjas','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,'10888','10ipa1','fis','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,'10888','10ipa1','kim','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,'10888','10ipa1','bio','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,'10888','10ipa1','tik','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,'10888','10ipa1','bk','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,'10888','10ipa1','sej','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,'10888','10ipa1','senbud','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(64,'10888','10ipa1','pkk','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(65,'10888','10ipa1','bjawa','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(66,'10888','10ipa1','ppmb','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(67,'10900','10ips1','aqh','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(68,'10900','10ips1','aa','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(69,'10900','10ips1','fkh','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(70,'10900','10ips1','ski','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(71,'10900','10ips1','pkn','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(72,'10900','10ips1','bindo','296611082007011021',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(73,'10900','10ips1','barab','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(74,'10900','10ips1','bing','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(75,'10900','10ips1','mtk','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(76,'10900','10ips1','ksn','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(77,'10900','10ips1','penjas','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(78,'10900','10ips1','geo','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(79,'10900','10ips1','eko','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(80,'10900','10ips1','sos','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(81,'10900','10ips1','tik','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(82,'10900','10ips1','bk','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(83,'10900','10ips1','sej','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(84,'10900','10ips1','senbud','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(85,'10900','10ips1','pkk','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(86,'10900','10ips1','bjawa','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(87,'10900','10ips1','ppmb','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `nilai_siswa_transaksi_smt2_pengetahuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pembayaran`
--

DROP TABLE IF EXISTS `pembayaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT,
  `kd_pembayaran` varchar(25) DEFAULT NULL,
  `cicil_total_pembayaran` varchar(255) DEFAULT NULL,
  `kekurangan_pembayaran` varchar(255) DEFAULT NULL,
  `nis_siswa_pembayaran` varchar(20) DEFAULT NULL,
  `tanggal_lunas_pembayaran` datetime DEFAULT NULL,
  `tanggal_terakhir_pembayaran` datetime DEFAULT NULL,
  `lunas_pembayaran` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`id_pembayaran`),
  KEY `kd_pembayaran` (`kd_pembayaran`),
  KEY `nis_siswa_pembayaran` (`nis_siswa_pembayaran`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pembayaran`
--

LOCK TABLES `pembayaran` WRITE;
/*!40000 ALTER TABLE `pembayaran` DISABLE KEYS */;
INSERT INTO `pembayaran` VALUES (61,'d_ulang',NULL,'565.000','10888',NULL,NULL,'N'),(62,'seragam','500.000','1.000.000','10888','0000-00-00 00:00:00','2018-07-21 12:47:45','N'),(63,'uang_operasional',NULL,'1.800.000','10888',NULL,NULL,'N'),(64,'spp',NULL,'1.500.000','10888',NULL,NULL,'N'),(65,'d_ulang',NULL,'565.000','10900',NULL,NULL,'N'),(66,'seragam',NULL,'1.500.000','10900',NULL,NULL,'N'),(67,'uang_operasional',NULL,'1.800.000','10900',NULL,NULL,'N'),(68,'spp',NULL,'1.500.000','10900',NULL,NULL,'N'),(69,'d_ulang',NULL,'565.000','',NULL,NULL,'N'),(70,'seragam',NULL,'1.500.000','',NULL,NULL,'N'),(71,'uang_operasional',NULL,'1.800.000','',NULL,NULL,'N'),(72,'spp',NULL,'1.500.000','',NULL,NULL,'N');
/*!40000 ALTER TABLE `pembayaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pembayaran_daftar`
--

DROP TABLE IF EXISTS `pembayaran_daftar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pembayaran_daftar` (
  `id_pembayaran_daftar` int(11) NOT NULL AUTO_INCREMENT,
  `kd_pembayaran_daftar` varchar(25) NOT NULL,
  `nama_pembayaran_daftar` varchar(55) NOT NULL,
  `jumlah_bayar_pembayaran_daftar` varchar(255) NOT NULL,
  PRIMARY KEY (`id_pembayaran_daftar`),
  UNIQUE KEY `kd_pembayaran_daftar` (`kd_pembayaran_daftar`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pembayaran_daftar`
--

LOCK TABLES `pembayaran_daftar` WRITE;
/*!40000 ALTER TABLE `pembayaran_daftar` DISABLE KEYS */;
INSERT INTO `pembayaran_daftar` VALUES (1,'d_ulang','Daftar Ulang','565.000'),(2,'seragam','Perlengkapan Seragam','1.500.000'),(3,'uang_operasional','Peningkatan Mutu Madrasah','1.800.000'),(4,'spp','Sumbangan Pembinaan Pendidikan (SPP)','1.500.000');
/*!40000 ALTER TABLE `pembayaran_daftar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pesan`
--

DROP TABLE IF EXISTS `pesan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pesan` (
  `id_pesan` int(11) NOT NULL AUTO_INCREMENT,
  `pengirim_pesan` varchar(50) DEFAULT NULL,
  `penerima_pesan` varchar(50) DEFAULT NULL,
  `judul_pesan` text,
  `isi_pesan` text,
  `waktu_pesan` datetime DEFAULT NULL,
  `cek_pesan` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_pesan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pesan`
--

LOCK TABLES `pesan` WRITE;
/*!40000 ALTER TABLE `pesan` DISABLE KEYS */;
/*!40000 ALTER TABLE `pesan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pesan_chat_bot_kosa_kata`
--

DROP TABLE IF EXISTS `pesan_chat_bot_kosa_kata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pesan_chat_bot_kosa_kata` (
  `id_pesan_chat_bot_kosa_kata` int(11) NOT NULL AUTO_INCREMENT,
  `grup_kosa_kata_pesan_chat_bot_kosa_kata` varchar(50) NOT NULL,
  `data_kosa_kata_pesan_chat_bot_kosa_kata` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pesan_chat_bot_kosa_kata`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pesan_chat_bot_kosa_kata`
--

LOCK TABLES `pesan_chat_bot_kosa_kata` WRITE;
/*!40000 ALTER TABLE `pesan_chat_bot_kosa_kata` DISABLE KEYS */;
INSERT INTO `pesan_chat_bot_kosa_kata` VALUES (1,'','nomor induk'),(2,'','nama lengkap'),(8,'','nomor telepon'),(29,'','jabatan'),(33,'','ampu'),(34,'','ajar'),(39,'','alamat rumah'),(40,'','jumlah');
/*!40000 ALTER TABLE `pesan_chat_bot_kosa_kata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pesan_chat_bot_kosa_kata_pegawai`
--

DROP TABLE IF EXISTS `pesan_chat_bot_kosa_kata_pegawai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pesan_chat_bot_kosa_kata_pegawai` (
  `id_pesan_chat_bot_kosa_kata_pegawai` int(11) NOT NULL AUTO_INCREMENT,
  `kosa_kata_pesan_chat_bot_kosa_kata_pegawai` varchar(50) NOT NULL,
  `grup_kosa_kata_pesan_chat_bot_kosa_kata_pegawai` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pesan_chat_bot_kosa_kata_pegawai`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pesan_chat_bot_kosa_kata_pegawai`
--

LOCK TABLES `pesan_chat_bot_kosa_kata_pegawai` WRITE;
/*!40000 ALTER TABLE `pesan_chat_bot_kosa_kata_pegawai` DISABLE KEYS */;
INSERT INTO `pesan_chat_bot_kosa_kata_pegawai` VALUES (1,'nomor induk','nip_pegawai'),(2,'nama lengkap','nama_pegawai'),(8,'nomor telepon','no_handphone_pegawai'),(29,'jabatan','jabatan_pegawai'),(33,'ampu','nama_mata_pelajaran'),(34,'ajar','nama_mata_pelajaran'),(39,'alamat rumah','alamat_pegawai'),(40,'jumlah','umum');
/*!40000 ALTER TABLE `pesan_chat_bot_kosa_kata_pegawai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pesan_chat_bot_kosa_kata_siswa`
--

DROP TABLE IF EXISTS `pesan_chat_bot_kosa_kata_siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pesan_chat_bot_kosa_kata_siswa` (
  `id_pesan_chat_bot_kosa_kata_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `kosa_kata_pesan_chat_bot_kosa_kata_siswa` varchar(50) NOT NULL,
  `grup_kosa_kata_pesan_chat_bot_kosa_kata_siswa` varchar(50) NOT NULL,
  `chat_privilege_kosa_kata` varchar(25) NOT NULL,
  PRIMARY KEY (`id_pesan_chat_bot_kosa_kata_siswa`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pesan_chat_bot_kosa_kata_siswa`
--

LOCK TABLES `pesan_chat_bot_kosa_kata_siswa` WRITE;
/*!40000 ALTER TABLE `pesan_chat_bot_kosa_kata_siswa` DISABLE KEYS */;
INSERT INTO `pesan_chat_bot_kosa_kata_siswa` VALUES (1,'ampu','nama_pengampu_mapel','pegawai,siswa'),(2,'ajar','nama_pengampu_mapel','pegawai,siswa'),(3,'nama lengkap pegawai','nama_pegawai','pegawai,siswa'),(4,'jenis kelamin pegawai','jenis_kelamin_pegawai','pegawai,siswa'),(5,'alamat rumah pegawai','alamat_pegawai','pegawai,siswa'),(6,'nomor telepon pegawai','no_handphone_pegawai','pegawai,siswa'),(7,'nomor induk pegawai','nip_pegawai','pegawai,siswa'),(39,'nomor telepon siswa','no_handphone_siswa','pegawai,siswa'),(40,'nomor induk siswa','nis_siswa','pegawai,siswa'),(41,'nomor induk nasional siswa','nisn_siswa','pegawai,siswa'),(42,'alamat rumah siswa','alamat_siswa','pegawai,siswa'),(46,'tempat lahir siswa','tempat_lahir_siswa','pegawai,siswa'),(47,'tanggal lahir siswa','tanggal_lahir_siswa','pegawai,siswa'),(50,'nama ayah siswa','orangtua_nama_ayah_siswa','pegawai,siswa'),(51,'nama ibu siswa','orangtua_nama_ibu_siswa','pegawai,siswa'),(52,'alamat orangtua siswa','orangtua_alamat_siswa','pegawai,siswa'),(53,'nomor telepon orang tua siswa','orangtua_telepon_siswa','pegawai,siswa'),(54,'pekerjaan ayah siswa','orangtua_pekerjaan_ayah_siswa','pegawai,siswa'),(55,'pekerjaan ibu siswa','orangtua_pekerjaan_ibu_siswa','pegawai,siswa'),(56,'nama wali siswa','nama_wali','pegawai,siswa'),(57,'pekerjaan wali siswa','pekerjaan_wali','pegawai,siswa'),(58,'alamat wali siswa','alamat_wali','pegawai,siswa'),(59,'nomor telepon wali siswa','no_handphone_wali','pegawai,siswa'),(67,'detail pembayaran','0_detail_pembayaran','siswa'),(68,'daftar kelas dan wali kelas','0_daftar_kelas_dan_wali_kelas','pegawai,siswa'),(70,'jumlah siswa','0_jumlah_siswa','pegawai,siswa'),(71,'jumlah pegawai','0_jumlah_pegawai','pegawai,siswa'),(72,'pengampu mata pelajaran','pengampu_mapel','pegawai,siswa');
/*!40000 ALTER TABLE `pesan_chat_bot_kosa_kata_siswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pesan_chat_bot_kosa_kata_suggest`
--

DROP TABLE IF EXISTS `pesan_chat_bot_kosa_kata_suggest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pesan_chat_bot_kosa_kata_suggest` (
  `id_pesan_chat_bot_kosa_kata_suggest` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_induk_pesan_chat_bot_kosa_kata_suggest` varchar(25) DEFAULT NULL,
  `kata_kunci_pesan_chat_bot_kosa_kata_suggest` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_pesan_chat_bot_kosa_kata_suggest`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pesan_chat_bot_kosa_kata_suggest`
--

LOCK TABLES `pesan_chat_bot_kosa_kata_suggest` WRITE;
/*!40000 ALTER TABLE `pesan_chat_bot_kosa_kata_suggest` DISABLE KEYS */;
/*!40000 ALTER TABLE `pesan_chat_bot_kosa_kata_suggest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pesan_chat_pengguna`
--

DROP TABLE IF EXISTS `pesan_chat_pengguna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pesan_chat_pengguna` (
  `id_pesan_chat_pengguna` int(11) NOT NULL AUTO_INCREMENT,
  `pengirim_pesan_chat_pengguna` varchar(50) NOT NULL,
  `penerima_pesan_chat_pengguna` varchar(50) NOT NULL,
  `isi_pesan_chat_pengguna` text NOT NULL,
  `waktu_pesan_chat_pengguna` datetime NOT NULL,
  `cek_pesan_chat_pengguna` enum('0','1') NOT NULL,
  PRIMARY KEY (`id_pesan_chat_pengguna`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pesan_chat_pengguna`
--

LOCK TABLES `pesan_chat_pengguna` WRITE;
/*!40000 ALTER TABLE `pesan_chat_pengguna` DISABLE KEYS */;
/*!40000 ALTER TABLE `pesan_chat_pengguna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verifikasi_password`
--

DROP TABLE IF EXISTS `verifikasi_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verifikasi_password` (
  `id_verifikasi_password_baru` int(11) NOT NULL AUTO_INCREMENT,
  `username_verifikasi_password_baru` varchar(50) DEFAULT NULL,
  `password_baru_verifikasi_password_baru` varchar(255) DEFAULT NULL,
  `jabatan_verifikasi_password_baru` varchar(25) DEFAULT NULL,
  `tanggal_ganti_verifikasi_password_baru` date DEFAULT NULL,
  `jam_ganti_verifikasi_password_baru` time DEFAULT NULL,
  `tanggal_verifikasi_verifikasi_password_baru` date DEFAULT NULL,
  `jam_verifikasi_verifikasi_password_baru` time DEFAULT NULL,
  `tanggal_terpakai_verifikasi_password_baru` date DEFAULT NULL,
  `jam_terpakai_verifikasi_password_baru` time DEFAULT NULL,
  `status_verifikasi_password_baru` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_verifikasi_password_baru`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verifikasi_password`
--

LOCK TABLES `verifikasi_password` WRITE;
/*!40000 ALTER TABLE `verifikasi_password` DISABLE KEYS */;
INSERT INTO `verifikasi_password` VALUES (1,'197311181999031002','asds','pegawai','2018-07-16','10:13:05',NULL,NULL,NULL,NULL,'N');
/*!40000 ALTER TABLE `verifikasi_password` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-29 14:57:01
