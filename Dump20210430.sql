CREATE DATABASE  IF NOT EXISTS `compalhia_aerea` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `compalhia_aerea`;
-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: compalhia_aerea
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aeroporto`
--

DROP TABLE IF EXISTS `aeroporto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aeroporto` (
  `cod_aeroporto` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(30) DEFAULT NULL,
  `localização` varchar(30) NOT NULL,
  PRIMARY KEY (`cod_aeroporto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aeroporto`
--

LOCK TABLES `aeroporto` WRITE;
/*!40000 ALTER TABLE `aeroporto` DISABLE KEYS */;
/*!40000 ALTER TABLE `aeroporto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avião`
--

DROP TABLE IF EXISTS `avião`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avião` (
  `Aviao` int(11) NOT NULL AUTO_INCREMENT,
  `Fabricante` varchar(50) DEFAULT NULL,
  `Capacidade` varchar(100) DEFAULT NULL,
  `Tipo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Aviao`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avião`
--

LOCK TABLES `avião` WRITE;
/*!40000 ALTER TABLE `avião` DISABLE KEYS */;
/*!40000 ALTER TABLE `avião` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `cpf` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `endereço` varchar(30) DEFAULT NULL,
  `telefone` int(11) NOT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passagem`
--

DROP TABLE IF EXISTS `passagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passagem` (
  `numero` int(11) NOT NULL AUTO_INCREMENT,
  `datav` date DEFAULT NULL,
  `classe` varchar(5) DEFAULT NULL,
  `num_Poltrona` varchar(5) DEFAULT NULL,
  `preço` float DEFAULT NULL,
  PRIMARY KEY (`numero`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passagem`
--

LOCK TABLES `passagem` WRITE;
/*!40000 ALTER TABLE `passagem` DISABLE KEYS */;
/*!40000 ALTER TABLE `passagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vôo`
--

DROP TABLE IF EXISTS `vôo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vôo` (
  `Id_voo` int(11) NOT NULL AUTO_INCREMENT,
  `Compalhia` varchar(30) DEFAULT NULL,
  `Destino` varchar(30) DEFAULT NULL,
  `Horario` time DEFAULT NULL,
  PRIMARY KEY (`Id_voo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vôo`
--

LOCK TABLES `vôo` WRITE;
/*!40000 ALTER TABLE `vôo` DISABLE KEYS */;
/*!40000 ALTER TABLE `vôo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-30  0:29:26
