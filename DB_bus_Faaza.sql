-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: FaazaGanz
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `daftar_bus`
--

DROP TABLE IF EXISTS `daftar_bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daftar_bus` (
  `Nama_Bus` varchar(50) NOT NULL,
  `Tujuan` varchar(50) DEFAULT NULL,
  `Jadwal` varchar(50) DEFAULT NULL,
  `Harga` int(10) DEFAULT NULL,
  `Nama_Sopir` varchar(50) DEFAULT NULL,
  `kapasitas` int(11) DEFAULT NULL,
  `kelas_bus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Nama_Bus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daftar_bus`
--

LOCK TABLES `daftar_bus` WRITE;
/*!40000 ALTER TABLE `daftar_bus` DISABLE KEYS */;
INSERT INTO `daftar_bus` VALUES ('CBI','Lebak Bulus-Cileunyi','14.00-17.00',45000,'Ari',32,'Tidak ber AC'),('Goodwill','Semarang-Lasem','13.00-16.00',49000,'Roni',40,'AC'),('MGI','Tasik-Bogor','10.30-14.00',158000,'Budi Prakoso',36,'Tidak ber AC'),('Primajasa','Bandung-Merak','10.30-14.00',85000,'Heri',30,'AC');
/*!40000 ALTER TABLE `daftar_bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_bus`
--

DROP TABLE IF EXISTS `data_bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_bus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_bus` varchar(10) DEFAULT NULL,
  `nama_sopir` varchar(50) DEFAULT NULL,
  `terakhir_dilihat` varchar(50) DEFAULT NULL,
  `warna_bus` varchar(20) DEFAULT NULL,
  `aktivitas_bus` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_bus`
--

LOCK TABLES `data_bus` WRITE;
/*!40000 ALTER TABLE `data_bus` DISABLE KEYS */;
INSERT INTO `data_bus` VALUES (1,'HAS_29','Roni','Bandung','Hitam','Berangkat'),(2,'SR_13','Ari','Cibitung','Putih','Delay'),(3,'GS_29','Heri','Cikampek','Merah','On The Way'),(4,'JAN_17','Budi Prakoso','Cikarang','Putih','On The Way'),(5,'YAN_22','Heri','Cibubur','Kuning','On The Way'),(6,'JAN_17','Budi Prakoso','Cikarang','Putih','On The Way'),(7,'AlI_07','Ari','Bandung','Hitam','Berangkat'),(8,'AS_30','Roni','Bogor','Merah','Sampai'),(9,'AS_05','Budi Prakoso','Cibitung','Hitam','On The Way'),(10,'IL_04','Heri','Bogor','Merah','Sampai'),(11,'GAL_11','Budi Prakoso','Bandung','Kuning','Berangkat'),(12,'TWI_98','Roni','Cikarang','Putih','On The Way');
/*!40000 ALTER TABLE `data_bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keberangkatan`
--

DROP TABLE IF EXISTS `keberangkatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keberangkatan` (
  `id` int(11) NOT NULL,
  `nama_depan` varchar(50) DEFAULT NULL,
  `nama_belakang` varchar(50) DEFAULT NULL,
  `stasiun_keberangkatan` varchar(50) DEFAULT NULL,
  `kedatangan` varchar(20) DEFAULT NULL,
  `boarding` varchar(20) DEFAULT NULL,
  `sampai` varchar(20) DEFAULT NULL,
  `tanggal_keberangkatan` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keberangkatan`
--

LOCK TABLES `keberangkatan` WRITE;
/*!40000 ALTER TABLE `keberangkatan` DISABLE KEYS */;
INSERT INTO `keberangkatan` VALUES (7,'Galuh','Suparman','Cimahi Utara','Jakarta Pusat','19:00','22:00','2025-11-25','Berangkat');
/*!40000 ALTER TABLE `keberangkatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penumpang`
--

DROP TABLE IF EXISTS `penumpang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penumpang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL,
  `usia` int(11) DEFAULT NULL,
  `riwayat_penyakit` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penumpang`
--

LOCK TABLES `penumpang` WRITE;
/*!40000 ALTER TABLE `penumpang` DISABLE KEYS */;
INSERT INTO `penumpang` VALUES (1,'Albila Khairunnisa','P',23,'Tidak ada'),(2,'Triwijaya Galuh','L',56,'Tidak ada'),(3,'Sri Rahma Ayu','P',12,'Tidak ada'),(4,'Mahesa Narendra','L',34,'Asma (Sesak Napas)'),(5,'Naura Nadhifa','P',21,'Vertigo');
/*!40000 ALTER TABLE `penumpang` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-02 10:32:47
