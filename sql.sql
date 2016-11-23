-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: vidrieria
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `abonodetalle`
--

DROP TABLE IF EXISTS `abonodetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abonodetalle` (
  `idabonoDetalle` int(11) NOT NULL AUTO_INCREMENT,
  `idabonos` int(6) NOT NULL,
  `idproductos` int(11) NOT NULL,
  `nombrepro` varchar(45) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precioventa` bigint(15) NOT NULL,
  `total` bigint(15) DEFAULT NULL,
  `preccioTrabajo` int(11) DEFAULT NULL,
  `porcentajeganancia` int(11) DEFAULT NULL,
  `alto` varchar(45) DEFAULT NULL,
  `ancho` varchar(45) DEFAULT NULL,
  `fondo` varchar(45) DEFAULT NULL,
  `imgPrincipal` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`idabonoDetalle`),
  KEY `fk_abonoDetalle_abonos1_idx` (`idabonos`),
  KEY `fk_abonoDetalle_productos1_idx` (`idproductos`),
  CONSTRAINT `fk_abonoDetalle_abonos1` FOREIGN KEY (`idabonos`) REFERENCES `abonos` (`idabonos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_abonoDetalle_productos1` FOREIGN KEY (`idproductos`) REFERENCES `productos` (`idproductos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abonodetalle`
--

LOCK TABLES `abonodetalle` WRITE;
/*!40000 ALTER TABLE `abonodetalle` DISABLE KEYS */;
INSERT INTO `abonodetalle` VALUES (1,1,2,'3 cuerpos 120*150',4,320255,1281020,50000,50,'120','150',NULL,NULL),(2,2,2,'3 cuerpos 120*150',1,359415,359415,60000,50,'120','150',NULL,NULL),(3,3,1,'2 cuerpos 210*234',1,389081,389081,45000,50,'210','234',NULL,NULL),(4,4,1,'2 cuerpos 123*123',1,236713,236713,45000,50,'123','123',NULL,NULL),(5,5,7,'vitrina 123*200 fondo: 50',1,787400,787400,50000,50,'123','200','50',NULL),(6,6,5,'Puerta Aluminio T87 con Vidrio 190*110',6,282002,1692012,50000,50,'190','110','',NULL),(7,7,5,'Puerta Aluminio T87 con Vidrio 220*110',1,391461,391461,50000,50,'220','110','',NULL),(8,8,1,'2 cuerpos 234*113',2,339659,679318,45666,23,'234','113','',NULL),(9,9,3,'4 cuerpos 234*456',3,1026263,3078789,56666,70,'234','456','',NULL),(10,10,1,'2 cuerpos 234*456',2,802679,1605358,56666,56,'234','456','',NULL),(11,11,1,'2 cuerpos 234*113',2,406354,812708,56666,56,'234','113','',NULL),(12,12,1,'2 cuerpos 234*113',4,387789,1551156,56666,45,'234','113','',NULL),(13,13,1,'2 cuerpos 234*113',4,387789,1551156,56666,45,'234','113','',NULL),(14,14,1,'2 cuerpo Aluminio 744 natural  234*113',3,331493,994479,56666,56,'234','113','',NULL),(15,14,5,'Puerta Aluminio T87 con Vidrio 234*113',2,563575,1127150,56666,56,'234','113','',NULL);
/*!40000 ALTER TABLE `abonodetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abonos`
--

DROP TABLE IF EXISTS `abonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abonos` (
  `idabonos` int(6) NOT NULL AUTO_INCREMENT,
  `idempleado` int(6) NOT NULL,
  `idcliente` int(6) NOT NULL,
  `precioTotal` bigint(15) DEFAULT NULL,
  `montoabono` bigint(15) DEFAULT NULL,
  `saldofinal` bigint(15) DEFAULT NULL,
  `fecharegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idabonos`),
  KEY `fk_abonos_cliente1_idx` (`idcliente`),
  KEY `fk_abonos_empleado1_idx` (`idempleado`),
  CONSTRAINT `fk_abonos_cliente1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_abonos_empleado1` FOREIGN KEY (`idempleado`) REFERENCES `empleado` (`idempleado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abonos`
--

LOCK TABLES `abonos` WRITE;
/*!40000 ALTER TABLE `abonos` DISABLE KEYS */;
INSERT INTO `abonos` VALUES (1,1,2,1281020,145500,966520,'2016-03-23 02:02:56'),(2,1,2,359415,245000,93315,'2016-03-23 14:03:07'),(3,2,2,389081,34000,355081,'2016-04-12 19:45:51'),(4,1,2,236713,34000,-51887,'2016-04-14 05:00:54'),(5,1,2,787400,400000,367400,'2016-04-18 23:41:18'),(6,1,2,1692012,200000,1474012,'2016-04-28 18:16:40'),(7,1,2,391461,234999,156462,'2016-06-02 03:43:01'),(8,1,2,679318,120000,559318,'2016-10-14 23:03:42'),(9,1,2,3078789,123000,2955789,'2016-10-14 23:16:43'),(10,1,3,1605358,340000,1265358,'2016-10-14 23:20:56'),(11,1,2,812708,123000,689708,'2016-10-14 23:25:03'),(12,1,2,1551156,120000,1431156,'2016-10-14 23:36:48'),(13,1,2,1551156,120000,1431156,'2016-10-14 23:38:33'),(14,1,2,2121629,45000,2076629,'2016-11-16 16:41:16');
/*!40000 ALTER TABLE `abonos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abonosecundario`
--

DROP TABLE IF EXISTS `abonosecundario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abonosecundario` (
  `idabonosecun` int(11) NOT NULL AUTO_INCREMENT,
  `idabonos` int(6) NOT NULL,
  `idempleado` int(6) NOT NULL,
  `valorAbono` bigint(15) NOT NULL,
  `saldoTotaL` bigint(15) DEFAULT NULL,
  `fechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idabonosecun`),
  KEY `idabonos` (`idabonos`),
  KEY `idempleado` (`idempleado`),
  CONSTRAINT `abonosecundario_ibfk_1` FOREIGN KEY (`idabonos`) REFERENCES `abonos` (`idabonos`),
  CONSTRAINT `abonosecundario_ibfk_2` FOREIGN KEY (`idempleado`) REFERENCES `empleado` (`idempleado`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abonosecundario`
--

LOCK TABLES `abonosecundario` WRITE;
/*!40000 ALTER TABLE `abonosecundario` DISABLE KEYS */;
INSERT INTO `abonosecundario` VALUES (1,2,1,3000,NULL,'2016-04-08 03:51:24'),(2,2,1,4000,NULL,'2016-04-09 00:26:22'),(3,2,1,4300,NULL,'2016-04-09 03:55:07'),(4,2,1,5000,93115,'2016-04-09 16:00:54'),(5,2,2,2400,93315,'2016-04-12 04:05:26'),(6,2,2,2400,90915,'2016-04-12 04:07:13'),(7,4,1,2300,198113,'2016-04-14 18:13:08'),(8,4,1,2300,195813,'2016-04-14 18:15:18'),(9,4,2,250000,-301887,'2016-04-14 23:37:01'),(10,6,1,5000,1482012,'2016-05-13 23:42:07'),(11,6,2,5000,1477012,'2016-05-13 23:57:47'),(12,6,1,3000,1476012,'2016-05-14 00:09:36'),(13,6,1,5000,1469012,'2016-05-14 00:14:11'),(14,1,1,2000,1131520,'2016-05-14 01:37:05'),(15,1,1,4500,1124520,'2016-05-28 19:51:48'),(16,1,2,34500,1060020,'2016-08-06 01:54:18'),(17,5,2,10000,367400,'2016-10-01 15:55:41'),(18,5,2,10000,357400,'2016-10-01 15:57:54'),(19,1,1,32000,1030520,'2016-10-18 15:10:04'),(20,1,1,32000,998520,'2016-10-18 15:14:39'),(21,1,1,32000,966520,'2016-10-18 15:15:12'),(22,1,1,32000,934520,'2016-10-18 15:50:17');
/*!40000 ALTER TABLE `abonosecundario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudad` (
  `idciudad` int(4) NOT NULL,
  `nombreCiu` varchar(45) NOT NULL,
  `iddepartamento` int(4) NOT NULL,
  PRIMARY KEY (`idciudad`),
  KEY `fk_ciudad_departamento1_idx` (`iddepartamento`),
  CONSTRAINT `fk_ciudad_departamento1` FOREIGN KEY (`iddepartamento`) REFERENCES `departamento` (`iddepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'Medellin',1),(2,'Cali',2),(3,'palmira',2);
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `idcliente` int(6) NOT NULL AUTO_INCREMENT,
  `idtipodocumento` int(5) NOT NULL,
  `idciudad` int(4) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `numeroDocumentoC` varchar(15) NOT NULL,
  `correoElectronico` varchar(45) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcliente`),
  KEY `fk_cliente_tipodocumento1_idx` (`idtipodocumento`),
  KEY `fk_cliente_ciudad1_idx` (`idciudad`),
  CONSTRAINT `fk_cliente_ciudad1` FOREIGN KEY (`idciudad`) REFERENCES `ciudad` (`idciudad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cliente_tipodocumento1` FOREIGN KEY (`idtipodocumento`) REFERENCES `tipodocumento` (`idtipodocumento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (2,1,1,'wilson luisito','gamba','16245356','wilson@hotmail.com','5363627','calle 57a 34-21'),(3,1,3,'Carlos Alberto','Gomez Marin','16745689','carlos@hotmail.com','3173996784','Kra 34 # 12-45');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotizacion`
--

DROP TABLE IF EXISTS `cotizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cotizacion` (
  `idcotizacion` int(8) NOT NULL AUTO_INCREMENT,
  `idempleado` int(6) NOT NULL,
  `idcliente` int(6) NOT NULL,
  `subtotal` bigint(15) DEFAULT NULL,
  `iva` bigint(15) DEFAULT NULL,
  `preciototal` bigint(15) DEFAULT NULL,
  `fechacotizacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idcotizacion`),
  KEY `fk_compras_empleado1_idx` (`idempleado`),
  KEY `fk_cotizacion_cliente1_idx` (`idcliente`),
  CONSTRAINT `fk_compras_empleado1` FOREIGN KEY (`idempleado`) REFERENCES `empleado` (`idempleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cotizacion_cliente1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacion`
--

LOCK TABLES `cotizacion` WRITE;
/*!40000 ALTER TABLE `cotizacion` DISABLE KEYS */;
INSERT INTO `cotizacion` VALUES (1,1,2,1886402,359314,2245716,'2016-03-22 20:38:49'),(2,1,2,1550500,295333,1845833,'2016-03-22 21:13:42'),(3,1,2,1550500,295333,1845833,'2016-03-22 21:16:49'),(4,2,2,1222170,232794,1454964,'2016-03-23 14:00:51'),(5,1,2,1001270,190718,1191988,'2016-03-26 17:53:27'),(6,1,2,713297,135865,849162,'2016-04-14 02:51:19'),(7,1,2,713297,135865,849162,'2016-04-14 02:55:16'),(8,1,2,713297,135865,849162,'2016-04-14 02:56:46'),(9,2,2,114244,21760,136004,'2016-06-03 02:32:18'),(10,1,3,1386105,264019,1650124,'2016-08-11 04:32:51'),(11,1,2,350815,66821,417636,'2016-10-01 15:18:44'),(12,1,2,412157,78505,490662,'2016-10-11 00:46:20'),(13,1,2,412157,78505,490662,'2016-10-11 00:57:45'),(14,1,2,412157,78505,490662,'2016-10-11 00:58:06'),(15,1,2,646234,123092,769326,'2016-10-11 00:59:09'),(16,1,2,646234,123092,769326,'2016-10-11 02:16:41'),(17,1,2,411224,78328,489552,'2016-10-11 02:46:52'),(18,1,2,411224,78328,489552,'2016-10-11 03:48:03'),(19,1,2,411224,78328,489552,'2016-10-11 03:48:19'),(20,1,2,2689135,512216,3201351,'2016-10-11 03:54:39'),(21,1,2,2689135,512216,3201351,'2016-10-11 04:06:23'),(22,1,2,411224,78328,489552,'2016-10-11 14:28:13'),(23,1,2,1783459,339706,2123165,'2016-10-12 19:54:30'),(24,1,2,1783459,339706,2123165,'2016-10-12 20:03:03'),(25,1,2,2131878,406071,2537949,'2016-10-14 17:09:06'),(26,1,3,1459660,278030,1737690,'2016-10-14 17:15:28'),(27,1,2,1522093,289922,1812015,'2016-10-14 17:22:15'),(28,1,2,1522093,289922,1812015,'2016-10-14 18:24:11'),(29,1,2,1522093,289922,1812015,'2016-10-14 18:24:20'),(30,1,2,1068876,203595,1272471,'2016-10-17 15:45:34'),(31,1,2,1496712,285087,1781799,'2016-10-18 16:03:48'),(32,1,2,408042,77722,485764,'2016-10-18 16:14:51'),(33,1,2,1682760,320525,2003285,'2016-10-18 16:55:48'),(34,1,2,290304,55296,345600,'2016-10-18 22:42:57'),(35,1,2,2281495,434570,2716065,'2016-10-20 15:38:18');
/*!40000 ALTER TABLE `cotizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotizaciondetalle`
--

DROP TABLE IF EXISTS `cotizaciondetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cotizaciondetalle` (
  `idcotizacionDetalle` int(11) NOT NULL AUTO_INCREMENT,
  `idcotizacion` int(8) NOT NULL,
  `idproductos` int(11) NOT NULL,
  `nombrepro` varchar(45) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precioventa` bigint(15) NOT NULL,
  `total` bigint(15) DEFAULT NULL,
  `preciotrabajo` int(11) DEFAULT NULL,
  `porcentajeganancia` int(11) DEFAULT NULL,
  `alto` varchar(45) DEFAULT NULL,
  `ancho` varchar(45) DEFAULT NULL,
  `fondo` varchar(45) DEFAULT NULL,
  `imgPrincipal` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`idcotizacionDetalle`),
  KEY `fk_cotizacionDetalle_productos1_idx` (`idproductos`),
  KEY `fk_cotizacionDetalle_cotizacion1_idx` (`idcotizacion`),
  CONSTRAINT `fk_cotizacionDetalle_cotizacion1` FOREIGN KEY (`idcotizacion`) REFERENCES `cotizacion` (`idcotizacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cotizacionDetalle_productos1` FOREIGN KEY (`idproductos`) REFERENCES `productos` (`idproductos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizaciondetalle`
--

LOCK TABLES `cotizaciondetalle` WRITE;
/*!40000 ALTER TABLE `cotizaciondetalle` DISABLE KEYS */;
INSERT INTO `cotizaciondetalle` VALUES (3,1,1,'2 cuerpos 440*340',3,748572,2245716,50000,50,'440','340',NULL,NULL),(4,2,2,'3 cuerpos 134*239',3,407845,1223535,45000,50,'134','239',NULL,NULL),(5,2,2,'3 cuerpos 134*110',2,311149,622298,45000,50,'134','110',NULL,NULL),(6,3,2,'3 cuerpos 134*239',3,407845,1223535,45000,50,'134','239',NULL,NULL),(7,3,2,'3 cuerpos 134*110',2,311149,622298,45000,50,'134','110',NULL,NULL),(8,4,1,'2 cuerpos 440*240',2,727482,1454964,56000,50,'440','240',NULL,NULL),(9,5,2,'3 cuerpos 240*340',2,595994,1191988,50000,50,'240','340',NULL,NULL),(10,6,2,'3 cuerpos 234*123',2,424581,849162,45000,50,'234','123',NULL,NULL),(11,7,2,'3 cuerpos 234*123',2,424581,849162,45000,50,'234','123',NULL,NULL),(12,8,2,'3 cuerpos 234*123',2,424581,849162,45000,50,'234','123',NULL,NULL),(13,9,4,'vidrio 100*100',2,44002,88004,20000,0,'100','100','',NULL),(14,9,4,'vidrio 100*100',2,24000,48000,0,0,'100','100','',NULL),(15,10,7,'vitrina Eliot 100*120 fondo: 040',2,387892,775784,50000,50,'100','120','040',NULL),(16,10,7,'vitrina Eliot 100*140 fondo: 040',2,437170,874340,50000,50,'100','140','040',NULL),(17,11,1,'2 cuerpos 210*205',1,417636,417636,50000,30,'210','205','',NULL),(18,12,1,'2 cuerpos 110*120',2,245331,490662,45555,45,'110','120','',NULL),(19,13,1,'2 cuerpos 110*120',2,245331,490662,45555,45,'110','120','',NULL),(20,14,1,'2 cuerpos 110*120',2,245331,490662,45555,45,'110','120','',NULL),(21,15,1,'2 cuerpos 110*120',3,256442,769326,56666,45,'110','120','',NULL),(22,16,1,'2 cuerpos 110*120',3,256442,769326,56666,45,'110','120','',NULL),(23,17,1,'2 cuerpos 110*120',2,244776,489552,45000,45,'110','120','',NULL),(24,18,1,'2 cuerpos 110*120',2,244776,489552,45000,45,'110','120','',NULL),(25,19,1,'2 cuerpos 110*120',2,244776,489552,45000,45,'110','120','',NULL),(26,20,1,'2 cuerpos 234*334',3,651795,1955385,45666,56,'234','334','',NULL),(27,20,7,'vitrina Eliot 110*149 fondo: 050',2,622983,1245966,67888,45,'110','149','050',NULL),(28,21,1,'2 cuerpos 234*334',3,651795,1955385,45666,56,'234','334','',NULL),(29,21,7,'vitrina Eliot 110*149 fondo: 050',2,622983,1245966,67888,45,'110','149','050',NULL),(30,22,1,'2 cuerpos 110*120',2,244776,489552,45000,45,'110','120','',NULL),(31,23,3,'4 cuerpos 110*205',5,424633,2123165,50000,50,'110','205','',NULL),(32,24,3,'4 cuerpos 110*205',5,424633,2123165,50000,50,'110','205','',NULL),(33,25,5,'Puerta Aluminio T87 con Vidrio 456*113',3,845983,2537949,60000,50,'456','113','',NULL),(34,26,1,'2 cuerpos 234*113',5,347538,1737690,56666,45,'234','113','',NULL),(35,27,3,'4 cuerpos 234*113',3,604005,1812015,56666,56,'234','113','',NULL),(36,28,3,'4 cuerpos 234*113',3,604005,1812015,56666,56,'234','113','',NULL),(37,29,3,'4 cuerpos 234*113',3,604005,1812015,56666,56,'234','113','',NULL),(38,30,1,'2 cuerpo 234*113',3,424157,1272471,45555,67,'234','113','',NULL),(39,31,5,'Puerta Aluminio T87 con Vidrio 234*113',3,593933,1781799,76000,56,'234','113','',NULL),(40,32,5,'Puerta Aluminio T87 con Vidrio 210*113',1,485764,485764,45000,45,'210','113','',NULL),(41,33,1,'2 cuerpo 234*113',5,400657,2003285,50000,50,'234','113','',NULL),(42,34,4,'vidrio 234*113',4,86400,345600,0,0,'234','113','',NULL),(43,35,3,'4 cuerpos 234*345',3,905355,2716065,56000,57,'234','345','',NULL);
/*!40000 ALTER TABLE `cotizaciondetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamento` (
  `iddepartamento` int(4) NOT NULL,
  `nombreDept` varchar(45) NOT NULL,
  PRIMARY KEY (`iddepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'antioquia'),(2,'bolivar');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado` (
  `idempleado` int(6) NOT NULL AUTO_INCREMENT,
  `idrol` int(3) NOT NULL,
  `idciudad` int(4) NOT NULL,
  `idtipodocumento` int(5) NOT NULL,
  `numeroDocumento` varchar(15) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `edad` int(11) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `correoElectronico` varchar(65) NOT NULL,
  `password` varchar(705) NOT NULL,
  `fechaIngreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `telefono` varchar(15) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `imgPrincipal` varchar(65) DEFAULT NULL,
  PRIMARY KEY (`idempleado`),
  KEY `fk_empleado_rol1_idx` (`idrol`),
  KEY `fk_empleado_ciudad1_idx` (`idciudad`),
  KEY `fk_empleado_tipodocumento1_idx` (`idtipodocumento`),
  CONSTRAINT `fk_empleado_ciudad1` FOREIGN KEY (`idciudad`) REFERENCES `ciudad` (`idciudad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_empleado_rol1` FOREIGN KEY (`idrol`) REFERENCES `rol` (`idrol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_empleado_tipodocumento1` FOREIGN KEY (`idtipodocumento`) REFERENCES `tipodocumento` (`idtipodocumento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,1,1,1,'94321235','william ferna','Sanchez fajardo',41,1,'2013-05-07','william@hotmail.com','ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413','2016-01-27 04:39:59','52524','fsfsf','1director.jpg'),(2,2,2,1,'29663120','Margarita res','Duran Narvaez',35,0,'2013-05-02','margarita@hotmail.com','3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79','2016-01-27 04:39:59','535335','bggw',NULL),(3,2,3,1,'29345678','sulamy e','Hernandez vietma',53,0,'1964-05-07','sulamy@hotmail.com','ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413','2016-01-27 04:39:59','52524','Kra 30 17-45',NULL);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturas` (
  `idfacturas` int(11) NOT NULL AUTO_INCREMENT,
  `idempleado` int(6) NOT NULL,
  `idcliente` int(6) NOT NULL,
  `subtotal` bigint(15) DEFAULT NULL,
  `iva` bigint(15) DEFAULT NULL,
  `preciototal` bigint(15) DEFAULT NULL,
  `fechaventa` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idfacturas`),
  KEY `fk_ventas_cliente_idx` (`idcliente`),
  KEY `fk_ventas_empleado1_idx` (`idempleado`),
  CONSTRAINT `fk_ventas_cliente` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ventas_empleado1` FOREIGN KEY (`idempleado`) REFERENCES `empleado` (`idempleado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES (19,1,2,2833660,539744,3373404,'2016-03-22 22:35:56'),(20,2,2,2466597,469827,2936424,'2016-03-23 14:02:01'),(21,1,2,2977890,567216,3545106,'2016-04-14 23:34:01'),(22,1,2,1473804,280724,1754528,'2016-04-23 22:41:54'),(23,1,2,1473804,280724,1754528,'2016-04-23 22:44:15'),(24,1,2,1072434,204272,1276706,'2016-04-26 00:14:59'),(50,1,2,0,0,0,'2016-04-26 00:14:59'),(51,1,2,285437,54368,339805,'2016-05-12 18:33:50'),(52,1,2,286267,54527,340794,'2016-05-15 02:11:08'),(53,1,2,341886,65120,407006,'2016-05-23 22:04:59'),(56,1,2,446467,85041,531508,'2016-10-09 20:21:38'),(57,1,2,776661,147935,924596,'2016-10-09 20:29:23'),(58,1,2,776661,147935,924596,'2016-10-09 20:30:08'),(59,1,2,563405,107315,670720,'2016-10-12 03:41:00'),(60,1,2,964373,183689,1148062,'2016-10-12 14:37:33'),(61,1,2,1299548,247532,1547080,'2016-10-12 15:13:55'),(62,1,3,974661,185649,1160310,'2016-10-12 15:17:29'),(63,1,2,560170,106698,666868,'2016-10-12 18:17:39'),(64,1,2,1420209,270516,1690725,'2016-10-12 19:24:01'),(65,1,3,4813059,916772,5729831,'2016-10-12 20:13:24'),(66,1,2,1259098,239828,1498926,'2016-10-13 02:26:43'),(67,1,2,677583,129063,806646,'2016-10-13 02:42:14'),(68,1,2,1166745,222237,1388982,'2016-10-13 03:18:58'),(69,1,2,602212,114706,716918,'2016-10-13 23:40:24'),(70,1,2,202395,38551,240946,'2016-10-14 00:09:15'),(71,1,2,379254,72238,451492,'2016-10-14 00:18:26'),(74,1,3,619778,118052,737830,'2016-10-14 15:25:10'),(75,1,3,1612977,307233,1920210,'2016-10-14 15:33:03'),(76,1,3,1635679,311557,1947236,'2016-10-14 15:41:55'),(77,1,2,368994,70284,439278,'2016-10-14 15:44:57'),(78,1,2,1754784,334244,2089028,'2016-10-14 15:46:21'),(79,1,2,964052,183628,1147680,'2016-10-14 15:53:45'),(80,1,2,686875,130833,817708,'2016-10-31 23:52:41'),(81,1,2,1124204,214134,1338338,'2016-11-02 17:03:42');
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materiales`
--

DROP TABLE IF EXISTS `materiales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materiales` (
  `idmateriales` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `preciocost` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmateriales`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materiales`
--

LOCK TABLES `materiales` WRITE;
/*!40000 ALTER TABLE `materiales` DISABLE KEYS */;
INSERT INTO `materiales` VALUES (1,'cabezal 744 natural',8500,0),(2,'sillar 744 natural',6800,0),(3,'jamba 744 natural',5785,0),(4,'enganche 744 natural',6820,0),(5,'traslape 744 natural',6820,0),(6,'hsuperior 744 natural',4884,0),(7,'hinferior 744 natural',6384,0),(8,'rodamiento',8500,96),(9,'chapa',5000,98),(10,'guias',2000,84),(11,'empaque',1500,0),(12,'adaptador 744 natural',3750,0),(13,'cabezal5020 natural',8703,0),(14,'sillar5020 natural',8867,0),(15,'jamba5020 natural',8700,0),(16,'enganche5020 natural',8583,0),(17,'traslape5020 natural',8867,0),(18,'hsuperior5020 natural',6852,0),(19,'hinferior5020 natural',8317,0),(20,'rodamiento5020',9500,100),(21,'chapa5020',5000,100),(22,'guias5020',2000,100),(23,'empaque5020',1500,0),(24,'adaptador5020 natural',5416,0),(25,'cabezal8025 natural',10367,0),(26,'sillar8025 natural',10533,0),(27,'jamba8025 natural',10367,0),(28,'enganche8025 natural',10250,0),(29,'traslape8025 natural',10533,0),(30,'hsuperior8025 natural',8517,0),(31,'hinferior8025 natural',10000,0),(32,'rodamiento8025',9500,100),(33,'chapa8025',5000,100),(34,'guias8025',2000,100),(35,'empaque8025',1500,0),(36,'adaptador8025 natural',7083,0),(37,'cabezal 744 Anolo',9500,0),(38,'sillar  744 Anolo',7800,0),(39,'jamba  744 Anolo',6785,0),(40,'enganche  744 Anolo',7820,0),(41,'traslape  744 Anolo',7820,0),(42,'hsuperior  744 Anolo',5884,0),(43,'hinferior  744 Anolo',7384,0),(44,'adaptador 744 Anolo',4750,0),(45,'cabezal5020 Anolo',8903,0),(46,'sillar5020  Anolo',9867,0),(47,'jamba5020  Anolo',9700,0),(48,'enganche5020  Anolo',8983,0),(49,'traslape5020  Anolo',9867,0),(50,'hsuperior5020  Anolo',7852,0),(51,'hinferior5020  Anolo',8817,0),(52,'adaptador5020  Anolo',5916,0),(53,'cabezal8025  Anolo',10867,0),(54,'sillar8025  Anolo',10933,0),(55,'jamba8025  Anolo',10967,0),(56,'enganche8025  Anolo',10750,0),(57,'traslape8025  Anolo',10933,0),(58,'hsuperior8025  Anolo',8917,0),(59,'hinferior8025  Anolo',10500,0),(60,'adaptador8025  Anolo',7783,0),(61,'cabezal 744 Color',8900,0),(62,'sillar 744 Color',7300,0),(63,'jamba 744 Color',5985,0),(64,'enganche 744 Color',7820,0),(65,'traslape 744 Color',7820,0),(66,'hsuperior 744 Color',5884,0),(67,'hinferior 744 Color',6984,0),(68,'adaptador 744 Color',4250,0),(69,'cabezal5020 Color',9203,0),(70,'sillar5020  Color',9367,0),(71,'jamba5020  Color',9200,0),(72,'enganche5020  Color',8983,0),(73,'traslape5020  Color',9367,0),(74,'hsuperior5020  Color',7352,0),(75,'hinferior5020  Color',8917,0),(76,'adaptador5020  Color',5816,0),(77,'cabezal8025  Color',10867,0),(78,'sillar8025  Color',10933,0),(79,'jamba8025  Color',10867,0),(80,'enganche8025  Color',10750,0),(81,'traslape8025  Color',10533,0),(82,'hsuperior8025  Color',8517,0),(83,'hinferior8025  Color',10000,0),(84,'adaptador8025  Color',5416,0);
/*!40000 ALTER TABLE `materiales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `idproductos` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `imgPrinci` varchar(65) DEFAULT NULL,
  PRIMARY KEY (`idproductos`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Ventana 2 cuerpo','ventana',NULL),(2,'Ventana 3 cuerpos','ventana',NULL),(3,'Ventana 4 cuerpos','ventanaS',NULL),(4,'vidrio','vidrio',NULL),(5,'Puerta Aluminio T87 con Vidrio','aluminio',NULL),(6,'Puerta Aluminio T103 con entamborado U71','entamborada',NULL),(7,'vitrina Eliot Alamo 1 y acoples','vitrina',NULL),(8,'Puerta Aluminio T87  con entamborado F06','aluminio y entamborado',NULL),(9,'puerta Aluminio T103 con vidrio','aluminio y vidrio',NULL),(10,'puerta Aluminio Alamo 1 1/2','aluminioAlamo y Vidrio',NULL),(11,'vitrina PerfilEsquinero 1','vitrina corta',NULL),(12,'vitrina PerfilEsquinero 1 Larga','vitrina larga',NULL);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puertas`
--

DROP TABLE IF EXISTS `puertas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `puertas` (
  `idpuertas` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `preciocot` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`idpuertas`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puertas`
--

LOCK TABLES `puertas` WRITE;
/*!40000 ALTER TABLE `puertas` DISABLE KEYS */;
INSERT INTO `puertas` VALUES (1,'aluminio3conAleta Natural',9400,0),(2,'aluminioT87 Natural',5333,0),(3,'partidorT103 Natural',12833,0),(4,'pisavidrios Natural',6700,0),(5,'chapa',98000,100),(6,'pibotesAmericanos',30000,100),(7,'varillaTensora',5000,100),(8,'escuadras',500,100),(9,'perfilU71 Natural',10000,0),(10,'entamborado Natural',10000,0),(11,'entamboradoF06 Natural',10000,0),(12,'Alamo UnoMedia Natural',10000,0),(13,'bisagra',1800,100),(14,'empaque',1400,0),(15,'aluminio3conAleta Anolo',10400,0),(16,'aluminioT87 Anolo',6333,0),(17,'partidorT103 Anolo',13833,0),(18,'pisavidrios Anolo',7700,0),(19,'perfilU71 Anolo',11000,0),(20,'entamborado Anolo',11000,0),(21,'entamboradoF06 Anolo',11000,0),(22,'Alamo UnoMedia Anolo',11000,0),(23,'aluminio3conAleta color',9500,0),(24,'aluminioT87 color',5833,0),(25,'partidorT103 color',13333,0),(26,'pisavidrios color',7200,0),(27,'perfilU71 color',10500,0),(28,'entamborado color',10500,0),(29,'entamboradoF06 color',10500,0),(30,'Alamo UnoMedia color',10500,0);
/*!40000 ALTER TABLE `puertas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rol` (
  `idrol` int(3) NOT NULL,
  `nombreRol` varchar(45) NOT NULL,
  PRIMARY KEY (`idrol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'adminisrador'),(2,'cajero');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sueldo`
--

DROP TABLE IF EXISTS `sueldo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sueldo` (
  `idsueldo` int(11) NOT NULL AUTO_INCREMENT,
  `idempleado` int(6) NOT NULL,
  `sueldoBase` decimal(18,2) NOT NULL,
  `comision` decimal(18,2) NOT NULL,
  `horasExtras` int(11) DEFAULT NULL,
  `descuentos` decimal(18,2) DEFAULT NULL,
  `sueldoTotal` decimal(18,2) NOT NULL,
  `fechaCreacionSueldo` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idsueldo`),
  KEY `fk_sueldo_empleado1_idx` (`idempleado`),
  CONSTRAINT `fk_sueldo_empleado1` FOREIGN KEY (`idempleado`) REFERENCES `empleado` (`idempleado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sueldo`
--

LOCK TABLES `sueldo` WRITE;
/*!40000 ALTER TABLE `sueldo` DISABLE KEYS */;
INSERT INTO `sueldo` VALUES (4,1,670000.00,134200.00,12,234560.00,617640.00,'2016-03-23 02:04:43'),(5,2,500000.00,120000.00,13,58000.00,614000.00,'2016-04-14 23:39:23'),(6,1,120000.00,10000.00,5,45000.00,105000.00,'2016-08-06 01:51:23'),(7,1,150000.00,20000.00,6,32000.00,162000.00,'2016-10-01 16:00:40');
/*!40000 ALTER TABLE `sueldo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodocumento`
--

DROP TABLE IF EXISTS `tipodocumento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipodocumento` (
  `idtipodocumento` int(5) NOT NULL,
  `nombretd` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipodocumento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodocumento`
--

LOCK TABLES `tipodocumento` WRITE;
/*!40000 ALTER TABLE `tipodocumento` DISABLE KEYS */;
INSERT INTO `tipodocumento` VALUES (1,'Cedula'),(2,'Nit'),(3,'Rut');
/*!40000 ALTER TABLE `tipodocumento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventanadetalle`
--

DROP TABLE IF EXISTS `ventanadetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventanadetalle` (
  `idventanaDetalle` int(11) NOT NULL AUTO_INCREMENT,
  `idfacturas` int(11) NOT NULL,
  `idproductos` int(11) NOT NULL,
  `nombrepro` varchar(45) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precioventa` bigint(15) NOT NULL,
  `total` bigint(15) DEFAULT NULL,
  `preciotrabajo` int(11) DEFAULT NULL,
  `porcentajeganancia` int(11) DEFAULT NULL,
  `alto` varchar(45) DEFAULT NULL,
  `ancho` varchar(45) DEFAULT NULL,
  `fondo` varchar(45) DEFAULT NULL,
  `imgPrincipal` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`idventanaDetalle`),
  KEY `fk_ventanaDetalle_facturas1_idx` (`idfacturas`),
  KEY `fk_ventanaDetalle_productos1_idx` (`idproductos`),
  CONSTRAINT `fk_ventanaDetalle_facturas1` FOREIGN KEY (`idfacturas`) REFERENCES `facturas` (`idfacturas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ventanaDetalle_productos1` FOREIGN KEY (`idproductos`) REFERENCES `productos` (`idproductos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventanadetalle`
--

LOCK TABLES `ventanadetalle` WRITE;
/*!40000 ALTER TABLE `ventanadetalle` DISABLE KEYS */;
INSERT INTO `ventanadetalle` VALUES (39,19,2,'3 cuerpos 440*340',3,1124468,3373404,67000,50,'440','340',NULL,NULL),(40,20,3,'4 cuerpos 440*240',3,978808,2936424,55000,45,'440','240',NULL,NULL),(41,21,3,'4 cuerpos 123*345',4,501229,2004916,34400,50,'123','345',NULL,NULL),(42,21,3,'4 cuerpos 254*345',2,770095,1540190,34400,50,'254','345',NULL,NULL),(43,22,2,'3 cuerpos 345*354',2,877264,1754528,50000,50,'345','354','',NULL),(44,23,2,'3 cuerpos 345*354',2,877264,1754528,50000,50,'345','354','',NULL),(45,24,1,'2 cuerpos 345*354',2,638353,1276706,50000,50,'345','354','',NULL),(46,51,1,'2 cuerpos 150*150',1,339805,339805,50000,50,'150','150','',NULL),(47,52,2,'3 cuerpos 150*150',1,340794,340794,50000,50,'150','150','',NULL),(48,53,5,'Puerta Aluminio T87 con Vidrio 220*113',1,407006,407006,50000,50,'220','113','',NULL),(49,56,1,'2 cuerpos 123*123',2,265754,531508,45555,45,'123','123','',NULL),(50,57,1,'2 cuerpos 123*123',4,231149,924596,34567,45,'123','123','',NULL),(51,58,1,'2 cuerpos 123*123',4,231149,924596,34567,45,'123','123','',NULL),(52,59,1,'2 cuerpos 123*234',2,335360,670720,45555,56,'123','234','',NULL),(53,60,5,'Puerta Aluminio T87 con Vidrio 234*123',2,574031,1148062,45555,56,'234','123','',NULL),(54,61,1,'2 cuerpos 234*234',4,386770,1547080,34,45,'234','234','',NULL),(55,62,1,'2 cuerpos 234*234',3,386770,1160310,34,45,'234','234','',NULL),(56,63,1,'2 cuerpos 123*234',2,333434,666868,34,56,'123','234','',NULL),(57,64,5,'Puerta Aluminio T87 con Vidrio 234*113',3,563575,1690725,56666,56,'234','113','',NULL),(58,65,2,'3 cuerpos 234*113',4,449902,1799608,45000,34,'234','113','',NULL),(59,65,5,'Puerta Aluminio T87 con Vidrio 234*234',3,821273,2463819,55555,56,'234','234','',NULL),(60,65,7,'vitrina Eliot 123*113 fondo: 090',2,733202,1466404,56666,56,'123','113','090',NULL),(61,66,1,'2 cuerpos 234*456',2,749463,1498926,3455,56,'234','456','',NULL),(62,67,1,'2 cuerpos 234*113',2,403323,806646,45555,45,'234','113','',NULL),(63,68,1,'2 cuerpos 234*113',3,462994,1388982,234,123,'234','113','',NULL),(64,69,1,'2 cuerpos 113*234',2,358459,716918,55666,45,'113','234','',NULL),(65,70,1,'2 cuerpos 150*150',1,240946,240946,3000,50,'150','150','',NULL),(66,71,1,'2 cuerpos 140*140',2,225746,451492,3000,50,'140','140','',NULL),(67,74,1,'2 cuerpos 234*113',2,368915,737830,45333,34,'234','113','',NULL),(68,75,1,'2 cuerpos 234*113',5,384042,1920210,23333,56,'234','113','',NULL),(69,76,2,'3 cuerpos 234*113',4,486809,1947236,56666,45,'234','113','',NULL),(70,77,1,'2 cuerpos 234*113',1,439278,439278,60000,67,'234','113','',NULL),(71,78,5,'Puerta Aluminio T87 con Vidrio 234*113',4,522257,2089028,45000,45,'234','113','',NULL),(72,79,1,'2 cuerpos 234*113',3,382560,1147680,70000,34,'234','113','',NULL),(73,80,1,'2 cuerpo 234*113',2,408854,817708,67000,45,'234','113','',NULL),(74,81,1,'2 cuerpo 234*113',2,669169,1338338,346666,34,'234','113','',NULL);
/*!40000 ALTER TABLE `ventanadetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vidrios`
--

DROP TABLE IF EXISTS `vidrios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vidrios` (
  `idvidrios` int(11) NOT NULL AUTO_INCREMENT,
  `calibre` varchar(45) NOT NULL,
  `preciocost` int(11) NOT NULL,
  PRIMARY KEY (`idvidrios`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vidrios`
--

LOCK TABLES `vidrios` WRITE;
/*!40000 ALTER TABLE `vidrios` DISABLE KEYS */;
INSERT INTO `vidrios` VALUES (1,'2mm',9724),(2,'2mm Antireflejo',20400),(3,'3mm',10684),(4,'4mm',20000),(5,'5mm ',22552),(6,'6mm ',26168),(7,'grabado',26800),(8,'azul ',25488),(9,'3mm Espejo',19850),(10,'4mm Espejo',22630),(11,'8mm ',30000),(12,'vidrio claro 12mm',20000),(13,'vidrio bronce 4mm',21240),(14,'vidrio espejo 4mm',22630);
/*!40000 ALTER TABLE `vidrios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vitrinas`
--

DROP TABLE IF EXISTS `vitrinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vitrinas` (
  `idvitrinas` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `preciocot` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`idvitrinas`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vitrinas`
--

LOCK TABLES `vitrinas` WRITE;
/*!40000 ALTER TABLE `vitrinas` DISABLE KEYS */;
INSERT INTO `vitrinas` VALUES (1,'cuartoCirculo',5750,0),(2,'anguloMedia',1334,0),(3,'acoples',3500,100),(4,'carrileras',4417,100),(5,'Piañas',300,100),(6,'rodamientosPiso',11250,100),(7,'naveDivisionDucha',3250,0),(8,'rodamientosDucha',1000,100),(9,'empaque',1400,0),(10,'perfilEsqunero Una',5700,0),(11,'tubular Una',4917,0),(12,'rodamiento Economico',4000,100),(13,'anclaje A15',400,100);
/*!40000 ALTER TABLE `vitrinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'vidrieria'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-18 11:21:51
