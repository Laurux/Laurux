-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: Laurux01
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `Art_Saisis`
--

DROP TABLE IF EXISTS `Art_Saisis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Art_Saisis` (
  `code` char(15) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Art_Saisis`
--

LOCK TABLES `Art_Saisis` WRITE;
/*!40000 ALTER TABLE `Art_Saisis` DISABLE KEYS */;
/*!40000 ALTER TABLE `Art_Saisis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Artsup`
--

DROP TABLE IF EXISTS `Artsup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Artsup` (
  `art_code` char(15) NOT NULL,
  PRIMARY KEY (`art_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Artsup`
--

LOCK TABLES `Artsup` WRITE;
/*!40000 ALTER TABLE `Artsup` DISABLE KEYS */;
/*!40000 ALTER TABLE `Artsup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Bl`
--

DROP TABLE IF EXISTS `Bl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bl` (
  `num` varchar(12) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `ht` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bl`
--

LOCK TABLES `Bl` WRITE;
/*!40000 ALTER TABLE `Bl` DISABLE KEYS */;
/*!40000 ALTER TABLE `Bl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cli_Mailing`
--

DROP TABLE IF EXISTS `Cli_Mailing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cli_Mailing` (
  `code` char(15) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cli_Mailing`
--

LOCK TABLES `Cli_Mailing` WRITE;
/*!40000 ALTER TABLE `Cli_Mailing` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cli_Mailing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Corjxs`
--

DROP TABLE IF EXISTS `Corjxs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Corjxs` (
  `sage` char(3) NOT NULL,
  `laurux` char(2) NOT NULL,
  PRIMARY KEY (`sage`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Corjxs`
--

LOCK TABLES `Corjxs` WRITE;
/*!40000 ALTER TABLE `Corjxs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Corjxs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Corsage`
--

DROP TABLE IF EXISTS `Corsage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Corsage` (
  `acode` char(8) NOT NULL,
  `ncode` char(8) NOT NULL,
  PRIMARY KEY (`acode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Corsage`
--

LOCK TABLES `Corsage` WRITE;
/*!40000 ALTER TABLE `Corsage` DISABLE KEYS */;
/*!40000 ALTER TABLE `Corsage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ctrln`
--

DROP TABLE IF EXISTS `Ctrln`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ctrln` (
  `compte` varchar(8) NOT NULL,
  `intitule` varchar(30) DEFAULT NULL,
  `jour` varchar(2) DEFAULT NULL,
  `mois` varchar(6) NOT NULL,
  `libelle` varchar(30) DEFAULT NULL,
  `dte` int(11) DEFAULT NULL,
  `montantd` double DEFAULT NULL,
  `montantc` double DEFAULT NULL,
  PRIMARY KEY (`compte`,`mois`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ctrln`
--

LOCK TABLES `Ctrln` WRITE;
/*!40000 ALTER TABLE `Ctrln` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ctrln` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Detail`
--

DROP TABLE IF EXISTS `Detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Detail` (
  `num` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `code` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `mtd` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mtc` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numfac` char(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intitule` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`num`,`numfac`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Detail`
--

LOCK TABLES `Detail` WRITE;
/*!40000 ALTER TABLE `Detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `Detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Docs_Autres`
--

DROP TABLE IF EXISTS `Docs_Autres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Docs_Autres` (
  `code` varchar(10) NOT NULL DEFAULT '',
  `doc` varchar(100) NOT NULL DEFAULT '',
  `doc2` varchar(100) DEFAULT NULL,
  `org` char(4) DEFAULT NULL,
  PRIMARY KEY (`code`,`doc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Docs_Autres`
--

LOCK TABLES `Docs_Autres` WRITE;
/*!40000 ALTER TABLE `Docs_Autres` DISABLE KEYS */;
/*!40000 ALTER TABLE `Docs_Autres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Docs_Clients`
--

DROP TABLE IF EXISTS `Docs_Clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Docs_Clients` (
  `code` varchar(15) NOT NULL DEFAULT '',
  `doc` varchar(100) NOT NULL DEFAULT '',
  `doc2` varchar(100) DEFAULT NULL,
  `org` char(4) DEFAULT NULL,
  PRIMARY KEY (`code`,`doc`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Docs_Clients`
--

LOCK TABLES `Docs_Clients` WRITE;
/*!40000 ALTER TABLE `Docs_Clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `Docs_Clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Docs_Compta`
--

DROP TABLE IF EXISTS `Docs_Compta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Docs_Compta` (
  `code` varchar(10) NOT NULL DEFAULT '',
  `doc` varchar(100) NOT NULL DEFAULT '',
  `doc2` varchar(300) DEFAULT NULL,
  `org` char(4) DEFAULT NULL,
  PRIMARY KEY (`code`,`doc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Docs_Compta`
--

LOCK TABLES `Docs_Compta` WRITE;
/*!40000 ALTER TABLE `Docs_Compta` DISABLE KEYS */;
/*!40000 ALTER TABLE `Docs_Compta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Docs_Fournisseurs`
--

DROP TABLE IF EXISTS `Docs_Fournisseurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Docs_Fournisseurs` (
  `code` varchar(10) NOT NULL DEFAULT '',
  `doc` varchar(100) NOT NULL DEFAULT '',
  `doc2` varchar(100) DEFAULT NULL,
  `org` char(4) DEFAULT NULL,
  PRIMARY KEY (`code`,`doc`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Docs_Fournisseurs`
--

LOCK TABLES `Docs_Fournisseurs` WRITE;
/*!40000 ALTER TABLE `Docs_Fournisseurs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Docs_Fournisseurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Docs_Produits`
--

DROP TABLE IF EXISTS `Docs_Produits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Docs_Produits` (
  `code` varchar(10) NOT NULL DEFAULT '',
  `doc` varchar(100) NOT NULL DEFAULT '',
  `doc2` varchar(100) DEFAULT NULL,
  `org` char(4) DEFAULT NULL,
  PRIMARY KEY (`code`,`doc`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Docs_Produits`
--

LOCK TABLES `Docs_Produits` WRITE;
/*!40000 ALTER TABLE `Docs_Produits` DISABLE KEYS */;
/*!40000 ALTER TABLE `Docs_Produits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ecrs`
--

DROP TABLE IF EXISTS `Ecrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ecrs` (
  `jour` char(2) NOT NULL,
  `intitule` char(30) DEFAULT NULL,
  `dte` date DEFAULT NULL,
  `numero` int(6) NOT NULL DEFAULT '0',
  `numdoc` char(10) DEFAULT NULL,
  `compte` char(8) DEFAULT NULL,
  `montantd` decimal(12,2) DEFAULT NULL,
  `montantc` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`numero`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ecrs`
--

LOCK TABLES `Ecrs` WRITE;
/*!40000 ALTER TABLE `Ecrs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ecrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Facturefm`
--

DROP TABLE IF EXISTS `Facturefm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Facturefm` (
  `code` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `nom` char(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cp` char(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville` char(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totald` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totalc` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Facturefm`
--

LOCK TABLES `Facturefm` WRITE;
/*!40000 ALTER TABLE `Facturefm` DISABLE KEYS */;
/*!40000 ALTER TABLE `Facturefm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Acomptes`
--

DROP TABLE IF EXISTS `Fiches_Acomptes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Acomptes` (
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  `intitule` varchar(35) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `montant` char(12) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`lind`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Acomptes`
--

LOCK TABLES `Fiches_Acomptes` WRITE;
/*!40000 ALTER TABLE `Fiches_Acomptes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Acomptes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_AdrlivBL`
--

DROP TABLE IF EXISTS `Fiches_AdrlivBL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_AdrlivBL` (
  `numbl` char(6) NOT NULL,
  `nom` varchar(90) DEFAULT NULL,
  `adr1` varchar(35) DEFAULT NULL,
  `adr2` varchar(35) DEFAULT NULL,
  `cp` char(5) DEFAULT NULL,
  `ville` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`numbl`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_AdrlivBL`
--

LOCK TABLES `Fiches_AdrlivBL` WRITE;
/*!40000 ALTER TABLE `Fiches_AdrlivBL` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_AdrlivBL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_AdrlivC`
--

DROP TABLE IF EXISTS `Fiches_AdrlivC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_AdrlivC` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) NOT NULL,
  `rs_soc` char(9) DEFAULT NULL,
  `nom` varchar(35) DEFAULT NULL,
  `pnm` varchar(35) DEFAULT NULL,
  `adr1` varchar(35) DEFAULT NULL,
  `adr2` varchar(35) DEFAULT NULL,
  `cd_ptl` char(5) DEFAULT NULL,
  `ville` varchar(35) DEFAULT NULL,
  `tourne` char(15) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_AdrlivC`
--

LOCK TABLES `Fiches_AdrlivC` WRITE;
/*!40000 ALTER TABLE `Fiches_AdrlivC` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_AdrlivC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Agenda`
--

DROP TABLE IF EXISTS `Fiches_Agenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Agenda` (
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  `daction` varchar(20) DEFAULT NULL,
  `haction` varchar(20) DEFAULT NULL,
  `iaction` text,
  `nuser` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`lind`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Agenda`
--

LOCK TABLES `Fiches_Agenda` WRITE;
/*!40000 ALTER TABLE `Fiches_Agenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Agenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Analytiques`
--

DROP TABLE IF EXISTS `Fiches_Analytiques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Analytiques` (
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(3) DEFAULT NULL,
  `compte` char(8) DEFAULT NULL,
  `pourcent` int(11) DEFAULT NULL,
  PRIMARY KEY (`lind`),
  KEY `code` (`code`,`compte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Analytiques`
--

LOCK TABLES `Fiches_Analytiques` WRITE;
/*!40000 ALTER TABLE `Fiches_Analytiques` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Analytiques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Art`
--

DROP TABLE IF EXISTS `Fiches_Art`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Art` (
  `art_code` varchar(15) NOT NULL,
  `art_design` varchar(50) DEFAULT NULL,
  `art_fam` char(20) DEFAULT NULL,
  `art_four` varchar(8) DEFAULT NULL,
  `art_cequ` varchar(15) DEFAULT NULL,
  `art_cbarre` varchar(15) DEFAULT NULL,
  `art_cfour` varchar(25) DEFAULT NULL,
  `art_pbht` double DEFAULT NULL,
  `art_tr` double DEFAULT NULL,
  `art_paht` double DEFAULT NULL,
  `art_coef` decimal(7,4) DEFAULT NULL,
  `art_pvht` double DEFAULT NULL,
  `art_tva` char(2) DEFAULT NULL,
  `art_pvttc` double DEFAULT NULL,
  `art_cdarr` varchar(4) DEFAULT NULL,
  `art_pvar` double DEFAULT NULL,
  `art_dec` varchar(1) DEFAULT NULL,
  `art_stocke` tinyint(1) DEFAULT NULL,
  `art_qte` double DEFAULT NULL,
  `art_dpa` double DEFAULT NULL,
  `art_dfour` varchar(8) DEFAULT NULL,
  `art_pmp` double DEFAULT NULL,
  `art_ddate` varchar(10) DEFAULT NULL,
  `art_com` double DEFAULT NULL,
  `art_stkdep` double DEFAULT NULL,
  `art_nbd` varchar(1) DEFAULT NULL,
  `art_design2` varchar(50) DEFAULT NULL,
  `art_ect` int(11) DEFAULT NULL,
  `art_eco` double DEFAULT NULL,
  `art_pauaht` double DEFAULT NULL,
  `art_txconv` decimal(7,4) DEFAULT NULL,
  `art_stkmin` double DEFAULT NULL,
  `art_stkmax` double DEFAULT NULL,
  `art_suspendu` tinyint(1) DEFAULT NULL,
  `art_cpp` tinyint(1) DEFAULT NULL,
  `art_copp` double DEFAULT NULL,
  `qte1` double DEFAULT NULL,
  `qte2` double DEFAULT NULL,
  `rem1` double DEFAULT NULL,
  `qte3` double DEFAULT NULL,
  `qte4` double DEFAULT NULL,
  `rem2` double DEFAULT NULL,
  `qte5` double DEFAULT NULL,
  `qte6` double DEFAULT NULL,
  `rem3` double DEFAULT NULL,
  `qte7` double DEFAULT NULL,
  `qte8` double DEFAULT NULL,
  `rem4` double DEFAULT NULL,
  `qte9` double DEFAULT NULL,
  `qte10` double DEFAULT NULL,
  `rem5` double DEFAULT NULL,
  `qte11` double DEFAULT NULL,
  `qte12` double DEFAULT NULL,
  `rem6` double DEFAULT NULL,
  `art_frais` double DEFAULT NULL,
  `art_prvt` decimal(12,3) DEFAULT NULL,
  `art_etiq` tinyint(1) DEFAULT NULL,
  `art_poids` decimal(11,3) DEFAULT NULL,
  `art_mincom` varchar(12) DEFAULT NULL,
  `art_vol` char(5) DEFAULT NULL,
  `art_poids2` decimal(11,3) DEFAULT NULL,
  `art_photo` varchar(100) DEFAULT NULL,
  `art_crst` text,
  `art_mat` tinyint(1) DEFAULT NULL,
  `art_marque` varchar(20) DEFAULT NULL,
  `art_impcar` tinyint(1) DEFAULT NULL,
  `art_casier` char(5) DEFAULT NULL,
  `art_pvcons` decimal(12,3) DEFAULT NULL,
  `art_prdcomp` tinyint(1) DEFAULT NULL,
  `art_impdetail` tinyint(1) DEFAULT NULL,
  `art_remcas1` decimal(5,2) DEFAULT NULL,
  `art_remcas2` decimal(5,2) DEFAULT NULL,
  `art_remcas3` decimal(5,2) DEFAULT NULL,
  `art_datefbt` date DEFAULT NULL,
  `art_pbfbt` decimal(12,3) DEFAULT NULL,
  `art_ddatefbt` date DEFAULT NULL,
  `art_centrale` char(2) DEFAULT NULL,
  `art_refcentrale` char(13) DEFAULT NULL,
  `art_bonus` decimal(5,2) DEFAULT NULL,
  `art_colvte` decimal(12,3) DEFAULT NULL,
  `art_pvht2` decimal(12,3) DEFAULT NULL,
  `art_cn8` char(12) DEFAULT NULL,
  `art_crpl1` char(15) DEFAULT NULL,
  `art_crpl2` char(15) DEFAULT NULL,
  `art_ect2` tinyint(1) DEFAULT NULL,
  `art_eco2` decimal(6,3) DEFAULT NULL,
  `art_depg` tinyint(4) DEFAULT NULL,
  `art_cnsg` tinyint(4) DEFAULT NULL,
  `art_ua` char(5) DEFAULT NULL,
  `art_uv` char(5) DEFAULT NULL,
  `art_refliee` char(15) DEFAULT NULL,
  PRIMARY KEY (`art_code`),
  KEY `art_code` (`art_code`),
  KEY `art_design` (`art_design`),
  KEY `art_fam` (`art_fam`),
  KEY `art_four` (`art_four`),
  KEY `art_cequ` (`art_cequ`),
  KEY `art_cbarre` (`art_cbarre`),
  KEY `art_cfour` (`art_cfour`),
  KEY `art_refcentrale` (`art_refcentrale`),
  KEY `id_code` (`art_code`),
  KEY `id_design` (`art_design`),
  KEY `id_fam` (`art_fam`),
  KEY `id_four` (`art_four`),
  KEY `id_cequ` (`art_cequ`),
  KEY `id_cbarre` (`art_cbarre`),
  KEY `id_cfour` (`art_cfour`),
  KEY `id_refcentrale` (`art_refcentrale`),
  KEY `id_casier` (`art_casier`),
  KEY `id_code_fam_four` (`art_code`,`art_fam`,`art_four`),
  KEY `id_code_four_fam` (`art_code`,`art_four`,`art_fam`),
  KEY `id_fam_code` (`art_fam`,`art_code`),
  KEY `id_four_code` (`art_four`,`art_code`),
  KEY `id_casier_fam` (`art_casier`,`art_fam`),
  KEY `art_cn8` (`art_cn8`),
  KEY `art_cn8_2` (`art_cn8`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Art`
--

LOCK TABLES `Fiches_Art` WRITE;
/*!40000 ALTER TABLE `Fiches_Art` DISABLE KEYS */;
INSERT INTO `Fiches_Art` VALUES ('001','Produit 2.10','01','401001','','2148413200001','',10,0,10,2.2000,22,'1',22.46,'0,01',NULL,'0',0,0,0,NULL,10,NULL,NULL,NULL,'2','',0,NULL,10,1.0000,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,10.000,1,0.000,'0','Kg',NULL,'','',0,'',0,'',0.000,0,0,0.00,0.00,0.00,'2001-01-02',NULL,NULL,'','',0.00,NULL,NULL,'','',NULL,0,NULL,0,0,'','',NULL),('002','Produit 7.00','02','401001','','2640636100002','',10,0,10,2.0000,20,'2',21.4,'0,01',NULL,'0',0,0,0,NULL,10,NULL,NULL,NULL,'2','',0,NULL,10,1.0000,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,10.000,1,0.000,'0','Kg',NULL,'','',0,'',0,'',0.000,0,0,0.00,0.00,0.00,'2001-01-02',NULL,NULL,'','',0.00,NULL,NULL,'','',NULL,0,NULL,0,0,'','',NULL),('003','produit 20.00','03','401001','','','',0,0,0,1.0000,0,'3',0,'0,01',NULL,'0',0,0,0,NULL,0,NULL,NULL,0,'2','',0,NULL,0,1.0000,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0.000,1,0.000,'2','Kg',NULL,'','',0,'',0,'',0.000,0,0,0.00,0.00,0.00,'2001-01-02',0.000,NULL,'','',0.00,NULL,NULL,'','',NULL,0,NULL,0,0,'','','');
/*!40000 ALTER TABLE `Fiches_Art` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_ArtPromo`
--

DROP TABLE IF EXISTS `Fiches_ArtPromo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_ArtPromo` (
  `code_promo` char(6) NOT NULL,
  `code` varchar(15) NOT NULL DEFAULT '',
  `libelle` varchar(50) DEFAULT NULL,
  `pmp` decimal(12,3) DEFAULT NULL,
  `pht` decimal(12,3) DEFAULT NULL,
  `pttc` decimal(12,3) DEFAULT NULL,
  `qte` decimal(12,3) DEFAULT NULL,
  PRIMARY KEY (`code_promo`,`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_ArtPromo`
--

LOCK TABLES `Fiches_ArtPromo` WRITE;
/*!40000 ALTER TABLE `Fiches_ArtPromo` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_ArtPromo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Avoirs`
--

DROP TABLE IF EXISTS `Fiches_Avoirs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Avoirs` (
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  `intitule` varchar(30) DEFAULT NULL,
  `dte` char(17) DEFAULT NULL,
  `montant` decimal(12,2) DEFAULT NULL,
  `montantdu` decimal(12,2) DEFAULT NULL,
  `ntk` char(7) DEFAULT NULL,
  PRIMARY KEY (`lind`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Avoirs`
--

LOCK TABLES `Fiches_Avoirs` WRITE;
/*!40000 ALTER TABLE `Fiches_Avoirs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Avoirs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Banques`
--

DROP TABLE IF EXISTS `Fiches_Banques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Banques` (
  `banques_code` int(2) NOT NULL,
  `banques_nom` varchar(35) DEFAULT NULL,
  `banques_dmln` varchar(35) DEFAULT NULL,
  `banques_nume` char(6) DEFAULT NULL,
  `banques_codeb` varchar(5) DEFAULT NULL,
  `banques_codeg` varchar(5) DEFAULT NULL,
  `banques_numcpt` varchar(11) DEFAULT NULL,
  `banques_numsiren` varchar(15) DEFAULT NULL,
  `banques_adr` char(1) DEFAULT NULL,
  `banques_txt` text,
  `banques_fenrg` char(6) DEFAULT NULL,
  `banques_mail` varchar(35) DEFAULT NULL,
  `banques_ref` varchar(11) DEFAULT NULL,
  `banques_entete` varchar(150) DEFAULT NULL,
  `banques_corps` text,
  `banques_reftireur` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`banques_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Banques`
--

LOCK TABLES `Fiches_Banques` WRITE;
/*!40000 ALTER TABLE `Fiches_Banques` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Banques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Bl`
--

DROP TABLE IF EXISTS `Fiches_Bl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Bl` (
  `numbl` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cdclibl` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvclibl` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nmclibl` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pnmclibl` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adr1bl` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adr2bl` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cpbl` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `villebl` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tvar` int(11) DEFAULT NULL,
  `datebl` datetime DEFAULT NULL,
  `rmobl` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rartbl` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exobl` int(11) DEFAULT NULL,
  `remmobl` double DEFAULT NULL,
  `remartbl` double DEFAULT NULL,
  `marge_art` double DEFAULT NULL,
  `marge_mo` double DEFAULT NULL,
  `totalht` double DEFAULT NULL,
  `imp` int(11) DEFAULT NULL,
  `acpt` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mreg` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reg` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ech` datetime DEFAULT NULL,
  `numfac` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dtefac` datetime DEFAULT NULL,
  `retro` tinyint(1) DEFAULT NULL,
  `numserie` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codep` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mtreg` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totalttc` double DEFAULT NULL,
  `desg1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desg2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marque` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `typemat` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `htbl` tinyint(4) DEFAULT NULL,
  `cdep` varchar(37) COLLATE utf8_unicode_ci DEFAULT NULL,
  `livraison` tinyint(1) DEFAULT NULL,
  `tel` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reg2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mtreg2` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `acquitte` tinyint(1) DEFAULT NULL,
  `numtick` char(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gestbl` decimal(5,2) DEFAULT '0.00',
  PRIMARY KEY (`numbl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Bl`
--

LOCK TABLES `Fiches_Bl` WRITE;
/*!40000 ALTER TABLE `Fiches_Bl` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Bl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_BlM`
--

DROP TABLE IF EXISTS `Fiches_BlM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_BlM` (
  `numbl` char(6) COLLATE utf8_unicode_ci NOT NULL,
  `type` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cdclibl` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvclibl` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nmclibl` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pnmclibl` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adr1bl` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adr2bl` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cpbl` char(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `villebl` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tvar` tinyint(4) DEFAULT NULL,
  `datebl` datetime DEFAULT NULL,
  `rmobl` char(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rartbl` char(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exobl` tinyint(4) DEFAULT NULL,
  `remmobl` decimal(12,2) DEFAULT NULL,
  `remartbl` decimal(12,2) DEFAULT NULL,
  `marge_art` decimal(12,2) DEFAULT NULL,
  `marge_mo` decimal(12,2) DEFAULT NULL,
  `totalht` decimal(12,2) DEFAULT NULL,
  `imp` int(1) DEFAULT NULL,
  `acpt` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mreg` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reg` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ech` date DEFAULT NULL,
  `numfac` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dtefac` date DEFAULT NULL,
  `retro` tinyint(4) DEFAULT NULL,
  `numserie` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codep` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mtreg` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totalttc` decimal(12,2) DEFAULT NULL,
  `desg1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desg2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marque` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `typemat` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `htbl` tinyint(4) DEFAULT NULL,
  `cdep` varchar(37) COLLATE utf8_unicode_ci DEFAULT NULL,
  `livraison` tinyint(1) DEFAULT NULL,
  `tel` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reg2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mtreg2` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `acquitte` tinyint(1) DEFAULT NULL,
  `numtick` char(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gestbl` decimal(5,2) DEFAULT '0.00',
  PRIMARY KEY (`numbl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_BlM`
--

LOCK TABLES `Fiches_BlM` WRITE;
/*!40000 ALTER TABLE `Fiches_BlM` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_BlM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Bordereaux`
--

DROP TABLE IF EXISTS `Fiches_Bordereaux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Bordereaux` (
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  `banque` int(1) DEFAULT NULL,
  `codeentree` int(1) DEFAULT NULL,
  `dateremise` date DEFAULT NULL,
  `refremise` char(11) DEFAULT NULL,
  `datevaleur` date DEFAULT NULL,
  `ech1` date DEFAULT NULL,
  `ech2` date DEFAULT NULL,
  `bordereau` int(11) DEFAULT NULL,
  `tot` decimal(12,2) DEFAULT NULL,
  `etat` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`lind`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Bordereaux`
--

LOCK TABLES `Fiches_Bordereaux` WRITE;
/*!40000 ALTER TABLE `Fiches_Bordereaux` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Bordereaux` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_BordereauxC`
--

DROP TABLE IF EXISTS `Fiches_BordereauxC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_BordereauxC` (
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  `banque` int(1) DEFAULT NULL,
  `dateremise` date DEFAULT NULL,
  `bordereau` int(11) DEFAULT NULL,
  `montant` decimal(12,2) DEFAULT NULL,
  `etat` tinyint(1) DEFAULT NULL,
  `code` char(8) DEFAULT NULL,
  `nom` varchar(35) DEFAULT NULL,
  `nfacture` char(10) DEFAULT NULL,
  PRIMARY KEY (`lind`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_BordereauxC`
--

LOCK TABLES `Fiches_BordereauxC` WRITE;
/*!40000 ALTER TABLE `Fiches_BordereauxC` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_BordereauxC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Caisses`
--

DROP TABLE IF EXISTS `Fiches_Caisses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Caisses` (
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(2) DEFAULT NULL,
  `intitule` varchar(30) DEFAULT NULL,
  `dteov` date DEFAULT NULL,
  `dtefm` date DEFAULT NULL,
  `fndc` decimal(12,2) DEFAULT NULL,
  `dntk` char(7) DEFAULT NULL,
  `tkz` int(1) DEFAULT NULL,
  `connecte` int(1) DEFAULT NULL,
  `imp` char(15) DEFAULT NULL,
  `typeimp` char(10) DEFAULT NULL,
  `type` char(20) DEFAULT NULL,
  `ecole` tinyint(4) DEFAULT NULL,
  `poste` varchar(30) DEFAULT NULL,
  `depot` char(8) DEFAULT NULL,
  `fndtotp` decimal(15,2) DEFAULT NULL,
  `fndtotg` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`lind`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Caisses`
--

LOCK TABLES `Fiches_Caisses` WRITE;
/*!40000 ALTER TABLE `Fiches_Caisses` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Caisses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Carte`
--

DROP TABLE IF EXISTS `Fiches_Carte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Carte` (
  `code` char(13) NOT NULL,
  `rs_soc` char(9) DEFAULT NULL,
  `nom` varchar(35) DEFAULT NULL,
  `pnm` varchar(35) DEFAULT NULL,
  `adr1` varchar(35) DEFAULT NULL,
  `adr2` varchar(35) DEFAULT NULL,
  `cd_ptl` char(5) DEFAULT NULL,
  `ville` varchar(35) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `tel_bur` varchar(16) DEFAULT NULL,
  `tel_dom` varchar(16) DEFAULT NULL,
  `tel_poste` varchar(16) DEFAULT NULL,
  `pble` varchar(16) DEFAULT NULL,
  `fx1` varchar(16) DEFAULT NULL,
  `fx2` varchar(16) DEFAULT NULL,
  `datec` date DEFAULT NULL,
  `datef` date DEFAULT NULL,
  `rem` tinyint(4) DEFAULT NULL,
  `promo` tinyint(4) DEFAULT NULL,
  `tp1` decimal(12,3) DEFAULT NULL,
  `tp2` decimal(12,3) DEFAULT NULL,
  `tg1` decimal(12,3) DEFAULT NULL,
  `tg2` decimal(12,3) DEFAULT NULL,
  `obs` text,
  `cb` char(13) DEFAULT NULL,
  `divers` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Carte`
--

LOCK TABLES `Fiches_Carte` WRITE;
/*!40000 ALTER TABLE `Fiches_Carte` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Carte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_CdBarre`
--

DROP TABLE IF EXISTS `Fiches_CdBarre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_CdBarre` (
  `codep` varchar(15) NOT NULL DEFAULT '',
  `codeb` char(13) NOT NULL,
  PRIMARY KEY (`codep`,`codeb`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_CdBarre`
--

LOCK TABLES `Fiches_CdBarre` WRITE;
/*!40000 ALTER TABLE `Fiches_CdBarre` DISABLE KEYS */;
INSERT INTO `Fiches_CdBarre` VALUES ('001','2148413200001'),('002','2640636100002'),('003','');
/*!40000 ALTER TABLE `Fiches_CdBarre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_CdFour`
--

DROP TABLE IF EXISTS `Fiches_CdFour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_CdFour` (
  `codep` char(15) NOT NULL,
  `codef` char(13) NOT NULL,
  PRIMARY KEY (`codep`,`codef`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_CdFour`
--

LOCK TABLES `Fiches_CdFour` WRITE;
/*!40000 ALTER TABLE `Fiches_CdFour` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_CdFour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Centrales`
--

DROP TABLE IF EXISTS `Fiches_Centrales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Centrales` (
  `code` char(2) NOT NULL,
  `libelle` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Centrales`
--

LOCK TABLES `Fiches_Centrales` WRITE;
/*!40000 ALTER TABLE `Fiches_Centrales` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Centrales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Cequ`
--

DROP TABLE IF EXISTS `Fiches_Cequ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Cequ` (
  `codep` char(15) NOT NULL,
  `codequ` char(15) NOT NULL,
  PRIMARY KEY (`codep`,`codequ`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Cequ`
--

LOCK TABLES `Fiches_Cequ` WRITE;
/*!40000 ALTER TABLE `Fiches_Cequ` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Cequ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Cli`
--

DROP TABLE IF EXISTS `Fiches_Cli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Cli` (
  `cli_code` int(11) NOT NULL DEFAULT '0',
  `cli_col` varchar(1) DEFAULT NULL,
  `cli_rs_soc` varchar(12) DEFAULT NULL,
  `cli_nom` varchar(35) DEFAULT NULL,
  `cli_pnm` varchar(35) DEFAULT NULL,
  `cli_adr1` varchar(35) DEFAULT NULL,
  `cli_adr2` varchar(35) DEFAULT NULL,
  `cli_cd_ptl` varchar(5) DEFAULT NULL,
  `cli_ville` varchar(35) DEFAULT NULL,
  `cli_email` varchar(150) DEFAULT NULL,
  `cli_tel_bur` varchar(16) DEFAULT NULL,
  `cli_tel_dom` varchar(16) DEFAULT NULL,
  `cli_tel_poste` varchar(16) DEFAULT NULL,
  `cli_pble` varchar(16) DEFAULT NULL,
  `cli_fx1` varchar(16) DEFAULT NULL,
  `cli_fx2` varchar(16) DEFAULT NULL,
  `cli_plaf_ecrs` varchar(10) DEFAULT NULL,
  `cli_cd_bq` varchar(5) DEFAULT NULL,
  `cli_cd_gch` varchar(5) DEFAULT NULL,
  `cli_dmln` varchar(30) DEFAULT NULL,
  `cli_cle_rib` varchar(2) DEFAULT NULL,
  `cli_num_cpt` char(11) DEFAULT NULL,
  `cli_dom` varchar(25) DEFAULT NULL,
  `cli_cd_ent` varchar(1) DEFAULT NULL,
  `cli_cd_acc` varchar(1) DEFAULT NULL,
  `cli_ref_tir` varchar(10) DEFAULT NULL,
  `cli_id_tva` varchar(15) DEFAULT NULL,
  `cli_cd_soc` varchar(2) DEFAULT NULL,
  `cli_cd_cli` varchar(16) DEFAULT NULL,
  `cli_co_vtl` varchar(255) DEFAULT NULL,
  `cli_rlvc` int(11) DEFAULT NULL,
  `cli_rlvf` int(11) DEFAULT NULL,
  `cli_dt_rlc` datetime DEFAULT NULL,
  `cli_nm_int` varchar(25) DEFAULT NULL,
  `cli_obs` text,
  `cli_collectif` varchar(8) DEFAULT NULL,
  `cli_rmo` varchar(6) DEFAULT NULL,
  `cli_rart` varchar(6) DEFAULT NULL,
  `cli_exo` int(11) DEFAULT NULL,
  `cli_cdech` varchar(2) DEFAULT NULL,
  `cli_typec` char(2) DEFAULT NULL,
  `cli_expl` char(1) DEFAULT NULL,
  `cli_pays` char(40) DEFAULT NULL,
  `cli_statut` char(2) DEFAULT NULL,
  `cli_rs_soc2` char(9) DEFAULT NULL,
  `cli_nom2` varchar(35) DEFAULT NULL,
  `cli_pnm2` varchar(35) DEFAULT NULL,
  `cli_adr12` varchar(35) DEFAULT NULL,
  `cli_adr22` varchar(35) DEFAULT NULL,
  `cli_cd_ptl2` char(5) DEFAULT NULL,
  `cli_ville2` varchar(35) DEFAULT NULL,
  `cli_cnt1` char(17) DEFAULT NULL,
  `cli_cnt2` char(40) DEFAULT NULL,
  `cli_cnt3` char(25) DEFAULT NULL,
  `cli_cnt4` char(17) DEFAULT NULL,
  `cli_cnt5` char(40) DEFAULT NULL,
  `cli_cnt6` char(25) DEFAULT NULL,
  `cli_cnt7` char(17) DEFAULT NULL,
  `cli_cnt8` char(40) DEFAULT NULL,
  `cli_cnt9` char(25) DEFAULT NULL,
  `cli_cnt10` char(17) DEFAULT NULL,
  `cli_cnt11` char(40) DEFAULT NULL,
  `cli_cnt12` char(25) DEFAULT NULL,
  `cli_cnt13` char(17) DEFAULT NULL,
  `cli_cnt14` char(40) DEFAULT NULL,
  `cli_cnt15` char(25) DEFAULT NULL,
  `cli_reg` char(15) DEFAULT NULL,
  `cli_copie` tinyint(1) DEFAULT NULL,
  `cli_actif` tinyint(1) DEFAULT NULL,
  `cli_div` tinyint(1) DEFAULT NULL,
  `cli_iban` char(30) DEFAULT NULL,
  `cli_bic` char(11) DEFAULT NULL,
  `cli_coop` tinyint(1) DEFAULT NULL,
  `cli_rum` char(30) DEFAULT NULL,
  `cli_datab` char(2) DEFAULT NULL,
  `cli_aban` varchar(15) DEFAULT NULL,
  `cli_sage` char(10) DEFAULT NULL,
  `cli_livraison` tinyint(1) DEFAULT NULL,
  `cli_comm` char(2) DEFAULT NULL,
  `cli_autoent` tinyint(1) DEFAULT NULL,
  `cli_tour` char(15) DEFAULT NULL,
  `cli_gestion` decimal(5,2) DEFAULT '0.00',
  `cli_regr` char(1) DEFAULT 'S',
  `cli_siret` char(14) DEFAULT NULL,
  PRIMARY KEY (`cli_code`),
  KEY `cli_code` (`cli_code`),
  KEY `cli_nom` (`cli_nom`),
  KEY `cli_adr1` (`cli_adr1`),
  KEY `cli_adr2` (`cli_adr2`),
  KEY `cli_cd_ptl` (`cli_cd_ptl`),
  KEY `cli_ville` (`cli_ville`),
  KEY `id_code` (`cli_code`),
  KEY `id_nom` (`cli_nom`),
  KEY `id_adr1` (`cli_adr1`),
  KEY `id_adr2` (`cli_adr2`),
  KEY `id_cdptl` (`cli_cd_ptl`),
  KEY `id_ville` (`cli_ville`),
  KEY `cli_statut` (`cli_statut`),
  KEY `cli_actif` (`cli_actif`),
  KEY `cli_statut_2` (`cli_statut`),
  KEY `cli_actif_2` (`cli_actif`),
  KEY `cli_statut_3` (`cli_statut`),
  KEY `cli_actif_3` (`cli_actif`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Cli`
--

LOCK TABLES `Fiches_Cli` WRITE;
/*!40000 ALTER TABLE `Fiches_Cli` DISABLE KEYS */;
INSERT INTO `Fiches_Cli` VALUES (411001,NULL,'','A Divers ','','','','','','','','','','','','','','','','','','',NULL,'','','','',NULL,NULL,NULL,0,0,NULL,NULL,'','411000','0,00','0,00',0,'00','','2','France','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,-1,'','',0,'','','','',0,'',NULL,NULL,0.00,'S',NULL),(411002,NULL,'','B Divers ','','','','','','','','','','','','','','','','','','',NULL,'','','','',NULL,NULL,NULL,0,0,NULL,NULL,'','411000','0,00','0,00',0,'00','','2','France','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,-1,'','',0,'','','','',0,'',NULL,NULL,0.00,'S',NULL),(411003,NULL,NULL,'C Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,'411000','0,00','0,00',0,'00',NULL,'2','France',NULL,'','','','','','','','','','','','','','','','','','','','','','',NULL,0,0,-1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,'S',NULL),(411004,NULL,'','D Divers ','','','','','','','','','','','','','','','','','','',NULL,'','','','',NULL,NULL,NULL,0,0,NULL,NULL,'','411000','0,00','0,00',0,'00','','2','France','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,-1,'','',0,'','','','',0,'',0,NULL,0.00,'S',NULL),(411005,NULL,'','E Divers ','','','','','','','','','','','','','','','','','','',NULL,'','','','',NULL,NULL,NULL,0,0,NULL,NULL,'','411000','0,00','0,00',0,'00','','2','France','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,-1,'','',0,'','','','',0,'',0,NULL,0.00,'S',NULL),(411006,NULL,'','F Divers ','','','','','','','','','','','','','','','','','','',NULL,'','','','',NULL,NULL,NULL,0,0,NULL,NULL,'','411000','0,00','0,00',0,'00','','2','France','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,-1,'','',0,'','','','',0,'',0,NULL,0.00,'S',NULL),(411007,NULL,NULL,'G Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,'411000','0,00','0,00',0,'00',NULL,'2','France',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,-1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,'S',NULL),(411008,NULL,NULL,'H Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,'411000','0,00','0,00',0,'00',NULL,'2','France',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,-1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,'S',NULL),(411009,NULL,NULL,'I Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,'411000','0,00','0,00',0,'00',NULL,'2','France',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,-1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,'S',NULL),(411010,NULL,NULL,'J Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,'411000','0,00','0,00',0,'00',NULL,'2','France',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,-1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,'S',NULL),(411011,NULL,NULL,'K Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,'411000','0,00','0,00',0,'00',NULL,'2','France',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,-1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,'S',NULL),(411012,NULL,NULL,'L Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,'411000','0,00','0,00',0,'00',NULL,'2','France',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,-1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,'S',NULL),(411013,NULL,NULL,'M Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,'411000','0,00','0,00',0,'00',NULL,'2','France',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,-1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,'S',NULL),(411014,NULL,NULL,'N Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,'411000','0,00','0,00',0,'00',NULL,'2','France',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,-1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,'S',NULL),(411015,NULL,NULL,'O Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,'411000','0,00','0,00',0,'00',NULL,'2','France',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,-1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,'S',NULL),(411016,NULL,NULL,'P Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,'411000','0,00','0,00',0,'00',NULL,'2','France',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,-1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,'S',NULL),(411017,NULL,NULL,'Q Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,'411000','0,00','0,00',0,'00',NULL,'2','France',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,-1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,'S',NULL),(411018,NULL,NULL,'R Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,'411000','0,00','0,00',0,'00',NULL,'2','France',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,-1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,'S',NULL),(411019,NULL,NULL,'S Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,'411000','0,00','0,00',0,'00',NULL,'2','France',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,-1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,'S',NULL),(411020,NULL,NULL,'T Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,'411000','0,00','0,00',0,'00',NULL,'2','France',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,-1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,'S',NULL),(411021,NULL,NULL,'U Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,'411000','0,00','0,00',0,'00',NULL,'2','France',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,-1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,'S',NULL),(411022,NULL,NULL,'V Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,'411000','0,00','0,00',0,'00',NULL,'2','France',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,-1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,'S',NULL),(411023,NULL,NULL,'W Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,'411000','0,00','0,00',0,'00',NULL,'2','France',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,-1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,'S',NULL),(411024,NULL,NULL,'X Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,'411000','0,00','0,00',0,'00',NULL,'2','France',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,-1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,'S',NULL),(411025,NULL,NULL,'Y Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,'411000','0,00','0,00',0,'00',NULL,'2','France',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,-1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,'S',NULL),(411026,NULL,NULL,'Z Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,'411000','0,00','0,00',0,'00',NULL,'2','France',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,-1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,'S',NULL),(411027,NULL,'','********** Test **************','','','','','','','','','','','','','','','','','','',NULL,'','','','',NULL,NULL,NULL,0,0,NULL,NULL,'','411000','0,00','0,00',0,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',-1,0,0,'','',NULL,'775B4C4E4965735B494F','','','',0,'',NULL,NULL,0.00,'S',NULL);
/*!40000 ALTER TABLE `Fiches_Cli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Cli_Vtl`
--

DROP TABLE IF EXISTS `Fiches_Cli_Vtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Cli_Vtl` (
  `code` varchar(8) NOT NULL,
  `code_vtl` varchar(8) NOT NULL,
  `intitule_vtl` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`code`,`code_vtl`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Cli_Vtl`
--

LOCK TABLES `Fiches_Cli_Vtl` WRITE;
/*!40000 ALTER TABLE `Fiches_Cli_Vtl` DISABLE KEYS */;
INSERT INTO `Fiches_Cli_Vtl` VALUES ('411001','707000','Ventes marchandises');
/*!40000 ALTER TABLE `Fiches_Cli_Vtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Clid`
--

DROP TABLE IF EXISTS `Fiches_Clid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Clid` (
  `adr` varchar(200) DEFAULT NULL,
  `ddate` date DEFAULT NULL,
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`lind`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Clid`
--

LOCK TABLES `Fiches_Clid` WRITE;
/*!40000 ALTER TABLE `Fiches_Clid` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Clid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_ClientCaisse`
--

DROP TABLE IF EXISTS `Fiches_ClientCaisse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_ClientCaisse` (
  `lInd` tinyint(4) NOT NULL AUTO_INCREMENT,
  `code` varchar(8) DEFAULT NULL,
  `nom` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`lInd`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_ClientCaisse`
--

LOCK TABLES `Fiches_ClientCaisse` WRITE;
/*!40000 ALTER TABLE `Fiches_ClientCaisse` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_ClientCaisse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_CoeffTypec`
--

DROP TABLE IF EXISTS `Fiches_CoeffTypec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_CoeffTypec` (
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  `coder` char(2) NOT NULL,
  `codef` char(20) DEFAULT NULL,
  `coeff` decimal(6,3) DEFAULT NULL,
  PRIMARY KEY (`lind`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_CoeffTypec`
--

LOCK TABLES `Fiches_CoeffTypec` WRITE;
/*!40000 ALTER TABLE `Fiches_CoeffTypec` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_CoeffTypec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_ComMail`
--

DROP TABLE IF EXISTS `Fiches_ComMail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_ComMail` (
  `numcom` char(2) NOT NULL,
  `intitule` text,
  PRIMARY KEY (`numcom`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_ComMail`
--

LOCK TABLES `Fiches_ComMail` WRITE;
/*!40000 ALTER TABLE `Fiches_ComMail` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_ComMail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Commentaires`
--

DROP TABLE IF EXISTS `Fiches_Commentaires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Commentaires` (
  `numcom` varchar(2) NOT NULL,
  `intitule` text,
  PRIMARY KEY (`numcom`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Commentaires`
--

LOCK TABLES `Fiches_Commentaires` WRITE;
/*!40000 ALTER TABLE `Fiches_Commentaires` DISABLE KEYS */;
INSERT INTO `Fiches_Commentaires` VALUES ('01','Garantie 6 mois pieces et main d\'oeuvre'),('02','Garantie 12 mois pieces et main d\'oeuvre');
/*!40000 ALTER TABLE `Fiches_Commentaires` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Commerciaux`
--

DROP TABLE IF EXISTS `Fiches_Commerciaux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Commerciaux` (
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(2) DEFAULT NULL,
  `nom` char(35) DEFAULT NULL,
  `prenom` char(35) DEFAULT NULL,
  `comm` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`lind`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Commerciaux`
--

LOCK TABLES `Fiches_Commerciaux` WRITE;
/*!40000 ALTER TABLE `Fiches_Commerciaux` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Commerciaux` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Comptes`
--

DROP TABLE IF EXISTS `Fiches_Comptes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Comptes` (
  `compte_cc` int(11) NOT NULL DEFAULT '0',
  `intitule_cc` varchar(40) DEFAULT NULL,
  `type_cc` varchar(1) DEFAULT NULL,
  `coll` int(11) DEFAULT NULL,
  `coll_cc` varchar(8) DEFAULT NULL,
  `cent_cc` int(11) DEFAULT NULL,
  `comptr_cc` int(11) DEFAULT NULL,
  `code_tvente` char(2) DEFAULT NULL,
  `taux_tvente` varchar(5) DEFAULT NULL,
  `gen_tv` int(11) DEFAULT NULL,
  `code_tachat` char(2) DEFAULT NULL,
  `taux_tachat` varchar(5) DEFAULT NULL,
  `gen_ta` int(11) DEFAULT NULL,
  `solde` double DEFAULT NULL,
  `soldep` double DEFAULT NULL,
  `cprincipal` tinyint(1) DEFAULT NULL,
  `lettrable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`compte_cc`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Comptes`
--

LOCK TABLES `Fiches_Comptes` WRITE;
/*!40000 ALTER TABLE `Fiches_Comptes` DISABLE KEYS */;
INSERT INTO `Fiches_Comptes` VALUES (401000,'Collectif fournisseur','B',1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL),(411000,'Collectif client','B',1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL),(445660,'Tva sur achat 2.10','B',0,NULL,1,0,'','',0,'','',0,0,0,0,NULL),(445710,'Tva sur ventes 2.10','B',0,NULL,1,0,'','',0,'','',0,0,0,0,NULL),(512000,'Banque','B',0,NULL,0,1,'','',0,'','',0,0,0,0,NULL),(530000,'Caisse','B',0,NULL,0,-1,'','',0,'','',0,0,0,0,NULL),(607000,'Achat de marchandises 2.10','G',0,NULL,0,0,'','',0,'1','2.10',1,0,0,0,NULL),(707000,'Ventes marchandises 2.10','G',0,NULL,0,0,'1','2.10',1,'','',0,0,0,0,NULL),(401001,'A Divers ','F',0,'401000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(411001,'A Divers ','C',0,'411000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(445720,'Tva sur ventes 5.50','B',0,NULL,1,0,'','',0,'','',0,0,0,0,NULL),(445730,'Tva sur ventes 19.60','B',0,NULL,1,0,'','',0,'','',0,0,0,0,NULL),(401002,'B Divers ','F',0,'401000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(401003,'C Divers ','F',0,'401000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(401004,'D Divers ','F',0,'401000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(401005,'E Divers ','F',0,'401000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(401006,'F Divers ','F',0,'401000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(401007,'G Divers ','F',0,'401000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(401008,'H Divers ','F',0,'401000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(401009,'I Divers ','F',0,'401000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(401010,'J Divers ','F',0,'401000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(401011,'K Divers ','F',0,'401000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(401012,'L Divers ','F',0,'401000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(401013,'M Divers ','F',0,'401000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(401014,'N Divers ','F',0,'401000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(401015,'O Divers ','F',0,'401000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(401016,'P Divers ','F',0,'401000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(401017,'Q Divers ','F',0,'401000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(401018,'R Divers ','F',0,'401000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(401019,'S Divers ','F',0,'401000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(401020,'T Divers ','F',0,'401000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(401021,'U Divers ','F',0,'401000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(401022,'V Divers ','F',0,'401000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(401023,'W Divers ','F',0,'401000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(401024,'X Divers ','F',0,'401000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(401025,'Y Divers ','F',0,'401000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(401026,'Z Divers ','F',0,'401000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(411002,'B Divers ','C',0,'411000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(411003,'C Divers ','C',0,'411000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(411004,'D Divers ','C',0,'411000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,-1),(411005,'E Divers ','C',0,'411000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,-1),(411006,'F Divers ','C',0,'411000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,-1),(411007,'G Divers ','C',0,'411000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(411008,'H Divers ','C',0,'411000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(411009,'I Divers ','C',0,'411000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(411010,'J Divers ','C',0,'411000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(411011,'K Divers ','C',0,'411000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(411012,'L Divers ','C',0,'411000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(411013,'M Divers ','C',0,'411000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(411014,'N Divers ','C',0,'411000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(411015,'O Divers ','C',0,'411000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(411016,'P Divers ','C',0,'411000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(411017,'Q Divers ','C',0,'411000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(411018,'R Divers ','C',0,'411000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(411019,'S Divers ','C',0,'411000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(411020,'T Divers ','C',0,'411000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(411021,'U Divers ','C',0,'411000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(411022,'V Divers ','C',0,'411000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(411023,'W Divers ','C',0,'411000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(411024,'X Divers ','C',0,'411000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(411025,'Y Divers ','C',0,'411000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(411026,'Z Divers ','C',0,'411000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,1),(445670,'Tva sur achat 5.50','B',0,NULL,1,0,'','',0,'','',0,0,0,0,NULL),(445680,'Tva sur achat 19.60','B',0,NULL,1,0,'','',0,'','',0,0,0,0,NULL),(607010,'Achat de marchandises 7.00','G',0,NULL,0,0,NULL,NULL,0,'2','5.50',1,0,0,0,NULL),(607020,'Achat de marchandises 20.00','G',0,NULL,0,0,NULL,NULL,0,'3','19.60',1,0,0,0,NULL),(707010,'Ventes marchandises 7.00','G',0,NULL,0,0,'2','7.00',1,NULL,NULL,0,0,0,0,NULL),(707020,'Ventes marchandises 20.00','G',0,NULL,0,0,'3','20.00',1,NULL,NULL,0,0,0,0,NULL),(709000,'RRR accordes','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(658000,'Charges diverses gestion','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(758000,'Produits sur gestion courante','G',0,NULL,1,0,'','',0,'','',0,0,0,0,NULL),(101000,'Capital','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(106800,'Autres reserves','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(108000,'Exploitant','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(120000,'Resultat. Benefices','B',0,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,NULL),(129000,'Resultat. Perte','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(110000,'Report a nouveau credit','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(119000,'Report a nouveau debit','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(168800,'Interets courus','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(211000,'Terrain','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(213000,'Construction','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(213500,'Inst. Gen. Agen. Ame.','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(218200,'Materiel de transport','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(218300,'Materiel bureau informatique','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(218400,'Mobilier','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(231000,'Immobilisation en cours','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(231500,'Amenagement en cours','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(261000,'Titres de participation','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(266000,'Autres formes de participation','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(275000,'Depots et cautionnements','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(281300,'Amortissement construction','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(218820,'Amortissement materiels de transport','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(281400,'Amortissement mobilier','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(281500,'Amortissement materiel de bureau','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(281600,'Amortissement materiel de transport','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(281700,'Amortissement materiel informatique','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(335000,'Travaux en cours','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(370000,'Stock marchandises','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(397000,'Provision depreciation stock','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(408000,'Factures non parvenues','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(408100,'Fournisseurs factures non parvenues','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(409600,'Fourniseurs emballages a rendre','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(409700,'Avoirs non parvenus','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(416000,'Clients douteux','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(421000,'Remuneration employes','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(428200,'Provisions conges payes','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(437100,'Organismes sociaux','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(437200,'Retraite employes','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(444000,'Impots societes','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(445510,'Tva a decaisser','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(445620,'Tva deductible sur immobilisation','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(471000,'Compte d\'attente','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(491000,'Provisions pour creances','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(518600,'Interets courus','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(580000,'Virements internes','B',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(605000,'Sous traitance','G',0,NULL,0,0,'','',0,'3','19.60',1,0,0,0,NULL),(606110,'Electricite','G',0,NULL,0,0,'','',0,'3','19.60',1,0,0,0,NULL),(606120,'Gaz','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(606130,'Eau, assainissement','G',0,NULL,0,0,'','',0,'3','19.60',1,0,0,0,NULL),(606150,'Carburant','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(606170,'Gas-oil','G',0,NULL,0,0,'','',0,'3','19.60',1,0,0,0,NULL),(606300,'Fournitures entretien','G',0,NULL,0,0,'','',0,'3','19.60',1,0,0,0,NULL),(606400,'Fournitures administratives','G',0,NULL,0,0,'','',0,'3','19.60',1,0,0,0,NULL),(606410,'Fournitures informatiques','G',0,NULL,0,0,'','',0,'3','19.60',1,0,0,0,NULL),(606800,'Matieres consommables','G',0,NULL,0,0,'','',0,'3','19.60',1,0,0,0,NULL),(606810,'Produits entretien','G',0,NULL,0,0,'','',0,'3','19.60',1,0,0,0,NULL),(622603,'Centre agree de gestion','G',0,NULL,0,0,'','',0,'3','19.60',1,0,0,0,NULL),(622604,'Honoraires divers','G',0,NULL,0,0,'','',0,'3','19.60',1,0,0,0,NULL),(622605,'Comptable','G',0,NULL,0,0,'','',0,'3','19.60',1,0,0,0,NULL),(622700,'Frais actes et contentieux','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(623100,'Annonces','G',0,NULL,0,0,'','',0,'3','19.60',1,0,0,0,NULL),(623400,'Cadeaux clientele','G',0,NULL,0,0,'','',0,'3','19.60',1,0,0,0,NULL),(623700,'Publicite','G',0,NULL,0,0,'','',0,'3','19.60',1,0,0,0,NULL),(623705,'Publicite exo','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(623800,'Dons','G',0,NULL,0,0,'','',0,'3','19.60',1,0,0,0,NULL),(625100,'Voyages et deplacements','G',0,NULL,0,0,'','',0,'3','19.60',1,0,0,0,NULL),(625600,'Missions','G',0,NULL,0,0,'','',0,'3','19.60',1,0,0,0,NULL),(626100,'Frais postaux','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(625500,'Frais internet','G',0,NULL,0,0,'','',0,'3','19.60',1,0,0,0,NULL),(627000,'Frais bancaires','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(627200,'Frais/emis emprunt','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(627800,'Frais factures','G',0,NULL,0,0,'','',0,'3','19.60',1,0,0,0,NULL),(631200,'Taxe apprentissage','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(633300,'Participation employeur formation prof.','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(635110,'Taxe professionnelle','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(635120,'Taxe fonciere','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(635150,'Taxes diveres','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(637100,'Contibution sociale solidarite','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(637810,'Csg deductible','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(637820,'Csg non deductible','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(641100,'Salaires bruts','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(641200,'Charges personnels conges payes','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(641400,'Remboursement maladie','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(644000,'Remuneration exploitant','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(645320,'Retraite employes','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(645500,'Provisions charges conges','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(645800,'Charges sociales','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(646200,'Cotisations maladies','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(646210,'Maladie complementaire','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(646300,'Cotisations retraite','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(647500,'Medecine du travail','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(671800,'Pertes stock','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(678000,'Charges exceptionnelles','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(681120,'Dotations amortissements','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(681730,'Depreciation stock','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(695100,'Impots sur les benefices','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(705000,'Sous-traitance','G',0,NULL,0,0,'3','20.00',1,'','',0,0,0,0,NULL),(706100,'Ventes MO','G',0,NULL,0,0,'3','20.00',1,'','',0,0,0,0,NULL),(512001,'Banque 2','B',0,NULL,0,1,'','',0,'','',0,0,0,0,NULL),(609700,'RRR obtenus','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(709700,'RRR accordÃ©s','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(603700,'Variations de stock','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(602100,'Matieres consommables','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(604000,'Achats de sous-traitance','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(606100,'Fournitures non stockables','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(612200,'Credit bail mobilier','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(613200,'Locations immobiliers','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(641110,'Salaires productifs','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(645000,'Charges SS et prevoyance','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(654100,'Pertes/crÃ©ances irr. e.','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(661100,'Interets sur emprunts','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(671000,'Charges exceptionnelles/OpÃ©ration gesti','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(706110,'Prestations services 20.00','G',0,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,0,NULL),(722000,'Production immobilisÃ©e','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(791000,'Transferts charges','G',0,NULL,0,0,'','',0,'','',0,0,0,0,NULL),(580001,'Virements internes cartes','B',0,NULL,0,0,'','',0,'','',0,0,NULL,0,NULL),(580002,'Virements internes chÃ¨ques','B',0,NULL,0,0,'','',0,'','',0,0,NULL,0,NULL),(580003,'Virements internes autres','B',0,NULL,0,0,'','',0,'','',0,0,NULL,0,NULL),(606306,'Petit outillage','G',0,NULL,0,0,NULL,NULL,0,'3','19.60',1,0,NULL,0,NULL),(706105,'Prestations services 7.00','G',0,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,NULL,0,NULL),(411027,'********** Test **************','C',0,'411000',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,1);
/*!40000 ALTER TABLE `Fiches_Comptes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_ContactC`
--

DROP TABLE IF EXISTS `Fiches_ContactC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_ContactC` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) NOT NULL,
  `nom` varchar(35) DEFAULT NULL,
  `pnm` varchar(35) DEFAULT NULL,
  `fonction` varchar(35) DEFAULT NULL,
  `tel` varchar(16) DEFAULT NULL,
  `mail` varchar(150) DEFAULT NULL,
  `portable` char(16) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_ContactC`
--

LOCK TABLES `Fiches_ContactC` WRITE;
/*!40000 ALTER TABLE `Fiches_ContactC` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_ContactC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_ContactF`
--

DROP TABLE IF EXISTS `Fiches_ContactF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_ContactF` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) NOT NULL,
  `nom` varchar(35) DEFAULT NULL,
  `pnm` varchar(35) DEFAULT NULL,
  `fonction` varchar(35) DEFAULT NULL,
  `tel` varchar(16) DEFAULT NULL,
  `mail` varchar(150) DEFAULT NULL,
  `portable` char(16) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_ContactF`
--

LOCK TABLES `Fiches_ContactF` WRITE;
/*!40000 ALTER TABLE `Fiches_ContactF` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_ContactF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Cpostaux`
--

DROP TABLE IF EXISTS `Fiches_Cpostaux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Cpostaux` (
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  `cp` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `burdist` char(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lind`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Cpostaux`
--

LOCK TABLES `Fiches_Cpostaux` WRITE;
/*!40000 ALTER TABLE `Fiches_Cpostaux` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Cpostaux` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Cpostaux01`
--

DROP TABLE IF EXISTS `Fiches_Cpostaux01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Cpostaux01` (
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  `cp` char(5) NOT NULL,
  `burdist` char(35) DEFAULT NULL,
  PRIMARY KEY (`lind`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Cpostaux01`
--

LOCK TABLES `Fiches_Cpostaux01` WRITE;
/*!40000 ALTER TABLE `Fiches_Cpostaux01` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Cpostaux01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Depots`
--

DROP TABLE IF EXISTS `Fiches_Depots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Depots` (
  `code` char(8) NOT NULL DEFAULT '',
  `libelle` varchar(35) DEFAULT NULL,
  `adr1` varchar(35) DEFAULT NULL,
  `adr2` varchar(35) DEFAULT NULL,
  `cp` char(5) DEFAULT NULL,
  `ville` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Depots`
--

LOCK TABLES `Fiches_Depots` WRITE;
/*!40000 ALTER TABLE `Fiches_Depots` DISABLE KEYS */;
INSERT INTO `Fiches_Depots` VALUES ('01','Magasin','','','',''),('02','DÃ©pot 1','','','','');
/*!40000 ALTER TABLE `Fiches_Depots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Docactif`
--

DROP TABLE IF EXISTS `Fiches_Docactif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Docactif` (
  `doc_type` char(12) NOT NULL,
  `doc_num` char(8) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `process_id` int(11) DEFAULT NULL,
  `machine_id` varchar(50) DEFAULT NULL,
  `host_id` varchar(50) DEFAULT NULL,
  `userdb_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`doc_type`,`doc_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Docactif`
--

LOCK TABLES `Fiches_Docactif` WRITE;
/*!40000 ALTER TABLE `Fiches_Docactif` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Docactif` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Echeances`
--

DROP TABLE IF EXISTS `Fiches_Echeances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Echeances` (
  `num` varchar(2) NOT NULL,
  `libell` varchar(20) DEFAULT NULL,
  `duree` varchar(2) DEFAULT NULL,
  `finmois` tinyint(1) DEFAULT NULL,
  `jours` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Echeances`
--

LOCK TABLES `Fiches_Echeances` WRITE;
/*!40000 ALTER TABLE `Fiches_Echeances` DISABLE KEYS */;
INSERT INTO `Fiches_Echeances` VALUES ('00','Comptant','00',0,'00'),('01','30 jours fin de mois','30',1,'00'),('02','30 jours le 5','30',0,'05'),('03','30 jours le 10','30',0,'10'),('04','30 jours le 15','30',0,'15'),('05','30 jours le 20','30',0,'20'),('06','30 jours le 25','30',0,'25'),('07','30 jours','30',0,'00'),('08','60 jours fin de mois','60',1,'00'),('09','60 jours le 5','60',0,'05'),('10','60 jours le 10','60',0,'10'),('11','60 jours le 15','60',0,'15'),('12','60 jours le 20','60',0,'20'),('13','60 jours le 25','60',0,'25'),('14','60 jours','60',0,'00'),('15','45 jours','45',0,'00');
/*!40000 ALTER TABLE `Fiches_Echeances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_EntMat`
--

DROP TABLE IF EXISTS `Fiches_EntMat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_EntMat` (
  `numserie` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `codep` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `libelle` text COLLATE utf8_unicode_ci,
  `bloc` char(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numbl` char(6) COLLATE utf8_unicode_ci NOT NULL,
  `marque` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `design` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `design2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`numserie`,`codep`,`numbl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_EntMat`
--

LOCK TABLES `Fiches_EntMat` WRITE;
/*!40000 ALTER TABLE `Fiches_EntMat` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_EntMat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_EntTicketz`
--

DROP TABLE IF EXISTS `Fiches_EntTicketz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_EntTicketz` (
  `lInd` int(11) NOT NULL AUTO_INCREMENT,
  `caisse` char(2) DEFAULT NULL,
  `numero` char(7) DEFAULT NULL,
  `date` char(17) DEFAULT NULL,
  `client` varchar(30) DEFAULT NULL,
  `scheque` char(1) DEFAULT NULL,
  `mcheque` char(12) DEFAULT NULL,
  `nmcheque` varchar(30) DEFAULT NULL,
  `scarte` char(1) DEFAULT NULL,
  `nmcarte` varchar(30) DEFAULT NULL,
  `mcarte` char(12) DEFAULT NULL,
  `sespeces` char(1) DEFAULT NULL,
  `mespeces` char(12) DEFAULT NULL,
  `scredit` char(1) DEFAULT NULL,
  `mcredit` char(12) DEFAULT NULL,
  `nmcredit` varchar(30) DEFAULT NULL,
  `sbachat` char(1) DEFAULT NULL,
  `mbachat` char(12) DEFAULT NULL,
  `scavoir` char(1) DEFAULT NULL,
  `mavoir` char(12) DEFAULT NULL,
  `nmavoir` varchar(30) DEFAULT NULL,
  `mht` char(12) DEFAULT NULL,
  `mtva` char(12) DEFAULT NULL,
  `mttc` char(12) DEFAULT NULL,
  `statut` char(1) DEFAULT NULL,
  `savoir` char(1) DEFAULT NULL,
  `type` char(1) DEFAULT NULL,
  `mrem` char(12) DEFAULT NULL,
  `vendeur` varchar(35) DEFAULT NULL,
  `carte` char(13) DEFAULT NULL,
  `points` decimal(12,3) DEFAULT NULL,
  `sbonus` char(1) DEFAULT NULL,
  `mbonus` char(12) DEFAULT NULL,
  `sresto` char(1) DEFAULT NULL,
  `mresto` char(12) DEFAULT NULL,
  `nom` varchar(35) DEFAULT NULL,
  `retro` tinyint(1) DEFAULT NULL,
  `suppr` tinyint(1) DEFAULT NULL,
  `control` varchar(40) DEFAULT NULL,
  `prev_numero` char(7) DEFAULT NULL,
  PRIMARY KEY (`lInd`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_EntTicketz`
--

LOCK TABLES `Fiches_EntTicketz` WRITE;
/*!40000 ALTER TABLE `Fiches_EntTicketz` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_EntTicketz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Entcom`
--

DROP TABLE IF EXISTS `Fiches_Entcom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Entcom` (
  `four` varchar(8) NOT NULL,
  `numcom` varchar(15) NOT NULL,
  `ddate` datetime DEFAULT NULL,
  `montant` double DEFAULT NULL,
  `reliquat` tinyint(1) DEFAULT NULL,
  `montantttc` varchar(12) DEFAULT NULL,
  `anomalie` tinyint(1) DEFAULT NULL,
  `commentaire` text,
  PRIMARY KEY (`four`,`numcom`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Entcom`
--

LOCK TABLES `Fiches_Entcom` WRITE;
/*!40000 ALTER TABLE `Fiches_Entcom` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Entcom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Entrecpt`
--

DROP TABLE IF EXISTS `Fiches_Entrecpt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Entrecpt` (
  `four` varchar(8) NOT NULL,
  `numrecpt` varchar(15) NOT NULL DEFAULT '',
  `ddate` datetime DEFAULT NULL,
  `montant` decimal(12,3) DEFAULT NULL,
  `validee` tinyint(1) DEFAULT NULL,
  `mttc` decimal(12,3) DEFAULT NULL,
  `anomalie` tinyint(1) DEFAULT NULL,
  `commentaire` text,
  PRIMARY KEY (`four`,`numrecpt`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Entrecpt`
--

LOCK TABLES `Fiches_Entrecpt` WRITE;
/*!40000 ALTER TABLE `Fiches_Entrecpt` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Entrecpt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_EtiGond`
--

DROP TABLE IF EXISTS `Fiches_EtiGond`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_EtiGond` (
  `code` varchar(25) NOT NULL DEFAULT '',
  `nombre` decimal(12,0) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_EtiGond`
--

LOCK TABLES `Fiches_EtiGond` WRITE;
/*!40000 ALTER TABLE `Fiches_EtiGond` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_EtiGond` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_EtiProd`
--

DROP TABLE IF EXISTS `Fiches_EtiProd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_EtiProd` (
  `code` varchar(25) NOT NULL DEFAULT '',
  `nombre` decimal(12,0) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_EtiProd`
--

LOCK TABLES `Fiches_EtiProd` WRITE;
/*!40000 ALTER TABLE `Fiches_EtiProd` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_EtiProd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Etiquettes`
--

DROP TABLE IF EXISTS `Fiches_Etiquettes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Etiquettes` (
  `code` char(1) NOT NULL,
  `nblargeur` decimal(2,0) DEFAULT NULL,
  `nbhauteur` decimal(2,0) DEFAULT NULL,
  `largeur` decimal(5,0) DEFAULT NULL,
  `hauteur` decimal(5,0) DEFAULT NULL,
  `mrghaut` decimal(5,0) DEFAULT NULL,
  `mrgauche` decimal(5,0) DEFAULT NULL,
  `esplargeur` decimal(5,0) DEFAULT NULL,
  `esphauteur` decimal(5,0) DEFAULT NULL,
  `libelle` char(25) DEFAULT NULL,
  `page` varchar(20) NOT NULL,
  PRIMARY KEY (`code`,`page`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Etiquettes`
--

LOCK TABLES `Fiches_Etiquettes` WRITE;
/*!40000 ALTER TABLE `Fiches_Etiquettes` DISABLE KEYS */;
INSERT INTO `Fiches_Etiquettes` VALUES ('1',4,10,485,254,215,80,0,0,'Article','A4 Portrait'),('2',2,8,1005,370,0,0,0,0,'Gondole','A4 Portrait'),('3',2,8,1005,370,0,0,0,0,'Client enveloppe','A4 Portrait'),('4',2,4,991,677,2,2,0,0,'Client colis','A4 Portrait'),('5',1,1,250,250,0,0,0,0,'Casier Dymo','A4 Portrait');
/*!40000 ALTER TABLE `Fiches_Etiquettes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Fam`
--

DROP TABLE IF EXISTS `Fiches_Fam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Fam` (
  `code_fam` char(20) NOT NULL,
  `libell_fam` varchar(30) DEFAULT NULL,
  `compt_fam` varchar(8) DEFAULT NULL,
  `coef_fam` decimal(6,3) DEFAULT NULL,
  `cdtva_fam` char(2) DEFAULT NULL,
  `txtva_fam` double DEFAULT NULL,
  `cptrem_fam` varchar(10) DEFAULT NULL,
  `ect_fam` double DEFAULT NULL,
  `rem_fam` double DEFAULT NULL,
  `qte1` double DEFAULT NULL,
  `qte2` double DEFAULT NULL,
  `rem1` double DEFAULT NULL,
  `qte3` double DEFAULT NULL,
  `qte4` double DEFAULT NULL,
  `rem2` double DEFAULT NULL,
  `qte5` double DEFAULT NULL,
  `qte6` double DEFAULT NULL,
  `rem3` double DEFAULT NULL,
  `qte7` double DEFAULT NULL,
  `qte8` double DEFAULT NULL,
  `rem4` double DEFAULT NULL,
  `qte9` double DEFAULT NULL,
  `qte10` double DEFAULT NULL,
  `rem5` double DEFAULT NULL,
  `qte11` double DEFAULT NULL,
  `qte12` double DEFAULT NULL,
  `rem6` double DEFAULT NULL,
  `compt2_fam` char(8) DEFAULT NULL,
  `compt3_fam` char(8) DEFAULT NULL,
  `compt4_fam` char(8) DEFAULT NULL,
  `compt5_fam` char(8) DEFAULT NULL,
  PRIMARY KEY (`code_fam`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Fam`
--

LOCK TABLES `Fiches_Fam` WRITE;
/*!40000 ALTER TABLE `Fiches_Fam` DISABLE KEYS */;
INSERT INTO `Fiches_Fam` VALUES ('01','Produits 2.10','707000',2.200,'1',2.1,'709000',0,0,0,10,0,10.01,50,2,50.01,100,4,100.01,500,10,500.01,9999999.99,15,10000000,NULL,NULL,'707000','606130','707010','707000'),('10','Mo 20.00','706100',2.000,'3',20,'709000',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'706100',NULL,NULL,'706100'),('02','Produits 7.00','707010',2.000,'2',7,'709000',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'707010',NULL,NULL,'707010'),('03','Produits 20.00','707020',1.800,'3',20,'709000',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'707020',NULL,NULL,'707020'),('11','MO 7.00','706105',1.000,'3',20,'709000',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'706105',NULL,NULL,'706105');
/*!40000 ALTER TABLE `Fiches_Fam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_FamDep`
--

DROP TABLE IF EXISTS `Fiches_FamDep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_FamDep` (
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  `fam` char(20) DEFAULT NULL,
  `compte` char(8) DEFAULT NULL,
  `depot` char(8) DEFAULT NULL,
  PRIMARY KEY (`lind`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_FamDep`
--

LOCK TABLES `Fiches_FamDep` WRITE;
/*!40000 ALTER TABLE `Fiches_FamDep` DISABLE KEYS */;
INSERT INTO `Fiches_FamDep` VALUES (1,'01','707000','');
/*!40000 ALTER TABLE `Fiches_FamDep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Four`
--

DROP TABLE IF EXISTS `Fiches_Four`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Four` (
  `fo_code` int(11) NOT NULL DEFAULT '0',
  `fo_col` varchar(1) DEFAULT NULL,
  `fo_rs_soc` varchar(12) DEFAULT NULL,
  `fo_nom` varchar(35) DEFAULT NULL,
  `fo_pnm` varchar(35) DEFAULT NULL,
  `fo_adr1` varchar(35) DEFAULT NULL,
  `fo_adr2` varchar(35) DEFAULT NULL,
  `fo_cd_ptl` varchar(5) DEFAULT NULL,
  `fo_ville` varchar(35) DEFAULT NULL,
  `fo_email` varchar(150) DEFAULT NULL,
  `fo_tel_std` varchar(16) DEFAULT NULL,
  `fo_tel_bur` varchar(16) DEFAULT NULL,
  `fo_tel_post` varchar(16) DEFAULT NULL,
  `fo_pble` varchar(16) DEFAULT NULL,
  `fo_fx1` varchar(16) DEFAULT NULL,
  `fo_fx2` varchar(16) DEFAULT NULL,
  `fo_plaf_ecrs` varchar(10) DEFAULT NULL,
  `fo_obs` text,
  `fo_cd_bq` varchar(5) DEFAULT NULL,
  `fo_cd_gch` varchar(5) DEFAULT NULL,
  `fo_cle_rib` varchar(2) DEFAULT NULL,
  `fo_num_cpt` char(11) DEFAULT NULL,
  `fo_dom` varchar(25) DEFAULT NULL,
  `fo_id_tva` varchar(15) DEFAULT NULL,
  `fo_cd_soc` varchar(2) DEFAULT NULL,
  `fo_site` varchar(40) DEFAULT NULL,
  `fo_cd_cli` varchar(16) DEFAULT NULL,
  `fo_co_vtl` varchar(255) DEFAULT NULL,
  `fo_collectif` varchar(8) DEFAULT NULL,
  `fo_cdech` varchar(2) DEFAULT NULL,
  `fo_pays` char(40) DEFAULT NULL,
  `fo_franco` decimal(12,2) DEFAULT NULL,
  `fo_centrale` tinyint(1) DEFAULT NULL,
  `fo_cnt1` char(17) DEFAULT NULL,
  `fo_cnt2` char(40) DEFAULT NULL,
  `fo_cnt3` char(25) DEFAULT NULL,
  `fo_cnt4` char(17) DEFAULT NULL,
  `fo_cnt5` char(40) DEFAULT NULL,
  `fo_cnt6` char(25) DEFAULT NULL,
  `fo_cnt7` char(17) DEFAULT NULL,
  `fo_cnt8` char(40) DEFAULT NULL,
  `fo_cnt9` char(25) DEFAULT NULL,
  `fo_cnt10` char(17) DEFAULT NULL,
  `fo_cnt11` char(40) DEFAULT NULL,
  `fo_cnt12` char(25) DEFAULT NULL,
  `fo_cnt13` char(17) DEFAULT NULL,
  `fo_cnt14` char(40) DEFAULT NULL,
  `fo_cnt15` char(25) DEFAULT NULL,
  `fo_ccentrale` char(2) DEFAULT NULL,
  `fo_copie` tinyint(1) DEFAULT NULL,
  `fo_mincom` decimal(12,2) DEFAULT NULL,
  `fo_iban` char(30) DEFAULT NULL,
  `fo_bic` char(11) DEFAULT NULL,
  `fo_exo` tinyint(1) DEFAULT NULL,
  `fo_fport` decimal(12,2) DEFAULT NULL,
  `fo_cb` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`fo_code`),
  KEY `fo_code` (`fo_code`),
  KEY `fo_nom` (`fo_nom`),
  KEY `fo_adr1` (`fo_adr1`),
  KEY `fo_adr2` (`fo_adr2`),
  KEY `fo_cd_ptl` (`fo_cd_ptl`),
  KEY `fo_ville` (`fo_ville`),
  KEY `id_code` (`fo_code`),
  KEY `id_nom` (`fo_nom`),
  KEY `id_adr1` (`fo_adr1`),
  KEY `id_adr2` (`fo_adr2`),
  KEY `id_cdptl` (`fo_cd_ptl`),
  KEY `id_ville` (`fo_ville`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Four`
--

LOCK TABLES `Fiches_Four` WRITE;
/*!40000 ALTER TABLE `Fiches_Four` DISABLE KEYS */;
INSERT INTO `Fiches_Four` VALUES (401001,'F',NULL,'A Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'401000','00',NULL,0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0.00,NULL,NULL,NULL,NULL,NULL),(401002,'F',NULL,'B Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'401000','00',NULL,0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0.00,NULL,NULL,NULL,NULL,NULL),(401003,'F',NULL,'C Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'401000','00',NULL,0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(401004,'F',NULL,'D Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'401000','00',NULL,0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0.00,NULL,NULL,0,NULL,NULL),(401005,'F',NULL,'E Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'401000','00',NULL,0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(401006,'F',NULL,'F Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'401000','00',NULL,0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(401007,'F',NULL,'G Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'401000','00',NULL,0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(401008,'F',NULL,'H Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'401000','00',NULL,0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(401009,'F',NULL,'I Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'401000','00',NULL,0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(401010,'F',NULL,'J Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'401000','00',NULL,0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(401011,'F',NULL,'K Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'401000','00',NULL,0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(401012,'F',NULL,'L Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'401000','00',NULL,0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(401013,'F',NULL,'M Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'401000','00',NULL,0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(401014,'F',NULL,'N Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'401000','00',NULL,0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(401015,'F',NULL,'O Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'401000','00',NULL,0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(401016,'F','','P Divers ','','','','','','','','','','','','',NULL,'','','','','','','',NULL,'','',NULL,'401000','00','',0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0.00,'','',0,0.00,''),(401017,'F',NULL,'Q Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'401000','00',NULL,0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(401018,'F',NULL,'R Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'401000','00',NULL,0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(401019,'F',NULL,'S Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'401000','00',NULL,0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(401020,'F',NULL,'T Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'401000','00',NULL,0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(401021,'F',NULL,'U Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'401000','00',NULL,0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(401022,'F',NULL,'V Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'401000','00',NULL,0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(401023,'F','','W Divers ','','','','','','','','','','','','',NULL,'','','','','','','',NULL,'','',NULL,'401000','00','',0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0.00,'','',0,0.00,''),(401024,'F',NULL,'X Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'401000','00',NULL,0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(401025,'F',NULL,'Y Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'401000','00',NULL,0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(401026,'F',NULL,'Z Divers ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'401000','00',NULL,0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Fiches_Four` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Four_Vtl`
--

DROP TABLE IF EXISTS `Fiches_Four_Vtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Four_Vtl` (
  `code` varchar(8) NOT NULL,
  `code_vtl` varchar(8) NOT NULL,
  `intitule_vtl` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`code`,`code_vtl`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Four_Vtl`
--

LOCK TABLES `Fiches_Four_Vtl` WRITE;
/*!40000 ALTER TABLE `Fiches_Four_Vtl` DISABLE KEYS */;
INSERT INTO `Fiches_Four_Vtl` VALUES ('401001','607000','Achat de marchandises');
/*!40000 ALTER TABLE `Fiches_Four_Vtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_HisEntTickets`
--

DROP TABLE IF EXISTS `Fiches_HisEntTickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_HisEntTickets` (
  `lInd` int(11) NOT NULL AUTO_INCREMENT,
  `caisse` char(2) DEFAULT NULL,
  `numero` char(7) DEFAULT NULL,
  `date` char(17) DEFAULT NULL,
  `client` varchar(30) DEFAULT NULL,
  `scheque` char(1) DEFAULT NULL,
  `mcheque` char(12) DEFAULT NULL,
  `nmcheque` varchar(30) DEFAULT NULL,
  `scarte` char(1) DEFAULT NULL,
  `nmcarte` varchar(30) DEFAULT NULL,
  `mcarte` char(12) DEFAULT NULL,
  `sespeces` char(1) DEFAULT NULL,
  `mespeces` char(12) DEFAULT NULL,
  `scredit` char(1) DEFAULT NULL,
  `mcredit` char(12) DEFAULT NULL,
  `nmcredit` varchar(30) DEFAULT NULL,
  `sbachat` char(1) DEFAULT NULL,
  `mbachat` char(12) DEFAULT NULL,
  `scavoir` char(1) DEFAULT NULL,
  `mavoir` char(12) DEFAULT NULL,
  `nmavoir` varchar(30) DEFAULT NULL,
  `mht` char(12) DEFAULT NULL,
  `mtva` char(12) DEFAULT NULL,
  `mttc` char(12) DEFAULT NULL,
  `savoir` char(1) DEFAULT NULL,
  `vendeur` varchar(35) DEFAULT NULL,
  `carte` char(13) DEFAULT NULL,
  `points` decimal(12,3) DEFAULT NULL,
  `sbonus` char(1) DEFAULT NULL,
  `mbonus` char(12) DEFAULT NULL,
  `sresto` char(1) DEFAULT NULL,
  `mresto` char(12) DEFAULT NULL,
  `nom` varchar(35) DEFAULT NULL,
  `suppr` tinyint(1) DEFAULT NULL,
  `control` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`lInd`),
  KEY `numero` (`numero`),
  KEY `caisse` (`caisse`),
  KEY `numero_2` (`numero`),
  KEY `date` (`date`),
  KEY `vendeur` (`vendeur`),
  KEY `carte` (`carte`),
  KEY `id_caisse` (`caisse`),
  KEY `id_numero` (`numero`),
  KEY `id_date` (`date`),
  KEY `id_vendeur` (`vendeur`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_HisEntTickets`
--

LOCK TABLES `Fiches_HisEntTickets` WRITE;
/*!40000 ALTER TABLE `Fiches_HisEntTickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_HisEntTickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_HisInvT`
--

DROP TABLE IF EXISTS `Fiches_HisInvT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_HisInvT` (
  `inv_num` int(11) NOT NULL,
  `inv_code` char(15) NOT NULL DEFAULT '',
  `inv_qtestock` decimal(12,2) DEFAULT NULL,
  `inv_qtecomptee` decimal(12,2) DEFAULT NULL,
  `inv_date` date DEFAULT NULL,
  PRIMARY KEY (`inv_num`,`inv_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_HisInvT`
--

LOCK TABLES `Fiches_HisInvT` WRITE;
/*!40000 ALTER TABLE `Fiches_HisInvT` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_HisInvT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_HisLigTickets`
--

DROP TABLE IF EXISTS `Fiches_HisLigTickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_HisLigTickets` (
  `lInd` int(11) NOT NULL AUTO_INCREMENT,
  `numero` char(7) DEFAULT NULL,
  `numlig` char(3) DEFAULT NULL,
  `code` varchar(15) DEFAULT NULL,
  `intitule` varchar(35) DEFAULT NULL,
  `montant` char(12) DEFAULT NULL,
  `qte` char(12) DEFAULT NULL,
  `type` char(2) DEFAULT NULL,
  `fam` char(20) DEFAULT NULL,
  `mht` char(12) DEFAULT NULL,
  `mrem` char(12) DEFAULT NULL,
  `tva` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`lInd`),
  KEY `numero` (`numero`),
  KEY `numero_2` (`numero`),
  KEY `numlig` (`numlig`),
  KEY `code` (`code`),
  KEY `type` (`type`),
  KEY `id_numero` (`numero`),
  KEY `id_numlig` (`numlig`),
  KEY `id_code` (`code`),
  KEY `id_type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_HisLigTickets`
--

LOCK TABLES `Fiches_HisLigTickets` WRITE;
/*!40000 ALTER TABLE `Fiches_HisLigTickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_HisLigTickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_HisentMat`
--

DROP TABLE IF EXISTS `Fiches_HisentMat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_HisentMat` (
  `numserie` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `codep` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `marque` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `design` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `design2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `libelle` text COLLATE utf8_unicode_ci,
  `bloc` char(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numfac` char(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`numserie`,`codep`,`numfac`),
  KEY `numserie` (`numserie`),
  KEY `codep` (`codep`),
  KEY `marque` (`marque`),
  KEY `numfac` (`numfac`),
  KEY `id_numserie` (`numserie`),
  KEY `id_codep` (`codep`),
  KEY `id_marque` (`marque`),
  KEY `id_numfac` (`numfac`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_HisentMat`
--

LOCK TABLES `Fiches_HisentMat` WRITE;
/*!40000 ALTER TABLE `Fiches_HisentMat` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_HisentMat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_HistoFac`
--

DROP TABLE IF EXISTS `Fiches_HistoFac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_HistoFac` (
  `numfac` varchar(10) NOT NULL,
  `cdclifac` varchar(8) DEFAULT NULL,
  `cvclifac` varchar(12) DEFAULT NULL,
  `nmclifac` varchar(35) DEFAULT NULL,
  `pnmclifac` varchar(35) DEFAULT NULL,
  `adr1fac` varchar(35) DEFAULT NULL,
  `adr2fac` varchar(35) DEFAULT NULL,
  `cpfac` varchar(5) DEFAULT NULL,
  `villefac` varchar(35) DEFAULT NULL,
  `datefac` datetime DEFAULT NULL,
  `rmofac` varchar(6) DEFAULT NULL,
  `rartfac` varchar(5) DEFAULT NULL,
  `exofac` int(11) DEFAULT NULL,
  `remmofac` varchar(10) DEFAULT NULL,
  `remartfac` varchar(10) DEFAULT NULL,
  `totfac` decimal(12,2) DEFAULT NULL,
  `reg` varchar(15) DEFAULT NULL,
  `ech` datetime DEFAULT NULL,
  `numerobl` varchar(6) DEFAULT NULL,
  `acpt` varchar(12) DEFAULT NULL,
  `mreg` varchar(10) DEFAULT NULL,
  `marge_mo` decimal(12,2) DEFAULT NULL,
  `marge_art` decimal(12,2) DEFAULT NULL,
  `numserie` varchar(15) DEFAULT NULL,
  `codep` varchar(15) DEFAULT NULL,
  `mtreg` char(12) DEFAULT NULL,
  `totfacttc` decimal(12,2) DEFAULT NULL,
  `cdep` varchar(37) DEFAULT NULL,
  `acquitte` tinyint(1) DEFAULT NULL,
  `gestfac` decimal(5,2) DEFAULT '0.00',
  KEY `cdclifac` (`cdclifac`),
  KEY `nmclifac` (`nmclifac`),
  KEY `numfac` (`numfac`),
  KEY `totfac` (`totfac`),
  KEY `datefac` (`datefac`),
  KEY `numserie` (`numserie`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_HistoFac`
--

LOCK TABLES `Fiches_HistoFac` WRITE;
/*!40000 ALTER TABLE `Fiches_HistoFac` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_HistoFac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_HistoFacM`
--

DROP TABLE IF EXISTS `Fiches_HistoFacM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_HistoFacM` (
  `numfac` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cdclifac` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvclifac` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nmclifac` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pnmclifac` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adr1fac` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adr2fac` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cpfac` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `villefac` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datefac` datetime DEFAULT NULL,
  `rmofac` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rartfac` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exofac` int(11) DEFAULT NULL,
  `remmofac` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remartfac` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totfac` double DEFAULT NULL,
  `reg` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ech` datetime DEFAULT NULL,
  `numerobl` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `acpt` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mreg` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marge_mo` decimal(12,2) DEFAULT NULL,
  `marge_art` decimal(12,2) DEFAULT NULL,
  `numserie` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codep` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mtreg` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totfacttc` decimal(12,2) DEFAULT NULL,
  `cdep` varchar(37) COLLATE utf8_unicode_ci DEFAULT NULL,
  `acquitte` tinyint(1) DEFAULT NULL,
  `gestfac` decimal(5,2) DEFAULT '0.00',
  KEY `cdclifac` (`cdclifac`),
  KEY `nmclifac` (`nmclifac`),
  KEY `numfac` (`numfac`),
  KEY `totfac` (`totfac`),
  KEY `datefac` (`datefac`),
  KEY `numserie` (`numserie`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_HistoFacM`
--

LOCK TABLES `Fiches_HistoFacM` WRITE;
/*!40000 ALTER TABLE `Fiches_HistoFacM` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_HistoFacM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_HistoLigfac`
--

DROP TABLE IF EXISTS `Fiches_HistoLigfac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_HistoLigfac` (
  `num_ligfac` varchar(10) NOT NULL,
  `numlig_ligfac` varchar(6) NOT NULL,
  `code_ligfac` varchar(15) DEFAULT NULL,
  `libel_ligfac` varchar(50) DEFAULT NULL,
  `fam_ligfac` char(20) DEFAULT NULL,
  `pu_ligfac` varchar(10) DEFAULT NULL,
  `qte_ligfac` varchar(6) DEFAULT NULL,
  `brut_ligfac` varchar(10) DEFAULT NULL,
  `rem_ligfac` varchar(6) DEFAULT NULL,
  `netht_ligfac` varchar(10) DEFAULT NULL,
  `tx_ligfac` varchar(1) DEFAULT NULL,
  `nettc_ligfac` varchar(10) DEFAULT NULL,
  `typel_ligfac` varchar(1) DEFAULT NULL,
  `tm_ligfac` varchar(1) DEFAULT NULL,
  `com_ligfac` text,
  `bloc` varchar(30) DEFAULT NULL,
  `mtx_ligfac` char(5) DEFAULT NULL,
  `mrgart_ligfac` decimal(12,3) DEFAULT NULL,
  `mrgmo_ligfac` decimal(12,3) DEFAULT NULL,
  `tour_ligfac` char(15) DEFAULT NULL,
  PRIMARY KEY (`num_ligfac`,`numlig_ligfac`),
  KEY `num_ligfac` (`num_ligfac`),
  KEY `numlig_ligfac` (`numlig_ligfac`),
  KEY `code_ligfac` (`code_ligfac`),
  KEY `fam_ligfac` (`fam_ligfac`),
  KEY `typel_ligfac` (`typel_ligfac`),
  KEY `id_num` (`num_ligfac`),
  KEY `id_numlig` (`numlig_ligfac`),
  KEY `id_code` (`code_ligfac`),
  KEY `id_fam` (`fam_ligfac`),
  KEY `id_typel` (`typel_ligfac`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_HistoLigfac`
--

LOCK TABLES `Fiches_HistoLigfac` WRITE;
/*!40000 ALTER TABLE `Fiches_HistoLigfac` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_HistoLigfac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_HistoLigfacM`
--

DROP TABLE IF EXISTS `Fiches_HistoLigfacM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_HistoLigfacM` (
  `num_ligfac` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `numlig_ligfac` char(6) COLLATE utf8_unicode_ci NOT NULL,
  `code_ligfac` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `libel_ligfac` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_ligfac` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pu_ligfac` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qte_ligfac` char(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brut_ligfac` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rem_ligfac` char(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `netht_ligfac` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tx_ligfac` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nettc_ligfac` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `typel_ligfac` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tm_ligfac` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `com_ligfac` text COLLATE utf8_unicode_ci,
  `bloc` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mtx_ligfac` char(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mrgart_ligfac` decimal(12,3) DEFAULT NULL,
  `mrgmo_ligfac` decimal(12,3) DEFAULT NULL,
  `tour_ligfac` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`num_ligfac`,`numlig_ligfac`),
  KEY `num_ligfac` (`num_ligfac`),
  KEY `numlig_ligfac` (`numlig_ligfac`),
  KEY `code_ligfac` (`code_ligfac`),
  KEY `fam_ligfac` (`fam_ligfac`),
  KEY `typel_ligfac` (`typel_ligfac`),
  KEY `id_num` (`num_ligfac`),
  KEY `id_numlig` (`numlig_ligfac`),
  KEY `id_code` (`code_ligfac`),
  KEY `id_fam` (`fam_ligfac`),
  KEY `id_typel` (`typel_ligfac`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_HistoLigfacM`
--

LOCK TABLES `Fiches_HistoLigfacM` WRITE;
/*!40000 ALTER TABLE `Fiches_HistoLigfacM` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_HistoLigfacM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Identite`
--

DROP TABLE IF EXISTS `Fiches_Identite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Identite` (
  `code` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `libelle` char(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Identite`
--

LOCK TABLES `Fiches_Identite` WRITE;
/*!40000 ALTER TABLE `Fiches_Identite` DISABLE KEYS */;
INSERT INTO `Fiches_Identite` VALUES ('01','SARL'),('02','EARL'),('03','SA'),('04','EURL'),('05','SNC'),('06','SE'),('07','M.'),('08','Mme'),('09','Mme et M.'),('10','Gaec'),('11','CI'),('12','GIE'),('13','SAS'),('14','SASU'),('15','SCI'),('16','SCM'),('17','SCOP'),('18','SCP'),('19','SEL'),('20','SDF'),('21','SCS'),('22','SELARL'),('23','SEP');
/*!40000 ALTER TABLE `Fiches_Identite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_ImpArtDef`
--

DROP TABLE IF EXISTS `Fiches_ImpArtDef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_ImpArtDef` (
  `num` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `cfour` char(8) DEFAULT NULL,
  `nfour` varchar(50) DEFAULT NULL,
  `cfam` char(20) DEFAULT NULL,
  `nfam` varchar(50) DEFAULT NULL,
  `adrfic` varchar(100) DEFAULT NULL,
  `typesep` char(1) DEFAULT NULL,
  `sep` char(1) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_ImpArtDef`
--

LOCK TABLES `Fiches_ImpArtDef` WRITE;
/*!40000 ALTER TABLE `Fiches_ImpArtDef` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_ImpArtDef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_ImpArtDef2`
--

DROP TABLE IF EXISTS `Fiches_ImpArtDef2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_ImpArtDef2` (
  `num` int(11) NOT NULL,
  `posorg_1` char(4) DEFAULT NULL,
  `col_1` varchar(50) DEFAULT NULL,
  `db_1` int(11) DEFAULT NULL,
  `lg_1` int(11) DEFAULT NULL,
  `pos_1` int(11) DEFAULT NULL,
  `posorg_2` char(4) DEFAULT NULL,
  `col_2` varchar(50) DEFAULT NULL,
  `db_2` int(11) DEFAULT NULL,
  `lg_2` int(11) DEFAULT NULL,
  `pos_2` int(11) DEFAULT NULL,
  `posorg_3` char(4) DEFAULT NULL,
  `col_3` varchar(50) DEFAULT NULL,
  `db_3` int(11) DEFAULT NULL,
  `lg_3` int(11) DEFAULT NULL,
  `pos_3` int(11) DEFAULT NULL,
  `posorg_4` char(4) DEFAULT NULL,
  `col_4` varchar(50) DEFAULT NULL,
  `db_4` int(11) DEFAULT NULL,
  `lg_4` int(11) DEFAULT NULL,
  `pos_4` int(11) DEFAULT NULL,
  `posorg_5` char(4) DEFAULT NULL,
  `col_5` varchar(50) DEFAULT NULL,
  `db_5` int(11) DEFAULT NULL,
  `lg_5` int(11) DEFAULT NULL,
  `pos_5` int(11) DEFAULT NULL,
  `posorg_6` char(4) DEFAULT NULL,
  `col_6` varchar(50) DEFAULT NULL,
  `db_6` int(11) DEFAULT NULL,
  `lg_6` int(11) DEFAULT NULL,
  `pos_6` int(11) DEFAULT NULL,
  `posorg_7` char(4) DEFAULT NULL,
  `col_7` varchar(50) DEFAULT NULL,
  `db_7` int(11) DEFAULT NULL,
  `lg_7` int(11) DEFAULT NULL,
  `pos_7` int(11) DEFAULT NULL,
  `posorg_8` char(4) DEFAULT NULL,
  `col_8` varchar(50) DEFAULT NULL,
  `db_8` int(11) DEFAULT NULL,
  `lg_8` int(11) DEFAULT NULL,
  `pos_8` int(11) DEFAULT NULL,
  `posorg_9` char(4) DEFAULT NULL,
  `col_9` varchar(50) DEFAULT NULL,
  `db_9` int(11) DEFAULT NULL,
  `lg_9` int(11) DEFAULT NULL,
  `pos_9` int(11) DEFAULT NULL,
  `posorg_10` char(4) DEFAULT NULL,
  `col_10` varchar(50) DEFAULT NULL,
  `db_10` int(11) DEFAULT NULL,
  `lg_10` int(11) DEFAULT NULL,
  `pos_10` int(11) DEFAULT NULL,
  `posorg_11` char(4) DEFAULT NULL,
  `col_11` varchar(50) DEFAULT NULL,
  `db_11` int(11) DEFAULT NULL,
  `lg_11` int(11) DEFAULT NULL,
  `pos_11` int(11) DEFAULT NULL,
  `posorg_12` char(4) DEFAULT NULL,
  `col_12` varchar(50) DEFAULT NULL,
  `db_12` int(11) DEFAULT NULL,
  `lg_12` int(11) DEFAULT NULL,
  `pos_12` int(11) DEFAULT NULL,
  `posorg_13` char(4) DEFAULT NULL,
  `col_13` varchar(50) DEFAULT NULL,
  `db_13` int(11) DEFAULT NULL,
  `lg_13` int(11) DEFAULT NULL,
  `pos_13` int(11) DEFAULT NULL,
  `posorg_14` char(4) DEFAULT NULL,
  `col_14` varchar(50) DEFAULT NULL,
  `db_14` int(11) DEFAULT NULL,
  `lg_14` int(11) DEFAULT NULL,
  `pos_14` int(11) DEFAULT NULL,
  `posorg_15` char(4) DEFAULT NULL,
  `col_15` varchar(50) DEFAULT NULL,
  `db_15` int(11) DEFAULT NULL,
  `lg_15` int(11) DEFAULT NULL,
  `pos_15` int(11) DEFAULT NULL,
  `posorg_16` char(4) DEFAULT NULL,
  `col_16` varchar(50) DEFAULT NULL,
  `db_16` int(11) DEFAULT NULL,
  `lg_16` int(11) DEFAULT NULL,
  `pos_16` int(11) DEFAULT NULL,
  `posorg_17` char(4) DEFAULT NULL,
  `col_17` varchar(50) DEFAULT NULL,
  `db_17` int(11) DEFAULT NULL,
  `lg_17` int(11) DEFAULT NULL,
  `pos_17` int(11) DEFAULT NULL,
  `posorg_18` char(4) DEFAULT NULL,
  `col_18` varchar(50) DEFAULT NULL,
  `db_18` int(11) DEFAULT NULL,
  `lg_18` int(11) DEFAULT NULL,
  `pos_18` int(11) DEFAULT NULL,
  `posorg_19` char(4) DEFAULT NULL,
  `col_19` varchar(50) DEFAULT NULL,
  `db_19` int(11) DEFAULT NULL,
  `lg_19` int(11) DEFAULT NULL,
  `pos_19` int(11) DEFAULT NULL,
  `posorg_20` char(4) DEFAULT NULL,
  `col_20` varchar(50) DEFAULT NULL,
  `db_20` int(11) DEFAULT NULL,
  `lg_20` int(11) DEFAULT NULL,
  `pos_20` int(11) DEFAULT NULL,
  `posorg_21` char(4) DEFAULT NULL,
  `col_21` varchar(50) DEFAULT NULL,
  `db_21` int(11) DEFAULT NULL,
  `lg_21` int(11) DEFAULT NULL,
  `pos_21` int(11) DEFAULT NULL,
  `posorg_22` char(4) DEFAULT NULL,
  `col_22` varchar(50) DEFAULT NULL,
  `db_22` int(11) DEFAULT NULL,
  `lg_22` int(11) DEFAULT NULL,
  `pos_22` int(11) DEFAULT NULL,
  `posorg_23` char(4) DEFAULT NULL,
  `col_23` varchar(50) DEFAULT NULL,
  `db_23` int(11) DEFAULT NULL,
  `lg_23` int(11) DEFAULT NULL,
  `pos_23` int(11) DEFAULT NULL,
  `posorg_24` char(4) DEFAULT NULL,
  `col_24` varchar(50) DEFAULT NULL,
  `db_24` int(11) DEFAULT NULL,
  `lg_24` int(11) DEFAULT NULL,
  `pos_24` int(11) DEFAULT NULL,
  `posorg_25` char(4) DEFAULT NULL,
  `col_25` varchar(50) DEFAULT NULL,
  `db_25` int(11) DEFAULT NULL,
  `lg_25` int(11) DEFAULT NULL,
  `pos_25` int(11) DEFAULT NULL,
  `posorg_26` char(4) DEFAULT NULL,
  `col_26` varchar(50) DEFAULT NULL,
  `db_26` int(11) DEFAULT NULL,
  `lg_26` int(11) DEFAULT NULL,
  `pos_26` int(11) DEFAULT NULL,
  `posorg_27` char(4) DEFAULT NULL,
  `col_27` varchar(50) DEFAULT NULL,
  `db_27` int(11) DEFAULT NULL,
  `lg_27` int(11) DEFAULT NULL,
  `pos_27` int(11) DEFAULT NULL,
  `posorg_28` char(4) DEFAULT NULL,
  `col_28` varchar(50) DEFAULT NULL,
  `db_28` int(11) DEFAULT NULL,
  `lg_28` int(11) DEFAULT NULL,
  `pos_28` int(11) DEFAULT NULL,
  `posorg_29` char(4) DEFAULT NULL,
  `col_29` varchar(50) DEFAULT NULL,
  `db_29` int(11) DEFAULT NULL,
  `lg_29` int(11) DEFAULT NULL,
  `pos_29` int(11) DEFAULT NULL,
  `posorg_30` char(4) DEFAULT NULL,
  `col_30` varchar(50) DEFAULT NULL,
  `db_30` int(11) DEFAULT NULL,
  `lg_30` int(11) DEFAULT NULL,
  `pos_30` int(11) DEFAULT NULL,
  `posorg_31` char(4) DEFAULT NULL,
  `col_31` varchar(50) DEFAULT NULL,
  `db_31` int(11) DEFAULT NULL,
  `lg_31` int(11) DEFAULT NULL,
  `pos_31` int(11) DEFAULT NULL,
  `posorg_32` char(4) DEFAULT NULL,
  `col_32` varchar(50) DEFAULT NULL,
  `db_32` int(11) DEFAULT NULL,
  `lg_32` int(11) DEFAULT NULL,
  `pos_32` int(11) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_ImpArtDef2`
--

LOCK TABLES `Fiches_ImpArtDef2` WRITE;
/*!40000 ALTER TABLE `Fiches_ImpArtDef2` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_ImpArtDef2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Inv`
--

DROP TABLE IF EXISTS `Fiches_Inv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Inv` (
  `inv_nlig` char(9) NOT NULL DEFAULT '',
  `inv_code` varchar(15) DEFAULT NULL,
  `inv_qtestock` double DEFAULT NULL,
  `inv_qtecomptee` double DEFAULT NULL,
  `inv_date` datetime DEFAULT NULL,
  `inv_comptee` int(11) DEFAULT NULL,
  `inv_valid` int(11) DEFAULT NULL,
  PRIMARY KEY (`inv_nlig`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Inv`
--

LOCK TABLES `Fiches_Inv` WRITE;
/*!40000 ALTER TABLE `Fiches_Inv` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Inv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_InvT`
--

DROP TABLE IF EXISTS `Fiches_InvT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_InvT` (
  `inv_nlig` char(9) NOT NULL DEFAULT '',
  `inv_code` varchar(15) DEFAULT NULL,
  `inv_qtestock` double DEFAULT NULL,
  `inv_qtecomptee` double DEFAULT NULL,
  `inv_date` datetime DEFAULT NULL,
  `inv_comptee` int(11) DEFAULT NULL,
  `inv_valid` int(11) DEFAULT NULL,
  PRIMARY KEY (`inv_nlig`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_InvT`
--

LOCK TABLES `Fiches_InvT` WRITE;
/*!40000 ALTER TABLE `Fiches_InvT` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_InvT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Journaux`
--

DROP TABLE IF EXISTS `Fiches_Journaux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Journaux` (
  `code_jo` varchar(2) NOT NULL,
  `libelle_jo` varchar(30) DEFAULT NULL,
  `type_jo` varchar(2) DEFAULT NULL,
  `cde_banque` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`code_jo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Journaux`
--

LOCK TABLES `Fiches_Journaux` WRITE;
/*!40000 ALTER TABLE `Fiches_Journaux` DISABLE KEYS */;
INSERT INTO `Fiches_Journaux` VALUES ('10','OD','OD',''),('60','Achat','AC',''),('70','Ventes','VE',''),('50','Banque','TR','512000'),('53','Caisse','TR','530000'),('90','A nouveaux','OD','');
/*!40000 ALTER TABLE `Fiches_Journaux` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Lcr`
--

DROP TABLE IF EXISTS `Fiches_Lcr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Lcr` (
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(8) DEFAULT NULL,
  `nom` varchar(35) DEFAULT NULL,
  `montant` char(12) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `datech` date DEFAULT NULL,
  `numfac` char(12) DEFAULT NULL,
  `acceptee` int(11) DEFAULT NULL,
  `ecartee` int(11) DEFAULT NULL,
  `banque` varchar(35) DEFAULT NULL,
  `codeentree` int(1) DEFAULT NULL,
  `bordereau` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`lind`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Lcr`
--

LOCK TABLES `Fiches_Lcr` WRITE;
/*!40000 ALTER TABLE `Fiches_Lcr` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Lcr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_LibelAvoirs`
--

DROP TABLE IF EXISTS `Fiches_LibelAvoirs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_LibelAvoirs` (
  `lInd` tinyint(4) NOT NULL AUTO_INCREMENT,
  `libelav` char(250) DEFAULT NULL,
  PRIMARY KEY (`lInd`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_LibelAvoirs`
--

LOCK TABLES `Fiches_LibelAvoirs` WRITE;
/*!40000 ALTER TABLE `Fiches_LibelAvoirs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_LibelAvoirs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_LibelFac`
--

DROP TABLE IF EXISTS `Fiches_LibelFac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_LibelFac` (
  `mind` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `txtfac` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`mind`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_LibelFac`
--

LOCK TABLES `Fiches_LibelFac` WRITE;
/*!40000 ALTER TABLE `Fiches_LibelFac` DISABLE KEYS */;
INSERT INTO `Fiches_LibelFac` VALUES (1,'\n');
/*!40000 ALTER TABLE `Fiches_LibelFac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_LibelTicket`
--

DROP TABLE IF EXISTS `Fiches_LibelTicket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_LibelTicket` (
  `lInd` tinyint(4) NOT NULL AUTO_INCREMENT,
  `libeltk` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`lInd`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_LibelTicket`
--

LOCK TABLES `Fiches_LibelTicket` WRITE;
/*!40000 ALTER TABLE `Fiches_LibelTicket` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_LibelTicket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Libelles`
--

DROP TABLE IF EXISTS `Fiches_Libelles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Libelles` (
  `num` varchar(2) NOT NULL,
  `intitule` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Libelles`
--

LOCK TABLES `Fiches_Libelles` WRITE;
/*!40000 ALTER TABLE `Fiches_Libelles` DISABLE KEYS */;
INSERT INTO `Fiches_Libelles` VALUES ('1','Facture'),('2','Avoir'),('3','Cheque'),('4','Carte');
/*!40000 ALTER TABLE `Fiches_Libelles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_LigTicketz`
--

DROP TABLE IF EXISTS `Fiches_LigTicketz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_LigTicketz` (
  `lInd` int(11) NOT NULL AUTO_INCREMENT,
  `numero` char(7) DEFAULT NULL,
  `numlig` char(3) DEFAULT NULL,
  `code` varchar(15) DEFAULT NULL,
  `intitule` varchar(35) DEFAULT NULL,
  `montant` char(12) DEFAULT NULL,
  `qte` char(12) DEFAULT NULL,
  `type` char(2) DEFAULT NULL,
  `fam` char(20) DEFAULT NULL,
  `mht` char(12) DEFAULT NULL,
  `mrem` char(12) DEFAULT NULL,
  `mtva` char(12) DEFAULT NULL,
  `block` char(4) DEFAULT NULL,
  `tva` varchar(12) DEFAULT NULL,
  `marge` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`lInd`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_LigTicketz`
--

LOCK TABLES `Fiches_LigTicketz` WRITE;
/*!40000 ALTER TABLE `Fiches_LigTicketz` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_LigTicketz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Ligabon`
--

DROP TABLE IF EXISTS `Fiches_Ligabon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Ligabon` (
  `numero` varchar(15) NOT NULL,
  `compte` varchar(10) NOT NULL,
  `intitule` varchar(40) DEFAULT NULL,
  `debit` char(10) NOT NULL,
  `credit` char(10) NOT NULL,
  `lig` int(2) DEFAULT NULL,
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`lind`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Ligabon`
--

LOCK TABLES `Fiches_Ligabon` WRITE;
/*!40000 ALTER TABLE `Fiches_Ligabon` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Ligabon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Ligbl`
--

DROP TABLE IF EXISTS `Fiches_Ligbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Ligbl` (
  `num_ligbl` varchar(6) NOT NULL,
  `numlig_ligbl` varchar(6) NOT NULL,
  `code_ligbl` varchar(15) DEFAULT NULL,
  `libel_ligbl` varchar(50) DEFAULT NULL,
  `fam_ligbl` char(20) DEFAULT NULL,
  `pu_ligbl` varchar(10) DEFAULT NULL,
  `dec_ligbl` varchar(1) DEFAULT NULL,
  `qte_ligbl` varchar(6) DEFAULT NULL,
  `brut_ligbl` varchar(10) DEFAULT NULL,
  `rem_ligbl` varchar(6) DEFAULT NULL,
  `netht_ligbl` varchar(10) DEFAULT NULL,
  `tx_ligbl` char(2) DEFAULT NULL,
  `nettc_ligbl` varchar(10) DEFAULT NULL,
  `typel_ligbl` varchar(1) DEFAULT NULL,
  `tm_ligbl` varchar(1) DEFAULT NULL,
  `com_ligbl` text,
  `block_ligbl` varchar(30) DEFAULT NULL,
  `pdstotal_ligbl` decimal(12,3) DEFAULT NULL,
  `mrgart_ligbl` decimal(12,3) DEFAULT NULL,
  `mrgmo_ligbl` decimal(12,3) DEFAULT NULL,
  `mtx_ligfac` char(5) DEFAULT NULL,
  `four_ligbl` varchar(8) DEFAULT NULL,
  `refl_ligbl` varchar(40) DEFAULT NULL,
  `tour_ligbl` char(15) DEFAULT NULL,
  PRIMARY KEY (`num_ligbl`,`numlig_ligbl`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Ligbl`
--

LOCK TABLES `Fiches_Ligbl` WRITE;
/*!40000 ALTER TABLE `Fiches_Ligbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Ligbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_LigblM`
--

DROP TABLE IF EXISTS `Fiches_LigblM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_LigblM` (
  `num_ligbl` char(6) COLLATE utf8_unicode_ci NOT NULL,
  `numlig_ligbl` char(6) COLLATE utf8_unicode_ci NOT NULL,
  `code_ligbl` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `libel_ligbl` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_ligbl` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pu_ligbl` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dec_ligbl` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qte_ligbl` char(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brut_ligbl` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rem_ligbl` char(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `netht_ligbl` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tx_ligbl` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nettc_ligbl` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `typel_ligbl` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tm_ligbl` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `com_ligbl` text COLLATE utf8_unicode_ci,
  `block_ligbl` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdstotal_ligbl` decimal(12,3) DEFAULT NULL,
  `mrgart_ligbl` decimal(12,3) DEFAULT NULL,
  `mrgmo_ligbl` decimal(12,3) DEFAULT NULL,
  `mtx_ligfac` char(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `four_ligbl` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refl_ligbl` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tour_ligbl` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`num_ligbl`,`numlig_ligbl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_LigblM`
--

LOCK TABLES `Fiches_LigblM` WRITE;
/*!40000 ALTER TABLE `Fiches_LigblM` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_LigblM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Ligcom`
--

DROP TABLE IF EXISTS `Fiches_Ligcom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Ligcom` (
  `code` varchar(25) DEFAULT NULL,
  `design` varchar(50) DEFAULT NULL,
  `numcom` varchar(15) DEFAULT NULL,
  `four` varchar(8) DEFAULT NULL,
  `qte` varchar(6) DEFAULT NULL,
  `pbht` varchar(10) DEFAULT NULL,
  `rm` varchar(6) DEFAULT NULL,
  `paht` varchar(10) DEFAULT NULL,
  `datecom` datetime DEFAULT NULL,
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  `frais` varchar(12) DEFAULT NULL,
  `prvt` varchar(12) DEFAULT NULL,
  `nligne` char(4) DEFAULT NULL,
  `coda` char(15) DEFAULT NULL,
  `pattc` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`lind`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Ligcom`
--

LOCK TABLES `Fiches_Ligcom` WRITE;
/*!40000 ALTER TABLE `Fiches_Ligcom` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Ligcom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Ligrecpt`
--

DROP TABLE IF EXISTS `Fiches_Ligrecpt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Ligrecpt` (
  `code` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `design` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numrecpt` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `four` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `daterecpt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `qte` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pbht` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rm` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paht` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frais` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prvt` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nligne` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `pattc` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`code`,`numrecpt`,`four`,`daterecpt`,`nligne`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Ligrecpt`
--

LOCK TABLES `Fiches_Ligrecpt` WRITE;
/*!40000 ALTER TABLE `Fiches_Ligrecpt` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Ligrecpt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Marques`
--

DROP TABLE IF EXISTS `Fiches_Marques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Marques` (
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `intitule` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lind`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Marques`
--

LOCK TABLES `Fiches_Marques` WRITE;
/*!40000 ALTER TABLE `Fiches_Marques` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Marques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Materiels`
--

DROP TABLE IF EXISTS `Fiches_Materiels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Materiels` (
  `mat_serie` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `mat_code` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `mat_design` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mat_design2` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mat_fam` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mat_four` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mat_cequ` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mat_cbarre` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mat_cfour` char(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mat_paht` decimal(12,3) DEFAULT NULL,
  `mat_frais` decimal(7,3) DEFAULT NULL,
  `mat_prvt` decimal(7,3) DEFAULT NULL,
  `mat_coef` decimal(7,4) DEFAULT NULL,
  `mat_pvht` decimal(12,3) DEFAULT NULL,
  `mat_tva` decimal(10,3) DEFAULT NULL,
  `mat_pvttc` decimal(12,3) DEFAULT NULL,
  `mat_cdarr` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mat_pvar` decimal(12,3) DEFAULT NULL,
  `mat_dec` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mat_nbd` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mat_qte` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mat_dpa` decimal(10,2) DEFAULT NULL,
  `mat_dfour` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mat_pmp` decimal(10,2) DEFAULT NULL,
  `mat_ddate` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mat_com` decimal(12,3) DEFAULT NULL,
  `mat_ect` int(1) DEFAULT NULL,
  `mat_eco` decimal(5,2) DEFAULT NULL,
  `mat_poids` decimal(11,3) DEFAULT NULL,
  `mat_poids2` decimal(11,3) DEFAULT NULL,
  `mat_photo` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mat_crst` text COLLATE utf8_unicode_ci,
  `mat_vendu` int(1) DEFAULT NULL,
  `mat_rcpt` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mat_bl` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mat_marque` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mat_type` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mat_cli` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mat_matdiv` int(1) DEFAULT NULL,
  `mat_dtevte` date DEFAULT NULL,
  `mat_dateg1` date DEFAULT NULL,
  `mat_dateg2` date DEFAULT NULL,
  `mat_chkgarantie` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`mat_serie`,`mat_code`),
  KEY `mat_serie` (`mat_serie`),
  KEY `mat_code` (`mat_code`),
  KEY `mat_design` (`mat_design`),
  KEY `mat_fam` (`mat_fam`),
  KEY `mat_four` (`mat_four`),
  KEY `mat_cequ` (`mat_cequ`),
  KEY `mat_cbarre` (`mat_cbarre`),
  KEY `mat_cfour` (`mat_cfour`),
  KEY `mat_marque` (`mat_marque`),
  KEY `id_serie` (`mat_serie`),
  KEY `id_code` (`mat_code`),
  KEY `id_design` (`mat_design`),
  KEY `id_fam` (`mat_fam`),
  KEY `id_four` (`mat_four`),
  KEY `id_cequ` (`mat_cequ`),
  KEY `id_cbarre` (`mat_cbarre`),
  KEY `id_cfour` (`mat_cfour`),
  KEY `id_marque` (`mat_marque`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Materiels`
--

LOCK TABLES `Fiches_Materiels` WRITE;
/*!40000 ALTER TABLE `Fiches_Materiels` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Materiels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Mats`
--

DROP TABLE IF EXISTS `Fiches_Mats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Mats` (
  `mat_serie` char(30) NOT NULL,
  `mat_code` char(15) NOT NULL,
  `mat_design` char(50) DEFAULT NULL,
  `mat_design2` char(50) DEFAULT NULL,
  `mat_fam` char(5) DEFAULT NULL,
  `mat_four` char(8) DEFAULT NULL,
  `mat_cequ` char(15) DEFAULT NULL,
  `mat_cbarre` char(15) DEFAULT NULL,
  `mat_cfour` char(25) DEFAULT NULL,
  `mat_paht` decimal(12,3) DEFAULT NULL,
  `mat_frais` decimal(7,3) DEFAULT NULL,
  `mat_prvt` decimal(7,3) DEFAULT NULL,
  `mat_coef` decimal(6,3) DEFAULT NULL,
  `mat_pvht` decimal(12,3) DEFAULT NULL,
  `mat_tva` decimal(10,3) DEFAULT NULL,
  `mat_pvttc` decimal(12,3) DEFAULT NULL,
  `mat_cdarr` char(4) DEFAULT NULL,
  `mat_pvar` decimal(12,3) DEFAULT NULL,
  `mat_dec` char(1) DEFAULT NULL,
  `mat_nbd` char(1) DEFAULT NULL,
  `mat_qte` char(1) DEFAULT NULL,
  `mat_dpa` decimal(10,2) DEFAULT NULL,
  `mat_dfour` char(8) DEFAULT NULL,
  `mat_pmp` decimal(10,2) DEFAULT NULL,
  `mat_ddate` char(10) DEFAULT NULL,
  `mat_com` decimal(12,3) DEFAULT NULL,
  `mat_ect` int(1) DEFAULT NULL,
  `mat_eco` decimal(5,2) DEFAULT NULL,
  `mat_poids` decimal(11,3) DEFAULT NULL,
  `mat_poids2` decimal(11,3) DEFAULT NULL,
  `mat_photo` char(20) DEFAULT NULL,
  `mat_crst` text,
  `mat_rcpt` char(15) DEFAULT NULL,
  PRIMARY KEY (`mat_serie`,`mat_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Mats`
--

LOCK TABLES `Fiches_Mats` WRITE;
/*!40000 ALTER TABLE `Fiches_Mats` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Mats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Mo`
--

DROP TABLE IF EXISTS `Fiches_Mo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Mo` (
  `mo_code` varchar(15) NOT NULL,
  `mo_design` varchar(50) DEFAULT NULL,
  `mo_fam` char(20) DEFAULT NULL,
  `mo_four` int(11) DEFAULT NULL,
  `mo_txcd` varchar(2) DEFAULT NULL,
  `mo_txht` double DEFAULT NULL,
  `mo_tva` char(2) DEFAULT NULL,
  `mo_tempmont` varchar(1) DEFAULT NULL,
  `mo_montant` double DEFAULT NULL,
  `mo_valeurht` double DEFAULT NULL,
  `mo_cdarr` varchar(4) DEFAULT NULL,
  `mo_valeurttc` double DEFAULT NULL,
  `mo_prvt` decimal(12,3) DEFAULT NULL,
  `mo_marge` decimal(12,3) DEFAULT NULL,
  `mo_impcar` tinyint(1) DEFAULT NULL,
  `mo_crst` text,
  PRIMARY KEY (`mo_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Mo`
--

LOCK TABLES `Fiches_Mo` WRITE;
/*!40000 ALTER TABLE `Fiches_Mo` DISABLE KEYS */;
INSERT INTO `Fiches_Mo` VALUES ('01','Mo T1','10',401001,'1',28,'3','1',1,0,'0,01',0,14.000,14.000,NULL,NULL),('02','Mo T2','10',401001,'2',31,'3','1',1,0,'0,01',0,15.000,16.000,NULL,NULL),('03','Mo T3','10',401001,'3',35,'3','1',1,0,'0,01',0,18.000,17.000,NULL,NULL),('04','Forfait changement poulie','10',401001,'1',28,'3','0',NULL,35,'0,01',42,14.000,0.000,0,NULL),('05','Changement poulie','10',401001,'1',28,'3','1',1.2,NULL,'0,01',NULL,14.000,16.800,0,NULL);
/*!40000 ALTER TABLE `Fiches_Mo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Mvt`
--

DROP TABLE IF EXISTS `Fiches_Mvt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Mvt` (
  `jour` varchar(2) DEFAULT NULL,
  `numero` int(11) NOT NULL,
  `numerodef` int(11) DEFAULT NULL,
  `compte` varchar(8) DEFAULT NULL,
  `collectif` tinyint(1) DEFAULT NULL,
  `intitule` varchar(40) DEFAULT NULL,
  `dte` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `datee` datetime DEFAULT NULL,
  `dateech` datetime DEFAULT NULL,
  `numcol` varchar(3) DEFAULT NULL,
  `numdoc` char(10) DEFAULT NULL,
  `numlot` char(10) DEFAULT NULL,
  `libelle` varchar(50) DEFAULT NULL,
  `montantd` double DEFAULT NULL,
  `montantc` double DEFAULT NULL,
  `validee` tinyint(1) DEFAULT NULL,
  `provisoire` tinyint(1) DEFAULT NULL,
  `tresorerie` tinyint(1) DEFAULT NULL,
  `pointee` tinyint(1) DEFAULT NULL,
  `nrlv` int(11) DEFAULT NULL,
  `lettree` tinyint(1) DEFAULT NULL,
  `cloturee` tinyint(1) DEFAULT NULL,
  `relance` int(11) DEFAULT NULL,
  `lind` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `dteval` date DEFAULT NULL,
  `export` char(1) DEFAULT NULL,
  `control` varchar(40) DEFAULT NULL,
  `supprimee` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`lind`),
  UNIQUE KEY `lind` (`lind`),
  UNIQUE KEY `lind_2` (`lind`),
  UNIQUE KEY `lind_3` (`lind`),
  KEY `date` (`dte`),
  KEY `numero2` (`numero`),
  KEY `compte2` (`compte`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Mvt`
--

LOCK TABLES `Fiches_Mvt` WRITE;
/*!40000 ALTER TABLE `Fiches_Mvt` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Mvt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Mvt1`
--

DROP TABLE IF EXISTS `Fiches_Mvt1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Mvt1` (
  `jour` varchar(2) DEFAULT NULL,
  `numero` int(11) NOT NULL DEFAULT '0',
  `compte` varchar(8) NOT NULL,
  `collectif` int(11) DEFAULT NULL,
  `intitule` varchar(40) DEFAULT NULL,
  `dte` datetime DEFAULT NULL,
  `datee` datetime DEFAULT NULL,
  `numdoc` varchar(10) NOT NULL,
  `numlot` varchar(10) NOT NULL,
  `libelle` varchar(50) DEFAULT NULL,
  `montantd` double DEFAULT NULL,
  `montantc` double DEFAULT NULL,
  `validee` tinyint(1) DEFAULT NULL,
  `provisoire` tinyint(1) DEFAULT NULL,
  `tresorerie` tinyint(1) DEFAULT NULL,
  `pointee` tinyint(1) DEFAULT NULL,
  `nrlv` int(11) DEFAULT NULL,
  `lettree` tinyint(1) DEFAULT NULL,
  `cloturee` tinyint(1) DEFAULT NULL,
  `relance` int(11) DEFAULT NULL,
  `control` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`numero`,`compte`,`numdoc`,`numlot`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Mvt1`
--

LOCK TABLES `Fiches_Mvt1` WRITE;
/*!40000 ALTER TABLE `Fiches_Mvt1` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Mvt1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Mvt2`
--

DROP TABLE IF EXISTS `Fiches_Mvt2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Mvt2` (
  `jour` varchar(2) DEFAULT NULL,
  `numero` int(11) NOT NULL DEFAULT '0',
  `compte` varchar(8) NOT NULL,
  `collectif` int(11) DEFAULT NULL,
  `intitule` varchar(40) DEFAULT NULL,
  `dte` datetime DEFAULT NULL,
  `datee` datetime DEFAULT NULL,
  `numdoc` varchar(10) NOT NULL,
  `numlot` varchar(10) NOT NULL,
  `libelle` varchar(50) DEFAULT NULL,
  `montantd` double DEFAULT NULL,
  `montantc` double DEFAULT NULL,
  `validee` tinyint(1) DEFAULT NULL,
  `provisoire` tinyint(1) DEFAULT NULL,
  `tresorerie` tinyint(1) DEFAULT NULL,
  `pointee` tinyint(1) DEFAULT NULL,
  `nrlv` int(11) DEFAULT NULL,
  `lettree` tinyint(1) DEFAULT NULL,
  `cloturee` tinyint(1) DEFAULT NULL,
  `relance` int(11) DEFAULT NULL,
  `control` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`numero`,`compte`,`numdoc`,`numlot`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Mvt2`
--

LOCK TABLES `Fiches_Mvt2` WRITE;
/*!40000 ALTER TABLE `Fiches_Mvt2` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Mvt2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Mvt3`
--

DROP TABLE IF EXISTS `Fiches_Mvt3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Mvt3` (
  `jour` varchar(2) DEFAULT NULL,
  `numero` int(11) NOT NULL DEFAULT '0',
  `compte` varchar(8) NOT NULL,
  `collectif` int(11) DEFAULT NULL,
  `intitule` varchar(40) DEFAULT NULL,
  `dte` datetime DEFAULT NULL,
  `datee` datetime DEFAULT NULL,
  `numdoc` varchar(10) NOT NULL,
  `numlot` varchar(10) NOT NULL,
  `libelle` varchar(50) DEFAULT NULL,
  `montantd` double DEFAULT NULL,
  `montantc` double DEFAULT NULL,
  `validee` tinyint(1) DEFAULT NULL,
  `provisoire` tinyint(1) DEFAULT NULL,
  `tresorerie` tinyint(1) DEFAULT NULL,
  `pointee` tinyint(1) DEFAULT NULL,
  `nrlv` int(11) DEFAULT NULL,
  `lettree` tinyint(1) DEFAULT NULL,
  `cloturee` tinyint(1) DEFAULT NULL,
  `relance` int(11) DEFAULT NULL,
  `control` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`numero`,`compte`,`numdoc`,`numlot`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Mvt3`
--

LOCK TABLES `Fiches_Mvt3` WRITE;
/*!40000 ALTER TABLE `Fiches_Mvt3` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Mvt3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Mvt4`
--

DROP TABLE IF EXISTS `Fiches_Mvt4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Mvt4` (
  `jour` varchar(2) DEFAULT NULL,
  `numero` int(11) NOT NULL DEFAULT '0',
  `compte` varchar(8) NOT NULL,
  `collectif` int(11) DEFAULT NULL,
  `intitule` varchar(40) DEFAULT NULL,
  `dte` datetime DEFAULT NULL,
  `datee` datetime DEFAULT NULL,
  `numdoc` varchar(10) NOT NULL,
  `numlot` varchar(10) NOT NULL,
  `libelle` varchar(50) DEFAULT NULL,
  `montantd` double DEFAULT NULL,
  `montantc` double DEFAULT NULL,
  `validee` tinyint(1) DEFAULT NULL,
  `provisoire` tinyint(1) DEFAULT NULL,
  `tresorerie` tinyint(1) DEFAULT NULL,
  `pointee` tinyint(1) DEFAULT NULL,
  `nrlv` int(11) DEFAULT NULL,
  `lettree` tinyint(1) DEFAULT NULL,
  `cloturee` tinyint(1) DEFAULT NULL,
  `relance` int(11) DEFAULT NULL,
  `control` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`numero`,`compte`,`numdoc`,`numlot`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Mvt4`
--

LOCK TABLES `Fiches_Mvt4` WRITE;
/*!40000 ALTER TABLE `Fiches_Mvt4` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Mvt4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Mvt5`
--

DROP TABLE IF EXISTS `Fiches_Mvt5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Mvt5` (
  `jour` varchar(2) DEFAULT NULL,
  `numero` int(11) NOT NULL DEFAULT '0',
  `compte` varchar(8) NOT NULL,
  `collectif` int(11) DEFAULT NULL,
  `intitule` varchar(40) DEFAULT NULL,
  `dte` datetime DEFAULT NULL,
  `datee` datetime DEFAULT NULL,
  `numdoc` varchar(10) NOT NULL,
  `numlot` varchar(10) NOT NULL,
  `libelle` varchar(50) DEFAULT NULL,
  `montantd` double DEFAULT NULL,
  `montantc` double DEFAULT NULL,
  `validee` tinyint(1) DEFAULT NULL,
  `provisoire` tinyint(1) DEFAULT NULL,
  `tresorerie` tinyint(1) DEFAULT NULL,
  `pointee` tinyint(1) DEFAULT NULL,
  `nrlv` int(11) DEFAULT NULL,
  `lettree` tinyint(1) DEFAULT NULL,
  `cloturee` tinyint(1) DEFAULT NULL,
  `relance` int(11) DEFAULT NULL,
  `control` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`numero`,`compte`,`numdoc`,`numlot`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Mvt5`
--

LOCK TABLES `Fiches_Mvt5` WRITE;
/*!40000 ALTER TABLE `Fiches_Mvt5` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Mvt5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_MvtA`
--

DROP TABLE IF EXISTS `Fiches_MvtA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_MvtA` (
  `numero` int(6) NOT NULL,
  `compte` char(8) NOT NULL,
  `intitule` char(30) DEFAULT NULL,
  `dte` date DEFAULT NULL,
  `numdoc` char(10) NOT NULL,
  `libelle` char(30) DEFAULT NULL,
  `pourcent` char(5) DEFAULT NULL,
  `montantd` decimal(12,2) DEFAULT NULL,
  `montantc` decimal(12,2) DEFAULT NULL,
  `jour` char(2) DEFAULT NULL,
  `poste` char(3) DEFAULT NULL,
  `validee` tinyint(1) DEFAULT NULL,
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`lind`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_MvtA`
--

LOCK TABLES `Fiches_MvtA` WRITE;
/*!40000 ALTER TABLE `Fiches_MvtA` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_MvtA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_MvtA1`
--

DROP TABLE IF EXISTS `Fiches_MvtA1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_MvtA1` (
  `numero` int(6) NOT NULL,
  `compte` char(8) NOT NULL,
  `intitule` char(30) DEFAULT NULL,
  `dte` date DEFAULT NULL,
  `numdoc` char(10) NOT NULL,
  `libelle` char(30) DEFAULT NULL,
  `pourcent` char(5) DEFAULT NULL,
  `montantd` decimal(12,2) DEFAULT NULL,
  `montantc` decimal(12,2) DEFAULT NULL,
  `jour` char(2) DEFAULT NULL,
  `poste` char(3) DEFAULT NULL,
  `validee` tinyint(1) DEFAULT NULL,
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`lind`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_MvtA1`
--

LOCK TABLES `Fiches_MvtA1` WRITE;
/*!40000 ALTER TABLE `Fiches_MvtA1` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_MvtA1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_MvtA2`
--

DROP TABLE IF EXISTS `Fiches_MvtA2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_MvtA2` (
  `numero` int(6) NOT NULL,
  `compte` char(8) NOT NULL,
  `intitule` char(30) DEFAULT NULL,
  `dte` date DEFAULT NULL,
  `numdoc` char(10) NOT NULL,
  `libelle` char(30) DEFAULT NULL,
  `pourcent` char(5) DEFAULT NULL,
  `montantd` decimal(12,2) DEFAULT NULL,
  `montantc` decimal(12,2) DEFAULT NULL,
  `jour` char(2) DEFAULT NULL,
  `poste` char(3) DEFAULT NULL,
  `validee` tinyint(1) DEFAULT NULL,
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`lind`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_MvtA2`
--

LOCK TABLES `Fiches_MvtA2` WRITE;
/*!40000 ALTER TABLE `Fiches_MvtA2` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_MvtA2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_MvtA3`
--

DROP TABLE IF EXISTS `Fiches_MvtA3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_MvtA3` (
  `numero` int(6) NOT NULL,
  `compte` char(8) NOT NULL,
  `intitule` char(30) DEFAULT NULL,
  `dte` date DEFAULT NULL,
  `numdoc` char(10) NOT NULL,
  `libelle` char(30) DEFAULT NULL,
  `pourcent` char(5) DEFAULT NULL,
  `montantd` decimal(12,2) DEFAULT NULL,
  `montantc` decimal(12,2) DEFAULT NULL,
  `jour` char(2) DEFAULT NULL,
  `poste` char(3) DEFAULT NULL,
  `validee` tinyint(1) DEFAULT NULL,
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`lind`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_MvtA3`
--

LOCK TABLES `Fiches_MvtA3` WRITE;
/*!40000 ALTER TABLE `Fiches_MvtA3` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_MvtA3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_MvtA4`
--

DROP TABLE IF EXISTS `Fiches_MvtA4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_MvtA4` (
  `numero` int(6) NOT NULL,
  `compte` char(8) NOT NULL,
  `intitule` char(30) DEFAULT NULL,
  `dte` date DEFAULT NULL,
  `numdoc` char(10) NOT NULL,
  `libelle` char(30) DEFAULT NULL,
  `pourcent` char(5) DEFAULT NULL,
  `montantd` decimal(12,2) DEFAULT NULL,
  `montantc` decimal(12,2) DEFAULT NULL,
  `jour` char(2) DEFAULT NULL,
  `poste` char(3) DEFAULT NULL,
  `validee` tinyint(1) DEFAULT NULL,
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`lind`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_MvtA4`
--

LOCK TABLES `Fiches_MvtA4` WRITE;
/*!40000 ALTER TABLE `Fiches_MvtA4` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_MvtA4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_MvtA5`
--

DROP TABLE IF EXISTS `Fiches_MvtA5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_MvtA5` (
  `numero` int(6) NOT NULL,
  `compte` char(8) NOT NULL,
  `intitule` char(30) DEFAULT NULL,
  `dte` date DEFAULT NULL,
  `numdoc` char(10) NOT NULL,
  `libelle` char(30) DEFAULT NULL,
  `pourcent` char(5) DEFAULT NULL,
  `montantd` decimal(12,2) DEFAULT NULL,
  `montantc` decimal(12,2) DEFAULT NULL,
  `jour` char(2) DEFAULT NULL,
  `poste` char(3) DEFAULT NULL,
  `validee` tinyint(1) DEFAULT NULL,
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`lind`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_MvtA5`
--

LOCK TABLES `Fiches_MvtA5` WRITE;
/*!40000 ALTER TABLE `Fiches_MvtA5` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_MvtA5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_MvtM`
--

DROP TABLE IF EXISTS `Fiches_MvtM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_MvtM` (
  `jour` char(2) DEFAULT NULL,
  `numero` int(11) NOT NULL,
  `numerodef` int(11) DEFAULT NULL,
  `compte` char(8) NOT NULL,
  `collectif` tinyint(4) DEFAULT NULL,
  `intitule` varchar(40) DEFAULT NULL,
  `dte` date DEFAULT NULL,
  `datee` date DEFAULT NULL,
  `dateech` date DEFAULT NULL,
  `numcol` char(3) DEFAULT NULL,
  `numdoc` char(10) DEFAULT NULL,
  `numlot` char(10) DEFAULT NULL,
  `libelle` char(30) DEFAULT NULL,
  `montantd` decimal(12,2) DEFAULT NULL,
  `montantc` decimal(12,2) DEFAULT NULL,
  `validee` tinyint(1) DEFAULT NULL,
  `provisoire` tinyint(1) DEFAULT NULL,
  `tresorerie` tinyint(1) DEFAULT NULL,
  `pointee` tinyint(1) DEFAULT NULL,
  `nrlv` int(8) DEFAULT NULL,
  `lettree` tinyint(1) DEFAULT NULL,
  `cloturee` tinyint(1) DEFAULT NULL,
  `dteval` date DEFAULT NULL,
  `relance` int(1) DEFAULT NULL,
  `numerop` int(11) DEFAULT NULL,
  `numeropdef` int(11) DEFAULT NULL,
  `export` char(1) DEFAULT NULL,
  `control` varchar(40) DEFAULT NULL,
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  `datem` date DEFAULT NULL,
  `supprimee` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`lind`),
  KEY `date` (`dte`),
  KEY `numero2` (`numero`),
  KEY `compte2` (`compte`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_MvtM`
--

LOCK TABLES `Fiches_MvtM` WRITE;
/*!40000 ALTER TABLE `Fiches_MvtM` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_MvtM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_MvtM1`
--

DROP TABLE IF EXISTS `Fiches_MvtM1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_MvtM1` (
  `jour` char(2) DEFAULT NULL,
  `numero` int(6) NOT NULL,
  `numerodef` int(6) NOT NULL,
  `compte` char(8) NOT NULL,
  `collectif` tinyint(4) DEFAULT NULL,
  `intitule` char(30) DEFAULT NULL,
  `dte` date DEFAULT NULL,
  `datee` date DEFAULT NULL,
  `dateech` date DEFAULT NULL,
  `numcol` char(3) DEFAULT NULL,
  `numdoc` char(10) NOT NULL,
  `numlot` char(10) NOT NULL,
  `libelle` char(30) DEFAULT NULL,
  `montantd` decimal(12,2) DEFAULT NULL,
  `montantc` decimal(12,2) DEFAULT NULL,
  `validee` tinyint(1) DEFAULT NULL,
  `provisoire` tinyint(1) DEFAULT NULL,
  `tresorerie` tinyint(1) DEFAULT NULL,
  `pointee` tinyint(1) DEFAULT NULL,
  `nrlv` int(8) DEFAULT NULL,
  `lettree` tinyint(1) DEFAULT NULL,
  `cloturee` tinyint(1) DEFAULT NULL,
  `dteval` date DEFAULT NULL,
  `relance` int(1) DEFAULT NULL,
  `numerop` int(11) DEFAULT NULL,
  `numeropdef` int(11) DEFAULT NULL,
  `export` char(1) DEFAULT NULL,
  `control` varchar(40) DEFAULT NULL,
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`lind`),
  KEY `date` (`dte`),
  KEY `numero2` (`numero`),
  KEY `compte2` (`compte`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_MvtM1`
--

LOCK TABLES `Fiches_MvtM1` WRITE;
/*!40000 ALTER TABLE `Fiches_MvtM1` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_MvtM1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_MvtM2`
--

DROP TABLE IF EXISTS `Fiches_MvtM2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_MvtM2` (
  `jour` char(2) DEFAULT NULL,
  `numero` int(6) NOT NULL,
  `numerodef` int(6) NOT NULL,
  `compte` char(8) NOT NULL,
  `collectif` tinyint(4) DEFAULT NULL,
  `intitule` char(30) DEFAULT NULL,
  `dte` date DEFAULT NULL,
  `datee` date DEFAULT NULL,
  `dateech` date DEFAULT NULL,
  `numcol` char(3) DEFAULT NULL,
  `numdoc` char(10) NOT NULL,
  `numlot` char(10) NOT NULL,
  `libelle` char(30) DEFAULT NULL,
  `montantd` decimal(12,2) DEFAULT NULL,
  `montantc` decimal(12,2) DEFAULT NULL,
  `validee` tinyint(1) DEFAULT NULL,
  `provisoire` tinyint(1) DEFAULT NULL,
  `tresorerie` tinyint(1) DEFAULT NULL,
  `pointee` tinyint(1) DEFAULT NULL,
  `nrlv` int(8) DEFAULT NULL,
  `lettree` tinyint(1) DEFAULT NULL,
  `cloturee` tinyint(1) DEFAULT NULL,
  `dteval` date DEFAULT NULL,
  `relance` int(1) DEFAULT NULL,
  `numerop` int(11) DEFAULT NULL,
  `numeropdef` int(11) DEFAULT NULL,
  `export` char(1) DEFAULT NULL,
  `control` varchar(30) DEFAULT NULL,
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`lind`),
  KEY `date` (`dte`),
  KEY `numero2` (`numero`),
  KEY `compte2` (`compte`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_MvtM2`
--

LOCK TABLES `Fiches_MvtM2` WRITE;
/*!40000 ALTER TABLE `Fiches_MvtM2` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_MvtM2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_MvtM3`
--

DROP TABLE IF EXISTS `Fiches_MvtM3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_MvtM3` (
  `jour` char(2) DEFAULT NULL,
  `numero` int(6) NOT NULL,
  `numerodef` int(6) NOT NULL,
  `compte` char(8) NOT NULL,
  `collectif` tinyint(4) DEFAULT NULL,
  `intitule` char(30) DEFAULT NULL,
  `dte` date DEFAULT NULL,
  `datee` date DEFAULT NULL,
  `dateech` date DEFAULT NULL,
  `numcol` char(3) DEFAULT NULL,
  `numdoc` char(10) NOT NULL,
  `numlot` char(10) NOT NULL,
  `libelle` char(30) DEFAULT NULL,
  `montantd` decimal(12,2) DEFAULT NULL,
  `montantc` decimal(12,2) DEFAULT NULL,
  `validee` tinyint(1) DEFAULT NULL,
  `provisoire` tinyint(1) DEFAULT NULL,
  `tresorerie` tinyint(1) DEFAULT NULL,
  `pointee` tinyint(1) DEFAULT NULL,
  `nrlv` int(8) DEFAULT NULL,
  `lettree` tinyint(1) DEFAULT NULL,
  `cloturee` tinyint(1) DEFAULT NULL,
  `dteval` date DEFAULT NULL,
  `relance` int(1) DEFAULT NULL,
  `numerop` int(11) DEFAULT NULL,
  `numeropdef` int(11) DEFAULT NULL,
  `export` char(1) DEFAULT NULL,
  `control` varchar(30) DEFAULT NULL,
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`lind`),
  KEY `date` (`dte`),
  KEY `numero2` (`numero`),
  KEY `compte2` (`compte`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_MvtM3`
--

LOCK TABLES `Fiches_MvtM3` WRITE;
/*!40000 ALTER TABLE `Fiches_MvtM3` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_MvtM3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_MvtM4`
--

DROP TABLE IF EXISTS `Fiches_MvtM4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_MvtM4` (
  `jour` char(2) DEFAULT NULL,
  `numero` int(6) NOT NULL,
  `numerodef` int(6) NOT NULL,
  `compte` char(8) NOT NULL,
  `collectif` tinyint(4) DEFAULT NULL,
  `intitule` char(30) DEFAULT NULL,
  `dte` date DEFAULT NULL,
  `datee` date DEFAULT NULL,
  `dateech` date DEFAULT NULL,
  `numcol` char(3) DEFAULT NULL,
  `numdoc` char(10) NOT NULL,
  `numlot` char(10) NOT NULL,
  `libelle` char(30) DEFAULT NULL,
  `montantd` decimal(12,2) DEFAULT NULL,
  `montantc` decimal(12,2) DEFAULT NULL,
  `validee` tinyint(1) DEFAULT NULL,
  `provisoire` tinyint(1) DEFAULT NULL,
  `tresorerie` tinyint(1) DEFAULT NULL,
  `pointee` tinyint(1) DEFAULT NULL,
  `nrlv` int(8) DEFAULT NULL,
  `lettree` tinyint(1) DEFAULT NULL,
  `cloturee` tinyint(1) DEFAULT NULL,
  `dteval` date DEFAULT NULL,
  `relance` int(1) DEFAULT NULL,
  `numerop` int(11) DEFAULT NULL,
  `numeropdef` int(11) DEFAULT NULL,
  `export` char(1) DEFAULT NULL,
  `control` varchar(30) DEFAULT NULL,
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`lind`),
  KEY `date` (`dte`),
  KEY `numero2` (`numero`),
  KEY `compte2` (`compte`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_MvtM4`
--

LOCK TABLES `Fiches_MvtM4` WRITE;
/*!40000 ALTER TABLE `Fiches_MvtM4` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_MvtM4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_MvtM5`
--

DROP TABLE IF EXISTS `Fiches_MvtM5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_MvtM5` (
  `jour` char(2) DEFAULT NULL,
  `numero` int(6) NOT NULL,
  `numerodef` int(6) NOT NULL,
  `compte` char(8) NOT NULL,
  `collectif` tinyint(4) DEFAULT NULL,
  `intitule` char(30) DEFAULT NULL,
  `dte` date DEFAULT NULL,
  `datee` date DEFAULT NULL,
  `dateech` date DEFAULT NULL,
  `numcol` char(3) DEFAULT NULL,
  `numdoc` char(10) NOT NULL,
  `numlot` char(10) NOT NULL,
  `libelle` char(30) DEFAULT NULL,
  `montantd` decimal(12,2) DEFAULT NULL,
  `montantc` decimal(12,2) DEFAULT NULL,
  `validee` tinyint(1) DEFAULT NULL,
  `provisoire` tinyint(1) DEFAULT NULL,
  `tresorerie` tinyint(1) DEFAULT NULL,
  `pointee` tinyint(1) DEFAULT NULL,
  `nrlv` int(8) DEFAULT NULL,
  `lettree` tinyint(1) DEFAULT NULL,
  `cloturee` tinyint(1) DEFAULT NULL,
  `dteval` date DEFAULT NULL,
  `relance` int(1) DEFAULT NULL,
  `numerop` int(11) DEFAULT NULL,
  `numeropdef` int(11) DEFAULT NULL,
  `export` char(1) DEFAULT NULL,
  `control` varchar(30) DEFAULT NULL,
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`lind`),
  KEY `date` (`dte`),
  KEY `numero2` (`numero`),
  KEY `compte2` (`compte`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_MvtM5`
--

LOCK TABLES `Fiches_MvtM5` WRITE;
/*!40000 ALTER TABLE `Fiches_MvtM5` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_MvtM5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Mvtexp`
--

DROP TABLE IF EXISTS `Fiches_Mvtexp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Mvtexp` (
  `mind` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(15) DEFAULT NULL,
  `daterecpt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `qtep` varchar(10) DEFAULT NULL,
  `qtem` varchar(10) DEFAULT NULL,
  `com` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`mind`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Mvtexp`
--

LOCK TABLES `Fiches_Mvtexp` WRITE;
/*!40000 ALTER TABLE `Fiches_Mvtexp` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Mvtexp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Mvtexpdc`
--

DROP TABLE IF EXISTS `Fiches_Mvtexpdc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Mvtexpdc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mind` int(11) NOT NULL,
  `code` char(15) NOT NULL,
  `daterecpt` date NOT NULL,
  `qtep` char(10) DEFAULT NULL,
  `qtem` char(10) DEFAULT NULL,
  `com` varchar(35) DEFAULT NULL,
  `type` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mind` (`mind`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Mvtexpdc`
--

LOCK TABLES `Fiches_Mvtexpdc` WRITE;
/*!40000 ALTER TABLE `Fiches_Mvtexpdc` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Mvtexpdc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Numabon`
--

DROP TABLE IF EXISTS `Fiches_Numabon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Numabon` (
  `numero` int(11) NOT NULL DEFAULT '0',
  `intitule` varchar(30) DEFAULT NULL,
  `type` char(1) NOT NULL,
  `typem` char(1) NOT NULL,
  PRIMARY KEY (`numero`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Numabon`
--

LOCK TABLES `Fiches_Numabon` WRITE;
/*!40000 ALTER TABLE `Fiches_Numabon` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Numabon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Parametres`
--

DROP TABLE IF EXISTS `Fiches_Parametres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Parametres` (
  `ind` int(11) NOT NULL DEFAULT '0',
  `dteclec` date DEFAULT NULL,
  `dteclec1` date DEFAULT NULL,
  `dteclec2` date DEFAULT NULL,
  `dteclec3` date DEFAULT NULL,
  `dteclec4` date DEFAULT NULL,
  `dteclec5` date DEFAULT NULL,
  `dtepp` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dtepec` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dtepc` date DEFAULT NULL,
  `dtetdec` date DEFAULT NULL,
  `dtefedec` date DEFAULT NULL,
  `cptrplus` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cptrmoins` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jdr` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cptrsplus` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cptrsmoins` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numecriture` int(11) DEFAULT NULL,
  `dnc` int(11) DEFAULT NULL,
  `dnbon` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dnfac` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dndevis` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jrnal` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `son` int(11) NOT NULL DEFAULT '0',
  `dnf` int(11) DEFAULT NULL,
  `numecriture1` int(11) DEFAULT NULL,
  `numecriture2` int(11) DEFAULT NULL,
  `numecriture3` int(11) DEFAULT NULL,
  `coretro` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dncom` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devise` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jrnal2` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jrnal3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `viremc` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `viremchq` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `virema` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jrnal4` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dteinv` date DEFAULT NULL,
  `jrnal5` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dnbr` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nfac` tinyint(1) DEFAULT NULL,
  `version` char(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version_pos` char(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conf` blob,
  `frais` decimal(6,2) DEFAULT NULL,
  `cptfrais` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tvafrais` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ind`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Parametres`
--

LOCK TABLES `Fiches_Parametres` WRITE;
/*!40000 ALTER TABLE `Fiches_Parametres` DISABLE KEYS */;
INSERT INTO `Fiches_Parametres` VALUES (0,'2018-12-31','2017-12-31','2016-12-31','2015-12-31','2014-12-31','2013-12-31','12.2017','01.2018','2017-12-31','2017-12-31','2017-12-31','758000','658000','90','120000','129000',0,411027,'000000','000000','000000','70',0,401026,0,0,0,'1,00',NULL,'Euros','53','50','580001','580002','580003','70',NULL,'60',NULL,0,'3.68','3.25',NULL,0.00,NULL,NULL);
/*!40000 ALTER TABLE `Fiches_Parametres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Postes`
--

DROP TABLE IF EXISTS `Fiches_Postes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Postes` (
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(3) DEFAULT NULL,
  `intitulep` char(35) DEFAULT NULL,
  PRIMARY KEY (`lind`),
  KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Postes`
--

LOCK TABLES `Fiches_Postes` WRITE;
/*!40000 ALTER TABLE `Fiches_Postes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Postes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_PrdComp`
--

DROP TABLE IF EXISTS `Fiches_PrdComp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_PrdComp` (
  `codep` varchar(15) NOT NULL DEFAULT '',
  `codec` varchar(50) NOT NULL DEFAULT '',
  `libelle` varchar(50) DEFAULT NULL,
  `qte` varchar(50) DEFAULT NULL,
  `mo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`codep`,`codec`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_PrdComp`
--

LOCK TABLES `Fiches_PrdComp` WRITE;
/*!40000 ALTER TABLE `Fiches_PrdComp` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_PrdComp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Promo`
--

DROP TABLE IF EXISTS `Fiches_Promo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Promo` (
  `code` varchar(15) NOT NULL DEFAULT '',
  `libelle` varchar(50) DEFAULT NULL,
  `datedeb` date DEFAULT NULL,
  `datefin` date DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Promo`
--

LOCK TABLES `Fiches_Promo` WRITE;
/*!40000 ALTER TABLE `Fiches_Promo` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Promo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Rappro`
--

DROP TABLE IF EXISTS `Fiches_Rappro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Rappro` (
  `cpt` varchar(8) NOT NULL,
  `nreleve` int(11) NOT NULL DEFAULT '0',
  `date_releve` datetime DEFAULT NULL,
  `date_rappro` datetime DEFAULT NULL,
  `solde` double DEFAULT NULL,
  PRIMARY KEY (`cpt`,`nreleve`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Rappro`
--

LOCK TABLES `Fiches_Rappro` WRITE;
/*!40000 ALTER TABLE `Fiches_Rappro` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Rappro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Regltz`
--

DROP TABLE IF EXISTS `Fiches_Regltz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Regltz` (
  `lInd` int(11) NOT NULL AUTO_INCREMENT,
  `intitule` char(30) DEFAULT NULL,
  `montant` char(12) DEFAULT NULL,
  `qte` char(12) DEFAULT NULL,
  `type` char(15) DEFAULT NULL,
  `caisse` char(2) DEFAULT NULL,
  `date` char(17) DEFAULT NULL,
  PRIMARY KEY (`lInd`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Regltz`
--

LOCK TABLES `Fiches_Regltz` WRITE;
/*!40000 ALTER TABLE `Fiches_Regltz` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Regltz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_RelFacture`
--

DROP TABLE IF EXISTS `Fiches_RelFacture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_RelFacture` (
  `compte` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `rs` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intitule` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adr1` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adr2` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cp` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville` char(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dte` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numdoc` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `numlot` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `libelle` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `montantd` decimal(12,2) DEFAULT NULL,
  `montantc` decimal(12,2) DEFAULT NULL,
  `numero` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `journal` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`compte`,`numdoc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_RelFacture`
--

LOCK TABLES `Fiches_RelFacture` WRITE;
/*!40000 ALTER TABLE `Fiches_RelFacture` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_RelFacture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Relcomptes`
--

DROP TABLE IF EXISTS `Fiches_Relcomptes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Relcomptes` (
  `compte` char(8) NOT NULL,
  `Rs` char(10) DEFAULT NULL,
  `intitule` char(30) DEFAULT NULL,
  `adr1` char(30) DEFAULT NULL,
  `adr2` char(30) DEFAULT NULL,
  `cp` char(10) DEFAULT NULL,
  `ville` char(25) DEFAULT NULL,
  `dte` char(10) DEFAULT NULL,
  `numdoc` char(10) NOT NULL,
  `numlot` char(10) DEFAULT NULL,
  `libelle` char(30) DEFAULT NULL,
  `montantd` decimal(12,2) DEFAULT NULL,
  `montantc` decimal(12,2) DEFAULT NULL,
  `numero` char(8) NOT NULL,
  `journal` char(2) DEFAULT NULL,
  PRIMARY KEY (`compte`,`numdoc`,`numero`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Relcomptes`
--

LOCK TABLES `Fiches_Relcomptes` WRITE;
/*!40000 ALTER TABLE `Fiches_Relcomptes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Relcomptes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_RemCliFam`
--

DROP TABLE IF EXISTS `Fiches_RemCliFam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_RemCliFam` (
  `codec` char(8) NOT NULL,
  `codef` char(20) NOT NULL,
  `remise` decimal(6,3) DEFAULT NULL,
  PRIMARY KEY (`codec`,`codef`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_RemCliFam`
--

LOCK TABLES `Fiches_RemCliFam` WRITE;
/*!40000 ALTER TABLE `Fiches_RemCliFam` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_RemCliFam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_RemTypec`
--

DROP TABLE IF EXISTS `Fiches_RemTypec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_RemTypec` (
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  `coder` char(2) NOT NULL,
  `codef` char(20) DEFAULT NULL,
  `remise` decimal(6,3) DEFAULT NULL,
  PRIMARY KEY (`lind`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_RemTypec`
--

LOCK TABLES `Fiches_RemTypec` WRITE;
/*!40000 ALTER TABLE `Fiches_RemTypec` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_RemTypec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Rpl1`
--

DROP TABLE IF EXISTS `Fiches_Rpl1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Rpl1` (
  `codep` char(15) NOT NULL,
  `coderpl1` char(15) NOT NULL,
  PRIMARY KEY (`codep`,`coderpl1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Rpl1`
--

LOCK TABLES `Fiches_Rpl1` WRITE;
/*!40000 ALTER TABLE `Fiches_Rpl1` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Rpl1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Rpl2`
--

DROP TABLE IF EXISTS `Fiches_Rpl2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Rpl2` (
  `codep` char(15) NOT NULL,
  `coderpl2` char(15) NOT NULL,
  PRIMARY KEY (`codep`,`coderpl2`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Rpl2`
--

LOCK TABLES `Fiches_Rpl2` WRITE;
/*!40000 ALTER TABLE `Fiches_Rpl2` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Rpl2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_RubCompt`
--

DROP TABLE IF EXISTS `Fiches_RubCompt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_RubCompt` (
  `numrub` char(8) NOT NULL,
  `compte1` char(8) NOT NULL,
  `compte2` char(8) DEFAULT NULL,
  `amortissement` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`numrub`,`compte1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_RubCompt`
--

LOCK TABLES `Fiches_RubCompt` WRITE;
/*!40000 ALTER TABLE `Fiches_RubCompt` DISABLE KEYS */;
INSERT INTO `Fiches_RubCompt` VALUES ('B0030','109','10999999',0),('B0050','201','20199999',0),('B0050','2800','28019999',1),('B0060','203','20399999',0),('B0060','2803','28039999',1),('B0070','205','20599999',0),('B0070','2805','28059999',0),('B0070','2905','29059999',1),('B0080','206','20799999',0),('B0080','2807','28079999',0),('B0080','2906','29079999',1),('B0090','208','20899999',0),('B0090','2808','28089999',1),('B0090','2908','29089999',1),('B0110','237','23799999',0),('B0130','211','21299999',0),('B0130','2811','28119999',0),('B0130','2812','28129999',1),('B0130','2911','29119999',0),('B0140','213','21499999',0),('B0140','2813','28139999',1),('B0150','215','21599999',0),('B0150','2815','28159999',1),('B0160','210','21099999',0),('B0160','218','21810799',0),('B0160','218108','21810899',1),('B0160','218200','21870799',0),('B0160','218708','21870899',1),('B0160','2810','28109999',0),('B0160','2814','28149999',1),('B0160','2818','28189999',1),('B0160','2910','29109999',1),('B0180','238','23899999',0),('B0200','261','26199999',0),('B0200','266','26699999',0),('B0200','2961','29619999',0),('B0200','2966','29669999',0),('B0210','267','26899999',0),('B0210','2967','29689999',0),('B0220','271','27299999',0),('B0220','27682','27682999',0),('B0220','2971','29729999',0),('B0230','274','27499999',0),('B0230','27684','27684999',0),('B0230','2974','29749999',0),('B0240','270','27099999',0),('B0240','275','27599999',0),('B0240','2761','27619999',0),('B0240','27685','27685999',0),('B0240','27688','27688999',0),('B0240','2970','29709999',0),('B0240','2975','29759999',1),('B0240','2976','29769999',0),('B0280','30','32999999',0),('B0280','391','39299999',1),('B0290','33','33999999',0),('B0290','393','39399999',1),('B0300','34','34999999',0),('B0300','394','39499999',1),('B0310','35','35999999',0),('B0310','395','39599999',1),('B0320','37','37999999',0),('B0320','397','39799999',1),('B0340','409','40999999',0),('B0360','4091','40919999',0),('B0360','411','41199999',0),('B0360','413','41399999',0),('B0360','416','41899999',0),('B0370','400','40299999',0),('B0370','422','42299999',0),('B0370','425','42599999',0),('B0370','4287','42879999',0),('B0370','431','43199999',0),('B0370','437','43799999',0),('B0370','4387','43879999',0),('B0370','440','44199999',0),('B0370','443','44499999',0),('B0370','4452','44529999',0),('B0370','4455','44569999',0),('B0370','4487','44879999',0),('B0370','451','45199999',0),('B0370','455','45599999',0),('B0370','4561','45619999',0),('B0370','4563','45649999',0),('B0370','4566','45679999',0),('B0370','458','45899999',0),('B0370','460','46099999',0),('B0370','462','46299999',0),('B0370','465','46599999',0),('B0370','467','46799999',0),('B0370','4687','46879999',0),('B0370','470','47199999',0),('B0370','478','47899999',0),('B0370','495','49699999',0),('B0370','496','49699999',1),('B0380','4562','45629999',0),('B0400','502','50299999',0),('B0410','500','50199999',0),('B0410','503','50899999',0),('B0410','59','59999999',1),('B0430','510','51299999',0),('B0430','514','51799999',0),('B0430','5187','51879999',0),('B0430','519','51999999',0),('B0430','53','54999999',0),('B0430','58','58999999',0),('B0450','486','48699999',0),('B0480','481','48199999',0),('B0500','169','16999999',0),('B0520','476','47699999',0),('B1040','101','10129999',0),('B1040','108','10899999',0),('B1050','1013','10139999',0),('B1070','104','10499999',0),('B1090','105','10599999',0),('B1130','1061','10619999',0),('B1140','1063','10639999',0),('B1150','1062','10629999',0),('B1150','1064','10649999',0),('B1160','1068','10689999',0),('B1180','11','11999999',0),('B1180','88','89999999',0),('B1200','12','12999999',0),('B1200','6','79999999',0),('B1220','13','13999999',0),('B1240','14','14999999',0),('B1280','150','15199999',0),('B1300','153','15399999',0),('B1300','155','15899999',0),('B1340','161','16199999',0),('B1340','16880','16881999',0),('B1360','163','16399999',0),('B1360','164','16499999',0),('B1360','16883','16883999',0),('B1360','16884','16884999',0),('B1380','510','51299999',0),('B1380','514','51799999',0),('B1380','5186','51869999',0),('B1380','519','51999999',0),('B1380','58','58999999',0),('B1400','160','16099999',0),('B1400','165','16699999',0),('B1400','1675','16759999',0),('B1400','1681','16819999',0),('B1400','1685','16859999',0),('B1400','1687','16879999',0),('B1400','16885','16885999',0),('B1400','16887','16888999',0),('B1400','17','17999999',0),('B1400','426','42699999',0),('B1400','451','45199999',0),('B1400','455','45599999',0),('B1400','4561','45619999',0),('B1400','4563','45649999',0),('B1400','4566','45679999',0),('B1400','458','45899999',0),('B1420','4190','41919999',0),('B1440','400','40399999',0),('B1440','4081','40819999',0),('B1440','40881','40881999',0),('B1460','421','42499999',0),('B1460','427','42899999',0),('B1460','4282','42829999',0),('B1460','4284','42849999',0),('B1460','4286','42869999',0),('B1460','430','43199999',0),('B1460','437','43799999',0),('B1460','4382','43829999',0),('B1460','4386','43869999',0),('B1460','442','44499999',0),('B1460','4452','44529999',0),('B1460','4455','44559999',0),('B1460','4457','44579999',0),('B1460','44584','44584999',0),('B1460','44587','44587999',0),('B1460','446','44699999',0),('B1460','447','44799999',0),('B1460','4481','44829999',0),('B1460','4486','44869999',0),('B1460','457','45799999',0),('B1480','269','26999999',0),('B1480','279','27999999',0),('B1480','404','40599999',0),('B1480','4084','40849999',0),('B1480','40884','40884999',0),('B1500','409','40999999',0),('B1500','410','41199999',0),('B1500','4196','41989999',0),('B1500','464','46499999',0),('B1500','467','46799999',0),('B1500','4686','46869999',0),('B1500','470','47199999',0),('B1500','478','47899999',0),('B1520','487','48799999',0),('B1550','477','47799999',0),('R0040','607','60799999',0),('R0040','6087','60879999',0),('R0040','6097','60979999',0),('R0040','67207','67207999',0),('R0050','6037','60379999',0),('R0080','601','60199999',0),('R0080','6081','60819999',0),('R0080','6091','60919999',0),('R0080','672','67299999',0),('R0090','602','60299999',0),('R0090','6082','60829999',0),('R0090','6092','60929999',0),('R0090','67202','67202999',0),('R0100','6031','60319999',0),('R0100','6032','60329999',0),('R0110','604','60499999',0),('R0110','605',NULL,0),('R0110','6084','60849999',0),('R0110','6085','60859999',0),('R0110','6094','60949999',0),('R0110','6095','60959999',0),('R0110','67204','67204999',0),('R0110','67205','67205999',0),('R0110','67206','67206999',0),('R0120','606','60699999',0),('R0120','6086','60869999',0),('R0120','6098','60989999',0),('R0140','621','62199999',0),('R0140','67221','67221999',0),('R0150','6122','61229999',0),('R0150','6125','61259999',0),('R0150','6732','67329999',0),('R0150','6735','67359999',0),('R0160','611','61199999',0),('R0160','613','61399999',0),('R0160','614','61999999',0),('R0160','622','62999999',0),('R0160','6721','67219999',0),('R0160','67228','67228999',0),('R0180','631','63199999',0),('R0180','633','63399999',0),('R0180','67231','67231999',0),('R0190','635','63599999',0),('R0190','637','63799999',0),('R0190','67235','67235999',0),('R0210','641','64199999',0),('R0210','644','64499999',0),('R0210','67241','67241999',0),('R0220','645','64899999',0),('R0220','67245','67245999',0),('R0240','6811','68129999',0),('R0250','6816','68169999',0),('R0260','6817','68179999',0),('R0270','6815','68159999',0),('R0290','651','65199999',0),('R0290','653','65499999',0),('R0290','658','65899999',0),('R0290','67258','67258999',0),('R0340','686','68699999',0),('R0350','661','66199999',0),('R0350','664','66599999',0),('R0350','668','66899999',0),('R0350','67261','67261999',0),('R0360','666','66699999',0),('R0360','67266','67266999',0),('R0370','667','66799999',0),('R0390','671','67199999',0),('R0410','675','67599999',0),('R0420','678','67899999',0),('R0440','6872','68769999',0),('R0450','6871','68719999',0),('R0450','6875','68769999',0),('R0490','695','69599999',0),('R0490','697','69799999',0),('R1040','707','70799999',0),('R1040','7097','70979999',0),('R1040','77207','77207999',0),('R1060','701','70399999',0),('R1060','7091','70929999',0),('R1060','77201','77201999',0),('R1070','704','70499999',0),('R1070','7094','70949999',0),('R1070','7314','73149999',0),('R1070','7394','73949999',0),('R1070','77204','77204999',0),('R1080','705','70699999',0),('R1080','708','70899999',0),('R1080','7095','70969999',0),('R1080','7098','70989999',0),('R1080','7315','73159999',0),('R1080','7395','73959999',0),('R1080','77205','77205999',0),('R1120','7133','71339999',0),('R1130','7134','71349999',0),('R1140','7135','71359999',0),('R1160','72','72999999',0),('R1180','74','74999999',0),('R1180','77240','77240999',0),('R1200','781','78199999',0),('R1220','791','79199999',0),('R1240','751','75399999',0),('R1240','758','75899999',0),('R1240','77208','77208999',0),('R1240','77258','77258999',0),('R1310','755','75599999',0),('R1360','761','76199999',0),('R1360','77261','77261999',0),('R1370','762','76299999',0),('R1370','77262','77262999',0),('R1380','763','76599999',0),('R1380','768','76899999',0),('R1380','77263','77263999',0),('R1390','786','78699999',0),('R1390','796','79699999',0),('R1400','766','76699999',0),('R1400','77266','77266999',0),('R1410','767','76799999',0),('R1460','771','77199999',0),('R1480','775','77599999',0),('R1490','777','77799999',0),('R1500','778','77899999',0),('R1510','787','78799999',0),('R1510','797','79799999',0),('S0030','707','70799999',0),('S0040','7097','70979999',0),('S0050','6037','60379999',0),('S0050','607','60799999',0),('S0050','6087','60879999',0),('S0050','6097','60979999',0),('S0070','701','70699999',0),('S0070','708','70899999',0),('S0070','709','70999999',0),('S0080','713','71399999',0),('S0090','72','72999999',0),('S0120','601','60299999',0),('S0120','6031','60329999',0),('S0120','604','60699999',0),('S0120','6081','60829999',0),('S0120','6084','60869999',0),('S0120','6091','60939999',0),('S0120','6094','60969999',0),('S0120','6098','60989999',0),('S0120','61','61999999',0),('S0120','62','62999999',0),('S0150','74','74999999',0),('S0160','63','63999999',0),('S0170','64','64999999',0),('S0200','781','78199999',0),('S0205','791','79199999',0),('S0210','681','68199999',0),('S0220','75','75999999',0),('S0230','65','65999999',0),('S0270','755','75599999',0),('S0280','655','65599999',0),('S0290','76','76999999',0),('S0290','786','78699999',0),('S0290','796','79699999',0),('S0300','66','66999999',0),('S0300','686','68699999',0),('S0330','77','77999999',0),('S0330','787','78799999',0),('S0330','797','79799999',0),('S0340','67','67999999',0),('S0340','687','68799999',0),('S0360','691','69199999',0),('S0370','695','69599999',0),('S0390','775','77599999',0),('S0400','675','67599999',0),('R0080','6090','60909999',0),('S0120','6090','60909999',0);
/*!40000 ALTER TABLE `Fiches_RubCompt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Rubriques`
--

DROP TABLE IF EXISTS `Fiches_Rubriques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Rubriques` (
  `numrub` char(8) NOT NULL,
  `intitule` varchar(70) DEFAULT NULL,
  `type` char(2) DEFAULT NULL,
  `detail` char(2) DEFAULT NULL,
  `num` char(2) DEFAULT NULL,
  PRIMARY KEY (`numrub`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Rubriques`
--

LOCK TABLES `Fiches_Rubriques` WRITE;
/*!40000 ALTER TABLE `Fiches_Rubriques` DISABLE KEYS */;
INSERT INTO `Fiches_Rubriques` VALUES ('B0010','BILAN - ACTIF','T',NULL,NULL),('B0020','ACTIF IMMOBILISE','E','N',NULL),('B0025','Capital souscrit non-appele','E','N',NULL),('B0030',NULL,'L',NULL,NULL),('B0050','Frais d\' etablissement','L',NULL,NULL),('B0060','Frais de recherche et de developpement','L',NULL,NULL),('B0070','Concessions, brevets, licences, marques, procedes, logiciels, etc...','L',NULL,NULL),('B0080','Fonds commerciaux','L',NULL,NULL),('B0090','Autres','L',NULL,NULL),('B0095','Immobilisations incorporelles','E',NULL,NULL),('B0110','Avances et acomptes','L',NULL,NULL),('B0115','Immobilisations incorporelles en cours','E',NULL,NULL),('B0130','Terrains','L',NULL,NULL),('B0140','Constructions','L',NULL,NULL),('B0150','Installations techniques, materiels et outillages industriels','L',NULL,NULL),('B0160','Autres','L',NULL,NULL),('B0165','Immobilisations corporelles','E',NULL,NULL),('B0180','Avances et acomptes','L',NULL,NULL),('B0190','Immobilisations financieres','L',NULL,NULL),('B0200','Participations','L',NULL,NULL),('B0210','Creances rattachees a des participations','L',NULL,NULL),('B0220','Autres titres immobilises','L',NULL,NULL),('B0230','Prets','L',NULL,NULL),('B0240','Autres','L',NULL,NULL),('B0245','Immobilisations corporelles en cours','E',NULL,NULL),('B0250','TOTAL I','S',NULL,NULL),('B0260','ACTIF CIRCULANT','E',NULL,NULL),('B0280','Matieres premieres et autres approvisionnements','L',NULL,NULL),('B0290','En-cours de production de biens','L',NULL,NULL),('B0300','En-cours de production de services','L',NULL,NULL),('B0310','Produits intermediaires et finis','L',NULL,NULL),('B0320','Marchandises','L',NULL,NULL),('B0330','Avances et acomptes verses sur commande','L',NULL,NULL),('B0340','Avances et acomptes versÃ©s','L',NULL,NULL),('B0345','Stocks et en-cours','E',NULL,NULL),('B0360','Creances clients et comptes rattaches','L',NULL,NULL),('B0370','CrÃ©ances associÃ©s et comptes rattachÃ©s','L',NULL,NULL),('B0375','CrÃ©ances sociales','L',NULL,NULL),('B0380','Capital souscrit - appele non verse','L',NULL,NULL),('B0390','Valeurs mobilieres de placement :','E',NULL,NULL),('B0400','Actions propres','L',NULL,NULL),('B0410','Autres titres','L',NULL,NULL),('B0415','Creances','E',NULL,NULL),('B0430','DisponibilitÃ©s','L','',''),('B0435','DisponibilitÃ©s','E','',''),('B0450','Charges constatÃ©es d\' avance','L',NULL,NULL),('B0455','Charges constatÃ©es d\' avance','E',NULL,NULL),('B0460','TOTAL II','S',NULL,NULL),('B0475','Charges a repartir sur plusieurs exercices (III)','E',NULL,NULL),('B0480',NULL,'L',NULL,NULL),('B0500',NULL,'L',NULL,NULL),('B0505','Primes de remboursement des emprunts (IV)','E',NULL,NULL),('B0520',NULL,'L',NULL,NULL),('B0525','Ecarts de conversion Actif (V)','E',NULL,NULL),('B0530','TOTAL GENERAL (I+II+III+IV+V)','O',NULL,NULL),('B1010','BILAN - PASSIF','T',NULL,NULL),('B1020','CAPITAUX PROPRES','E',NULL,NULL),('B1040','Capital social','L',NULL,NULL),('B1050','dont verse :','L','N',NULL),('B1055','Capital','E',NULL,NULL),('B1070',NULL,'L',NULL,NULL),('B1075','Primes d\' emission, de fusion, d\' apport','E',NULL,NULL),('B1090',NULL,'L',NULL,NULL),('B1095','Ecarts de reevaluation','E',NULL,NULL),('B1110',NULL,'L',NULL,NULL),('B1115','Ecarts d\' equivalence','E',NULL,NULL),('B1130','Reserve legale','L',NULL,NULL),('B1140','Reserves statutaires ou contractuelles','L',NULL,NULL),('B1150','Reserves reglementees','L',NULL,NULL),('B1160','Autres','L',NULL,NULL),('B1165','Reserves :','E',NULL,NULL),('B1180',NULL,'L',NULL,NULL),('B1185','Report a nouveau','E',NULL,NULL),('B1200',NULL,'L',NULL,NULL),('B1205','Resultat de l\' exercice (benefice ou perte )','E',NULL,NULL),('B1220',NULL,'L',NULL,NULL),('B1225','Subventions d\' investissements','E',NULL,NULL),('B1240',NULL,'L',NULL,NULL),('B1245','Provisions reglementees','E',NULL,NULL),('B1250','TOTAL I','S',NULL,NULL),('B1260','PROVISIONS POUR RISQUES ET CHARGES','E',NULL,NULL),('B1280',NULL,'L',NULL,NULL),('B1285','Provisions pour risques','E',NULL,NULL),('B1300',NULL,'L',NULL,NULL),('B1305','Provisions pour charges','E',NULL,NULL),('B1310','TOTAL II','S',NULL,NULL),('B1320','DETTES','E',NULL,NULL),('B1340',NULL,'L',NULL,NULL),('B1345','Emprunts obligatoires converties','E',NULL,NULL),('B1360',NULL,'L',NULL,NULL),('B1365','Autres emprunts obligataires','E',NULL,NULL),('B1380',NULL,'L',NULL,NULL),('B1385','Emprunts et dettes aupres des etablissements de credit','E',NULL,NULL),('B1400',NULL,'L',NULL,NULL),('B1405','Emprunts et dettes financieres divers','E',NULL,NULL),('B1420',NULL,'L',NULL,NULL),('B1425','Avances et acomptes reÃ§us sur commandes en cours','E',NULL,NULL),('B1440',NULL,'L',NULL,NULL),('B1445','Dettes fournisseurs et comptes rattaches','E',NULL,NULL),('B1460',NULL,'L',NULL,NULL),('B1465','Dettes fiscales et sociales','E',NULL,NULL),('B1480',NULL,'L',NULL,NULL),('B1485','Dettes sur immobilisations et comptes rattaches','E',NULL,NULL),('B1500',NULL,'L',NULL,NULL),('B1505','Autres dettes','E',NULL,NULL),('B1520',NULL,'L',NULL,NULL),('B1525','Produits constates d\' avance','E',NULL,NULL),('B1530','TOTAL III','S','N',NULL),('B1550',NULL,'L',NULL,NULL),('B1555','Ecarts de conversion Passif (IV)','E','N',NULL),('B1560','TOTAL GENERAL (I+II+III+IV)','O','N',NULL),('R0010','COMPTE DE RESULTAT - CHARGES','T',NULL,NULL),('R0020','CHARGES D\'EXPLOITATION','E',NULL,NULL),('R0030','Cout d\'achat des marchandises vendues dans l\'exercice','E','N',NULL),('R0040','Achats de marchandises','L',NULL,NULL),('R0050','Variations des stocks de marchandises','L',NULL,NULL),('R0060','Consommations de l\'exercice en provenance des tiers','E','N',NULL),('R0070','Achats stockes d\'approvisionnements :','L',NULL,NULL),('R0080','Matieres premiÃ¨res','L',NULL,NULL),('R0090','Autres approvisionnements','L',NULL,NULL),('R0100','Variations des stocks d\'approvisionnements','L',NULL,NULL),('R0110','Achats de sous-traitances','L',NULL,NULL),('R0120','Achats non stockes de matieres et fournitures','L',NULL,NULL),('R0130','Services exterieurs :','L',NULL,NULL),('R0140','Personnel exterieur','L',NULL,NULL),('R0150','Loyers en credit-bail','L',NULL,NULL),('R0160','Autres','L',NULL,NULL),('R0170','Impots, taxes, et versements assimiles','E','N',NULL),('R0180','Sur remunerations','L',NULL,NULL),('R0190','Autres','L',NULL,NULL),('R0200','Charges de personnel','E','N',NULL),('R0210','Salaires et traitements','L',NULL,NULL),('R0220','Charges sociales','L',NULL,NULL),('R0230','Dotations aux amortissements et aux provisions','E','N',NULL),('R0240','Sur immobilisations : Dotations aux amortissements','L',NULL,NULL),('R0250','Sur immobilisations : Dotations aux provisions','L',NULL,NULL),('R0260','Sur actif circulant : Dotations aux provisions','L',NULL,NULL),('R0270','Pour risques et charges : Dotations aux provisions','L',NULL,NULL),('R0280','Autres charges','E','N',NULL),('R0290',NULL,'L',NULL,NULL),('R0300','TOTAL I','S',NULL,NULL),('R0310','QUOTES-PARTS DE RESULTAT SUR OP FAITES EN COMMUN (II)','E',NULL,NULL),('R0320',NULL,'I',NULL,NULL),('R0330','CHARGES FINANCIERES (III)','E','N',NULL),('R0340','Dotations aux amortissemnts et aux provisions','L',NULL,NULL),('R0350','Interets et charges assimilees','L',NULL,NULL),('R0360','Differences negatives de change','L',NULL,NULL),('R0370','Charges nettes/cessions de valeurs mobilieres de placement','L',NULL,NULL),('R0380','CHARGES EXCEPTIONNELLES (IV)','E','N',NULL),('R0390','Sur operations de gestion','L',NULL,NULL),('R0400','Sur operations en capital :','L',NULL,NULL),('R0410','Valeurs comptables des elements immob et financiers cede','L',NULL,NULL),('R0420','Autres','L',NULL,NULL),('R0430','Dotations aux amortissements et aux provisions :','L',NULL,NULL),('R0440','Dotations aux provisions reglementees','L',NULL,NULL),('R0450','Dotations aux amortissements et autres provisions','L',NULL,NULL),('R0460','PARTICIPATION DES SALARIES AUX FRUITS DE L\'EXPANSION (V)','E',NULL,NULL),('R0470',NULL,'L',NULL,NULL),('R0480','IMPOTS SUR LES BENEFICES (VI)','E','N',NULL),('R0490',NULL,'L',NULL,NULL),('R0700','TOTAL DES CHARGES (I+II+II+IV+V+VI)','O',NULL,NULL),('R0800','SOLDE CREDITEUR = BÃ©nefice (VII)','C',NULL,NULL),('R0900','TOTAL GENERAL (I+II+III+IV+V+VI+VII)','R',NULL,NULL),('R1010','COMPTE DE RESULTAT - PRODUITS','T',NULL,NULL),('R1020','PRODUITS D\'EXPLOITATION :','E',NULL,NULL),('R1030','Ventes de marchandises','E','N',NULL),('R1040',NULL,'L',NULL,NULL),('R1050','Production vendue','E','N',NULL),('R1060','Ventes','L',NULL,NULL),('R1070','Travaux','L',NULL,NULL),('R1080','Prestations de services','L',NULL,NULL),('R1090','MONTANT NET DU CHIFFRE D\'AFFAIRES :','S',NULL,NULL),('R1100','Dont a l\'exportation :','E','N',NULL),('R1105',NULL,'L',NULL,NULL),('R1110','Production stockee','E','N',NULL),('R1120','En cours de production de biens','L',NULL,NULL),('R1130','En cours de production de services','L',NULL,NULL),('R1140','produits','L',NULL,NULL),('R1150','Production immobilisee','E','N',NULL),('R1160',NULL,'L',NULL,NULL),('R1170','Subvention d\'exploitation','E','N',NULL),('R1180',NULL,'L',NULL,NULL),('R1190','Reprises sur provisions (et amortissements)','E','N',NULL),('R1200',NULL,'L',NULL,NULL),('R1210','Transferts de charges','E','N',NULL),('R1220',NULL,'L',NULL,NULL),('R1230','Autres produits','E','N',NULL),('R1240',NULL,'L',NULL,NULL),('R1250','TOTAL I','S',NULL,NULL),('R1300','QUOTES-PARTS DE RESULTAT SUR OP. FAITES EN COMMUN (II)','E',NULL,NULL),('R1310',NULL,'L',NULL,NULL),('R1350','PRODUITS FINANCIERS (III)','E','N',NULL),('R1360','Departicipations','L',NULL,NULL),('R1370','D\'autres valeurs mobilieres et creances de l\'actif immobilier','L',NULL,NULL),('R1380','Autres interets et produits assimiles','L',NULL,NULL),('R1390','Reprises sur provisions et transferts de charges financiere','L',NULL,NULL),('R1400','Differences positives de change','L',NULL,NULL),('R1410','Produits nets sur cessions de valeurs mobilieres de placement','L',NULL,NULL),('R1450','PRODUITS EXCEPTIONNELS (IV)','E','N',NULL),('R1460','Sur operations de gestion','L',NULL,NULL),('R1470','Sur operations en capital :','L',NULL,NULL),('R1480','produits des cessions d\'elements d\'actif','L',NULL,NULL),('R1490','Subventions d\'investissement virees aux resultats de l\'exercice','L',NULL,NULL),('R1500','Autres','L',NULL,NULL),('R1510','Reprises sur provisions et transferts de charges exceptionnelles','L',NULL,NULL),('R1700','TOTAL DES PRODUITS (I+II+III+IV)','O',NULL,NULL),('R1800','SOLDE DEBITEUR = PERTE (V)','D',NULL,NULL),('R1810','TOTAL GENERAL(I+II+III+IV+V)','G',NULL,NULL),('S0010','SOLDES INTERMEDIAIRES DE GESTION','T',NULL,NULL),('S0020','Marge commerciale','E','N',NULL),('S0030','Ventes de marchandises','L','O','P'),('S0040','RRR sur ventes','L','O','P'),('S0050','Cout direct d\'achat','L','O','A'),('S0060','Marge commerciale','E','N',NULL),('S0070','Production vendue','L','O','P'),('S0080','Production stockee','L','O','P'),('S0090','Production immobilisee','L','N','P'),('S0100','Produits nets partiels sur operations a long terme','L',NULL,NULL),('S0105','Production de l\'exercice','E','N','P'),('S0110','Production de l\'exercice','L','N','R'),('S0115','Marge commerciale','L','N','A'),('S0120','Consommations en provenance de tiers','L','O','A'),('S0130','Valeur ajoutÃ©e','E','N',NULL),('S0135','Valeur ajoutÃ©e','L','N','R'),('S0140',NULL,NULL,NULL,NULL),('S0150','Subventions d\'exploitation','L','O','P'),('S0160','Impots, taxes, et versements assimiles','L','O','A'),('S0170','Charges de personnel','L','O','A'),('S0180','ExcÃ©dent brut d\'exploitation','E','N',NULL),('S0190','ExcÃ©dent brut d\'exploitation','L','N','R'),('S0195','Insuffisance brute d\'exploitation',NULL,NULL,NULL),('S0200','Reprises sur ammortissements et provisions d\'exploitation','L','O','P'),('S0205','Transferts de charges d\'exploitation','L','O','P'),('S0210','Dotations aux amortissements et provisions d\'exploitation','L','O','A'),('S0220','Autres produits de gestion courante','L','O','P'),('S0230','Autres charges de gestion courante','L','O','A'),('S0240','Transferts de charges d\'exploitation',NULL,NULL,NULL),('S0250','RÃ©sultat d\'exploitation','E','N',NULL),('S0260','RÃ©sultat d\'exploitation','L','N','R'),('S0270','Quotes-parts de resultat sur operations faites en commun','L','O','P'),('S0280','Quotes-parts de resultat sur operations faites en commun','L','O','A'),('S0290','Produits financiers','L','O','P'),('S0300','Charges financieres','L','O','A'),('S0310','RÃ©sultat courant avant impots','E','N',NULL),('S0315','RÃ©sultat courant avant impots','L','N','P'),('S0320','RÃ©sultat courant avant impots','L','N','A'),('S0330','Produits exceptionnels','L','O','P'),('S0340','Charges exceptionnelles','L','O','A'),('S0350','RÃ©sultat exceptionnel','E','N',NULL),('S0354','RÃ©sultat courant avant impots','L','N','R'),('S0358','RÃ©sultat exceptionnel','L','N','R'),('S0360','Participations des salaries aux resultats de l\'exercice','L','O','A'),('S0370','Impots sur les benefices','L','O','A'),('S0380','RÃ©sultat de l\'exercice','E','N',NULL),('S0390','Produits cessions d\'Ã©lÃ©ments d\'actif','L','O','P'),('S0400','Valeur comptable Ã©lÃ©ments cÃ©dÃ©s','L','O','A'),('S0410','Plus et moins-values sur cessions d\'Ã©lÃ©ments d\'actif','E','N',NULL);
/*!40000 ALTER TABLE `Fiches_Rubriques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Sdepots`
--

DROP TABLE IF EXISTS `Fiches_Sdepots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Sdepots` (
  `Mind` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(2) NOT NULL,
  `cart` char(15) NOT NULL,
  `date` date NOT NULL,
  `type` char(1) DEFAULT NULL,
  `qte` char(10) DEFAULT NULL,
  `com` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Mind`),
  KEY `code` (`code`),
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Sdepots`
--

LOCK TABLES `Fiches_Sdepots` WRITE;
/*!40000 ALTER TABLE `Fiches_Sdepots` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Sdepots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Sms`
--

DROP TABLE IF EXISTS `Fiches_Sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Sms` (
  `numcom` char(2) NOT NULL,
  `intitule` text,
  PRIMARY KEY (`numcom`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Sms`
--

LOCK TABLES `Fiches_Sms` WRITE;
/*!40000 ALTER TABLE `Fiches_Sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Societes`
--

DROP TABLE IF EXISTS `Fiches_Societes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Societes` (
  `cd_sc` varchar(2) NOT NULL,
  `type_sc` char(9) DEFAULT NULL,
  `int_sc` varchar(35) DEFAULT NULL,
  `adr1_sc` varchar(35) DEFAULT NULL,
  `adr2_sc` varchar(35) DEFAULT NULL,
  `cp_sc` varchar(5) DEFAULT NULL,
  `burdis_sc` varchar(35) DEFAULT NULL,
  `email_sc` char(50) DEFAULT NULL,
  `rcs_sc` varchar(12) DEFAULT NULL,
  `villerc_sc` varchar(15) DEFAULT NULL,
  `siret_sc` varchar(15) DEFAULT NULL,
  `tvaintra_sc` varchar(15) DEFAULT NULL,
  `cap_sc` varchar(15) DEFAULT NULL,
  `ape_sc` varchar(5) DEFAULT NULL,
  `tel_sc` varchar(16) DEFAULT NULL,
  `fax_sc` varchar(16) DEFAULT NULL,
  `site` varchar(40) DEFAULT NULL,
  `port_sc` char(16) DEFAULT NULL,
  `banq` char(30) DEFAULT NULL,
  `bic` char(11) DEFAULT NULL,
  `libre` char(35) DEFAULT NULL,
  PRIMARY KEY (`cd_sc`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Societes`
--

LOCK TABLES `Fiches_Societes` WRITE;
/*!40000 ALTER TABLE `Fiches_Societes` DISABLE KEYS */;
INSERT INTO `Fiches_Societes` VALUES ('01',NULL,'Laurux',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'06',NULL,NULL,NULL);
/*!40000 ALTER TABLE `Fiches_Societes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_SousComptes`
--

DROP TABLE IF EXISTS `Fiches_SousComptes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_SousComptes` (
  `code` char(8) NOT NULL,
  `code_vtl` char(8) NOT NULL,
  `intitule_vtl` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`code_vtl`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_SousComptes`
--

LOCK TABLES `Fiches_SousComptes` WRITE;
/*!40000 ALTER TABLE `Fiches_SousComptes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_SousComptes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Stat`
--

DROP TABLE IF EXISTS `Fiches_Stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Stat` (
  `code` char(15) NOT NULL,
  `date` date DEFAULT NULL,
  `nom` char(50) DEFAULT NULL,
  `pvb` decimal(12,2) DEFAULT NULL,
  `rem` char(6) DEFAULT NULL,
  `pvn` decimal(12,2) DEFAULT NULL,
  `qte` decimal(12,3) DEFAULT NULL,
  `nfac` char(10) NOT NULL DEFAULT '',
  `nlig` char(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`nfac`,`nlig`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Stat`
--

LOCK TABLES `Fiches_Stat` WRITE;
/*!40000 ALTER TABLE `Fiches_Stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Statut`
--

DROP TABLE IF EXISTS `Fiches_Statut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Statut` (
  `code` char(2) NOT NULL,
  `libelle` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Statut`
--

LOCK TABLES `Fiches_Statut` WRITE;
/*!40000 ALTER TABLE `Fiches_Statut` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Statut` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_StkDepots`
--

DROP TABLE IF EXISTS `Fiches_StkDepots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_StkDepots` (
  `coded` char(8) NOT NULL DEFAULT '',
  `codea` varchar(15) NOT NULL DEFAULT '',
  `qte` decimal(12,3) DEFAULT NULL,
  PRIMARY KEY (`coded`,`codea`),
  KEY `coded` (`coded`),
  KEY `codea` (`codea`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_StkDepots`
--

LOCK TABLES `Fiches_StkDepots` WRITE;
/*!40000 ALTER TABLE `Fiches_StkDepots` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_StkDepots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Suivis`
--

DROP TABLE IF EXISTS `Fiches_Suivis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Suivis` (
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(8) DEFAULT NULL,
  `nom` varchar(70) DEFAULT NULL,
  `numdev` char(12) DEFAULT NULL,
  `datedev` date DEFAULT NULL,
  `numfac` char(12) DEFAULT NULL,
  `datefac` date DEFAULT NULL,
  `qte` decimal(12,2) DEFAULT NULL,
  `pu` decimal(12,2) DEFAULT NULL,
  `total` decimal(12,2) DEFAULT NULL,
  `margemo` decimal(12,2) DEFAULT NULL,
  `ach` decimal(12,2) DEFAULT NULL,
  `vtes` decimal(12,2) DEFAULT NULL,
  `qte2` decimal(12,2) DEFAULT NULL,
  `pu2` decimal(12,2) DEFAULT NULL,
  `total2` decimal(12,2) DEFAULT NULL,
  `margemo2` decimal(12,2) DEFAULT NULL,
  `ach2` decimal(12,2) DEFAULT NULL,
  `vtes2` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`lind`),
  KEY `code` (`code`),
  KEY `numdev` (`numdev`),
  KEY `numfac` (`numfac`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Suivis`
--

LOCK TABLES `Fiches_Suivis` WRITE;
/*!40000 ALTER TABLE `Fiches_Suivis` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Suivis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Taches`
--

DROP TABLE IF EXISTS `Fiches_Taches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Taches` (
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  `numdoc` varchar(10) DEFAULT NULL,
  `nom` char(8) DEFAULT NULL,
  `poste` varchar(40) DEFAULT NULL,
  `numcli` char(8) DEFAULT NULL,
  `nomcli` varchar(40) DEFAULT NULL,
  `texte` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`lind`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Taches`
--

LOCK TABLES `Fiches_Taches` WRITE;
/*!40000 ALTER TABLE `Fiches_Taches` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Taches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_TarFour`
--

DROP TABLE IF EXISTS `Fiches_TarFour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_TarFour` (
  `codea` char(8) NOT NULL DEFAULT '',
  `codef` varchar(15) NOT NULL DEFAULT '',
  `paht` decimal(12,3) DEFAULT NULL,
  PRIMARY KEY (`codea`,`codef`),
  KEY `id_coded` (`codef`),
  KEY `id_codea` (`codea`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_TarFour`
--

LOCK TABLES `Fiches_TarFour` WRITE;
/*!40000 ALTER TABLE `Fiches_TarFour` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_TarFour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_TarTypcli`
--

DROP TABLE IF EXISTS `Fiches_TarTypcli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_TarTypcli` (
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL,
  `cart` varchar(15) NOT NULL,
  `coef` decimal(7,4) DEFAULT NULL,
  PRIMARY KEY (`lind`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_TarTypcli`
--

LOCK TABLES `Fiches_TarTypcli` WRITE;
/*!40000 ALTER TABLE `Fiches_TarTypcli` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_TarTypcli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Tarcli`
--

DROP TABLE IF EXISTS `Fiches_Tarcli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Tarcli` (
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  `ccli` varchar(10) NOT NULL,
  `cart` varchar(15) NOT NULL,
  `coef` decimal(7,4) DEFAULT NULL,
  PRIMARY KEY (`lind`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Tarcli`
--

LOCK TABLES `Fiches_Tarcli` WRITE;
/*!40000 ALTER TABLE `Fiches_Tarcli` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Tarcli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Tleg`
--

DROP TABLE IF EXISTS `Fiches_Tleg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Tleg` (
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  `intitule` text,
  PRIMARY KEY (`lind`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Tleg`
--

LOCK TABLES `Fiches_Tleg` WRITE;
/*!40000 ALTER TABLE `Fiches_Tleg` DISABLE KEYS */;
INSERT INTO `Fiches_Tleg` VALUES (1,'RESERVE DE PROPRIETE: Le vendeur se rÃ©serve la proprietÃ© des marchandises jusqu\'au paiement intÃ©gral de leur prix en principal et intÃ©rÃªts, par l\'acheteur.\nLa responsabilitÃ© des marchandises est transferÃ©e dÃ¨s leur dÃ©livrance. Nos marchandises voyagent aux risques et pÃ©rils des destinataires.\nAucune piece n\'est reprise apres 8 jours de livraison, les pieces commandÃ©es spÃ©cialement ne sont jamais reprises. Sauf application des rÃ¨gles obligatoires de compÃ©tence a l\'Ã©gard des non\ncommercants, toutes contestations seront transmises aux juridictions du siege de notre entreprise.');
/*!40000 ALTER TABLE `Fiches_Tleg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Touches`
--

DROP TABLE IF EXISTS `Fiches_Touches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Touches` (
  `touche` char(6) NOT NULL,
  `libelle` char(30) DEFAULT NULL,
  `code` char(15) DEFAULT NULL,
  `tva` decimal(5,2) DEFAULT NULL,
  `coul` int(11) DEFAULT NULL,
  `fond` varchar(100) DEFAULT NULL,
  `touche_s` tinyint(1) DEFAULT NULL,
  `cai` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`touche`,`cai`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Touches`
--

LOCK TABLES `Fiches_Touches` WRITE;
/*!40000 ALTER TABLE `Fiches_Touches` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Touches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Traites`
--

DROP TABLE IF EXISTS `Fiches_Traites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Traites` (
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(8) DEFAULT NULL,
  `montant` char(12) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `datech` date DEFAULT NULL,
  `numfac` char(12) DEFAULT NULL,
  `imp` tinyint(4) DEFAULT NULL,
  `nom` varchar(35) DEFAULT NULL,
  `acceptee` int(1) DEFAULT NULL,
  `ecartee` int(1) DEFAULT NULL,
  PRIMARY KEY (`lind`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Traites`
--

LOCK TABLES `Fiches_Traites` WRITE;
/*!40000 ALTER TABLE `Fiches_Traites` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Traites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Tvaac`
--

DROP TABLE IF EXISTS `Fiches_Tvaac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Tvaac` (
  `code_tva` char(2) NOT NULL,
  `taux_tva` varchar(5) DEFAULT NULL,
  `cc_tva` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`code_tva`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Tvaac`
--

LOCK TABLES `Fiches_Tvaac` WRITE;
/*!40000 ALTER TABLE `Fiches_Tvaac` DISABLE KEYS */;
INSERT INTO `Fiches_Tvaac` VALUES ('1','2.10','445660'),('2','5.50','445670'),('3','19.60','445680');
/*!40000 ALTER TABLE `Fiches_Tvaac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Tvaav`
--

DROP TABLE IF EXISTS `Fiches_Tvaav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Tvaav` (
  `code_tva` char(2) NOT NULL,
  `taux_tva` varchar(5) DEFAULT NULL,
  `cc_tva` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`code_tva`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Tvaav`
--

LOCK TABLES `Fiches_Tvaav` WRITE;
/*!40000 ALTER TABLE `Fiches_Tvaav` DISABLE KEYS */;
INSERT INTO `Fiches_Tvaav` VALUES ('1','2.10','445710'),('2','7.00','445720'),('3','20.00','445730');
/*!40000 ALTER TABLE `Fiches_Tvaav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_TxtMail`
--

DROP TABLE IF EXISTS `Fiches_TxtMail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_TxtMail` (
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  `intitule` text,
  PRIMARY KEY (`lind`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_TxtMail`
--

LOCK TABLES `Fiches_TxtMail` WRITE;
/*!40000 ALTER TABLE `Fiches_TxtMail` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_TxtMail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_TxtMailC`
--

DROP TABLE IF EXISTS `Fiches_TxtMailC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_TxtMailC` (
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  `intitule` text,
  PRIMARY KEY (`lind`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_TxtMailC`
--

LOCK TABLES `Fiches_TxtMailC` WRITE;
/*!40000 ALTER TABLE `Fiches_TxtMailC` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_TxtMailC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Txt_Relances`
--

DROP TABLE IF EXISTS `Fiches_Txt_Relances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Txt_Relances` (
  `niveau` int(11) NOT NULL DEFAULT '0',
  `libell1` text,
  `libell2` text,
  PRIMARY KEY (`niveau`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Txt_Relances`
--

LOCK TABLES `Fiches_Txt_Relances` WRITE;
/*!40000 ALTER TABLE `Fiches_Txt_Relances` DISABLE KEYS */;
INSERT INTO `Fiches_Txt_Relances` VALUES (1,'Messieurs,\n\nL\'examen de votre compte nous a permis de constater que les factures ci-dessous ne nous ont pas Ã©tÃ©\nrÃ©glÃ©es Ã  ce jour :\n\n','\nNous vous remercions de faire le nÃ©cessaire et d\'agrÃ©er, Messieurs, nos sincÃ¨res salutations.\n\nLa comptabilitÃ©'),(2,'Messieurs,\n\nNous avons eu l\'honneur derniÃ¨rement de vous demander le rÃ©glement des factures ci-dessous et nous \nsommes surpris de ne pas avoir reÃ§u de rÃ©ponse.\n','\nNous vous remercions, afin de nous Ã©viter des frais supplÃ©mentaires et de ne pas compliquer notre \ncomptabilitÃ©, de nous envoyer, par retour de courrier, le montant de ces factures.\n\nRecevez, Messieurs, nos sincÃ¨res salutations.\n\nLa comptabilitÃ©'),(3,'Messieurs,\n\nNous sommes trÃ¨s surpris que vous ayez laissÃ© sans rÃ©ponse nos prÃ©cÃ©dentes lettres .\n\n','\nA notre grand regret, Ã©tant donnÃ© nos bonnes relations pÃ©cÃ©dentes, il nous faut vous informer que si\nnous ne recevons pas le montant du solde de votre compte, dans la huitaine, nous serons obligÃ©s de\nprÃ©tendre au recouvrement de notre crÃ©ance par les voies de droit.\n\nEsperant que vous ne nous laisserez pas recourir Ã  ces moyens extrÃªmes, recevez, Messieurs, nos \nsincÃ¨res salutations.\n\nLa comptabilitÃ©');
/*!40000 ALTER TABLE `Fiches_Txt_Relances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Txtmo`
--

DROP TABLE IF EXISTS `Fiches_Txtmo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Txtmo` (
  `code_txtmo` char(5) NOT NULL DEFAULT '',
  `tx_txtmo` char(10) DEFAULT NULL,
  `libell_txtmo` varchar(25) DEFAULT NULL,
  `compt_txtmo` varchar(8) DEFAULT NULL,
  `prvt_txtmo` decimal(12,3) DEFAULT NULL,
  PRIMARY KEY (`code_txtmo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Txtmo`
--

LOCK TABLES `Fiches_Txtmo` WRITE;
/*!40000 ALTER TABLE `Fiches_Txtmo` DISABLE KEYS */;
INSERT INTO `Fiches_Txtmo` VALUES ('1','28','Mecanique T1','706100',14.000),('2','31','Mecanique T2','706100',15.000),('3','35','Mecanique T3','706100',18.000);
/*!40000 ALTER TABLE `Fiches_Txtmo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Typec`
--

DROP TABLE IF EXISTS `Fiches_Typec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Typec` (
  `code` varchar(2) NOT NULL,
  `libelle` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Typec`
--

LOCK TABLES `Fiches_Typec` WRITE;
/*!40000 ALTER TABLE `Fiches_Typec` DISABLE KEYS */;
INSERT INTO `Fiches_Typec` VALUES ('01','Macon'),('02','Plombier'),('03','Agriculteur');
/*!40000 ALTER TABLE `Fiches_Typec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Users`
--

DROP TABLE IF EXISTS `Fiches_Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Users` (
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) DEFAULT NULL,
  `poste` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`lind`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Users`
--

LOCK TABLES `Fiches_Users` WRITE;
/*!40000 ALTER TABLE `Fiches_Users` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_Vendeurs`
--

DROP TABLE IF EXISTS `Fiches_Vendeurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_Vendeurs` (
  `lind` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(2) DEFAULT NULL,
  `nom` varchar(35) DEFAULT NULL,
  `mdp` varchar(15) DEFAULT NULL,
  `admin` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`lind`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_Vendeurs`
--

LOCK TABLES `Fiches_Vendeurs` WRITE;
/*!40000 ALTER TABLE `Fiches_Vendeurs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_Vendeurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_relances`
--

DROP TABLE IF EXISTS `Fiches_relances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_relances` (
  `compte` varchar(8) NOT NULL,
  `rs` varchar(10) DEFAULT NULL,
  `intitule` varchar(35) DEFAULT NULL,
  `adr1` varchar(35) DEFAULT NULL,
  `adr2` varchar(35) DEFAULT NULL,
  `cp` varchar(10) DEFAULT NULL,
  `ville` varchar(35) DEFAULT NULL,
  `dte` varchar(10) DEFAULT NULL,
  `numdoc` varchar(10) NOT NULL,
  `numlot` varchar(10) DEFAULT NULL,
  `libelle` varchar(35) DEFAULT NULL,
  `montantd` double DEFAULT NULL,
  `montantc` double DEFAULT NULL,
  `numero` varchar(8) DEFAULT NULL,
  `journal` varchar(2) DEFAULT NULL,
  `niveau` int(11) DEFAULT NULL,
  PRIMARY KEY (`compte`,`numdoc`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_relances`
--

LOCK TABLES `Fiches_relances` WRITE;
/*!40000 ALTER TABLE `Fiches_relances` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_relances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fiches_tourne`
--

DROP TABLE IF EXISTS `Fiches_tourne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fiches_tourne` (
  `code` char(15) NOT NULL,
  `tourne` char(50) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fiches_tourne`
--

LOCK TABLES `Fiches_tourne` WRITE;
/*!40000 ALTER TABLE `Fiches_tourne` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fiches_tourne` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mails_Cli`
--

DROP TABLE IF EXISTS `Mails_Cli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mails_Cli` (
  `code` varchar(8) NOT NULL DEFAULT '',
  `mail` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`code`,`mail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mails_Cli`
--

LOCK TABLES `Mails_Cli` WRITE;
/*!40000 ALTER TABLE `Mails_Cli` DISABLE KEYS */;
/*!40000 ALTER TABLE `Mails_Cli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mails_Four`
--

DROP TABLE IF EXISTS `Mails_Four`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mails_Four` (
  `code` varchar(8) NOT NULL DEFAULT '',
  `mail` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`code`,`mail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mails_Four`
--

LOCK TABLES `Mails_Four` WRITE;
/*!40000 ALTER TABLE `Mails_Four` DISABLE KEYS */;
/*!40000 ALTER TABLE `Mails_Four` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Nvcompte`
--

DROP TABLE IF EXISTS `Nvcompte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Nvcompte` (
  `cd` varchar(8) NOT NULL,
  `intitule` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`cd`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Nvcompte`
--

LOCK TABLES `Nvcompte` WRITE;
/*!40000 ALTER TABLE `Nvcompte` DISABLE KEYS */;
/*!40000 ALTER TABLE `Nvcompte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Report`
--

DROP TABLE IF EXISTS `Report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Report` (
  `jour` varchar(2) DEFAULT NULL,
  `numero` int(11) NOT NULL,
  `compte` varchar(8) NOT NULL,
  `collectif` int(11) DEFAULT NULL,
  `intitule` varchar(30) DEFAULT NULL,
  `dte` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `datee` datetime DEFAULT NULL,
  `dateech` datetime DEFAULT NULL,
  `numcol` varchar(3) NOT NULL,
  `numdoc` varchar(10) DEFAULT NULL,
  `numlot` varchar(10) DEFAULT NULL,
  `libelle` varchar(30) DEFAULT NULL,
  `montantd` double DEFAULT NULL,
  `montantc` double DEFAULT NULL,
  `validee` tinyint(1) DEFAULT NULL,
  `provisoire` tinyint(1) DEFAULT NULL,
  `tresorerie` tinyint(1) DEFAULT NULL,
  `pointee` tinyint(1) DEFAULT NULL,
  `nrlv` int(11) DEFAULT NULL,
  `lettree` tinyint(1) DEFAULT NULL,
  `cloturee` tinyint(1) DEFAULT NULL,
  `relance` int(11) DEFAULT NULL,
  PRIMARY KEY (`numero`,`compte`,`dte`,`numcol`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Report`
--

LOCK TABLES `Report` WRITE;
/*!40000 ALTER TABLE `Report` DISABLE KEYS */;
/*!40000 ALTER TABLE `Report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Total`
--

DROP TABLE IF EXISTS `Total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Total` (
  `cdclifac` char(8) NOT NULL,
  `nmclifac` char(25) DEFAULT NULL,
  `pnmclifac` char(25) DEFAULT NULL,
  `brutfac` decimal(12,2) DEFAULT NULL,
  `rmfac` decimal(12,2) DEFAULT NULL,
  `totfac` decimal(12,2) DEFAULT NULL,
  `totfacn1` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`cdclifac`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Total`
--

LOCK TABLES `Total` WRITE;
/*!40000 ALTER TABLE `Total` DISABLE KEYS */;
/*!40000 ALTER TABLE `Total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Totalisation`
--

DROP TABLE IF EXISTS `Totalisation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Totalisation` (
  `compte` varchar(8) NOT NULL,
  `intitule` varchar(25) DEFAULT NULL,
  `totalht` varchar(25) DEFAULT NULL,
  `totaltva` varchar(25) DEFAULT NULL,
  `codetva` char(2) DEFAULT NULL,
  PRIMARY KEY (`compte`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Totalisation`
--

LOCK TABLES `Totalisation` WRITE;
/*!40000 ALTER TABLE `Totalisation` DISABLE KEYS */;
/*!40000 ALTER TABLE `Totalisation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Totalisation01`
--

DROP TABLE IF EXISTS `Totalisation01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Totalisation01` (
  `compte` varchar(8) NOT NULL,
  `intitule` varchar(25) DEFAULT NULL,
  `totalht` varchar(25) DEFAULT NULL,
  `totaltva` varchar(25) DEFAULT NULL,
  `codetva` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`compte`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Totalisation01`
--

LOCK TABLES `Totalisation01` WRITE;
/*!40000 ALTER TABLE `Totalisation01` DISABLE KEYS */;
/*!40000 ALTER TABLE `Totalisation01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Virements`
--

DROP TABLE IF EXISTS `Virements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Virements` (
  `compte` char(8) NOT NULL,
  `intitule` char(35) DEFAULT NULL,
  `type` char(1) NOT NULL DEFAULT '',
  `montant` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`compte`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Virements`
--

LOCK TABLES `Virements` WRITE;
/*!40000 ALTER TABLE `Virements` DISABLE KEYS */;
/*!40000 ALTER TABLE `Virements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `centralisation`
--

DROP TABLE IF EXISTS `centralisation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `centralisation` (
  `numrub` varchar(5) NOT NULL,
  `intitrub` varchar(70) DEFAULT NULL,
  `type` varchar(1) DEFAULT NULL,
  `detail` varchar(1) DEFAULT NULL,
  `compte` varchar(8) NOT NULL,
  `intitcpt` varchar(50) DEFAULT NULL,
  `col1` varchar(12) DEFAULT NULL,
  `col2` varchar(12) DEFAULT NULL,
  `col3` varchar(12) DEFAULT NULL,
  `col4` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`numrub`,`compte`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centralisation`
--

LOCK TABLES `centralisation` WRITE;
/*!40000 ALTER TABLE `centralisation` DISABLE KEYS */;
/*!40000 ALTER TABLE `centralisation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `centralisations`
--

DROP TABLE IF EXISTS `centralisations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `centralisations` (
  `cd_cent` varchar(8) NOT NULL,
  `intitule` varchar(25) DEFAULT NULL,
  `db_cent` double DEFAULT NULL,
  `crd_cent` double DEFAULT NULL,
  `njournal` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`cd_cent`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centralisations`
--

LOCK TABLES `centralisations` WRITE;
/*!40000 ALTER TABLE `centralisations` DISABLE KEYS */;
/*!40000 ALTER TABLE `centralisations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `label_def`
--

DROP TABLE IF EXISTS `label_def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `label_def` (
  `label_no` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `manufacture` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `paper` varchar(1) DEFAULT NULL,
  `gap_top` double DEFAULT NULL,
  `gap_left` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `width` double DEFAULT NULL,
  `gap_v` double DEFAULT NULL,
  `gap_h` double DEFAULT NULL,
  `number_h` int(11) DEFAULT NULL,
  `number_v` int(11) DEFAULT NULL,
  `paper_type` varchar(30) DEFAULT NULL,
  `compatibility` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`label_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `label_def`
--

LOCK TABLES `label_def` WRITE;
/*!40000 ALTER TABLE `label_def` DISABLE KEYS */;
/*!40000 ALTER TABLE `label_def` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-30 16:27:52
